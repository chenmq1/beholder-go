// Decompiled by library.dedaub.com
// 2025.12.13 17:03 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _fun_permitToSellAmount; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x116b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13) private { 
    v0 = (varg9 ^ varg7) * ((varg2 == varg1) | (varg2 != varg0) & (varg1 < varg0));
    if (varg9 ^ v0 < 0) {
        MEM[MEM[32 + v1]] = 0x4c085bf1;
        revert(28 + MEM[32 + v1], 36);
    } else {
        return varg9 ^ v0, varg4, varg5, varg6, MEM[32 + v1], varg8, varg7 ^ v0, varg10, varg11, varg12, varg13;
    }
}

function balanceOf(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    MEM8[0] = 0x0 & 0xFF;
    return MEM[0:1];
}

function 0x67c4a3b0() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x352650ac2653508d946c4912b07895b22edd84cd;
}

function execute(address varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 160);
    require(msg.data.length - 4 >= 96);
    require(varg3 <= uint64.max);
    require(varg3 + 35 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(varg3 + (varg3.length << 5) + 36 <= msg.data.length);
    v0 = v1 = msg.sender;
    if (msg.sender == 0x1ff3684f28c67538d4d072c22734) {
        v0 = v2 = msg.data[msg.data.length - 20] >> 96;
    }
    require(v0 << 96, ConfusedDeputy());
    require(!(_fun_permitToSellAmount << 96), ReentrantPayer(_fun_permitToSellAmount, 0x7407c0f8000000000000000000000000));
    _fun_permitToSellAmount = address(v0);
    if (varg3.length) {
        v3 = msg.data[varg3 + msg.data[varg3.data] + 36] - 4;
        v4 = varg3 + msg.data[varg3.data] + 72;
        if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0xc1fb425e) {
            if (0x22ce6ede - (msg.data[varg3 + msg.data[varg3.data] + 68] >> 224)) {
                v5 = v6 = 0;
            } else {
                require(v4 + v3 - v4 >= uint8.max + 1);
                require(!(msg.data[v4] - address(msg.data[v4])));
                require(msg.data[v4 + 32] <= uint64.max);
                require(v4 + msg.data[v4 + 32] + 31 < v4 + v3);
                require(msg.data[v4 + msg.data[v4 + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v7 = new bytes[](msg.data[v4 + msg.data[v4 + 32]]);
                require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + msg.data[v4 + 32] + 32 + msg.data[v4 + msg.data[v4 + 32]] <= v4 + v3);
                CALLDATACOPY(v7.data, v4 + msg.data[v4 + 32] + 32, msg.data[v4 + msg.data[v4 + 32]]);
                v7[msg.data[v4 + msg.data[v4 + 32]]] = 0;
                require(v4 + v3 - (v4 + 64) >= 128);
                v8 = new struct(3);
                require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + v3 - (v4 + 64) >= 64);
                v9 = new struct(2);
                require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v4 + 64] - address(msg.data[v4 + 64])));
                v9.word0 = msg.data[v4 + 64];
                v9.word1 = msg.data[v4 + 64 + 32];
                v8.word0 = v9;
                v8.word1 = msg.data[v4 + 64 + 64];
                v8.word2 = msg.data[v4 + 64 + 96];
                require(msg.data[v4 + 192] <= uint64.max);
                require(v4 + msg.data[v4 + 192] + 31 < v4 + v3);
                require(msg.data[v4 + msg.data[v4 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = new bytes[](msg.data[v4 + msg.data[v4 + 192]]);
                require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + msg.data[v4 + 192] + 32 + msg.data[v4 + msg.data[v4 + 192]] <= v4 + v3);
                CALLDATACOPY(v10.data, v4 + msg.data[v4 + 192] + 32, msg.data[v4 + msg.data[v4 + 192]]);
                v10[msg.data[v4 + msg.data[v4 + 192]]] = 0;
                require(137 <= 137 + v10.length, Panic(17)); // arithmetic overflow or underflow
                require(137 + v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v11 = new bytes[](137 + v10.length);
                require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
                require(137 + v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                CALLDATACOPY(v11.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) - 32);
                MEM[72 + v11] = MEM[32 + v8.word0];
                MCOPY(104 + v11, 32 + v8, 64);
                MEM8[168 + v11] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                MCOPY(169 + v11, v10.data, v10.length);
                v12 = v13 = fun_permitToSellAmount(v8);
                v14 = v15 = 0;
                require(v13 <= int256.max, Panic(17)); // arithmetic overflow or underflow
                while (1) {
                    require(MEM[v7] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v16 = MEM[20 + v7];
                    v17 = MEM[64 + v7];
                    if (0 == !uint8(MEM[21 + v7])) {
                        if (uint8(MEM[21 + v7]) - 1) {
                            if (uint8(MEM[21 + v7]) - 2) {
                                require(0 != (uint8(MEM[21 + v7]) == 3), UnknownForkId(uint8(MEM[21 + v7])));
                                MEM[32] = (address(v16) < address(v17)) * (v17 ^ v16) ^ v16;
                                MEM[0] = 0;
                                MEM[12] = (v17 ^ (address(v16) < address(v17)) * (v17 ^ v16)) << 96;
                                MEM8[11] = 0xff & 0xFF;
                                MEM[40 + v11] = v16;
                                MEM[20 + v11] = v14;
                                v18 = MEM[64];
                                MCOPY(196 + v18, v11, 32 + v11.length);
                                MEM[164 + v18] = 160;
                                MEM[132 + v18] = address(MEM[44 + v7]);
                                MEM[100 + v18] = v12;
                                MEM[68 + v18] = address(v16) < address(v17);
                                MEM[36 + v18] = address(msg.data[v4]) ^ (this ^ address(msg.data[v4])) * (MEM[v7] > 64);
                                MEM[16 + v18] = 0x128acb08000000000000000000000000;
                                require((_fun_permitToSellAmount ^ address(keccak256(v19, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                                v20 = ___function_selector__;
                                require(!v20, ReentrantCallback(v20));
                                ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v19, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                                v21 = address(keccak256(v19, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v19b22V0x17b1V0x1415 + 32:v19b22V0x17b1V0x1415 + 32 + 196 + v1e59V0x17b1V0x1415.length], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v22 = v23 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v22 = new bytes[](RETURNDATASIZE());
                                    require(!((v22 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());
                                }
                                require(v21, v24 + 32, MEM[v24]);
                                v25 = ___function_selector__;
                                require(!v25, CallbackNotSpent(v25));
                            } else {
                                MEM[32] = (address(v16) < address(v17)) * (v17 ^ v16) ^ v16;
                                MEM[0] = 0;
                                MEM[12] = (v17 ^ (address(v16) < address(v17)) * (v17 ^ v16)) << 96;
                                MEM8[11] = 0xff & 0xFF;
                                MEM[40 + v11] = v16;
                                MEM[20 + v11] = v14;
                                v18 = v26 = MEM[64];
                                MCOPY(196 + v26, v11, 32 + v11.length);
                                MEM[164 + v26] = 160;
                                MEM[132 + v26] = address(MEM[44 + v7]);
                                MEM[100 + v26] = v12;
                                MEM[68 + v26] = address(v16) < address(v17);
                                MEM[36 + v26] = address(msg.data[v4]) ^ (this ^ address(msg.data[v4])) * (MEM[v7] > 64);
                                MEM[16 + v26] = 0x128acb08000000000000000000000000;
                                require((_fun_permitToSellAmount ^ address(keccak256(v19, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                                v27 = ___function_selector__;
                                require(!v27, ReentrantCallback(v27));
                                ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v19, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                                v28 = address(keccak256(v19, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v19a88V0x17b1V0x1415 + 32:v19a88V0x17b1V0x1415 + 32 + 196 + v1e59V0x17b1V0x1415.length], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v22 = v29 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v22 = v30 = new bytes[](RETURNDATASIZE());
                                    require(!((v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v30.data, 0, RETURNDATASIZE());
                                }
                                require(v28, v31 + 32, MEM[v31]);
                                v32 = ___function_selector__;
                                require(!v32, CallbackNotSpent(v32));
                            }
                        } else {
                            MEM[32] = (address(v16) < address(v17)) * (v17 ^ v16) ^ v16;
                            MEM[0] = 0;
                            MEM[12] = (v17 ^ (address(v16) < address(v17)) * (v17 ^ v16)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v11] = v16;
                            MEM[20 + v11] = v14;
                            v18 = v33 = MEM[64];
                            MCOPY(196 + v33, v11, 32 + v11.length);
                            MEM[164 + v33] = 160;
                            MEM[132 + v33] = address(MEM[44 + v7]);
                            MEM[100 + v33] = v12;
                            MEM[68 + v33] = address(v16) < address(v17);
                            MEM[36 + v33] = address(msg.data[v4]) ^ (this ^ address(msg.data[v4])) * (MEM[v7] > 64);
                            MEM[16 + v33] = 0x128acb08000000000000000000000000;
                            require((_fun_permitToSellAmount ^ address(keccak256(v19, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                            v34 = ___function_selector__;
                            require(!v34, ReentrantCallback(v34));
                            ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v19, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                            v35 = address(keccak256(v19, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v199eeV0x17b1V0x1415 + 32:v199eeV0x17b1V0x1415 + 32 + 196 + v1e59V0x17b1V0x1415.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v22 = v36 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v22 = v37 = new bytes[](RETURNDATASIZE());
                                require(!((v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v37)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v37.data, 0, RETURNDATASIZE());
                            }
                            require(v35, v38 + 32, MEM[v38]);
                            v39 = ___function_selector__;
                            require(!v39, CallbackNotSpent(v39));
                        }
                    } else {
                        MEM[32] = (address(v16) < address(v17)) * (v17 ^ v16) ^ v16;
                        MEM[0] = 0;
                        MEM[12] = (v17 ^ (address(v16) < address(v17)) * (v17 ^ v16)) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + v11] = v16;
                        MEM[20 + v11] = v14;
                        v18 = v40 = MEM[64];
                        MCOPY(196 + v40, v11, 32 + v11.length);
                        MEM[164 + v40] = 160;
                        MEM[132 + v40] = address(MEM[44 + v7]);
                        MEM[100 + v40] = v12;
                        MEM[68 + v40] = address(v16) < address(v17);
                        MEM[36 + v40] = address(msg.data[v4]) ^ (this ^ address(msg.data[v4])) * (MEM[v7] > 64);
                        MEM[16 + v40] = 0x128acb08000000000000000000000000;
                        require((_fun_permitToSellAmount ^ address(keccak256(v19, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                        v41 = ___function_selector__;
                        require(!v41, ReentrantCallback(v41));
                        ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v19, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                        v42 = address(keccak256(v19, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x1df9V0x17b1V0x1415]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v19954V0x17b1V0x1415 + 32:v19954V0x17b1V0x1415 + 32 + 196 + v1e59V0x17b1V0x1415.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v22 = v43 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v22 = v44 = new bytes[](RETURNDATASIZE());
                            require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v44.data, 0, RETURNDATASIZE());
                        }
                        require(v42, v45 + 32, MEM[v45]);
                        v46 = ___function_selector__;
                        require(!v46, CallbackNotSpent(v46));
                    }
                    require(v22 + MEM[v22] - v22 >= 64);
                    v12 = v47 = 0 - ((MEM[v22 + 64] ^ MEM[v22 + 32]) * (address(v16) < address(v17)) ^ MEM[v22 + 32]);
                    require(v47 >= 0, Panic(17)); // arithmetic overflow or underflow
                    if (MEM[v7] <= 64) {
                        require(v47 >= msg.data[v4 + 224], TooMuchSlippage(v17, 0x97a6f3b9000000000000000000000000, msg.data[v4 + 224], v47));
                        v5 = 1;
                    } else {
                        v14 = v48 = this;
                        require(MEM[v7] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v7 = v7 + 44;
                        MEM[v7] = MEM[v7] - 44;
                    }
                }
            }
        } else {
            require(v4 + v3 - v4 >= 192);
            require(!(msg.data[v4] - address(msg.data[v4])));
            require(v4 + v3 - (v4 + 32) >= 128);
            v49 = new struct(3);
            require(!((v49 + 96 > uint64.max) | (v49 + 96 < v49)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + v3 - (v4 + 32) >= 64);
            v50 = new struct(2);
            require(!((v50 + 64 > uint64.max) | (v50 + 64 < v50)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
            v50.word0 = msg.data[v4 + 32];
            v50.word1 = msg.data[v4 + 32 + 32];
            v49.word0 = v50;
            v49.word1 = msg.data[v4 + 32 + 64];
            v49.word2 = msg.data[v4 + 32 + 96];
            require(msg.data[v4 + 160] <= uint64.max);
            require(v4 + msg.data[v4 + 160] + 31 < v4 + v3);
            require(msg.data[v4 + msg.data[v4 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v51 = new bytes[](msg.data[v4 + msg.data[v4 + 160]]);
            require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + msg.data[v4 + 160] + 32 + msg.data[v4 + msg.data[v4 + 160]] <= v4 + v3);
            CALLDATACOPY(v51.data, v4 + msg.data[v4 + 160] + 32, msg.data[v4 + msg.data[v4 + 160]]);
            v51[msg.data[v4 + msg.data[v4 + 160]]] = 0;
            v52, v53 = fun_permitToTransferDetails(v49, address(msg.data[v4]));
            fun_transferFrom(v49, v53, v51, msg.sender == 0x1ff3684f28c67538d4d072c22734);
            v5 = v54 = 1;
        }
        if (!v5) {
            if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0xe15b26bc) {
                if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0x8de80c1c) {
                    if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0x3a21aa12) {
                        if (0xb840fd0e - (msg.data[varg3 + msg.data[varg3.data] + 68] >> 224)) {
                            v55 = v56 = 0;
                        } else {
                            require(v4 + v3 - v4 >= 352);
                            require(!(msg.data[v4] - address(msg.data[v4])));
                            require(!(msg.data[v4 + 32] - bool(msg.data[v4 + 32])));
                            require(msg.data[v4 + 128] <= uint64.max);
                            require(v4 + msg.data[v4 + 128] + 31 < v4 + v3);
                            require(msg.data[v4 + msg.data[v4 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v57 = new bytes[](msg.data[v4 + msg.data[v4 + 128]]);
                            require(!((v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v57)), Panic(65)); // failed memory allocation (too much memory)
                            require(v4 + msg.data[v4 + 128] + 32 + msg.data[v4 + msg.data[v4 + 128]] <= v4 + v3);
                            CALLDATACOPY(v57.data, v4 + msg.data[v4 + 128] + 32, msg.data[v4 + msg.data[v4 + 128]]);
                            v57[msg.data[v4 + msg.data[v4 + 128]]] = 0;
                            require(v4 + v3 - (v4 + 160) >= 128);
                            v58 = new struct(3);
                            require(!((v58 + 96 > uint64.max) | (v58 + 96 < v58)), Panic(65)); // failed memory allocation (too much memory)
                            require(v4 + v3 - (v4 + 160) >= 64);
                            v59 = new struct(2);
                            require(!((v59 + 64 > uint64.max) | (v59 + 64 < v59)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v4 + 160] - address(msg.data[v4 + 160])));
                            v59.word0 = msg.data[v4 + 160];
                            v59.word1 = msg.data[v4 + 160 + 32];
                            v58.word0 = v59;
                            v58.word1 = msg.data[v4 + 160 + 64];
                            v58.word2 = msg.data[v4 + 160 + 96];
                            require(msg.data[v4 + 288] <= uint64.max);
                            require(v4 + msg.data[v4 + 288] + 31 < v4 + v3);
                            require(msg.data[v4 + msg.data[v4 + 288]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v60 = new bytes[](msg.data[v4 + msg.data[v4 + 288]]);
                            require(!((v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v60)), Panic(65)); // failed memory allocation (too much memory)
                            require(v4 + msg.data[v4 + 288] + 32 + msg.data[v4 + msg.data[v4 + 288]] <= v4 + v3);
                            CALLDATACOPY(v60.data, v4 + msg.data[v4 + 288] + 32, msg.data[v4 + msg.data[v4 + 288]]);
                            v60[msg.data[v4 + msg.data[v4 + 288]]] = 0;
                            require(!msg.data[v4 + 64] | (96 == msg.data[v4 + 64] * 96 / msg.data[v4 + 64]), Panic(17)); // arithmetic overflow or underflow
                            require(!msg.data[v4 + 96] | (96 == msg.data[v4 + 96] * 96 / msg.data[v4 + 96]), Panic(17)); // arithmetic overflow or underflow
                            require(!(bool(msg.data[v4 + 320] >> 128) | bool(msg.data[v4 + 64] * 96 >> 128) | bool(msg.data[v4 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                            MEM[v60.length + (v57.length + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v60.length;
                            MCOPY(306 + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v57.data, v57.length);
                            MCOPY(v57.length + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v60.data, v60.length);
                            MEM8[305 + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                            MCOPY(v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v58 + 32, 64);
                            MCOPY(177 + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v58.word0, 64);
                            MEM8[168 + (v60 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 32] & 0xFF;
                            require((_fun_permitToSellAmount ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                            require(!___function_selector__, ReentrantCallback(___function_selector__));
                            ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                            v61, /* uint256 */ v62 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, address(msg.data[v4]), 209 + (v57.length + v60.length), address(msg.data[v4]), msg.data[v4 + 320], msg.data[v4 + 96] * 96, msg.data[v4 + 64] * 96, 0).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v63 = v64 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v63 = new bytes[](RETURNDATASIZE());
                                require(!((v63 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v63 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v63)), Panic(65)); // failed memory allocation (too much memory)
                                v62 = v63.data;
                                RETURNDATACOPY(v62, 0, RETURNDATASIZE());
                            }
                            require(v61, v63 + 32, MEM[v63]);
                            require(!___function_selector__, CallbackNotSpent(___function_selector__));
                        }
                    } else {
                        require(v4 + v3 - v4 >= 320);
                        require(!(msg.data[v4] - address(msg.data[v4])));
                        require(!(msg.data[v4 + 64] - bool(msg.data[v4 + 64])));
                        require(v4 + v3 - (v4 + 96) >= 128);
                        v65 = new struct(3);
                        require(!((v65 + 96 > uint64.max) | (v65 + 96 < v65)), Panic(65)); // failed memory allocation (too much memory)
                        require(v4 + v3 - (v4 + 96) >= 64);
                        v66 = new struct(2);
                        require(!((v66 + 64 > uint64.max) | (v66 + 64 < v66)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v4 + 96] - address(msg.data[v4 + 96])));
                        v66.word0 = msg.data[v4 + 96];
                        v66.word1 = msg.data[v4 + 96 + 32];
                        v65.word0 = v66;
                        v65.word1 = msg.data[v4 + 96 + 64];
                        v65.word2 = msg.data[v4 + 96 + 96];
                        require(msg.data[v4 + 224] <= uint64.max);
                        require(v4 + msg.data[v4 + 224] + 31 < v4 + v3);
                        require(msg.data[v4 + msg.data[v4 + 224]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v67 = new bytes[](msg.data[v4 + msg.data[v4 + 224]]);
                        require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
                        require(v4 + msg.data[v4 + 224] + 32 + msg.data[v4 + msg.data[v4 + 224]] <= v4 + v3);
                        CALLDATACOPY(v67.data, v4 + msg.data[v4 + 224] + 32, msg.data[v4 + msg.data[v4 + 224]]);
                        v67[msg.data[v4 + msg.data[v4 + 224]]] = 0;
                        require(!(msg.data[v4 + (uint8.max + 1)] - int32(msg.data[v4 + (uint8.max + 1)])));
                        MEM8[11] = 0xff & 0xFF;
                        v68 = fun_permitToSellAmount(v65);
                        MCOPY(32 + (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v65.word0, 64);
                        MCOPY(96 + (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v65, 64);
                        MEM8[160 + (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                        MCOPY(161 + (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v67.data, v67.length);
                        v69 = v67.length + (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0));
                        MCOPY(v69 + 389, v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 224]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), 161 + v67.length);
                        MEM[v69 + 357] = 192;
                        MEM[v69 + 325] = int32(msg.data[v4 + (uint8.max + 1)]);
                        MEM[v69 + 293] = 0;
                        MEM[v69 + 261] = msg.data[v4 + 64];
                        MEM[v69 + 229] = v68;
                        MEM[v69 + 197] = address(msg.data[v4]);
                        MEM[v69 + 177] = 0x3eece7db000000000000000000000000;
                        MEM[v69 + 161] = 357 + v67.length;
                        require((_fun_permitToSellAmount ^ address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v4 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a))) << 96, ConfusedDeputy());
                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                        ___function_selector__ = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v4 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)) | 0x67ca7c9100000000000000040000000000000000000000000000000000000000;
                        v70, /* uint256 */ v71 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v4 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).call(MEM[v199bV0x1415 + 193:v199bV0x1415 + 193 + MEM[v199bV0x1415 + 161]], MEM[0:0]).gas(msg.gas);
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
                        require(v72 + MEM[v72] - v72 >= 64);
                        if (MEM[64 + v72] < msg.data[v4 + 288]) {
                            v74 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v4 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).tokenB().gas(msg.gas);
                            require(v74, MEM[64], RETURNDATASIZE());
                            require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                            revert(TooMuchSlippage(MEM[0], msg.data[v4 + 288], MEM[64 + v72]));
                        } else {
                            v55 = v75 = 1;
                        }
                    }
                } else {
                    require(v4 + v3 - v4 >= 352);
                    require(!(msg.data[v4] - address(msg.data[v4])));
                    require(!(msg.data[v4 + 32] - bool(msg.data[v4 + 32])));
                    require(msg.data[v4 + 128] <= uint64.max);
                    require(v4 + msg.data[v4 + 128] + 31 < v4 + v3);
                    require(msg.data[v4 + msg.data[v4 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v76 = new bytes[](msg.data[v4 + msg.data[v4 + 128]]);
                    require(!((v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v76 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v76)), Panic(65)); // failed memory allocation (too much memory)
                    require(v4 + msg.data[v4 + 128] + 32 + msg.data[v4 + msg.data[v4 + 128]] <= v4 + v3);
                    CALLDATACOPY(v76.data, v4 + msg.data[v4 + 128] + 32, msg.data[v4 + msg.data[v4 + 128]]);
                    v76[msg.data[v4 + msg.data[v4 + 128]]] = 0;
                    require(v4 + v3 - (v4 + 160) >= 128);
                    v77 = new struct(3);
                    require(!((v77 + 96 > uint64.max) | (v77 + 96 < v77)), Panic(65)); // failed memory allocation (too much memory)
                    require(v4 + v3 - (v4 + 160) >= 64);
                    v78 = new struct(2);
                    require(!((v78 + 64 > uint64.max) | (v78 + 64 < v78)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v4 + 160] - address(msg.data[v4 + 160])));
                    v78.word0 = msg.data[v4 + 160];
                    v78.word1 = msg.data[v4 + 160 + 32];
                    v77.word0 = v78;
                    v77.word1 = msg.data[v4 + 160 + 64];
                    v77.word2 = msg.data[v4 + 160 + 96];
                    require(msg.data[v4 + 288] <= uint64.max);
                    require(v4 + msg.data[v4 + 288] + 31 < v4 + v3);
                    require(msg.data[v4 + msg.data[v4 + 288]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v79 = new bytes[](msg.data[v4 + msg.data[v4 + 288]]);
                    require(!((v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v79)), Panic(65)); // failed memory allocation (too much memory)
                    require(v4 + msg.data[v4 + 288] + 32 + msg.data[v4 + msg.data[v4 + 288]] <= v4 + v3);
                    CALLDATACOPY(v79.data, v4 + msg.data[v4 + 288] + 32, msg.data[v4 + msg.data[v4 + 288]]);
                    v79[msg.data[v4 + msg.data[v4 + 288]]] = 0;
                    require(!msg.data[v4 + 64] | (96 == msg.data[v4 + 64] * 96 / msg.data[v4 + 64]), Panic(17)); // arithmetic overflow or underflow
                    require(!msg.data[v4 + 96] | (96 == msg.data[v4 + 96] * 96 / msg.data[v4 + 96]), Panic(17)); // arithmetic overflow or underflow
                    require(!(bool(msg.data[v4 + 320] >> 128) | bool(msg.data[v4 + 64] * 96 >> 128) | bool(msg.data[v4 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                    MEM[277 + (v79.length + (v76.length + (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))))] = v79.length;
                    MCOPY(306 + (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v76.data, v76.length);
                    MCOPY(306 + (v76.length + (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))), v79.data, v79.length);
                    MEM8[305 + (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                    MCOPY(v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v77 + 32, 64);
                    MCOPY(v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 177, v77.word0, 64);
                    MEM8[168 + (v79 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 32] & 0xFF;
                    require((_fun_permitToSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                    ___function_selector__ = uint32(msg.data[v4] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                    v80, /* uint256 */ v81 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v4]), 209 + (v76.length + v79.length), address(msg.data[v4]), msg.data[v4 + 320], 96 * msg.data[v4 + 96], 96 * msg.data[v4 + 64], 0).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v82 = v83 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v82 = new bytes[](RETURNDATASIZE());
                        require(!((v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v82)), Panic(65)); // failed memory allocation (too much memory)
                        v81 = v82.data;
                        RETURNDATACOPY(v81, 0, RETURNDATASIZE());
                    }
                    require(v80, v82 + 32, MEM[v82]);
                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                }
            } else {
                require(v4 + v3 - v4 >= 352);
                require(!(msg.data[v4] - address(msg.data[v4])));
                require(!(msg.data[v4 + 32] - bool(msg.data[v4 + 32])));
                require(msg.data[v4 + 128] <= uint64.max);
                require(v4 + msg.data[v4 + 128] + 31 < v4 + v3);
                require(msg.data[v4 + msg.data[v4 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v84 = new bytes[](msg.data[v4 + msg.data[v4 + 128]]);
                require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + msg.data[v4 + 128] + 32 + msg.data[v4 + msg.data[v4 + 128]] <= v4 + v3);
                CALLDATACOPY(v84.data, v4 + msg.data[v4 + 128] + 32, msg.data[v4 + msg.data[v4 + 128]]);
                v84[msg.data[v4 + msg.data[v4 + 128]]] = 0;
                require(v4 + v3 - (v4 + 160) >= 128);
                v85 = new struct(3);
                require(!((v85 + 96 > uint64.max) | (v85 + 96 < v85)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + v3 - (v4 + 160) >= 64);
                v86 = new struct(2);
                require(!((v86 + 64 > uint64.max) | (v86 + 64 < v86)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v4 + 160] - address(msg.data[v4 + 160])));
                v86.word0 = msg.data[v4 + 160];
                v86.word1 = msg.data[v4 + 160 + 32];
                v85.word0 = v86;
                v85.word1 = msg.data[v4 + 160 + 64];
                v85.word2 = msg.data[v4 + 160 + 96];
                require(msg.data[v4 + 288] <= uint64.max);
                require(v4 + msg.data[v4 + 288] + 31 < v4 + v3);
                require(msg.data[v4 + msg.data[v4 + 288]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v87 = new bytes[](msg.data[v4 + msg.data[v4 + 288]]);
                require(!((v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v87)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + msg.data[v4 + 288] + 32 + msg.data[v4 + msg.data[v4 + 288]] <= v4 + v3);
                CALLDATACOPY(v87.data, v4 + msg.data[v4 + 288] + 32, msg.data[v4 + msg.data[v4 + 288]]);
                v87[msg.data[v4 + msg.data[v4 + 288]]] = 0;
                require(!msg.data[v4 + 64] | (96 == msg.data[v4 + 64] * 96 / msg.data[v4 + 64]), Panic(17)); // arithmetic overflow or underflow
                require(!msg.data[v4 + 96] | (96 == msg.data[v4 + 96] * 96 / msg.data[v4 + 96]), Panic(17)); // arithmetic overflow or underflow
                require(!(bool(msg.data[v4 + 320] >> 128) | bool(msg.data[v4 + 64] * 96 >> 128) | bool(msg.data[v4 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                MEM[277 + (v87.length + (v84.length + (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))))] = v87.length;
                MCOPY(306 + (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v84.data, v84.length);
                MCOPY(306 + (v84.length + (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))), v87.data, v87.length);
                MEM8[305 + (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                MCOPY(v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v85 + 32, 64);
                MCOPY(v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 177, v85.word0, 64);
                MEM8[168 + (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 32] & 0xFF;
                require((_fun_permitToSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                require(!___function_selector__, ReentrantCallback(___function_selector__));
                ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                v88, /* uint256 */ v89 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v4]), 209 + (v84.length + v87.length), address(msg.data[v4]), msg.data[v4 + 320], 96 * msg.data[v4 + 96], 96 * msg.data[v4 + 64], 0).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v90 = v91 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v90 = new bytes[](RETURNDATASIZE());
                    require(!((v90 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v90 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v90)), Panic(65)); // failed memory allocation (too much memory)
                    v89 = v90.data;
                    RETURNDATACOPY(v89, 0, RETURNDATASIZE());
                }
                require(v88, v90 + 32, MEM[v90]);
                require(!___function_selector__, CallbackNotSpent(___function_selector__));
            }
            v55 = v92 = 1;
        } else {
            v55 = v93 = 1;
        }
        if (!v55) {
            v94 = fun_dispatch(msg.data[varg3 + msg.data[varg3.data] + 68] >> 224, v4, v3);
            if (!v94) {
                v95 = new uint256[](v3);
                CALLDATACOPY(v95.data, v4, v3);
                revert(ActionInvalid(0, bytes4(msg.data[varg3 + msg.data[varg3.data] + 68]), v95));
            }
        }
        v96 = v97 = varg3 + 68;
        v98 = v99 = 1;
        while (v98 < varg3.length) {
            v100 = fun_dispatch(msg.data[varg3 + msg.data[v96] + 68] >> 224, varg3 + msg.data[v96] + 72, msg.data[varg3 + msg.data[v96] + 36] - 4);
            if (!v100) {
                v101 = new uint256[](msg.data[varg3 + msg.data[v96] + 36] - 4);
                CALLDATACOPY(v101.data, varg3 + msg.data[v96] + 72, msg.data[varg3 + msg.data[v96] + 36] - 4);
                revert(ActionInvalid(v98, bytes4(msg.data[varg3 + msg.data[v96] + 68]), v101));
            } else {
                v98 += 1;
                v96 += 32;
            }
        }
    }
    v102 = v103 = !varg2;
    if (v103) {
        v102 = v104 = !varg1;
    }
    if (!v102) {
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
            v105 = v106 = fun_fastBalanceOf(varg1, this);
        } else {
            v105 = v107 = this.balance;
        }
        require(v105 >= varg2, TooMuchSlippage(varg1, varg2, v105));
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
            fun_safeTransfer(varg1, varg0, v105);
        } else {
            fun_safeTransferETH(varg0, v105);
        }
    }
    require(!((_fun_permitToSellAmount ^ v0) << 96), PayerSpent());
    _fun_permitToSellAmount = 0;
    return 1;
}

function receive() public payable { 
}

function fun_dispatch(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = new bytes[](v1);
    if (varg0 - 0xd92aadfb) {
        if (0 == (varg0 == 0x8d68a156)) {
            if (varg0 - 0x103b48be) {
                if (varg0 - 0x38c9c147) {
                    if (varg0 - 0x34ee90ca) {
                        if (varg0 - 0xaf72634f) {
                            if (varg0 - 0x736180c8) {
                                if (varg0 - 0x6472b276) {
                                    if (varg0 - 0xfd8c38e1) {
                                        if (varg0 - 0x9b59756f) {
                                            if (varg0 - 0x6c5f9cf9) {
                                                if (varg0 - 0xca9e5d0f) {
                                                    if (0xb8df6d4d != varg0) {
                                                        v2 = v3 = 0;
                                                    } else {
                                                        require(varg1 + varg2 - varg1 >= 160);
                                                        require(!(msg.data[varg1] - address(msg.data[varg1])));
                                                        v4 = msg.data[varg1 + 64];
                                                        require(!(v4 - address(v4)));
                                                        require(!(msg.data[varg1 + 96] - bool(msg.data[varg1 + 96])));
                                                        v5 = msg.data[varg1 + 128];
                                                        v6 = fun_fastBalanceOf(msg.data[varg1], this);
                                                        v7 = v6 * msg.data[varg1 + 32] / 10000;
                                                        fun_safeApproveIfBelow(msg.data[varg1], address(v4), v7);
                                                        if (!msg.data[varg1 + 96]) {
                                                            v8 = v4.sellBaseToken(v7, v5, 96, 0).gas(msg.gas);
                                                            require(v8, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            v2 = v9 = 1;
                                                        } else {
                                                            v10 = v4.getExpectedTarget().gas(msg.gas);
                                                            require(v10, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 63);
                                                            v11 = v4._R_STATUS_().gas(msg.gas);
                                                            require(v11, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            require(!(MEM[0] >> 8));
                                                            require(uint8(MEM[0]) < 3, Panic(33)); // failed convertion to enum type
                                                            v12 = v4.getOraclePrice().gas(msg.gas);
                                                            require(v12, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            v13 = v4._BASE_BALANCE_().gas(msg.gas);
                                                            require(v13, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            v14 = v4._K_().gas(msg.gas);
                                                            require(v14, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            if (0 == (uint8(MEM[0]) == 2)) {
                                                                v15 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * v7 / 10 ** 18;
                                                                if (0 == (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 >= v15) {
                                                                    v16 = v17 = v15 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                    v18 = v19 = 0;
                                                                } else {
                                                                    v16 = v20 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v15;
                                                                    v18 = v21 = 1;
                                                                }
                                                                v22 = v23 = v16 * v16 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                v22 = (v23 >> 1) + 1;
                                                                while (v22 < v22) {
                                                                    v22 = v22 + v23 / v22 >> 1;
                                                                }
                                                                if (!v18) {
                                                                    v24 = v25 = v22 - v16;
                                                                } else {
                                                                    v24 = v26 = v16 + v22;
                                                                }
                                                                v27 = v28 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v24 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v24 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                            } else {
                                                                v29 = v4._QUOTE_BALANCE_().gas(msg.gas);
                                                                require(v29, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                if (v7 > MEM[32] - MEM[0]) {
                                                                    v30 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / MEM[0] + (v7 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                    if (0 == (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 >= v30) {
                                                                        v31 = v32 = v30 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                        v33 = v34 = 0;
                                                                    } else {
                                                                        v31 = v35 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v30;
                                                                        v33 = v36 = 1;
                                                                    }
                                                                    v37 = v38 = v31 * v31 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                    v37 = (v38 >> 1) + 1;
                                                                    while (v37 < v37) {
                                                                        v37 = v37 + v38 / v37 >> 1;
                                                                    }
                                                                    if (!v33) {
                                                                        v39 = v40 = v37 - v31;
                                                                    } else {
                                                                        v39 = v41 = v31 + v37;
                                                                    }
                                                                    v27 = v42 = MEM[0] - MEM[0] + (MEM[0] - (bool(v39 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v39 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                } else {
                                                                    v27 = (MEM[0] + v7 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18 * (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v7) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v7) * 10 ** 18 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                }
                                                            }
                                                            v43 = v4._MT_FEE_RATE_().gas(msg.gas);
                                                            require(v43, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            v44 = v4._LP_FEE_RATE_().gas(msg.gas);
                                                            require(v44, MEM[64], RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            if (v27 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < v5) {
                                                                v45 = v4._BASE_TOKEN_().gas(msg.gas);
                                                                require(v45, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), v5, v27 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                revert();
                                                            } else {
                                                                v46 = v4.buyBaseToken(v27 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v7, 96, 0).gas(msg.gas);
                                                                require(v46, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                v2 = v47 = 1;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    require(varg1 + varg2 - varg1 >= 192);
                                                    require(!(msg.data[varg1] - address(msg.data[varg1])));
                                                    require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
                                                    require(!(msg.data[varg1 + 96] - address(msg.data[varg1 + 96])));
                                                    v48 = msg.data[varg1 + 128];
                                                    require(!(v48 - bool(v48)));
                                                    if (msg.data[varg1 + 64]) {
                                                        v49 = fun_fastBalanceOf(msg.data[varg1 + 32], this);
                                                        fun_safeTransfer(msg.data[varg1 + 32], address(msg.data[varg1 + 96]), v49 * msg.data[varg1 + 64] / 10000);
                                                    }
                                                    v50 = msg.data[varg1 + 96].sellQuote(address(msg.data[varg1]), (0xdd93f59a ^ 0x60f3e02e * !v48) << 96).gas(msg.gas);
                                                    require(v50, MEM[64], RETURNDATASIZE());
                                                    require(RETURNDATASIZE() > 31);
                                                    if (MEM[0] < msg.data[varg1 + 160]) {
                                                        v51 = msg.data[varg1 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                        require(v51, MEM[64], RETURNDATASIZE());
                                                        require(RETURNDATASIZE() > 31);
                                                        require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[varg1 + 160], MEM[0]));
                                                        revert();
                                                    } else {
                                                        v2 = v52 = 1;
                                                    }
                                                }
                                            } else {
                                                v53 = varg1 + varg2;
                                                require(v53 - varg1 >= uint8.max + 1);
                                                require(!(msg.data[varg1] - address(msg.data[varg1])));
                                                require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
                                                require(!(msg.data[varg1 + 96] - bool(msg.data[varg1 + 96])));
                                                require(msg.data[varg1 + 192] <= uint64.max);
                                                require(varg1 + msg.data[varg1 + 192] + 31 < v53);
                                                v54 = msg.data[varg1 + msg.data[varg1 + 192]];
                                                require(v54 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                require(!((MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v54) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v54) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                require(varg1 + msg.data[varg1 + 192] + 32 + v54 <= v53);
                                                CALLDATACOPY(v0.data, varg1 + msg.data[varg1 + 192] + 32, v54);
                                                v0[v54] = 0;
                                                require(!msg.data[varg1 + 128] | (96 == msg.data[varg1 + 128] * 96 / msg.data[varg1 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[varg1 + 160] | (96 == msg.data[varg1 + 160] * 96 / msg.data[varg1 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[varg1 + 64] > 10000) | bool(msg.data[varg1 + 224] >> 128) | bool(msg.data[varg1 + 128] * 96 >> 128) | bool(msg.data[varg1 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v54) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v0.data, v0.length);
                                                MEM8[168 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v54) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[varg1 + 96] & 0xFF;
                                                require((_fun_permitToSellAmount ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v55, /* uint256 */ v56 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, address(msg.data[varg1]), 111 + v0.length, address(msg.data[varg1]), msg.data[varg1 + 224], msg.data[varg1 + 160] * 96, msg.data[varg1 + 128] * 96, this, msg.data[varg1 + 64], msg.data[varg1 + 32]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v57 = v58 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v57 = new bytes[](RETURNDATASIZE());
                                                    require(!((v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v57)), Panic(65)); // failed memory allocation (too much memory)
                                                    v56 = v57.data;
                                                    RETURNDATACOPY(v56, 0, RETURNDATASIZE());
                                                }
                                                require(v55, v57 + 32, MEM[v57]);
                                                require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                            }
                                        } else {
                                            require(varg1 + varg2 - varg1 >= 224);
                                            require(!(msg.data[varg1] - address(msg.data[varg1])));
                                            v59 = msg.data[varg1 + 32];
                                            require(!(v59 - address(v59)));
                                            require(!(msg.data[varg1 + 96] - address(msg.data[varg1 + 96])));
                                            v60 = msg.data[varg1 + 128];
                                            require(!(v60 - bool(v60)));
                                            require(!(msg.data[varg1 + 160] - int32(msg.data[varg1 + 160])));
                                            if (!msg.data[varg1 + 64]) {
                                                v61 = fun_fastBalanceOf(v59, address(msg.data[varg1 + 96]));
                                                v62 = msg.data[varg1 + 96].getState().gas(msg.gas);
                                                require(v62, MEM[64], RETURNDATASIZE());
                                                require(!((RETURNDATASIZE() < 288) | MEM[(!v60 << 5) + MEM[64]] >> 128));
                                                v63 = v64 = 0;
                                                v65 = v66 = v61 - uint128(MEM[(!v60 << 5) + MEM[64]]);
                                            } else {
                                                v63 = 0;
                                                v67 = fun_fastBalanceOf(v59, this);
                                                v65 = v68 = v67 * msg.data[varg1 + 64] / 10000;
                                                fun_safeTransfer(v59, address(msg.data[varg1 + 96]), v68);
                                            }
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[MEM[64]] = v63;
                                            v69 = new bytes[](228);
                                            MCOPY(228 + v69, MEM[64], 32);
                                            MEM[196 + v69] = 192;
                                            MEM[164 + v69] = int32(msg.data[varg1 + 160]);
                                            MEM[132 + v69] = v63;
                                            MEM[100 + v69] = v60;
                                            MEM[68 + v69] = v65;
                                            MEM[36 + v69] = address(msg.data[varg1]);
                                            v70 = v69.length;
                                            v71 = v69.data;
                                            v72, /* uint256 */ v73 = address(msg.data[varg1 + 96]).call(0x3eece7db000000000000000000000000, address(msg.data[varg1]), 0x3eece7db000000000000000000000000, v65, v60, v63, int32(msg.data[varg1 + 160]), 192).value(v63).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v74 = v75 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v74 = new bytes[](RETURNDATASIZE());
                                                require(!((v74 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v74 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v74)), Panic(65)); // failed memory allocation (too much memory)
                                                v73 = v74.data;
                                                RETURNDATACOPY(v73, 0, RETURNDATASIZE());
                                            }
                                            require(v72, v74 + 32, MEM[v74]);
                                            require(v74 + MEM[v74] - v74 >= 64);
                                            if (MEM[64 + v74] < msg.data[varg1 + 192]) {
                                                v76 = msg.data[varg1 + 96].tokenB().gas(msg.gas);
                                                require(v76, MEM[64], RETURNDATASIZE());
                                                require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[varg1 + 192], MEM[64 + v74]));
                                            } else {
                                                v2 = v77 = 1;
                                            }
                                        }
                                    } else {
                                        v78 = varg1 + varg2;
                                        require(v78 - varg1 >= uint8.max + 1);
                                        require(!(msg.data[varg1] - address(msg.data[varg1])));
                                        require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
                                        require(!(msg.data[varg1 + 96] - bool(msg.data[varg1 + 96])));
                                        require(msg.data[varg1 + 192] <= uint64.max);
                                        require(varg1 + msg.data[varg1 + 192] + 31 < v78);
                                        v79 = msg.data[varg1 + msg.data[varg1 + 192]];
                                        require(v79 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        require(!((MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v79) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v79) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(varg1 + msg.data[varg1 + 192] + 32 + v79 <= v78);
                                        CALLDATACOPY(v0.data, varg1 + msg.data[varg1 + 192] + 32, v79);
                                        v0[v79] = 0;
                                        require(!msg.data[varg1 + 128] | (96 == msg.data[varg1 + 128] * 96 / msg.data[varg1 + 128]), Panic(17)); // arithmetic overflow or underflow
                                        require(!msg.data[varg1 + 160] | (96 == msg.data[varg1 + 160] * 96 / msg.data[varg1 + 160]), Panic(17)); // arithmetic overflow or underflow
                                        require(!((msg.data[varg1 + 64] > 10000) | bool(msg.data[varg1 + 224] >> 128) | bool(msg.data[varg1 + 128] * 96 >> 128) | bool(msg.data[varg1 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v79) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v0.data, v0.length);
                                        MEM8[168 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v79) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[varg1 + 96] & 0xFF;
                                        require((_fun_permitToSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                                        ___function_selector__ = uint32(msg.data[varg1] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                        v80, /* uint256 */ v81 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[varg1]), 111 + v0.length, address(msg.data[varg1]), msg.data[varg1 + 224], msg.data[varg1 + 160] * 96, msg.data[varg1 + 128] * 96, this, msg.data[varg1 + 64], msg.data[varg1 + 32]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v82 = v83 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v82 = new bytes[](RETURNDATASIZE());
                                            require(!((v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v82 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v82)), Panic(65)); // failed memory allocation (too much memory)
                                            v81 = v82.data;
                                            RETURNDATACOPY(v81, 0, RETURNDATASIZE());
                                        }
                                        require(v80, v82 + 32, MEM[v82]);
                                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                    }
                                } else {
                                    require(varg1 + varg2 - varg1 >= 192);
                                    require(!(msg.data[varg1] - address(msg.data[varg1])));
                                    v84 = msg.data[varg1 + 32];
                                    require(!(v84 - address(v84)));
                                    require(!(msg.data[varg1 + 96] - address(msg.data[varg1 + 96])));
                                    v85 = msg.data[varg1 + 128];
                                    require(!(v85 - bool(v85)));
                                    EXTCODECOPY(msg.data[varg1 + 96], MEM[64], 54, 384);
                                    v86 = msg.data[varg1 + 96].getReserves().gas(msg.gas);
                                    require(v86, 384 + MEM[64], RETURNDATASIZE());
                                    require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                    v87 = address(address(MEM[v0.data]) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                    require(v87, 384 + MEM[64], RETURNDATASIZE());
                                    require(32 <= RETURNDATASIZE());
                                    v88 = address(address(MEM[v0.data]) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85).maxDeposit(MEM[64 + MEM[64]], 0x402d267d000000000000000000000000).gas(msg.gas);
                                    require(v88, 384 + MEM[64], RETURNDATASIZE());
                                    require(32 <= RETURNDATASIZE());
                                    v89 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, MEM[64 + MEM[64]], address(msg.data[varg1 + 96]), MEM[64 + MEM[64]] << 96).gas(msg.gas);
                                    require(v89, address(msg.data[varg1 + 96]), RETURNDATASIZE());
                                    v90 = address(address(v0.length) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85).cash().gas(msg.gas);
                                    require(v90, 384 + MEM[64], RETURNDATASIZE());
                                    require(32 <= RETURNDATASIZE());
                                    v91 = v92 = (MEM[0] ^ v85 * (MEM[0] ^ MEM[32]) > MEM[0]) * (MEM[0] ^ (MEM[0] ^ v85 * (MEM[0] ^ MEM[32]))) ^ (MEM[0] ^ v85 * (MEM[0] ^ MEM[32]));
                                    v93 = address((address(MEM[v0.data]) ^ address(v0.length)) * v85 ^ address(v0.length)).caps().gas(msg.gas);
                                    require(v93, 384 + MEM[64], RETURNDATASIZE());
                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                    v94 = address(address(v0.length) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85).totalBorrows().gas(msg.gas);
                                    require(v94, 384 + MEM[64], RETURNDATASIZE());
                                    require(32 <= RETURNDATASIZE());
                                    v95 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * ((10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 ^ (0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32]) - MEM[0]);
                                    if (v95 < v92) {
                                        v96 = fun_fastBalanceOf(address(address(v0.length) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85), MEM[64 + MEM[64]]);
                                        v97 = address(address(v0.length) ^ (address(MEM[v0.data]) ^ address(v0.length)) * v85).convertToAssets(v96).gas(msg.gas);
                                        require(v97, 384 + MEM[64], RETURNDATASIZE());
                                        require(32 <= RETURNDATASIZE());
                                        v91 = v98 = (v92 ^ MEM[0] + v95) * (MEM[0] + v95 >= v92) ^ MEM[0] + v95;
                                    }
                                    if (0 == v85) {
                                        if ((MEM[0] - v91) * (MEM[0] > v91) > MEM[96 + MEM[64]]) {
                                            v99 = 10 ** 18 * (((MEM[0] - v91) * (MEM[0] > v91) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]);
                                            v100 = v99 < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                            v101 = ((v99 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v100) + v100) % MEM[192 + MEM[64]];
                                            v102 = ((v99 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v100) + v100) / MEM[192 + MEM[64]] + (bool(v101) & v100);
                                            v103 = (uint16.max < v102 >> ((uint32.max < v102 >> ((uint64.max < v102 >> ((uint128.max < v102) << 7)) << 6 | (uint128.max < v102) << 7)) << 5 | ((uint64.max < v102 >> ((uint128.max < v102) << 7)) << 6 | (uint128.max < v102) << 7))) << 4 | ((uint32.max < v102 >> ((uint64.max < v102 >> ((uint128.max < v102) << 7)) << 6 | (uint128.max < v102) << 7)) << 5 | ((uint64.max < v102 >> ((uint128.max < v102) << 7)) << 6 | (uint128.max < v102) << 7));
                                            v104 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v102 >> ((uint8.max < v102 >> v103) << 3 | v103)))) ^ ((uint8.max < v102 >> v103) << 3 | v103)) + !v102) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v102 >> ((uint8.max < v102 >> v103) << 3 | v103)))) ^ ((uint8.max < v102 >> v103) << 3 | v103)) + !v102) - 127);
                                            v105 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                            v106 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v105) << 4 | v105)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v105) << 4 | v105);
                                            v107 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v106))) ^ v106) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v106))) ^ v106) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                            v108 = ((v107 ^ v104) * (v104 < v107) ^ v104) << 1;
                                            if (0 == v100) {
                                                v109 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                v110 = (uint40.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> ((uint72.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> ((uint136.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) << 7)) << 6 | (uint136.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) << 7)) << 5 | ((uint72.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> ((uint136.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) << 7)) << 6 | (uint136.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) << 7);
                                                v111 = ((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / ((181 << (((uint24.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> v110) << 4 | v110) >> 1)) * (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> ((uint24.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> v110) << 4 | v110)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> v110) << 4 | v110) >> 1)) * (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> ((uint24.max < (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108) >> v110) << 4 | v110)) + (uint16.max + 1)) >> 18) >> 1;
                                                v112 = ((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v111 + v111 >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v111 + v111 >> 1) >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v111 + v111 >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v111 + v111 >> 1) >> 1) >> 1;
                                                v113 = ((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v112 + v112 >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v112 + v112 >> 1) >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v112 + v112 >> 1) + (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v112 + v112 >> 1) >> 1) >> 1;
                                                v114 = (v113 - (((v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (v109 >> v108 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v109 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v109) << uint8.max + 1 - v108)) / v113 < v113) << ((v107 ^ v104) * (v104 < v107) ^ v104)) + v102;
                                                v115 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                v116 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v114;
                                                v117 = (2 - v114 / (0 - v114 & v114) * ((2 - v114 / (0 - v114 & v114) * (3 * (v114 / (0 - v114 & v114)) ^ 0x2)) * (3 * (v114 / (0 - v114 & v114)) ^ 0x2))) * ((2 - v114 / (0 - v114 & v114) * (3 * (v114 / (0 - v114 & v114)) ^ 0x2)) * (3 * (v114 / (0 - v114 & v114)) ^ 0x2));
                                                v118 = (2 - v114 / (0 - v114 & v114) * ((2 - v114 / (0 - v114 & v114) * v117) * v117)) * ((2 - v114 / (0 - v114 & v114) * v117) * v117);
                                                v119 = v120 = bool(v116) + ((v115 - v116) / (0 - v114 & v114) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v115 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v115) - (v116 > v115)) * ((0 - (0 - v114 & v114)) / (0 - v114 & v114) + 1)) * ((2 - v114 / (0 - v114 & v114) * ((2 - v114 / (0 - v114 & v114) * v118) * v118)) * ((2 - v114 / (0 - v114 & v114) * v118) * v118));
                                            } else {
                                                v121 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                v122 = (uint40.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> ((uint72.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> ((uint136.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) << 7)) << 6 | (uint136.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) << 7)) << 5 | ((uint72.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> ((uint136.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) << 7)) << 6 | (uint136.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) << 7);
                                                v123 = (bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((181 << (((uint24.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> v122) << 4 | v122) >> 1)) * ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> ((uint24.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> v122) << 4 | v122)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> v122) << 4 | v122) >> 1)) * ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> ((uint24.max < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108)) >> v122) << 4 | v122)) + (uint16.max + 1)) >> 18) >> 1;
                                                v124 = (bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v123 + v123 >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v123 + v123 >> 1) >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v123 + v123 >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v123 + v123 >> 1) >> 1) >> 1;
                                                v125 = (bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v124 + v124 >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v124 + v124 >> 1) >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v124 + v124 >> 1) + ((bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) / v124 + v124 >> 1) >> 1) >> 1;
                                                v119 = v126 = bool((((v125 * v125 < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) + v125 << ((v107 ^ v104) * (v104 < v107) ^ v104)) + v102) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v125 * v125 < bool(v102 * v102 << uint8.max + 1 - v108) + (v102 * v102 >> v108 | v102 * v102 % uint256.max - v102 * v102 - (v102 * v102 % uint256.max < v102 * v102) << uint8.max + 1 - v108) + (bool(v121 << uint8.max + 1 - v108) + (v121 >> v108 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v121 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v121) << uint8.max + 1 - v108))) + v125 << ((v107 ^ v104) * (v104 < v107) ^ v104)) + v102) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                            }
                                            v127 = v119 - (v119 > MEM[128 + MEM[64]]);
                                        } else {
                                            v127 = v128 = fun_saturatingF((MEM[0] - v91) * (MEM[0] > v91), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                        }
                                        v129 = v130 = (v127 > MEM[32]) * (v127 - MEM[32]);
                                    } else {
                                        if ((MEM[32] - v91) * (MEM[32] > v91) > MEM[128 + MEM[64]]) {
                                            v131 = 10 ** 18 * (((MEM[32] - v91) * (MEM[32] > v91) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                            v132 = v131 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                            v133 = ((v131 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v132) + v132) % MEM[160 + MEM[64]];
                                            v134 = ((v131 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v132) + v132) / MEM[160 + MEM[64]] + (bool(v133) & v132);
                                            v135 = (uint16.max < v134 >> ((uint32.max < v134 >> ((uint64.max < v134 >> ((uint128.max < v134) << 7)) << 6 | (uint128.max < v134) << 7)) << 5 | ((uint64.max < v134 >> ((uint128.max < v134) << 7)) << 6 | (uint128.max < v134) << 7))) << 4 | ((uint32.max < v134 >> ((uint64.max < v134 >> ((uint128.max < v134) << 7)) << 6 | (uint128.max < v134) << 7)) << 5 | ((uint64.max < v134 >> ((uint128.max < v134) << 7)) << 6 | (uint128.max < v134) << 7));
                                            v136 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v134 >> ((uint8.max < v134 >> v135) << 3 | v135)))) ^ ((uint8.max < v134 >> v135) << 3 | v135)) + !v134) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v134 >> ((uint8.max < v134 >> v135) << 3 | v135)))) ^ ((uint8.max < v134 >> v135) << 3 | v135)) + !v134) - 127);
                                            v137 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                            v138 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v137) << 4 | v137)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v137) << 4 | v137);
                                            v139 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v138))) ^ v138) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v138))) ^ v138) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                            v140 = ((v139 ^ v136) * (v136 < v139) ^ v136) << 1;
                                            if (0 == v132) {
                                                v141 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v142 = (uint40.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> ((uint72.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> ((uint136.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) << 7)) << 6 | (uint136.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) << 7)) << 5 | ((uint72.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> ((uint136.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) << 7)) << 6 | (uint136.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) << 7);
                                                v143 = ((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / ((181 << (((uint24.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> v142) << 4 | v142) >> 1)) * (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> ((uint24.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> v142) << 4 | v142)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> v142) << 4 | v142) >> 1)) * (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> ((uint24.max < (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140) >> v142) << 4 | v142)) + (uint16.max + 1)) >> 18) >> 1;
                                                v144 = ((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v143 + v143 >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v143 + v143 >> 1) >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v143 + v143 >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v143 + v143 >> 1) >> 1) >> 1;
                                                v145 = ((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v144 + v144 >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v144 + v144 >> 1) >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v144 + v144 >> 1) + (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v144 + v144 >> 1) >> 1) >> 1;
                                                v146 = (v145 - (((v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (v141 >> v140 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v141 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v141) << uint8.max + 1 - v140)) / v145 < v145) << ((v139 ^ v136) * (v136 < v139) ^ v136)) + v134;
                                                v147 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v148 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v146;
                                                v149 = (2 - v146 / (0 - v146 & v146) * ((2 - v146 / (0 - v146 & v146) * (3 * (v146 / (0 - v146 & v146)) ^ 0x2)) * (3 * (v146 / (0 - v146 & v146)) ^ 0x2))) * ((2 - v146 / (0 - v146 & v146) * (3 * (v146 / (0 - v146 & v146)) ^ 0x2)) * (3 * (v146 / (0 - v146 & v146)) ^ 0x2));
                                                v150 = (2 - v146 / (0 - v146 & v146) * ((2 - v146 / (0 - v146 & v146) * v149) * v149)) * ((2 - v146 / (0 - v146 & v146) * v149) * v149);
                                                v151 = v152 = bool(v148) + ((v147 - v148) / (0 - v146 & v146) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v147 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v147) - (v148 > v147)) * ((0 - (0 - v146 & v146)) / (0 - v146 & v146) + 1)) * ((2 - v146 / (0 - v146 & v146) * ((2 - v146 / (0 - v146 & v146) * v150) * v150)) * ((2 - v146 / (0 - v146 & v146) * v150) * v150));
                                            } else {
                                                v153 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v154 = (uint40.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> ((uint72.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> ((uint136.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) << 7)) << 6 | (uint136.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) << 7)) << 5 | ((uint72.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> ((uint136.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) << 7)) << 6 | (uint136.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) << 7);
                                                v155 = (bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((181 << (((uint24.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> v154) << 4 | v154) >> 1)) * ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> ((uint24.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> v154) << 4 | v154)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> v154) << 4 | v154) >> 1)) * ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> ((uint24.max < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140)) >> v154) << 4 | v154)) + (uint16.max + 1)) >> 18) >> 1;
                                                v156 = (bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v155 + v155 >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v155 + v155 >> 1) >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v155 + v155 >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v155 + v155 >> 1) >> 1) >> 1;
                                                v157 = (bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v156 + v156 >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v156 + v156 >> 1) >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v156 + v156 >> 1) + ((bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) / v156 + v156 >> 1) >> 1) >> 1;
                                                v151 = v158 = bool((((v157 * v157 < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) + v157 << ((v139 ^ v136) * (v136 < v139) ^ v136)) + v134) % (MEM[224 + MEM[64]] << 1)) + (((v157 * v157 < bool(v134 * v134 << uint8.max + 1 - v140) + (v134 * v134 >> v140 | v134 * v134 % uint256.max - v134 * v134 - (v134 * v134 % uint256.max < v134 * v134) << uint8.max + 1 - v140) + (bool(v153 << uint8.max + 1 - v140) + (v153 >> v140 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v153 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v153) << uint8.max + 1 - v140))) + v157 << ((v139 ^ v136) * (v136 < v139) ^ v136)) + v134) / (MEM[224 + MEM[64]] << 1);
                                            }
                                            v159 = v151 - (v151 > MEM[96 + MEM[64]]);
                                        } else {
                                            v159 = v160 = fun_saturatingF((MEM[32] - v91) * (MEM[32] > v91), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                        }
                                        v129 = v161 = (v159 > MEM[0]) * (v159 - MEM[0]);
                                    }
                                    v162 = ((MEM[0] + MEM[0]) * MEM[0] ^ ((MEM[0] + MEM[0]) * MEM[0] ^ v129) * (v129 < (MEM[0] + MEM[0]) * MEM[0])) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                    v163 = 0;
                                    if (msg.data[varg1 + 64]) {
                                        v164 = fun_fastBalanceOf(v84, this);
                                        v163 = v165 = (v162 ^ v164 * msg.data[varg1 + 64] / 10000) * (v164 * msg.data[varg1 + 64] / 10000 > v162) ^ v164 * msg.data[varg1 + 64] / 10000;
                                        fun_safeTransfer(v84, address(msg.data[varg1 + 96]), v165);
                                    }
                                    if (!v163) {
                                        v166 = fun_fastBalanceOf(v84, address(msg.data[varg1 + 96]));
                                        v163 = v167 = (v162 ^ v166) * (v166 > v162) ^ v166;
                                    }
                                    if (0 == v85) {
                                        if (MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                            v168 = 10 ** 18 * ((MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                            v169 = v168 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                            v170 = ((v168 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v169) + v169) % MEM[160 + MEM[64]];
                                            v171 = ((v168 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v169) + v169) / MEM[160 + MEM[64]] + (bool(v170) & v169);
                                            v172 = (uint16.max < v171 >> ((uint32.max < v171 >> ((uint64.max < v171 >> ((uint128.max < v171) << 7)) << 6 | (uint128.max < v171) << 7)) << 5 | ((uint64.max < v171 >> ((uint128.max < v171) << 7)) << 6 | (uint128.max < v171) << 7))) << 4 | ((uint32.max < v171 >> ((uint64.max < v171 >> ((uint128.max < v171) << 7)) << 6 | (uint128.max < v171) << 7)) << 5 | ((uint64.max < v171 >> ((uint128.max < v171) << 7)) << 6 | (uint128.max < v171) << 7));
                                            v173 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v171 >> ((uint8.max < v171 >> v172) << 3 | v172)))) ^ ((uint8.max < v171 >> v172) << 3 | v172)) + !v171) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v171 >> ((uint8.max < v171 >> v172) << 3 | v172)))) ^ ((uint8.max < v171 >> v172) << 3 | v172)) + !v171) - 127);
                                            v174 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                            v175 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v174) << 4 | v174)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v174) << 4 | v174);
                                            v176 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v175))) ^ v175) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v175))) ^ v175) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                            v177 = ((v176 ^ v173) * (v173 < v176) ^ v173) << 1;
                                            if (0 == v169) {
                                                v178 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v179 = (uint40.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> ((uint72.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> ((uint136.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) << 7)) << 6 | (uint136.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) << 7)) << 5 | ((uint72.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> ((uint136.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) << 7)) << 6 | (uint136.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) << 7);
                                                v180 = ((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / ((181 << (((uint24.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> v179) << 4 | v179) >> 1)) * (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> ((uint24.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> v179) << 4 | v179)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> v179) << 4 | v179) >> 1)) * (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> ((uint24.max < (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177) >> v179) << 4 | v179)) + (uint16.max + 1)) >> 18) >> 1;
                                                v181 = ((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v180 + v180 >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v180 + v180 >> 1) >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v180 + v180 >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v180 + v180 >> 1) >> 1) >> 1;
                                                v182 = ((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v181 + v181 >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v181 + v181 >> 1) >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v181 + v181 >> 1) + (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v181 + v181 >> 1) >> 1) >> 1;
                                                v183 = (v182 - (((v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (v178 >> v177 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v178 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v178) << uint8.max + 1 - v177)) / v182 < v182) << ((v176 ^ v173) * (v173 < v176) ^ v173)) + v171;
                                                v184 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v185 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v183;
                                                v186 = (2 - v183 / (0 - v183 & v183) * ((2 - v183 / (0 - v183 & v183) * (3 * (v183 / (0 - v183 & v183)) ^ 0x2)) * (3 * (v183 / (0 - v183 & v183)) ^ 0x2))) * ((2 - v183 / (0 - v183 & v183) * (3 * (v183 / (0 - v183 & v183)) ^ 0x2)) * (3 * (v183 / (0 - v183 & v183)) ^ 0x2));
                                                v187 = (2 - v183 / (0 - v183 & v183) * ((2 - v183 / (0 - v183 & v183) * v186) * v186)) * ((2 - v183 / (0 - v183 & v183) * v186) * v186);
                                                v188 = v189 = bool(v185) + ((v184 - v185) / (0 - v183 & v183) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v184 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v184) - (v185 > v184)) * ((0 - (0 - v183 & v183)) / (0 - v183 & v183) + 1)) * ((2 - v183 / (0 - v183 & v183) * ((2 - v183 / (0 - v183 & v183) * v187) * v187)) * ((2 - v183 / (0 - v183 & v183) * v187) * v187));
                                            } else {
                                                v190 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                v191 = (uint40.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> ((uint72.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> ((uint136.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) << 7)) << 6 | (uint136.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) << 7)) << 5 | ((uint72.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> ((uint136.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) << 7)) << 6 | (uint136.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) << 7);
                                                v192 = (bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((181 << (((uint24.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> v191) << 4 | v191) >> 1)) * ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> ((uint24.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> v191) << 4 | v191)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> v191) << 4 | v191) >> 1)) * ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> ((uint24.max < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177)) >> v191) << 4 | v191)) + (uint16.max + 1)) >> 18) >> 1;
                                                v193 = (bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v192 + v192 >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v192 + v192 >> 1) >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v192 + v192 >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v192 + v192 >> 1) >> 1) >> 1;
                                                v194 = (bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v193 + v193 >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v193 + v193 >> 1) >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v193 + v193 >> 1) + ((bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) / v193 + v193 >> 1) >> 1) >> 1;
                                                v188 = v195 = bool((((v194 * v194 < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) + v194 << ((v176 ^ v173) * (v173 < v176) ^ v173)) + v171) % (MEM[224 + MEM[64]] << 1)) + (((v194 * v194 < bool(v171 * v171 << uint8.max + 1 - v177) + (v171 * v171 >> v177 | v171 * v171 % uint256.max - v171 * v171 - (v171 * v171 % uint256.max < v171 * v171) << uint8.max + 1 - v177) + (bool(v190 << uint8.max + 1 - v177) + (v190 >> v177 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v190 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v190) << uint8.max + 1 - v177))) + v194 << ((v176 ^ v173) * (v173 < v176) ^ v173)) + v171) / (MEM[224 + MEM[64]] << 1);
                                            }
                                            v196 = v197 = (MEM[0] > !(v188 - (v188 > MEM[96 + MEM[64]])) + (v188 - (v188 > MEM[96 + MEM[64]]))) * (MEM[0] - (!(v188 - (v188 > MEM[96 + MEM[64]])) + (v188 - (v188 > MEM[96 + MEM[64]]))));
                                        } else {
                                            v198 = fun_saturatingF(MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                            v196 = v199 = (MEM[0] > !v198 + v198) * (MEM[0] - (!v198 + v198));
                                        }
                                    } else if (MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                        v200 = 10 ** 18 * ((MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                        v201 = (10 ** 18 * ((MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v200) + v200;
                                        v202 = v201 / MEM[192 + MEM[64]] + (bool(v201 % MEM[192 + MEM[64]]) & v200);
                                        v203 = (uint16.max < v202 >> ((uint32.max < v202 >> ((uint64.max < v202 >> ((uint128.max < v202) << 7)) << 6 | (uint128.max < v202) << 7)) << 5 | ((uint64.max < v202 >> ((uint128.max < v202) << 7)) << 6 | (uint128.max < v202) << 7))) << 4 | ((uint32.max < v202 >> ((uint64.max < v202 >> ((uint128.max < v202) << 7)) << 6 | (uint128.max < v202) << 7)) << 5 | ((uint64.max < v202 >> ((uint128.max < v202) << 7)) << 6 | (uint128.max < v202) << 7));
                                        v204 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v202 >> ((uint8.max < v202 >> v203) << 3 | v203)))) ^ ((uint8.max < v202 >> v203) << 3 | v203)) + !v202) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v202 >> ((uint8.max < v202 >> v203) << 3 | v203)))) ^ ((uint8.max < v202 >> v203) << 3 | v203)) + !v202) - 127);
                                        v205 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                        v206 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v205) << 4 | v205)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v205) << 4 | v205);
                                        v207 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v206))) ^ v206) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v206))) ^ v206) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                        v208 = ((v207 ^ v204) * (v204 < v207) ^ v204) << 1;
                                        if (0 == v200) {
                                            v209 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                            v210 = (uint40.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> ((uint72.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> ((uint136.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) << 7)) << 6 | (uint136.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) << 7)) << 5 | ((uint72.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> ((uint136.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) << 7)) << 6 | (uint136.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) << 7);
                                            v211 = ((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / ((181 << (((uint24.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> v210) << 4 | v210) >> 1)) * (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> ((uint24.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> v210) << 4 | v210)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> v210) << 4 | v210) >> 1)) * (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> ((uint24.max < (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208) >> v210) << 4 | v210)) + (uint16.max + 1)) >> 18) >> 1;
                                            v212 = ((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v211 + v211 >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v211 + v211 >> 1) >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v211 + v211 >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v211 + v211 >> 1) >> 1) >> 1;
                                            v213 = ((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v212 + v212 >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v212 + v212 >> 1) >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v212 + v212 >> 1) + (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v212 + v212 >> 1) >> 1) >> 1;
                                            v214 = (v213 - (((v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (v209 >> v208 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v209 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v209) << uint8.max + 1 - v208)) / v213 < v213) << ((v207 ^ v204) * (v204 < v207) ^ v204)) + v202;
                                            v215 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                            v216 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v214;
                                            v217 = (2 - v214 / (0 - v214 & v214) * ((2 - v214 / (0 - v214 & v214) * (3 * (v214 / (0 - v214 & v214)) ^ 0x2)) * (3 * (v214 / (0 - v214 & v214)) ^ 0x2))) * ((2 - v214 / (0 - v214 & v214) * (3 * (v214 / (0 - v214 & v214)) ^ 0x2)) * (3 * (v214 / (0 - v214 & v214)) ^ 0x2));
                                            v218 = (2 - v214 / (0 - v214 & v214) * ((2 - v214 / (0 - v214 & v214) * v217) * v217)) * ((2 - v214 / (0 - v214 & v214) * v217) * v217);
                                            v219 = v220 = bool(v216) + ((v215 - v216) / (0 - v214 & v214) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v215 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v215) - (v216 > v215)) * ((0 - (0 - v214 & v214)) / (0 - v214 & v214) + 1)) * ((2 - v214 / (0 - v214 & v214) * ((2 - v214 / (0 - v214 & v214) * v218) * v218)) * ((2 - v214 / (0 - v214 & v214) * v218) * v218));
                                        } else {
                                            v221 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                            v222 = (uint40.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> ((uint72.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> ((uint136.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) << 7)) << 6 | (uint136.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) << 7)) << 5 | ((uint72.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> ((uint136.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) << 7)) << 6 | (uint136.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) << 7);
                                            v223 = (bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((181 << (((uint24.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> v222) << 4 | v222) >> 1)) * ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> ((uint24.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> v222) << 4 | v222)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> v222) << 4 | v222) >> 1)) * ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> ((uint24.max < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208)) >> v222) << 4 | v222)) + (uint16.max + 1)) >> 18) >> 1;
                                            v224 = (bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v223 + v223 >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v223 + v223 >> 1) >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v223 + v223 >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v223 + v223 >> 1) >> 1) >> 1;
                                            v225 = (bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v224 + v224 >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v224 + v224 >> 1) >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v224 + v224 >> 1) + ((bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) / v224 + v224 >> 1) >> 1) >> 1;
                                            v219 = v226 = bool((((v225 * v225 < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) + v225 << ((v207 ^ v204) * (v204 < v207) ^ v204)) + v202) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v225 * v225 < bool(v202 * v202 << uint8.max + 1 - v208) + (v202 * v202 >> v208 | v202 * v202 % uint256.max - v202 * v202 - (v202 * v202 % uint256.max < v202 * v202) << uint8.max + 1 - v208) + (bool(v221 << uint8.max + 1 - v208) + (v221 >> v208 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v221 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v221) << uint8.max + 1 - v208))) + v225 << ((v207 ^ v204) * (v204 < v207) ^ v204)) + v202) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                        }
                                        v196 = v227 = (MEM[32] > !(v219 - (v219 > MEM[128 + MEM[64]])) + (v219 - (v219 > MEM[128 + MEM[64]]))) * (MEM[32] - (!(v219 - (v219 > MEM[128 + MEM[64]])) + (v219 - (v219 > MEM[128 + MEM[64]]))));
                                    } else {
                                        v228 = fun_saturatingF(MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                        v196 = v229 = (MEM[32] > !v228 + v228) * (MEM[32] - (!v228 + v228));
                                    }
                                    if (v196 < msg.data[varg1 + 160]) {
                                        v230 = address((address(MEM[v0.data]) ^ address(v0.length)) * v85 ^ address(v0.length)).asset().gas(msg.gas);
                                        require(v230, 384 + MEM[64], RETURNDATASIZE());
                                        require((32 > RETURNDATASIZE()) | MEM[0] >> 160, TooMuchSlippage(MEM[0], msg.data[160 + varg1], v196));
                                        revert();
                                    } else {
                                        if (v196 > 1) {
                                            MEM[384 + MEM[64] + (v85 << 5) + 32] = v196;
                                            MEM[(0x20 ^ v85 << 5) + (384 + MEM[64]) + 32] = 0;
                                            v231, /* uint256 */ v232 = msg.data[varg1 + 96].swap(v233, v233, address(msg.data[varg1]), 128, 0).gas(msg.gas);
                                            require(v231, v232, RETURNDATASIZE());
                                        }
                                        v2 = v234 = 1;
                                    }
                                }
                            } else {
                                require(varg1 + varg2 - varg1 >= 192);
                                require(!(msg.data[varg1] - address(msg.data[varg1])));
                                v235 = msg.data[varg1 + 64];
                                require(!(v235 - bool(v235)));
                                v236 = v237 = msg.data[varg1 + 96];
                                v238 = msg.data[varg1 + 128];
                                require(!(v238 - address(v238)));
                                require(!(msg.data[varg1 + 160] - address(msg.data[varg1 + 160])));
                                v239 = v240 = msg.data[varg1 + 160] ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[varg1 + 160]) * v235;
                                v241 = fun_fastBalanceOf(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[varg1 + 160]) * v235, this);
                                if (!v235) {
                                    v242 = v238.sellGem(address(msg.data[varg1]), 0x95991276000000000000000000000000, v241 * msg.data[varg1 + 32] / 10000).gas(msg.gas);
                                    if (!v242) {
                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                    } else {
                                        require(RETURNDATASIZE() > 31);
                                        MEM[52] = 0;
                                        v243 = v244 = MEM[0];
                                        if (v244 >= v237) {
                                            v2 = v245 = 1;
                                        }
                                    }
                                } else {
                                    v246 = v238.tout().gas(msg.gas);
                                    require(v246, MEM[64], RETURNDATASIZE());
                                    require(RETURNDATASIZE() > 31);
                                    v243 = v247 = v241 * msg.data[varg1 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                    if (v247 >= v237) {
                                        v248 = v238.buyGem(address(msg.data[varg1]), 0x8d7ef9bb000000000000000000000000, v247).gas(msg.gas);
                                        if (!v248) {
                                            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                            revert(uint96(MEM[64]), RETURNDATASIZE());
                                        } else {
                                            require(RETURNDATASIZE() > 31);
                                            MEM[52] = 0;
                                            v2 = v249 = 1;
                                        }
                                    }
                                }
                            }
                        } else {
                            v250 = varg1 + varg2;
                            require(v250 - varg1 >= uint8.max + 1);
                            require(!(msg.data[varg1] - address(msg.data[varg1])));
                            require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
                            require(!(msg.data[varg1 + 96] - bool(msg.data[varg1 + 96])));
                            require(msg.data[varg1 + 192] <= uint64.max);
                            require(varg1 + msg.data[varg1 + 192] + 31 < v250);
                            v251 = msg.data[varg1 + msg.data[varg1 + 192]];
                            require(v251 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            require(!((MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v251) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v251) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(varg1 + msg.data[varg1 + 192] + 32 + v251 <= v250);
                            CALLDATACOPY(v0.data, varg1 + msg.data[varg1 + 192] + 32, v251);
                            v0[v251] = 0;
                            require(!msg.data[varg1 + 128] | (96 == msg.data[varg1 + 128] * 96 / msg.data[varg1 + 128]), Panic(17)); // arithmetic overflow or underflow
                            require(!msg.data[varg1 + 160] | (96 == msg.data[varg1 + 160] * 96 / msg.data[varg1 + 160]), Panic(17)); // arithmetic overflow or underflow
                            require(!((msg.data[varg1 + 64] > 10000) | bool(msg.data[varg1 + 224] >> 128) | bool(msg.data[varg1 + 128] * 96 >> 128) | bool(msg.data[varg1 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                            MCOPY(211 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v251) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v0.data, v0.length);
                            MEM8[168 + (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v251) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[varg1 + 96] & 0xFF;
                            require((_fun_permitToSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                            require(!___function_selector__, ReentrantCallback(___function_selector__));
                            ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                            v252, /* uint256 */ v253 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[varg1]), 111 + v0.length, address(msg.data[varg1]), msg.data[varg1 + 224], msg.data[varg1 + 160] * 96, msg.data[varg1 + 128] * 96, this, msg.data[varg1 + 64], msg.data[varg1 + 32]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v254 = v255 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v254 = new bytes[](RETURNDATASIZE());
                                require(!((v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v254)), Panic(65)); // failed memory allocation (too much memory)
                                v253 = v254.data;
                                RETURNDATACOPY(v253, 0, RETURNDATASIZE());
                            }
                            require(v252, v254 + 32, MEM[v254]);
                            require(!___function_selector__, CallbackNotSpent(___function_selector__));
                        }
                        v2 = v256 = 1;
                    } else {
                        require(varg1 + varg2 - varg1 >= 128);
                        require(!(msg.data[varg1] - address(msg.data[varg1])));
                        v257 = msg.data[varg1 + 32];
                        require(!(v257 - address(v257)));
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(v257)) {
                            v258 = v259 = fun_fastBalanceOf(v257, this);
                        } else {
                            v258 = v260 = this.balance;
                        }
                        if (v258 > msg.data[varg1 + 64]) {
                            v261 = (v258 * msg.data[varg1 + 96] / 10000 ^ v258 - msg.data[varg1 + 64]) * (v258 - msg.data[varg1 + 64] > v258 * msg.data[varg1 + 96] / 10000) ^ v258 - msg.data[varg1 + 64];
                            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v257))) {
                                fun_safeTransfer(v257, address(msg.data[varg1]), v261);
                            } else {
                                fun_safeTransferETH(msg.data[varg1], v261);
                            }
                        }
                        v2 = v262 = 1;
                    }
                } else {
                    v263 = varg1 + varg2;
                    require(v263 - varg1 >= 160);
                    require(!(msg.data[varg1] - address(msg.data[varg1])));
                    require(!(msg.data[varg1 + 64] - address(msg.data[varg1 + 64])));
                    require(msg.data[varg1 + 128] <= uint64.max);
                    require(varg1 + msg.data[varg1 + 128] + 31 < v263);
                    v264 = msg.data[varg1 + msg.data[varg1 + 128]];
                    require(v264 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    require(!((MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v264) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v264) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(varg1 + msg.data[varg1 + 128] + 32 + v264 <= v263);
                    CALLDATACOPY(v0.data, varg1 + msg.data[varg1 + 128] + 32, v264);
                    v0[v264] = 0;
                    v265 = msg.data[varg1 + 96];
                    require(!((address(msg.data[varg1 + 64]) == 0x1ff3684f28c67538d4d072c22734) | (address(msg.data[varg1 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3)), ConfusedDeputy());
                    v266 = v267 = 0;
                    if (address(msg.data[varg1]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                        if (0 == !address(msg.data[varg1])) {
                            v268 = fun_fastBalanceOf(msg.data[varg1], this);
                            v269 = fun_unsafeMulDiv_38668(v268, msg.data[varg1 + 32]);
                            require(v265 <= v265 + 32, Panic(17)); // arithmetic overflow or underflow
                            require(v0.length >= v265 + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v270 = 0;
                            v0[v265] = v269;
                            if (address(msg.data[varg1]) - address(msg.data[varg1 + 64])) {
                                fun_safeApproveIfBelow(msg.data[varg1], address(msg.data[varg1 + 64]), v269);
                            }
                        } else {
                            require(!v265, InvalidOffset());
                            v270 = v271 = 0;
                        }
                    } else {
                        v266 = this.balance * msg.data[varg1 + 32] / 10000;
                        if (0 == !v0.length) {
                            require(v265 <= v265 + 32, Panic(17)); // arithmetic overflow or underflow
                            require(v0.length >= v265 + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v270 = v272 = 0;
                            v0[v265] = v266;
                        } else {
                            require(!v265, InvalidOffset());
                            v273, /* uint256 */ v274 = address(msg.data[varg1 + 64]).call().value(v266).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v275 = v276 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v275 = new bytes[](RETURNDATASIZE());
                                require(!((v275 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v275 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v275)), Panic(65)); // failed memory allocation (too much memory)
                                v274 = v275.data;
                                RETURNDATACOPY(v274, 0, RETURNDATASIZE());
                            }
                            require(v273, v275 + 32, MEM[v275]);
                        }
                    }
                    v2 = v277 = 1;
                    v278 = address(msg.data[varg1 + 64]).call(MEM[v1c2e.data:v1c2e.data + v1c2e.length], MEM[v401cV0x2b6bV0x1c28:v401cV0x2b6bV0x1c28 + v401cV0x2b6bV0x1c28]).value(v266).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v279 = v280 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v279 = new bytes[](RETURNDATASIZE());
                        require(!((v279 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v279 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v279)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v279.data, 0, RETURNDATASIZE());
                    }
                    require(v278, v279 + 32, MEM[v279]);
                    v281 = v282 = !MEM[v279];
                    if (v282) {
                        v281 = v283 = !(address(msg.data[varg1 + 64])).code.size;
                    }
                    require(!v281, InvalidTarget());
                }
            } else {
                require(varg1 + varg2 - varg1 >= 192);
                require(!(msg.data[varg1] - address(msg.data[varg1])));
                require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
                require(!(msg.data[varg1 + 96] - address(msg.data[varg1 + 96])));
                v284 = msg.data[varg1 + 128];
                require(!(v284 - uint24(v284)));
                v285 = v286 = 0;
                if (msg.data[varg1 + 64]) {
                    v287 = fun_fastBalanceOf(address(msg.data[varg1 + 32]), this);
                    v285 = v288 = v287 * msg.data[varg1 + 64] / 10000;
                    fun_safeTransfer(address(msg.data[varg1 + 32]), address(msg.data[varg1 + 96]), v288);
                }
                v289 = address(msg.data[varg1 + 96]).getReserves().gas(msg.gas);
                require(v289, MEM[64], RETURNDATASIZE());
                require(RETURNDATASIZE() >= 64);
                v290 = !v285;
                if (bool(v285)) {
                    v290 = v291 = v284 >> 1 & 0x1 == 1;
                }
                if (v290) {
                    v292 = fun_fastBalanceOf(address(msg.data[varg1 + 32]), address(msg.data[varg1 + 96]));
                    v285 = v293 = _SafeSub(v292, MEM[0x20 ^ (v284 & 0x1 == 1) << 5]);
                }
                require((10000 - uint16(v284 >> 8)) * v285 + MEM[0x20 ^ (v284 & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                if ((10000 - uint16(v284 >> 8)) * v285 * MEM[(v284 & 0x1 == 1) << 5] / ((10000 - uint16(v284 >> 8)) * v285 + MEM[0x20 ^ (v284 & 0x1 == 1) << 5] * 10000) < msg.data[160 + varg1]) {
                    v294 = address(msg.data[varg1 + 96]).token0().gas(msg.gas);
                    require(v294, MEM[64], RETURNDATASIZE());
                    require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                    revert(TooMuchSlippage(MEM[0], msg.data[160 + varg1], (10000 - uint16(v284 >> 8)) * v285 * MEM[(v284 & 0x1 == 1) << 5] / ((10000 - uint16(v284 >> 8)) * v285 + MEM[0x20 ^ (v284 & 0x1 == 1) << 5] * 10000)));
                } else {
                    MEM[MEM[64] + ((v284 & 0x1 == 1) << 5) + 32] = (10000 - uint16(v284 >> 8)) * v285 * MEM[(v284 & 0x1 == 1) << 5] / ((10000 - uint16(v284 >> 8)) * v285 + MEM[0x20 ^ (v284 & 0x1 == 1) << 5] * 10000);
                    MEM[MEM[64] + (0x20 ^ (v284 & 0x1 == 1) << 5) + 32] = 0;
                    v295, /* uint256 */ v296 = address(msg.data[varg1 + 96]).swap(v233, v233, address(msg.data[varg1]), 128, 0).gas(msg.gas);
                    require(v295, MEM[64], RETURNDATASIZE());
                    v2 = v297 = 1;
                }
            }
        } else {
            v298 = varg1 + varg2;
            require(v298 - varg1 >= 128);
            v299 = msg.data[varg1];
            require(!(v299 - address(v299)));
            require(msg.data[varg1 + 64] <= uint64.max);
            require(varg1 + msg.data[varg1 + 64] + 31 < v298);
            v300 = msg.data[varg1 + msg.data[varg1 + 64]];
            require(v300 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v301 = MEM[64];
            require(!((v301 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v300) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v301 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v300) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v301)), Panic(65)); // failed memory allocation (too much memory)
            require(varg1 + msg.data[varg1 + 64] + 32 + v300 <= v298);
            CALLDATACOPY(v0.data, varg1 + msg.data[varg1 + 64] + 32, v300);
            v0[v300] = 0;
            v236 = v302 = msg.data[varg1 + 96];
            v303 = v304 = bytes20(MEM[v0.data]);
            if (v0.length < 20) {
                v303 = v305 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v0.length << 3) & MEM[v0.data]);
            }
            v306 = (v303 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
            require(v306, v301 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v300) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), RETURNDATASIZE());
            require(31 < RETURNDATASIZE());
            require(!MEM[0] | (MEM[0] * msg.data[varg1 + 32] / MEM[0] == msg.data[varg1 + 32]), Panic(17)); // arithmetic overflow or underflow
            v243 = v307 = MEM[0] * msg.data[varg1 + 32] / 10000;
            v308 = new struct(3);
            require(!((v308 + 96 > uint64.max) | (v308 + 96 < v308)), Panic(65)); // failed memory allocation (too much memory)
            v308.word0 = 40;
            CALLDATACOPY(v308.data, msg.data.length, 64);
            v309 = v310 = this;
            require(v307 <= int256.max, Panic(17)); // arithmetic overflow or underflow
            while (1) {
                require(MEM[v301] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v311 = MEM[20 + v301];
                v239 = v312 = MEM[64 + v301];
                if (0 == !uint8(MEM[21 + v301])) {
                    if (uint8(MEM[21 + v301]) - 1) {
                        if (uint8(MEM[21 + v301]) - 2) {
                            require(0 != (uint8(MEM[21 + v301]) == 3), UnknownForkId(uint8(MEM[21 + v301])));
                            MEM[32] = (address(v311) < address(v312)) * (v312 ^ v311) ^ v311;
                            MEM[0] = 0;
                            MEM[12] = (v312 ^ (address(v311) < address(v312)) * (v312 ^ v311)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v308] = v311;
                            MEM[20 + v308] = v309;
                            v308.word0 = v308.word0.length;
                            v313 = MEM[64];
                            MCOPY(196 + v313, v308, 32 + v308.word0.length);
                            MEM[164 + v313] = 160;
                            MEM[132 + v313] = address(MEM[44 + v301]);
                            MEM[100 + v313] = v243;
                            MEM[68 + v313] = address(v311) < address(v312);
                            MEM[36 + v313] = address(v299) ^ (this ^ address(v299)) * (MEM[v301] > 64);
                            MEM[16 + v313] = 0x128acb08000000000000000000000000;
                            require((_fun_permitToSellAmount ^ address(keccak256(v233, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                            v314 = ___function_selector__;
                            require(!v314, ReentrantCallback(v314));
                            ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v233, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                            v315 = address(keccak256(v233, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v19dafV0x1c28 + 32:v19dafV0x1c28 + 32 + 196 + v26acV0x1c28.word0.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v316 = v317 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v316 = new bytes[](RETURNDATASIZE());
                                require(!((v316 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v316 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v316)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v316.data, 0, RETURNDATASIZE());
                            }
                            require(v315, v318 + 32, MEM[v318]);
                            v319 = ___function_selector__;
                            require(!v319, CallbackNotSpent(v319));
                        } else {
                            MEM[32] = (address(v311) < address(v312)) * (v312 ^ v311) ^ v311;
                            MEM[0] = 0;
                            MEM[12] = (v312 ^ (address(v311) < address(v312)) * (v312 ^ v311)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v308] = v311;
                            MEM[20 + v308] = v309;
                            v308.word0 = v308.word0.length;
                            v313 = v320 = MEM[64];
                            MCOPY(196 + v320, v308, 32 + v308.word0.length);
                            MEM[164 + v320] = 160;
                            MEM[132 + v320] = address(MEM[44 + v301]);
                            MEM[100 + v320] = v243;
                            MEM[68 + v320] = address(v311) < address(v312);
                            MEM[36 + v320] = address(v299) ^ (this ^ address(v299)) * (MEM[v301] > 64);
                            MEM[16 + v320] = 0x128acb08000000000000000000000000;
                            require((_fun_permitToSellAmount ^ address(keccak256(v233, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                            v321 = ___function_selector__;
                            require(!v321, ReentrantCallback(v321));
                            ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v233, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                            v322 = address(keccak256(v233, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v19d15V0x1c28 + 32:v19d15V0x1c28 + 32 + 196 + v26acV0x1c28.word0.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v316 = v323 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v316 = v324 = new bytes[](RETURNDATASIZE());
                                require(!((v324 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v324 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v324)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v324.data, 0, RETURNDATASIZE());
                            }
                            require(v322, v325 + 32, MEM[v325]);
                            v326 = ___function_selector__;
                            require(!v326, CallbackNotSpent(v326));
                        }
                    } else {
                        MEM[32] = (address(v311) < address(v312)) * (v312 ^ v311) ^ v311;
                        MEM[0] = 0;
                        MEM[12] = (v312 ^ (address(v311) < address(v312)) * (v312 ^ v311)) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + v308] = v311;
                        MEM[20 + v308] = v309;
                        v308.word0 = v308.word0.length;
                        v313 = v327 = MEM[64];
                        MCOPY(196 + v327, v308, 32 + v308.word0.length);
                        MEM[164 + v327] = 160;
                        MEM[132 + v327] = address(MEM[44 + v301]);
                        MEM[100 + v327] = v243;
                        MEM[68 + v327] = address(v311) < address(v312);
                        MEM[36 + v327] = address(v299) ^ (this ^ address(v299)) * (MEM[v301] > 64);
                        MEM[16 + v327] = 0x128acb08000000000000000000000000;
                        require((_fun_permitToSellAmount ^ address(keccak256(v233, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                        v328 = ___function_selector__;
                        require(!v328, ReentrantCallback(v328));
                        ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v233, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                        v329 = address(keccak256(v233, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v19c7bV0x1c28 + 32:v19c7bV0x1c28 + 32 + 196 + v26acV0x1c28.word0.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v316 = v330 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v316 = v331 = new bytes[](RETURNDATASIZE());
                            require(!((v331 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v331 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v331)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v331.data, 0, RETURNDATASIZE());
                        }
                        require(v329, v332 + 32, MEM[v332]);
                        v333 = ___function_selector__;
                        require(!v333, CallbackNotSpent(v333));
                    }
                } else {
                    MEM[32] = (address(v311) < address(v312)) * (v312 ^ v311) ^ v311;
                    MEM[0] = 0;
                    MEM[12] = (v312 ^ (address(v311) < address(v312)) * (v312 ^ v311)) << 96;
                    MEM8[11] = 0xff & 0xFF;
                    MEM[40 + v308] = v311;
                    MEM[20 + v308] = v309;
                    v308.word0 = v308.word0.length;
                    v313 = v334 = MEM[64];
                    MCOPY(196 + v334, v308, 32 + v308.word0.length);
                    MEM[164 + v334] = 160;
                    MEM[132 + v334] = address(MEM[44 + v301]);
                    MEM[100 + v334] = v243;
                    MEM[68 + v334] = address(v311) < address(v312);
                    MEM[36 + v334] = address(v299) ^ (this ^ address(v299)) * (MEM[v301] > 64);
                    MEM[16 + v334] = 0x128acb08000000000000000000000000;
                    require((_fun_permitToSellAmount ^ address(keccak256(v233, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v335 = ___function_selector__;
                    require(!v335, ReentrantCallback(v335));
                    ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v233, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                    v336 = address(keccak256(v233, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v16730x1686V0x16b6V0x264eV0x1c28]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v19be1V0x1c28 + 32:v19be1V0x1c28 + 32 + 196 + v26acV0x1c28.word0.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v316 = v337 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v316 = v338 = new bytes[](RETURNDATASIZE());
                        require(!((v338 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v338 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v338)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v338.data, 0, RETURNDATASIZE());
                    }
                    require(v336, v339 + 32, MEM[v339]);
                    v340 = ___function_selector__;
                    require(!v340, CallbackNotSpent(v340));
                }
                require(v316 + MEM[v316] - v316 >= 64);
                v243 = v341 = 0 - ((MEM[v316 + 64] ^ MEM[v316 + 32]) * (address(v311) < address(v312)) ^ MEM[v316 + 32]);
                require(v341 >= 0, Panic(17)); // arithmetic overflow or underflow
                if (MEM[v301] <= 64) {
                    if (v341 >= v302) {
                        v2 = v342 = 1;
                    }
                } else {
                    v309 = v343 = this;
                    require(MEM[v301] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v301 = v301 + 44;
                    MEM[v301] = MEM[v301] - 44;
                    v308.word0 = 40;
                }
            }
        }
        revert(TooMuchSlippage(v239, 0x97a6f3b9000000000000000000000000, v236, v243));
    } else {
        v344 = varg1 + varg2;
        require(v344 - varg1 >= 288);
        require(!(msg.data[varg1] - address(msg.data[varg1])));
        require(v344 - (varg1 + 32) >= 128);
        v345 = new struct(3);
        require(!((v345 + 96 > uint64.max) | (v345 + 96 < v345)), Panic(65)); // failed memory allocation (too much memory)
        require(v344 - (varg1 + 32) >= 64);
        v1 = new struct(2);
        require(!((v1 + 64 > uint64.max) | (v1 + 64 < v1)), Panic(65)); // failed memory allocation (too much memory)
        require(!(msg.data[varg1 + 32] - address(msg.data[varg1 + 32])));
        v1.word0 = msg.data[varg1 + 32];
        v1.word1 = msg.data[varg1 + 32 + 32];
        v345.word0 = v1;
        v346 = v0.data;
        v345.word1 = msg.data[varg1 + 32 + 64];
        v345.word2 = msg.data[varg1 + 32 + 96];
        require(!(msg.data[varg1 + 160] - address(msg.data[varg1 + 160])));
        require(msg.data[varg1 + 192] <= uint64.max);
        v347 = varg1 + msg.data[varg1 + 192];
        require(v347 + 31 < v344);
        require(msg.data[v347] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v348 = new bytes[](msg.data[v347]);
        require(!((v348 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v347]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v348 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v347]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v348)), Panic(65)); // failed memory allocation (too much memory)
        require(v347 + 32 + msg.data[v347] <= v344);
        CALLDATACOPY(v348.data, v347 + 32, msg.data[v347]);
        v348[msg.data[v347]] = 0;
        v349 = msg.data[varg1 + 224];
        require(!(v349 - address(v349)));
        require(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8ef >= MEM[v345.word0.length + 32], Panic(1)); // low-level assert failed
        v350, v351 = fun_permitToTransferDetails(v345, address(msg.data[varg1]));
        v352 = new struct(4);
        require(!((v352 + 128 > uint64.max) | (v352 + 128 < v352)), Panic(65)); // failed memory allocation (too much memory)
        v352.word0 = address(MEM[v345.word0.length]);
        v352.word1 = v350;
        v352.word2 = address(msg.data[varg1 + 160]);
        v352.word3 = 1;
        MEM[v352 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
        MEM[v352 - 32] = MEM[v352 - 32];
        v353 = new struct(4);
        require(!((v353 + 128 > uint64.max) | (v353 + 128 < v353)), Panic(65)); // failed memory allocation (too much memory)
        v353.word0 = address(v349);
        v353.word1 = msg.data[varg1 + (uint8.max + 1)];
        v353.word2 = address(_fun_permitToSellAmount);
        v353.word3 = 1;
        MEM[v353 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
        MEM[v353 - 32] = MEM[v353 - 32];
        v354 = fun_fastBalanceOf(v349, this);
        v355 = (msg.data[varg1 + (uint8.max + 1)] ^ v354) * (v354 > msg.data[varg1 + (uint8.max + 1)]) ^ v354;
        v356 = fun_unsafeMulDiv(v350, v355, msg.data[varg1 + (uint8.max + 1)]);
        v351.word1 = v356;
        fun_safeTransfer(v349, address(msg.data[varg1 + 160]), v355);
        require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
        require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
        v357 = new bytes[](162);
        MEM[v357.data] = 'Consideration consideration)';
        MCOPY(v357 + 60, v358.data, v358.length);
        MEM[v357 + v358.length + 60] = 0;
        MCOPY(v357 + v358.length + 60, v359.data, v359.length);
        MEM[v357 + v358.length + v359.length + 60] = 0;
        v360 = v357 + 224;
        require(!((v360 > uint64.max) | (v360 < v357)), Panic(65)); // failed memory allocation (too much memory)
        MEM[v360] = 0x137c29fe;
        MCOPY(32 + v360, v345.word0.length, 64);
        MCOPY(96 + v360, v0.data, 64);
        MCOPY(160 + v360, v351, 64);
        MCOPY(352 + v360, v357, 194);
        MCOPY(384 + (v360 + v357.length), v348, 32 + v348.length);
        v361, /* uint256 */ v362 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v233, v233, v233, v233, v233, v233, address(msg.data[varg1 + 160]), keccak256(MEM[v2368V0x1c28 - 32:v2368V0x1c28 - 32 + 160]), 320, 514).gas(msg.gas);
        if (!v361) {
            v363 = RETURNDATASIZE();
            revert(v233, v233, v233, v233, v233, v233, v233, v233, v233, 514);
        } else {
            emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v2368V0x1c28 - 32:v2368V0x1c28 - 32 + 160]), keccak256(MEM[v2318V0x1c28 - 32:v2318V0x1c28 - 32 + 160]))(uint128(v356), uint128(v356));
            v2 = v364 = 1;
        }
    }
    if (0 == v2) {
        if (0xbd01c226 - varg0) {
            return 0;
        } else {
            require(varg1 + varg2 - varg1 >= 64);
            require(block.timestamp <= msg.data[varg1], SignatureExpired(msg.data[varg1]));
            require(msg.value <= msg.data[varg1 + 32], MsgValueMismatch(msg.data[varg1 + 32], msg.value));
            return 1;
        }
    } else {
        return 1;
    }
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

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function fun_msgData() private { 
    if (0x1ff3684f28c67538d4d072c22734 - msg.sender) {
        return msg.data.length, 0;
    } else {
        require(msg.data.length - 20 <= msg.data.length, Panic(17)); // arithmetic overflow or underflow
        return msg.data.length - 20, 0;
    }
}

function fun_permitToTransferDetails(struct(3) varg0, address varg1) private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word1 = 0;
    v0.word0 = varg1;
    v1 = fun_permitToSellAmount(varg0);
    v0.word1 = v1;
    return v1, v0;
}

function fun_permitToSellAmount(struct(3) varg0) private { 
    if (~MEM[varg0.word0.length + 32] < 10000) {
        v0 = fun_fastBalanceOf(address(MEM[varg0.word0.length]), _fun_permitToSellAmount);
        v1 = fun_unsafeMulDiv_38668(v0, 10000 - ~MEM[varg0.word0.length + 32]);
        return v1;
    } else {
        return MEM[varg0.word0.length + 32];
    }
}

function fun_transferFrom(struct(3) varg0, struct(2) varg1, bytes varg2, uint256 varg3) private { 
    if (0 == varg3) {
        MCOPY(32 + MEM[64], varg0.word0, 64);
        MCOPY(96 + MEM[64], 32 + varg0, 64);
        MCOPY(160 + MEM[64], varg1, 64);
        MCOPY(288 + MEM[64], varg2, 32 + varg2.length);
        v0, /* uint256 */ v1 = 0x22d473030f116ddee9f6b43ac78ba3.permitTransferFrom(v2, v2, v2, v2, v2, v2, address(_fun_permitToSellAmount), uint8.max + 1).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
        return ;
    } else {
        require(!varg2.length, InvalidSignatureLen());
        require(!varg0.word1, Panic(17)); // arithmetic overflow or underflow
        require(block.timestamp <= varg0.word2, SignatureExpired(MEM[96 + varg0]));
        v3, /* uint256 */ v4 = 0x1ff3684f28c67538d4d072c22734.transferFrom(bytes20(MEM[varg0.word0] << 96), _fun_permitToSellAmount, _fun_permitToSellAmount << 96, _fun_permitToSellAmount, address(varg1.word0), _fun_permitToSellAmount << 96, varg1.word1).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
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

function fun_unsafeMulDiv_38668(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * varg1;
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0 / 10000;
    } else {
        return (v0 - varg0 * varg1 % 10000 >> 4 | varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0) - (varg0 * varg1 % 10000 > v0) << 252) * 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91;
    }
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

function fun_ekuboPay(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (0 == (address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v1 = 68;
        if (this - varg1) {
            CALLDATACOPY(100 + MEM[64], 64 + varg3, 64);
            CALLDATACOPY(228 + MEM[64], varg5, varg6);
            v0 = v2 = varg6 + 196;
        }
        require((_fun_permitToSellAmount ^ msg.sender) << 96, ConfusedDeputy());
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

function fun_callSelector_69780(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_callSelector(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_callSelector_69786(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function __function_selector__( function_selector) public payable { 
    if (msg.data.length >= 4) {
        if (0x1fff991f == function_selector >> 224) {
            execute((address,address,uint256),bytes[],bytes32);
        } else if (0x67c4a3b0 == function_selector >> 224) {
            0x67c4a3b0();
        } else if (0x70a08231 == function_selector >> 224) {
            balanceOf(address);
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(!msg.value);
        v0, v1 = fun_msgData();
        v2 = ___function_selector__;
        require(!((function_selector ^ v2) >> 224 | (msg.sender ^ v2) << 96));
        ___function_selector__ = 0;
        require(4 <= v0);
        if (2 == uint16(v2 >> 160)) {
            v3 = v4 = msg.data[20 + (v1 + 100)] >> 128;
            v5 = v6 = bool(0x1000000000000000000000000000000 & msg.data[52 + (v1 + 100)]);
            v7 = v8 = 0;
            v9 = new struct(39);
            v9.word6 = 0;
            MEM[v3190x45b2V0xda5 + 480:v3190x45b2V0xda5 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 352] | MEM[address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 320]) * (MEM[address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 320] ^ address(msg.data[v1 + 100 + 89] >> 96))), MEM[address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 320], address(msg.data[v1 + 100 + 89] >> 96));
            require(address(msg.data[v1 + 100 + 89] >> 96), ZeroToken());
            MEM[address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 320] = address(msg.data[v1 + 100 + 89] >> 96);
            v9.word0 = address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 288;
            v9.word1 = address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 288;
            v9.word2 = address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 288;
            v9.word4 = uint128(msg.data[20 + (v1 + 100)]);
            v9.word5 = msg.data[52 + (v1 + 100)] >> 128;
            v10 = v11 = msg.data.length;
            v12 = v13 = msg.data.length;
            v14 = v15 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(msg.data[v1 + 100 + 89] >> 96) * uint128(msg.data[20 + (v1 + 100)]) % (msg.data[52 + (v1 + 100)] >> 128) % 768 + (192 + v9) + 288)])) {
                if (address(msg.data[69 + (v1 + 100)] >> 96) - this) {
                    require(!bool(address(msg.data[69 + (v1 + 100)] >> 96)), Panic(1)); // low-level assert failed
                    v10 = v16 = v1 + 100 + 89 - 12;
                    v7 = v17 = 0x1 & msg.data[85 + (v1 + 100 + 89)];
                    v14 = v18 = msg.data[v1 + 100 + 89 + (msg.data[v1 + 68] - 89) - 3] >> 232;
                    v12 = v19 = v1 + 100 + 89 + (msg.data[v1 + 68] - 89) - v18 - 3;
                    v20 = v21 = 117 + (v1 + 100 + 89);
                    require(v21 <= v19);
                    v22 = v23 = msg.data[v1 + 68] - 89 - v18 - 120;
                } else {
                    v20 = v24 = 22 + (v1 + 100 + 89);
                    v22 = v25 = msg.data[v1 + 68] - 89 - 22;
                    v26 = fun_fastBalanceOf(MEM[32 + v9.word2], this);
                    MEM[v9.word2] = uint16(msg.data[v1 + 100 + 89] >> 80) * v26 / 10000;
                }
            } else {
                require(this == address(msg.data[69 + (v1 + 100)] >> 96), Panic(1)); // low-level assert failed
                MEM[v9.word2] = this.balance * uint16(msg.data[v1 + 100 + 89] >> 80) / 10000;
                v22 = msg.data[v1 + 68] - 89 - 22;
                v20 = 22 + (v1 + 100 + 89);
            }
            require(v22 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(msg.data[69 + (v1 + 100)] >> 96) - this) {
                v27 = v28 = msg.data[v10 + 32];
                if (~v28 < 10000) {
                    require(!(msg.data[v10] - address(msg.data[v10])));
                    v29 = fun_fastBalanceOf(address(msg.data[v10]), _fun_permitToSellAmount);
                    v27 = v30 = fun_unsafeMulDiv_38668(v29, 10000 - ~v28);
                }
                MEM[v9.word2] = v27;
            }
            if (v6) {
                v31 = fun_ekuboPay(MEM[32 + v9.word2], msg.data[69 + (v1 + 100)] >> 96, MEM[v9.word2], v10, v7, v12, v14);
                MEM[v9.word2] = v31;
            }
            require(!(MEM[v9.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
            v9.word3 = MEM[v9.word2];
            fun_checkZeroSellAmount(v9);
            v32 = v33 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v22 >= 47) {
                v34 = v35 = msg.data[v20 + 14];
                v36 = v37 = 1;
                if (v35 >> 248) {
                    if (!MEM[64 + MEM[v9]]) {
                        v9.word6 += v37;
                        MEM[(v37 + v9.word6 << 5) + (192 + v9)] = MEM[v9];
                        MEM[64 + MEM[v9]] = (v37 + v9.word6 << 5) + (192 + v9);
                    }
                    if (v35 >> 248 > v37) {
                        if (!MEM[MEM[32 + v9]]) {
                            if (MEM[64 + MEM[32 + v9]]) {
                                MEM[64 + MEM[32 + v9]] = 0;
                                v9.word6 = v9.word6 - 1;
                                if ((v9.word6 << 5) + (192 + v9) - MEM[64 + MEM[32 + v9]]) {
                                    MEM[MEM[64 + MEM[32 + v9]]] = MEM[(v9.word6 << 5) + (192 + v9)];
                                    MEM[64 + MEM[(v9.word6 << 5) + (192 + v9)]] = MEM[64 + MEM[32 + v9]];
                                }
                            }
                        }
                        if ((v35 >> 248) - 2) {
                            require(3 == v35 >> 248, Panic(1)); // low-level assert failed
                            v34 = msg.data[20 + (v20 + 14)];
                            v36 = 21;
                            v38 = address(v35 >> 88) * MEM[128 + v9] % MEM[160 + v9] % 768 + (192 + v9);
                            require(!((MEM[v38 + 352] | MEM[v38 + 320]) * (MEM[v38 + 320] ^ address(v35 >> 88))), MEM[v38 + 320], address(v35 >> 88));
                            require(address(v35 >> 88), ZeroToken());
                            MEM[v38 + 320] = address(v35 >> 88);
                            MEM[32 + v9] = v38 + 288;
                        } else {
                            MEM[32 + v9] = MEM[v9];
                        }
                    }
                    v36 = v39 = v36 + 20;
                    v40 = address(v34 >> 88) * MEM[128 + v9] % MEM[160 + v9] % 768 + (192 + v9);
                    require(!((MEM[v40 + 352] | MEM[v40 + 320]) * (MEM[v40 + 320] ^ address(v34 >> 88))), MEM[v40 + 320], address(v34 >> 88));
                    require(address(v34 >> 88), ZeroToken());
                    MEM[v40 + 320] = address(v34 >> 88);
                    MEM[v9] = v40 + 288;
                    if (v40 + 288 == MEM[64 + v9]) {
                        MEM[MEM[64 + v9]] = 0x784cb7b8;
                        revert(28 + MEM[64 + v9], 36);
                    }
                }
                v41 = MEM[32 + MEM[32 + v9]] << 96;
                v42 = MEM[32 + MEM[v9]] << 96;
                v43 = (address(MEM[32 + MEM[32 + v9]]) ^ address(MEM[32 + MEM[v9]])) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == v42) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != v41) & (v42 < v41));
                MEM[v32 + 32] = address(address(MEM[32 + MEM[v9]]) ^ v43);
                MEM[v32] = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + MEM[32 + v9]]) ^ v43)) * address(address(MEM[32 + MEM[32 + v9]]) ^ v43);
                MEM[v32 + 64] = msg.data[v36 + (v20 + 14)];
                require(v22 - 14 - v36 - 32 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0 == !(msg.data[v20] >> 240 & 0x8000)) {
                    MCOPY(v9 + 1248 + 32, 64 + v32, 20);
                    MCOPY(52 + (v9 + 1248), v32, 96);
                    v44 = msg.sender.forward(v45, v45, v45, MEM[MEM[32 + v9]] * (msg.data[v20] >> 240 & 0x7fff) / 10000, MEM[MEM[32 + v9]] * (msg.data[v20] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == v42) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != v41) & (v42 < v41), msg.data[2 + v20] >> 160, 0).gas(msg.gas);
                    if (!v44) {
                        RETURNDATACOPY(v9 + 1248, 0, RETURNDATASIZE());
                        revert(v9 + 1248, RETURNDATASIZE());
                    } else {
                        require(!((64 > RETURNDATASIZE()) | int128(MEM[MEM[32 + v9]] * (msg.data[v20] >> 240 & 0x7fff) / 10000) ^ MEM[MEM[32 + v9]] * (msg.data[v20] >> 240 & 0x7fff) / 10000 | (int128(MEM[0]) ^ MEM[0] | int128(MEM[32]) ^ MEM[32])));
                        v46 = v47, v48 = v49, v50 = v51, v52 = v53, v54 = v55, v56 = v57, v58 = v59, v20, v22, v32, v5, v9 = v60 = 0x116b(v41, v42, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, 4492, int16.max, MEM[MEM[32 + v9]], 10000, MEM[32], msg.data[v20] >> 240, MEM[0], 32 + (v36 + (v20 + 14)), v22 - 14 - v36 - 32, v32, v5);
                    }
                } else {
                    MCOPY(v9 + 1248 + 32, v32, 96);
                    v61 = msg.sender.call(0, v45, v45, v45, MEM[MEM[32 + v9]] * (msg.data[v20] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == v42) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != v41) & (v42 < v41), msg.data[2 + v20] >> 160, 0).gas(msg.gas);
                    if (!v61) {
                        RETURNDATACOPY(v9 + 1248, 0, RETURNDATASIZE());
                        revert(v9 + 1248, RETURNDATASIZE());
                    } else {
                        v46 = v62, v48 = v63, v50 = v64, v52 = v65, v54 = v66, v56 = v67, v58 = v68, v20, v22, v32, v5, v9 = v69 = 0x116b(v41, v42, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, 4492, int16.max, MEM[MEM[32 + v9]], 10000, MEM[32], msg.data[v20] >> 240, MEM[0], 32 + (v36 + (v20 + 14)), v22 - 14 - v36 - 32, v32, v5);
                    }
                }
                MEM[v54] = MEM[v54] - v46;
                require(!(((v56 & v48) * v50 / v52 < v46) | (v46 > MEM[v54])), Panic(17)); // arithmetic overflow or underflow
                if (v58 > 0) {
                    MEM[MEM[v9]] = 0x3351b260;
                    revert(28 + MEM[v9], 36);
                } else {
                    MEM[MEM[v9]] += 0 - v58;
                }
            }
            if (MEM[64 + MEM[v9]]) {
                MEM[64 + MEM[v9]] = 0;
                v9.word6 = v9.word6 - 1;
                if ((v9.word6 << 5) + (192 + v9) - MEM[64 + MEM[v9]]) {
                    MEM[MEM[64 + MEM[v9]]] = MEM[(v9.word6 << 5) + (192 + v9)];
                    MEM[64 + MEM[(v9.word6 << 5) + (192 + v9)]] = MEM[64 + MEM[v9]];
                }
            }
            if (!MEM[MEM[32 + v9]]) {
                if (MEM[64 + MEM[32 + v9]]) {
                    MEM[64 + MEM[32 + v9]] = 0;
                    v9.word6 = v9.word6 - 1;
                    if ((v9.word6 << 5) + (192 + v9) - MEM[64 + MEM[32 + v9]]) {
                        MEM[MEM[64 + MEM[32 + v9]]] = MEM[(v9.word6 << 5) + (192 + v9)];
                        MEM[64 + MEM[(v9.word6 << 5) + (192 + v9)]] = MEM[64 + MEM[32 + v9]];
                    }
                }
            }
            if (bool(v9.word6)) {
                require(v9.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v9.word7 - MEM[64 + v9]) {
                    fun_callSelector_69780(address(MEM[v9.word7 + 32]), this, MEM[v9.word7]);
                }
                v70 = v71 = 1;
                while (v70 < v9.word6) {
                    fun_callSelector_69780(MEM[32 + MEM[(v70 << 5) + (192 + v9) + 32]], this, MEM[MEM[(v70 << 5) + (192 + v9) + 32]]);
                    v70 = v70 + 1;
                }
            }
            v72 = v73 = MEM[32 + MEM[v9]];
            v74 = v75 = MEM[MEM[v9]];
            if (v75 >= v4) {
                fun_callSelector_69780(v73, msg.data[v1 + 100] >> 96, v75);
                if (!v5) {
                    require(MEM[96 + v9] != MEM[MEM[64 + v9]], MEM[32 + MEM[64 + v9]], 0xfb772a88000000000000000000000000);
                    v76 = fun_ekuboPay(MEM[32 + MEM[64 + v9]], msg.data[69 + (v1 + 100)] >> 96, MEM[96 + v9] - MEM[MEM[64 + v9]], v10, v7, v12, v14);
                } else if (bool(MEM[MEM[64 + v9]])) {
                    if (this - address(msg.data[69 + (v1 + 100)] >> 96)) {
                        v77 = v78 = _fun_permitToSellAmount;
                    } else {
                        v77 = v79 = this;
                    }
                    require(MEM[MEM[64 + v9]], MEM[32 + MEM[64 + v9]]);
                    v80, /* uint256 */ v81 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + MEM[64 + v9]] << 96) * (MEM[32 + MEM[64 + v9]] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + MEM[64 + v9]] << 96) * (MEM[32 + MEM[64 + v9]] << 96), v77, MEM[MEM[64 + v9]]).gas(msg.gas);
                    require(v80, v9 + 1248, RETURNDATASIZE());
                    MEM[96] = 0;
                } else {
                    v82 = v83 = new bytes[](96);
                    MEM[v83.data] = 32;
                    MEM[64 + v83] = 32;
                    MEM[96 + v83] = v75;
                }
            }
        } else if (6 == uint16(v2 >> 160)) {
            v84, v85 = fun_msgData();
            v3 = v86 = msg.data[20 + v85] >> 128;
            v87 = v88 = 0;
            v89 = new struct(39);
            v89.word6 = 0;
            MEM[v45b2V0x3190x0 + 480:v45b2V0x3190x0 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            v90 = MEM[address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 320];
            require(!((MEM[address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 352] | v90) * (v90 ^ address(msg.data[v85 + 89] >> 96))), v90, address(msg.data[v85 + 89] >> 96));
            require(address(msg.data[v85 + 89] >> 96), ZeroToken());
            MEM[address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 320] = address(msg.data[v85 + 89] >> 96);
            v89.word0 = address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 288;
            v89.word1 = address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 288;
            v89.word2 = address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 288;
            v89.word4 = uint128(msg.data[20 + v85]);
            v89.word5 = msg.data[52 + v85] >> 128;
            v91 = v92 = msg.data.length;
            v93 = v94 = msg.data.length;
            v95 = v96 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(msg.data[v85 + 89] >> 96) * uint128(msg.data[20 + v85]) % (msg.data[52 + v85] >> 128) % 768 + (192 + v89) + 288)])) {
                if (address(msg.data[69 + v85] >> 96) - this) {
                    require(!bool(address(msg.data[69 + v85] >> 96)), Panic(1)); // low-level assert failed
                    v91 = v97 = v85 + 89 - 12;
                    v87 = v98 = 0x1 & msg.data[85 + (v85 + 89)];
                    v95 = v99 = msg.data[v85 + 89 + (v84 - 89) - 3] >> 232;
                    v93 = v100 = v85 + 89 + (v84 - 89) - v99 - 3;
                    v101 = v102 = 117 + (v85 + 89);
                    require(v102 <= v100);
                    v103 = v104 = v84 - 89 - v99 - 120;
                } else {
                    v101 = v105 = 22 + (v85 + 89);
                    v103 = v106 = v84 - 89 - 22;
                    v107 = fun_fastBalanceOf(MEM[32 + v89.word2], this);
                    MEM[v89.word2] = uint16(msg.data[v85 + 89] >> 80) * v107 / 10000;
                }
            } else {
                require(this == address(msg.data[69 + v85] >> 96), Panic(1)); // low-level assert failed
                MEM[v89.word2] = this.balance * uint16(msg.data[v85 + 89] >> 80) / 10000;
                v103 = v84 - 89 - 22;
                v101 = 22 + (v85 + 89);
            }
            require(v103 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(msg.data[69 + v85] >> 96) - this) {
                v108 = v109 = msg.data[v91 + 32];
                if (~v109 < 10000) {
                    require(!(msg.data[v91] - address(msg.data[v91])));
                    v110 = fun_fastBalanceOf(address(msg.data[v91]), _fun_permitToSellAmount);
                    v108 = v111 = fun_unsafeMulDiv_38668(v110, 10000 - ~v109);
                }
                MEM[v89.word2] = v108;
            }
            if (0x1000000000000000000000000000000 & msg.data[52 + v85]) {
                if (this - address(msg.data[69 + v85] >> 96)) {
                    v112 = new struct(2);
                    require(!((v112 + 64 > uint64.max) | (v112 + 64 < v112)), Panic(65)); // failed memory allocation (too much memory)
                    v112.word0 = msg.sender;
                    v112.word1 = MEM[v89.word2];
                    require(msg.data.length - v91 >= 128);
                    v113 = new struct(3);
                    require(!((v113 + 96 > uint64.max) | (v113 + 96 < v113)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v91 >= 64);
                    v114 = new struct(2);
                    require(!((v114 + 64 > uint64.max) | (v114 + 64 < v114)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v91] - address(msg.data[v91])));
                    v114.word0 = msg.data[v91];
                    v114.word1 = msg.data[v91 + 32];
                    v113.word0 = v114;
                    v113.word1 = msg.data[v91 + 64];
                    v113.word2 = msg.data[v91 + 96];
                    require(v95 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v115 = new bytes[](v95);
                    require(!((v115 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v95) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v115 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v95) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v115)), Panic(65)); // failed memory allocation (too much memory)
                    require(v93 + v95 <= msg.data.length);
                    CALLDATACOPY(v115.data, v93, v95);
                    v115[v95] = 0;
                    fun_transferFrom(v113, v112, v115, v87);
                } else if (MEM[v89.word2]) {
                    fun_safeTransfer(MEM[32 + v89.word2], msg.sender, MEM[v89.word2]);
                }
                v116 = msg.sender.settle(MEM[32 + v89.word2], 0x15afd409000000000000000000000000, MEM[v89.word2]).gas(msg.gas);
                if (!v116) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    MEM[52] = 0;
                    MEM[v89.word2] = MEM[0];
                }
            }
            v89.word3 = MEM[v89.word2];
            fun_checkZeroSellAmount(v89);
            v117 = v118 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v119 = new struct(7);
            require(!((v119 + 224 > uint64.max) | (v119 + 224 < v119)), Panic(65)); // failed memory allocation (too much memory)
            v119.word0 = 0;
            v119.word1 = 0;
            v119.word2 = 0;
            v119.word3 = 0;
            v119.word4 = 0;
            v119.word5 = 0;
            v119.word6 = 96;
            while (v103 >= 3) {
                v120 = v121 = msg.data[2 + v101];
                v122 = v123 = 1;
                if (v121 >> 248) {
                    if (!MEM[64 + v89.word0]) {
                        v89.word6 += v123;
                        MEM[(v123 + v89.word6 << 5) + (192 + v89)] = v89.word0;
                        MEM[64 + v89.word0] = (v123 + v89.word6 << 5) + (192 + v89);
                    }
                    if (v121 >> 248 > v123) {
                        if (!MEM[v89.word1]) {
                            if (MEM[64 + v89.word1]) {
                                MEM[64 + v89.word1] = 0;
                                v89.word6 = v89.word6 - 1;
                                if ((v89.word6 << 5) + (192 + v89) - MEM[64 + v89.word1]) {
                                    MEM[MEM[64 + v89.word1]] = MEM[(v89.word6 << 5) + (192 + v89)];
                                    MEM[64 + MEM[(v89.word6 << 5) + (192 + v89)]] = MEM[64 + v89.word1];
                                }
                            }
                        }
                        if ((v121 >> 248) - 2) {
                            require(3 == v121 >> 248, Panic(1)); // low-level assert failed
                            v120 = msg.data[22 + v101];
                            v122 = 21;
                            require(!((MEM[address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 352] | MEM[address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320]) * (MEM[address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320] ^ address(v121 >> 88))), MEM[address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320], address(v121 >> 88));
                            require(address(v121 >> 88), ZeroToken());
                            MEM[address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320] = address(v121 >> 88);
                            v89.word1 = address(v121 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 288;
                        } else {
                            v89.word1 = v89.word0;
                        }
                    }
                    v122 = v124 = v122 + 20;
                    v125 = MEM[address(v120 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320];
                    require(!((MEM[address(v120 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 352] | v125) * (v125 ^ address(v120 >> 88))), v125, address(v120 >> 88));
                    require(address(v120 >> 88), ZeroToken());
                    MEM[address(v120 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 320] = address(v120 >> 88);
                    v89.word0 = address(v120 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 288;
                    if (address(v120 >> 88) * v89.word4 % v89.word5 % 768 + (192 + v89) + 288 == v89.word2) {
                        MEM[v89.word2] = 0x784cb7b8;
                        revert(28 + v89.word2, 36);
                    }
                }
                v101 = v122 + (2 + v101);
                v103 = v103 - 2 - v122;
                if (msg.data[v101] >> 240 & 0xc000) {
                    require(uint24.max >= v103, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(msg.data[v101] >> 240 & 0x4000)) {
                        MEM[v117 + 32] = 1;
                        MEM[v117 + 64] = address(MEM[32 + v89.word1]);
                    } else {
                        MEM[v117 + 32] = 0;
                        MEM[v117 + 64] = address(MEM[32 + v89.word0]);
                    }
                    MEM[v117 + 96] = MEM[v89.word1] * (msg.data[v101] >> 240 & 0x3fff) / 10000;
                    MEM[v117 - 32] = 0x43583be5;
                    v126 = msg.sender.call(MEM[vd40_0x4 - 4:vd40_0x4 - 4 + 164], MEM[0:96]).gas(msg.gas);
                    if (!v126) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v117 - 32] = MEM[v117 - 32];
                        MEM[v89.word1] = MEM[v89.word1] - MEM[32];
                        require(MEM[v89.word0] <= MEM[v89.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v89.word0] = MEM[v89.word0] + MEM[64];
                    }
                } else {
                    v119.word1 = msg.data[v101] >> 96;
                    v119.word2 = address(MEM[32 + v89.word1]);
                    v119.word3 = address(MEM[32 + v89.word0]);
                    v119.word4 = MEM[v89.word1] * (msg.data[v101] >> 240) / 10000;
                    v101 = 20 + v101 + (msg.data[20 + v101] >> 232) + 3;
                    v103 = v103 - 20 - (msg.data[20 + v101] >> 232) - 3;
                    require(msg.data[20 + v101] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v127 = new bytes[](msg.data[20 + v101] >> 232);
                    require(!((v127 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v101] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v127 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v101] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v127)), Panic(65)); // failed memory allocation (too much memory)
                    require(23 + v101 + (msg.data[20 + v101] >> 232) <= msg.data.length);
                    CALLDATACOPY(v127.data, 23 + v101, msg.data[20 + v101] >> 232);
                    v127[msg.data[20 + v101] >> 232] = 0;
                    v119.word6 = v127;
                    require(v103 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[v119 - 64] = 0x2bfb780c;
                    MEM[v119 - 32] = 32;
                    v128 = v119.word6;
                    v119.word6 = v119.word6 - v119;
                    v129 = msg.sender.call(MEM[v8e7 - 36:v8e7 - 36 + vc26.length + v8e7.word6 - v8e7 + 68], MEM[0:96]).gas(msg.gas);
                    if (!v129) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v119 - 64] = MEM[v119 - 64];
                        MEM[v119 - 32] = MEM[v119 - 32];
                        MEM[v89.word1] = MEM[v89.word1] - MEM[32];
                        require(MEM[v89.word0] <= MEM[v89.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v89.word0] = MEM[v89.word0] + MEM[64];
                        v119.word6 = 96;
                    }
                }
            }
            if (MEM[64 + v89.word0]) {
                MEM[64 + v89.word0] = 0;
                v89.word6 = v89.word6 - 1;
                if ((v89.word6 << 5) + (192 + v89) - MEM[64 + v89.word0]) {
                    MEM[MEM[64 + v89.word0]] = MEM[(v89.word6 << 5) + (192 + v89)];
                    MEM[64 + MEM[(v89.word6 << 5) + (192 + v89)]] = MEM[64 + v89.word0];
                }
            }
            if (!MEM[v89.word1]) {
                if (MEM[64 + v89.word1]) {
                    MEM[64 + v89.word1] = 0;
                    v89.word6 = v89.word6 - 1;
                    if ((v89.word6 << 5) + (192 + v89) - MEM[64 + v89.word1]) {
                        MEM[MEM[64 + v89.word1]] = MEM[(v89.word6 << 5) + (192 + v89)];
                        MEM[64 + MEM[(v89.word6 << 5) + (192 + v89)]] = MEM[64 + v89.word1];
                    }
                }
            }
            if (bool(v89.word6)) {
                require(v89.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v89.word7 - v89.word2) {
                    fun_callSelector(address(MEM[v89.word7 + 32]), this, MEM[v89.word7]);
                }
                v130 = v131 = 1;
                while (v130 < v89.word6) {
                    fun_callSelector(MEM[32 + MEM[(v130 << 5) + (192 + v89) + 32]], this, MEM[MEM[(v130 << 5) + (192 + v89) + 32]]);
                    v130 = v130 + 1;
                }
            }
            v72 = v132 = MEM[32 + v89.word0];
            v74 = v133 = MEM[v89.word0];
            if (v133 >= v86) {
                fun_callSelector(v132, msg.data[v85] >> 96, v133);
                if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + v85]))) {
                    require(v89.word3 != MEM[v89.word2], MEM[32 + v89.word2], 0xfb772a88000000000000000000000000);
                    if (this - address(msg.data[69 + v85] >> 96)) {
                        v134 = new struct(2);
                        require(!((v134 + 64 > uint64.max) | (v134 + 64 < v134)), Panic(65)); // failed memory allocation (too much memory)
                        v134.word0 = msg.sender;
                        v134.word1 = v89.word3 - MEM[v89.word2];
                        require(msg.data.length - v91 >= 128);
                        v135 = new struct(3);
                        require(!((v135 + 96 > uint64.max) | (v135 + 96 < v135)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v91 >= 64);
                        v136 = new struct(2);
                        require(!((v136 + 64 > uint64.max) | (v136 + 64 < v136)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v91] - address(msg.data[v91])));
                        v136.word0 = msg.data[v91];
                        v136.word1 = msg.data[v91 + 32];
                        v135.word0 = v136;
                        v135.word1 = msg.data[v91 + 64];
                        v135.word2 = msg.data[v91 + 96];
                        require(v95 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v137 = new bytes[](v95);
                        require(!((v137 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v95) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v137 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v95) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v137)), Panic(65)); // failed memory allocation (too much memory)
                        require(v93 + v95 <= msg.data.length);
                        CALLDATACOPY(v137.data, v93, v95);
                        v137[v95] = 0;
                        fun_transferFrom(v135, v134, v137, v87);
                    } else if (v89.word3 - MEM[v89.word2]) {
                        fun_safeTransfer(MEM[32 + v89.word2], msg.sender, v89.word3 - MEM[v89.word2]);
                    }
                    v138 = msg.sender.settle(MEM[32 + v89.word2], 0x15afd409000000000000000000000000, v89.word3 - MEM[v89.word2]).gas(msg.gas);
                    if (!v138) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                    }
                } else if (bool(MEM[v89.word2])) {
                    require(MEM[v89.word2], MEM[32 + v89.word2]);
                    v139, /* uint256 */ v140 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v89.word2] << 96) * (MEM[32 + v89.word2] << 96), (this ^ _fun_permitToSellAmount) * (address(msg.data[69 + v85] >> 96) == this) ^ _fun_permitToSellAmount, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v89.word2] << 96) * (MEM[32 + v89.word2] << 96), MEM[v89.word2]).gas(msg.gas);
                    require(v139, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
                v82 = v141 = new bytes[](32);
                MEM[v141.data] = v133;
            }
        } else if (5 == uint16(v2 >> 160)) {
            v3 = v142 = msg.data[20 + (v1 + 68)] >> 128;
            v143 = v144 = 0;
            v145 = new struct(39);
            v145.word6 = 0;
            MEM[v3190x45b2V0x2aa + 480:v3190x45b2V0x2aa + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 352] | MEM[address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 320]) * (MEM[address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 320] ^ address(msg.data[v1 + 68 + 89] >> 96))), MEM[address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 320], address(msg.data[v1 + 68 + 89] >> 96));
            require(address(msg.data[v1 + 68 + 89] >> 96), ZeroToken());
            MEM[address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 320] = address(msg.data[v1 + 68 + 89] >> 96);
            v145.word0 = address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 288;
            v145.word1 = address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 288;
            v145.word2 = address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 288;
            v145.word4 = uint128(msg.data[20 + (v1 + 68)]);
            v145.word5 = msg.data[52 + (v1 + 68)] >> 128;
            v146 = v147 = msg.data.length;
            v148 = v149 = msg.data.length;
            v150 = v151 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(msg.data[v1 + 68 + 89] >> 96) * uint128(msg.data[20 + (v1 + 68)]) % (msg.data[52 + (v1 + 68)] >> 128) % 768 + (192 + v145) + 288)])) {
                if (address(msg.data[69 + (v1 + 68)] >> 96) - this) {
                    require(!bool(address(msg.data[69 + (v1 + 68)] >> 96)), Panic(1)); // low-level assert failed
                    v146 = v152 = v1 + 68 + 89 - 12;
                    v143 = v153 = 0x1 & msg.data[85 + (v1 + 68 + 89)];
                    v150 = v154 = msg.data[v1 + 68 + 89 + (msg.data[v1 + 36] - 89) - 3] >> 232;
                    v148 = v155 = v1 + 68 + 89 + (msg.data[v1 + 36] - 89) - v154 - 3;
                    v156 = v157 = 117 + (v1 + 68 + 89);
                    require(v157 <= v155);
                    v158 = v159 = msg.data[v1 + 36] - 89 - v154 - 120;
                } else {
                    v156 = v160 = 22 + (v1 + 68 + 89);
                    v158 = v161 = msg.data[v1 + 36] - 89 - 22;
                    v162 = fun_fastBalanceOf(MEM[32 + v145.word2], this);
                    MEM[v145.word2] = uint16(msg.data[v1 + 68 + 89] >> 80) * v162 / 10000;
                }
            } else {
                require(this == address(msg.data[69 + (v1 + 68)] >> 96), Panic(1)); // low-level assert failed
                MEM[v145.word2] = this.balance * uint16(msg.data[v1 + 68 + 89] >> 80) / 10000;
                v158 = msg.data[v1 + 36] - 89 - 22;
                v156 = 22 + (v1 + 68 + 89);
            }
            require(v158 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(msg.data[69 + (v1 + 68)] >> 96) - this) {
                v163 = v164 = msg.data[v146 + 32];
                if (~v164 < 10000) {
                    require(!(msg.data[v146] - address(msg.data[v146])));
                    v165 = fun_fastBalanceOf(address(msg.data[v146]), _fun_permitToSellAmount);
                    v163 = v166 = fun_unsafeMulDiv_38668(v165, 10000 - ~v164);
                }
                MEM[v145.word2] = v163;
            }
            if (0x1000000000000000000000000000000 & msg.data[52 + (v1 + 68)]) {
                v167, /* uint256 */ v168 = msg.sender.sync(MEM[32 + v145.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                require(v167, v168, RETURNDATASIZE());
                if (this - address(msg.data[69 + (v1 + 68)] >> 96)) {
                    v169 = new struct(2);
                    require(!((v169 + 64 > uint64.max) | (v169 + 64 < v169)), Panic(65)); // failed memory allocation (too much memory)
                    v169.word0 = msg.sender;
                    v169.word1 = MEM[v145.word2];
                    require(msg.data.length - v146 >= 128);
                    v170 = new struct(3);
                    require(!((v170 + 96 > uint64.max) | (v170 + 96 < v170)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v146 >= 64);
                    v171 = new struct(2);
                    require(!((v171 + 64 > uint64.max) | (v171 + 64 < v171)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v146] - address(msg.data[v146])));
                    v171.word0 = msg.data[v146];
                    v171.word1 = msg.data[v146 + 32];
                    v170.word0 = v171;
                    v170.word1 = msg.data[v146 + 64];
                    v170.word2 = msg.data[v146 + 96];
                    require(v150 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v172 = new bytes[](v150);
                    require(!((v172 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v150) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v172 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v150) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v172)), Panic(65)); // failed memory allocation (too much memory)
                    require(v148 + v150 <= msg.data.length);
                    CALLDATACOPY(v172.data, v148, v150);
                    v172[v150] = 0;
                    fun_transferFrom(v170, v169, v172, v143);
                } else {
                    fun_safeTransfer(MEM[32 + v145.word2], msg.sender, MEM[v145.word2]);
                }
                v173 = msg.sender.settle().gas(msg.gas);
                require(v173, MEM[64], RETURNDATASIZE());
                MEM[v145.word2] = MEM[0];
            }
            v145.word3 = MEM[v145.word2];
            fun_checkZeroSellAmount(v145);
            v174 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v175 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v158 >= 52) {
                v175.word2 = msg.data[2 + v156] >> 96;
                v176 = v177 = msg.data[v156 + 22];
                v178 = v179 = 1;
                if (v177 >> 248) {
                    if (!MEM[64 + v145.word0]) {
                        v145.word6 += v179;
                        MEM[(v179 + v145.word6 << 5) + (192 + v145)] = v145.word0;
                        MEM[64 + v145.word0] = (v179 + v145.word6 << 5) + (192 + v145);
                    }
                    if (v177 >> 248 > v179) {
                        if (!MEM[v145.word1]) {
                            if (MEM[64 + v145.word1]) {
                                MEM[64 + v145.word1] = 0;
                                v145.word6 = v145.word6 - 1;
                                if ((v145.word6 << 5) + (192 + v145) - MEM[64 + v145.word1]) {
                                    MEM[MEM[64 + v145.word1]] = MEM[(v145.word6 << 5) + (192 + v145)];
                                    MEM[64 + MEM[(v145.word6 << 5) + (192 + v145)]] = MEM[64 + v145.word1];
                                }
                            }
                        }
                        if ((v177 >> 248) - 2) {
                            require(3 == v177 >> 248, Panic(1)); // low-level assert failed
                            v176 = msg.data[20 + (v156 + 22)];
                            v178 = 21;
                            require(!((MEM[address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 352] | MEM[address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320]) * (MEM[address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320] ^ address(v177 >> 88))), MEM[address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320], address(v177 >> 88));
                            require(address(v177 >> 88), ZeroToken());
                            MEM[address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320] = address(v177 >> 88);
                            v145.word1 = address(v177 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 288;
                        } else {
                            v145.word1 = v145.word0;
                        }
                    }
                    v178 = v180 = v178 + 20;
                    v181 = MEM[address(v176 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320];
                    require(!((MEM[address(v176 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 352] | v181) * (v181 ^ address(v176 >> 88))), v181, address(v176 >> 88));
                    require(address(v176 >> 88), ZeroToken());
                    MEM[address(v176 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 320] = address(v176 >> 88);
                    v145.word0 = address(v176 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 288;
                    if (address(v176 >> 88) * v145.word4 % v145.word5 % 768 + (192 + v145) + 288 == v145.word2) {
                        MEM[v145.word2] = 0x784cb7b8;
                        revert(28 + v145.word2, 36);
                    }
                }
                v182 = (MEM[32 + v145.word0] ^ MEM[32 + v145.word1]) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v145.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v145.word0] << 96) & (MEM[32 + v145.word1] << 96 < MEM[32 + v145.word0] << 96));
                v174.word1 = address(MEM[32 + v145.word1] ^ v182);
                v174.word0 = address(MEM[32 + v145.word0] ^ v182);
                v174.word2 = msg.data[v178 + (v156 + 22)] >> 232;
                v174.word3 = int24(uint24(msg.data[v178 + (v156 + 22)] >> 208));
                v174.word4 = address(msg.data[v178 + (v156 + 22)] >> 48);
                v156 = 26 + (v178 + (v156 + 22)) + (msg.data[26 + (v178 + (v156 + 22))] >> 232) + 3;
                v158 = v158 - 22 - v178 - 26 - (msg.data[26 + (v178 + (v156 + 22))] >> 232) - 3;
                require(v158 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v175.word0 = bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v145.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v145.word0] << 96) & (MEM[32 + v145.word1] << 96 < MEM[32 + v145.word0] << 96));
                v175.word1 = 0 - MEM[v145.word1] * (msg.data[v156] >> 240) / 10000;
                MCOPY(64 + MEM[64], 32 + v174, 128);
                MCOPY(192 + MEM[64], v175, 96);
                v183 = new uint256[](msg.data[26 + (v178 + (v156 + 22))] >> 232);
                CALLDATACOPY(v183.data, 29 + (v178 + (v156 + 22)), msg.data[26 + (v178 + (v156 + 22))] >> 232);
                v184 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v174.word0) * v174.word0, v45, v45, v45, v45, v45, v45, v45, v183).gas(msg.gas);
                if (!v184) {
                    v185 = RETURNDATASIZE();
                    revert(v45, v45, v45, v45, v45, v45, v45, v45, v45, msg.data[26 + (v178 + (v156 + 22))] >> 232);
                } else {
                    v186 = (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v145.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v145.word0] << 96) & (MEM[32 + v145.word1] << 96 < MEM[32 + v145.word0] << 96));
                    v187 = _SafeSub(MEM[v145.word1], 0 - (int128(MEM[0]) ^ v186));
                    MEM[v145.word1] = v187;
                    if (int128(MEM[0] >> 128) ^ v186 < 0) {
                        MEM[v145.word0] = 0x4c085bf1;
                        revert(28 + v145.word0, 36);
                    } else {
                        MEM[v145.word0] += int128(MEM[0] >> 128) ^ v186;
                    }
                }
            }
            if (MEM[64 + v145.word0]) {
                MEM[64 + v145.word0] = 0;
                v145.word6 = v145.word6 - 1;
                if ((v145.word6 << 5) + (192 + v145) - MEM[64 + v145.word0]) {
                    MEM[MEM[64 + v145.word0]] = MEM[(v145.word6 << 5) + (192 + v145)];
                    MEM[64 + MEM[(v145.word6 << 5) + (192 + v145)]] = MEM[64 + v145.word0];
                }
            }
            if (!MEM[v145.word1]) {
                if (MEM[64 + v145.word1]) {
                    MEM[64 + v145.word1] = 0;
                    v145.word6 = v145.word6 - 1;
                    if ((v145.word6 << 5) + (192 + v145) - MEM[64 + v145.word1]) {
                        MEM[MEM[64 + v145.word1]] = MEM[(v145.word6 << 5) + (192 + v145)];
                        MEM[64 + MEM[(v145.word6 << 5) + (192 + v145)]] = MEM[64 + v145.word1];
                    }
                }
            }
            if (bool(v145.word6)) {
                require(v145.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v145.word7 - v145.word2) {
                    fun_callSelector_69786(address(MEM[v145.word7 + 32]), this, MEM[v145.word7]);
                }
                v188 = v189 = 1;
                while (v188 < v145.word6) {
                    fun_callSelector_69786(MEM[32 + MEM[(v188 << 5) + (192 + v145) + 32]], this, MEM[MEM[(v188 << 5) + (192 + v145) + 32]]);
                    v188 = v188 + 1;
                }
            }
            v72 = v190 = MEM[32 + v145.word0];
            v74 = v191 = MEM[v145.word0];
            if (v191 >= v142) {
                fun_callSelector_69786(v190, msg.data[v1 + 68] >> 96, v191);
                if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + (v1 + 68)]))) {
                    require(v145.word3 != MEM[v145.word2], MEM[32 + v145.word2], 0xfb772a88000000000000000000000000);
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v145.word2])) {
                        v192, /* uint256 */ v193 = msg.sender.sync(MEM[32 + v145.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v192, v193, RETURNDATASIZE());
                        if (this - address(msg.data[69 + (v1 + 68)] >> 96)) {
                            v194 = new struct(2);
                            require(!((v194 + 64 > uint64.max) | (v194 + 64 < v194)), Panic(65)); // failed memory allocation (too much memory)
                            v194.word0 = msg.sender;
                            v194.word1 = v145.word3 - MEM[v145.word2];
                            require(msg.data.length - v146 >= 128);
                            v195 = new struct(3);
                            require(!((v195 + 96 > uint64.max) | (v195 + 96 < v195)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v146 >= 64);
                            v196 = new struct(2);
                            require(!((v196 + 64 > uint64.max) | (v196 + 64 < v196)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v146] - address(msg.data[v146])));
                            v196.word0 = msg.data[v146];
                            v196.word1 = msg.data[v146 + 32];
                            v195.word0 = v196;
                            v195.word1 = msg.data[v146 + 64];
                            v195.word2 = msg.data[v146 + 96];
                            require(v150 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v197 = new bytes[](v150);
                            require(!((v197 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v150) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v197 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v150) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v197)), Panic(65)); // failed memory allocation (too much memory)
                            require(v148 + v150 <= msg.data.length);
                            CALLDATACOPY(v197.data, v148, v150);
                            v197[v150] = 0;
                            fun_transferFrom(v195, v194, v197, v143);
                        } else {
                            fun_safeTransfer(MEM[32 + v145.word2], msg.sender, v145.word3 - MEM[v145.word2]);
                        }
                        v198 = msg.sender.settle().gas(msg.gas);
                        require(v198, MEM[64], RETURNDATASIZE());
                    } else {
                        v199, /* uint256 */ v200 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v199, v200, RETURNDATASIZE());
                        v201 = msg.sender.settle().value(v145.word3 - MEM[v145.word2]).gas(msg.gas);
                        require(v201, MEM[64], RETURNDATASIZE());
                    }
                } else if (bool(MEM[v145.word2])) {
                    if (this - address(msg.data[69 + (v1 + 68)] >> 96)) {
                        v202 = v203 = _fun_permitToSellAmount;
                    } else {
                        v202 = v204 = this;
                    }
                    require(MEM[v145.word2], MEM[32 + v145.word2]);
                    v205, /* uint256 */ v206 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v145.word2] << 96) * (MEM[32 + v145.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v145.word2] << 96) * (MEM[32 + v145.word2] << 96), v202, MEM[v145.word2]).gas(msg.gas);
                    require(v205, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
            }
        } else {
            if (1 == uint16(v2 >> 160)) {
                require(v0 - 4 >= 128);
                if (0 == (msg.data[msg.data[v1 + 68] + v1 + 36] >> 96 == this)) {
                    require(!bool(msg.data[msg.data[v1 + 68] + v1 + 36] >> 96), Panic(1)); // low-level assert failed
                    v207 = new struct(2);
                    require(!((v207 + 64 > uint64.max) | (v207 + 64 < v207)), Panic(65)); // failed memory allocation (too much memory)
                    v207.word0 = msg.sender;
                    v207.word1 = (msg.data[v1 + 4] ^ msg.data[v1 + 36]) * (msg.data[v1 + 4] > 0) ^ msg.data[v1 + 36];
                    require(msg.data.length - (msg.data[v1 + 68] + v1 + 44) >= 128);
                    v208 = new struct(3);
                    require(!((v208 + 96 > uint64.max) | (v208 + 96 < v208)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - (msg.data[v1 + 68] + v1 + 44) >= 64);
                    v209 = new struct(2);
                    require(!((v209 + 64 > uint64.max) | (v209 + 64 < v209)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[msg.data[v1 + 68] + v1 + 44] - address(msg.data[msg.data[v1 + 68] + v1 + 44])));
                    v209.word0 = msg.data[msg.data[v1 + 68] + v1 + 44];
                    v209.word1 = msg.data[msg.data[v1 + 68] + v1 + 44 + 32];
                    v208.word0 = v209;
                    v208.word1 = msg.data[msg.data[v1 + 68] + v1 + 44 + 64];
                    v208.word2 = msg.data[msg.data[v1 + 68] + v1 + 44 + 96];
                    v210 = msg.data[msg.data[v1 + 68] + v1 + 4] - 137;
                    require(v210 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v211 = new bytes[](v210);
                    require(!((v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v210) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v210) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v211)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data[v1 + 68] + v1 + 173 + v210 <= msg.data.length);
                    CALLDATACOPY(v211.data, msg.data[v1 + 68] + v1 + 173, v210);
                    v211[v210] = 0;
                    fun_transferFrom(v208, v207, v211, 0x1 & msg.data[msg.data[v1 + 68] + v1 + 141]);
                    v82 = v212 = new struct(1);
                    require(!((v212 + 32 > uint64.max) | (v212 + 32 < v212)), Panic(65)); // failed memory allocation (too much memory)
                } else {
                    fun_safeTransfer(msg.data[msg.data[v1 + 68] + v1 + 56] >> 96, msg.sender, (msg.data[v1 + 4] ^ msg.data[v1 + 36]) * (msg.data[v1 + 4] > 0) ^ msg.data[v1 + 36]);
                    v82 = v213 = new struct(1);
                    require(!((v213 + 32 > uint64.max) | (v213 + 32 < v213)), Panic(65)); // failed memory allocation (too much memory)
                }
            } else if (4 == uint16(v2 >> 160)) {
                require(v0 - 4 >= 160);
                require(!(msg.data[v1 + 164] - address(msg.data[v1 + 164])));
                require(address(msg.data[v1 + 4]) == address(msg.data[v1 + 164]), Panic(1)); // low-level assert failed
                v214 = new struct(2);
                require(!((v214 + 64 > uint64.max) | (v214 + 64 < v214)), Panic(65)); // failed memory allocation (too much memory)
                v214.word0 = msg.sender;
                v214.word1 = msg.data[v1 + 36];
                require(msg.data.length - (v1 + 164) >= 128);
                v215 = new struct(3);
                require(!((v215 + 96 > uint64.max) | (v215 + 96 < v215)), Panic(65)); // failed memory allocation (too much memory)
                require(msg.data.length - (v1 + 164) >= 64);
                v216 = new struct(2);
                require(!((v216 + 64 > uint64.max) | (v216 + 64 < v216)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v1 + 164] - address(msg.data[v1 + 164])));
                v216.word0 = msg.data[v1 + 164];
                v216.word1 = msg.data[v1 + 164 + 32];
                v215.word0 = v216;
                v215.word1 = msg.data[v1 + 164 + 64];
                v215.word2 = msg.data[v1 + 164 + 96];
                require(msg.data[v1 + 132] - 129 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v217 = new bytes[](msg.data[v1 + 132] - 129);
                require(!((v217 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[v1 + 132] - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v217 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[v1 + 132] - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v217)), Panic(65)); // failed memory allocation (too much memory)
                require(v1 + 293 + (msg.data[v1 + 132] - 129) <= msg.data.length);
                CALLDATACOPY(v217.data, v1 + 293, msg.data[v1 + 132] - 129);
                v217[msg.data[v1 + 132] - 129] = 0;
                fun_transferFrom(v215, v214, v217, 0x1 & msg.data[v1 + 261]);
                v82 = v218 = new struct(1);
                require(!((v218 + 32 > uint64.max) | (v218 + 32 < v218)), Panic(65)); // failed memory allocation (too much memory)
            } else {
                require(3 == uint16(v2 >> 160), Panic(81)); // call to a zero-initialized variable of internal function type
                if (0 == 96 < v0 - 4) {
                    fun_safeTransfer(msg.data[v1 + 36], msg.sender, msg.data[v1 + 68]);
                } else {
                    v219 = new struct(2);
                    require(!((v219 + 64 > uint64.max) | (v219 + 64 < v219)), Panic(65)); // failed memory allocation (too much memory)
                    v219.word0 = msg.sender;
                    v219.word1 = msg.data[v1 + 68];
                    require(msg.data.length - (v1 + 36) >= 128);
                    v220 = new struct(3);
                    require(!((v220 + 96 > uint64.max) | (v220 + 96 < v220)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - (v1 + 36) >= 64);
                    v221 = new struct(2);
                    require(!((v221 + 64 > uint64.max) | (v221 + 64 < v221)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v1 + 36] - address(msg.data[v1 + 36])));
                    v221.word0 = msg.data[v1 + 36];
                    v221.word1 = msg.data[v1 + 36 + 32];
                    v220.word0 = v221;
                    v220.word1 = msg.data[v1 + 36 + 64];
                    v220.word2 = msg.data[v1 + 36 + 96];
                    require(msg.data[v1 + 196] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v222 = new bytes[](msg.data[v1 + 196]);
                    require(!((v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + 196]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + 196]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v222)), Panic(65)); // failed memory allocation (too much memory)
                    require(v1 + 228 + msg.data[v1 + 196] <= msg.data.length);
                    CALLDATACOPY(v222.data, v1 + 228, msg.data[v1 + 196]);
                    v222[msg.data[v1 + 196]] = 0;
                    fun_transferFrom(v220, v219, v222, msg.data[v1 + 164]);
                }
                v82 = v223 = new bytes[](96);
                MEM[v223.data] = 32;
                MEM[64 + v223] = 32;
                MEM[96 + v223] = msg.data[v1 + 68];
            }
            MEM[v82] = 0;
            // Unknown jump to Block 0x124. Refer to 3-address code (TAC);
        }
        return MEM[v1e2_0x0 + 32:v1e2_0x0 + 32 + MEM[v1e2_0x0]];
        v82 = v224 = new bytes[](96);
        MEM[v224.data] = 32;
        MEM[64 + v224] = 32;
        MEM[96 + v224] = v74;
        // Unknown jump to Block 0x124. Refer to 3-address code (TAC);
        revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v72, v3, v74));
    }
}
