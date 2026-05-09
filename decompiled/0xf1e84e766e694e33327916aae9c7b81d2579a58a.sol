// Decompiled by library.dedaub.com
// 2025.12.17 14:04 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _fun_transferFrom; // TRANSIENT_STORAGE[0xc7aebfbc05485e093720deaa]
uint256 _fun_ekuboPay; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x14c1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    v0 = (varg3 ^ varg8) * ((varg2 == varg1) | (varg2 != varg0) & (varg1 < varg0));
    if (varg3 ^ v0 < 0) {
        MEM[v1.word1] = 0x4c085bf1;
        revert(28 + v1.word1, 36);
    } else {
        return varg3 ^ v0, varg5, varg6, varg7, v1.word1, varg9, varg8 ^ v0;
    }
}

function executeMetaTxn(address varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(96 <= msg.data.length - 4);
    require(varg3 <= uint64.max);
    require(varg3 + 35 < msg.data.length);
    require(varg3.length <= uint64.max);
    v0 = v1 = varg3 + 36;
    require(varg3 + (varg3.length << 5) + 36 <= msg.data.length);
    require(varg5 <= uint64.max);
    require(varg5 + 35 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(varg5 + varg5.length + 36 <= msg.data.length);
    v2 = v3 = v3.data;
    while (v0 < varg3 + (varg3.length << 5) + 36) {
        CALLDATACOPY(v2, msg.data[v0] + varg3 + 68, msg.data[msg.data[v0] + varg3 + 36]);
        MEM[v2] = keccak256(MEM[v1a26_0x0:v1a26_0x0 + msg.data[msg.data[v1a26_0x1] + varg3 + 36]]);
        v0 += 32;
        v2 += 32;
    }
    CALLDATACOPY(32 + v4.data, 4, 96);
    require(msg.sender != varg4, ConfusedDeputy());
    require(!_fun_transferFrom, ReentrantMetatransaction(_fun_transferFrom));
    _fun_transferFrom = keccak256(0x615e8d716cef7295e75dd3f1f10d679914ad6d7759e8e9459f0109ef75241701, v5, keccak256(v3));
    require(varg4 << 96, ConfusedDeputy());
    require(!(_fun_ekuboPay << 96), ReentrantPayer(_fun_ekuboPay, 0x7407c0f8000000000000000000000000));
    _fun_ekuboPay = varg4;
    require(varg3.length);
    v6 = msg.data[varg3 + msg.data[v1] + 36] - 4;
    v7 = varg3 + msg.data[v1] + 72;
    v8 = new bytes[](0x3c74eed6);
    if (0 == (msg.data[varg3 + msg.data[v1] + 68] >> 224 == 0xdfeb419)) {
        if (0x9ebf8e8d - (msg.data[varg3 + msg.data[v1] + 68] >> 224)) {
            v9 = v10 = 0;
        } else {
            require(v7 + v6 - v7 >= 224);
            require(!(msg.data[v7] - address(msg.data[v7])));
            require(msg.data[v7 + 32] <= uint64.max);
            require(v7 + msg.data[v7 + 32] + 31 < v7 + v6);
            require(msg.data[v7 + msg.data[v7 + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v11 = MEM[64];
            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            require(v7 + msg.data[v7 + 32] + 32 + msg.data[v7 + msg.data[v7 + 32]] <= v7 + v6);
            CALLDATACOPY(v8.data, v7 + msg.data[v7 + 32] + 32, msg.data[v7 + msg.data[v7 + 32]]);
            v8[msg.data[v7 + msg.data[v7 + 32]]] = 0;
            require(v7 + v6 - (v7 + 64) >= 128);
            v12 = new struct(3);
            require(!((v12 + 96 > uint64.max) | (v12 + 96 < v12)), Panic(65)); // failed memory allocation (too much memory)
            require(v7 + v6 - (v7 + 64) >= 64);
            v13 = new struct(2);
            require(!((v13 + 64 > uint64.max) | (v13 + 64 < v13)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v7 + 64] - address(msg.data[v7 + 64])));
            v13.word0 = msg.data[v7 + 64];
            v13.word1 = msg.data[v7 + 64 + 32];
            v12.word0 = v13;
            v12.word1 = msg.data[v7 + 64 + 64];
            v12.word2 = msg.data[v7 + 64 + 96];
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v14 = new bytes[](varg5.length);
            require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5 + 36 + varg5.length <= msg.data.length);
            CALLDATACOPY(v14.data, varg5 + 36, varg5.length);
            v14[varg5.length] = 0;
            require(137 <= 137 + v14.length, Panic(17)); // arithmetic overflow or underflow
            require(137 + v14.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v15 = new bytes[](137 + v14.length);
            require(!((v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
            require(137 + v14.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(v15.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v14.length) - 32);
            MEM[72 + v15] = MEM[32 + v12.word0];
            MCOPY(104 + v15, 32 + v12, 64);
            MEM8[168 + v15] = 0x0 & 0xFF;
            MCOPY(169 + v15, v14.data, v14.length);
            v16 = v17 = MEM[v12.word0 + 32];
            v18 = v19 = 0;
            require(v17 <= int256.max, Panic(17)); // arithmetic overflow or underflow
            while (1) {
                require(MEM[v11] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v20 = MEM[20 + v11];
                v21 = MEM[64 + v11];
                if (0 == !uint8(MEM[21 + v11])) {
                    if (uint8(MEM[21 + v11]) - 1) {
                        if (uint8(MEM[21 + v11]) - 2) {
                            require(0 != (uint8(MEM[21 + v11]) == 3), UnknownForkId(uint8(MEM[21 + v11])));
                            MEM[32] = (address(v20) < address(v21)) * (v21 ^ v20) ^ v20;
                            MEM[0] = 0;
                            MEM[12] = (v21 ^ (address(v20) < address(v21)) * (v21 ^ v20)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v15] = v20;
                            MEM[20 + v15] = v18;
                            v22 = MEM[64];
                            MCOPY(196 + v22, v15, 32 + v15.length);
                            MEM[164 + v22] = 160;
                            MEM[132 + v22] = address(MEM[44 + v11]);
                            MEM[100 + v22] = v16;
                            MEM[68 + v22] = address(v20) < address(v21);
                            MEM[36 + v22] = address(msg.data[v7]) ^ (this ^ address(msg.data[v7])) * (MEM[v11] > 64);
                            MEM[16 + v22] = 0x128acb08000000000000000000000000;
                            require((_fun_ekuboPay ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                            v23 = ___function_selector__;
                            require(!v23, ReentrantCallback(v23));
                            ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                            v24 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1ac6eV0x1c81V0x1844 + 32:v1ac6eV0x1c81V0x1844 + 32 + 196 + v23ebV0x1c81V0x1844.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v25 = v26 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v25 = new bytes[](RETURNDATASIZE());
                                require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
                            }
                            require(v24, v27 + 32, MEM[v27]);
                            v28 = ___function_selector__;
                            require(!v28, CallbackNotSpent(v28));
                        } else {
                            MEM[32] = (address(v20) < address(v21)) * (v21 ^ v20) ^ v20;
                            MEM[0] = 0;
                            MEM[12] = (v21 ^ (address(v20) < address(v21)) * (v21 ^ v20)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v15] = v20;
                            MEM[20 + v15] = v18;
                            v22 = v29 = MEM[64];
                            MCOPY(196 + v29, v15, 32 + v15.length);
                            MEM[164 + v29] = 160;
                            MEM[132 + v29] = address(MEM[44 + v11]);
                            MEM[100 + v29] = v16;
                            MEM[68 + v29] = address(v20) < address(v21);
                            MEM[36 + v29] = address(msg.data[v7]) ^ (this ^ address(msg.data[v7])) * (MEM[v11] > 64);
                            MEM[16 + v29] = 0x128acb08000000000000000000000000;
                            require((_fun_ekuboPay ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                            v30 = ___function_selector__;
                            require(!v30, ReentrantCallback(v30));
                            ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                            v31 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1abd4V0x1c81V0x1844 + 32:v1abd4V0x1c81V0x1844 + 32 + 196 + v23ebV0x1c81V0x1844.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v25 = v32 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v25 = v33 = new bytes[](RETURNDATASIZE());
                                require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
                            }
                            require(v31, v34 + 32, MEM[v34]);
                            v35 = ___function_selector__;
                            require(!v35, CallbackNotSpent(v35));
                        }
                    } else {
                        MEM[32] = (address(v20) < address(v21)) * (v21 ^ v20) ^ v20;
                        MEM[0] = 0;
                        MEM[12] = (v21 ^ (address(v20) < address(v21)) * (v21 ^ v20)) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + v15] = v20;
                        MEM[20 + v15] = v18;
                        v22 = v36 = MEM[64];
                        MCOPY(196 + v36, v15, 32 + v15.length);
                        MEM[164 + v36] = 160;
                        MEM[132 + v36] = address(MEM[44 + v11]);
                        MEM[100 + v36] = v16;
                        MEM[68 + v36] = address(v20) < address(v21);
                        MEM[36 + v36] = address(msg.data[v7]) ^ (this ^ address(msg.data[v7])) * (MEM[v11] > 64);
                        MEM[16 + v36] = 0x128acb08000000000000000000000000;
                        require((_fun_ekuboPay ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                        v37 = ___function_selector__;
                        require(!v37, ReentrantCallback(v37));
                        ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                        v38 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1ab3aV0x1c81V0x1844 + 32:v1ab3aV0x1c81V0x1844 + 32 + 196 + v23ebV0x1c81V0x1844.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v25 = v39 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v25 = v40 = new bytes[](RETURNDATASIZE());
                            require(!((v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());
                        }
                        require(v38, v41 + 32, MEM[v41]);
                        v42 = ___function_selector__;
                        require(!v42, CallbackNotSpent(v42));
                    }
                } else {
                    MEM[32] = (address(v20) < address(v21)) * (v21 ^ v20) ^ v20;
                    MEM[0] = 0;
                    MEM[12] = (v21 ^ (address(v20) < address(v21)) * (v21 ^ v20)) << 96;
                    MEM8[11] = 0xff & 0xFF;
                    MEM[40 + v15] = v20;
                    MEM[20 + v15] = v18;
                    v22 = v43 = MEM[64];
                    MCOPY(196 + v43, v15, 32 + v15.length);
                    MEM[164 + v43] = 160;
                    MEM[132 + v43] = address(MEM[44 + v11]);
                    MEM[100 + v43] = v16;
                    MEM[68 + v43] = address(v20) < address(v21);
                    MEM[36 + v43] = address(msg.data[v7]) ^ (this ^ address(msg.data[v7])) * (MEM[v11] > 64);
                    MEM[16 + v43] = 0x128acb08000000000000000000000000;
                    require((_fun_ekuboPay ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v44 = ___function_selector__;
                    require(!v44, ReentrantCallback(v44));
                    ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                    v45 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x239cV0x1c81V0x1844]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1aaa0V0x1c81V0x1844 + 32:v1aaa0V0x1c81V0x1844 + 32 + 196 + v23ebV0x1c81V0x1844.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v25 = v46 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v25 = v47 = new bytes[](RETURNDATASIZE());
                        require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v47.data, 0, RETURNDATASIZE());
                    }
                    require(v45, v48 + 32, MEM[v48]);
                    v49 = ___function_selector__;
                    require(!v49, CallbackNotSpent(v49));
                }
                require(v25 + MEM[v25] - v25 >= 64);
                v16 = v50 = 0 - ((MEM[v25 + 64] ^ MEM[v25 + 32]) * (address(v20) < address(v21)) ^ MEM[v25 + 32]);
                require(v50 >= 0, Panic(17)); // arithmetic overflow or underflow
                if (MEM[v11] <= 64) {
                    require(v50 >= msg.data[v7 + 192], TooMuchSlippage(v21, 0x97a6f3b9000000000000000000000000, msg.data[v7 + 192], v50));
                    v9 = 1;
                } else {
                    v18 = v51 = this;
                    require(MEM[v11] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v11 = v11 + 44;
                    MEM[v11] = MEM[v11] - 44;
                }
            }
        }
    } else {
        require(v7 + v6 - v7 >= 160);
        require(!(msg.data[v7] - address(msg.data[v7])));
        require(v7 + v6 - (v7 + 32) >= 128);
        v52 = new struct(3);
        require(!((v52 + 96 > uint64.max) | (v52 + 96 < v52)), Panic(65)); // failed memory allocation (too much memory)
        require(v7 + v6 - (v7 + 32) >= 64);
        v53 = new struct(2);
        require(!((v53 + 64 > uint64.max) | (v53 + 64 < v53)), Panic(65)); // failed memory allocation (too much memory)
        require(!(msg.data[v7 + 32] - address(msg.data[v7 + 32])));
        v53.word0 = msg.data[v7 + 32];
        v53.word1 = msg.data[v7 + 32 + 32];
        v52.word0 = v53;
        v54 = v8.data;
        v52.word1 = msg.data[v7 + 32 + 64];
        v52.word2 = msg.data[v7 + 32 + 96];
        v55, v56 = fun_permitToTransferDetails(v52, address(msg.data[v7]));
        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v57 = new bytes[](varg5.length);
        require(!((v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v57)), Panic(65)); // failed memory allocation (too much memory)
        require(varg5 + 36 + varg5.length <= msg.data.length);
        CALLDATACOPY(v57.data, varg5 + 36, varg5.length);
        v57[varg5.length] = 0;
        v58 = _fun_transferFrom;
        _fun_transferFrom = 0;
        require(v58, ConfusedDeputy());
        v59 = new bytes[](175);
        require(!((v59 + 224 > uint64.max) | (v59 + 224 < v59)), Panic(65)); // failed memory allocation (too much memory)
        MEM[v59.data] = 'SlippageAndActions slippageAndAc';
        MEM[v59 + 64] = 'tions)SlippageAndActions(address';
        MEM[v59 + 96] = ' recipient,address buyToken,uint';
        MEM[v59 + 128] = '256 minAmountOut,bytes[] actions';
        MEM[v59 + 160] = ')TokenPermissions(address token,';
        MEM[v59 + 192] = 'uint256 amount)';
        MEM[v59 + 224] = 0x137c29fe;
        MCOPY(32 + (v59 + 224), v52.word0.length, 64);
        MCOPY(96 + (v59 + 224), v8.data, 64);
        MCOPY(160 + (v59 + 224), v56, 64);
        MCOPY(352 + (v59 + 224), v59, 207);
        MCOPY(384 + (v59 + 224 + v59.length), v57, 32 + v57.length);
        v60, /* uint256 */ v61 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v5, v5, v5, v5, v5, v5, address(_fun_ekuboPay), v58, 320, 527).gas(msg.gas);
        if (!v60) {
            v62 = RETURNDATASIZE();
            revert(v5, v5, v5, v5, v5, v5, v5, v5, v5, 527);
        } else {
            v9 = v63 = 1;
        }
    }
    if (!v9) {
        if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0xfe944a9d) {
            if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0xfb17ae47) {
                if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0x7430b95e) {
                    if (0 == (msg.data[varg3 + msg.data[v1] + 68] >> 224 == 0xc4d55cad)) {
                        v64 = v65 = 0;
                    } else {
                        require(v7 + v6 - v7 >= 320);
                        require(!(msg.data[v7] - address(msg.data[v7])));
                        require(!(msg.data[v7 + 32] - bool(msg.data[v7 + 32])));
                        require(msg.data[v7 + 128] <= uint64.max);
                        require(v7 + msg.data[v7 + 128] + 31 < v7 + v6);
                        require(msg.data[v7 + msg.data[v7 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v66 = new bytes[](msg.data[v7 + msg.data[v7 + 128]]);
                        require(!((v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
                        require(v7 + msg.data[v7 + 128] + 32 + msg.data[v7 + msg.data[v7 + 128]] <= v7 + v6);
                        CALLDATACOPY(v66.data, v7 + msg.data[v7 + 128] + 32, msg.data[v7 + msg.data[v7 + 128]]);
                        v66[msg.data[v7 + msg.data[v7 + 128]]] = 0;
                        require(v7 + v6 - (v7 + 160) >= 128);
                        v67 = new struct(3);
                        require(!((v67 + 96 > uint64.max) | (v67 + 96 < v67)), Panic(65)); // failed memory allocation (too much memory)
                        require(v7 + v6 - (v7 + 160) >= 64);
                        v68 = new struct(2);
                        require(!((v68 + 64 > uint64.max) | (v68 + 64 < v68)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v7 + 160] - address(msg.data[v7 + 160])));
                        v68.word0 = msg.data[v7 + 160];
                        v68.word1 = msg.data[v7 + 160 + 32];
                        v67.word0 = v68;
                        v67.word1 = msg.data[v7 + 160 + 64];
                        v67.word2 = msg.data[v7 + 160 + 96];
                        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v69 = new bytes[](varg5.length);
                        require(!((v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v69)), Panic(65)); // failed memory allocation (too much memory)
                        require(varg5 + 36 + varg5.length <= msg.data.length);
                        CALLDATACOPY(v69.data, varg5 + 36, varg5.length);
                        v69[varg5.length] = 0;
                        require(!msg.data[v7 + 64] | (96 == msg.data[v7 + 64] * 96 / msg.data[v7 + 64]), Panic(17)); // arithmetic overflow or underflow
                        require(!msg.data[v7 + 96] | (96 == msg.data[v7 + 96] * 96 / msg.data[v7 + 96]), Panic(17)); // arithmetic overflow or underflow
                        require(!(bool(msg.data[v7 + 288] >> 128) | bool(msg.data[v7 + 64] * 96 >> 128) | bool(msg.data[v7 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                        MEM[v69.length + (v66.length + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v69.length;
                        MCOPY(306 + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v66.data, v66.length);
                        MCOPY(v66.length + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v69.data, v69.length);
                        MEM8[305 + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                        MCOPY(v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v67 + 32, 64);
                        MCOPY(177 + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v67.word0, 64);
                        MEM8[168 + (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v7 + 32] & 0xFF;
                        require((_fun_ekuboPay ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                        ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                        v70, /* uint256 */ v71 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, address(msg.data[v7]), 209 + (v66.length + v69.length), address(msg.data[v7]), msg.data[v7 + 288], msg.data[v7 + 96] * 96, msg.data[v7 + 64] * 96, 0).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v72 = v73 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v72 = new bytes[](RETURNDATASIZE());
                            require(!((v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v72)), Panic(65)); // failed memory allocation (too much memory)
                            v71 = v72.data;
                            RETURNDATACOPY(v71, 0, RETURNDATASIZE());
                        }
                        require(v70, v72 + 32, MEM[v72]);
                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                    }
                } else {
                    require(v7 + v6 - v7 >= 288);
                    require(!(msg.data[v7] - address(msg.data[v7])));
                    require(!(msg.data[v7 + 64] - bool(msg.data[v7 + 64])));
                    require(v7 + v6 - (v7 + 96) >= 128);
                    v74 = new struct(3);
                    require(!((v74 + 96 > uint64.max) | (v74 + 96 < v74)), Panic(65)); // failed memory allocation (too much memory)
                    require(v7 + v6 - (v7 + 96) >= 64);
                    v75 = new struct(2);
                    require(!((v75 + 64 > uint64.max) | (v75 + 64 < v75)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v7 + 96] - address(msg.data[v7 + 96])));
                    v75.word0 = msg.data[v7 + 96];
                    v75.word1 = msg.data[v7 + 96 + 32];
                    v74.word0 = v75;
                    v74.word1 = msg.data[v7 + 96 + 64];
                    v74.word2 = msg.data[v7 + 96 + 96];
                    require(!(msg.data[v7 + 224] - int32(msg.data[v7 + 224])));
                    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v76 = new bytes[](varg5.length);
                    require(!((v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v76)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5 + 36 + varg5.length <= msg.data.length);
                    CALLDATACOPY(v76.data, varg5 + 36, varg5.length);
                    v76[varg5.length] = 0;
                    MEM8[11] = 0xff & 0xFF;
                    MCOPY(32 + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v74.word0, 64);
                    MCOPY(96 + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v74, 64);
                    MEM8[160 + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                    MCOPY(161 + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v76.data, v76.length);
                    MCOPY(v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 389, v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), 161 + v76.length);
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 357] = 192;
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 325] = int32(msg.data[v7 + 224]);
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 293] = 0;
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 261] = msg.data[v7 + 64];
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 229] = MEM[v74.word0 + 32];
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 197] = address(msg.data[v7]);
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 177] = 0x3eece7db000000000000000000000000;
                    MEM[v76.length + (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 161] = 357 + v76.length;
                    require((_fun_ekuboPay ^ address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v7 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a))) << 96, ConfusedDeputy());
                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                    ___function_selector__ = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v7 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)) | 0x67ca7c9100000000000000040000000000000000000000000000000000000000;
                    v77, /* uint256 */ v78 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v7 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).call(MEM[v1b610x1b74V0x1da3V0x1844.length + v1b610x1b74V0x1da3V0x1844 + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 193:v1b610x1b74V0x1da3V0x1844.length + v1b610x1b74V0x1da3V0x1844 + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 193 + MEM[v1b610x1b74V0x1da3V0x1844.length + v1b610x1b74V0x1da3V0x1844 + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 161]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v79 = v80 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v79 = new bytes[](RETURNDATASIZE());
                        require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                        v78 = v79.data;
                        RETURNDATACOPY(v78, 0, RETURNDATASIZE());
                    }
                    require(v77, v79 + 32, MEM[v79]);
                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                    require(v79 + MEM[v79] - v79 >= 64);
                    if (MEM[64 + v79] < msg.data[v7 + (uint8.max + 1)]) {
                        v81 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v7 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).tokenB().gas(msg.gas);
                        require(v81, MEM[64], RETURNDATASIZE());
                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                        revert(TooMuchSlippage(MEM[0], msg.data[v7 + (uint8.max + 1)], MEM[64 + v79]));
                    } else {
                        v64 = v82 = 1;
                    }
                }
            } else {
                require(v7 + v6 - v7 >= 320);
                require(!(msg.data[v7] - address(msg.data[v7])));
                require(!(msg.data[v7 + 32] - bool(msg.data[v7 + 32])));
                require(msg.data[v7 + 128] <= uint64.max);
                require(v7 + msg.data[v7 + 128] + 31 < v7 + v6);
                require(msg.data[v7 + msg.data[v7 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v83 = new bytes[](msg.data[v7 + msg.data[v7 + 128]]);
                require(!((v83 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v83 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v83)), Panic(65)); // failed memory allocation (too much memory)
                require(v7 + msg.data[v7 + 128] + 32 + msg.data[v7 + msg.data[v7 + 128]] <= v7 + v6);
                CALLDATACOPY(v83.data, v7 + msg.data[v7 + 128] + 32, msg.data[v7 + msg.data[v7 + 128]]);
                v83[msg.data[v7 + msg.data[v7 + 128]]] = 0;
                require(v7 + v6 - (v7 + 160) >= 128);
                v84 = new struct(3);
                require(!((v84 + 96 > uint64.max) | (v84 + 96 < v84)), Panic(65)); // failed memory allocation (too much memory)
                require(v7 + v6 - (v7 + 160) >= 64);
                v85 = new struct(2);
                require(!((v85 + 64 > uint64.max) | (v85 + 64 < v85)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v7 + 160] - address(msg.data[v7 + 160])));
                v85.word0 = msg.data[v7 + 160];
                v85.word1 = msg.data[v7 + 160 + 32];
                v84.word0 = v85;
                v84.word1 = msg.data[v7 + 160 + 64];
                v84.word2 = msg.data[v7 + 160 + 96];
                require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v86 = new bytes[](varg5.length);
                require(!((v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v86)), Panic(65)); // failed memory allocation (too much memory)
                require(varg5 + 36 + varg5.length <= msg.data.length);
                CALLDATACOPY(v86.data, varg5 + 36, varg5.length);
                v86[varg5.length] = 0;
                require(!msg.data[v7 + 64] | (96 == msg.data[v7 + 64] * 96 / msg.data[v7 + 64]), Panic(17)); // arithmetic overflow or underflow
                require(!msg.data[v7 + 96] | (96 == msg.data[v7 + 96] * 96 / msg.data[v7 + 96]), Panic(17)); // arithmetic overflow or underflow
                require(!(bool(msg.data[v7 + 288] >> 128) | bool(msg.data[v7 + 64] * 96 >> 128) | bool(msg.data[v7 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                MEM[v86.length + (v83.length + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v86.length;
                MCOPY(306 + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v83.data, v83.length);
                MCOPY(v83.length + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v86.data, v86.length);
                MEM8[305 + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                MCOPY(v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v84 + 32, 64);
                MCOPY(177 + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v84.word0, 64);
                MEM8[168 + (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v7 + 32] & 0xFF;
                require((_fun_ekuboPay ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                require(!___function_selector__, ReentrantCallback(___function_selector__));
                ___function_selector__ = uint32(msg.data[v7] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                v87, /* uint256 */ v88 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v7]), 209 + (v83.length + v86.length), address(msg.data[v7]), msg.data[v7 + 288], msg.data[v7 + 96] * 96, msg.data[v7 + 64] * 96, 0).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v89 = v90 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v89 = new bytes[](RETURNDATASIZE());
                    require(!((v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v89)), Panic(65)); // failed memory allocation (too much memory)
                    v88 = v89.data;
                    RETURNDATACOPY(v88, 0, RETURNDATASIZE());
                }
                require(v87, v89 + 32, MEM[v89]);
                require(!___function_selector__, CallbackNotSpent(___function_selector__));
            }
        } else {
            require(v7 + v6 - v7 >= 320);
            require(!(msg.data[v7] - address(msg.data[v7])));
            require(!(msg.data[v7 + 32] - bool(msg.data[v7 + 32])));
            require(msg.data[v7 + 128] <= uint64.max);
            require(v7 + msg.data[v7 + 128] + 31 < v7 + v6);
            require(msg.data[v7 + msg.data[v7 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v91 = new bytes[](msg.data[v7 + msg.data[v7 + 128]]);
            require(!((v91 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v91 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v91)), Panic(65)); // failed memory allocation (too much memory)
            require(v7 + msg.data[v7 + 128] + 32 + msg.data[v7 + msg.data[v7 + 128]] <= v7 + v6);
            CALLDATACOPY(v91.data, v7 + msg.data[v7 + 128] + 32, msg.data[v7 + msg.data[v7 + 128]]);
            v91[msg.data[v7 + msg.data[v7 + 128]]] = 0;
            require(v7 + v6 - (v7 + 160) >= 128);
            v92 = new struct(3);
            require(!((v92 + 96 > uint64.max) | (v92 + 96 < v92)), Panic(65)); // failed memory allocation (too much memory)
            require(v7 + v6 - (v7 + 160) >= 64);
            v93 = new struct(2);
            require(!((v93 + 64 > uint64.max) | (v93 + 64 < v93)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v7 + 160] - address(msg.data[v7 + 160])));
            v93.word0 = msg.data[v7 + 160];
            v93.word1 = msg.data[v7 + 160 + 32];
            v92.word0 = v93;
            v92.word1 = msg.data[v7 + 160 + 64];
            v92.word2 = msg.data[v7 + 160 + 96];
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v94 = new bytes[](varg5.length);
            require(!((v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v94)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5 + 36 + varg5.length <= msg.data.length);
            CALLDATACOPY(v94.data, varg5 + 36, varg5.length);
            v94[varg5.length] = 0;
            require(!msg.data[v7 + 64] | (96 == msg.data[v7 + 64] * 96 / msg.data[v7 + 64]), Panic(17)); // arithmetic overflow or underflow
            require(!msg.data[v7 + 96] | (96 == msg.data[v7 + 96] * 96 / msg.data[v7 + 96]), Panic(17)); // arithmetic overflow or underflow
            require(!(bool(msg.data[v7 + 288] >> 128) | bool(msg.data[v7 + 64] * 96 >> 128) | bool(msg.data[v7 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
            MEM[v94.length + (v91.length + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v94.length;
            MCOPY(306 + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v91.data, v91.length);
            MCOPY(v91.length + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v94.data, v94.length);
            MEM8[305 + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
            MCOPY(v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v92 + 32, 64);
            MCOPY(177 + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v92.word0, 64);
            MEM8[168 + (v94 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v7 + 32] & 0xFF;
            require((_fun_ekuboPay ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
            require(!___function_selector__, ReentrantCallback(___function_selector__));
            ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
            v95, /* uint256 */ v96 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v7]), 209 + (v91.length + v94.length), address(msg.data[v7]), msg.data[v7 + 288], msg.data[v7 + 96] * 96, msg.data[v7 + 64] * 96, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v97 = v98 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v97 = new bytes[](RETURNDATASIZE());
                require(!((v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v97)), Panic(65)); // failed memory allocation (too much memory)
                v96 = v97.data;
                RETURNDATACOPY(v96, 0, RETURNDATASIZE());
            }
            require(v95, v97 + 32, MEM[v97]);
            require(!___function_selector__, CallbackNotSpent(___function_selector__));
        }
        v64 = v99 = 1;
    } else {
        v64 = v100 = 1;
    }
    if (!v64) {
        MEM[v8.data] = 0;
        v101 = new uint256[](v6);
        CALLDATACOPY(v101.data, v7, v6);
        revert(ActionInvalid(0, bytes4(msg.data[varg3 + msg.data[v1] + 68]), v101));
    } else {
        v102 = v103 = 1;
        v104 = v105 = 68 + varg3;
        while (v102 < varg3.length) {
            v106 = msg.data[varg3 + msg.data[v104] + 36] - 4;
            v107 = varg3 + msg.data[v104] + 72;
            v108 = msg.data[varg3 + msg.data[v104] + 68] >> 224;
            if (v108 - 0xd92aadfb) {
                if (0 == (v108 == 0x8d68a156)) {
                    if (v108 - 0x103b48be) {
                        if (v108 - 0x38c9c147) {
                            if (v108 - 0x34ee90ca) {
                                if (v108 - 0xaf72634f) {
                                    if (v108 - 0x736180c8) {
                                        if (v108 - 0x6472b276) {
                                            if (v108 - 0xfd8c38e1) {
                                                if (v108 - 0x9b59756f) {
                                                    if (v108 - 0x6c5f9cf9) {
                                                        if (v108 - 0xca9e5d0f) {
                                                            if (0xb8df6d4d != v108) {
                                                                v109 = v110 = 0;
                                                            } else {
                                                                require(v107 + v106 - v107 >= 160);
                                                                require(!(msg.data[v107] - address(msg.data[v107])));
                                                                require(!(msg.data[v107 + 64] - address(msg.data[v107 + 64])));
                                                                require(!(msg.data[v107 + 96] - bool(msg.data[v107 + 96])));
                                                                v111 = fun_fastBalanceOf(msg.data[v107], this);
                                                                fun_safeApproveIfBelow(msg.data[v107], address(msg.data[v107 + 64]), v111 * msg.data[v107 + 32] / 10000);
                                                                if (!msg.data[v107 + 96]) {
                                                                    v112 = msg.data[v107 + 64].sellBaseToken(v111 * msg.data[v107 + 32] / 10000, msg.data[v107 + 128], 96, 0).gas(msg.gas);
                                                                    if (!v112) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                    }
                                                                } else {
                                                                    v113 = msg.data[v107 + 64].getExpectedTarget().gas(msg.gas);
                                                                    if (!v113) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 63);
                                                                        v114 = msg.data[v107 + 64]._R_STATUS_().gas(msg.gas);
                                                                        if (!v114) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            require(!(MEM[0] >> 8));
                                                                            require(uint8(MEM[0]) < 3, Panic(33)); // failed convertion to enum type
                                                                            v115 = msg.data[v107 + 64].getOraclePrice().gas(msg.gas);
                                                                            if (!v115) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v116 = msg.data[v107 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                                if (!v116) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    v117 = msg.data[v107 + 64]._K_().gas(msg.gas);
                                                                                    if (!v117) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        if (0 == (uint8(MEM[0]) == 2)) {
                                                                                            v118 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v111 * msg.data[v107 + 32] / 10000) / 10 ** 18;
                                                                                            if (0 == (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 >= v118) {
                                                                                                v119 = v120 = v118 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                                v121 = v122 = 0;
                                                                                            } else {
                                                                                                v119 = v123 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v118;
                                                                                                v121 = v124 = 1;
                                                                                            }
                                                                                            v125 = v126 = v119 * v119 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                                            v125 = (v126 >> 1) + 1;
                                                                                            while (v125 < v125) {
                                                                                                v125 = v125 + v126 / v125 >> 1;
                                                                                            }
                                                                                            if (!v121) {
                                                                                                v127 = v128 = v125 - v119;
                                                                                            } else {
                                                                                                v127 = v129 = v119 + v125;
                                                                                            }
                                                                                            v130 = v131 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v127 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v127 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                        } else {
                                                                                            v132 = msg.data[v107 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                            if (!v132) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v111 * msg.data[v107 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                    v133 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / MEM[0] + (v111 * msg.data[v107 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                                                    if (0 == (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 >= v133) {
                                                                                                        v134 = v135 = v133 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                        v136 = v137 = 0;
                                                                                                    } else {
                                                                                                        v134 = v138 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v133;
                                                                                                        v136 = v139 = 1;
                                                                                                    }
                                                                                                    v140 = v141 = v134 * v134 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                                                    v140 = (v141 >> 1) + 1;
                                                                                                    while (v140 < v140) {
                                                                                                        v140 = v140 + v141 / v140 >> 1;
                                                                                                    }
                                                                                                    if (!v136) {
                                                                                                        v142 = v143 = v140 - v134;
                                                                                                    } else {
                                                                                                        v142 = v144 = v134 + v140;
                                                                                                    }
                                                                                                    v130 = v145 = MEM[0] - MEM[0] + (MEM[0] - (bool(v142 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v142 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                                } else {
                                                                                                    v130 = (MEM[0] + v111 * msg.data[v107 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18 * (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v111 * msg.data[v107 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v111 * msg.data[v107 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        v146 = msg.data[v107 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v146) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            v147 = msg.data[v107 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                            if (!v147) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v130 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < msg.data[v107 + 128]) {
                                                                                                    v148 = msg.data[v107 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                    require(v148, MEM[64], RETURNDATASIZE());
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v107 + 128], v130 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                                                    revert();
                                                                                                } else {
                                                                                                    v149 = msg.data[v107 + 64].buyBaseToken(v130 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v111 * msg.data[v107 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                    if (!v149) {
                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                    } else {
                                                                                                        require(RETURNDATASIZE() > 31);
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
                                                            }
                                                        } else {
                                                            require(v107 + v106 - v107 >= 192);
                                                            require(!(msg.data[v107] - address(msg.data[v107])));
                                                            require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                                            require(!(msg.data[v107 + 96] - address(msg.data[v107 + 96])));
                                                            require(!(msg.data[v107 + 128] - bool(msg.data[v107 + 128])));
                                                            if (msg.data[v107 + 64]) {
                                                                v150 = fun_fastBalanceOf(msg.data[v107 + 32], this);
                                                                fun_safeTransfer(msg.data[v107 + 32], address(msg.data[v107 + 96]), v150 * msg.data[v107 + 64] / 10000);
                                                            }
                                                            v151 = msg.data[v107 + 96].sellQuote(address(msg.data[v107]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v107 + 128]) << 96).gas(msg.gas);
                                                            if (!v151) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(RETURNDATASIZE() > 31);
                                                                if (MEM[0] < msg.data[v107 + 160]) {
                                                                    v152 = msg.data[v107 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                    require(v152, MEM[64], RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v107 + 160], MEM[0]));
                                                                    revert();
                                                                } else {
                                                                    v109 = v153 = 1;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(v107 + v106 - v107 >= uint8.max + 1);
                                                        require(!(msg.data[v107] - address(msg.data[v107])));
                                                        require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                                        require(!(msg.data[v107 + 96] - bool(msg.data[v107 + 96])));
                                                        require(msg.data[v107 + 192] <= uint64.max);
                                                        require(v107 + msg.data[v107 + 192] + 31 < v107 + v106);
                                                        require(msg.data[v107 + msg.data[v107 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v154 = new bytes[](msg.data[v107 + msg.data[v107 + 192]]);
                                                        require(!((v154 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v154 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v154)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(v107 + msg.data[v107 + 192] + 32 + msg.data[v107 + msg.data[v107 + 192]] <= v107 + v106);
                                                        CALLDATACOPY(v154.data, v107 + msg.data[v107 + 192] + 32, msg.data[v107 + msg.data[v107 + 192]]);
                                                        v154[msg.data[v107 + msg.data[v107 + 192]]] = 0;
                                                        require(!msg.data[v107 + 128] | (96 == msg.data[v107 + 128] * 96 / msg.data[v107 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                        require(!msg.data[v107 + 160] | (96 == msg.data[v107 + 160] * 96 / msg.data[v107 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                        require(!((msg.data[v107 + 64] > 10000) | bool(msg.data[v107 + 224] >> 128) | bool(msg.data[v107 + 128] * 96 >> 128) | bool(msg.data[v107 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                        MCOPY(211 + MEM[64], v154.data, v154.length);
                                                        MEM[179 + MEM[64]] = msg.data[v107 + 64];
                                                        MEM[177 + MEM[64]] = msg.data[v107 + 32];
                                                        MEM[157 + MEM[64]] = this;
                                                        MEM[136 + MEM[64]] = msg.data[v107 + 160] * 96;
                                                        MEM[120 + MEM[64]] = msg.data[v107 + 128] * 96;
                                                        MEM[104 + MEM[64]] = msg.data[v107 + 224];
                                                        MEM[88 + MEM[64]] = address(msg.data[v107]);
                                                        MEM[68 + MEM[64]] = 111 + v154.length;
                                                        MEM[36 + MEM[64]] = 32;
                                                        MEM[4 + MEM[64]] = 0xf83d08ba;
                                                        MEM8[168 + MEM[64]] = msg.data[v107 + 96] & 0xFF;
                                                        require((_fun_ekuboPay ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                        v155 = ___function_selector__;
                                                        require(!v155, ReentrantCallback(v155));
                                                        ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                        v156 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1b610x1b74V0x1ba4V0x27b4V0x3a35V0x1906.length], MEM[0:0]).gas(msg.gas);
                                                        if (!RETURNDATASIZE()) {
                                                            v157 = v158 = 96;
                                                        } else {
                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            v157 = new bytes[](RETURNDATASIZE());
                                                            require(!((v157 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v157 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v157)), Panic(65)); // failed memory allocation (too much memory)
                                                            RETURNDATACOPY(v157.data, 0, RETURNDATASIZE());
                                                        }
                                                        require(v156, v157 + 32, MEM[v157]);
                                                        v159 = ___function_selector__;
                                                        require(!v159, CallbackNotSpent(v159));
                                                    }
                                                } else {
                                                    require(v107 + v106 - v107 >= 224);
                                                    require(!(msg.data[v107] - address(msg.data[v107])));
                                                    require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                                    require(!(msg.data[v107 + 96] - address(msg.data[v107 + 96])));
                                                    require(!(msg.data[v107 + 128] - bool(msg.data[v107 + 128])));
                                                    require(!(msg.data[v107 + 160] - int32(msg.data[v107 + 160])));
                                                    if (!msg.data[v107 + 64]) {
                                                        v160 = fun_fastBalanceOf(msg.data[v107 + 32], address(msg.data[v107 + 96]));
                                                        v161 = msg.data[v107 + 96].getState().gas(msg.gas);
                                                        if (!v161) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(!((RETURNDATASIZE() < 288) | MEM[(!msg.data[v107 + 128] << 5) + MEM[64]] >> 128));
                                                            v162 = v163 = 0;
                                                            v164 = v165 = v160 - uint128(MEM[(!msg.data[v107 + 128] << 5) + MEM[64]]);
                                                        }
                                                    } else {
                                                        v162 = 0;
                                                        v166 = fun_fastBalanceOf(msg.data[v107 + 32], this);
                                                        v164 = v167 = v166 * msg.data[v107 + 64] / 10000;
                                                        fun_safeTransfer(msg.data[v107 + 32], address(msg.data[v107 + 96]), v167);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[MEM[64]] = v162;
                                                    v168 = new bytes[](228);
                                                    MCOPY(228 + v168, MEM[64], 32);
                                                    MEM[196 + v168] = 192;
                                                    MEM[164 + v168] = int32(msg.data[v107 + 160]);
                                                    MEM[132 + v168] = v162;
                                                    MEM[100 + v168] = msg.data[v107 + 128];
                                                    MEM[68 + v168] = v164;
                                                    MEM[36 + v168] = address(msg.data[v107]);
                                                    v169 = v168.length;
                                                    v170 = v168.data;
                                                    v171 = address(msg.data[v107 + 96]).call(0x3eece7db000000000000000000000000, address(msg.data[v107]), 0x3eece7db000000000000000000000000, v164, msg.data[v107 + 128], v162, int32(msg.data[v107 + 160]), 192).value(v162).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v172 = v173 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v172 = new bytes[](RETURNDATASIZE());
                                                        require(!((v172 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v172 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v172)), Panic(65)); // failed memory allocation (too much memory)
                                                        RETURNDATACOPY(v172.data, 0, RETURNDATASIZE());
                                                    }
                                                    require(v171, v172 + 32, MEM[v172]);
                                                    require(v172 + MEM[v172] - v172 >= 64);
                                                    if (MEM[64 + v172] < msg.data[v107 + 192]) {
                                                        v174 = msg.data[v107 + 96].tokenB().gas(msg.gas);
                                                        require(v174, MEM[64], RETURNDATASIZE());
                                                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                        revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v107 + 192], MEM[64 + v172]));
                                                    } else {
                                                        v109 = v175 = 1;
                                                    }
                                                }
                                            } else {
                                                require(v107 + v106 - v107 >= uint8.max + 1);
                                                require(!(msg.data[v107] - address(msg.data[v107])));
                                                require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                                require(!(msg.data[v107 + 96] - bool(msg.data[v107 + 96])));
                                                require(msg.data[v107 + 192] <= uint64.max);
                                                require(v107 + msg.data[v107 + 192] + 31 < v107 + v106);
                                                require(msg.data[v107 + msg.data[v107 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v176 = new bytes[](msg.data[v107 + msg.data[v107 + 192]]);
                                                require(!((v176 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v176 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v176)), Panic(65)); // failed memory allocation (too much memory)
                                                require(v107 + msg.data[v107 + 192] + 32 + msg.data[v107 + msg.data[v107 + 192]] <= v107 + v106);
                                                CALLDATACOPY(v176.data, v107 + msg.data[v107 + 192] + 32, msg.data[v107 + msg.data[v107 + 192]]);
                                                v176[msg.data[v107 + msg.data[v107 + 192]]] = 0;
                                                require(!msg.data[v107 + 128] | (96 == msg.data[v107 + 128] * 96 / msg.data[v107 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v107 + 160] | (96 == msg.data[v107 + 160] * 96 / msg.data[v107 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v107 + 64] > 10000) | bool(msg.data[v107 + 224] >> 128) | bool(msg.data[v107 + 128] * 96 >> 128) | bool(msg.data[v107 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v176.data, v176.length);
                                                MEM[179 + MEM[64]] = msg.data[v107 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v107 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v107 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v107 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v107 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v107]);
                                                MEM[68 + MEM[64]] = 111 + v176.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0x48c89491;
                                                MEM8[168 + MEM[64]] = msg.data[v107 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v176.length + 211;
                                                require((_fun_ekuboPay ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                                v177 = ___function_selector__;
                                                require(!v177, ReentrantCallback(v177));
                                                ___function_selector__ = uint32(msg.data[v107] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                                v178 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1b610x1b74V0x1ba4V0x27b4V0x384fV0x1906.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v179 = v180 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v179 = new bytes[](RETURNDATASIZE());
                                                    require(!((v179 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v179 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v179)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v179.data, 0, RETURNDATASIZE());
                                                }
                                                require(v178, v179 + 32, MEM[v179]);
                                                v181 = ___function_selector__;
                                                require(!v181, CallbackNotSpent(v181));
                                            }
                                        } else {
                                            require(v107 + v106 - v107 >= 192);
                                            require(!(msg.data[v107] - address(msg.data[v107])));
                                            require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                            require(!(msg.data[v107 + 96] - address(msg.data[v107 + 96])));
                                            require(!(msg.data[v107 + 128] - bool(msg.data[v107 + 128])));
                                            EXTCODECOPY(msg.data[v107 + 96], MEM[64], 54, 384);
                                            v182 = msg.data[v107 + 96].getReserves().gas(msg.gas);
                                            if (!v182) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v183 = (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v107 + 128];
                                                v184 = address(address(MEM[32 + MEM[64]]) ^ v183).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                if (!v184) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(32 <= RETURNDATASIZE());
                                                    v185 = address(address(MEM[32 + MEM[64]]) ^ v183).maxDeposit(MEM[64 + MEM[64]], 0x402d267d000000000000000000000000).gas(msg.gas);
                                                    if (!v185) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v186 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, MEM[64 + MEM[64]], address(msg.data[v107 + 96]), MEM[64 + MEM[64]] << 96).gas(msg.gas);
                                                        if (!v186) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v187 = address(address(MEM[MEM[64]]) ^ v183).cash().gas(msg.gas);
                                                            if (!v187) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(32 <= RETURNDATASIZE());
                                                                v188 = v189 = (MEM[0] ^ msg.data[v107 + 128] * (MEM[0] ^ MEM[32]) > MEM[0]) * (MEM[0] ^ (MEM[0] ^ msg.data[v107 + 128] * (MEM[0] ^ MEM[32]))) ^ (MEM[0] ^ msg.data[v107 + 128] * (MEM[0] ^ MEM[32]));
                                                                v190 = address(v183 ^ address(MEM[MEM[64]])).caps().gas(msg.gas);
                                                                if (!v190) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                    v191 = address(address(MEM[MEM[64]]) ^ v183).totalBorrows().gas(msg.gas);
                                                                    if (!v191) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(32 <= RETURNDATASIZE());
                                                                        v192 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * ((10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 ^ (0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32]) - MEM[0]);
                                                                        if (v192 < v189) {
                                                                            v193 = fun_fastBalanceOf(address(address(MEM[MEM[64]]) ^ v183), MEM[64 + MEM[64]]);
                                                                            v194 = address(address(MEM[MEM[64]]) ^ v183).convertToAssets(v193).gas(msg.gas);
                                                                            if (!v194) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(32 <= RETURNDATASIZE());
                                                                                v188 = v195 = (v189 ^ MEM[0] + v192) * (MEM[0] + v192 >= v189) ^ MEM[0] + v192;
                                                                            }
                                                                        }
                                                                        if (0 == msg.data[v107 + 128]) {
                                                                            if ((MEM[0] - v188) * (MEM[0] > v188) > MEM[96 + MEM[64]]) {
                                                                                v196 = 10 ** 18 * (((MEM[0] - v188) * (MEM[0] > v188) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]);
                                                                                v197 = v196 < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                                                                v198 = ((v196 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v197) + v197) % MEM[192 + MEM[64]];
                                                                                v199 = ((v196 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v197) + v197) / MEM[192 + MEM[64]] + (bool(v198) & v197);
                                                                                v200 = (uint16.max < v199 >> ((uint32.max < v199 >> ((uint64.max < v199 >> ((uint128.max < v199) << 7)) << 6 | (uint128.max < v199) << 7)) << 5 | ((uint64.max < v199 >> ((uint128.max < v199) << 7)) << 6 | (uint128.max < v199) << 7))) << 4 | ((uint32.max < v199 >> ((uint64.max < v199 >> ((uint128.max < v199) << 7)) << 6 | (uint128.max < v199) << 7)) << 5 | ((uint64.max < v199 >> ((uint128.max < v199) << 7)) << 6 | (uint128.max < v199) << 7));
                                                                                v201 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v199 >> ((uint8.max < v199 >> v200) << 3 | v200)))) ^ ((uint8.max < v199 >> v200) << 3 | v200)) + !v199) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v199 >> ((uint8.max < v199 >> v200) << 3 | v200)))) ^ ((uint8.max < v199 >> v200) << 3 | v200)) + !v199) - 127);
                                                                                v202 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v203 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v202) << 4 | v202)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v202) << 4 | v202);
                                                                                v204 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v203))) ^ v203) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v203))) ^ v203) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v205 = ((v204 ^ v201) * (v201 < v204) ^ v201) << 1;
                                                                                if (0 == v197) {
                                                                                    v206 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v207 = (uint40.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> ((uint72.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> ((uint136.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) << 7)) << 6 | (uint136.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) << 7)) << 5 | ((uint72.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> ((uint136.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) << 7)) << 6 | (uint136.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) << 7);
                                                                                    v208 = ((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / ((181 << (((uint24.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> v207) << 4 | v207) >> 1)) * (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> ((uint24.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> v207) << 4 | v207)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> v207) << 4 | v207) >> 1)) * (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> ((uint24.max < (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205) >> v207) << 4 | v207)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v209 = ((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v208 + v208 >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v208 + v208 >> 1) >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v208 + v208 >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v208 + v208 >> 1) >> 1) >> 1;
                                                                                    v210 = ((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v209 + v209 >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v209 + v209 >> 1) >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v209 + v209 >> 1) + (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v209 + v209 >> 1) >> 1) >> 1;
                                                                                    v211 = (v210 - (((v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (v206 >> v205 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v206 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v206) << uint8.max + 1 - v205)) / v210 < v210) << ((v204 ^ v201) * (v201 < v204) ^ v201)) + v199;
                                                                                    v212 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v213 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v211;
                                                                                    v214 = (2 - v211 / (0 - v211 & v211) * ((2 - v211 / (0 - v211 & v211) * (3 * (v211 / (0 - v211 & v211)) ^ 0x2)) * (3 * (v211 / (0 - v211 & v211)) ^ 0x2))) * ((2 - v211 / (0 - v211 & v211) * (3 * (v211 / (0 - v211 & v211)) ^ 0x2)) * (3 * (v211 / (0 - v211 & v211)) ^ 0x2));
                                                                                    v215 = (2 - v211 / (0 - v211 & v211) * ((2 - v211 / (0 - v211 & v211) * v214) * v214)) * ((2 - v211 / (0 - v211 & v211) * v214) * v214);
                                                                                    v216 = v217 = bool(v213) + ((v212 - v213) / (0 - v211 & v211) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v212 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v212) - (v213 > v212)) * ((0 - (0 - v211 & v211)) / (0 - v211 & v211) + 1)) * ((2 - v211 / (0 - v211 & v211) * ((2 - v211 / (0 - v211 & v211) * v215) * v215)) * ((2 - v211 / (0 - v211 & v211) * v215) * v215));
                                                                                } else {
                                                                                    v218 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v219 = (uint40.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> ((uint72.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> ((uint136.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) << 7)) << 6 | (uint136.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) << 7)) << 5 | ((uint72.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> ((uint136.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) << 7)) << 6 | (uint136.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) << 7);
                                                                                    v220 = (bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((181 << (((uint24.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> v219) << 4 | v219) >> 1)) * ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> ((uint24.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> v219) << 4 | v219)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> v219) << 4 | v219) >> 1)) * ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> ((uint24.max < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205)) >> v219) << 4 | v219)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v221 = (bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v220 + v220 >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v220 + v220 >> 1) >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v220 + v220 >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v220 + v220 >> 1) >> 1) >> 1;
                                                                                    v222 = (bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v221 + v221 >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v221 + v221 >> 1) >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v221 + v221 >> 1) + ((bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) / v221 + v221 >> 1) >> 1) >> 1;
                                                                                    v216 = v223 = bool((((v222 * v222 < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) + v222 << ((v204 ^ v201) * (v201 < v204) ^ v201)) + v199) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v222 * v222 < bool(v199 * v199 << uint8.max + 1 - v205) + (v199 * v199 >> v205 | v199 * v199 % uint256.max - v199 * v199 - (v199 * v199 % uint256.max < v199 * v199) << uint8.max + 1 - v205) + (bool(v218 << uint8.max + 1 - v205) + (v218 >> v205 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v218 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v218) << uint8.max + 1 - v205))) + v222 << ((v204 ^ v201) * (v201 < v204) ^ v201)) + v199) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                                                                }
                                                                                v224 = v216 - (v216 > MEM[128 + MEM[64]]);
                                                                            } else {
                                                                                v224 = v225 = fun_saturatingF((MEM[0] - v188) * (MEM[0] > v188), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            }
                                                                            v226 = v227 = (v224 > MEM[32]) * (v224 - MEM[32]);
                                                                        } else {
                                                                            if ((MEM[32] - v188) * (MEM[32] > v188) > MEM[128 + MEM[64]]) {
                                                                                v228 = 10 ** 18 * (((MEM[32] - v188) * (MEM[32] > v188) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                                                                v229 = v228 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                                                                v230 = ((v228 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v229) + v229) % MEM[160 + MEM[64]];
                                                                                v231 = ((v228 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v229) + v229) / MEM[160 + MEM[64]] + (bool(v230) & v229);
                                                                                v232 = (uint16.max < v231 >> ((uint32.max < v231 >> ((uint64.max < v231 >> ((uint128.max < v231) << 7)) << 6 | (uint128.max < v231) << 7)) << 5 | ((uint64.max < v231 >> ((uint128.max < v231) << 7)) << 6 | (uint128.max < v231) << 7))) << 4 | ((uint32.max < v231 >> ((uint64.max < v231 >> ((uint128.max < v231) << 7)) << 6 | (uint128.max < v231) << 7)) << 5 | ((uint64.max < v231 >> ((uint128.max < v231) << 7)) << 6 | (uint128.max < v231) << 7));
                                                                                v233 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v231 >> ((uint8.max < v231 >> v232) << 3 | v232)))) ^ ((uint8.max < v231 >> v232) << 3 | v232)) + !v231) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v231 >> ((uint8.max < v231 >> v232) << 3 | v232)))) ^ ((uint8.max < v231 >> v232) << 3 | v232)) + !v231) - 127);
                                                                                v234 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v235 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v234) << 4 | v234)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v234) << 4 | v234);
                                                                                v236 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v235))) ^ v235) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v235))) ^ v235) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v237 = ((v236 ^ v233) * (v233 < v236) ^ v233) << 1;
                                                                                if (0 == v229) {
                                                                                    v238 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v239 = (uint40.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> ((uint72.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> ((uint136.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) << 7)) << 6 | (uint136.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) << 7)) << 5 | ((uint72.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> ((uint136.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) << 7)) << 6 | (uint136.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) << 7);
                                                                                    v240 = ((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / ((181 << (((uint24.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> v239) << 4 | v239) >> 1)) * (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> ((uint24.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> v239) << 4 | v239)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> v239) << 4 | v239) >> 1)) * (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> ((uint24.max < (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237) >> v239) << 4 | v239)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v241 = ((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v240 + v240 >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v240 + v240 >> 1) >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v240 + v240 >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v240 + v240 >> 1) >> 1) >> 1;
                                                                                    v242 = ((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v241 + v241 >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v241 + v241 >> 1) >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v241 + v241 >> 1) + (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v241 + v241 >> 1) >> 1) >> 1;
                                                                                    v243 = (v242 - (((v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (v238 >> v237 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v238 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v238) << uint8.max + 1 - v237)) / v242 < v242) << ((v236 ^ v233) * (v233 < v236) ^ v233)) + v231;
                                                                                    v244 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v245 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v243;
                                                                                    v246 = (2 - v243 / (0 - v243 & v243) * ((2 - v243 / (0 - v243 & v243) * (3 * (v243 / (0 - v243 & v243)) ^ 0x2)) * (3 * (v243 / (0 - v243 & v243)) ^ 0x2))) * ((2 - v243 / (0 - v243 & v243) * (3 * (v243 / (0 - v243 & v243)) ^ 0x2)) * (3 * (v243 / (0 - v243 & v243)) ^ 0x2));
                                                                                    v247 = (2 - v243 / (0 - v243 & v243) * ((2 - v243 / (0 - v243 & v243) * v246) * v246)) * ((2 - v243 / (0 - v243 & v243) * v246) * v246);
                                                                                    v248 = v249 = bool(v245) + ((v244 - v245) / (0 - v243 & v243) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v244 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v244) - (v245 > v244)) * ((0 - (0 - v243 & v243)) / (0 - v243 & v243) + 1)) * ((2 - v243 / (0 - v243 & v243) * ((2 - v243 / (0 - v243 & v243) * v247) * v247)) * ((2 - v243 / (0 - v243 & v243) * v247) * v247));
                                                                                } else {
                                                                                    v250 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v251 = (uint40.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> ((uint72.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> ((uint136.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) << 7)) << 6 | (uint136.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) << 7)) << 5 | ((uint72.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> ((uint136.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) << 7)) << 6 | (uint136.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) << 7);
                                                                                    v252 = (bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((181 << (((uint24.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> v251) << 4 | v251) >> 1)) * ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> ((uint24.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> v251) << 4 | v251)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> v251) << 4 | v251) >> 1)) * ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> ((uint24.max < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237)) >> v251) << 4 | v251)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v253 = (bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v252 + v252 >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v252 + v252 >> 1) >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v252 + v252 >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v252 + v252 >> 1) >> 1) >> 1;
                                                                                    v254 = (bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v253 + v253 >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v253 + v253 >> 1) >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v253 + v253 >> 1) + ((bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) / v253 + v253 >> 1) >> 1) >> 1;
                                                                                    v248 = v255 = bool((((v254 * v254 < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) + v254 << ((v236 ^ v233) * (v233 < v236) ^ v233)) + v231) % (MEM[224 + MEM[64]] << 1)) + (((v254 * v254 < bool(v231 * v231 << uint8.max + 1 - v237) + (v231 * v231 >> v237 | v231 * v231 % uint256.max - v231 * v231 - (v231 * v231 % uint256.max < v231 * v231) << uint8.max + 1 - v237) + (bool(v250 << uint8.max + 1 - v237) + (v250 >> v237 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v250 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v250) << uint8.max + 1 - v237))) + v254 << ((v236 ^ v233) * (v233 < v236) ^ v233)) + v231) / (MEM[224 + MEM[64]] << 1);
                                                                                }
                                                                                v256 = v248 - (v248 > MEM[96 + MEM[64]]);
                                                                            } else {
                                                                                v256 = v257 = fun_saturatingF((MEM[32] - v188) * (MEM[32] > v188), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            }
                                                                            v226 = v258 = (v256 > MEM[0]) * (v256 - MEM[0]);
                                                                        }
                                                                        v259 = ((MEM[0] + MEM[0]) * MEM[0] ^ ((MEM[0] + MEM[0]) * MEM[0] ^ v226) * (v226 < (MEM[0] + MEM[0]) * MEM[0])) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                        v260 = 0;
                                                                        if (msg.data[v107 + 64]) {
                                                                            v261 = fun_fastBalanceOf(msg.data[v107 + 32], this);
                                                                            v260 = v262 = (v259 ^ v261 * msg.data[v107 + 64] / 10000) * (v261 * msg.data[v107 + 64] / 10000 > v259) ^ v261 * msg.data[v107 + 64] / 10000;
                                                                            fun_safeTransfer(msg.data[v107 + 32], address(msg.data[v107 + 96]), v262);
                                                                        }
                                                                        if (!v260) {
                                                                            v263 = fun_fastBalanceOf(msg.data[v107 + 32], address(msg.data[v107 + 96]));
                                                                            v260 = v264 = (v259 ^ v263) * (v263 > v259) ^ v263;
                                                                        }
                                                                        if (0 == msg.data[v107 + 128]) {
                                                                            if (MEM[32] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                v265 = 10 ** 18 * ((MEM[32] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                                                                v266 = v265 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                                                                v267 = ((v265 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v266) + v266) % MEM[160 + MEM[64]];
                                                                                v268 = ((v265 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v266) + v266) / MEM[160 + MEM[64]] + (bool(v267) & v266);
                                                                                v269 = (uint16.max < v268 >> ((uint32.max < v268 >> ((uint64.max < v268 >> ((uint128.max < v268) << 7)) << 6 | (uint128.max < v268) << 7)) << 5 | ((uint64.max < v268 >> ((uint128.max < v268) << 7)) << 6 | (uint128.max < v268) << 7))) << 4 | ((uint32.max < v268 >> ((uint64.max < v268 >> ((uint128.max < v268) << 7)) << 6 | (uint128.max < v268) << 7)) << 5 | ((uint64.max < v268 >> ((uint128.max < v268) << 7)) << 6 | (uint128.max < v268) << 7));
                                                                                v270 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v268 >> ((uint8.max < v268 >> v269) << 3 | v269)))) ^ ((uint8.max < v268 >> v269) << 3 | v269)) + !v268) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v268 >> ((uint8.max < v268 >> v269) << 3 | v269)))) ^ ((uint8.max < v268 >> v269) << 3 | v269)) + !v268) - 127);
                                                                                v271 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v272 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v271) << 4 | v271)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v271) << 4 | v271);
                                                                                v273 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v272))) ^ v272) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v272))) ^ v272) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v274 = ((v273 ^ v270) * (v270 < v273) ^ v270) << 1;
                                                                                if (0 == v266) {
                                                                                    v275 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v276 = (uint40.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> ((uint72.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> ((uint136.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) << 7)) << 6 | (uint136.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) << 7)) << 5 | ((uint72.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> ((uint136.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) << 7)) << 6 | (uint136.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) << 7);
                                                                                    v277 = ((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / ((181 << (((uint24.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> v276) << 4 | v276) >> 1)) * (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> ((uint24.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> v276) << 4 | v276)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> v276) << 4 | v276) >> 1)) * (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> ((uint24.max < (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274) >> v276) << 4 | v276)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v278 = ((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v277 + v277 >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v277 + v277 >> 1) >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v277 + v277 >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v277 + v277 >> 1) >> 1) >> 1;
                                                                                    v279 = ((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v278 + v278 >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v278 + v278 >> 1) >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v278 + v278 >> 1) + (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v278 + v278 >> 1) >> 1) >> 1;
                                                                                    v280 = (v279 - (((v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (v275 >> v274 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v275 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v275) << uint8.max + 1 - v274)) / v279 < v279) << ((v273 ^ v270) * (v270 < v273) ^ v270)) + v268;
                                                                                    v281 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v282 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v280;
                                                                                    v283 = (2 - v280 / (0 - v280 & v280) * ((2 - v280 / (0 - v280 & v280) * (3 * (v280 / (0 - v280 & v280)) ^ 0x2)) * (3 * (v280 / (0 - v280 & v280)) ^ 0x2))) * ((2 - v280 / (0 - v280 & v280) * (3 * (v280 / (0 - v280 & v280)) ^ 0x2)) * (3 * (v280 / (0 - v280 & v280)) ^ 0x2));
                                                                                    v284 = (2 - v280 / (0 - v280 & v280) * ((2 - v280 / (0 - v280 & v280) * v283) * v283)) * ((2 - v280 / (0 - v280 & v280) * v283) * v283);
                                                                                    v285 = v286 = bool(v282) + ((v281 - v282) / (0 - v280 & v280) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v281 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v281) - (v282 > v281)) * ((0 - (0 - v280 & v280)) / (0 - v280 & v280) + 1)) * ((2 - v280 / (0 - v280 & v280) * ((2 - v280 / (0 - v280 & v280) * v284) * v284)) * ((2 - v280 / (0 - v280 & v280) * v284) * v284));
                                                                                } else {
                                                                                    v287 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v288 = (uint40.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> ((uint72.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> ((uint136.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) << 7)) << 6 | (uint136.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) << 7)) << 5 | ((uint72.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> ((uint136.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) << 7)) << 6 | (uint136.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) << 7);
                                                                                    v289 = (bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((181 << (((uint24.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> v288) << 4 | v288) >> 1)) * ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> ((uint24.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> v288) << 4 | v288)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> v288) << 4 | v288) >> 1)) * ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> ((uint24.max < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274)) >> v288) << 4 | v288)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v290 = (bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v289 + v289 >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v289 + v289 >> 1) >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v289 + v289 >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v289 + v289 >> 1) >> 1) >> 1;
                                                                                    v291 = (bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v290 + v290 >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v290 + v290 >> 1) >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v290 + v290 >> 1) + ((bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) / v290 + v290 >> 1) >> 1) >> 1;
                                                                                    v285 = v292 = bool((((v291 * v291 < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) + v291 << ((v273 ^ v270) * (v270 < v273) ^ v270)) + v268) % (MEM[224 + MEM[64]] << 1)) + (((v291 * v291 < bool(v268 * v268 << uint8.max + 1 - v274) + (v268 * v268 >> v274 | v268 * v268 % uint256.max - v268 * v268 - (v268 * v268 % uint256.max < v268 * v268) << uint8.max + 1 - v274) + (bool(v287 << uint8.max + 1 - v274) + (v287 >> v274 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v287 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v287) << uint8.max + 1 - v274))) + v291 << ((v273 ^ v270) * (v270 < v273) ^ v270)) + v268) / (MEM[224 + MEM[64]] << 1);
                                                                                }
                                                                                v293 = v294 = (MEM[0] > !(v285 - (v285 > MEM[96 + MEM[64]])) + (v285 - (v285 > MEM[96 + MEM[64]]))) * (MEM[0] - (!(v285 - (v285 > MEM[96 + MEM[64]])) + (v285 - (v285 > MEM[96 + MEM[64]]))));
                                                                            } else {
                                                                                v295 = fun_saturatingF(MEM[32] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v293 = v296 = (MEM[0] > !v295 + v295) * (MEM[0] - (!v295 + v295));
                                                                            }
                                                                        } else if (MEM[0] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                            v297 = 10 ** 18 * ((MEM[0] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                                                            v298 = (10 ** 18 * ((MEM[0] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v297) + v297;
                                                                            v299 = v298 / MEM[192 + MEM[64]] + (bool(v298 % MEM[192 + MEM[64]]) & v297);
                                                                            v300 = (uint16.max < v299 >> ((uint32.max < v299 >> ((uint64.max < v299 >> ((uint128.max < v299) << 7)) << 6 | (uint128.max < v299) << 7)) << 5 | ((uint64.max < v299 >> ((uint128.max < v299) << 7)) << 6 | (uint128.max < v299) << 7))) << 4 | ((uint32.max < v299 >> ((uint64.max < v299 >> ((uint128.max < v299) << 7)) << 6 | (uint128.max < v299) << 7)) << 5 | ((uint64.max < v299 >> ((uint128.max < v299) << 7)) << 6 | (uint128.max < v299) << 7));
                                                                            v301 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v299 >> ((uint8.max < v299 >> v300) << 3 | v300)))) ^ ((uint8.max < v299 >> v300) << 3 | v300)) + !v299) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v299 >> ((uint8.max < v299 >> v300) << 3 | v300)))) ^ ((uint8.max < v299 >> v300) << 3 | v300)) + !v299) - 127);
                                                                            v302 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                            v303 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v302) << 4 | v302)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v302) << 4 | v302);
                                                                            v304 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v303))) ^ v303) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v303))) ^ v303) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                            v305 = ((v304 ^ v301) * (v301 < v304) ^ v301) << 1;
                                                                            if (0 == v297) {
                                                                                v306 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v307 = (uint40.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> ((uint72.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> ((uint136.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) << 7)) << 6 | (uint136.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) << 7)) << 5 | ((uint72.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> ((uint136.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) << 7)) << 6 | (uint136.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) << 7);
                                                                                v308 = ((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / ((181 << (((uint24.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> v307) << 4 | v307) >> 1)) * (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> ((uint24.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> v307) << 4 | v307)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> v307) << 4 | v307) >> 1)) * (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> ((uint24.max < (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305) >> v307) << 4 | v307)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                v309 = ((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v308 + v308 >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v308 + v308 >> 1) >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v308 + v308 >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v308 + v308 >> 1) >> 1) >> 1;
                                                                                v310 = ((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v309 + v309 >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v309 + v309 >> 1) >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v309 + v309 >> 1) + (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v309 + v309 >> 1) >> 1) >> 1;
                                                                                v311 = (v310 - (((v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (v306 >> v305 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v306 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v306) << uint8.max + 1 - v305)) / v310 < v310) << ((v304 ^ v301) * (v301 < v304) ^ v301)) + v299;
                                                                                v312 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v313 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v311;
                                                                                v314 = (2 - v311 / (0 - v311 & v311) * ((2 - v311 / (0 - v311 & v311) * (3 * (v311 / (0 - v311 & v311)) ^ 0x2)) * (3 * (v311 / (0 - v311 & v311)) ^ 0x2))) * ((2 - v311 / (0 - v311 & v311) * (3 * (v311 / (0 - v311 & v311)) ^ 0x2)) * (3 * (v311 / (0 - v311 & v311)) ^ 0x2));
                                                                                v315 = (2 - v311 / (0 - v311 & v311) * ((2 - v311 / (0 - v311 & v311) * v314) * v314)) * ((2 - v311 / (0 - v311 & v311) * v314) * v314);
                                                                                v316 = v317 = bool(v313) + ((v312 - v313) / (0 - v311 & v311) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v312 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v312) - (v313 > v312)) * ((0 - (0 - v311 & v311)) / (0 - v311 & v311) + 1)) * ((2 - v311 / (0 - v311 & v311) * ((2 - v311 / (0 - v311 & v311) * v315) * v315)) * ((2 - v311 / (0 - v311 & v311) * v315) * v315));
                                                                            } else {
                                                                                v318 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v319 = (uint40.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> ((uint72.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> ((uint136.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) << 7)) << 6 | (uint136.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) << 7)) << 5 | ((uint72.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> ((uint136.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) << 7)) << 6 | (uint136.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) << 7);
                                                                                v320 = (bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((181 << (((uint24.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> v319) << 4 | v319) >> 1)) * ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> ((uint24.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> v319) << 4 | v319)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> v319) << 4 | v319) >> 1)) * ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> ((uint24.max < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305)) >> v319) << 4 | v319)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                v321 = (bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v320 + v320 >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v320 + v320 >> 1) >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v320 + v320 >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v320 + v320 >> 1) >> 1) >> 1;
                                                                                v322 = (bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v321 + v321 >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v321 + v321 >> 1) >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v321 + v321 >> 1) + ((bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) / v321 + v321 >> 1) >> 1) >> 1;
                                                                                v316 = v323 = bool((((v322 * v322 < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) + v322 << ((v304 ^ v301) * (v301 < v304) ^ v301)) + v299) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v322 * v322 < bool(v299 * v299 << uint8.max + 1 - v305) + (v299 * v299 >> v305 | v299 * v299 % uint256.max - v299 * v299 - (v299 * v299 % uint256.max < v299 * v299) << uint8.max + 1 - v305) + (bool(v318 << uint8.max + 1 - v305) + (v318 >> v305 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v318 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v318) << uint8.max + 1 - v305))) + v322 << ((v304 ^ v301) * (v301 < v304) ^ v301)) + v299) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                                                            }
                                                                            v293 = v324 = (MEM[32] > !(v316 - (v316 > MEM[128 + MEM[64]])) + (v316 - (v316 > MEM[128 + MEM[64]]))) * (MEM[32] - (!(v316 - (v316 > MEM[128 + MEM[64]])) + (v316 - (v316 > MEM[128 + MEM[64]]))));
                                                                        } else {
                                                                            v325 = fun_saturatingF(MEM[0] + (v260 - v260 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            v293 = v326 = (MEM[32] > !v325 + v325) * (MEM[32] - (!v325 + v325));
                                                                        }
                                                                        if (v293 < msg.data[v107 + 160]) {
                                                                            v327 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v107 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                            require(v327, MEM[64], RETURNDATASIZE());
                                                                            require((32 > RETURNDATASIZE()) | MEM[0] >> 160, TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[160 + v107], v293));
                                                                            revert();
                                                                        } else {
                                                                            if (v293 > 1) {
                                                                                MEM[MEM[64] + (msg.data[v107 + 128] << 5) + 32] = v293;
                                                                                MEM[(0x20 ^ msg.data[v107 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                v328 = msg.data[v107 + 96].swap(v5, v5, address(msg.data[v107]), 128, 0).gas(msg.gas);
                                                                                if (!v328) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                }
                                                                            }
                                                                            v109 = v329 = 1;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        require(v107 + v106 - v107 >= 192);
                                        require(!(msg.data[v107] - address(msg.data[v107])));
                                        require(!(msg.data[v107 + 64] - bool(msg.data[v107 + 64])));
                                        v330 = v331 = msg.data[v107 + 96];
                                        require(!(msg.data[v107 + 128] - address(msg.data[v107 + 128])));
                                        require(!(msg.data[v107 + 160] - address(msg.data[v107 + 160])));
                                        v332 = v333 = msg.data[v107 + 160] ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[v107 + 160]) * msg.data[v107 + 64];
                                        v334 = fun_fastBalanceOf(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[v107 + 160]) * msg.data[v107 + 64], this);
                                        if (!msg.data[v107 + 64]) {
                                            v335 = msg.data[v107 + 128].sellGem(address(msg.data[v107]), 0x95991276000000000000000000000000, v334 * msg.data[v107 + 32] / 10000).gas(msg.gas);
                                            if (!v335) {
                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                MEM[52] = 0;
                                                v336 = v337 = MEM[0];
                                                if (v337 >= v331) {
                                                    v109 = v338 = 1;
                                                }
                                            }
                                        } else {
                                            v339 = msg.data[v107 + 128].tout().gas(msg.gas);
                                            if (!v339) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                v336 = v340 = v334 * msg.data[v107 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v340 >= v331) {
                                                    v341 = msg.data[v107 + 128].buyGem(address(msg.data[v107]), 0x8d7ef9bb000000000000000000000000, v340).gas(msg.gas);
                                                    if (!v341) {
                                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                                    } else {
                                                        require(RETURNDATASIZE() > 31);
                                                        MEM[52] = 0;
                                                        v109 = v342 = 1;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    require(v107 + v106 - v107 >= uint8.max + 1);
                                    require(!(msg.data[v107] - address(msg.data[v107])));
                                    require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                    require(!(msg.data[v107 + 96] - bool(msg.data[v107 + 96])));
                                    require(msg.data[v107 + 192] <= uint64.max);
                                    require(v107 + msg.data[v107 + 192] + 31 < v107 + v106);
                                    require(msg.data[v107 + msg.data[v107 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v343 = new bytes[](msg.data[v107 + msg.data[v107 + 192]]);
                                    require(!((v343 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v343 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v343)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v107 + msg.data[v107 + 192] + 32 + msg.data[v107 + msg.data[v107 + 192]] <= v107 + v106);
                                    CALLDATACOPY(v343.data, v107 + msg.data[v107 + 192] + 32, msg.data[v107 + msg.data[v107 + 192]]);
                                    v343[msg.data[v107 + msg.data[v107 + 192]]] = 0;
                                    require(!msg.data[v107 + 128] | (96 == msg.data[v107 + 128] * 96 / msg.data[v107 + 128]), Panic(17)); // arithmetic overflow or underflow
                                    require(!msg.data[v107 + 160] | (96 == msg.data[v107 + 160] * 96 / msg.data[v107 + 160]), Panic(17)); // arithmetic overflow or underflow
                                    require(!((msg.data[v107 + 64] > 10000) | bool(msg.data[v107 + 224] >> 128) | bool(msg.data[v107 + 128] * 96 >> 128) | bool(msg.data[v107 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                    MCOPY(211 + MEM[64], v343.data, v343.length);
                                    MEM[179 + MEM[64]] = msg.data[v107 + 64];
                                    MEM[177 + MEM[64]] = msg.data[v107 + 32];
                                    MEM[157 + MEM[64]] = this;
                                    MEM[136 + MEM[64]] = msg.data[v107 + 160] * 96;
                                    MEM[120 + MEM[64]] = msg.data[v107 + 128] * 96;
                                    MEM[104 + MEM[64]] = msg.data[v107 + 224];
                                    MEM[88 + MEM[64]] = address(msg.data[v107]);
                                    MEM[68 + MEM[64]] = 111 + v343.length;
                                    MEM[36 + MEM[64]] = 32;
                                    MEM[4 + MEM[64]] = 0x48c89491;
                                    MEM8[168 + MEM[64]] = msg.data[v107 + 96] & 0xFF;
                                    MEM[64] = MEM[64] + v343.length + 211;
                                    require((_fun_ekuboPay ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                    v344 = ___function_selector__;
                                    require(!v344, ReentrantCallback(v344));
                                    ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                                    v345 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1b610x1b74V0x1ba4V0x27b4V0x31baV0x1906.length], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v346 = v347 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v346 = new bytes[](RETURNDATASIZE());
                                        require(!((v346 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v346 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v346)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v346.data, 0, RETURNDATASIZE());
                                    }
                                    require(v345, v346 + 32, MEM[v346]);
                                    v348 = ___function_selector__;
                                    require(!v348, CallbackNotSpent(v348));
                                }
                            } else {
                                require(v107 + v106 - v107 >= 128);
                                require(!(msg.data[v107] - address(msg.data[v107])));
                                require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v107 + 32])) {
                                    v349 = v350 = fun_fastBalanceOf(msg.data[v107 + 32], this);
                                } else {
                                    v349 = v351 = this.balance;
                                }
                                if (v349 > msg.data[v107 + 64]) {
                                    v352 = (v349 * msg.data[v107 + 96] / 10000 ^ v349 - msg.data[v107 + 64]) * (v349 - msg.data[v107 + 64] > v349 * msg.data[v107 + 96] / 10000) ^ v349 - msg.data[v107 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v107 + 32]))) {
                                        fun_safeTransfer(msg.data[v107 + 32], address(msg.data[v107]), v352);
                                    } else {
                                        fun_safeTransferETH(msg.data[v107], v352);
                                    }
                                }
                                v109 = v353 = 1;
                            }
                        } else {
                            require(v107 + v106 - v107 >= 160);
                            require(!(msg.data[v107] - address(msg.data[v107])));
                            require(!(msg.data[v107 + 64] - address(msg.data[v107 + 64])));
                            require(msg.data[v107 + 128] <= uint64.max);
                            require(v107 + msg.data[v107 + 128] + 31 < v107 + v106);
                            require(msg.data[v107 + msg.data[v107 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v354 = new bytes[](msg.data[v107 + msg.data[v107 + 128]]);
                            require(!((v354 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v354 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v354)), Panic(65)); // failed memory allocation (too much memory)
                            require(v107 + msg.data[v107 + 128] + 32 + msg.data[v107 + msg.data[v107 + 128]] <= v107 + v106);
                            CALLDATACOPY(v354.data, v107 + msg.data[v107 + 128] + 32, msg.data[v107 + msg.data[v107 + 128]]);
                            v354[msg.data[v107 + msg.data[v107 + 128]]] = 0;
                            require(address(msg.data[v107 + 64]) != 0x22d473030f116ddee9f6b43ac78ba3, ConfusedDeputy());
                            v355 = v356 = 0;
                            if (address(msg.data[v107]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v107])) {
                                    v357 = fun_fastBalanceOf(msg.data[v107], this);
                                    if (v357 * msg.data[v107 + 32] % uint256.max - v357 * msg.data[v107 + 32] == v357 * msg.data[v107 + 32] % uint256.max < v357 * msg.data[v107 + 32]) {
                                        v358 = v359 = v357 * msg.data[v107 + 32] / 10000;
                                    } else {
                                        v358 = v360 = (v357 * msg.data[v107 + 32] - v357 * msg.data[v107 + 32] % 10000 >> 4 | v357 * msg.data[v107 + 32] % uint256.max - v357 * msg.data[v107 + 32] - (v357 * msg.data[v107 + 32] % uint256.max < v357 * msg.data[v107 + 32]) - (v357 * msg.data[v107 + 32] % 10000 > v357 * msg.data[v107 + 32]) << 252) * 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91;
                                    }
                                    require(msg.data[v107 + 96] <= msg.data[v107 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v354.length >= msg.data[v107 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v361 = 0;
                                    v354[msg.data[v107 + 96]] = v358;
                                    if (address(msg.data[v107]) - address(msg.data[v107 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v107], address(msg.data[v107 + 64]), v358);
                                    }
                                } else {
                                    require(!msg.data[v107 + 96], InvalidOffset());
                                    v361 = v362 = 0;
                                }
                            } else {
                                v363 = this.balance;
                                v355 = v363 * msg.data[v107 + 32] / 10000;
                                if (0 == !v354.length) {
                                    require(msg.data[v107 + 96] <= msg.data[v107 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v354.length >= msg.data[v107 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v361 = v364 = 0;
                                    v354[msg.data[v107 + 96]] = v355;
                                } else {
                                    require(!msg.data[v107 + 96], InvalidOffset());
                                    v365 = address(msg.data[v107 + 64]).call().value(v355).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v366 = v367 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v366 = new bytes[](RETURNDATASIZE());
                                        require(!((v366 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v366 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v366)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v366.data, 0, RETURNDATASIZE());
                                    }
                                    require(v365, v366 + 32, MEM[v366]);
                                }
                            }
                            v368 = address(msg.data[v107 + 64]).call(MEM[v1b610x1b74V0x1ba4V0x30beV0x1906.data:v1b610x1b74V0x1ba4V0x30beV0x1906.data + v1b610x1b74V0x1ba4V0x30beV0x1906.length], MEM[v44e0V0x30ccV0x1906:v44e0V0x30ccV0x1906 + v44e0V0x30ccV0x1906]).value(v355).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v369 = v370 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v369 = new bytes[](RETURNDATASIZE());
                                require(!((v369 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v369 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v369)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v369.data, 0, RETURNDATASIZE());
                            }
                            require(v368, v369 + 32, MEM[v369]);
                            v371 = v372 = !MEM[v369];
                            if (v372) {
                                v371 = v373 = !(address(msg.data[v107 + 64])).code.size;
                            }
                            require(!v371, InvalidTarget());
                        }
                        v109 = v374 = 1;
                    } else {
                        require(v107 + v106 - v107 >= 192);
                        require(!(msg.data[v107] - address(msg.data[v107])));
                        require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                        require(!(msg.data[v107 + 96] - address(msg.data[v107 + 96])));
                        require(!(msg.data[v107 + 128] - uint24(msg.data[v107 + 128])));
                        v375 = v376 = 0;
                        if (msg.data[v107 + 64]) {
                            v377 = fun_fastBalanceOf(address(msg.data[v107 + 32]), this);
                            v375 = v378 = v377 * msg.data[v107 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v107 + 32]), address(msg.data[v107 + 96]), v378);
                        }
                        v379 = address(msg.data[v107 + 96]).getReserves().gas(msg.gas);
                        if (!v379) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v380 = !v375;
                            if (bool(v375)) {
                                v380 = v381 = msg.data[v107 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v380) {
                                v382 = fun_fastBalanceOf(address(msg.data[v107 + 32]), address(msg.data[v107 + 96]));
                                v375 = v383 = _SafeSub(v382, MEM[0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 + MEM[0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            if ((10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 * MEM[(msg.data[v107 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 + MEM[0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[160 + v107]) {
                                v384 = address(msg.data[v107 + 96]).token0().gas(msg.gas);
                                require(v384, MEM[64], RETURNDATASIZE());
                                require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, MEM[0], msg.data[160 + v107], (10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 * MEM[(msg.data[v107 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 + MEM[0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5] * 10000)));
                            } else {
                                MEM[MEM[64] + ((msg.data[v107 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 * MEM[(msg.data[v107 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v107 + 128] >> 8)) * v375 + MEM[0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5] * 10000);
                                MEM[MEM[64] + (0x20 ^ (msg.data[v107 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v385 = address(msg.data[v107 + 96]).swap(v5, v5, address(msg.data[v107]), 128, 0).gas(msg.gas);
                                if (!v385) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v109 = v386 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v107 + v106 - v107 >= 128);
                    require(!(msg.data[v107] - address(msg.data[v107])));
                    require(msg.data[v107 + 64] <= uint64.max);
                    require(v107 + msg.data[v107 + 64] + 31 < v107 + v106);
                    require(msg.data[v107 + msg.data[v107 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v387 = new bytes[](msg.data[v107 + msg.data[v107 + 64]]);
                    require(!((v387 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v387 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v387)), Panic(65)); // failed memory allocation (too much memory)
                    require(v107 + msg.data[v107 + 64] + 32 + msg.data[v107 + msg.data[v107 + 64]] <= v107 + v106);
                    CALLDATACOPY(v387.data, v107 + msg.data[v107 + 64] + 32, msg.data[v107 + msg.data[v107 + 64]]);
                    v387[msg.data[v107 + msg.data[v107 + 64]]] = 0;
                    v330 = v388 = msg.data[v107 + 96];
                    v389 = v390 = bytes20(MEM[v387.data]);
                    if (v387.length < 20) {
                        v389 = v391 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v387.length << 3) & MEM[v387.data]);
                    }
                    v392 = (v389 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v392) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE());
                        require(!MEM[0] | (MEM[0] * msg.data[v107 + 32] / MEM[0] == msg.data[v107 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v336 = v393 = MEM[0] * msg.data[v107 + 32] / 10000;
                        v394 = new struct(3);
                        require(!((v394 + 96 > uint64.max) | (v394 + 96 < v394)), Panic(65)); // failed memory allocation (too much memory)
                        v394.word0 = 40;
                        CALLDATACOPY(v394.data, msg.data.length, 64);
                        v395 = v396 = this;
                        require(v393 <= int256.max, Panic(17)); // arithmetic overflow or underflow
                        while (1) {
                            require(MEM[v387] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v397 = MEM[20 + v387];
                            v332 = v398 = MEM[64 + v387];
                            if (0 == !uint8(MEM[21 + v387])) {
                                if (uint8(MEM[21 + v387]) - 1) {
                                    if (uint8(MEM[21 + v387]) - 2) {
                                        require(0 != (uint8(MEM[21 + v387]) == 3), UnknownForkId(uint8(MEM[21 + v387])));
                                        MEM[32] = (address(v397) < address(v398)) * (v398 ^ v397) ^ v397;
                                        MEM[0] = 0;
                                        MEM[12] = (v398 ^ (address(v397) < address(v398)) * (v398 ^ v397)) << 96;
                                        MEM8[11] = 0xff & 0xFF;
                                        MEM[40 + v394] = v397;
                                        MEM[20 + v394] = v395;
                                        v394.word0 = v394.word0.length;
                                        v399 = MEM[64];
                                        MCOPY(196 + v399, v394, 32 + v394.word0.length);
                                        MEM[164 + v399] = 160;
                                        MEM[132 + v399] = address(MEM[44 + v387]);
                                        MEM[100 + v399] = v336;
                                        MEM[68 + v399] = address(v397) < address(v398);
                                        MEM[36 + v399] = address(msg.data[v107]) ^ (this ^ address(msg.data[v107])) * (MEM[v387] > 64);
                                        MEM[16 + v399] = 0x128acb08000000000000000000000000;
                                        require((_fun_ekuboPay ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                                        v400 = ___function_selector__;
                                        require(!v400, ReentrantCallback(v400));
                                        ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                                        v401 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1aefbV0x1906 + 32:v1aefbV0x1906 + 32 + 196 + v2c0dV0x1906.word0.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v402 = v403 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v402 = new bytes[](RETURNDATASIZE());
                                            require(!((v402 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v402 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v402)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v402.data, 0, RETURNDATASIZE());
                                        }
                                        require(v401, v404 + 32, MEM[v404]);
                                        v405 = ___function_selector__;
                                        require(!v405, CallbackNotSpent(v405));
                                    } else {
                                        MEM[32] = (address(v397) < address(v398)) * (v398 ^ v397) ^ v397;
                                        MEM[0] = 0;
                                        MEM[12] = (v398 ^ (address(v397) < address(v398)) * (v398 ^ v397)) << 96;
                                        MEM8[11] = 0xff & 0xFF;
                                        MEM[40 + v394] = v397;
                                        MEM[20 + v394] = v395;
                                        v394.word0 = v394.word0.length;
                                        v399 = v406 = MEM[64];
                                        MCOPY(196 + v406, v394, 32 + v394.word0.length);
                                        MEM[164 + v406] = 160;
                                        MEM[132 + v406] = address(MEM[44 + v387]);
                                        MEM[100 + v406] = v336;
                                        MEM[68 + v406] = address(v397) < address(v398);
                                        MEM[36 + v406] = address(msg.data[v107]) ^ (this ^ address(msg.data[v107])) * (MEM[v387] > 64);
                                        MEM[16 + v406] = 0x128acb08000000000000000000000000;
                                        require((_fun_ekuboPay ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                                        v407 = ___function_selector__;
                                        require(!v407, ReentrantCallback(v407));
                                        ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                                        v408 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1ae61V0x1906 + 32:v1ae61V0x1906 + 32 + 196 + v2c0dV0x1906.word0.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v402 = v409 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v402 = v410 = new bytes[](RETURNDATASIZE());
                                            require(!((v410 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v410 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v410)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v410.data, 0, RETURNDATASIZE());
                                        }
                                        require(v408, v411 + 32, MEM[v411]);
                                        v412 = ___function_selector__;
                                        require(!v412, CallbackNotSpent(v412));
                                    }
                                } else {
                                    MEM[32] = (address(v397) < address(v398)) * (v398 ^ v397) ^ v397;
                                    MEM[0] = 0;
                                    MEM[12] = (v398 ^ (address(v397) < address(v398)) * (v398 ^ v397)) << 96;
                                    MEM8[11] = 0xff & 0xFF;
                                    MEM[40 + v394] = v397;
                                    MEM[20 + v394] = v395;
                                    v394.word0 = v394.word0.length;
                                    v399 = v413 = MEM[64];
                                    MCOPY(196 + v413, v394, 32 + v394.word0.length);
                                    MEM[164 + v413] = 160;
                                    MEM[132 + v413] = address(MEM[44 + v387]);
                                    MEM[100 + v413] = v336;
                                    MEM[68 + v413] = address(v397) < address(v398);
                                    MEM[36 + v413] = address(msg.data[v107]) ^ (this ^ address(msg.data[v107])) * (MEM[v387] > 64);
                                    MEM[16 + v413] = 0x128acb08000000000000000000000000;
                                    require((_fun_ekuboPay ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                                    v414 = ___function_selector__;
                                    require(!v414, ReentrantCallback(v414));
                                    ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                                    v415 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1adc7V0x1906 + 32:v1adc7V0x1906 + 32 + 196 + v2c0dV0x1906.word0.length], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v402 = v416 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v402 = v417 = new bytes[](RETURNDATASIZE());
                                        require(!((v417 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v417 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v417)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v417.data, 0, RETURNDATASIZE());
                                    }
                                    require(v415, v418 + 32, MEM[v418]);
                                    v419 = ___function_selector__;
                                    require(!v419, CallbackNotSpent(v419));
                                }
                            } else {
                                MEM[32] = (address(v397) < address(v398)) * (v398 ^ v397) ^ v397;
                                MEM[0] = 0;
                                MEM[12] = (v398 ^ (address(v397) < address(v398)) * (v398 ^ v397)) << 96;
                                MEM8[11] = 0xff & 0xFF;
                                MEM[40 + v394] = v397;
                                MEM[20 + v394] = v395;
                                v394.word0 = v394.word0.length;
                                v399 = v420 = MEM[64];
                                MCOPY(196 + v420, v394, 32 + v394.word0.length);
                                MEM[164 + v420] = 160;
                                MEM[132 + v420] = address(MEM[44 + v387]);
                                MEM[100 + v420] = v336;
                                MEM[68 + v420] = address(v397) < address(v398);
                                MEM[36 + v420] = address(msg.data[v107]) ^ (this ^ address(msg.data[v107])) * (MEM[v387] > 64);
                                MEM[16 + v420] = 0x128acb08000000000000000000000000;
                                require((_fun_ekuboPay ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                                v421 = ___function_selector__;
                                require(!v421, ReentrantCallback(v421));
                                ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                                v422 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1b610x1b74V0x1ba4V0x2b9cV0x1906]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1ad2dV0x1906 + 32:v1ad2dV0x1906 + 32 + 196 + v2c0dV0x1906.word0.length], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v402 = v423 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v402 = v424 = new bytes[](RETURNDATASIZE());
                                    require(!((v424 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v424 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v424)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v424.data, 0, RETURNDATASIZE());
                                }
                                require(v422, v425 + 32, MEM[v425]);
                                v426 = ___function_selector__;
                                require(!v426, CallbackNotSpent(v426));
                            }
                            require(v402 + MEM[v402] - v402 >= 64);
                            v336 = v427 = 0 - ((MEM[v402 + 64] ^ MEM[v402 + 32]) * (address(v397) < address(v398)) ^ MEM[v402 + 32]);
                            require(v427 >= 0, Panic(17)); // arithmetic overflow or underflow
                            if (MEM[v387] <= 64) {
                                if (v427 >= v388) {
                                    v109 = v428 = 1;
                                }
                            } else {
                                v395 = v429 = this;
                                require(MEM[v387] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v387 = v387 + 44;
                                MEM[v387] = MEM[v387] - 44;
                                v394.word0 = 40;
                            }
                        }
                    }
                }
                revert(TooMuchSlippage(v332, 0x97a6f3b9000000000000000000000000, v330, v336));
            } else {
                require(v107 + v106 - v107 >= 288);
                require(!(msg.data[v107] - address(msg.data[v107])));
                require(v107 + v106 - (v107 + 32) >= 128);
                v430 = new struct(3);
                require(!((v430 + 96 > uint64.max) | (v430 + 96 < v430)), Panic(65)); // failed memory allocation (too much memory)
                require(v107 + v106 - (v107 + 32) >= 64);
                v431 = new struct(2);
                require(!((v431 + 64 > uint64.max) | (v431 + 64 < v431)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v107 + 32] - address(msg.data[v107 + 32])));
                v431.word0 = msg.data[v107 + 32];
                v431.word1 = msg.data[v107 + 32 + 32];
                v430.word0 = v431;
                v430.word1 = msg.data[v107 + 32 + 64];
                v430.word2 = msg.data[v107 + 32 + 96];
                require(!(msg.data[v107 + 160] - address(msg.data[v107 + 160])));
                require(msg.data[v107 + 192] <= uint64.max);
                require(v107 + msg.data[v107 + 192] + 31 < v107 + v106);
                require(msg.data[v107 + msg.data[v107 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v432 = new bytes[](msg.data[v107 + msg.data[v107 + 192]]);
                require(!((v432 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v432 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v107 + msg.data[v107 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v432)), Panic(65)); // failed memory allocation (too much memory)
                require(v107 + msg.data[v107 + 192] + 32 + msg.data[v107 + msg.data[v107 + 192]] <= v107 + v106);
                CALLDATACOPY(v432.data, v107 + msg.data[v107 + 192] + 32, msg.data[v107 + msg.data[v107 + 192]]);
                v432[msg.data[v107 + msg.data[v107 + 192]]] = 0;
                require(!(msg.data[v107 + 224] - address(msg.data[v107 + 224])));
                v433, v434 = fun_permitToTransferDetails(v430, address(msg.data[v107]));
                v435 = new struct(4);
                require(!((v435 + 128 > uint64.max) | (v435 + 128 < v435)), Panic(65)); // failed memory allocation (too much memory)
                v435.word0 = address(MEM[v430.word0]);
                v435.word1 = v433;
                v435.word2 = address(msg.data[v107 + 160]);
                v435.word3 = 1;
                MEM[v435 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v435 - 32] = MEM[v435 - 32];
                v436 = new struct(4);
                require(!((v436 + 128 > uint64.max) | (v436 + 128 < v436)), Panic(65)); // failed memory allocation (too much memory)
                v436.word0 = address(msg.data[v107 + 224]);
                v436.word1 = msg.data[v107 + (uint8.max + 1)];
                v436.word2 = address(_fun_ekuboPay);
                v436.word3 = 1;
                MEM[v436 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v436 - 32] = MEM[v436 - 32];
                v437 = fun_fastBalanceOf(msg.data[v107 + 224], this);
                v438 = fun_unsafeMulDiv(v433, (msg.data[v107 + (uint8.max + 1)] ^ v437) * (v437 > msg.data[v107 + (uint8.max + 1)]) ^ v437, msg.data[v107 + (uint8.max + 1)]);
                v434.word1 = v438;
                fun_safeTransfer(msg.data[v107 + 224], address(msg.data[v107 + 160]), (msg.data[v107 + (uint8.max + 1)] ^ v437) * (v437 > msg.data[v107 + (uint8.max + 1)]) ^ v437);
                require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                v439 = new bytes[](162);
                MEM[v439.data] = 'Consideration consideration)';
                MCOPY(v439 + 60, v440.data, v440.length);
                MEM[v439 + v440.length + 60] = 0;
                MCOPY(v439 + v440.length + 60, v441.data, v441.length);
                MEM[v439 + v440.length + v441.length + 60] = 0;
                require(!((v439 + 224 > uint64.max) | (v439 + 224 < v439)), Panic(65)); // failed memory allocation (too much memory)
                MCOPY(32 + MEM[64], v430.word0, 64);
                MCOPY(96 + MEM[64], 32 + v430, 64);
                MCOPY(160 + MEM[64], v434, 64);
                MCOPY(352 + MEM[64], v439, 194);
                MCOPY(384 + (MEM[64] + v439.length), v432, 32 + v432.length);
                v442 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v5, v5, v5, v5, v5, v5, address(msg.data[v107 + 160]), keccak256(MEM[v28b6V0x1906 - 32:v28b6V0x1906 - 32 + 160]), 320, 514).gas(msg.gas);
                if (!v442) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v28b6V0x1906 - 32:v28b6V0x1906 - 32 + 160]), keccak256(MEM[v2866V0x1906 - 32:v2866V0x1906 - 32 + 160]))(uint128(v438), uint128(v438));
                    v109 = v443 = 1;
                }
            }
            if (!v109) {
                v444 = new uint256[](v106);
                CALLDATACOPY(v444.data, v107, v106);
                revert(ActionInvalid(v102, bytes4(msg.data[varg3 + msg.data[v104] + 68]), v444));
            } else {
                v104 = v104 + 32;
                v102 = v102 + 1;
            }
        }
        v445 = v446 = !varg2;
        if (v446) {
            v445 = v447 = !varg1;
        }
        if (!v445) {
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
                v448 = v449 = fun_fastBalanceOf(varg1, this);
            } else {
                v448 = v450 = this.balance;
            }
            require(v448 >= varg2, TooMuchSlippage(varg1, 0x97a6f3b9000000000000000000000000, varg2, v448));
            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
                fun_safeTransfer(varg1, varg0, v448);
            } else {
                fun_safeTransferETH(varg0, v448);
            }
        }
        require(!((_fun_ekuboPay ^ varg4) << 96), PayerSpent());
        _fun_ekuboPay = 0;
        require(!_fun_transferFrom, WitnessNotSpent(_fun_transferFrom));
        return 1;
    }
}

function 0x67c4a3b0() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x352650ac2653508d946c4912b07895b22edd84cd;
}

function receive() public payable { 
}

function fun_fastBalanceOf(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.balanceOf(0x70a08231000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE());
    return MEM[0];
}

function fun_safeTransfer(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(0xa9059cbb000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
        MEM[52] = 0;
        return ;
    }
}

function fun_safeTransferETH(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function fun_permitToTransferDetails(struct(3) varg0, address varg1) private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word1 = 0;
    v0.word0 = varg1;
    v0.word1 = MEM[varg0.word0.length + 32];
    return MEM[varg0.word0.length + 32], v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function fun_transferFrom(struct(3) varg0, struct(2) varg1, bytes varg2, uint256 varg3) private { 
    v0 = _fun_transferFrom;
    _fun_transferFrom = 0;
    require(v0, ConfusedDeputy());
    v1 = new bytes[](175);
    require(!((v1 + 224 > uint64.max) | (v1 + 224 < v1)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v1.data] = 'SlippageAndActions slippageAndAc';
    MEM[v1 + 64] = 'tions)SlippageAndActions(address';
    MEM[v1 + 96] = ' recipient,address buyToken,uint';
    MEM[v1 + 128] = '256 minAmountOut,bytes[] actions';
    MEM[v1 + 160] = ')TokenPermissions(address token,';
    MEM[v1 + 192] = 'uint256 amount)';
    require(!varg3, ForwarderNotAllowed());
    MCOPY(32 + MEM[64], varg0.word0, 64);
    MCOPY(96 + MEM[64], 32 + varg0, 64);
    MCOPY(160 + MEM[64], varg1, 64);
    MCOPY(352 + MEM[64], v1, 207);
    MCOPY(384 + (MEM[64] + v1.length), varg2, 32 + varg2.length);
    v2, /* uint256 */ v3 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v4, v4, v4, v4, v4, v4, address(_fun_ekuboPay), v0, 320, 527).gas(msg.gas);
    if (!v2) {
        v5 = RETURNDATASIZE();
        revert(v4, v4, v4, v4, v4, v4, v4, v4, v4, 527);
    } else {
        return ;
    }
}

function allocate_and_zero_memory_struct_struct_PoolKey() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function fun_safeApproveIfBelow(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 32;
    v2, v3 = address(varg0).allowance(this, address(varg1)).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v4 = 0;
    if (v2) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v0 - MEM[64] >= v1);
    }
    if (v3 < varg2) {
        if (v3) {
            v6 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
            if (!v6) {
                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                revert(uint24(MEM[64]), RETURNDATASIZE());
            } else {
                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            }
        }
        v7 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, uint256.max).gas(msg.gas);
        if (!v7) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            MEM[52] = 0;
        }
    }
    return ;
}

function fun_unsafeMulDiv(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * varg1;
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 / varg2;
    } else {
        v1 = varg0 * varg1 % varg2;
        v2 = 0 - varg2 & varg2;
        v3 = varg2 / v2;
        v4 = (2 - v3 * ((2 - v3 * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2))) * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2)))) * ((2 - v3 * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2))) * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2)));
        return ((v0 - v1) / v2 | (varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0) - (v1 > v0)) * ((0 - v2) / v2 + 1)) * ((2 - v3 * ((2 - v3 * ((2 - v3 * v4) * v4)) * ((2 - v3 * v4) * v4))) * ((2 - v3 * ((2 - v3 * v4) * v4)) * ((2 - v3 * v4) * v4)));
    }
}

function fun_ekuboPay(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (0 == (address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v1 = 68;
        if (this - varg1) {
            CALLDATACOPY(100 + MEM[64], 64 + varg3, 64);
            CALLDATACOPY(228 + MEM[64], varg5, varg6);
            v0 = v2 = varg6 + 196;
        }
        require((_fun_ekuboPay ^ msg.sender) << 96, ConfusedDeputy());
        require(!___function_selector__, ReentrantCallback(___function_selector__));
        ___function_selector__ = msg.sender | 0x599d071400000000000000030000000000000000000000000000000000000000;
        v3, /* uint256 */ v4 = msg.sender.pay(0xc11dedd000000000000000000000000, varg0, varg2, v5, v5, varg4, varg6).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v6 = v7 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v6 = v8 = new bytes[](RETURNDATASIZE());
            require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
            v4 = v8.data;
            RETURNDATACOPY(v4, 0, RETURNDATASIZE());
        }
        require(v3, v6 + 32, MEM[v6]);
        require(!___function_selector__, CallbackNotSpent(___function_selector__));
        return MEM[96 + v6];
    } else {
        fun_safeTransferETH(msg.sender, varg2);
        return varg2;
    }
}

function fun_checkZeroSellAmount(struct(39) varg0) private { 
    if (!MEM[varg0.word2]) {
        MEM[varg0.word2] = 0xfb772a88;
        revert(28 + varg0.word2, 36);
    } else {
        return ;
    }
}

function fun_callSelector_87545(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_callSelector_87549(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_callSelector(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_saturatingF(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (0 == (varg5 == 10 ** 18)) {
        v0 = varg0 * varg2 * 10 ** 18;
        v1 = varg5 * varg0 + (10 ** 18 - varg5) * varg3;
        v2 = (varg3 - varg0) * varg1;
        v3 = v0 > v2 * v1 % uint256.max - v2 * v1 - (v2 * v1 % uint256.max < v2 * v1);
        if (v2 * v1 % uint256.max - v2 * v1 == v2 * v1 % uint256.max < v2 * v1) {
            v4 = v5 = 0 - (bool(v2 * v1 % v0) + v2 * v1 / v0 + v3 - 1 < v3 - 1) | bool(v2 * v1 % v0) + v2 * v1 / v0 + v3 - 1;
        } else {
            v6 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2))) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2));
            v7 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v6) * v6)) * ((2 - v0 / (0 - v0 & v0) * v6) * v6);
            v8 = ((v2 * v1 - v2 * v1 % v0) / (0 - v0 & v0) | (v2 * v1 % uint256.max - v2 * v1 - (v2 * v1 % uint256.max < v2 * v1) - (v2 * v1 % v0 > v2 * v1)) * ((0 - (0 - v0 & v0)) / (0 - v0 & v0) + 1)) * ((2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v7) * v7)) * ((2 - v0 / (0 - v0 & v0) * v7) * v7));
            require(v8 + bool(v2 * v1 % v0) >= v8, Panic(17)); // arithmetic overflow or underflow
            v4 = v9 = 0 - (v8 + bool(v2 * v1 % v0) + v3 - 1 < v3 - 1) | v8 + bool(v2 * v1 % v0) + v3 - 1;
        }
        return 0 - (varg4 + v4 < v4) | varg4 + v4;
    } else {
        v10 = (varg3 - varg0) * varg1;
        return bool(v10 % varg2) + v10 / varg2 + varg4;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, address varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21, uint256 varg22, uint256 varg23, uint256 varg24) public payable { 
    if (msg.data.length >= 4) {
        if (0x67c4a3b0 == function_selector >> 224) {
            0x67c4a3b0();
        } else if (0xfd3ad6d4 == function_selector >> 224) {
            executeMetaTxn((address,address,uint256),bytes[],bytes32,address,bytes);
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(!msg.value);
        v0 = ___function_selector__;
        require(!((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96));
        ___function_selector__ = 0;
        require(4 <= msg.data.length);
        if (2 == uint16(v0 >> 160)) {
            v1 = v2 = 0;
            v3 = new struct(39);
            v3.word6 = 0;
            MEM[v1085 + 480:v1085 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 352] | MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 320]) * (MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 320] ^ address(varg18 >> 96))), MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 320], address(varg18 >> 96));
            require(address(varg18 >> 96), ZeroToken());
            MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 320] = address(varg18 >> 96);
            v3.word0 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 288;
            v3.word1 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 288;
            v3.word2 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 288;
            v3.word4 = uint128(varg10);
            v3.word5 = varg13 >> 128;
            v4 = v5 = msg.data.length;
            v6 = v7 = msg.data.length;
            v8 = v9 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v3) + 288)])) {
                if (this - (varg16 >> 96)) {
                    require(!bool(varg16 >> 96), Panic(1)); // low-level assert failed
                    v4 = v10 = 177;
                    v1 = v11 = 0x1 & varg24;
                    v8 = v12 = msg.data[varg5 + 97] >> 232;
                    v6 = v13 = varg5 - v12 + 97;
                    v14 = v15 = 306;
                    require(v15 <= v13);
                    v16 = v17 = varg5 - v12 - 209;
                } else {
                    v14 = v18 = 211;
                    v16 = v19 = varg5 - 89 - 22;
                    v20 = fun_fastBalanceOf(MEM[32 + v3.word2], this);
                    MEM[v3.word2] = uint16(varg18 >> 80) * v20 / 10000;
                }
            } else {
                require(varg16 >> 96 == this, Panic(1)); // low-level assert failed
                MEM[v3.word2] = this.balance * uint16(varg18 >> 80) / 10000;
                v16 = v21 = varg5 - 89 - 22;
                v14 = v22 = 211;
            }
            require(v16 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if ((varg16 >> 96) - this) {
                MEM[v3.word2] = msg.data[v4 + 32];
            }
            if (0x1000000000000000000000000000000 & varg13) {
                v23 = fun_ekuboPay(MEM[32 + v3.word2], varg16 >> 96, MEM[v3.word2], v4, v1, v6, v8);
                MEM[v3.word2] = v23;
            }
            require(!(MEM[v3.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
            v3.word3 = MEM[v3.word2];
            fun_checkZeroSellAmount(v3);
            v24 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v16 >= 47) {
                v25 = v26 = msg.data[v14 + 14];
                v27 = v28 = 1;
                if (v26 >> 248) {
                    if (!MEM[64 + v3.word0]) {
                        v3.word6 += v28;
                        MEM[(v28 + v3.word6 << 5) + (192 + v3)] = v3.word0;
                        MEM[64 + v3.word0] = (v28 + v3.word6 << 5) + (192 + v3);
                    }
                    if (v26 >> 248 > v28) {
                        if (!MEM[v3.word1]) {
                            if (MEM[64 + v3.word1]) {
                                MEM[64 + v3.word1] = 0;
                                v3.word6 = v3.word6 - 1;
                                if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word1]) {
                                    MEM[MEM[64 + v3.word1]] = MEM[(v3.word6 << 5) + (192 + v3)];
                                    MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word1];
                                }
                            }
                        }
                        if ((v26 >> 248) - 2) {
                            require(3 == v26 >> 248, Panic(1)); // low-level assert failed
                            v25 = msg.data[20 + (v14 + 14)];
                            v27 = 21;
                            require(!((MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v26 >> 88))), MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v26 >> 88));
                            require(address(v26 >> 88), ZeroToken());
                            MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v26 >> 88);
                            v3.word1 = address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                        } else {
                            v3.word1 = v3.word0;
                        }
                    }
                    v27 = v29 = v27 + 20;
                    v30 = MEM[address(v25 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320];
                    require(!((MEM[address(v25 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | v30) * (v30 ^ address(v25 >> 88))), v30, address(v25 >> 88));
                    require(address(v25 >> 88), ZeroToken());
                    MEM[address(v25 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v25 >> 88);
                    v3.word0 = address(v25 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                    if (address(v25 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288 == v3.word2) {
                        MEM[v3.word2] = 0x784cb7b8;
                        revert(28 + v3.word2, 36);
                    }
                }
                v31 = (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96));
                v24.word1 = address(address(MEM[32 + v3.word0]) ^ v31);
                v24.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v3.word1]) ^ v31)) * address(address(MEM[32 + v3.word1]) ^ v31);
                v14 = 32 + (v27 + (v14 + 14));
                v16 = v16 - 14 - v27 - 32;
                v24.word2 = msg.data[v27 + (v14 + 14)];
                require(v16 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0 == !(msg.data[v14] >> 240 & 0x8000)) {
                    MCOPY(v3 + 1248 + 32, 64 + v24, 20);
                    MCOPY(52 + (v3 + 1248), v24, 96);
                    v32 = msg.sender.forward(v33, v33, v33, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96), msg.data[2 + v14] >> 160, 0).gas(msg.gas);
                    if (!v32) {
                        RETURNDATACOPY(v3 + 1248, 0, RETURNDATASIZE());
                        revert(v3 + 1248, RETURNDATASIZE());
                    } else {
                        require(!((64 > RETURNDATASIZE()) | int128(MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000) ^ MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000 | (int128(MEM[0]) ^ MEM[0] | int128(MEM[32]) ^ MEM[32])));
                        v34 = v35, v36 = v37, v38 = v39, v40 = v41, v42 = v43, v44 = v45, v46 = v47 = 0x14c1(MEM[32 + v3.word1] << 96, MEM[32 + v3.word0] << 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, MEM[0], 5345, int16.max, MEM[v3.word1], 10000, MEM[32], msg.data[v14] >> 240);
                    }
                } else {
                    MCOPY(v3 + 1248 + 32, v24, 96);
                    v48 = msg.sender.call(0, v33, v33, v33, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96), msg.data[2 + v14] >> 160, 0).gas(msg.gas);
                    if (!v48) {
                        RETURNDATACOPY(v3 + 1248, 0, RETURNDATASIZE());
                        revert(v3 + 1248, RETURNDATASIZE());
                    } else {
                        v34 = v49, v36 = v50, v38 = v51, v40 = v52, v42 = v53, v44 = v54, v46 = v55 = 0x14c1(MEM[32 + v3.word1] << 96, MEM[32 + v3.word0] << 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, MEM[0], 5345, int16.max, MEM[v3.word1], 10000, MEM[32], msg.data[v14] >> 240);
                    }
                }
                MEM[v42] = MEM[v42] - v34;
                require(!(((v44 & v36) * v38 / v40 < v34) | (v34 > MEM[v42])), Panic(17)); // arithmetic overflow or underflow
                if (v46 > 0) {
                    MEM[v3.word0] = 0x3351b260;
                    revert(28 + v3.word0, 36);
                } else {
                    MEM[v3.word0] += 0 - v46;
                }
            }
            if (MEM[64 + v3.word0]) {
                MEM[64 + v3.word0] = 0;
                v3.word6 = v3.word6 - 1;
                if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word0]) {
                    MEM[MEM[64 + v3.word0]] = MEM[(v3.word6 << 5) + (192 + v3)];
                    MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word0];
                }
            }
            if (!MEM[v3.word1]) {
                if (MEM[64 + v3.word1]) {
                    MEM[64 + v3.word1] = 0;
                    v3.word6 = v3.word6 - 1;
                    if ((v3.word6 << 5) + (192 + v3) - MEM[64 + v3.word1]) {
                        MEM[MEM[64 + v3.word1]] = MEM[(v3.word6 << 5) + (192 + v3)];
                        MEM[64 + MEM[(v3.word6 << 5) + (192 + v3)]] = MEM[64 + v3.word1];
                    }
                }
            }
            if (bool(v3.word6)) {
                require(v3.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v3.word7 - v3.word2) {
                    fun_callSelector_87545(address(MEM[v3.word7 + 32]), this, MEM[v3.word7]);
                }
                v56 = v57 = 1;
                while (v56 < v3.word6) {
                    fun_callSelector_87545(MEM[32 + MEM[(v56 << 5) + v3 + 224]], this, MEM[MEM[(v56 << 5) + v3 + 224]]);
                    v56 = v56 + 1;
                }
            }
            v58 = v59 = MEM[32 + v3.word0];
            v60 = v61 = MEM[v3.word0];
            if (v61 >= varg10 >> 128) {
                fun_callSelector_87545(v59, varg9 >> 96, v61);
                if (!(0x1000000000000000000000000000000 & varg13)) {
                    require(v3.word3 != MEM[v3.word2], MEM[32 + v3.word2], 0xfb772a88000000000000000000000000);
                    v62 = fun_ekuboPay(MEM[32 + v3.word2], varg16 >> 96, v3.word3 - MEM[v3.word2], v4, v1, v6, v8);
                } else if (bool(MEM[v3.word2])) {
                    if (this - (varg16 >> 96)) {
                        v63 = v64 = _fun_ekuboPay;
                    } else {
                        v63 = v65 = this;
                    }
                    require(MEM[v3.word2], MEM[32 + v3.word2]);
                    v66, /* uint256 */ v67 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), v63, MEM[v3.word2]).gas(msg.gas);
                    require(v66, v3 + 1248, RETURNDATASIZE());
                    MEM[96] = 0;
                } else {
                    v68 = v69 = new bytes[](96);
                    MEM[v69.data] = 32;
                    MEM[64 + v69] = 32;
                    MEM[96 + v69] = v61;
                }
            }
        } else if (6 == uint16(v0 >> 160)) {
            v70 = v71 = 0;
            v72 = new struct(39);
            v72.word6 = 0;
            MEM[va2b + 480:va2b + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 352] | MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 320]) * (MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 320] ^ address(varg8 >> 96))), MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 320], address(varg8 >> 96));
            require(address(varg8 >> 96), ZeroToken());
            MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 320] = address(varg8 >> 96);
            v72.word0 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 288;
            v72.word1 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 288;
            v72.word2 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 288;
            v72.word4 = uint128(varg2);
            v72.word5 = varg4 >> 128;
            v73 = v74 = msg.data.length;
            v75 = v76 = msg.data.length;
            v77 = v78 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v72) + 288)])) {
                if (this - (varg6 >> 96)) {
                    require(!bool(varg6 >> 96), Panic(1)); // low-level assert failed
                    v73 = v79 = 77;
                    v70 = v80 = 0x1 & varg17;
                    v77 = v81 = msg.data[msg.data.length - 3] >> 232;
                    v75 = v82 = msg.data.length - v81 - 3;
                    v83 = v84 = 206;
                    require(v84 <= v82);
                    v85 = v86 = msg.data.length - v81 - 209;
                } else {
                    v83 = v87 = 111;
                    v85 = v88 = msg.data.length - 89 - 22;
                    v89 = fun_fastBalanceOf(MEM[32 + v72.word2], this);
                    MEM[v72.word2] = uint16(varg8 >> 80) * v89 / 10000;
                }
            } else {
                require(varg6 >> 96 == this, Panic(1)); // low-level assert failed
                MEM[v72.word2] = this.balance * uint16(varg8 >> 80) / 10000;
                v85 = v90 = msg.data.length - 89 - 22;
                v83 = v91 = 111;
            }
            require(v85 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if ((varg6 >> 96) - this) {
                MEM[v72.word2] = msg.data[v73 + 32];
            }
            if (0x1000000000000000000000000000000 & varg4) {
                if (this - address(varg6 >> 96)) {
                    v92 = new struct(2);
                    require(!((v92 + 64 > uint64.max) | (v92 + 64 < v92)), Panic(65)); // failed memory allocation (too much memory)
                    v92.word0 = msg.sender;
                    v92.word1 = MEM[v72.word2];
                    require(msg.data.length - v73 >= 128);
                    v93 = new struct(3);
                    require(!((v93 + 96 > uint64.max) | (v93 + 96 < v93)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v73 >= 64);
                    v94 = new struct(2);
                    require(!((v94 + 64 > uint64.max) | (v94 + 64 < v94)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v73] - address(msg.data[v73])));
                    v94.word0 = msg.data[v73];
                    v94.word1 = msg.data[v73 + 32];
                    v93.word0 = v94;
                    v93.word1 = msg.data[v73 + 64];
                    v93.word2 = msg.data[v73 + 96];
                    require(v77 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v95 = new bytes[](v77);
                    require(!((v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                    require(v75 + v77 <= msg.data.length);
                    CALLDATACOPY(v95.data, v75, v77);
                    v95[v77] = 0;
                    fun_transferFrom(v93, v92, v95, v70);
                } else if (MEM[v72.word2]) {
                    fun_safeTransfer(MEM[32 + v72.word2], msg.sender, MEM[v72.word2]);
                }
                v96 = msg.sender.settle(MEM[32 + v72.word2], 0x15afd409000000000000000000000000, MEM[v72.word2]).gas(msg.gas);
                if (!v96) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    MEM[52] = 0;
                    MEM[v72.word2] = MEM[0];
                }
            }
            v72.word3 = MEM[v72.word2];
            fun_checkZeroSellAmount(v72);
            v97 = v98 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v99 = new struct(7);
            require(!((v99 + 224 > uint64.max) | (v99 + 224 < v99)), Panic(65)); // failed memory allocation (too much memory)
            v99.word0 = 0;
            v99.word1 = 0;
            v99.word2 = 0;
            v99.word3 = 0;
            v99.word4 = 0;
            v99.word5 = 0;
            v99.word6 = 96;
            while (v85 >= 3) {
                v100 = v101 = msg.data[2 + v83];
                v102 = v103 = 1;
                if (v101 >> 248) {
                    if (!MEM[64 + v72.word0]) {
                        v72.word6 += v103;
                        MEM[(v103 + v72.word6 << 5) + (192 + v72)] = v72.word0;
                        MEM[64 + v72.word0] = (v103 + v72.word6 << 5) + (192 + v72);
                    }
                    if (v101 >> 248 > v103) {
                        if (!MEM[v72.word1]) {
                            if (MEM[64 + v72.word1]) {
                                MEM[64 + v72.word1] = 0;
                                v72.word6 = v72.word6 - 1;
                                if ((v72.word6 << 5) + (192 + v72) - MEM[64 + v72.word1]) {
                                    MEM[MEM[64 + v72.word1]] = MEM[(v72.word6 << 5) + (192 + v72)];
                                    MEM[64 + MEM[(v72.word6 << 5) + (192 + v72)]] = MEM[64 + v72.word1];
                                }
                            }
                        }
                        if ((v101 >> 248) - 2) {
                            require(3 == v101 >> 248, Panic(1)); // low-level assert failed
                            v100 = msg.data[22 + v83];
                            v102 = 21;
                            require(!((MEM[address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 352] | MEM[address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320]) * (MEM[address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320] ^ address(v101 >> 88))), MEM[address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320], address(v101 >> 88));
                            require(address(v101 >> 88), ZeroToken());
                            MEM[address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320] = address(v101 >> 88);
                            v72.word1 = address(v101 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 288;
                        } else {
                            v72.word1 = v72.word0;
                        }
                    }
                    v102 = v104 = v102 + 20;
                    v105 = MEM[address(v100 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320];
                    require(!((MEM[address(v100 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 352] | v105) * (v105 ^ address(v100 >> 88))), v105, address(v100 >> 88));
                    require(address(v100 >> 88), ZeroToken());
                    MEM[address(v100 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 320] = address(v100 >> 88);
                    v72.word0 = address(v100 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 288;
                    if (address(v100 >> 88) * v72.word4 % v72.word5 % 768 + (192 + v72) + 288 == v72.word2) {
                        MEM[v72.word2] = 0x784cb7b8;
                        revert(28 + v72.word2, 36);
                    }
                }
                v83 = v102 + (2 + v83);
                v85 = v85 - 2 - v102;
                if (msg.data[v83] >> 240 & 0xc000) {
                    require(uint24.max >= v85, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(msg.data[v83] >> 240 & 0x4000)) {
                        MEM[v97 + 32] = 1;
                        MEM[v97 + 64] = address(MEM[32 + v72.word1]);
                    } else {
                        MEM[v97 + 32] = 0;
                        MEM[v97 + 64] = address(MEM[32 + v72.word0]);
                    }
                    MEM[v97 + 96] = MEM[v72.word1] * (msg.data[v83] >> 240 & 0x3fff) / 10000;
                    MEM[v97 - 32] = 0x43583be5;
                    v106 = msg.sender.call(MEM[vf82_0x4 - 4:vf82_0x4 - 4 + 164], MEM[0:96]).gas(msg.gas);
                    if (!v106) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v97 - 32] = MEM[v97 - 32];
                        MEM[v72.word1] = MEM[v72.word1] - MEM[32];
                        require(MEM[v72.word0] <= MEM[v72.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v72.word0] = MEM[v72.word0] + MEM[64];
                    }
                } else {
                    v99.word1 = msg.data[v83] >> 96;
                    v99.word2 = address(MEM[32 + v72.word1]);
                    v99.word3 = address(MEM[32 + v72.word0]);
                    v99.word4 = MEM[v72.word1] * (msg.data[v83] >> 240) / 10000;
                    v83 = 20 + v83 + (msg.data[20 + v83] >> 232) + 3;
                    v85 = v85 - 20 - (msg.data[20 + v83] >> 232) - 3;
                    require(msg.data[20 + v83] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v107 = new bytes[](msg.data[20 + v83] >> 232);
                    require(!((v107 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v83] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v107 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v83] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v107)), Panic(65)); // failed memory allocation (too much memory)
                    require(23 + v83 + (msg.data[20 + v83] >> 232) <= msg.data.length);
                    CALLDATACOPY(v107.data, 23 + v83, msg.data[20 + v83] >> 232);
                    v107[msg.data[20 + v83] >> 232] = 0;
                    v99.word6 = v107;
                    require(v85 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[v99 - 64] = 0x2bfb780c;
                    MEM[v99 - 32] = 32;
                    v108 = v99.word6;
                    v99.word6 = v99.word6 - v99;
                    v109 = msg.sender.call(MEM[vb35 - 36:vb35 - 36 + ve86.length + vb35.word6 - vb35 + 68], MEM[0:96]).gas(msg.gas);
                    if (!v109) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v99 - 64] = MEM[v99 - 64];
                        MEM[v99 - 32] = MEM[v99 - 32];
                        MEM[v72.word1] = MEM[v72.word1] - MEM[32];
                        require(MEM[v72.word0] <= MEM[v72.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v72.word0] = MEM[v72.word0] + MEM[64];
                        v99.word6 = 96;
                    }
                }
            }
            if (MEM[64 + v72.word0]) {
                MEM[64 + v72.word0] = 0;
                v72.word6 = v72.word6 - 1;
                if ((v72.word6 << 5) + (192 + v72) - MEM[64 + v72.word0]) {
                    MEM[MEM[64 + v72.word0]] = MEM[(v72.word6 << 5) + (192 + v72)];
                    MEM[64 + MEM[(v72.word6 << 5) + (192 + v72)]] = MEM[64 + v72.word0];
                }
            }
            if (!MEM[v72.word1]) {
                if (MEM[64 + v72.word1]) {
                    MEM[64 + v72.word1] = 0;
                    v72.word6 = v72.word6 - 1;
                    if ((v72.word6 << 5) + (192 + v72) - MEM[64 + v72.word1]) {
                        MEM[MEM[64 + v72.word1]] = MEM[(v72.word6 << 5) + (192 + v72)];
                        MEM[64 + MEM[(v72.word6 << 5) + (192 + v72)]] = MEM[64 + v72.word1];
                    }
                }
            }
            if (bool(v72.word6)) {
                require(v72.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v72.word7 - v72.word2) {
                    fun_callSelector_87549(address(MEM[v72.word7 + 32]), this, MEM[v72.word7]);
                }
                v110 = v111 = 1;
                while (v110 < v72.word6) {
                    fun_callSelector_87549(MEM[32 + MEM[(v110 << 5) + v72 + 224]], this, MEM[MEM[(v110 << 5) + v72 + 224]]);
                    v110 = v110 + 1;
                }
            }
            v58 = v112 = MEM[32 + v72.word0];
            v60 = v113 = MEM[v72.word0];
            if (v113 >= varg2 >> 128) {
                fun_callSelector_87549(v112, function_selector >> 96, v113);
                if (!(0x1000000000000000000000000000000 & varg4)) {
                    require(v72.word3 != MEM[v72.word2], MEM[32 + v72.word2], 0xfb772a88000000000000000000000000);
                    if (this - address(varg6 >> 96)) {
                        v114 = new struct(2);
                        require(!((v114 + 64 > uint64.max) | (v114 + 64 < v114)), Panic(65)); // failed memory allocation (too much memory)
                        v114.word0 = msg.sender;
                        v114.word1 = v72.word3 - MEM[v72.word2];
                        require(msg.data.length - v73 >= 128);
                        v115 = new struct(3);
                        require(!((v115 + 96 > uint64.max) | (v115 + 96 < v115)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v73 >= 64);
                        v116 = new struct(2);
                        require(!((v116 + 64 > uint64.max) | (v116 + 64 < v116)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v73] - address(msg.data[v73])));
                        v116.word0 = msg.data[v73];
                        v116.word1 = msg.data[v73 + 32];
                        v115.word0 = v116;
                        v115.word1 = msg.data[v73 + 64];
                        v115.word2 = msg.data[v73 + 96];
                        require(v77 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v117 = new bytes[](v77);
                        require(!((v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v77) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v117)), Panic(65)); // failed memory allocation (too much memory)
                        require(v75 + v77 <= msg.data.length);
                        CALLDATACOPY(v117.data, v75, v77);
                        v117[v77] = 0;
                        fun_transferFrom(v115, v114, v117, v70);
                    } else if (v72.word3 - MEM[v72.word2]) {
                        fun_safeTransfer(MEM[32 + v72.word2], msg.sender, v72.word3 - MEM[v72.word2]);
                    }
                    v118 = msg.sender.settle(MEM[32 + v72.word2], 0x15afd409000000000000000000000000, v72.word3 - MEM[v72.word2]).gas(msg.gas);
                    if (!v118) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                    }
                } else if (bool(MEM[v72.word2])) {
                    require(MEM[v72.word2], MEM[32 + v72.word2]);
                    v119, /* uint256 */ v120 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v72.word2] << 96) * (MEM[32 + v72.word2] << 96), (this ^ _fun_ekuboPay) * (varg6 >> 96 == this) ^ _fun_ekuboPay, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v72.word2] << 96) * (MEM[32 + v72.word2] << 96), MEM[v72.word2]).gas(msg.gas);
                    require(v119, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
                v68 = v121 = new bytes[](32);
                MEM[v121.data] = v113;
            }
        } else if (5 == uint16(v0 >> 160)) {
            v122 = v123 = 0;
            v124 = new struct(39);
            v124.word6 = 0;
            MEM[v3b7 + 480:v3b7 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 352] | MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 320]) * (MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 320] ^ address(varg14 >> 96))), MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 320], address(varg14 >> 96));
            require(address(varg14 >> 96), ZeroToken());
            MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 320] = address(varg14 >> 96);
            v124.word0 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 288;
            v124.word1 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 288;
            v124.word2 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 288;
            v124.word4 = uint128(varg7);
            v124.word5 = varg10 >> 128;
            v125 = v126 = msg.data.length;
            v127 = v128 = msg.data.length;
            v129 = v130 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v124) + 288)])) {
                if (this - (varg12 >> 96)) {
                    require(!bool(varg12 >> 96), Panic(1)); // low-level assert failed
                    v125 = v131 = 145;
                    v122 = v132 = 0x1 & varg21;
                    v129 = v133 = msg.data[varg3 + 65] >> 232;
                    v127 = v134 = varg3 - v133 + 65;
                    v135 = v136 = 274;
                    require(v136 <= v134);
                    v137 = v138 = varg3 - v133 - 209;
                } else {
                    v135 = v139 = 179;
                    v137 = v140 = varg3 - 89 - 22;
                    v141 = fun_fastBalanceOf(MEM[32 + v124.word2], this);
                    MEM[v124.word2] = uint16(varg14 >> 80) * v141 / 10000;
                }
            } else {
                require(varg12 >> 96 == this, Panic(1)); // low-level assert failed
                MEM[v124.word2] = this.balance * uint16(varg14 >> 80) / 10000;
                v137 = v142 = varg3 - 89 - 22;
                v135 = v143 = 179;
            }
            require(v137 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if ((varg12 >> 96) - this) {
                MEM[v124.word2] = msg.data[v125 + 32];
            }
            if (0x1000000000000000000000000000000 & varg10) {
                v144, /* uint256 */ v145 = msg.sender.sync(MEM[32 + v124.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                require(v144, v145, RETURNDATASIZE());
                if (this - address(varg12 >> 96)) {
                    v146 = new struct(2);
                    require(!((v146 + 64 > uint64.max) | (v146 + 64 < v146)), Panic(65)); // failed memory allocation (too much memory)
                    v146.word0 = msg.sender;
                    v146.word1 = MEM[v124.word2];
                    require(msg.data.length - v125 >= 128);
                    v147 = new struct(3);
                    require(!((v147 + 96 > uint64.max) | (v147 + 96 < v147)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v125 >= 64);
                    v148 = new struct(2);
                    require(!((v148 + 64 > uint64.max) | (v148 + 64 < v148)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v125] - address(msg.data[v125])));
                    v148.word0 = msg.data[v125];
                    v148.word1 = msg.data[v125 + 32];
                    v147.word0 = v148;
                    v147.word1 = msg.data[v125 + 64];
                    v147.word2 = msg.data[v125 + 96];
                    require(v129 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v149 = new bytes[](v129);
                    require(!((v149 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v129) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v149 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v129) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v149)), Panic(65)); // failed memory allocation (too much memory)
                    require(v127 + v129 <= msg.data.length);
                    CALLDATACOPY(v149.data, v127, v129);
                    v149[v129] = 0;
                    fun_transferFrom(v147, v146, v149, v122);
                } else {
                    fun_safeTransfer(MEM[32 + v124.word2], msg.sender, MEM[v124.word2]);
                }
                v150 = msg.sender.settle().gas(msg.gas);
                require(v150, MEM[64], RETURNDATASIZE());
                MEM[v124.word2] = MEM[0];
            }
            v124.word3 = MEM[v124.word2];
            fun_checkZeroSellAmount(v124);
            v151 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v152 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v137 >= 52) {
                v152.word2 = msg.data[2 + v135] >> 96;
                v153 = v154 = msg.data[v135 + 22];
                v155 = v156 = 1;
                if (v154 >> 248) {
                    if (!MEM[64 + v124.word0]) {
                        v124.word6 += v156;
                        MEM[(v156 + v124.word6 << 5) + (192 + v124)] = v124.word0;
                        MEM[64 + v124.word0] = (v156 + v124.word6 << 5) + (192 + v124);
                    }
                    if (v154 >> 248 > v156) {
                        if (!MEM[v124.word1]) {
                            if (MEM[64 + v124.word1]) {
                                MEM[64 + v124.word1] = 0;
                                v124.word6 = v124.word6 - 1;
                                if ((v124.word6 << 5) + (192 + v124) - MEM[64 + v124.word1]) {
                                    MEM[MEM[64 + v124.word1]] = MEM[(v124.word6 << 5) + (192 + v124)];
                                    MEM[64 + MEM[(v124.word6 << 5) + (192 + v124)]] = MEM[64 + v124.word1];
                                }
                            }
                        }
                        if ((v154 >> 248) - 2) {
                            require(3 == v154 >> 248, Panic(1)); // low-level assert failed
                            v153 = msg.data[20 + (v135 + 22)];
                            v155 = 21;
                            require(!((MEM[address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 352] | MEM[address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320]) * (MEM[address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320] ^ address(v154 >> 88))), MEM[address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320], address(v154 >> 88));
                            require(address(v154 >> 88), ZeroToken());
                            MEM[address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320] = address(v154 >> 88);
                            v124.word1 = address(v154 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 288;
                        } else {
                            v124.word1 = v124.word0;
                        }
                    }
                    v155 = v157 = v155 + 20;
                    v158 = MEM[address(v153 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320];
                    require(!((MEM[address(v153 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 352] | v158) * (v158 ^ address(v153 >> 88))), v158, address(v153 >> 88));
                    require(address(v153 >> 88), ZeroToken());
                    MEM[address(v153 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 320] = address(v153 >> 88);
                    v124.word0 = address(v153 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 288;
                    if (address(v153 >> 88) * v124.word4 % v124.word5 % 768 + (192 + v124) + 288 == v124.word2) {
                        MEM[v124.word2] = 0x784cb7b8;
                        revert(28 + v124.word2, 36);
                    }
                }
                v159 = (MEM[32 + v124.word0] ^ MEM[32 + v124.word1]) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v124.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v124.word0] << 96) & (MEM[32 + v124.word1] << 96 < MEM[32 + v124.word0] << 96));
                v151.word1 = address(MEM[32 + v124.word1] ^ v159);
                v151.word0 = address(MEM[32 + v124.word0] ^ v159);
                v151.word2 = msg.data[v155 + (v135 + 22)] >> 232;
                v151.word3 = int24(uint24(msg.data[v155 + (v135 + 22)] >> 208));
                v151.word4 = address(msg.data[v155 + (v135 + 22)] >> 48);
                v135 = 26 + (v155 + (v135 + 22)) + (msg.data[26 + (v155 + (v135 + 22))] >> 232) + 3;
                v137 = v137 - 22 - v155 - 26 - (msg.data[26 + (v155 + (v135 + 22))] >> 232) - 3;
                require(v137 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v152.word0 = bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v124.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v124.word0] << 96) & (MEM[32 + v124.word1] << 96 < MEM[32 + v124.word0] << 96));
                v152.word1 = 0 - MEM[v124.word1] * (msg.data[v135] >> 240) / 10000;
                MCOPY(64 + MEM[64], 32 + v151, 128);
                MCOPY(192 + MEM[64], v152, 96);
                v160 = new uint256[](msg.data[26 + (v155 + (v135 + 22))] >> 232);
                CALLDATACOPY(v160.data, 29 + (v155 + (v135 + 22)), msg.data[26 + (v155 + (v135 + 22))] >> 232);
                v161 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v151.word0) * v151.word0, v33, v33, v33, v33, v33, v33, v33, v160).gas(msg.gas);
                if (!v161) {
                    v162 = RETURNDATASIZE();
                    revert(v33, v33, v33, v33, v33, v33, v33, v33, v33, msg.data[26 + (v155 + (v135 + 22))] >> 232);
                } else {
                    v163 = (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v124.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v124.word0] << 96) & (MEM[32 + v124.word1] << 96 < MEM[32 + v124.word0] << 96));
                    v164 = _SafeSub(MEM[v124.word1], 0 - (int128(MEM[0]) ^ v163));
                    MEM[v124.word1] = v164;
                    if (int128(MEM[0] >> 128) ^ v163 < 0) {
                        MEM[v124.word0] = 0x4c085bf1;
                        revert(28 + v124.word0, 36);
                    } else {
                        MEM[v124.word0] += int128(MEM[0] >> 128) ^ v163;
                    }
                }
            }
            if (MEM[64 + v124.word0]) {
                MEM[64 + v124.word0] = 0;
                v124.word6 = v124.word6 - 1;
                if ((v124.word6 << 5) + (192 + v124) - MEM[64 + v124.word0]) {
                    MEM[MEM[64 + v124.word0]] = MEM[(v124.word6 << 5) + (192 + v124)];
                    MEM[64 + MEM[(v124.word6 << 5) + (192 + v124)]] = MEM[64 + v124.word0];
                }
            }
            if (!MEM[v124.word1]) {
                if (MEM[64 + v124.word1]) {
                    MEM[64 + v124.word1] = 0;
                    v124.word6 = v124.word6 - 1;
                    if ((v124.word6 << 5) + (192 + v124) - MEM[64 + v124.word1]) {
                        MEM[MEM[64 + v124.word1]] = MEM[(v124.word6 << 5) + (192 + v124)];
                        MEM[64 + MEM[(v124.word6 << 5) + (192 + v124)]] = MEM[64 + v124.word1];
                    }
                }
            }
            if (bool(v124.word6)) {
                require(v124.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v124.word7 - v124.word2) {
                    fun_callSelector(address(MEM[v124.word7 + 32]), this, MEM[v124.word7]);
                }
                v165 = v166 = 1;
                while (v165 < v124.word6) {
                    fun_callSelector(MEM[32 + MEM[(v165 << 5) + v124 + 224]], this, MEM[MEM[(v165 << 5) + v124 + 224]]);
                    v165 = v165 + 1;
                }
            }
            v58 = v167 = MEM[32 + v124.word0];
            v60 = v168 = MEM[v124.word0];
            if (v168 >= varg7 >> 128) {
                fun_callSelector(v167, varg5 >> 96, v168);
                if (!(0x1000000000000000000000000000000 & varg10)) {
                    require(v124.word3 != MEM[v124.word2], MEM[32 + v124.word2], 0xfb772a88000000000000000000000000);
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v124.word2])) {
                        v169, /* uint256 */ v170 = msg.sender.sync(MEM[32 + v124.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v169, v170, RETURNDATASIZE());
                        if (this - address(varg12 >> 96)) {
                            v171 = new struct(2);
                            require(!((v171 + 64 > uint64.max) | (v171 + 64 < v171)), Panic(65)); // failed memory allocation (too much memory)
                            v171.word0 = msg.sender;
                            v171.word1 = v124.word3 - MEM[v124.word2];
                            require(msg.data.length - v125 >= 128);
                            v172 = new struct(3);
                            require(!((v172 + 96 > uint64.max) | (v172 + 96 < v172)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v125 >= 64);
                            v173 = new struct(2);
                            require(!((v173 + 64 > uint64.max) | (v173 + 64 < v173)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v125] - address(msg.data[v125])));
                            v173.word0 = msg.data[v125];
                            v173.word1 = msg.data[v125 + 32];
                            v172.word0 = v173;
                            v172.word1 = msg.data[v125 + 64];
                            v172.word2 = msg.data[v125 + 96];
                            require(v129 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v174 = new bytes[](v129);
                            require(!((v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v129) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v129) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v174)), Panic(65)); // failed memory allocation (too much memory)
                            require(v127 + v129 <= msg.data.length);
                            CALLDATACOPY(v174.data, v127, v129);
                            v174[v129] = 0;
                            fun_transferFrom(v172, v171, v174, v122);
                        } else {
                            fun_safeTransfer(MEM[32 + v124.word2], msg.sender, v124.word3 - MEM[v124.word2]);
                        }
                        v175 = msg.sender.settle().gas(msg.gas);
                        require(v175, MEM[64], RETURNDATASIZE());
                    } else {
                        v176, /* uint256 */ v177 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v176, v177, RETURNDATASIZE());
                        v178 = msg.sender.settle().value(v124.word3 - MEM[v124.word2]).gas(msg.gas);
                        require(v178, MEM[64], RETURNDATASIZE());
                    }
                } else if (bool(MEM[v124.word2])) {
                    if (this - (varg12 >> 96)) {
                        v179 = v180 = _fun_ekuboPay;
                    } else {
                        v179 = v181 = this;
                    }
                    require(MEM[v124.word2], MEM[32 + v124.word2]);
                    v182, /* uint256 */ v183 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v124.word2] << 96) * (MEM[32 + v124.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v124.word2] << 96) * (MEM[32 + v124.word2] << 96), v179, MEM[v124.word2]).gas(msg.gas);
                    require(v182, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
            }
        } else {
            if (1 == uint16(v0 >> 160)) {
                require(128 <= msg.data.length - 4);
                if (0 == (msg.data[varg5.data] >> 96 == this)) {
                    require(!bool(msg.data[varg5.data] >> 96), Panic(1)); // low-level assert failed
                    v184 = new struct(2);
                    require(!((v184 + 64 > uint64.max) | (v184 + 64 < v184)), Panic(65)); // failed memory allocation (too much memory)
                    v184.word0 = msg.sender;
                    v184.word1 = (varg1 ^ varg3) * (varg1 > 0) ^ varg3;
                    require(msg.data.length - (varg5 + 44) >= 128);
                    v185 = new struct(3);
                    require(!((v185 + 96 > uint64.max) | (v185 + 96 < v185)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - (varg5 + 44) >= 64);
                    v186 = new struct(2);
                    require(!((v186 + 64 > uint64.max) | (v186 + 64 < v186)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[varg5 + 44] - address(msg.data[varg5 + 44])));
                    v186.word0 = msg.data[varg5 + 44];
                    v186.word1 = msg.data[varg5 + 44 + 32];
                    v185.word0 = v186;
                    v185.word1 = msg.data[varg5 + 44 + 64];
                    v185.word2 = msg.data[varg5 + 44 + 96];
                    require(varg5.length - 137 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v187 = new bytes[](varg5.length - 137);
                    require(!((v187 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v187 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v187)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5 + 173 + (varg5.length - 137) <= msg.data.length);
                    CALLDATACOPY(v187.data, varg5 + 173, varg5.length - 137);
                    v187[varg5.length - 137] = 0;
                    fun_transferFrom(v185, v184, v187, 0x1 & msg.data[varg5 + 141]);
                    v68 = v188 = new struct(1);
                    require(!((v188 + 32 > uint64.max) | (v188 + 32 < v188)), Panic(65)); // failed memory allocation (too much memory)
                } else {
                    fun_safeTransfer(msg.data[varg5 + 56] >> 96, msg.sender, (varg1 ^ varg3) * (varg1 > 0) ^ varg3);
                    v68 = v189 = new struct(1);
                    require(!((v189 + 32 > uint64.max) | (v189 + 32 < v189)), Panic(65)); // failed memory allocation (too much memory)
                }
            } else if (4 == uint16(v0 >> 160)) {
                require(160 <= msg.data.length - 4);
                require(varg1 == varg15, Panic(1)); // low-level assert failed
                v190 = new struct(2);
                require(!((v190 + 64 > uint64.max) | (v190 + 64 < v190)), Panic(65)); // failed memory allocation (too much memory)
                v190.word0 = msg.sender;
                v190.word1 = varg3;
                require(msg.data.length - 164 >= 128);
                v191 = new struct(3);
                require(!((v191 + 96 > uint64.max) | (v191 + 96 < v191)), Panic(65)); // failed memory allocation (too much memory)
                require(msg.data.length - 164 >= 64);
                v192 = new struct(2);
                require(!((v192 + 64 > uint64.max) | (v192 + 64 < v192)), Panic(65)); // failed memory allocation (too much memory)
                v192.word0 = varg15;
                v192.word1 = varg19;
                v191.word0 = v192;
                v191.word1 = varg20;
                v191.word2 = varg22;
                require(varg11 - 129 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v193 = new bytes[](varg11 - 129);
                require(!((v193 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg11 - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v193 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg11 - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v193)), Panic(65)); // failed memory allocation (too much memory)
                require(varg11 + 164 <= msg.data.length);
                CALLDATACOPY(v193.data, 293, varg11 - 129);
                MEM[v193 + varg11 - 97] = 0;
                fun_transferFrom(v191, v190, v193, 0x1 & varg23);
                v68 = v194 = new struct(1);
                require(!((v194 + 32 > uint64.max) | (v194 + 32 < v194)), Panic(65)); // failed memory allocation (too much memory)
            } else {
                require(3 == uint16(v0 >> 160), Panic(81)); // call to a zero-initialized variable of internal function type
                if (0 == 96 < msg.data.length - 4) {
                    fun_safeTransfer(varg3, msg.sender, varg5);
                } else {
                    v195 = new struct(2);
                    require(!((v195 + 64 > uint64.max) | (v195 + 64 < v195)), Panic(65)); // failed memory allocation (too much memory)
                    v195.word0 = msg.sender;
                    v195.word1 = varg5;
                    require(msg.data.length - 36 >= 128);
                    v196 = new struct(3);
                    require(!((v196 + 96 > uint64.max) | (v196 + 96 < v196)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - 36 >= 64);
                    v197 = new struct(2);
                    require(!((v197 + 64 > uint64.max) | (v197 + 64 < v197)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(varg3 - address(varg3)));
                    v197.word0 = varg3;
                    v197.word1 = varg5;
                    v196.word0 = v197;
                    v196.word1 = varg9;
                    v196.word2 = varg11;
                    require(varg19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v198 = new bytes[](varg19);
                    require(!((v198 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v198 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v198)), Panic(65)); // failed memory allocation (too much memory)
                    require(228 + varg19 <= msg.data.length);
                    CALLDATACOPY(v198.data, 228, varg19);
                    v198[varg19] = 0;
                    fun_transferFrom(v196, v195, v198, varg15);
                }
                v68 = v199 = new bytes[](96);
                MEM[v199.data] = 32;
                MEM[64 + v199] = 32;
                MEM[96 + v199] = varg5;
            }
            MEM[v68] = 0;
            // Unknown jump to Block 0x17c. Refer to 3-address code (TAC);
        }
        return MEM[v2db_0x0 + 32:v2db_0x0 + 32 + MEM[v2db_0x0]];
        v68 = v200 = new bytes[](96);
        MEM[v200.data] = 32;
        MEM[64 + v200] = 32;
        MEM[96 + v200] = v60;
        // Unknown jump to Block 0x17c. Refer to 3-address code (TAC);
        revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v58, v201 >> 128, v60));
    }
}
