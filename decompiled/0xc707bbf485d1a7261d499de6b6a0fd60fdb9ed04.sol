// Decompiled by library.dedaub.com
// 2025.12.07 16:39 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
uint8 stor_0_0_0; // STORAGE[0x0] bytes 0 to 0
bool _initialize; // STORAGE[0x0] bytes 1 to 1
mapping (uint256 => struct_1470) _getRoleAdmin; // STORAGE[0x65]
mapping (address => uint256) mapping_97; // STORAGE[0x97]
address _treasury; // STORAGE[0x98] bytes 0 to 19
mapping (address => bool) _renounceRole; // STORAGE[0x74ac16253630c3523dd1832af9ae131e94f47875b251195873041bb02876d5f7]
mapping (address => bool) _transferOwnership; // STORAGE[0xffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b]

struct struct_1470 { mapping (address => bool) field0; uint256 field1; };

// Events
RoleGranted(bytes32, address, address);
Initialized(uint8);
RoleRevoked(bytes32, address, address);
NativeTransfer(address, uint256);

function receive() public payable { 
}

function 0x155b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x17d3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    if (varg6 >> 1 & 0x1 == 1) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
        if (v0) {
            if (v0) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
            }
        }
    }
    v1 = v2 = 20;
    while (v1 < varg1) {
        v3 = 0x2b0b(v1);
        v4, v5 = _SafeSub(varg0, varg1, v1, v3);
        v6 = v7 = bytes20(msg.data[v5]);
        if (v4 < 20) {
            v6 = v8 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v4 << 3) & msg.data[v5]);
        }
        v9 = 0x2799(address(v6 >> 96), this);
        mapping_97[address(v6 >> 96)] = v9;
        v1 = v1 + 84;
        require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
    }
    v10 = v11 = 0;
    while (v10 < varg5) {
        require(v10 < varg5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg4 + (v10 << 5)] < msg.data.length - varg4 - 63);
        v12 = varg4 + msg.data[varg4 + (v10 << 5)];
        v13 = v14 = 0;
        require(msg.data[v12 + 32] < msg.data.length - v12 - 31);
        v15 = v16 = msg.data[v12 + msg.data[v12 + 32]];
        require(v16 <= uint64.max);
        require(32 + (v12 + msg.data[v12 + 32]) <= msg.data.length - (v16 << 5));
        while (v13 < v15) {
            require(msg.data[v12 + 32] < msg.data.length - v12 - 31);
            require(msg.data[v12 + msg.data[v12 + 32]] <= uint64.max);
            require(32 + (v12 + msg.data[v12 + 32]) <= msg.data.length - (msg.data[v12 + msg.data[v12 + 32]] << 5));
            require(v13 < msg.data[v12 + msg.data[v12 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)] < msg.data.length - (32 + (v12 + msg.data[v12 + 32])) - 159);
            require(!(address(msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]]) - msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]]));
            v17 = 0x2799(msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]], this);
            require(!(address(msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]]) - msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]]));
            mapping_97[address(msg.data[32 + (v12 + msg.data[v12 + 32]) + msg.data[32 + (v12 + msg.data[v12 + 32]) + (v13 << 5)]])] = v17;
            v13 = v13 + 1;
            require(msg.data[v12 + 32] < msg.data.length - v12 - 31);
            v15 = msg.data[v12 + msg.data[v12 + 32]];
            require(v15 <= uint64.max);
            require(32 + (v12 + msg.data[v12 + 32]) <= msg.data.length - (v15 << 5));
        }
        v10 += 1;
    }
    v18 = v19 = 0;
    while (v18 < varg5) {
        require(v18 < varg5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg4 + (v18 << 5)] < msg.data.length - varg4 - 63);
        require(!(address(msg.data[varg4 + msg.data[varg4 + (v18 << 5)]]) - msg.data[varg4 + msg.data[varg4 + (v18 << 5)]]));
        v20 = 0x2799(msg.data[varg4 + msg.data[varg4 + (v18 << 5)]], this);
        require(!(address(msg.data[varg4 + msg.data[varg4 + (v18 << 5)]]) - msg.data[varg4 + msg.data[varg4 + (v18 << 5)]]));
        mapping_97[address(msg.data[varg4 + msg.data[varg4 + (v18 << 5)]])] = v20;
        v18 = v18 + 1;
    }
    if (!(varg6 & 0x1)) {
        v21 = v22 = 0;
        while (v21 < varg3) {
            if (v21 < varg3) {
                v23 = v24 = msg.data[(v21 << 6) + varg2 + 32];
                require(!(address(msg.data[(v21 << 6) + varg2]) - msg.data[(v21 << 6) + varg2]));
                if (mapping_97[address(msg.data[(v21 << 6) + varg2])] < v24) {
                    v23 = v25 = 0x2cb8(v24);
                    require(mapping_97[address(msg.data[(v21 << 6) + varg2])] >= v25, mapping_97[address(msg.data[(v21 << 6) + varg2])], v24);
                }
                require(!(address(msg.data[(v21 << 6) + varg2]) - msg.data[(v21 << 6) + varg2]));
                v26 = _SafeSub(mapping_97[address(msg.data[(v21 << 6) + varg2])], v23);
                mapping_97[address(msg.data[(v21 << 6) + varg2])] = v26;
                v21 = v21 + 1;
            }
            revert(Panic(50));
        }
    }
    v27 = v28 = 0;
    while (v27 < varg5) {
        require(v27 < varg5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg4 + (v27 << 5)] < msg.data.length - varg4 - 63);
        require(!(address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]) - msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]));
        if (bool(!(varg6 & 0x1))) {
            v29 = 0x2799(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], this);
            require(v29 >= mapping_97[address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]])], v29, mapping_97[address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]])]);
            v30 = v31 = v29 - mapping_97[address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]])];
            require(v31, SwapTotalAmountCannotBeZero());
        } else {
            v32 = 0x2c9f(varg2, varg3);
            v30 = v33 = msg.data[v32 + 32];
        }
        if (v27 < varg5) {
            require(msg.data[varg4 + (v27 << 5)] < msg.data.length - varg4 - 63);
            v34 = varg4 + msg.data[varg4 + (v27 << 5)];
            require(msg.data[v34 + 32] < msg.data.length - v34 - 31);
            require(msg.data[v34 + msg.data[v34 + 32]] <= uint64.max);
            require(32 + (v34 + msg.data[v34 + 32]) <= msg.data.length - (msg.data[v34 + msg.data[v34 + 32]] << 5));
            v35 = v36 = 0;
            while (v35 < msg.data[v34 + msg.data[v34 + 32]]) {
                require(v35 < msg.data[v34 + msg.data[v34 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(msg.data[32 + (v34 + msg.data[v34 + 32]) + (v35 << 5)] < msg.data.length - (32 + (v34 + msg.data[v34 + 32])) - 159);
                v37 = 32 + (v34 + msg.data[v34 + 32]) + msg.data[32 + (v34 + msg.data[v34 + 32]) + (v35 << 5)];
                v38 = _SafeMul(v30, msg.data[v37 + 32]);
                v39 = v40 = v38 / 10 ** 18;
                require(!bool(!v40), SwapAmountCannotBeZero());
                if (uint8(msg.data[v37 + 128] >> 248)) {
                    if (uint8(msg.data[v37 + 128] >> 248) - 1) {
                        if (uint8(msg.data[v37 + 128] >> 248) - 2) {
                            if (uint8(msg.data[v37 + 128] >> 248) - 3) {
                                if (uint8(msg.data[v37 + 128] >> 248) - 4) {
                                    require(!(5 - uint8(msg.data[v37 + 128] >> 248)), uint8(msg.data[v37 + 128] >> 248));
                                    MEM[MEM[64] + 32] = 96;
                                    require(!(address(msg.data[v37]) - msg.data[v37]));
                                    MEM[MEM[64] + 32 + 96] = address(msg.data[v37]);
                                    MEM[MEM[64] + 32 + 128] = msg.data[v37 + 32];
                                    require(!(address(msg.data[v37 + 64]) - msg.data[v37 + 64]));
                                    MEM[MEM[64] + 32 + 160] = address(msg.data[v37 + 64]);
                                    require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                    require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                    require(v37 + msg.data[v37 + 96] + 32 <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                    MEM[MEM[64] + 32 + 192] = 160;
                                    MEM[MEM[64] + 32 + (uint8.max + 1)] = msg.data[v37 + msg.data[v37 + 96]];
                                    CALLDATACOPY(MEM[64] + 32 + (uint8.max + 1) + 32, v37 + msg.data[v37 + 96] + 32, msg.data[v37 + msg.data[v37 + 96]]);
                                    MEM[MEM[64] + 32 + (uint8.max + 1) + msg.data[v37 + msg.data[v37 + 96]] + 32] = 0;
                                    MEM[MEM[64] + 32 + 224] = msg.data[v37 + 128];
                                    MEM[MEM[64] + 32 + 32] = address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]);
                                    MEM[MEM[64] + 32 + 64] = v40;
                                    require(!((MEM[64] + ((msg.data[v37 + msg.data[v37 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((msg.data[v37 + msg.data[v37 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 32;
                                    MEM[MEM[64] + 4 + 32] = (msg.data[v37 + msg.data[v37 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32;
                                    v41 = 0;
                                    while (v41 < (msg.data[v37 + msg.data[v37 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32) {
                                        MEM[v41 + (MEM[64] + 4 + 32 + 32)] = MEM[v41 + (MEM[64] + 32)];
                                        v41 += 32;
                                    }
                                    MEM[(msg.data[v37 + msg.data[v37 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32 + (MEM[64] + 4 + 32 + 32)] = 0;
                                    v42 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + msg.data[v2c85V0x2c91V0x1f91 + msg.data[v2c85V0x2c91V0x1f91 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + uint8.max + 1 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 32 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (v42) {
                                        if (v42) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                            v43 = 0x32ab(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                    require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                    require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                    if (uint32(msg.data[v37 + 128] >> 208) - uint32.max) {
                                        v39 = v44 = msg.data[32 + (v37 + msg.data[v37 + 96]) + uint32(msg.data[v37 + 128] >> 208) - 32];
                                        if (v44 < v40) {
                                        }
                                        v45 = this.code.size;
                                    }
                                    v46 = 0x2fd8(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], v39, uint8(msg.data[v37 + 128] >> 240), address(msg.data[v37 + 128]));
                                    if (uint32(msg.data[v37 + 128] >> 208) == uint32.max) {
                                        v47 = v48 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v49 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                                        require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                                        CALLDATACOPY(v49.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                                        v49[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                                    } else {
                                        v47 = v50 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v49 = v51 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                                        require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                                        CALLDATACOPY(v51.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                                        v51[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                                        MEM[v51 + uint32(msg.data[v37 + 128] >> 208)] = v39;
                                    }
                                    require(!(address(msg.data[v37 + v47]) - msg.data[v37 + v47]));
                                    v52 = msg.data[v37 + v47].call(MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x12a42 + 32:v295aV0x136d60x3fa5V0x3b380x33b0V0x12a42 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x12a42]], MEM[0:0]).value(v46).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v53 = v54 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v53 = new bytes[](RETURNDATASIZE());
                                        require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v53.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v52) {
                                        v55 = new uint256[](MEM[v53]);
                                        v56 = 0;
                                        while (v56 < MEM[v53]) {
                                            MEM[v56 + v55.data] = MEM[v56 + (v53 + 32)];
                                            v56 += 32;
                                        }
                                        MEM[MEM[v53] + v55.data] = 0;
                                        revert(v55, v39);
                                    }
                                }
                            } else {
                                v57 = 0x2e2f(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]);
                                if (!v57) {
                                    if (uint8(msg.data[v37 + 128] >> 240)) {
                                        if (uint8(msg.data[v37 + 128] >> 240) - 2) {
                                            if (uint8(msg.data[v37 + 128] >> 240) - 1) {
                                                if (uint8(msg.data[v37 + 128] >> 240) - 7) {
                                                    require(!(uint8(msg.data[v37 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v37 + 128] >> 240)));
                                                    0x36af(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(0x22d473030f116ddee9f6b43ac78ba3));
                                                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                                    v58 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]), address(msg.data[v37 + 128]), address(v40), 0).gas(msg.gas);
                                                    if (v58) {
                                                        if (v58) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                            v59 = this.code.size;
                                                        }
                                                    }
                                                } else {
                                                    0x36af(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(msg.data[v37 + 128]));
                                                }
                                            } else {
                                                0x2dbe(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(msg.data[v37 + 128]), v40);
                                            }
                                        } else {
                                            0x37f9(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(msg.data[v37 + 128]), v40);
                                        }
                                        v60 = this.code.size;
                                    }
                                }
                                require(!(address(msg.data[v37 + 64]) - msg.data[v37 + 64]));
                                v61, /* uint256 */ v62 = address(0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b).deposit(address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]), address(msg.data[v37 + 64])).gas(msg.gas);
                                if (v61) {
                                    if (v61) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v63 = v64 = MEM[64] + RETURNDATASIZE();
                                        } else {
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + 32;
                                            v63 = v65 = MEM[64] + 32;
                                        }
                                        require(v63 - MEM[64] >= 32);
                                    }
                                    require(!(address(msg.data[v37 + 64]) - msg.data[v37 + 64]));
                                    require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                    require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                    require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                    CALLDATACOPY(MEM[64], 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                                    MEM[MEM[64] + msg.data[v37 + msg.data[v37 + 96]]] = 0;
                                    v66 = msg.data[v37 + 64].call(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[v2c85V0x2c91V0x1f91 + msg.data[v2c85V0x2c91V0x1f91 + 96]] - MEM[64]], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v67 = v68 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v67 = new bytes[](RETURNDATASIZE());
                                        require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v67.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v66) {
                                        v69 = new uint256[](MEM[v67]);
                                        v70 = 0;
                                        while (v70 < MEM[v67]) {
                                            MEM[v70 + v69.data] = MEM[v70 + (v67 + 32)];
                                            v70 += 32;
                                        }
                                        MEM[MEM[v67] + v69.data] = 0;
                                        revert(v69, v40);
                                    }
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (uint8(msg.data[v37 + 128] >> 240) - 3) {
                                if (uint8(msg.data[v37 + 128] >> 240) - 4) {
                                    require(5 == uint8(msg.data[v37 + 128] >> 240), uint8(msg.data[v37 + 128] >> 240));
                                    v71 = 0x26d8(this);
                                    if (uint32(msg.data[v37 + 128] >> 208) == uint32.max) {
                                        v72 = v73 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        v74 = msg.data[v37 + msg.data[v37 + 96]];
                                        require(v74 <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v74);
                                        require(v74 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v75 = new bytes[](v74);
                                        require(!((v75 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v74) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v75 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v74) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v75)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + v74 <= msg.data.length);
                                        CALLDATACOPY(v75.data, 32 + (v37 + msg.data[v37 + 96]), v74);
                                        v75[v74] = 0;
                                    } else {
                                        v72 = v76 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        v77 = msg.data[v37 + msg.data[v37 + 96]];
                                        require(v77 <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v77);
                                        require(v77 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v75 = v78 = new bytes[](v77);
                                        require(!((v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v78 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v78)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + v77 <= msg.data.length);
                                        CALLDATACOPY(v78.data, 32 + (v37 + msg.data[v37 + 96]), v77);
                                        v78[v77] = 0;
                                        MEM[v78 + uint32(msg.data[v37 + 128] >> 208)] = v40;
                                    }
                                    require(!(address(msg.data[v37 + v72]) - msg.data[v37 + v72]));
                                    v79 = msg.data[v37 + v72].call(MEM[v295aV0x13644V0x1349aV0x3427V0x12a42 + 32:v295aV0x13644V0x1349aV0x3427V0x12a42 + 32 + MEM[v295aV0x13644V0x1349aV0x3427V0x12a42]], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v80 = v81 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v80 = new bytes[](RETURNDATASIZE());
                                        require(!((v80 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v80 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v80)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v80.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v79) {
                                        v82 = new uint256[](MEM[v80]);
                                        v83 = 0;
                                        while (v83 < MEM[v80]) {
                                            MEM[v83 + v82.data] = MEM[v83 + (v80 + 32)];
                                            v83 += 32;
                                        }
                                        MEM[MEM[v80] + v82.data] = 0;
                                        revert(v82, v40);
                                    } else {
                                        v84 = 15591;
                                        v85 = v86 = 0x26d8(this);
                                    }
                                } else {
                                    v87 = 0x2fc1(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], v40, address(msg.data[v37 + 128]));
                                    v71 = v88 = 0x26d8(this);
                                    if (uint32(msg.data[v37 + 128] >> 208) == uint32.max) {
                                        v89 = v90 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        v91 = msg.data[v37 + msg.data[v37 + 96]];
                                        require(v91 <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v91);
                                        require(v91 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v92 = new bytes[](v91);
                                        require(!((v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v91) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v91) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + v91 <= msg.data.length);
                                        CALLDATACOPY(v92.data, 32 + (v37 + msg.data[v37 + 96]), v91);
                                        v92[v91] = 0;
                                    } else {
                                        v89 = v93 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        v94 = msg.data[v37 + msg.data[v37 + 96]];
                                        require(v94 <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v94);
                                        require(v94 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v92 = v95 = new bytes[](v94);
                                        require(!((v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v94) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v94) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + v94 <= msg.data.length);
                                        CALLDATACOPY(v95.data, 32 + (v37 + msg.data[v37 + 96]), v94);
                                        v95[v94] = 0;
                                        MEM[v95 + uint32(msg.data[v37 + 128] >> 208)] = v40;
                                    }
                                    require(!(address(msg.data[v37 + v89]) - msg.data[v37 + v89]));
                                    v96 = msg.data[v37 + v89].call(MEM[v295aV0x13644V0x13402V0x3427V0x12a42 + 32:v295aV0x13644V0x13402V0x3427V0x12a42 + 32 + MEM[v295aV0x13644V0x13402V0x3427V0x12a42]], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v97 = v98 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v97 = new bytes[](RETURNDATASIZE());
                                        require(!((v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v97)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v97.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v96) {
                                        v99 = new uint256[](MEM[v97]);
                                        v100 = 0;
                                        while (v100 < MEM[v97]) {
                                            MEM[v100 + v99.data] = MEM[v100 + (v97 + 32)];
                                            v100 += 32;
                                        }
                                        MEM[MEM[v97] + v99.data] = 0;
                                        revert(v99, v40);
                                    } else {
                                        v84 = v101 = 15591;
                                        v85 = v102 = 0x26d8(this);
                                    }
                                }
                                require(v85 > v71, v71, v85);
                                v103 = _SafeSub(v85, v71);
                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                v104 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v103).gas(msg.gas);
                                if (v104) {
                                    if (v104) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(0 >= 0);
                                    }
                                }
                            } else {
                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                v105 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v40).gas(msg.gas);
                                if (v105) {
                                    if (v105) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(0 >= 0);
                                        v106 = this.code.size;
                                    }
                                    if (uint32(msg.data[v37 + 128] >> 208) == uint32.max) {
                                        v107 = v108 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v109 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                                        require(!((v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v109)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                                        CALLDATACOPY(v109.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                                        v109[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                                    } else {
                                        v107 = v110 = 64;
                                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v109 = v111 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                                        require(!((v111 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v111 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v111)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                                        CALLDATACOPY(v111.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                                        v111[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                                        MEM[v111 + uint32(msg.data[v37 + 128] >> 208)] = v40;
                                    }
                                    require(!(address(msg.data[v37 + v107]) - msg.data[v37 + v107]));
                                    v112 = msg.data[v37 + v107].call(MEM[v295aV0x136d60x3b7cV0x3427V0x12a42 + 32:v295aV0x136d60x3b7cV0x3427V0x12a42 + 32 + MEM[v295aV0x136d60x3b7cV0x3427V0x12a42]], MEM[0:0]).value(v40).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v113 = v114 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v113 = new bytes[](RETURNDATASIZE());
                                        require(!((v113 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v113 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v113)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v113.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v112) {
                                        v115 = new uint256[](MEM[v113]);
                                        v116 = 0;
                                        while (v116 < MEM[v113]) {
                                            MEM[v116 + v115.data] = MEM[v116 + (v113 + 32)];
                                            v116 += 32;
                                        }
                                        MEM[MEM[v113] + v115.data] = 0;
                                        revert(v115, v40);
                                    }
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        if (0 == (uint32(msg.data[v37 + 128] >> 208) != uint32.max)) {
                            require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                            v117 = msg.data[v37 + msg.data[v37 + 96]];
                            require(v117 <= uint64.max);
                            require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v117);
                            require(v117 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v118 = new bytes[](v117);
                            require(!((v118 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v117) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v118 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v117) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v118)), Panic(65)); // failed memory allocation (too much memory)
                            require(32 + (v37 + msg.data[v37 + 96]) + v117 <= msg.data.length);
                            CALLDATACOPY(v118.data, 32 + (v37 + msg.data[v37 + 96]), v117);
                            v118[v117] = 0;
                            require(!(address(msg.data[v37 + 64]) - msg.data[v37 + 64]));
                            v119 = v120 = msg.data[v37 + 64].staticcall(MEM[v295aV0x135b2V0x3413V0x12a42.data:v295aV0x135b2V0x3413V0x12a42.data + v295aV0x135b2V0x3413V0x12a42.length], MEM[0:0]).gas(msg.gas);
                            v121 = v122 = 16098;
                            if (!RETURNDATASIZE()) {
                                v123 = v124 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v123 = new bytes[](RETURNDATASIZE());
                                require(!((v123 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v123 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v123)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v123.data, 0, RETURNDATASIZE());
                            }
                        } else {
                            require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                            v125 = msg.data[v37 + msg.data[v37 + 96]];
                            require(v125 <= uint64.max);
                            require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - v125);
                            require(v125 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v126 = new bytes[](v125);
                            require(!((v126 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v125) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v126 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v125) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v126)), Panic(65)); // failed memory allocation (too much memory)
                            require(32 + (v37 + msg.data[v37 + 96]) + v125 <= msg.data.length);
                            CALLDATACOPY(v126.data, 32 + (v37 + msg.data[v37 + 96]), v125);
                            v126[v125] = 0;
                            MEM[v126 + uint32(msg.data[v37 + 128] >> 208)] = v40;
                            require(!(address(msg.data[v37 + 64]) - msg.data[v37 + 64]));
                            v119 = v127 = msg.data[v37 + 64].staticcall(MEM[v295aV0x400cV0x3413V0x12a42.data:v295aV0x400cV0x3413V0x12a42.data + v295aV0x400cV0x3413V0x12a42.length], MEM[0:0]).gas(msg.gas);
                            v121 = v128 = 16098;
                            if (!RETURNDATASIZE()) {
                                v123 = v129 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v123 = v130 = new bytes[](RETURNDATASIZE());
                                require(!((v130 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v130 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v130)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v130.data, 0, RETURNDATASIZE());
                            }
                        }
                        0x3d8d(v119, v123, v40);
                        require(v123 + MEM[v123] + 32 - (v123 + 32) >= 128);
                        require(!(address(MEM[v123 + 32]) - MEM[v123 + 32]));
                        require(!(address(MEM[v123 + 32 + 32]) - MEM[v123 + 32 + 32]));
                        v131 = v132 = MEM[v123 + 32 + 64];
                        require(MEM[v123 + 32 + 96] <= uint64.max);
                        v133 = 0x32ab(v123 + 32 + MEM[v123 + 32 + 96], v123 + MEM[v123] + 32);
                        v134 = 0x2e2f(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]);
                        if (!v134) {
                            if (uint8(msg.data[v37 + 128] >> 240)) {
                                if (uint8(msg.data[v37 + 128] >> 240) - 2) {
                                    if (uint8(msg.data[v37 + 128] >> 240) - 1) {
                                        if (uint8(msg.data[v37 + 128] >> 240) - 7) {
                                            require(!(uint8(msg.data[v37 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v37 + 128] >> 240)));
                                            0x36af(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(0x22d473030f116ddee9f6b43ac78ba3));
                                            require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                            v135 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]]), address(MEM[v123 + 32 + 32]), address(v132), 0).gas(msg.gas);
                                            if (!v135) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else if (v135) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                                v136 = this.code.size;
                                            }
                                        } else {
                                            0x36af(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(MEM[v123 + 32 + 32]));
                                        }
                                    } else {
                                        0x2dbe(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(MEM[v123 + 32 + 32]), v132);
                                    }
                                } else {
                                    0x37f9(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], address(MEM[v123 + 32 + 32]), v132);
                                }
                                v137 = this.code.size;
                            }
                            v131 = 0;
                        }
                        v138 = address(MEM[v123 + 32]).call(MEM[v3e14_0x0V0x3413V0x12a42.data:v3e14_0x0V0x3413V0x12a42.data + v3e14_0x0V0x3413V0x12a42.length], MEM[0:0]).value(v131).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v139 = v140 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v139 = new bytes[](RETURNDATASIZE());
                            require(!((v139 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v139 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v139)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v139.data, 0, RETURNDATASIZE());
                        }
                        if (!v138) {
                            v141 = new uint256[](MEM[v139]);
                            v142 = 0;
                            while (v142 < MEM[v139]) {
                                MEM[v142 + v141.data] = MEM[v142 + (v139 + 32)];
                                v142 += 32;
                            }
                            MEM[MEM[v139] + v141.data] = 0;
                            revert(v141, v40);
                        }
                    }
                } else {
                    v143 = 0x2fd8(msg.data[varg4 + msg.data[varg4 + (v27 << 5)]], v40, uint8(msg.data[v37 + 128] >> 240), address(msg.data[v37 + 128]));
                    if (uint32(msg.data[v37 + 128] >> 208) == uint32.max) {
                        v144 = v145 = 64;
                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v146 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                        require(!((v146 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v146 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v146)), Panic(65)); // failed memory allocation (too much memory)
                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                        CALLDATACOPY(v146.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                        v146[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                    } else {
                        v144 = v147 = 64;
                        require(msg.data[v37 + 96] < msg.data.length - v37 - 31);
                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max);
                        require(32 + (v37 + msg.data[v37 + 96]) <= msg.data.length - msg.data[v37 + msg.data[v37 + 96]]);
                        require(msg.data[v37 + msg.data[v37 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v146 = v148 = new bytes[](msg.data[v37 + msg.data[v37 + 96]]);
                        require(!((v148 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v148 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v37 + msg.data[v37 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v148)), Panic(65)); // failed memory allocation (too much memory)
                        require(32 + (v37 + msg.data[v37 + 96]) + msg.data[v37 + msg.data[v37 + 96]] <= msg.data.length);
                        CALLDATACOPY(v148.data, 32 + (v37 + msg.data[v37 + 96]), msg.data[v37 + msg.data[v37 + 96]]);
                        v148[msg.data[v37 + msg.data[v37 + 96]]] = 0;
                        MEM[v148 + uint32(msg.data[v37 + 128] >> 208)] = v40;
                    }
                    require(!(address(msg.data[v37 + v144]) - msg.data[v37 + v144]));
                    v149 = msg.data[v37 + v144].call(MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12a42 + 32:v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12a42 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12a42]], MEM[0:0]).value(v143).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v150 = v151 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v150 = new bytes[](RETURNDATASIZE());
                        require(!((v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v150)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v150.data, 0, RETURNDATASIZE());
                    }
                    if (!v149) {
                        v152 = new uint256[](MEM[v150]);
                        v153 = 0;
                        while (v153 < MEM[v150]) {
                            MEM[v153 + v152.data] = MEM[v153 + (v150 + 32)];
                            v153 += 32;
                        }
                        MEM[MEM[v150] + v152.data] = 0;
                        revert(v152, v40);
                    }
                }
                v35 = v35 + 1;
            }
            v27 += 1;
        }
    }
    require(20 <= varg1);
    v154 = v155 = bytes20(msg.data[varg0]);
    if (20 < 20) {
        v154 = v156 = bytes20(msg.data[varg0]);
    }
    v157 = varg6 >> 2;
    v158 = v159 = 0;
    v160 = v161 = 20;
    v162 = v163 = address(v154 >> 96) != 0xbeb0b0623f66be8ce162ebdfa2ec543a522f4ea6;
    while (v160 < varg1) {
        v164, v165 = _SafeSub(varg0, varg1, v160, v160 + 20);
        v166 = v167 = bytes20(msg.data[v165]);
        if (v164 < 20) {
            v166 = v168 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v164 << 3) & msg.data[v165]);
        }
        v169 = address(v166 >> 96);
        v170 = 0x2e2f(v169);
        if (v170) {
            v171 = 0x2799(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), this);
            require(mapping_97[address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)] <= v171);
            if (v171 - mapping_97[address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)]) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                v172 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v171 - mapping_97[address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)]).gas(msg.gas);
                if (v172) {
                    if (v172) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        v173 = this.code.size;
                    }
                }
            }
        }
        v174, v175 = _SafeSub(varg0, varg1, v160 + 20, v160 + 52);
        v176 = v177 = msg.data[v175];
        if (v174 < 32) {
            v176 = v178 = uint256.max << (32 - v174 << 3) & v177;
        }
        v179 = v180 = v176 << 3 >> 3;
        v181, v182 = _SafeSub(varg0, varg1, v160 + 52, v160 + 84);
        v183 = v184 = msg.data[v182];
        if (v181 < 32) {
            v183 = v185 = uint256.max << (32 - v181 << 3) & v184;
        }
        v186 = v187 = 0;
        if (v176 >> 253) {
            if (0 == (v176 >> 253 == 1)) {
                if (0 == (v176 >> 253 == 2)) {
                    if (0 == (v176 >> 253 == 3)) {
                        require(!(4 - (v176 >> 253)));
                        v188 = 0x2799(v169, this);
                        require(v188 - mapping_97[address(v169)] >= v180);
                        v189 = 0x2799(v169, this);
                        v190 = v191 = !v157;
                        if (bool(v157)) {
                            v190 = v192 = v189 - mapping_97[address(v169)] - v180 <= v183;
                        }
                        if (!v190) {
                            v186 = v193 = v189 - mapping_97[address(v169)] - v180 - v183;
                        }
                        if (bool(v157)) {
                            v186 = v194 = v157 * v186 / 10000;
                        }
                        v179 = v195 = v180 + v186;
                        v158 = v158 + 1;
                        require(v158 < varg8, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(msg.data[varg7 + (v158 << 5)] < msg.data.length - varg7 - 95);
                        v196 = varg7 + msg.data[varg7 + (v158 << 5)];
                        v197 = v198 = 64;
                        v199 = v200 = v196 + 32;
                        v201 = v202 = 7535;
                        require(!(address(msg.data[v200]) - msg.data[v200]));
                        v203 = v204 = 0x2799(msg.data[v200], this);
                        require(msg.data[v196] < msg.data.length - v196 - 159);
                        v205 = v196 + msg.data[v196];
                        v206 = 0x2799(v169, this);
                        v207 = _SafeMul(v206 - v195, msg.data[v205 + 32]);
                        v208 = v209 = v207 / 10 ** 18;
                        require(!bool(!v209), SwapAmountCannotBeZero());
                        if (uint8(msg.data[v205 + 128] >> 248)) {
                            if (uint8(msg.data[v205 + 128] >> 248) - 1) {
                                if (uint8(msg.data[v205 + 128] >> 248) - 2) {
                                    if (uint8(msg.data[v205 + 128] >> 248) - 3) {
                                        if (uint8(msg.data[v205 + 128] >> 248) - 4) {
                                            require(!(5 - uint8(msg.data[v205 + 128] >> 248)), uint8(msg.data[v205 + 128] >> 248));
                                            MEM[MEM[64] + 32] = 96;
                                            require(!(address(msg.data[v205]) - msg.data[v205]));
                                            MEM[MEM[64] + 32 + 96] = address(msg.data[v205]);
                                            MEM[MEM[64] + 32 + 128] = msg.data[v205 + 32];
                                            require(!(address(msg.data[v205 + 64]) - msg.data[v205 + 64]));
                                            MEM[MEM[64] + 32 + 160] = address(msg.data[v205 + 64]);
                                            require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                            require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                            require(v205 + msg.data[v205 + 96] + 32 <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                            MEM[MEM[64] + 32 + 192] = 160;
                                            MEM[MEM[64] + 32 + (uint8.max + 1)] = msg.data[v205 + msg.data[v205 + 96]];
                                            CALLDATACOPY(MEM[64] + 32 + (uint8.max + 1) + 32, v205 + msg.data[v205 + 96] + 32, msg.data[v205 + msg.data[v205 + 96]]);
                                            MEM[MEM[64] + 32 + (uint8.max + 1) + msg.data[v205 + msg.data[v205 + 96]] + 32] = 0;
                                            MEM[MEM[64] + 32 + 224] = msg.data[v205 + 128];
                                            MEM[MEM[64] + 32 + 32] = address(v169);
                                            MEM[MEM[64] + 32 + 64] = v209;
                                            require(!((MEM[64] + ((msg.data[v205 + msg.data[v205 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((msg.data[v205 + msg.data[v205 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                            MEM[MEM[64] + 4] = 32;
                                            MEM[MEM[64] + 4 + 32] = (msg.data[v205 + msg.data[v205 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32;
                                            v210 = 0;
                                            while (v210 < (msg.data[v205 + msg.data[v205 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32) {
                                                MEM[v210 + (MEM[64] + 4 + 32 + 32)] = MEM[v210 + (MEM[64] + 32)];
                                                v210 += 32;
                                            }
                                            MEM[(msg.data[v205 + msg.data[v205 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32 + (MEM[64] + 4 + 32 + 32)] = 0;
                                            v211 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + msg.data[v2c85V0x1d4e + msg.data[v2c85V0x1d4e + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + uint8.max + 1 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 32 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (v211) {
                                                if (v211) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                    v212 = 0x32ab(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                                }
                                            }
                                        } else {
                                            require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                            require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                            require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                            if (uint32(msg.data[v205 + 128] >> 208) - uint32.max) {
                                                v208 = v213 = msg.data[32 + (v205 + msg.data[v205 + 96]) + uint32(msg.data[v205 + 128] >> 208) - 32];
                                                if (v213 < v209) {
                                                }
                                                v214 = this.code.size;
                                            }
                                            v215 = 0x2fd8(v169, v208, uint8(msg.data[v205 + 128] >> 240), address(msg.data[v205 + 128]));
                                            if (uint32(msg.data[v205 + 128] >> 208) == uint32.max) {
                                                v216 = v217 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v218 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                                require(!((v218 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v218 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v218)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v218.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                                v218[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                            } else {
                                                v216 = v219 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v218 = v220 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                                require(!((v220 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v220 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v220)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v220.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                                v220[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                                MEM[v220 + uint32(msg.data[v205 + 128] >> 208)] = v208;
                                            }
                                            require(!(address(msg.data[v205 + v216]) - msg.data[v205 + v216]));
                                            v221 = msg.data[v205 + v216].call(MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x1d68 + 32:v295aV0x136d60x3fa5V0x3b380x33b0V0x1d68 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x1d68]], MEM[0:0]).value(v215).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v222 = v223 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v222 = new bytes[](RETURNDATASIZE());
                                                require(!((v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v222)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v222.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v221) {
                                                v224 = new uint256[](MEM[v222]);
                                                v225 = 0;
                                                while (v225 < MEM[v222]) {
                                                    MEM[v225 + v224.data] = MEM[v225 + (v222 + 32)];
                                                    v225 += 32;
                                                }
                                                MEM[MEM[v222] + v224.data] = 0;
                                                revert(v224, v208);
                                            }
                                        }
                                    } else {
                                        v226 = 0x2e2f(v169);
                                        if (!v226) {
                                            if (uint8(msg.data[v205 + 128] >> 240)) {
                                                if (uint8(msg.data[v205 + 128] >> 240) - 2) {
                                                    if (uint8(msg.data[v205 + 128] >> 240) - 1) {
                                                        if (uint8(msg.data[v205 + 128] >> 240) - 7) {
                                                            require(!(uint8(msg.data[v205 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v205 + 128] >> 240)));
                                                            0x36af(v169, address(0x22d473030f116ddee9f6b43ac78ba3));
                                                            require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                                            v227 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(v169), address(msg.data[v205 + 128]), address(v209), 0).gas(msg.gas);
                                                            if (v227) {
                                                                if (v227) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    require(0 >= 0);
                                                                    v228 = this.code.size;
                                                                }
                                                            }
                                                        } else {
                                                            0x36af(v169, address(msg.data[v205 + 128]));
                                                        }
                                                    } else {
                                                        0x2dbe(v169, address(msg.data[v205 + 128]), v209);
                                                    }
                                                } else {
                                                    0x37f9(v169, address(msg.data[v205 + 128]), v209);
                                                }
                                                v229 = this.code.size;
                                            }
                                        }
                                        require(!(address(msg.data[v205 + 64]) - msg.data[v205 + 64]));
                                        v230, /* uint256 */ v231 = address(0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b).deposit(address(v169), address(msg.data[v205 + 64])).gas(msg.gas);
                                        if (v230) {
                                            if (v230) {
                                                if (32 > RETURNDATASIZE()) {
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    v232 = v233 = MEM[64] + RETURNDATASIZE();
                                                } else {
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + 32;
                                                    v232 = v234 = MEM[64] + 32;
                                                }
                                                require(v232 - MEM[64] >= 32);
                                            }
                                            require(!(address(msg.data[v205 + 64]) - msg.data[v205 + 64]));
                                            require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                            require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                            require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                            CALLDATACOPY(MEM[64], 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                            MEM[MEM[64] + msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                            v235 = msg.data[v205 + 64].call(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[v2c85V0x1d4e + msg.data[v2c85V0x1d4e + 96]] - MEM[64]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v236 = v237 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v236 = new bytes[](RETURNDATASIZE());
                                                require(!((v236 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v236 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v236)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v236.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v235) {
                                                v238 = new uint256[](MEM[v236]);
                                                v239 = 0;
                                                while (v239 < MEM[v236]) {
                                                    MEM[v239 + v238.data] = MEM[v239 + (v236 + 32)];
                                                    v239 += 32;
                                                }
                                                MEM[MEM[v236] + v238.data] = 0;
                                                revert(v238, v209);
                                            }
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (uint8(msg.data[v205 + 128] >> 240) - 3) {
                                        if (uint8(msg.data[v205 + 128] >> 240) - 4) {
                                            require(5 == uint8(msg.data[v205 + 128] >> 240), uint8(msg.data[v205 + 128] >> 240));
                                            v240 = 0x26d8(this);
                                            if (uint32(msg.data[v205 + 128] >> 208) == uint32.max) {
                                                v241 = v242 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                v243 = msg.data[v205 + msg.data[v205 + 96]];
                                                require(v243 <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v243);
                                                require(v243 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v244 = new bytes[](v243);
                                                require(!((v244 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v243) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v244 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v243) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v244)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + v243 <= msg.data.length);
                                                CALLDATACOPY(v244.data, 32 + (v205 + msg.data[v205 + 96]), v243);
                                                v244[v243] = 0;
                                            } else {
                                                v241 = v245 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                v246 = msg.data[v205 + msg.data[v205 + 96]];
                                                require(v246 <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v246);
                                                require(v246 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v244 = v247 = new bytes[](v246);
                                                require(!((v247 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v246) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v247 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v246) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v247)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + v246 <= msg.data.length);
                                                CALLDATACOPY(v247.data, 32 + (v205 + msg.data[v205 + 96]), v246);
                                                v247[v246] = 0;
                                                MEM[v247 + uint32(msg.data[v205 + 128] >> 208)] = v209;
                                            }
                                            require(!(address(msg.data[v205 + v241]) - msg.data[v205 + v241]));
                                            v248 = msg.data[v205 + v241].call(MEM[v295aV0x13644V0x1349aV0x3427V0x1d68 + 32:v295aV0x13644V0x1349aV0x3427V0x1d68 + 32 + MEM[v295aV0x13644V0x1349aV0x3427V0x1d68]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v249 = v250 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v249 = new bytes[](RETURNDATASIZE());
                                                require(!((v249 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v249 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v249)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v249.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v248) {
                                                v251 = new uint256[](MEM[v249]);
                                                v252 = 0;
                                                while (v252 < MEM[v249]) {
                                                    MEM[v252 + v251.data] = MEM[v252 + (v249 + 32)];
                                                    v252 += 32;
                                                }
                                                MEM[MEM[v249] + v251.data] = 0;
                                                revert(v251, v209);
                                            } else {
                                                v253 = 15591;
                                                v254 = v255 = 0x26d8(this);
                                            }
                                        } else {
                                            v256 = 0x2fc1(v169, v209, address(msg.data[v205 + 128]));
                                            v240 = v257 = 0x26d8(this);
                                            if (uint32(msg.data[v205 + 128] >> 208) == uint32.max) {
                                                v258 = v259 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                v260 = msg.data[v205 + msg.data[v205 + 96]];
                                                require(v260 <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v260);
                                                require(v260 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v261 = new bytes[](v260);
                                                require(!((v261 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v260) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v261 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v260) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v261)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + v260 <= msg.data.length);
                                                CALLDATACOPY(v261.data, 32 + (v205 + msg.data[v205 + 96]), v260);
                                                v261[v260] = 0;
                                            } else {
                                                v258 = v262 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                v263 = msg.data[v205 + msg.data[v205 + 96]];
                                                require(v263 <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v263);
                                                require(v263 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v261 = v264 = new bytes[](v263);
                                                require(!((v264 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v263) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v264 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v263) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v264)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + v263 <= msg.data.length);
                                                CALLDATACOPY(v264.data, 32 + (v205 + msg.data[v205 + 96]), v263);
                                                v264[v263] = 0;
                                                MEM[v264 + uint32(msg.data[v205 + 128] >> 208)] = v209;
                                            }
                                            require(!(address(msg.data[v205 + v258]) - msg.data[v205 + v258]));
                                            v265 = msg.data[v205 + v258].call(MEM[v295aV0x13644V0x13402V0x3427V0x1d68 + 32:v295aV0x13644V0x13402V0x3427V0x1d68 + 32 + MEM[v295aV0x13644V0x13402V0x3427V0x1d68]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v266 = v267 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v266 = new bytes[](RETURNDATASIZE());
                                                require(!((v266 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v266 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v266)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v266.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v265) {
                                                v268 = new uint256[](MEM[v266]);
                                                v269 = 0;
                                                while (v269 < MEM[v266]) {
                                                    MEM[v269 + v268.data] = MEM[v269 + (v266 + 32)];
                                                    v269 += 32;
                                                }
                                                MEM[MEM[v266] + v268.data] = 0;
                                                revert(v268, v209);
                                            } else {
                                                v253 = v270 = 15591;
                                                v254 = v271 = 0x26d8(this);
                                            }
                                        }
                                        require(v254 > v240, v240, v254);
                                        v272 = _SafeSub(v254, v240);
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                        v273 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v272).gas(msg.gas);
                                        if (v273) {
                                            if (v273) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                            }
                                        }
                                    } else {
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                        v274 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v209).gas(msg.gas);
                                        if (v274) {
                                            if (v274) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                                v275 = this.code.size;
                                            }
                                            if (uint32(msg.data[v205 + 128] >> 208) == uint32.max) {
                                                v276 = v277 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v278 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                                require(!((v278 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v278 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v278)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v278.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                                v278[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                            } else {
                                                v276 = v279 = 64;
                                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v278 = v280 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                                require(!((v280 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v280 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v280)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v280.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                                v280[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                                MEM[v280 + uint32(msg.data[v205 + 128] >> 208)] = v209;
                                            }
                                            require(!(address(msg.data[v205 + v276]) - msg.data[v205 + v276]));
                                            v281 = msg.data[v205 + v276].call(MEM[v295aV0x136d60x3b7cV0x3427V0x1d68 + 32:v295aV0x136d60x3b7cV0x3427V0x1d68 + 32 + MEM[v295aV0x136d60x3b7cV0x3427V0x1d68]], MEM[0:0]).value(v209).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v282 = v283 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v282 = new bytes[](RETURNDATASIZE());
                                                require(!((v282 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v282 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v282)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v282.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v281) {
                                                v284 = new uint256[](MEM[v282]);
                                                v285 = 0;
                                                while (v285 < MEM[v282]) {
                                                    MEM[v285 + v284.data] = MEM[v285 + (v282 + 32)];
                                                    v285 += 32;
                                                }
                                                MEM[MEM[v282] + v284.data] = 0;
                                                revert(v284, v209);
                                            }
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                }
                            } else {
                                if (0 == (uint32(msg.data[v205 + 128] >> 208) != uint32.max)) {
                                    require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                    v286 = msg.data[v205 + msg.data[v205 + 96]];
                                    require(v286 <= uint64.max);
                                    require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v286);
                                    require(v286 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v287 = new bytes[](v286);
                                    require(!((v287 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v286) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v287 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v286) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v287)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v205 + msg.data[v205 + 96]) + v286 <= msg.data.length);
                                    CALLDATACOPY(v287.data, 32 + (v205 + msg.data[v205 + 96]), v286);
                                    v287[v286] = 0;
                                    require(!(address(msg.data[v205 + 64]) - msg.data[v205 + 64]));
                                    v288 = v289 = msg.data[v205 + 64].staticcall(MEM[v295aV0x135b2V0x3413V0x1d68.data:v295aV0x135b2V0x3413V0x1d68.data + v295aV0x135b2V0x3413V0x1d68.length], MEM[0:0]).gas(msg.gas);
                                    v290 = v291 = 16098;
                                    if (!RETURNDATASIZE()) {
                                        v292 = v293 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v292 = new bytes[](RETURNDATASIZE());
                                        require(!((v292 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v292 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v292)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v292.data, 0, RETURNDATASIZE());
                                    }
                                } else {
                                    require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                    v294 = msg.data[v205 + msg.data[v205 + 96]];
                                    require(v294 <= uint64.max);
                                    require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - v294);
                                    require(v294 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v295 = new bytes[](v294);
                                    require(!((v295 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v294) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v295 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v294) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v295)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v205 + msg.data[v205 + 96]) + v294 <= msg.data.length);
                                    CALLDATACOPY(v295.data, 32 + (v205 + msg.data[v205 + 96]), v294);
                                    v295[v294] = 0;
                                    MEM[v295 + uint32(msg.data[v205 + 128] >> 208)] = v209;
                                    require(!(address(msg.data[v205 + 64]) - msg.data[v205 + 64]));
                                    v288 = v296 = msg.data[v205 + 64].staticcall(MEM[v295aV0x400cV0x3413V0x1d68.data:v295aV0x400cV0x3413V0x1d68.data + v295aV0x400cV0x3413V0x1d68.length], MEM[0:0]).gas(msg.gas);
                                    v290 = v297 = 16098;
                                    if (!RETURNDATASIZE()) {
                                        v292 = v298 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v292 = v299 = new bytes[](RETURNDATASIZE());
                                        require(!((v299 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v299 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v299)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v299.data, 0, RETURNDATASIZE());
                                    }
                                }
                                0x3d8d(v288, v292, v209);
                                require(v292 + MEM[v292] + 32 - (v292 + 32) >= 128);
                                require(!(address(MEM[v292 + 32]) - MEM[v292 + 32]));
                                require(!(address(MEM[v292 + 32 + 32]) - MEM[v292 + 32 + 32]));
                                v300 = v301 = MEM[v292 + 32 + 64];
                                require(MEM[v292 + 32 + 96] <= uint64.max);
                                v302 = 0x32ab(v292 + 32 + MEM[v292 + 32 + 96], v292 + MEM[v292] + 32);
                                v303 = 0x2e2f(v169);
                                if (!v303) {
                                    if (uint8(msg.data[v205 + 128] >> 240)) {
                                        if (uint8(msg.data[v205 + 128] >> 240) - 2) {
                                            if (uint8(msg.data[v205 + 128] >> 240) - 1) {
                                                if (uint8(msg.data[v205 + 128] >> 240) - 7) {
                                                    require(!(uint8(msg.data[v205 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v205 + 128] >> 240)));
                                                    0x36af(v169, address(0x22d473030f116ddee9f6b43ac78ba3));
                                                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                                    v304 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(v169), address(MEM[v292 + 32 + 32]), address(v301), 0).gas(msg.gas);
                                                    if (!v304) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (v304) {
                                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64];
                                                        require(0 >= 0);
                                                        v305 = this.code.size;
                                                    }
                                                } else {
                                                    0x36af(v169, address(MEM[v292 + 32 + 32]));
                                                }
                                            } else {
                                                0x2dbe(v169, address(MEM[v292 + 32 + 32]), v301);
                                            }
                                        } else {
                                            0x37f9(v169, address(MEM[v292 + 32 + 32]), v301);
                                        }
                                        v306 = this.code.size;
                                    }
                                    v300 = 0;
                                }
                                v307 = address(MEM[v292 + 32]).call(MEM[v3e14_0x0V0x3413V0x1d68.data:v3e14_0x0V0x3413V0x1d68.data + v3e14_0x0V0x3413V0x1d68.length], MEM[0:0]).value(v300).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v308 = v309 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v308 = new bytes[](RETURNDATASIZE());
                                    require(!((v308 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v308 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v308)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v308.data, 0, RETURNDATASIZE());
                                }
                                if (!v307) {
                                    v310 = new uint256[](MEM[v308]);
                                    v311 = 0;
                                    while (v311 < MEM[v308]) {
                                        MEM[v311 + v310.data] = MEM[v311 + (v308 + 32)];
                                        v311 += 32;
                                    }
                                    MEM[MEM[v308] + v310.data] = 0;
                                    revert(v310, v209);
                                }
                            }
                        } else {
                            v312 = 0x2fd8(v169, v209, uint8(msg.data[v205 + 128] >> 240), address(msg.data[v205 + 128]));
                            if (uint32(msg.data[v205 + 128] >> 208) == uint32.max) {
                                v313 = v314 = 64;
                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v315 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                require(!((v315 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v315 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v315)), Panic(65)); // failed memory allocation (too much memory)
                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                CALLDATACOPY(v315.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                v315[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                            } else {
                                v313 = v316 = 64;
                                require(msg.data[v205 + 96] < msg.data.length - v205 - 31);
                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max);
                                require(32 + (v205 + msg.data[v205 + 96]) <= msg.data.length - msg.data[v205 + msg.data[v205 + 96]]);
                                require(msg.data[v205 + msg.data[v205 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v315 = v317 = new bytes[](msg.data[v205 + msg.data[v205 + 96]]);
                                require(!((v317 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v317 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v205 + msg.data[v205 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v317)), Panic(65)); // failed memory allocation (too much memory)
                                require(32 + (v205 + msg.data[v205 + 96]) + msg.data[v205 + msg.data[v205 + 96]] <= msg.data.length);
                                CALLDATACOPY(v317.data, 32 + (v205 + msg.data[v205 + 96]), msg.data[v205 + msg.data[v205 + 96]]);
                                v317[msg.data[v205 + msg.data[v205 + 96]]] = 0;
                                MEM[v317 + uint32(msg.data[v205 + 128] >> 208)] = v209;
                            }
                            require(!(address(msg.data[v205 + v313]) - msg.data[v205 + v313]));
                            v318 = msg.data[v205 + v313].call(MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x1d68 + 32:v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x1d68 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x1d68]], MEM[0:0]).value(v312).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v319 = v320 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v319 = new bytes[](RETURNDATASIZE());
                                require(!((v319 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v319 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v319)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v319.data, 0, RETURNDATASIZE());
                            }
                            if (!v318) {
                                v321 = new uint256[](MEM[v319]);
                                v322 = 0;
                                while (v322 < MEM[v319]) {
                                    MEM[v322 + v321.data] = MEM[v322 + (v319 + 32)];
                                    v322 += 32;
                                }
                                MEM[MEM[v319] + v321.data] = 0;
                                revert(v321, v209);
                            }
                        }
                    } else {
                        v323 = 0x2799(v169, this);
                        require(v323 - mapping_97[address(v169)] >= v180);
                        v324 = v325 = 84;
                        v326 = 0x2799(v169, this);
                        v327 = v328 = !v157;
                        if (bool(v157)) {
                            v327 = v329 = v326 - mapping_97[address(v169)] - v180 <= v183;
                        }
                        if (!v327) {
                            v330 = v331 = v326 - mapping_97[address(v169)] - v180 - v183;
                        } else {
                            v330 = 0;
                        }
                        if (bool(v157)) {
                            v330 = v332 = v157 * v330 / 10000;
                        }
                        v179 = v333 = v180 + v330;
                        if (!v333) {
                            // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                        } else {
                            v334 = 0x2e2f(v169);
                            if (!v334) {
                                0x2dbe(v169, address(v154 >> 96), v333);
                                // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                            } else {
                                v335 = address(v154 >> 96).call().value(v333).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v336 = v337 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v336 = new bytes[](RETURNDATASIZE());
                                    require(!((v336 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v336 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v336)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v336.data, 0, RETURNDATASIZE());
                                }
                                if (!v335) {
                                    v338 = new uint256[](MEM[v336]);
                                    v339 = 0;
                                    while (v339 < MEM[v336]) {
                                        MEM[v339 + v338.data] = MEM[v339 + (v336 + 32)];
                                        v339 += 32;
                                    }
                                    MEM[MEM[v336] + v338.data] = 0;
                                    revert(Error(v338));
                                } else {
                                    // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                                }
                            }
                        }
                    }
                } else {
                    v340 = 0x2799(v169, this);
                    v179 = v341 = v340 - mapping_97[address(v169)] - v183;
                    if (v341 < v180) {
                    }
                    v342 = 0x2799(v169, this);
                    v158 += 1;
                    require(v158 < varg8, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(msg.data[varg7 + (v158 << 5)] < msg.data.length - varg7 - 95);
                    v196 = v343 = varg7 + msg.data[varg7 + (v158 << 5)];
                    if (v342 - v179) {
                        v197 = v344 = 64;
                        v201 = v345 = 7061;
                        v199 = v346 = v343 + 32;
                        require(!(address(msg.data[v346]) - msg.data[v346]));
                        v203 = v347 = 0x2799(msg.data[v346], this);
                        require(msg.data[v343] < msg.data.length - v343 - 159);
                        v348 = v343 + msg.data[v343];
                        v349 = _SafeMul(v342 - v179, msg.data[v348 + 32]);
                        v350 = v351 = v349 / 10 ** 18;
                        require(!bool(!v351), SwapAmountCannotBeZero());
                        if (uint8(msg.data[v348 + 128] >> 248)) {
                            if (uint8(msg.data[v348 + 128] >> 248) - 1) {
                                if (uint8(msg.data[v348 + 128] >> 248) - 2) {
                                    if (uint8(msg.data[v348 + 128] >> 248) - 3) {
                                        if (uint8(msg.data[v348 + 128] >> 248) - 4) {
                                            require(!(5 - uint8(msg.data[v348 + 128] >> 248)), uint8(msg.data[v348 + 128] >> 248));
                                            MEM[MEM[64] + 32] = 96;
                                            require(!(address(msg.data[v348]) - msg.data[v348]));
                                            MEM[MEM[64] + 32 + 96] = address(msg.data[v348]);
                                            MEM[MEM[64] + 32 + 128] = msg.data[v348 + 32];
                                            require(!(address(msg.data[v348 + 64]) - msg.data[v348 + 64]));
                                            MEM[MEM[64] + 32 + 160] = address(msg.data[v348 + 64]);
                                            require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                            require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                            require(v348 + msg.data[v348 + 96] + 32 <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                            MEM[MEM[64] + 32 + 192] = 160;
                                            MEM[MEM[64] + 32 + (uint8.max + 1)] = msg.data[v348 + msg.data[v348 + 96]];
                                            CALLDATACOPY(MEM[64] + 32 + (uint8.max + 1) + 32, v348 + msg.data[v348 + 96] + 32, msg.data[v348 + msg.data[v348 + 96]]);
                                            MEM[MEM[64] + 32 + (uint8.max + 1) + msg.data[v348 + msg.data[v348 + 96]] + 32] = 0;
                                            MEM[MEM[64] + 32 + 224] = msg.data[v348 + 128];
                                            MEM[MEM[64] + 32 + 32] = address(v169);
                                            MEM[MEM[64] + 32 + 64] = v351;
                                            require(!((MEM[64] + ((msg.data[v348 + msg.data[v348 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((msg.data[v348 + msg.data[v348 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                            MEM[MEM[64] + 4] = 32;
                                            MEM[MEM[64] + 4 + 32] = (msg.data[v348 + msg.data[v348 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32;
                                            v352 = 0;
                                            while (v352 < (msg.data[v348 + msg.data[v348 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32) {
                                                MEM[v352 + (MEM[64] + 4 + 32 + 32)] = MEM[v352 + (MEM[64] + 32)];
                                                v352 += 32;
                                            }
                                            MEM[(msg.data[v348 + msg.data[v348 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] - 32 + (MEM[64] + 4 + 32 + 32)] = 0;
                                            v353 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + msg.data[v2c85V0x1b79 + msg.data[v2c85V0x1b79 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + uint8.max + 1 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 32 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (v353) {
                                                if (v353) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                    v354 = 0x32ab(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                                }
                                            }
                                        } else {
                                            require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                            require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                            require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                            if (uint32(msg.data[v348 + 128] >> 208) - uint32.max) {
                                                v350 = v355 = msg.data[32 + (v348 + msg.data[v348 + 96]) + uint32(msg.data[v348 + 128] >> 208) - 32];
                                                if (v355 < v351) {
                                                }
                                                v356 = this.code.size;
                                            }
                                            v357 = 0x2fd8(v169, v350, uint8(msg.data[v348 + 128] >> 240), address(msg.data[v348 + 128]));
                                            if (uint32(msg.data[v348 + 128] >> 208) == uint32.max) {
                                                v358 = v359 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v360 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                                require(!((v360 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v360 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v360)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v360.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                                v360[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                            } else {
                                                v358 = v361 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v360 = v362 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                                require(!((v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v362)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v362.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                                v362[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                                MEM[v362 + uint32(msg.data[v348 + 128] >> 208)] = v350;
                                            }
                                            require(!(address(msg.data[v348 + v358]) - msg.data[v348 + v358]));
                                            v363 = msg.data[v348 + v358].call(MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x12913 + 32:v295aV0x136d60x3fa5V0x3b380x33b0V0x12913 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x33b0V0x12913]], MEM[0:0]).value(v357).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v364 = v365 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v364 = new bytes[](RETURNDATASIZE());
                                                require(!((v364 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v364 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v364)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v364.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v363) {
                                                v366 = new uint256[](MEM[v364]);
                                                v367 = 0;
                                                while (v367 < MEM[v364]) {
                                                    MEM[v367 + v366.data] = MEM[v367 + (v364 + 32)];
                                                    v367 += 32;
                                                }
                                                MEM[MEM[v364] + v366.data] = 0;
                                                revert(v366, v350);
                                            }
                                        }
                                    } else {
                                        v368 = 0x2e2f(v169);
                                        if (!v368) {
                                            if (uint8(msg.data[v348 + 128] >> 240)) {
                                                if (uint8(msg.data[v348 + 128] >> 240) - 2) {
                                                    if (uint8(msg.data[v348 + 128] >> 240) - 1) {
                                                        if (uint8(msg.data[v348 + 128] >> 240) - 7) {
                                                            require(!(uint8(msg.data[v348 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v348 + 128] >> 240)));
                                                            0x36af(v169, address(0x22d473030f116ddee9f6b43ac78ba3));
                                                            require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                                            v369 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(v169), address(msg.data[v348 + 128]), address(v351), 0).gas(msg.gas);
                                                            if (v369) {
                                                                if (v369) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    require(0 >= 0);
                                                                    v370 = this.code.size;
                                                                }
                                                            }
                                                        } else {
                                                            0x36af(v169, address(msg.data[v348 + 128]));
                                                        }
                                                    } else {
                                                        0x2dbe(v169, address(msg.data[v348 + 128]), v351);
                                                    }
                                                } else {
                                                    0x37f9(v169, address(msg.data[v348 + 128]), v351);
                                                }
                                                v371 = this.code.size;
                                            }
                                        }
                                        require(!(address(msg.data[v348 + 64]) - msg.data[v348 + 64]));
                                        v372, /* uint256 */ v373 = address(0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b).deposit(address(v169), address(msg.data[v348 + 64])).gas(msg.gas);
                                        if (v372) {
                                            if (v372) {
                                                if (32 > RETURNDATASIZE()) {
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    v374 = v375 = MEM[64] + RETURNDATASIZE();
                                                } else {
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + 32;
                                                    v374 = v376 = MEM[64] + 32;
                                                }
                                                require(v374 - MEM[64] >= 32);
                                            }
                                            require(!(address(msg.data[v348 + 64]) - msg.data[v348 + 64]));
                                            require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                            require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                            require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                            CALLDATACOPY(MEM[64], 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                            MEM[MEM[64] + msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                            v377 = msg.data[v348 + 64].call(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[v2c85V0x1b79 + msg.data[v2c85V0x1b79 + 96]] - MEM[64]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v378 = v379 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v378 = new bytes[](RETURNDATASIZE());
                                                require(!((v378 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v378 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v378)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v378.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v377) {
                                                v380 = new uint256[](MEM[v378]);
                                                v381 = 0;
                                                while (v381 < MEM[v378]) {
                                                    MEM[v381 + v380.data] = MEM[v381 + (v378 + 32)];
                                                    v381 += 32;
                                                }
                                                MEM[MEM[v378] + v380.data] = 0;
                                                revert(v380, v351);
                                            }
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (uint8(msg.data[v348 + 128] >> 240) - 3) {
                                        if (uint8(msg.data[v348 + 128] >> 240) - 4) {
                                            require(5 == uint8(msg.data[v348 + 128] >> 240), uint8(msg.data[v348 + 128] >> 240));
                                            v382 = 0x26d8(this);
                                            if (uint32(msg.data[v348 + 128] >> 208) == uint32.max) {
                                                v383 = v384 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                v385 = msg.data[v348 + msg.data[v348 + 96]];
                                                require(v385 <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v385);
                                                require(v385 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v386 = new bytes[](v385);
                                                require(!((v386 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v385) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v386 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v385) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v386)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + v385 <= msg.data.length);
                                                CALLDATACOPY(v386.data, 32 + (v348 + msg.data[v348 + 96]), v385);
                                                v386[v385] = 0;
                                            } else {
                                                v383 = v387 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                v388 = msg.data[v348 + msg.data[v348 + 96]];
                                                require(v388 <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v388);
                                                require(v388 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v386 = v389 = new bytes[](v388);
                                                require(!((v389 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v388) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v389 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v388) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v389)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + v388 <= msg.data.length);
                                                CALLDATACOPY(v389.data, 32 + (v348 + msg.data[v348 + 96]), v388);
                                                v389[v388] = 0;
                                                MEM[v389 + uint32(msg.data[v348 + 128] >> 208)] = v351;
                                            }
                                            require(!(address(msg.data[v348 + v383]) - msg.data[v348 + v383]));
                                            v390 = msg.data[v348 + v383].call(MEM[v295aV0x13644V0x1349aV0x3427V0x12913 + 32:v295aV0x13644V0x1349aV0x3427V0x12913 + 32 + MEM[v295aV0x13644V0x1349aV0x3427V0x12913]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v391 = v392 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v391 = new bytes[](RETURNDATASIZE());
                                                require(!((v391 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v391 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v391)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v391.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v390) {
                                                v393 = new uint256[](MEM[v391]);
                                                v394 = 0;
                                                while (v394 < MEM[v391]) {
                                                    MEM[v394 + v393.data] = MEM[v394 + (v391 + 32)];
                                                    v394 += 32;
                                                }
                                                MEM[MEM[v391] + v393.data] = 0;
                                                revert(v393, v351);
                                            } else {
                                                v395 = 15591;
                                                v396 = v397 = 0x26d8(this);
                                            }
                                        } else {
                                            v398 = 0x2fc1(v169, v351, address(msg.data[v348 + 128]));
                                            v382 = v399 = 0x26d8(this);
                                            if (uint32(msg.data[v348 + 128] >> 208) == uint32.max) {
                                                v400 = v401 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                v402 = msg.data[v348 + msg.data[v348 + 96]];
                                                require(v402 <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v402);
                                                require(v402 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v403 = new bytes[](v402);
                                                require(!((v403 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v402) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v403 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v402) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v403)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + v402 <= msg.data.length);
                                                CALLDATACOPY(v403.data, 32 + (v348 + msg.data[v348 + 96]), v402);
                                                v403[v402] = 0;
                                            } else {
                                                v400 = v404 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                v405 = msg.data[v348 + msg.data[v348 + 96]];
                                                require(v405 <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v405);
                                                require(v405 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v403 = v406 = new bytes[](v405);
                                                require(!((v406 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v405) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v406 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v405) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v406)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + v405 <= msg.data.length);
                                                CALLDATACOPY(v406.data, 32 + (v348 + msg.data[v348 + 96]), v405);
                                                v406[v405] = 0;
                                                MEM[v406 + uint32(msg.data[v348 + 128] >> 208)] = v351;
                                            }
                                            require(!(address(msg.data[v348 + v400]) - msg.data[v348 + v400]));
                                            v407 = msg.data[v348 + v400].call(MEM[v295aV0x13644V0x13402V0x3427V0x12913 + 32:v295aV0x13644V0x13402V0x3427V0x12913 + 32 + MEM[v295aV0x13644V0x13402V0x3427V0x12913]], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v408 = v409 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v408 = new bytes[](RETURNDATASIZE());
                                                require(!((v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v408)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v408.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v407) {
                                                v410 = new uint256[](MEM[v408]);
                                                v411 = 0;
                                                while (v411 < MEM[v408]) {
                                                    MEM[v411 + v410.data] = MEM[v411 + (v408 + 32)];
                                                    v411 += 32;
                                                }
                                                MEM[MEM[v408] + v410.data] = 0;
                                                revert(v410, v351);
                                            } else {
                                                v395 = v412 = 15591;
                                                v396 = v413 = 0x26d8(this);
                                            }
                                        }
                                        require(v396 > v382, v382, v396);
                                        v414 = _SafeSub(v396, v382);
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                        v415 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v414).gas(msg.gas);
                                        if (v415) {
                                            if (v415) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                            }
                                        }
                                    } else {
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                        v416 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v351).gas(msg.gas);
                                        if (v416) {
                                            if (v416) {
                                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64];
                                                require(0 >= 0);
                                                v417 = this.code.size;
                                            }
                                            if (uint32(msg.data[v348 + 128] >> 208) == uint32.max) {
                                                v418 = v419 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v420 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                                require(!((v420 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v420 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v420)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v420.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                                v420[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                            } else {
                                                v418 = v421 = 64;
                                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v420 = v422 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                                require(!((v422 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v422 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v422)), Panic(65)); // failed memory allocation (too much memory)
                                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                                CALLDATACOPY(v422.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                                v422[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                                MEM[v422 + uint32(msg.data[v348 + 128] >> 208)] = v351;
                                            }
                                            require(!(address(msg.data[v348 + v418]) - msg.data[v348 + v418]));
                                            v423 = msg.data[v348 + v418].call(MEM[v295aV0x136d60x3b7cV0x3427V0x12913 + 32:v295aV0x136d60x3b7cV0x3427V0x12913 + 32 + MEM[v295aV0x136d60x3b7cV0x3427V0x12913]], MEM[0:0]).value(v351).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v424 = v425 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v424 = new bytes[](RETURNDATASIZE());
                                                require(!((v424 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v424 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v424)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v424.data, 0, RETURNDATASIZE());
                                            }
                                            if (!v423) {
                                                v426 = new uint256[](MEM[v424]);
                                                v427 = 0;
                                                while (v427 < MEM[v424]) {
                                                    MEM[v427 + v426.data] = MEM[v427 + (v424 + 32)];
                                                    v427 += 32;
                                                }
                                                MEM[MEM[v424] + v426.data] = 0;
                                                revert(v426, v351);
                                            }
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                }
                            } else {
                                if (0 == (uint32(msg.data[v348 + 128] >> 208) != uint32.max)) {
                                    require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                    v428 = msg.data[v348 + msg.data[v348 + 96]];
                                    require(v428 <= uint64.max);
                                    require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v428);
                                    require(v428 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v429 = new bytes[](v428);
                                    require(!((v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v428) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v428) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v429)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v348 + msg.data[v348 + 96]) + v428 <= msg.data.length);
                                    CALLDATACOPY(v429.data, 32 + (v348 + msg.data[v348 + 96]), v428);
                                    v429[v428] = 0;
                                    require(!(address(msg.data[v348 + 64]) - msg.data[v348 + 64]));
                                    v430 = v431 = msg.data[v348 + 64].staticcall(MEM[v295aV0x135b2V0x3413V0x12913.data:v295aV0x135b2V0x3413V0x12913.data + v295aV0x135b2V0x3413V0x12913.length], MEM[0:0]).gas(msg.gas);
                                    v432 = v433 = 16098;
                                    if (!RETURNDATASIZE()) {
                                        v434 = v435 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v434 = new bytes[](RETURNDATASIZE());
                                        require(!((v434 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v434 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v434)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v434.data, 0, RETURNDATASIZE());
                                    }
                                } else {
                                    require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                    v436 = msg.data[v348 + msg.data[v348 + 96]];
                                    require(v436 <= uint64.max);
                                    require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - v436);
                                    require(v436 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v437 = new bytes[](v436);
                                    require(!((v437 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v436) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v437 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v436) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v437)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v348 + msg.data[v348 + 96]) + v436 <= msg.data.length);
                                    CALLDATACOPY(v437.data, 32 + (v348 + msg.data[v348 + 96]), v436);
                                    v437[v436] = 0;
                                    MEM[v437 + uint32(msg.data[v348 + 128] >> 208)] = v351;
                                    require(!(address(msg.data[v348 + 64]) - msg.data[v348 + 64]));
                                    v430 = v438 = msg.data[v348 + 64].staticcall(MEM[v295aV0x400cV0x3413V0x12913.data:v295aV0x400cV0x3413V0x12913.data + v295aV0x400cV0x3413V0x12913.length], MEM[0:0]).gas(msg.gas);
                                    v432 = v439 = 16098;
                                    if (!RETURNDATASIZE()) {
                                        v434 = v440 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v434 = v441 = new bytes[](RETURNDATASIZE());
                                        require(!((v441 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v441 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v441)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v441.data, 0, RETURNDATASIZE());
                                    }
                                }
                                0x3d8d(v430, v434, v351);
                                require(v434 + MEM[v434] + 32 - (v434 + 32) >= 128);
                                require(!(address(MEM[v434 + 32]) - MEM[v434 + 32]));
                                require(!(address(MEM[v434 + 32 + 32]) - MEM[v434 + 32 + 32]));
                                v442 = v443 = MEM[v434 + 32 + 64];
                                require(MEM[v434 + 32 + 96] <= uint64.max);
                                v444 = 0x32ab(v434 + 32 + MEM[v434 + 32 + 96], v434 + MEM[v434] + 32);
                                v445 = 0x2e2f(v169);
                                if (!v445) {
                                    if (uint8(msg.data[v348 + 128] >> 240)) {
                                        if (uint8(msg.data[v348 + 128] >> 240) - 2) {
                                            if (uint8(msg.data[v348 + 128] >> 240) - 1) {
                                                if (uint8(msg.data[v348 + 128] >> 240) - 7) {
                                                    require(!(uint8(msg.data[v348 + 128] >> 240) - 8), EnumOutOfRangeValue(0, uint8(msg.data[v348 + 128] >> 240)));
                                                    0x36af(v169, address(0x22d473030f116ddee9f6b43ac78ba3));
                                                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                                                    v446 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(v169), address(MEM[v434 + 32 + 32]), address(v443), 0).gas(msg.gas);
                                                    if (!v446) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (v446) {
                                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64];
                                                        require(0 >= 0);
                                                        v447 = this.code.size;
                                                    }
                                                } else {
                                                    0x36af(v169, address(MEM[v434 + 32 + 32]));
                                                }
                                            } else {
                                                0x2dbe(v169, address(MEM[v434 + 32 + 32]), v443);
                                            }
                                        } else {
                                            0x37f9(v169, address(MEM[v434 + 32 + 32]), v443);
                                        }
                                        v448 = this.code.size;
                                    }
                                    v442 = 0;
                                }
                                v449 = address(MEM[v434 + 32]).call(MEM[v3e14_0x0V0x3413V0x12913.data:v3e14_0x0V0x3413V0x12913.data + v3e14_0x0V0x3413V0x12913.length], MEM[0:0]).value(v442).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v450 = v451 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v450 = new bytes[](RETURNDATASIZE());
                                    require(!((v450 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v450 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v450)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v450.data, 0, RETURNDATASIZE());
                                }
                                if (!v449) {
                                    v452 = new uint256[](MEM[v450]);
                                    v453 = 0;
                                    while (v453 < MEM[v450]) {
                                        MEM[v453 + v452.data] = MEM[v453 + (v450 + 32)];
                                        v453 += 32;
                                    }
                                    MEM[MEM[v450] + v452.data] = 0;
                                    revert(v452, v351);
                                }
                            }
                        } else {
                            v454 = 0x2fd8(v169, v351, uint8(msg.data[v348 + 128] >> 240), address(msg.data[v348 + 128]));
                            if (uint32(msg.data[v348 + 128] >> 208) == uint32.max) {
                                v455 = v456 = 64;
                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v457 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                require(!((v457 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v457 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v457)), Panic(65)); // failed memory allocation (too much memory)
                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                CALLDATACOPY(v457.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                v457[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                            } else {
                                v455 = v458 = 64;
                                require(msg.data[v348 + 96] < msg.data.length - v348 - 31);
                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max);
                                require(32 + (v348 + msg.data[v348 + 96]) <= msg.data.length - msg.data[v348 + msg.data[v348 + 96]]);
                                require(msg.data[v348 + msg.data[v348 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v457 = v459 = new bytes[](msg.data[v348 + msg.data[v348 + 96]]);
                                require(!((v459 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v459 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v348 + msg.data[v348 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v459)), Panic(65)); // failed memory allocation (too much memory)
                                require(32 + (v348 + msg.data[v348 + 96]) + msg.data[v348 + msg.data[v348 + 96]] <= msg.data.length);
                                CALLDATACOPY(v459.data, 32 + (v348 + msg.data[v348 + 96]), msg.data[v348 + msg.data[v348 + 96]]);
                                v459[msg.data[v348 + msg.data[v348 + 96]]] = 0;
                                MEM[v459 + uint32(msg.data[v348 + 128] >> 208)] = v351;
                            }
                            require(!(address(msg.data[v348 + v455]) - msg.data[v348 + v455]));
                            v460 = msg.data[v348 + v455].call(MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12913 + 32:v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12913 + 32 + MEM[v295aV0x136d60x3fa5V0x3b380x3b0dV0x33ffV0x12913]], MEM[0:0]).value(v454).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v461 = v462 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v461 = new bytes[](RETURNDATASIZE());
                                require(!((v461 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v461 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v461)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v461.data, 0, RETURNDATASIZE());
                            }
                            if (!v460) {
                                v463 = new uint256[](MEM[v461]);
                                v464 = 0;
                                while (v464 < MEM[v461]) {
                                    MEM[v464 + v463.data] = MEM[v464 + (v461 + 32)];
                                    v464 += 32;
                                }
                                MEM[MEM[v461] + v463.data] = 0;
                                revert(v463, v351);
                            }
                        }
                    }
                }
                v324 = v465 = 84;
                0x28f4(v169, address(v154 >> 96), v179);
                require(!(address(msg.data[v199]) - msg.data[v199]));
                v466 = 0x2799(msg.data[v199], this);
                require(msg.data[v196 + v197] <= v466 - v203);
                v467 = this.code.size;
                require(msg.data[v196 + v197] <= v466 - v203);
                v324 = v468 = 84;
                0x28f4(v169, address(v154 >> 96), v179);
            } else {
                v324 = v469 = 84;
                v470 = 0x2799(v169, this);
                v179 = v471 = v470 - mapping_97[address(v169)] - v183;
                if (v471 < v180) {
                }
                if (v179) {
                    v472 = 0x2e2f(v169);
                    if (!v472) {
                        0x2dbe(v169, address(v154 >> 96), v179);
                        // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                    } else {
                        v473 = address(v154 >> 96).call().value(v179).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v474 = v475 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v474 = new bytes[](RETURNDATASIZE());
                            require(!((v474 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v474 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v474)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v474.data, 0, RETURNDATASIZE());
                        }
                        if (!v473) {
                            v476 = new uint256[](MEM[v474]);
                            v477 = 0;
                            while (v477 < MEM[v474]) {
                                MEM[v477 + v476.data] = MEM[v477 + (v474 + 32)];
                                v477 += 32;
                            }
                            MEM[MEM[v474] + v476.data] = 0;
                            revert(Error(v476));
                        } else {
                            // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
        } else {
            v478 = 0x2799(v169, this);
            require(v478 - mapping_97[address(v169)] >= v180);
            v324 = v479 = 84;
            v480 = 0x2799(v169, this);
            if (v183 + v180 <= v480 - mapping_97[address(v169)]) {
                v481 = 0x2799(v169, this);
                v179 = v482 = v481 - mapping_97[address(v169)] - v183;
            }
            if (!v179) {
                // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
            } else {
                v483 = 0x2e2f(v169);
                if (!v483) {
                    0x2dbe(v169, address(v154 >> 96), v179);
                    // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                } else {
                    v484 = address(v154 >> 96).call().value(v179).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v485 = v486 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v485 = new bytes[](RETURNDATASIZE());
                        require(!((v485 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v485 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v485)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v485.data, 0, RETURNDATASIZE());
                    }
                    if (!v484) {
                        v487 = new uint256[](MEM[v485]);
                        v488 = 0;
                        while (v488 < MEM[v485]) {
                            MEM[v488 + v487.data] = MEM[v488 + (v485 + 32)];
                            v488 += 32;
                        }
                        MEM[MEM[v485] + v487.data] = 0;
                        revert(Error(v487));
                    } else {
                        // Unknown jump to Block 0x19cf. Refer to 3-address code (TAC);
                    }
                }
            }
        }
        if (v162) {
            emit NativeTransfer(address(v154 >> 96), v179);
            v489 = this.code.size;
        }
        v160 = v160 + v324;
        continue;
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    }
    require(!(v158 - varg8));
    v490 = v491 = 0;
    while (v490 < varg10) {
        require(v490 <= v490 + 20, Panic(17)); // arithmetic overflow or underflow
        v492, v493 = _SafeSub(varg9, varg10, v490, v490 + 20);
        v494 = bytes20(msg.data[v493]);
        if (v492 < 20) {
            v494 = v495 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v492 << 3) & msg.data[v493]);
        }
        v496 = 0x2799(v494 >> 96, this);
        0x289b(v494 >> 96, v496);
        v490 = v490 + 20;
        require(v490 <= v490, Panic(17)); // arithmetic overflow or underflow
    }
    return ;
}

function MAINTAINER_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95;
}

function 0xf38d9f13(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v1 = varg1.data;
    require((varg1.length << 6) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    v2 = varg2.data;
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    v3 = varg3.data;
    require((varg3.length << 5) + (4 + varg3) + 32 <= msg.data.length);
    require(bool(varg4) - varg4, Error('Unimplemented'));
    revert();
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x2581(newOwner);
    if (_transferOwnership[tx.origin]) {
        _transferOwnership[tx.origin] = 0;
        emit RoleRevoked(0, tx.origin, msg.sender);
        exit;
    } else {
        exit;
    }
}

function setTreasury(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    _treasury = varg0;
    return ;
}

function removeMaintainer(address removedMaintainer) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    if (_renounceRole[removedMaintainer]) {
        _renounceRole[removedMaintainer] = 0;
        emit RoleRevoked(0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95, removedMaintainer, msg.sender);
        exit;
    } else {
        exit;
    }
}

function revokeRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x4f8(_getRoleAdmin[role].field1);
    0x262e(role, account);
}

function swapY2XCallback(uint256 x, uint256 y, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x2dbe(data.word1, msg.sender, y);
}

function DEFAULT_ADMIN_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function 0x9294d675(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 6) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require((varg4.length << 5) + (4 + varg4) + 32 <= msg.data.length);
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(4 + varg5 + varg5.length + 32 <= msg.data.length);
    0x17d3(varg0.data, varg0.length, varg1.data, varg1.length, varg2.data, varg2.length, varg3, varg4.data, varg4.length, varg5.data, varg5.length);
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x2dbe(data.word1, msg.sender, amountToPay);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), NotPoolManager());
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 96);
    require(rawData.word1 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word1) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(msg.data[4 + rawData + 32 + rawData.word1]) - msg.data[4 + rawData + 32 + rawData.word1]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word1];
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word1 + 32];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word1 + 64]) - msg.data[4 + rawData + 32 + rawData.word1 + 64]));
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word1 + 64];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 96] <= uint64.max);
    require(4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    v2 = msg.data[4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96]];
    require(v2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](v2);
    require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 32 + v2 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v3.data, 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 32, v2);
    v3[v2] = 0;
    v1.word3 = v3;
    v1.word4 = msg.data[4 + rawData + 32 + rawData.word1 + 128];
    v4 = rawData.word2;
    require(!(address(v4) - v4));
    if (0 == (address(v1.word2) == 1)) {
        if (address(v1.word2) == 2) {
            v1.word0 = 0;
        }
    } else {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(rawData.word3).gas(msg.gas);
        if (v5) {
            if (v5) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                v6 = this.code.size;
            }
            v4 = v7 = 0;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    v1.word2 = address(0x4444c5dc75cb358380d2e3de08a90);
    v8 = 0x2a61(rawData.word3);
    if (uint32(v1.word4 >> 208) == uint32.max) {
        v9 = v10 = v1.word3;
    } else {
        v9 = v11 = v1.word3;
        MEM[v11 + uint32(v1.word4 >> 208)] = v8;
    }
    v12, /* uint256 */ v13 = address(v1.word2).call(MEM[v2ea5_0x3 + 32:v2ea5_0x3 + 32 + MEM[v2ea5_0x3]], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v14 = v15 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v14 = v16 = new bytes[](RETURNDATASIZE());
        require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v16.data;
        RETURNDATACOPY(v13, 0, RETURNDATASIZE());
    }
    if (!v12) {
        v17 = new uint256[](MEM[v14]);
        v18 = 0;
        while (v18 < MEM[v14]) {
            MEM[v18 + v17.data] = MEM[v18 + (v14 + 32)];
            v18 += 32;
        }
        MEM[MEM[v14] + v17.data] = 0;
        revert(v17, v8);
    } else {
        v19 = 0x2f0f(0x4444c5dc75cb358380d2e3de08a90, this, address(v4));
        require(v19 < 0);
        v20 = v21 = 0x2a61(v19);
        require(v21 <= rawData.word3, v21, rawData.word3);
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v22 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v4)).gas(msg.gas);
        if (v22) {
            if (v22) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                v23 = this.code.size;
            }
            v24 = 0x2e2f(v4);
            if (!v24) {
                0x2dbe(v4, address(0x4444c5dc75cb358380d2e3de08a90), v21);
                v20 = v25 = 0;
            }
            v26, /* uint256 */ v27 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v20).gas(msg.gas);
            if (v26) {
                if (v26) {
                    v28 = v29 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v28 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v28 - MEM[64] >= 32);
                    v30 = this.code.size;
                }
                v31, v32 = address(0x4444c5dc75cb358380d2e3de08a90).exttload(keccak256(address(this), address(v1.word0))).gas(msg.gas);
                if (v31) {
                    v32 = 0;
                    if (v31) {
                        v33 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v33 = v34 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v33 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v33 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v33 - MEM[64] >= 32);
                    }
                    require(v32 > 0);
                    require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
                    v35 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v1.word0), this, v32).gas(msg.gas);
                    if (v35) {
                        if (v35) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            v36 = this.code.size;
                        }
                        if (address(v1.word2) == 2) {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                            v37 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v32).gas(msg.gas);
                            if (v37) {
                                if (v37) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                    v38 = this.code.size;
                                }
                                v1.word0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                v39 = this.code.size;
                            }
                        }
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        v40 = new uint256[](0);
                        v41 = 0;
                        while (v41 < 0) {
                            MEM[v41 + v40.data] = MEM[v41 + (MEM[64] + 32)];
                            v41 += 32;
                        }
                        MEM[v40.data] = 0;
                        return v40;
                    }
                }
            }
        }
    }
}

function hasRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    return _getRoleAdmin[role].field0[account];
}

function renounceRole(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x262e(role, tx.origin);
}

function initialize() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = !_initialize;
    if (v1) {
        v0 = v2 = stor_0_0_0 < 1;
    }
    if (!v0) {
        v0 = v3 = !this.code.size;
        if (v3) {
            v0 = v4 = 1 == stor_0_0_0;
            v5 = this.code.size;
        }
        v6 = this.code.size;
    }
    require(v0, Error('Initializable: contract is already initialized'));
    stor_0_0_0 = 1;
    if (v1) {
        _initialize = 1;
    }
    require(_initialize, Error('Initializable: contract is not initializing'));
    0x2581(tx.origin);
    0x24b2(tx.origin);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    _treasury = 0xf00000003d31d4ab730a8e269ae547f8f76996ba;
    if (v1) {
        _initialize = 0;
        emit Initialized(1);
        exit;
    } else {
        exit;
    }
}

function 0x6bbc912c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    v0 = v1 = 0;
    while (1) {
        if (v0 < varg1.length) {
            v2 = 0x155b(varg2.data, varg2.length, v0);
            if (msg.data[v2]) {
                v3 = 0x155b(varg2.data, varg2.length, v0);
                v4 = v5 = msg.data[v3];
            } else {
                v6 = 0x155b(varg1.data, varg1.length, v0);
                require(!(address(msg.data[v6]) - msg.data[v6]));
                v4 = v7 = 0x2799(msg.data[v6], this);
            }
            if (varg3 - v0) {
                v8 = v9 = 1;
                v10 = 0x155b(varg1.data, varg1.length, v0);
                require(!(address(msg.data[v10]) - msg.data[v10]));
                0x28f4(msg.data[v10], varg0, v4);
            } else {
                v11 = 0x155b(varg1.data, varg1.length, v0);
                require(!(address(msg.data[v11]) - msg.data[v11]));
                require((address(msg.data[v11])).code.size);
                v12 = address(msg.data[v11]).withdraw(v4).gas(msg.gas);
                require(v12, v13, RETURNDATASIZE());
                v8 = v14 = 1;
                if (v12) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                    v15 = this.code.size;
                }
                if (v4) {
                    v16, /* uint256 */ v13, /* uint256 */ v17 = address(varg0).call().value(v4).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v18 = v19 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v18 = v20 = new bytes[](RETURNDATASIZE());
                        require(!((v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
                        v17 = v20.data;
                        RETURNDATACOPY(v17, 0, RETURNDATASIZE());
                    }
                    if (!v16) {
                        v21 = new uint256[](MEM[v18]);
                        v22 = 0;
                        while (v22 < MEM[v18]) {
                            MEM[v22 + v21.data] = MEM[v22 + (v18 + 32)];
                            v22 += 32;
                        }
                        MEM[MEM[v18] + v21.data] = 0;
                        revert(Error(v21));
                    }
                }
            }
            v0 = v0 + v8;
            continue;
        } else {
            exit;
        }
    }
}

function addMaintainer(address addedMaintainer) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x24b2(addedMaintainer);
}

function maverickV2SwapCallback(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    v0 = varg2.data;
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    0x2dbe(varg0, msg.sender, varg1);
}

function treasury() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _treasury;
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    if (1 == amount0Delta > 0) {
        v1, v2 = msg.sender.token0().gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v3 = msg.sender.token0().gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
    } else {
        v4, v2 = msg.sender.token0().gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        v5 = msg.sender.token0().gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
    }
    v6 = new bytes[](68);
    MEM[v6.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v6 + 36] = msg.sender;
    MEM[v6 + 68] = v7;
    require(!((v6 + 128 > uint64.max) | (v6 + 128 < v6)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v6.length;
    v9 = v6.data;
    v10, /* uint256 */ v11 = address(v2).transfer(msg.sender, v7).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v12 = v13 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new bytes[](RETURNDATASIZE());
        require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        v11 = v12.data;
        RETURNDATACOPY(v11, 0, RETURNDATASIZE());
    }
    require(v10, Error('SafeERC20: low-level call failed'));
    if (MEM[v12]) {
        require(v12 + MEM[v12] + 32 - (v12 + 32) >= 32);
        require(!(bool(MEM[v12 + 32]) - MEM[v12 + 32]));
        require(MEM[v12 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
    }
}

function renounceRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(account - msg.sender), Error('AccessControl: can only renounce roles for self'));
    0x262e(role, account);
}

function grantRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x4f8(_getRoleAdmin[role].field1);
    if (!_getRoleAdmin[role].field0[account]) {
        _getRoleAdmin[role].field0[account] = 1;
        emit RoleGranted(role, account, msg.sender);
        exit;
    } else {
        exit;
    }
}

function getRoleAdmin(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _getRoleAdmin[role].field1;
}

function supportsInterface(bytes4 interfaceId) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = interfaceId == 0x7965db0b00000000000000000000000000000000000000000000000000000000;
    if (interfaceId != 0x7965db0b00000000000000000000000000000000000000000000000000000000) {
        v0 = v2 = interfaceId == 0x1ffc9a700000000000000000000000000000000000000000000000000000000;
        v3 = this.code.size;
    }
    return bool(v0);
}

function 0x24b2(address varg0) private { 
    if (!_renounceRole[varg0]) {
        _renounceRole[varg0] = 1;
        emit RoleGranted(0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95, varg0, msg.sender);
        return ;
    } else {
        return ;
    }
}

function 0x2581(address varg0) private { 
    if (!_transferOwnership[varg0]) {
        _transferOwnership[varg0] = 1;
        emit RoleGranted(0, varg0, msg.sender);
        return ;
    } else {
        return ;
    }
}

function 0x262e(uint256 varg0, address varg1) private { 
    if (_getRoleAdmin[varg0].field0[varg1]) {
        _getRoleAdmin[varg0].field0[varg1] = 0;
        emit RoleRevoked(varg0, varg1, msg.sender);
        return ;
    } else {
        return ;
    }
}

function 0x26d8(uint256 varg0) private { 
    v0 = this.code.size;
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v1, /* uint256 */ v2 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee.balanceOf(address(varg0)).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        if (v1) {
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
            return v2;
        } else {
            return 0;
        }
    } else {
        return varg0.balance;
    }
}

function 0x2799(uint256 varg0, uint256 varg1) private { 
    v0 = 0x2e2f(varg0);
    if (!v0) {
        v1, /* uint256 */ v2 = address(varg0).balanceOf(address(varg1)).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        if (v1) {
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
            return v2;
        } else {
            return 0;
        }
    } else {
        return varg1.balance;
    }
}

function 0x289b(uint256 varg0, uint256 varg1) private { 
    if (!varg1) {
        return ;
    } else {
        v0 = 0x2e2f(varg0);
        if (!v0) {
            0x2dbe(varg0, 0xf00000003d31d4ab730a8e269ae547f8f76996ba, varg1);
            return ;
        } else {
            v1, /* uint256 */ v2 = 0xf00000003d31d4ab730a8e269ae547f8f76996ba.call().value(varg1).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v3 = v4 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v3 = v5 = new bytes[](RETURNDATASIZE());
                require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
                v2 = v5.data;
                RETURNDATACOPY(v2, 0, RETURNDATASIZE());
            }
            if (!v1) {
                v6 = new uint256[](MEM[v3]);
                v7 = 0;
                while (v7 < MEM[v3]) {
                    MEM[v7 + v6.data] = MEM[v7 + (v3 + 32)];
                    v7 += 32;
                }
                MEM[MEM[v3] + v6.data] = 0;
                revert(Error(v6));
            } else {
                return ;
            }
        }
    }
}

function 0x28f4(uint256 varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        v0 = 0x2e2f(varg0);
        if (!v0) {
            0x2dbe(varg0, varg1, varg2);
            return ;
        } else {
            v1, /* uint256 */ v2 = varg1.call().value(varg2).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v3 = v4 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v3 = v5 = new bytes[](RETURNDATASIZE());
                require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
                v2 = v5.data;
                RETURNDATACOPY(v2, 0, RETURNDATASIZE());
            }
            if (!v1) {
                v6 = new uint256[](MEM[v3]);
                v7 = 0;
                while (v7 < MEM[v3]) {
                    MEM[v7 + v6.data] = MEM[v7 + (v3 + 32)];
                    v7 += 32;
                }
                MEM[MEM[v3] + v6.data] = 0;
                revert(Error(v6));
            } else {
                return ;
            }
        }
    }
}

function 0x2a61(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x2b0b(uint256 varg0) private { 
    require(varg0 <= varg0 + 20, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 20;
}

function 0x2b19(uint256 varg0) private { 
    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 2;
}

function 0x2b27(uint256 varg0) private { 
    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x2c9f(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0;
}

function 0x2cb8(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2dbe(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v0.data;
    v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3, Error('SafeERC20: low-level call failed'));
    if (MEM[v5]) {
        require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
        require(!(bool(MEM[v5 + 32]) - MEM[v5 + 32]));
        require(MEM[v5 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
    }
    return ;
}

function 0x2e2f(address varg0) private { 
    if (bool(varg0)) {
        return varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    } else {
        return !varg0;
    }
}

function 0x2f0f(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg0.exttload(keccak256(varg1, varg2)).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v3 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
        return v1;
    } else {
        return 0;
    }
}

function 0x2fc1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x2e2f(varg0);
    if (v0) {
        return varg1;
    } else {
        0x37f9(varg0, varg2, varg1);
        return 0;
    }
}

function 0x2fd8(uint256 varg0, uint256 varg1, uint8 varg2, uint256 varg3) private { 
    v0 = 0x2e2f(varg0);
    if (v0) {
        return varg1;
    } else {
        v1 = varg2;
        if (v1) {
            if (v1 - 2) {
                if (v1 - 1) {
                    if (v1 - 7) {
                        require(!(v1 - 8), EnumOutOfRangeValue(0, v1));
                        0x36af(varg0, address(0x22d473030f116ddee9f6b43ac78ba3));
                        require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                        v2 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(varg0), address(varg3), address(varg1), 0).gas(msg.gas);
                        require(v2, MEM[64], RETURNDATASIZE());
                        if (v2) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            v3 = this.code.size;
                        }
                    } else {
                        0x36af(varg0, varg3);
                    }
                } else {
                    0x2dbe(varg0, varg3, varg1);
                }
            } else {
                0x37f9(varg0, varg3, varg1);
            }
            v4 = this.code.size;
        }
        return 0;
    }
}

function 0x3141(uint256 varg0) private { 
    require(!((varg0 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 << 1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x32ab(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    v2 = 0;
    while (v2 < v0) {
        v1[v2] = MEM[v2 + (varg0 + 32)];
        v2 += 32;
    }
    v1[v0] = 0;
    return v1;
}

function 0x36af(address varg0, address varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, uint256.max).gas(msg.gas);
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
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
            v9 = this.code.size;
        }
        v10 = this.code.size;
    }
    if (v2) {
        v11 = v12 = !varg0.code.size;
        // Unknown jump to Block 0x375c0x36af. Refer to 3-address code (TAC);
    } else {
        v11 = !v2;
    }
    if (v11) {
        v13 = new bytes[](68);
        MEM[v13.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = varg1;
        MEM[v13 + 68] = 0;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v13.data;
        v16, /* uint256 */ v17 = varg0.approve(varg1, 0).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
        require(v16, Error('SafeERC20: low-level call failed'));
        if (MEM[v18]) {
            require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
            require(!(bool(MEM[v18 + 32]) - MEM[v18 + 32]));
            require(MEM[v18 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v20 = v0.length;
        v21 = v0.data;
        v22, /* uint256 */ v23 = varg0.approve(varg1, uint256.max).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v24 = v25 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v24 = new bytes[](RETURNDATASIZE());
            require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
            v23 = v24.data;
            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
        }
        require(v22, Error('SafeERC20: low-level call failed'));
        if (MEM[v24]) {
            require(v24 + MEM[v24] + 32 - (v24 + 32) >= 32);
            require(!(bool(MEM[v24 + 32]) - MEM[v24 + 32]));
            require(MEM[v24 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        return ;
    } else {
        return ;
    }
}

function 0x37f9(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, varg2).gas(msg.gas);
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
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
            v9 = this.code.size;
        }
        v10 = this.code.size;
    }
    if (v2) {
        v11 = v12 = !varg0.code.size;
        // Unknown jump to Block 0x375c0x37f9. Refer to 3-address code (TAC);
    } else {
        v11 = !v2;
    }
    if (v11) {
        v13 = new bytes[](68);
        MEM[v13.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = varg1;
        MEM[v13 + 68] = 0;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v13.data;
        v16, /* uint256 */ v17 = varg0.approve(varg1, 0).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
        require(v16, Error('SafeERC20: low-level call failed'));
        if (MEM[v18]) {
            require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
            require(!(bool(MEM[v18 + 32]) - MEM[v18 + 32]));
            require(MEM[v18 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v20 = v0.length;
        v21 = v0.data;
        v22, /* uint256 */ v23 = varg0.approve(varg1, varg2).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v24 = v25 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v24 = new bytes[](RETURNDATASIZE());
            require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
            v23 = v24.data;
            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
        }
        require(v22, Error('SafeERC20: low-level call failed'));
        if (MEM[v24]) {
            require(v24 + MEM[v24] + 32 - (v24 + 32) >= 32);
            require(!(bool(MEM[v24 + 32]) - MEM[v24 + 32]));
            require(MEM[v24 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        return ;
    } else {
        return ;
    }
}

function 0x398f(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) - 32);
    return v0;
}

function 0x39ee(uint256 varg0) private { 
    require(varg0, Panic(17)); // arithmetic overflow or underflow
    return uint256.max + varg0;
}

function 0x3a7e(uint256 varg0) private { 
    v0 = 0x2b19(64);
    v1 = 0x398f(v0);
    require(v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[v1.data] = 0x30 & 0xFF;
    require(1 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[33 + v1] = 0x78 & 0xFF;
    v2 = 0x3141(32);
    v3 = v4 = 0x2b27(v2);
    while (v3 > 1) {
        require(bool(varg0) < 16, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v3 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + (v3 + v1)] = (byte('0123456789abcdef', bool(varg0))) & 0xFF;
        varg0 = varg0 >> 4;
        v3 = 0x39ee(v3);
    }
    require(!bool(varg0), Error('Strings: hex length insufficient'));
    return v1;
}

function 0x3d8d(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (!varg0) {
        v0 = new uint256[](v1);
        v1 = MEM[varg1];
        v2 = 0;
        while (v2 < v1) {
            MEM[v2 + v0.data] = MEM[v2 + (varg1 + 32)];
            v2 += 32;
        }
        MEM[v1 + v0.data] = 0;
        revert(v0, varg2);
    } else {
        return ;
    }
}

function 0x4f8(uint256 varg0) private { 
    if (!_getRoleAdmin[varg0].field0[msg.sender]) {
        v0 = v1 = msg.sender;
        v2 = 0x3141(20);
        v3 = 0x2b19(v2);
        v4 = v5 = 0x398f(v3);
        require(v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[v5.data] = 0x30 & 0xFF;
        require(1 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[33 + v5] = 0x78 & 0xFF;
        v6 = 0x3141(20);
        v4 = v7 = 0x2b27(v6);
        while (v4 > 1) {
            require(bool(v0) < 16, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v4 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[32 + (v4 + v5)] = (byte('0123456789abcdef', bool(v0))) & 0xFF;
            v0 = v0 >> 4;
            v4 = 0x39ee(v4);
        }
        v0 = v8 = 0x12c95;
        v0 = v9 = 9201;
        v4 = v10 = 9256;
        v0 = v11 = 0x12cb8;
        require(!bool(v0), Error('Strings: hex length insufficient'));
        v4 = v12 = 0x3a7e(varg0);
        v0 = v13 = 9195;
        v0 = v14 = MEM[64];
        MEM[v14 + 32] = 'AccessControl: account ';
        v15 = v16 = v14 + 32 + 23;
        while (1) {
            v17 = 0;
            while (v17 < MEM[v4]) {
                MEM[v17 + v15] = MEM[v17 + (v4 + 32)];
                v17 += 32;
            }
            MEM[MEM[v4] + v15] = 0;
            // Unknown jump to Block ['0x12cb8', '0x23f1']. Refer to 3-address code (TAC);
            MEM[v15 + MEM[v4]] = ' is missing role ';
            v15 = 17 + (v15 + MEM[v4]);
            // Unknown jump to Block 0x23eb. Refer to 3-address code (TAC);
        }
        MEM[v0] = v15 + MEM[v4] - v0 - 32;
        v18 = v0 + (v15 + MEM[v4] - v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(!((v18 > uint64.max) | (v18 < v0)), Panic(65)); // failed memory allocation (too much memory)
        v19 = new uint256[](v20);
        v20 = MEM[v0];
        v21 = 0;
        while (v21 < v20) {
            MEM[v21 + v19.data] = MEM[v21 + (v0 + 32)];
            v21 += 32;
        }
        MEM[v20 + v19.data] = 0;
        revert(Error(v19));
    } else {
        return ;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x1ffc9a7 == v0) {
            supportsInterface(bytes4);
        } else {
            if (0x18780684 != v0) {
                if (0x23a69e75 != v0) {
                    if (0x248a9ca3 == v0) {
                        getRoleAdmin(bytes32);
                    } else {
                        if (0x2c8958f6 != v0) {
                            if (0x2f2ff15d == v0) {
                                grantRole(bytes32,address);
                            } else if (0x36568abe == v0) {
                                renounceRole(bytes32,address);
                            } else if (0x3a1c453c != v0) {
                                if (0x61d027b3 == v0) {
                                    treasury();
                                } else if (0x654b6487 != v0) {
                                    if (0x67ca7c91 == v0) {
                                        maverickV2SwapCallback(address,uint256,uint256,bytes);
                                    } else if (0x6b453c1f == v0) {
                                        addMaintainer(address);
                                    } else if (0x6bbc912c == v0) {
                                        0x6bbc912c();
                                    } else if (0x79d3f8ce != v0) {
                                        if (0x8129fc1c == v0) {
                                            initialize();
                                        } else if (0x8bb9c5bf == v0) {
                                            renounceRole(bytes32);
                                        } else if (0x91d14854 == v0) {
                                            hasRole(bytes32,address);
                                        } else if (0x91dd7346 == v0) {
                                            unlockCallback(bytes);
                                        } else if (0x923b8a2a != v0) {
                                            if (0x9294d675 == v0) {
                                                0x9294d675();
                                            } else if (0x9feb758b != v0) {
                                                if (0xa217fddf == v0) {
                                                    DEFAULT_ADMIN_ROLE();
                                                } else if (0xd3e1c284 == v0) {
                                                    swapY2XCallback(uint256,uint256,bytes);
                                                } else if (0xd547741f == v0) {
                                                    revokeRole(bytes32,address);
                                                } else if (0xd8baf7cf == v0) {
                                                    removeMaintainer(address);
                                                } else if (0xe81f56f4 != v0) {
                                                    if (0xe8d917fe != v0) {
                                                        if (0xf0f44260 == v0) {
                                                            setTreasury(address);
                                                        } else if (0xf2fde38b == v0) {
                                                            transferOwnership(address);
                                                        } else if (0xf38d9f13 == v0) {
                                                            0xf38d9f13();
                                                        } else if (0xf8742254 == v0) {
                                                            MAINTAINER_ROLE();
                                                        } else if (0xfa461e33 != v0) {
                                                            if (0xfa483e72 != v0) {
                                                            }
                                                        }
                                                    }
                                                }
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
            swapCallback(uint256,uint256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
