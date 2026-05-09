// Decompiled by library.dedaub.com
// 2025.12.06 04:40 UTC

// Data structures and variables inferred from the use of storage instructions
mapping (address => uint256) _executeMetaTxn; // STORAGE[0x8054751d605e5c08a2210bf]
uint256 _fun_transferFrom; // TRANSIENT_STORAGE[0xc7aebfbc05485e093720deaa]
uint256 _fun_toCanonicalSellAmount; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x1516(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    v0 = (varg3 ^ varg8) * ((varg2 == varg1) | (varg2 != varg0) & (varg1 < varg0));
    if (varg3 ^ v0 < 0) {
        MEM[v1.word1] = 0x4c085bf1;
        revert(28 + v1.word1, 36);
    } else {
        return varg3 ^ v0, varg5, varg6, varg7, v1.word1, varg9, varg8 ^ v0;
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = fun_owner();
    return address(v0);
}

function 0x8bc1e8eb() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 64 + MEM[64];
    v2 = v3 = address(_executeMetaTxn[0x1]);
    while (1 - v2) {
        MEM[v0] = v2;
        v0 += 32;
        v2 = v4 = address(_executeMetaTxn[v2]);
    }
    v5 = new uint256[](v0 - MEM[64] - 64 >> 5);
    return v5;
}

function 0x67c4a3b0() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x352650ac2653508d946c4912b07895b22edd84cd;
}

function receive() public payable { 
}

function executeMetaTxn(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(96 <= msg.data.length - 4);
    require(varg3 <= uint64.max);
    require(varg3 + 35 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(varg3 + (varg3.length << 5) + 36 <= msg.data.length);
    require(!(varg4 - address(varg4)));
    require(varg5 <= uint64.max);
    require(varg5 + 35 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(varg5 + varg5.length + 36 <= msg.data.length);
    require(_executeMetaTxn[address(msg.sender ^ (msg.data[msg.data.length - 20] >> 96 ^ msg.sender) * ((3 < msg.data.length) & !((0xcf9e3c5a26621af382fa17f24f ^ msg.sender) << 96)))] << 96, PermissionDenied());
    CALLDATACOPY(32 + v0.data, 4, 96);
    require(address(msg.sender ^ (msg.data[msg.data.length - 20] >> 96 ^ msg.sender) * ((3 < msg.data.length) & !((0xcf9e3c5a26621af382fa17f24f ^ msg.sender) << 96))) != address(varg4), ConfusedDeputy());
    require(!_fun_transferFrom, ReentrantMetatransaction(_fun_transferFrom));
    _fun_transferFrom = keccak256(0xdc83993a2ffc65b01b71ed08790b6e39c5c55d76937b62a3b5085b02071f1259);
    require(varg4 << 96, ConfusedDeputy());
    require(!(_fun_toCanonicalSellAmount << 96), ReentrantPayer(_fun_toCanonicalSellAmount, 0x7407c0f8000000000000000000000000));
    _fun_toCanonicalSellAmount = address(varg4);
    require(varg3.length);
    v1 = msg.data[varg3 + msg.data[varg3 + 36] + 36] - 4;
    v2 = varg3 + msg.data[varg3 + 36] + 72;
    v3 = new bytes[](0x3c74eed6);
    if (0 == (msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224 == 0xdfeb419)) {
        if (0x9ebf8e8d - (msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224)) {
            v4 = v5 = 0;
        } else {
            require(v2 + v1 - v2 >= 224);
            require(!(msg.data[v2] - address(msg.data[v2])));
            require(msg.data[v2 + 32] <= uint64.max);
            require(v2 + msg.data[v2 + 32] + 31 < v2 + v1);
            require(msg.data[v2 + msg.data[v2 + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v6 = MEM[64];
            require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
            require(v2 + msg.data[v2 + 32] + 32 + msg.data[v2 + msg.data[v2 + 32]] <= v2 + v1);
            CALLDATACOPY(v3.data, v2 + msg.data[v2 + 32] + 32, msg.data[v2 + msg.data[v2 + 32]]);
            v3[msg.data[v2 + msg.data[v2 + 32]]] = 0;
            require(v2 + v1 - (v2 + 64) >= 128);
            v7 = new struct(3);
            require(!((v7 + 96 > uint64.max) | (v7 + 96 < v7)), Panic(65)); // failed memory allocation (too much memory)
            require(v2 + v1 - (v2 + 64) >= 64);
            v8 = new struct(2);
            require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v2 + 64] - address(msg.data[v2 + 64])));
            v8.word0 = msg.data[v2 + 64];
            v8.word1 = msg.data[v2 + 64 + 32];
            v7.word0 = v8;
            v7.word1 = msg.data[v2 + 64 + 64];
            v7.word2 = msg.data[v2 + 64 + 96];
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v9 = new bytes[](varg5.length);
            require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5.data + varg5.length <= msg.data.length);
            CALLDATACOPY(v9.data, varg5.data, varg5.length);
            v9[varg5.length] = 0;
            require(137 <= 137 + v9.length, Panic(17)); // arithmetic overflow or underflow
            require(137 + v9.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = new bytes[](137 + v9.length);
            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
            require(137 + v9.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(v10.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v9.length) - 32);
            MEM[72 + v10] = MEM[32 + v7.word0];
            MCOPY(104 + v10, 32 + v7, 64);
            MEM8[168 + v10] = 0x0 & 0xFF;
            MCOPY(169 + v10, v9.data, v9.length);
            v11 = v12 = fun_toCanonicalSellAmount(address(MEM[v7.word0]), MEM[v7.word0 + 32]);
            v13 = v14 = 0;
            require(v12 <= int256.max, Panic(17)); // arithmetic overflow or underflow
            while (1) {
                require(MEM[v6] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v15 = MEM[20 + v6];
                v16 = MEM[64 + v6];
                if (0 == !uint8(MEM[21 + v6])) {
                    if (uint8(MEM[21 + v6]) - 1) {
                        if (uint8(MEM[21 + v6]) - 2) {
                            require(0 != (uint8(MEM[21 + v6]) == 3), UnknownForkId(uint8(MEM[21 + v6])));
                            MEM[32] = (address(v15) < address(v16)) * (v16 ^ v15) ^ v15;
                            MEM[0] = 0;
                            MEM[12] = (v16 ^ (address(v15) < address(v16)) * (v16 ^ v15)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v10] = v15;
                            MEM[20 + v10] = v13;
                            v17 = MEM[64];
                            MCOPY(196 + v17, v10, 32 + v10.length);
                            MEM[164 + v17] = 160;
                            MEM[132 + v17] = address(MEM[44 + v6]);
                            MEM[100 + v17] = v11;
                            MEM[68 + v17] = address(v15) < address(v16);
                            MEM[36 + v17] = address(msg.data[v2]) ^ (this ^ address(msg.data[v2])) * (MEM[v6] > 64);
                            MEM[16 + v17] = 0x128acb08000000000000000000000000;
                            require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                            v19 = ___function_selector__;
                            require(!v19, ReentrantCallback(v19));
                            ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                            v20 = address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1bbdbV0x1f52V0x18d7 + 32:v1bbdbV0x1f52V0x18d7 + 32 + 196 + v26d5V0x1f52V0x18d7.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v21 = v22 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v21 = new bytes[](RETURNDATASIZE());
                                require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
                            }
                            require(v20, v23 + 32, MEM[v23]);
                            v24 = ___function_selector__;
                            require(!v24, CallbackNotSpent(v24));
                        } else {
                            MEM[32] = (address(v15) < address(v16)) * (v16 ^ v15) ^ v15;
                            MEM[0] = 0;
                            MEM[12] = (v16 ^ (address(v15) < address(v16)) * (v16 ^ v15)) << 96;
                            MEM8[11] = 0xff & 0xFF;
                            MEM[40 + v10] = v15;
                            MEM[20 + v10] = v13;
                            v17 = v25 = MEM[64];
                            MCOPY(196 + v25, v10, 32 + v10.length);
                            MEM[164 + v25] = 160;
                            MEM[132 + v25] = address(MEM[44 + v6]);
                            MEM[100 + v25] = v11;
                            MEM[68 + v25] = address(v15) < address(v16);
                            MEM[36 + v25] = address(msg.data[v2]) ^ (this ^ address(msg.data[v2])) * (MEM[v6] > 64);
                            MEM[16 + v25] = 0x128acb08000000000000000000000000;
                            require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                            v26 = ___function_selector__;
                            require(!v26, ReentrantCallback(v26));
                            ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                            v27 = address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1bb41V0x1f52V0x18d7 + 32:v1bb41V0x1f52V0x18d7 + 32 + 196 + v26d5V0x1f52V0x18d7.length], MEM[0:0]).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v21 = v28 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v21 = v29 = new bytes[](RETURNDATASIZE());
                                require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v29.data, 0, RETURNDATASIZE());
                            }
                            require(v27, v30 + 32, MEM[v30]);
                            v31 = ___function_selector__;
                            require(!v31, CallbackNotSpent(v31));
                        }
                    } else {
                        MEM[32] = (address(v15) < address(v16)) * (v16 ^ v15) ^ v15;
                        MEM[0] = 0;
                        MEM[12] = (v16 ^ (address(v15) < address(v16)) * (v16 ^ v15)) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + v10] = v15;
                        MEM[20 + v10] = v13;
                        v17 = v32 = MEM[64];
                        MCOPY(196 + v32, v10, 32 + v10.length);
                        MEM[164 + v32] = 160;
                        MEM[132 + v32] = address(MEM[44 + v6]);
                        MEM[100 + v32] = v11;
                        MEM[68 + v32] = address(v15) < address(v16);
                        MEM[36 + v32] = address(msg.data[v2]) ^ (this ^ address(msg.data[v2])) * (MEM[v6] > 64);
                        MEM[16 + v32] = 0x128acb08000000000000000000000000;
                        require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                        v33 = ___function_selector__;
                        require(!v33, ReentrantCallback(v33));
                        ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                        v34 = address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1baa7V0x1f52V0x18d7 + 32:v1baa7V0x1f52V0x18d7 + 32 + 196 + v26d5V0x1f52V0x18d7.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v21 = v35 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v21 = v36 = new bytes[](RETURNDATASIZE());
                            require(!((v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v36)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v36.data, 0, RETURNDATASIZE());
                        }
                        require(v34, v37 + 32, MEM[v37]);
                        v38 = ___function_selector__;
                        require(!v38, CallbackNotSpent(v38));
                    }
                } else {
                    MEM[32] = (address(v15) < address(v16)) * (v16 ^ v15) ^ v15;
                    MEM[0] = 0;
                    MEM[12] = (v16 ^ (address(v15) < address(v16)) * (v16 ^ v15)) << 96;
                    MEM8[11] = 0xff & 0xFF;
                    MEM[40 + v10] = v15;
                    MEM[20 + v10] = v13;
                    v17 = v39 = MEM[64];
                    MCOPY(196 + v39, v10, 32 + v10.length);
                    MEM[164 + v39] = 160;
                    MEM[132 + v39] = address(MEM[44 + v6]);
                    MEM[100 + v39] = v11;
                    MEM[68 + v39] = address(v15) < address(v16);
                    MEM[36 + v39] = address(msg.data[v2]) ^ (this ^ address(msg.data[v2])) * (MEM[v6] > 64);
                    MEM[16 + v39] = 0x128acb08000000000000000000000000;
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v40 = ___function_selector__;
                    require(!v40, ReentrantCallback(v40));
                    ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                    v41 = address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2685V0x1f52V0x18d7]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1ba0dV0x1f52V0x18d7 + 32:v1ba0dV0x1f52V0x18d7 + 32 + 196 + v26d5V0x1f52V0x18d7.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v21 = v42 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v21 = v43 = new bytes[](RETURNDATASIZE());
                        require(!((v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v43)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
                    }
                    require(v41, v44 + 32, MEM[v44]);
                    v45 = ___function_selector__;
                    require(!v45, CallbackNotSpent(v45));
                }
                require(v21 + MEM[v21] - v21 >= 64);
                v11 = v46 = 0 - ((MEM[v21 + 64] ^ MEM[v21 + 32]) * (address(v15) < address(v16)) ^ MEM[v21 + 32]);
                require(v46 >= 0, Panic(17)); // arithmetic overflow or underflow
                if (MEM[v6] <= 64) {
                    require(v46 >= msg.data[v2 + 192], TooMuchSlippage(v16, 0x97a6f3b9000000000000000000000000, msg.data[v2 + 192], v46));
                    v4 = 1;
                } else {
                    v13 = v47 = this;
                    require(MEM[v6] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v6 = v6 + 44;
                    MEM[v6] = MEM[v6] - 44;
                }
            }
        }
    } else {
        require(v2 + v1 - v2 >= 160);
        require(!(msg.data[v2] - address(msg.data[v2])));
        require(v2 + v1 - (v2 + 32) >= 128);
        v48 = new struct(3);
        require(!((v48 + 96 > uint64.max) | (v48 + 96 < v48)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 + v1 - (v2 + 32) >= 64);
        v49 = new struct(2);
        require(!((v49 + 64 > uint64.max) | (v49 + 64 < v49)), Panic(65)); // failed memory allocation (too much memory)
        require(!(msg.data[v2 + 32] - address(msg.data[v2 + 32])));
        v49.word0 = msg.data[v2 + 32];
        v49.word1 = msg.data[v2 + 32 + 32];
        v48.word0 = v49;
        v50 = v3.data;
        v48.word1 = msg.data[v2 + 32 + 64];
        v48.word2 = msg.data[v2 + 32 + 96];
        v51, v52 = fun_permitToTransferDetails(v48, address(msg.data[v2]));
        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v53 = new bytes[](varg5.length);
        require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
        require(varg5.data + varg5.length <= msg.data.length);
        CALLDATACOPY(v53.data, varg5.data, varg5.length);
        v53[varg5.length] = 0;
        v54 = _fun_transferFrom;
        _fun_transferFrom = 0;
        require(v54, ConfusedDeputy());
        v55 = new bytes[](129);
        require(!((v55 + 192 > uint64.max) | (v55 + 192 < v55)), Panic(65)); // failed memory allocation (too much memory)
        MEM[v55.data] = 'Slippage slippage)Slippage(addre';
        MEM[v55 + 64] = 'ss recipient,address buyToken,ui';
        MEM[v55 + 96] = 'nt256 minAmountOut)TokenPermissi';
        MEM[v55 + 128] = 'ons(address token,uint256 amount';
        MEM[v55 + 160] = 0x2900000000000000000000000000000000000000000000000000000000000000;
        MEM[v55 + 192] = 0x137c29fe;
        MCOPY(32 + (v55 + 192), v48.word0.length, 64);
        MCOPY(96 + (v55 + 192), v3.data, 64);
        MCOPY(160 + (v55 + 192), v52, 64);
        MCOPY(352 + (v55 + 192), v55, 161);
        MCOPY(384 + (v55 + 192 + v55.length), v53, 32 + v53.length);
        v56, /* uint256 */ v57 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v18, v18, v18, v18, v18, v18, address(_fun_toCanonicalSellAmount), v54, 320, 481).gas(msg.gas);
        if (!v56) {
            v58 = RETURNDATASIZE();
            revert(v18, v18, v18, v18, v18, v18, v18, v18, v18, 481);
        } else {
            v4 = v59 = 1;
        }
    }
    if (!v4) {
        if ((msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224) - 0xfe944a9d) {
            if ((msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224) - 0xfb17ae47) {
                if ((msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224) - 0x7430b95e) {
                    if (0xc4d55cad - (msg.data[varg3 + msg.data[varg3 + 36] + 68] >> 224)) {
                        v60 = v61 = 0;
                    } else {
                        require(v2 + v1 - v2 >= 320);
                        require(!(msg.data[v2] - address(msg.data[v2])));
                        require(!(msg.data[v2 + 32] - bool(msg.data[v2 + 32])));
                        require(msg.data[v2 + 128] <= uint64.max);
                        require(v2 + msg.data[v2 + 128] + 31 < v2 + v1);
                        require(msg.data[v2 + msg.data[v2 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v62 = new bytes[](msg.data[v2 + msg.data[v2 + 128]]);
                        require(!((v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
                        require(v2 + msg.data[v2 + 128] + 32 + msg.data[v2 + msg.data[v2 + 128]] <= v2 + v1);
                        CALLDATACOPY(v62.data, v2 + msg.data[v2 + 128] + 32, msg.data[v2 + msg.data[v2 + 128]]);
                        v62[msg.data[v2 + msg.data[v2 + 128]]] = 0;
                        require(v2 + v1 - (v2 + 160) >= 128);
                        v63 = new struct(3);
                        require(!((v63 + 96 > uint64.max) | (v63 + 96 < v63)), Panic(65)); // failed memory allocation (too much memory)
                        require(v2 + v1 - (v2 + 160) >= 64);
                        v64 = new struct(2);
                        require(!((v64 + 64 > uint64.max) | (v64 + 64 < v64)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v2 + 160] - address(msg.data[v2 + 160])));
                        v64.word0 = msg.data[v2 + 160];
                        v64.word1 = msg.data[v2 + 160 + 32];
                        v63.word0 = v64;
                        v63.word1 = msg.data[v2 + 160 + 64];
                        v63.word2 = msg.data[v2 + 160 + 96];
                        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v65 = new bytes[](varg5.length);
                        require(!((v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v65)), Panic(65)); // failed memory allocation (too much memory)
                        require(varg5.data + varg5.length <= msg.data.length);
                        CALLDATACOPY(v65.data, varg5.data, varg5.length);
                        v65[varg5.length] = 0;
                        require(!msg.data[v2 + 64] | (96 == msg.data[v2 + 64] * 96 / msg.data[v2 + 64]), Panic(17)); // arithmetic overflow or underflow
                        require(!msg.data[v2 + 96] | (96 == msg.data[v2 + 96] * 96 / msg.data[v2 + 96]), Panic(17)); // arithmetic overflow or underflow
                        require(!(bool(msg.data[v2 + 288] >> 128) | bool(msg.data[v2 + 64] * 96 >> 128) | bool(msg.data[v2 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                        MEM[v65.length + (v62.length + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v65.length;
                        MCOPY(306 + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v62.data, v62.length);
                        MCOPY(v62.length + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v65.data, v65.length);
                        MEM8[305 + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                        MCOPY(v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v63 + 32, 64);
                        MCOPY(177 + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v63.word0, 64);
                        MEM8[168 + (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v2 + 32] & 0xFF;
                        require((_fun_toCanonicalSellAmount ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                        ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                        v66, /* uint256 */ v67 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, address(msg.data[v2]), 209 + (v62.length + v65.length), address(msg.data[v2]), msg.data[v2 + 288], msg.data[v2 + 96] * 96, msg.data[v2 + 64] * 96, 0).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v68 = v69 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v68 = new bytes[](RETURNDATASIZE());
                            require(!((v68 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v68 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v68)), Panic(65)); // failed memory allocation (too much memory)
                            v67 = v68.data;
                            RETURNDATACOPY(v67, 0, RETURNDATASIZE());
                        }
                        require(v66, v68 + 32, MEM[v68]);
                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                    }
                } else {
                    require(v2 + v1 - v2 >= 288);
                    require(!(msg.data[v2] - address(msg.data[v2])));
                    require(!(msg.data[v2 + 64] - bool(msg.data[v2 + 64])));
                    require(v2 + v1 - (v2 + 96) >= 128);
                    v70 = new struct(3);
                    require(!((v70 + 96 > uint64.max) | (v70 + 96 < v70)), Panic(65)); // failed memory allocation (too much memory)
                    require(v2 + v1 - (v2 + 96) >= 64);
                    v71 = new struct(2);
                    require(!((v71 + 64 > uint64.max) | (v71 + 64 < v71)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v2 + 96] - address(msg.data[v2 + 96])));
                    v71.word0 = msg.data[v2 + 96];
                    v71.word1 = msg.data[v2 + 96 + 32];
                    v70.word0 = v71;
                    v70.word1 = msg.data[v2 + 96 + 64];
                    v70.word2 = msg.data[v2 + 96 + 96];
                    require(!(msg.data[v2 + 224] - int32(msg.data[v2 + 224])));
                    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v72 = new bytes[](varg5.length);
                    require(!((v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v72)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5.data + varg5.length <= msg.data.length);
                    CALLDATACOPY(v72.data, varg5.data, varg5.length);
                    v72[varg5.length] = 0;
                    MEM8[11] = 0xff & 0xFF;
                    v73 = fun_toCanonicalSellAmount(address(MEM[v70.word0]), MEM[v70.word0 + 32]);
                    MCOPY(32 + (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v70.word0, 64);
                    MCOPY(96 + (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v70, 64);
                    MEM8[160 + (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                    MCOPY(161 + (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v72.data, v72.length);
                    v74 = v72.length + (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0));
                    MCOPY(v74 + 389, v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), 161 + v72.length);
                    MEM[v74 + 357] = 192;
                    MEM[v74 + 325] = int32(msg.data[v2 + 224]);
                    MEM[v74 + 293] = 0;
                    MEM[v74 + 261] = msg.data[v2 + 64];
                    MEM[v74 + 229] = v73;
                    MEM[v74 + 197] = address(msg.data[v2]);
                    MEM[v74 + 177] = 0x3eece7db000000000000000000000000;
                    MEM[v74 + 161] = 357 + v72.length;
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v2 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a))) << 96, ConfusedDeputy());
                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                    ___function_selector__ = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v2 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)) | 0x67ca7c9100000000000000040000000000000000000000000000000000000000;
                    v75, /* uint256 */ v76 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v2 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).call(MEM[v2124V0x18d7 + 193:v2124V0x18d7 + 193 + MEM[v2124V0x18d7 + 161]], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v77 = v78 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v77 = new bytes[](RETURNDATASIZE());
                        require(!((v77 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v77 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v77)), Panic(65)); // failed memory allocation (too much memory)
                        v76 = v77.data;
                        RETURNDATACOPY(v76, 0, RETURNDATASIZE());
                    }
                    require(v75, v77 + 32, MEM[v77]);
                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                    require(v77 + MEM[v77] - v77 >= 64);
                    if (MEM[64 + v77] < msg.data[v2 + (uint8.max + 1)]) {
                        v79 = address(keccak256(0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, 0xa7e848aca42d879ef06507fca0e7b33a0a63c1e, msg.data[v2 + 32], 0xbb7b783eb4b8ca46925c5384a6b9919df57cb83da8f76e37291f58d0dd5c439a)).tokenB().gas(msg.gas);
                        require(v79, MEM[64], RETURNDATASIZE());
                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                        revert(TooMuchSlippage(MEM[0], msg.data[v2 + (uint8.max + 1)], MEM[64 + v77]));
                    } else {
                        v60 = v80 = 1;
                    }
                }
            } else {
                require(v2 + v1 - v2 >= 320);
                require(!(msg.data[v2] - address(msg.data[v2])));
                require(!(msg.data[v2 + 32] - bool(msg.data[v2 + 32])));
                require(msg.data[v2 + 128] <= uint64.max);
                require(v2 + msg.data[v2 + 128] + 31 < v2 + v1);
                require(msg.data[v2 + msg.data[v2 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v81 = new bytes[](msg.data[v2 + msg.data[v2 + 128]]);
                require(!((v81 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v81 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v81)), Panic(65)); // failed memory allocation (too much memory)
                require(v2 + msg.data[v2 + 128] + 32 + msg.data[v2 + msg.data[v2 + 128]] <= v2 + v1);
                CALLDATACOPY(v81.data, v2 + msg.data[v2 + 128] + 32, msg.data[v2 + msg.data[v2 + 128]]);
                v81[msg.data[v2 + msg.data[v2 + 128]]] = 0;
                require(v2 + v1 - (v2 + 160) >= 128);
                v82 = new struct(3);
                require(!((v82 + 96 > uint64.max) | (v82 + 96 < v82)), Panic(65)); // failed memory allocation (too much memory)
                require(v2 + v1 - (v2 + 160) >= 64);
                v83 = new struct(2);
                require(!((v83 + 64 > uint64.max) | (v83 + 64 < v83)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v2 + 160] - address(msg.data[v2 + 160])));
                v83.word0 = msg.data[v2 + 160];
                v83.word1 = msg.data[v2 + 160 + 32];
                v82.word0 = v83;
                v82.word1 = msg.data[v2 + 160 + 64];
                v82.word2 = msg.data[v2 + 160 + 96];
                require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v84 = new bytes[](varg5.length);
                require(!((v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v84)), Panic(65)); // failed memory allocation (too much memory)
                require(varg5.data + varg5.length <= msg.data.length);
                CALLDATACOPY(v84.data, varg5.data, varg5.length);
                v84[varg5.length] = 0;
                require(!msg.data[v2 + 64] | (96 == msg.data[v2 + 64] * 96 / msg.data[v2 + 64]), Panic(17)); // arithmetic overflow or underflow
                require(!msg.data[v2 + 96] | (96 == msg.data[v2 + 96] * 96 / msg.data[v2 + 96]), Panic(17)); // arithmetic overflow or underflow
                require(!(bool(msg.data[v2 + 288] >> 128) | bool(msg.data[v2 + 64] * 96 >> 128) | bool(msg.data[v2 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                MEM[v84.length + (v81.length + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v84.length;
                MCOPY(306 + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v81.data, v81.length);
                MCOPY(v81.length + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v84.data, v84.length);
                MEM8[305 + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                MCOPY(v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v82 + 32, 64);
                MCOPY(177 + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v82.word0, 64);
                MEM8[168 + (v84 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v2 + 32] & 0xFF;
                require((_fun_toCanonicalSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                require(!___function_selector__, ReentrantCallback(___function_selector__));
                ___function_selector__ = uint32(msg.data[v2] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                v85, /* uint256 */ v86 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v2]), 209 + (v81.length + v84.length), address(msg.data[v2]), msg.data[v2 + 288], msg.data[v2 + 96] * 96, msg.data[v2 + 64] * 96, 0).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v87 = v88 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v87 = new bytes[](RETURNDATASIZE());
                    require(!((v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v87 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v87)), Panic(65)); // failed memory allocation (too much memory)
                    v86 = v87.data;
                    RETURNDATACOPY(v86, 0, RETURNDATASIZE());
                }
                require(v85, v87 + 32, MEM[v87]);
                require(!___function_selector__, CallbackNotSpent(___function_selector__));
            }
        } else {
            require(v2 + v1 - v2 >= 320);
            require(!(msg.data[v2] - address(msg.data[v2])));
            require(!(msg.data[v2 + 32] - bool(msg.data[v2 + 32])));
            require(msg.data[v2 + 128] <= uint64.max);
            require(v2 + msg.data[v2 + 128] + 31 < v2 + v1);
            require(msg.data[v2 + msg.data[v2 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v89 = new bytes[](msg.data[v2 + msg.data[v2 + 128]]);
            require(!((v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v89)), Panic(65)); // failed memory allocation (too much memory)
            require(v2 + msg.data[v2 + 128] + 32 + msg.data[v2 + msg.data[v2 + 128]] <= v2 + v1);
            CALLDATACOPY(v89.data, v2 + msg.data[v2 + 128] + 32, msg.data[v2 + msg.data[v2 + 128]]);
            v89[msg.data[v2 + msg.data[v2 + 128]]] = 0;
            require(v2 + v1 - (v2 + 160) >= 128);
            v90 = new struct(3);
            require(!((v90 + 96 > uint64.max) | (v90 + 96 < v90)), Panic(65)); // failed memory allocation (too much memory)
            require(v2 + v1 - (v2 + 160) >= 64);
            v91 = new struct(2);
            require(!((v91 + 64 > uint64.max) | (v91 + 64 < v91)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v2 + 160] - address(msg.data[v2 + 160])));
            v91.word0 = msg.data[v2 + 160];
            v91.word1 = msg.data[v2 + 160 + 32];
            v90.word0 = v91;
            v90.word1 = msg.data[v2 + 160 + 64];
            v90.word2 = msg.data[v2 + 160 + 96];
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v92 = new bytes[](varg5.length);
            require(!((v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5.data + varg5.length <= msg.data.length);
            CALLDATACOPY(v92.data, varg5.data, varg5.length);
            v92[varg5.length] = 0;
            require(!msg.data[v2 + 64] | (96 == msg.data[v2 + 64] * 96 / msg.data[v2 + 64]), Panic(17)); // arithmetic overflow or underflow
            require(!msg.data[v2 + 96] | (96 == msg.data[v2 + 96] * 96 / msg.data[v2 + 96]), Panic(17)); // arithmetic overflow or underflow
            require(!(bool(msg.data[v2 + 288] >> 128) | bool(msg.data[v2 + 64] * 96 >> 128) | bool(msg.data[v2 + 96] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
            MEM[v92.length + (v89.length + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v92.length;
            MCOPY(306 + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v89.data, v89.length);
            MCOPY(v89.length + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v92.data, v92.length);
            MEM8[305 + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
            MCOPY(v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 241, v90 + 32, 64);
            MCOPY(177 + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v90.word0, 64);
            MEM8[168 + (v92 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v2 + 32] & 0xFF;
            require((_fun_toCanonicalSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
            require(!___function_selector__, ReentrantCallback(___function_selector__));
            ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
            v93, /* uint256 */ v94 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v2]), 209 + (v89.length + v92.length), address(msg.data[v2]), msg.data[v2 + 288], msg.data[v2 + 96] * 96, msg.data[v2 + 64] * 96, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v95 = v96 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v95 = new bytes[](RETURNDATASIZE());
                require(!((v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v95 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v95)), Panic(65)); // failed memory allocation (too much memory)
                v94 = v95.data;
                RETURNDATACOPY(v94, 0, RETURNDATASIZE());
            }
            require(v93, v95 + 32, MEM[v95]);
            require(!___function_selector__, CallbackNotSpent(___function_selector__));
        }
        v60 = v97 = 1;
    } else {
        v60 = v98 = 1;
    }
    if (!v60) {
        MEM[v3.data] = 0;
        v99 = new uint256[](v1);
        CALLDATACOPY(v99.data, v2, v1);
        revert(ActionInvalid(0, bytes4(msg.data[varg3 + msg.data[varg3 + 36] + 68]), v99));
    } else {
        v100 = v101 = 1;
        v102 = v103 = 68 + varg3;
        while (v100 < varg3.length) {
            v104 = msg.data[varg3 + msg.data[v102] + 36] - 4;
            v105 = varg3 + msg.data[v102] + 72;
            v106 = msg.data[varg3 + msg.data[v102] + 68] >> 224;
            if (v106 - 0xd92aadfb) {
                if (0 == (v106 == 0x8d68a156)) {
                    if (v106 - 0x103b48be) {
                        if (v106 - 0x38c9c147) {
                            if (v106 - 0x34ee90ca) {
                                if (v106 - 0xaf72634f) {
                                    if (v106 - 0x736180c8) {
                                        if (v106 - 0x6472b276) {
                                            if (v106 - 0xfd8c38e1) {
                                                if (v106 - 0x9b59756f) {
                                                    if (v106 - 0x6c5f9cf9) {
                                                        if (v106 - 0xca9e5d0f) {
                                                            if (0xb8df6d4d != v106) {
                                                                v107 = v108 = 0;
                                                            } else {
                                                                require(v105 + v104 - v105 >= 160);
                                                                require(!(msg.data[v105] - address(msg.data[v105])));
                                                                require(!(msg.data[v105 + 64] - address(msg.data[v105 + 64])));
                                                                require(!(msg.data[v105 + 96] - bool(msg.data[v105 + 96])));
                                                                v109 = fun_fastBalanceOf(msg.data[v105], this);
                                                                fun_safeApproveIfBelow(msg.data[v105], address(msg.data[v105 + 64]), v109 * msg.data[v105 + 32] / 10000);
                                                                if (!msg.data[v105 + 96]) {
                                                                    v110 = msg.data[v105 + 64].sellBaseToken(v109 * msg.data[v105 + 32] / 10000, msg.data[v105 + 128], 96, 0).gas(msg.gas);
                                                                    if (!v110) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                    }
                                                                } else {
                                                                    v111 = msg.data[v105 + 64].getExpectedTarget().gas(msg.gas);
                                                                    if (!v111) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 63);
                                                                        v112 = msg.data[v105 + 64]._R_STATUS_().gas(msg.gas);
                                                                        if (!v112) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            require(!(MEM[0] >> 8));
                                                                            require(uint8(MEM[0]) < 3, Panic(33)); // failed convertion to enum type
                                                                            v113 = msg.data[v105 + 64].getOraclePrice().gas(msg.gas);
                                                                            if (!v113) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v114 = msg.data[v105 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                                if (!v114) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    v115 = msg.data[v105 + 64]._K_().gas(msg.gas);
                                                                                    if (!v115) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        if (0 == (uint8(MEM[0]) == 2)) {
                                                                                            v116 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v109 * msg.data[v105 + 32] / 10000) / 10 ** 18;
                                                                                            if (0 == (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 >= v116) {
                                                                                                v117 = v118 = v116 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                                v119 = v120 = 0;
                                                                                            } else {
                                                                                                v117 = v121 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v116;
                                                                                                v119 = v122 = 1;
                                                                                            }
                                                                                            v123 = v124 = v117 * v117 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                                            v123 = (v124 >> 1) + 1;
                                                                                            while (v123 < v123) {
                                                                                                v123 = v123 + v124 / v123 >> 1;
                                                                                            }
                                                                                            if (!v119) {
                                                                                                v125 = v126 = v123 - v117;
                                                                                            } else {
                                                                                                v125 = v127 = v117 + v123;
                                                                                            }
                                                                                            v128 = v129 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v125 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v125 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                        } else {
                                                                                            v130 = msg.data[v105 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                            if (!v130) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v109 * msg.data[v105 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                    v131 = MEM[0] * MEM[0] / 10 ** 18 * MEM[0] / MEM[0] + (v109 * msg.data[v105 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                                                    if (0 == (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 >= v131) {
                                                                                                        v132 = v133 = v131 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                        v134 = v135 = 0;
                                                                                                    } else {
                                                                                                        v132 = v136 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v131;
                                                                                                        v134 = v137 = 1;
                                                                                                    }
                                                                                                    v138 = v139 = v132 * v132 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * MEM[0] / 10 ** 18 * MEM[0]) / 10 ** 18;
                                                                                                    v138 = (v139 >> 1) + 1;
                                                                                                    while (v138 < v138) {
                                                                                                        v138 = v138 + v139 / v138 >> 1;
                                                                                                    }
                                                                                                    if (!v134) {
                                                                                                        v140 = v141 = v138 - v132;
                                                                                                    } else {
                                                                                                        v140 = v142 = v132 + v138;
                                                                                                    }
                                                                                                    v128 = v143 = MEM[0] - MEM[0] + (MEM[0] - (bool(v140 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v140 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                                } else {
                                                                                                    v128 = (MEM[0] + v109 * msg.data[v105 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18 * (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v109 * msg.data[v105 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v109 * msg.data[v105 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        v144 = msg.data[v105 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v144) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            v145 = msg.data[v105 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                            if (!v145) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v128 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < msg.data[v105 + 128]) {
                                                                                                    v146 = msg.data[v105 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                    require(v146, MEM[64], RETURNDATASIZE());
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v105 + 128], v128 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                                                    revert();
                                                                                                } else {
                                                                                                    v147 = msg.data[v105 + 64].buyBaseToken(v128 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v109 * msg.data[v105 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                    if (!v147) {
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
                                                            require(v105 + v104 - v105 >= 192);
                                                            require(!(msg.data[v105] - address(msg.data[v105])));
                                                            require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                                            require(!(msg.data[v105 + 96] - address(msg.data[v105 + 96])));
                                                            require(!(msg.data[v105 + 128] - bool(msg.data[v105 + 128])));
                                                            if (msg.data[v105 + 64]) {
                                                                v148 = fun_fastBalanceOf(msg.data[v105 + 32], this);
                                                                fun_safeTransfer(msg.data[v105 + 32], address(msg.data[v105 + 96]), v148 * msg.data[v105 + 64] / 10000);
                                                            }
                                                            v149 = msg.data[v105 + 96].sellQuote(address(msg.data[v105]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v105 + 128]) << 96).gas(msg.gas);
                                                            if (!v149) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(RETURNDATASIZE() > 31);
                                                                if (MEM[0] < msg.data[v105 + 160]) {
                                                                    v150 = msg.data[v105 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                    require(v150, MEM[64], RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v105 + 160], MEM[0]));
                                                                    revert();
                                                                } else {
                                                                    v107 = v151 = 1;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(v105 + v104 - v105 >= uint8.max + 1);
                                                        require(!(msg.data[v105] - address(msg.data[v105])));
                                                        require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                                        require(!(msg.data[v105 + 96] - bool(msg.data[v105 + 96])));
                                                        require(msg.data[v105 + 192] <= uint64.max);
                                                        require(v105 + msg.data[v105 + 192] + 31 < v105 + v104);
                                                        require(msg.data[v105 + msg.data[v105 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v152 = new bytes[](msg.data[v105 + msg.data[v105 + 192]]);
                                                        require(!((v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v152)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(v105 + msg.data[v105 + 192] + 32 + msg.data[v105 + msg.data[v105 + 192]] <= v105 + v104);
                                                        CALLDATACOPY(v152.data, v105 + msg.data[v105 + 192] + 32, msg.data[v105 + msg.data[v105 + 192]]);
                                                        v152[msg.data[v105 + msg.data[v105 + 192]]] = 0;
                                                        require(!msg.data[v105 + 128] | (96 == msg.data[v105 + 128] * 96 / msg.data[v105 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                        require(!msg.data[v105 + 160] | (96 == msg.data[v105 + 160] * 96 / msg.data[v105 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                        require(!((msg.data[v105 + 64] > 10000) | bool(msg.data[v105 + 224] >> 128) | bool(msg.data[v105 + 128] * 96 >> 128) | bool(msg.data[v105 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                        MCOPY(211 + MEM[64], v152.data, v152.length);
                                                        MEM[179 + MEM[64]] = msg.data[v105 + 64];
                                                        MEM[177 + MEM[64]] = msg.data[v105 + 32];
                                                        MEM[157 + MEM[64]] = this;
                                                        MEM[136 + MEM[64]] = msg.data[v105 + 160] * 96;
                                                        MEM[120 + MEM[64]] = msg.data[v105 + 128] * 96;
                                                        MEM[104 + MEM[64]] = msg.data[v105 + 224];
                                                        MEM[88 + MEM[64]] = address(msg.data[v105]);
                                                        MEM[68 + MEM[64]] = 111 + v152.length;
                                                        MEM[36 + MEM[64]] = 32;
                                                        MEM[4 + MEM[64]] = 0xf83d08ba;
                                                        MEM8[168 + MEM[64]] = msg.data[v105 + 96] & 0xFF;
                                                        require((_fun_toCanonicalSellAmount ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                        v153 = ___function_selector__;
                                                        require(!v153, ReentrantCallback(v153));
                                                        ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                        v154 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1e320x1e45V0x1e75V0x2ab6V0x3d37V0x1a20.length], MEM[0:0]).gas(msg.gas);
                                                        if (!RETURNDATASIZE()) {
                                                            v155 = v156 = 96;
                                                        } else {
                                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                            v155 = new bytes[](RETURNDATASIZE());
                                                            require(!((v155 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v155 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v155)), Panic(65)); // failed memory allocation (too much memory)
                                                            RETURNDATACOPY(v155.data, 0, RETURNDATASIZE());
                                                        }
                                                        require(v154, v155 + 32, MEM[v155]);
                                                        v157 = ___function_selector__;
                                                        require(!v157, CallbackNotSpent(v157));
                                                    }
                                                } else {
                                                    require(v105 + v104 - v105 >= 224);
                                                    require(!(msg.data[v105] - address(msg.data[v105])));
                                                    require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                                    require(!(msg.data[v105 + 96] - address(msg.data[v105 + 96])));
                                                    require(!(msg.data[v105 + 128] - bool(msg.data[v105 + 128])));
                                                    require(!(msg.data[v105 + 160] - int32(msg.data[v105 + 160])));
                                                    if (!msg.data[v105 + 64]) {
                                                        v158 = fun_fastBalanceOf(msg.data[v105 + 32], address(msg.data[v105 + 96]));
                                                        v159 = msg.data[v105 + 96].getState().gas(msg.gas);
                                                        if (!v159) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(!((RETURNDATASIZE() < 288) | MEM[(!msg.data[v105 + 128] << 5) + MEM[64]] >> 128));
                                                            v160 = v161 = 0;
                                                            v162 = v163 = v158 - uint128(MEM[(!msg.data[v105 + 128] << 5) + MEM[64]]);
                                                        }
                                                    } else {
                                                        v160 = 0;
                                                        v164 = fun_fastBalanceOf(msg.data[v105 + 32], this);
                                                        v162 = v165 = v164 * msg.data[v105 + 64] / 10000;
                                                        fun_safeTransfer(msg.data[v105 + 32], address(msg.data[v105 + 96]), v165);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[MEM[64]] = v160;
                                                    v166 = new bytes[](228);
                                                    MCOPY(228 + v166, MEM[64], 32);
                                                    MEM[196 + v166] = 192;
                                                    MEM[164 + v166] = int32(msg.data[v105 + 160]);
                                                    MEM[132 + v166] = v160;
                                                    MEM[100 + v166] = msg.data[v105 + 128];
                                                    MEM[68 + v166] = v162;
                                                    MEM[36 + v166] = address(msg.data[v105]);
                                                    v167 = v166.length;
                                                    v168 = v166.data;
                                                    v169 = address(msg.data[v105 + 96]).call(0x3eece7db000000000000000000000000, address(msg.data[v105]), 0x3eece7db000000000000000000000000, v162, msg.data[v105 + 128], v160, int32(msg.data[v105 + 160]), 192).value(v160).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v170 = v171 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v170 = new bytes[](RETURNDATASIZE());
                                                        require(!((v170 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v170 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v170)), Panic(65)); // failed memory allocation (too much memory)
                                                        RETURNDATACOPY(v170.data, 0, RETURNDATASIZE());
                                                    }
                                                    require(v169, v170 + 32, MEM[v170]);
                                                    require(v170 + MEM[v170] - v170 >= 64);
                                                    if (MEM[64 + v170] < msg.data[v105 + 192]) {
                                                        v172 = msg.data[v105 + 96].tokenB().gas(msg.gas);
                                                        require(v172, MEM[64], RETURNDATASIZE());
                                                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                        revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v105 + 192], MEM[64 + v170]));
                                                    } else {
                                                        v107 = v173 = 1;
                                                    }
                                                }
                                            } else {
                                                require(v105 + v104 - v105 >= uint8.max + 1);
                                                require(!(msg.data[v105] - address(msg.data[v105])));
                                                require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                                require(!(msg.data[v105 + 96] - bool(msg.data[v105 + 96])));
                                                require(msg.data[v105 + 192] <= uint64.max);
                                                require(v105 + msg.data[v105 + 192] + 31 < v105 + v104);
                                                require(msg.data[v105 + msg.data[v105 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v174 = new bytes[](msg.data[v105 + msg.data[v105 + 192]]);
                                                require(!((v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v174 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v174)), Panic(65)); // failed memory allocation (too much memory)
                                                require(v105 + msg.data[v105 + 192] + 32 + msg.data[v105 + msg.data[v105 + 192]] <= v105 + v104);
                                                CALLDATACOPY(v174.data, v105 + msg.data[v105 + 192] + 32, msg.data[v105 + msg.data[v105 + 192]]);
                                                v174[msg.data[v105 + msg.data[v105 + 192]]] = 0;
                                                require(!msg.data[v105 + 128] | (96 == msg.data[v105 + 128] * 96 / msg.data[v105 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v105 + 160] | (96 == msg.data[v105 + 160] * 96 / msg.data[v105 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v105 + 64] > 10000) | bool(msg.data[v105 + 224] >> 128) | bool(msg.data[v105 + 128] * 96 >> 128) | bool(msg.data[v105 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v174.data, v174.length);
                                                MEM[179 + MEM[64]] = msg.data[v105 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v105 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v105 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v105 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v105 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v105]);
                                                MEM[68 + MEM[64]] = 111 + v174.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0x48c89491;
                                                MEM8[168 + MEM[64]] = msg.data[v105 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v174.length + 211;
                                                require((_fun_toCanonicalSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                                v175 = ___function_selector__;
                                                require(!v175, ReentrantCallback(v175));
                                                ___function_selector__ = uint32(msg.data[v105] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                                v176 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1e320x1e45V0x1e75V0x2ab6V0x3b51V0x1a20.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v177 = v178 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v177 = new bytes[](RETURNDATASIZE());
                                                    require(!((v177 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v177 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v177)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v177.data, 0, RETURNDATASIZE());
                                                }
                                                require(v176, v177 + 32, MEM[v177]);
                                                v179 = ___function_selector__;
                                                require(!v179, CallbackNotSpent(v179));
                                            }
                                        } else {
                                            require(v105 + v104 - v105 >= 192);
                                            require(!(msg.data[v105] - address(msg.data[v105])));
                                            require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                            require(!(msg.data[v105 + 96] - address(msg.data[v105 + 96])));
                                            require(!(msg.data[v105 + 128] - bool(msg.data[v105 + 128])));
                                            EXTCODECOPY(msg.data[v105 + 96], MEM[64], 54, 384);
                                            v180 = msg.data[v105 + 96].getReserves().gas(msg.gas);
                                            if (!v180) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v181 = (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v105 + 128];
                                                v182 = address(address(MEM[32 + MEM[64]]) ^ v181).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                if (!v182) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(32 <= RETURNDATASIZE());
                                                    v183 = address(address(MEM[32 + MEM[64]]) ^ v181).maxDeposit(MEM[64 + MEM[64]], 0x402d267d000000000000000000000000).gas(msg.gas);
                                                    if (!v183) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v184 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, MEM[64 + MEM[64]], address(msg.data[v105 + 96]), MEM[64 + MEM[64]] << 96).gas(msg.gas);
                                                        if (!v184) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v185 = address(address(MEM[MEM[64]]) ^ v181).cash().gas(msg.gas);
                                                            if (!v185) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(32 <= RETURNDATASIZE());
                                                                v186 = v187 = (MEM[0] ^ msg.data[v105 + 128] * (MEM[0] ^ MEM[32]) > MEM[0]) * (MEM[0] ^ (MEM[0] ^ msg.data[v105 + 128] * (MEM[0] ^ MEM[32]))) ^ (MEM[0] ^ msg.data[v105 + 128] * (MEM[0] ^ MEM[32]));
                                                                v188 = address(v181 ^ address(MEM[MEM[64]])).caps().gas(msg.gas);
                                                                if (!v188) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                    v189 = address(address(MEM[MEM[64]]) ^ v181).totalBorrows().gas(msg.gas);
                                                                    if (!v189) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(32 <= RETURNDATASIZE());
                                                                        v190 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * ((10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 ^ (0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32]) - MEM[0]);
                                                                        if (v190 < v187) {
                                                                            v191 = fun_fastBalanceOf(address(address(MEM[MEM[64]]) ^ v181), MEM[64 + MEM[64]]);
                                                                            v192 = address(address(MEM[MEM[64]]) ^ v181).convertToAssets(v191).gas(msg.gas);
                                                                            if (!v192) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(32 <= RETURNDATASIZE());
                                                                                v186 = v193 = (v187 ^ MEM[0] + v190) * (MEM[0] + v190 >= v187) ^ MEM[0] + v190;
                                                                            }
                                                                        }
                                                                        if (0 == msg.data[v105 + 128]) {
                                                                            if ((MEM[0] - v186) * (MEM[0] > v186) > MEM[96 + MEM[64]]) {
                                                                                v194 = 10 ** 18 * (((MEM[0] - v186) * (MEM[0] > v186) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]);
                                                                                v195 = v194 < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                                                                v196 = ((v194 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v195) + v195) % MEM[192 + MEM[64]];
                                                                                v197 = ((v194 - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v195) + v195) / MEM[192 + MEM[64]] + (bool(v196) & v195);
                                                                                v198 = (uint16.max < v197 >> ((uint32.max < v197 >> ((uint64.max < v197 >> ((uint128.max < v197) << 7)) << 6 | (uint128.max < v197) << 7)) << 5 | ((uint64.max < v197 >> ((uint128.max < v197) << 7)) << 6 | (uint128.max < v197) << 7))) << 4 | ((uint32.max < v197 >> ((uint64.max < v197 >> ((uint128.max < v197) << 7)) << 6 | (uint128.max < v197) << 7)) << 5 | ((uint64.max < v197 >> ((uint128.max < v197) << 7)) << 6 | (uint128.max < v197) << 7));
                                                                                v199 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v197 >> ((uint8.max < v197 >> v198) << 3 | v198)))) ^ ((uint8.max < v197 >> v198) << 3 | v198)) + !v197) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v197 >> ((uint8.max < v197 >> v198) << 3 | v198)))) ^ ((uint8.max < v197 >> v198) << 3 | v198)) + !v197) - 127);
                                                                                v200 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v201 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v200) << 4 | v200)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v200) << 4 | v200);
                                                                                v202 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v201))) ^ v201) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v201))) ^ v201) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v203 = ((v202 ^ v199) * (v199 < v202) ^ v199) << 1;
                                                                                if (0 == v195) {
                                                                                    v204 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v205 = (uint40.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> ((uint72.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> ((uint136.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) << 7)) << 6 | (uint136.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) << 7)) << 5 | ((uint72.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> ((uint136.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) << 7)) << 6 | (uint136.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) << 7);
                                                                                    v206 = ((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / ((181 << (((uint24.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> v205) << 4 | v205) >> 1)) * (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> ((uint24.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> v205) << 4 | v205)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> v205) << 4 | v205) >> 1)) * (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> ((uint24.max < (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203) >> v205) << 4 | v205)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v207 = ((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v206 + v206 >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v206 + v206 >> 1) >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v206 + v206 >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v206 + v206 >> 1) >> 1) >> 1;
                                                                                    v208 = ((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v207 + v207 >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v207 + v207 >> 1) >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v207 + v207 >> 1) + (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v207 + v207 >> 1) >> 1) >> 1;
                                                                                    v209 = (v208 - (((v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (v204 >> v203 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v204 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v204) << uint8.max + 1 - v203)) / v208 < v208) << ((v202 ^ v199) * (v199 < v202) ^ v199)) + v197;
                                                                                    v210 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v211 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v209;
                                                                                    v212 = (2 - v209 / (0 - v209 & v209) * ((2 - v209 / (0 - v209 & v209) * (3 * (v209 / (0 - v209 & v209)) ^ 0x2)) * (3 * (v209 / (0 - v209 & v209)) ^ 0x2))) * ((2 - v209 / (0 - v209 & v209) * (3 * (v209 / (0 - v209 & v209)) ^ 0x2)) * (3 * (v209 / (0 - v209 & v209)) ^ 0x2));
                                                                                    v213 = (2 - v209 / (0 - v209 & v209) * ((2 - v209 / (0 - v209 & v209) * v212) * v212)) * ((2 - v209 / (0 - v209 & v209) * v212) * v212);
                                                                                    v214 = v215 = bool(v211) + ((v210 - v211) / (0 - v209 & v209) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v210 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v210) - (v211 > v210)) * ((0 - (0 - v209 & v209)) / (0 - v209 & v209) + 1)) * ((2 - v209 / (0 - v209 & v209) * ((2 - v209 / (0 - v209 & v209) * v213) * v213)) * ((2 - v209 / (0 - v209 & v209) * v213) * v213));
                                                                                } else {
                                                                                    v216 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                    v217 = (uint40.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> ((uint72.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> ((uint136.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) << 7)) << 6 | (uint136.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) << 7)) << 5 | ((uint72.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> ((uint136.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) << 7)) << 6 | (uint136.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) << 7);
                                                                                    v218 = (bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((181 << (((uint24.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> v217) << 4 | v217) >> 1)) * ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> ((uint24.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> v217) << 4 | v217)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> v217) << 4 | v217) >> 1)) * ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> ((uint24.max < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203)) >> v217) << 4 | v217)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v219 = (bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v218 + v218 >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v218 + v218 >> 1) >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v218 + v218 >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v218 + v218 >> 1) >> 1) >> 1;
                                                                                    v220 = (bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v219 + v219 >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v219 + v219 >> 1) >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v219 + v219 >> 1) + ((bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) / v219 + v219 >> 1) >> 1) >> 1;
                                                                                    v214 = v221 = bool((((v220 * v220 < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) + v220 << ((v202 ^ v199) * (v199 < v202) ^ v199)) + v197) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v220 * v220 < bool(v197 * v197 << uint8.max + 1 - v203) + (v197 * v197 >> v203 | v197 * v197 % uint256.max - v197 * v197 - (v197 * v197 % uint256.max < v197 * v197) << uint8.max + 1 - v203) + (bool(v216 << uint8.max + 1 - v203) + (v216 >> v203 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v216 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v216) << uint8.max + 1 - v203))) + v220 << ((v202 ^ v199) * (v199 < v202) ^ v199)) + v197) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                                                                }
                                                                                v222 = v214 - (v214 > MEM[128 + MEM[64]]);
                                                                            } else {
                                                                                v222 = v223 = fun_saturatingF((MEM[0] - v186) * (MEM[0] > v186), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            }
                                                                            v224 = v225 = (v222 > MEM[32]) * (v222 - MEM[32]);
                                                                        } else {
                                                                            if ((MEM[32] - v186) * (MEM[32] > v186) > MEM[128 + MEM[64]]) {
                                                                                v226 = 10 ** 18 * (((MEM[32] - v186) * (MEM[32] > v186) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                                                                v227 = v226 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                                                                v228 = ((v226 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v227) + v227) % MEM[160 + MEM[64]];
                                                                                v229 = ((v226 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v227) + v227) / MEM[160 + MEM[64]] + (bool(v228) & v227);
                                                                                v230 = (uint16.max < v229 >> ((uint32.max < v229 >> ((uint64.max < v229 >> ((uint128.max < v229) << 7)) << 6 | (uint128.max < v229) << 7)) << 5 | ((uint64.max < v229 >> ((uint128.max < v229) << 7)) << 6 | (uint128.max < v229) << 7))) << 4 | ((uint32.max < v229 >> ((uint64.max < v229 >> ((uint128.max < v229) << 7)) << 6 | (uint128.max < v229) << 7)) << 5 | ((uint64.max < v229 >> ((uint128.max < v229) << 7)) << 6 | (uint128.max < v229) << 7));
                                                                                v231 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v229 >> ((uint8.max < v229 >> v230) << 3 | v230)))) ^ ((uint8.max < v229 >> v230) << 3 | v230)) + !v229) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v229 >> ((uint8.max < v229 >> v230) << 3 | v230)))) ^ ((uint8.max < v229 >> v230) << 3 | v230)) + !v229) - 127);
                                                                                v232 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v233 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v232) << 4 | v232)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v232) << 4 | v232);
                                                                                v234 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v233))) ^ v233) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v233))) ^ v233) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v235 = ((v234 ^ v231) * (v231 < v234) ^ v231) << 1;
                                                                                if (0 == v227) {
                                                                                    v236 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v237 = (uint40.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> ((uint72.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> ((uint136.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) << 7)) << 6 | (uint136.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) << 7)) << 5 | ((uint72.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> ((uint136.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) << 7)) << 6 | (uint136.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) << 7);
                                                                                    v238 = ((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / ((181 << (((uint24.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> v237) << 4 | v237) >> 1)) * (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> ((uint24.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> v237) << 4 | v237)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> v237) << 4 | v237) >> 1)) * (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> ((uint24.max < (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235) >> v237) << 4 | v237)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v239 = ((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v238 + v238 >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v238 + v238 >> 1) >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v238 + v238 >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v238 + v238 >> 1) >> 1) >> 1;
                                                                                    v240 = ((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v239 + v239 >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v239 + v239 >> 1) >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v239 + v239 >> 1) + (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v239 + v239 >> 1) >> 1) >> 1;
                                                                                    v241 = (v240 - (((v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (v236 >> v235 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v236 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v236) << uint8.max + 1 - v235)) / v240 < v240) << ((v234 ^ v231) * (v231 < v234) ^ v231)) + v229;
                                                                                    v242 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v243 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v241;
                                                                                    v244 = (2 - v241 / (0 - v241 & v241) * ((2 - v241 / (0 - v241 & v241) * (3 * (v241 / (0 - v241 & v241)) ^ 0x2)) * (3 * (v241 / (0 - v241 & v241)) ^ 0x2))) * ((2 - v241 / (0 - v241 & v241) * (3 * (v241 / (0 - v241 & v241)) ^ 0x2)) * (3 * (v241 / (0 - v241 & v241)) ^ 0x2));
                                                                                    v245 = (2 - v241 / (0 - v241 & v241) * ((2 - v241 / (0 - v241 & v241) * v244) * v244)) * ((2 - v241 / (0 - v241 & v241) * v244) * v244);
                                                                                    v246 = v247 = bool(v243) + ((v242 - v243) / (0 - v241 & v241) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v242 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v242) - (v243 > v242)) * ((0 - (0 - v241 & v241)) / (0 - v241 & v241) + 1)) * ((2 - v241 / (0 - v241 & v241) * ((2 - v241 / (0 - v241 & v241) * v245) * v245)) * ((2 - v241 / (0 - v241 & v241) * v245) * v245));
                                                                                } else {
                                                                                    v248 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v249 = (uint40.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> ((uint72.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> ((uint136.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) << 7)) << 6 | (uint136.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) << 7)) << 5 | ((uint72.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> ((uint136.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) << 7)) << 6 | (uint136.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) << 7);
                                                                                    v250 = (bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((181 << (((uint24.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> v249) << 4 | v249) >> 1)) * ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> ((uint24.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> v249) << 4 | v249)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> v249) << 4 | v249) >> 1)) * ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> ((uint24.max < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235)) >> v249) << 4 | v249)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v251 = (bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v250 + v250 >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v250 + v250 >> 1) >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v250 + v250 >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v250 + v250 >> 1) >> 1) >> 1;
                                                                                    v252 = (bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v251 + v251 >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v251 + v251 >> 1) >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v251 + v251 >> 1) + ((bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) / v251 + v251 >> 1) >> 1) >> 1;
                                                                                    v246 = v253 = bool((((v252 * v252 < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) + v252 << ((v234 ^ v231) * (v231 < v234) ^ v231)) + v229) % (MEM[224 + MEM[64]] << 1)) + (((v252 * v252 < bool(v229 * v229 << uint8.max + 1 - v235) + (v229 * v229 >> v235 | v229 * v229 % uint256.max - v229 * v229 - (v229 * v229 % uint256.max < v229 * v229) << uint8.max + 1 - v235) + (bool(v248 << uint8.max + 1 - v235) + (v248 >> v235 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v248 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v248) << uint8.max + 1 - v235))) + v252 << ((v234 ^ v231) * (v231 < v234) ^ v231)) + v229) / (MEM[224 + MEM[64]] << 1);
                                                                                }
                                                                                v254 = v246 - (v246 > MEM[96 + MEM[64]]);
                                                                            } else {
                                                                                v254 = v255 = fun_saturatingF((MEM[32] - v186) * (MEM[32] > v186), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            }
                                                                            v224 = v256 = (v254 > MEM[0]) * (v254 - MEM[0]);
                                                                        }
                                                                        v257 = ((MEM[0] + MEM[0]) * MEM[0] ^ ((MEM[0] + MEM[0]) * MEM[0] ^ v224) * (v224 < (MEM[0] + MEM[0]) * MEM[0])) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                        v258 = 0;
                                                                        if (msg.data[v105 + 64]) {
                                                                            v259 = fun_fastBalanceOf(msg.data[v105 + 32], this);
                                                                            v258 = v260 = (v257 ^ v259 * msg.data[v105 + 64] / 10000) * (v259 * msg.data[v105 + 64] / 10000 > v257) ^ v259 * msg.data[v105 + 64] / 10000;
                                                                            fun_safeTransfer(msg.data[v105 + 32], address(msg.data[v105 + 96]), v260);
                                                                        }
                                                                        if (!v258) {
                                                                            v261 = fun_fastBalanceOf(msg.data[v105 + 32], address(msg.data[v105 + 96]));
                                                                            v258 = v262 = (v257 ^ v261) * (v261 > v257) ^ v261;
                                                                        }
                                                                        if (0 == msg.data[v105 + 128]) {
                                                                            if (MEM[32] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                v263 = 10 ** 18 * ((MEM[32] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[128 + MEM[64]]) * MEM[192 + MEM[64]] + MEM[96 + MEM[64]] * MEM[160 + MEM[64]]);
                                                                                v264 = v263 < (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]];
                                                                                v265 = ((v263 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v264) + v264) % MEM[160 + MEM[64]];
                                                                                v266 = ((v263 - (MEM[224 + MEM[64]] << 1) * MEM[96 + MEM[64]] * MEM[160 + MEM[64]] ^ 0 - v264) + v264) / MEM[160 + MEM[64]] + (bool(v265) & v264);
                                                                                v267 = (uint16.max < v266 >> ((uint32.max < v266 >> ((uint64.max < v266 >> ((uint128.max < v266) << 7)) << 6 | (uint128.max < v266) << 7)) << 5 | ((uint64.max < v266 >> ((uint128.max < v266) << 7)) << 6 | (uint128.max < v266) << 7))) << 4 | ((uint32.max < v266 >> ((uint64.max < v266 >> ((uint128.max < v266) << 7)) << 6 | (uint128.max < v266) << 7)) << 5 | ((uint64.max < v266 >> ((uint128.max < v266) << 7)) << 6 | (uint128.max < v266) << 7));
                                                                                v268 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v266 >> ((uint8.max < v266 >> v267) << 3 | v267)))) ^ ((uint8.max < v266 >> v267) << 3 | v267)) + !v266) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v266 >> ((uint8.max < v266 >> v267) << 3 | v267)))) ^ ((uint8.max < v266 >> v267) << 3 | v267)) + !v266) - 127);
                                                                                v269 = (uint32.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[96 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                                v270 = (uint8.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v269) << 4 | v269)) << 3 | ((uint16.max < MEM[96 + MEM[64]] * 0x3782dace9d9 >> v269) << 4 | v269);
                                                                                v271 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v270))) ^ v270) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[96 + MEM[64]] * 0x3782dace9d9 >> v270))) ^ v270) + !(MEM[96 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                                v272 = ((v271 ^ v268) * (v268 < v271) ^ v268) << 1;
                                                                                if (0 == v264) {
                                                                                    v273 = (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v274 = (uint40.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> ((uint72.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> ((uint136.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) << 7)) << 6 | (uint136.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) << 7)) << 5 | ((uint72.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> ((uint136.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) << 7)) << 6 | (uint136.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) << 7);
                                                                                    v275 = ((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / ((181 << (((uint24.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> v274) << 4 | v274) >> 1)) * (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> ((uint24.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> v274) << 4 | v274)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> v274) << 4 | v274) >> 1)) * (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> ((uint24.max < (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272) >> v274) << 4 | v274)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v276 = ((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v275 + v275 >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v275 + v275 >> 1) >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v275 + v275 >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v275 + v275 >> 1) >> 1) >> 1;
                                                                                    v277 = ((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v276 + v276 >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v276 + v276 >> 1) >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v276 + v276 >> 1) + (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v276 + v276 >> 1) >> 1) >> 1;
                                                                                    v278 = (v277 - (((v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (v273 >> v272 | (MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v273 - ((MEM[224 + MEM[64]] * (10 ** 18 - MEM[224 + MEM[64]]) << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v273) << uint8.max + 1 - v272)) / v277 < v277) << ((v271 ^ v268) * (v268 < v271) ^ v268)) + v266;
                                                                                    v279 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v280 = (10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % v278;
                                                                                    v281 = (2 - v278 / (0 - v278 & v278) * ((2 - v278 / (0 - v278 & v278) * (3 * (v278 / (0 - v278 & v278)) ^ 0x2)) * (3 * (v278 / (0 - v278 & v278)) ^ 0x2))) * ((2 - v278 / (0 - v278 & v278) * (3 * (v278 / (0 - v278 & v278)) ^ 0x2)) * (3 * (v278 / (0 - v278 & v278)) ^ 0x2));
                                                                                    v282 = (2 - v278 / (0 - v278 & v278) * ((2 - v278 / (0 - v278 & v278) * v281) * v281)) * ((2 - v278 / (0 - v278 & v278) * v281) * v281);
                                                                                    v283 = v284 = bool(v280) + ((v279 - v280) / (0 - v278 & v278) | ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v279 - ((10 ** 18 - MEM[224 + MEM[64]] << 1) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v279) - (v280 > v279)) * ((0 - (0 - v278 & v278)) / (0 - v278 & v278) + 1)) * ((2 - v278 / (0 - v278 & v278) * ((2 - v278 / (0 - v278 & v278) * v282) * v282)) * ((2 - v278 / (0 - v278 & v278) * v282) * v282));
                                                                                } else {
                                                                                    v285 = ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]);
                                                                                    v286 = (uint40.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> ((uint72.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> ((uint136.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) << 7)) << 6 | (uint136.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) << 7)) << 5 | ((uint72.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> ((uint136.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) << 7)) << 6 | (uint136.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) << 7);
                                                                                    v287 = (bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((181 << (((uint24.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> v286) << 4 | v286) >> 1)) * ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> ((uint24.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> v286) << 4 | v286)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> v286) << 4 | v286) >> 1)) * ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> ((uint24.max < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272)) >> v286) << 4 | v286)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                    v288 = (bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v287 + v287 >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v287 + v287 >> 1) >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v287 + v287 >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v287 + v287 >> 1) >> 1) >> 1;
                                                                                    v289 = (bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v288 + v288 >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v288 + v288 >> 1) >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v288 + v288 >> 1) + ((bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) / v288 + v288 >> 1) >> 1) >> 1;
                                                                                    v283 = v290 = bool((((v289 * v289 < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) + v289 << ((v271 ^ v268) * (v268 < v271) ^ v268)) + v266) % (MEM[224 + MEM[64]] << 1)) + (((v289 * v289 < bool(v266 * v266 << uint8.max + 1 - v272) + (v266 * v266 >> v272 | v266 * v266 % uint256.max - v266 * v266 - (v266 * v266 % uint256.max < v266 * v266) << uint8.max + 1 - v272) + (bool(v285 << uint8.max + 1 - v272) + (v285 >> v272 | ((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max - v285 - (((10 ** 18 - MEM[224 + MEM[64]]) * MEM[224 + MEM[64]] << 2) * (MEM[96 + MEM[64]] * MEM[96 + MEM[64]]) % uint256.max < v285) << uint8.max + 1 - v272))) + v289 << ((v271 ^ v268) * (v268 < v271) ^ v268)) + v266) / (MEM[224 + MEM[64]] << 1);
                                                                                }
                                                                                v291 = v292 = (MEM[0] > !(v283 - (v283 > MEM[96 + MEM[64]])) + (v283 - (v283 > MEM[96 + MEM[64]]))) * (MEM[0] - (!(v283 - (v283 > MEM[96 + MEM[64]])) + (v283 - (v283 > MEM[96 + MEM[64]]))));
                                                                            } else {
                                                                                v293 = fun_saturatingF(MEM[32] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v291 = v294 = (MEM[0] > !v293 + v293) * (MEM[0] - (!v293 + v293));
                                                                            }
                                                                        } else if (MEM[0] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                            v295 = 10 ** 18 * ((MEM[0] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) < (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]];
                                                                            v296 = (10 ** 18 * ((MEM[0] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18) - MEM[96 + MEM[64]]) * MEM[160 + MEM[64]] + MEM[128 + MEM[64]] * MEM[192 + MEM[64]]) - (MEM[uint8.max + 1 + MEM[64]] << 1) * MEM[128 + MEM[64]] * MEM[192 + MEM[64]] ^ 0 - v295) + v295;
                                                                            v297 = v296 / MEM[192 + MEM[64]] + (bool(v296 % MEM[192 + MEM[64]]) & v295);
                                                                            v298 = (uint16.max < v297 >> ((uint32.max < v297 >> ((uint64.max < v297 >> ((uint128.max < v297) << 7)) << 6 | (uint128.max < v297) << 7)) << 5 | ((uint64.max < v297 >> ((uint128.max < v297) << 7)) << 6 | (uint128.max < v297) << 7))) << 4 | ((uint32.max < v297 >> ((uint64.max < v297 >> ((uint128.max < v297) << 7)) << 6 | (uint128.max < v297) << 7)) << 5 | ((uint64.max < v297 >> ((uint128.max < v297) << 7)) << 6 | (uint128.max < v297) << 7));
                                                                            v299 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v297 >> ((uint8.max < v297 >> v298) << 3 | v298)))) ^ ((uint8.max < v297 >> v298) << 3 | v298)) + !v297) > int8.max) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (v297 >> ((uint8.max < v297 >> v298) << 3 | v298)))) ^ ((uint8.max < v297 >> v298) << 3 | v298)) + !v297) - 127);
                                                                            v300 = (uint32.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 5 | ((uint64.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7)) << 6 | (uint128.max < MEM[128 + MEM[64]] * 0x3782dace9d9) << 7);
                                                                            v301 = (uint8.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v300) << 4 | v300)) << 3 | ((uint16.max < MEM[128 + MEM[64]] * 0x3782dace9d9 >> v300) << 4 | v300);
                                                                            v302 = (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v301))) ^ v301) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) > 109) * (uint8.max + 1 - (((byte(0xf8f9f9faf9fdfafbf9fdfcfdfafbfcfef9fafdfafcfcfbfefafafcfbffffffff, 0x1f & 0x8421084210842108cc6318c6db6d54be >> (MEM[128 + MEM[64]] * 0x3782dace9d9 >> v301))) ^ v301) + !(MEM[128 + MEM[64]] * 0x3782dace9d9)) - 109);
                                                                            v303 = ((v302 ^ v299) * (v299 < v302) ^ v299) << 1;
                                                                            if (0 == v295) {
                                                                                v304 = (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v305 = (uint40.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> ((uint72.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> ((uint136.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) << 7)) << 6 | (uint136.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) << 7)) << 5 | ((uint72.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> ((uint136.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) << 7)) << 6 | (uint136.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) << 7);
                                                                                v306 = ((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / ((181 << (((uint24.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> v305) << 4 | v305) >> 1)) * (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> ((uint24.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> v305) << 4 | v305)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> v305) << 4 | v305) >> 1)) * (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> ((uint24.max < (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303) >> v305) << 4 | v305)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                v307 = ((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v306 + v306 >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v306 + v306 >> 1) >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v306 + v306 >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v306 + v306 >> 1) >> 1) >> 1;
                                                                                v308 = ((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v307 + v307 >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v307 + v307 >> 1) >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v307 + v307 >> 1) + (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v307 + v307 >> 1) >> 1) >> 1;
                                                                                v309 = (v308 - (((v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (v304 >> v303 | (MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v304 - ((MEM[uint8.max + 1 + MEM[64]] * (10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v304) << uint8.max + 1 - v303)) / v308 < v308) << ((v302 ^ v299) * (v299 < v302) ^ v299)) + v297;
                                                                                v310 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v311 = (10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % v309;
                                                                                v312 = (2 - v309 / (0 - v309 & v309) * ((2 - v309 / (0 - v309 & v309) * (3 * (v309 / (0 - v309 & v309)) ^ 0x2)) * (3 * (v309 / (0 - v309 & v309)) ^ 0x2))) * ((2 - v309 / (0 - v309 & v309) * (3 * (v309 / (0 - v309 & v309)) ^ 0x2)) * (3 * (v309 / (0 - v309 & v309)) ^ 0x2));
                                                                                v313 = (2 - v309 / (0 - v309 & v309) * ((2 - v309 / (0 - v309 & v309) * v312) * v312)) * ((2 - v309 / (0 - v309 & v309) * v312) * v312);
                                                                                v314 = v315 = bool(v311) + ((v310 - v311) / (0 - v309 & v309) | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v310 - ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]] << 1) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v310) - (v311 > v310)) * ((0 - (0 - v309 & v309)) / (0 - v309 & v309) + 1)) * ((2 - v309 / (0 - v309 & v309) * ((2 - v309 / (0 - v309 & v309) * v313) * v313)) * ((2 - v309 / (0 - v309 & v309) * v313) * v313));
                                                                            } else {
                                                                                v316 = ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]);
                                                                                v317 = (uint40.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> ((uint72.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> ((uint136.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) << 7)) << 6 | (uint136.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) << 7)) << 5 | ((uint72.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> ((uint136.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) << 7)) << 6 | (uint136.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) << 7);
                                                                                v318 = (bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((181 << (((uint24.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> v317) << 4 | v317) >> 1)) * ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> ((uint24.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> v317) << 4 | v317)) + (uint16.max + 1)) >> 18) + ((181 << (((uint24.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> v317) << 4 | v317) >> 1)) * ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> ((uint24.max < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303)) >> v317) << 4 | v317)) + (uint16.max + 1)) >> 18) >> 1;
                                                                                v319 = (bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v318 + v318 >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v318 + v318 >> 1) >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v318 + v318 >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v318 + v318 >> 1) >> 1) >> 1;
                                                                                v320 = (bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v319 + v319 >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v319 + v319 >> 1) >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v319 + v319 >> 1) + ((bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) / v319 + v319 >> 1) >> 1) >> 1;
                                                                                v314 = v321 = bool((((v320 * v320 < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) + v320 << ((v302 ^ v299) * (v299 < v302) ^ v299)) + v297) % (MEM[uint8.max + 1 + MEM[64]] << 1)) + (((v320 * v320 < bool(v297 * v297 << uint8.max + 1 - v303) + (v297 * v297 >> v303 | v297 * v297 % uint256.max - v297 * v297 - (v297 * v297 % uint256.max < v297 * v297) << uint8.max + 1 - v303) + (bool(v316 << uint8.max + 1 - v303) + (v316 >> v303 | ((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max - v316 - (((10 ** 18 - MEM[uint8.max + 1 + MEM[64]]) * MEM[uint8.max + 1 + MEM[64]] << 2) * (MEM[128 + MEM[64]] * MEM[128 + MEM[64]]) % uint256.max < v316) << uint8.max + 1 - v303))) + v320 << ((v302 ^ v299) * (v299 < v302) ^ v299)) + v297) / (MEM[uint8.max + 1 + MEM[64]] << 1);
                                                                            }
                                                                            v291 = v322 = (MEM[32] > !(v314 - (v314 > MEM[128 + MEM[64]])) + (v314 - (v314 > MEM[128 + MEM[64]]))) * (MEM[32] - (!(v314 - (v314 > MEM[128 + MEM[64]])) + (v314 - (v314 > MEM[128 + MEM[64]]))));
                                                                        } else {
                                                                            v323 = fun_saturatingF(MEM[0] + (v258 - v258 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            v291 = v324 = (MEM[32] > !v323 + v323) * (MEM[32] - (!v323 + v323));
                                                                        }
                                                                        if (v291 < msg.data[v105 + 160]) {
                                                                            v325 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v105 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                            require(v325, MEM[64], RETURNDATASIZE());
                                                                            require((32 > RETURNDATASIZE()) | MEM[0] >> 160, TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[160 + v105], v291));
                                                                            revert();
                                                                        } else {
                                                                            if (v291 > 1) {
                                                                                MEM[MEM[64] + (msg.data[v105 + 128] << 5) + 32] = v291;
                                                                                MEM[(0x20 ^ msg.data[v105 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                v326 = msg.data[v105 + 96].swap(v18, v18, address(msg.data[v105]), 128, 0).gas(msg.gas);
                                                                                if (!v326) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                }
                                                                            }
                                                                            v107 = v327 = 1;
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
                                        require(v105 + v104 - v105 >= 192);
                                        require(!(msg.data[v105] - address(msg.data[v105])));
                                        require(!(msg.data[v105 + 64] - bool(msg.data[v105 + 64])));
                                        v328 = v329 = msg.data[v105 + 96];
                                        require(!(msg.data[v105 + 128] - address(msg.data[v105 + 128])));
                                        require(!(msg.data[v105 + 160] - address(msg.data[v105 + 160])));
                                        v330 = v331 = msg.data[v105 + 160] ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[v105 + 160]) * msg.data[v105 + 64];
                                        v332 = fun_fastBalanceOf(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ msg.data[v105 + 160]) * msg.data[v105 + 64], this);
                                        if (!msg.data[v105 + 64]) {
                                            v333 = msg.data[v105 + 128].sellGem(address(msg.data[v105]), 0x95991276000000000000000000000000, v332 * msg.data[v105 + 32] / 10000).gas(msg.gas);
                                            if (!v333) {
                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                MEM[52] = 0;
                                                v334 = v335 = MEM[0];
                                                if (v335 >= v329) {
                                                    v107 = v336 = 1;
                                                }
                                            }
                                        } else {
                                            v337 = msg.data[v105 + 128].tout().gas(msg.gas);
                                            if (!v337) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                v334 = v338 = v332 * msg.data[v105 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v338 >= v329) {
                                                    v339 = msg.data[v105 + 128].buyGem(address(msg.data[v105]), 0x8d7ef9bb000000000000000000000000, v338).gas(msg.gas);
                                                    if (!v339) {
                                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                                    } else {
                                                        require(RETURNDATASIZE() > 31);
                                                        MEM[52] = 0;
                                                        v107 = v340 = 1;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    require(v105 + v104 - v105 >= uint8.max + 1);
                                    require(!(msg.data[v105] - address(msg.data[v105])));
                                    require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                    require(!(msg.data[v105 + 96] - bool(msg.data[v105 + 96])));
                                    require(msg.data[v105 + 192] <= uint64.max);
                                    require(v105 + msg.data[v105 + 192] + 31 < v105 + v104);
                                    require(msg.data[v105 + msg.data[v105 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v341 = new bytes[](msg.data[v105 + msg.data[v105 + 192]]);
                                    require(!((v341 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v341 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v341)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v105 + msg.data[v105 + 192] + 32 + msg.data[v105 + msg.data[v105 + 192]] <= v105 + v104);
                                    CALLDATACOPY(v341.data, v105 + msg.data[v105 + 192] + 32, msg.data[v105 + msg.data[v105 + 192]]);
                                    v341[msg.data[v105 + msg.data[v105 + 192]]] = 0;
                                    require(!msg.data[v105 + 128] | (96 == msg.data[v105 + 128] * 96 / msg.data[v105 + 128]), Panic(17)); // arithmetic overflow or underflow
                                    require(!msg.data[v105 + 160] | (96 == msg.data[v105 + 160] * 96 / msg.data[v105 + 160]), Panic(17)); // arithmetic overflow or underflow
                                    require(!((msg.data[v105 + 64] > 10000) | bool(msg.data[v105 + 224] >> 128) | bool(msg.data[v105 + 128] * 96 >> 128) | bool(msg.data[v105 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                    MCOPY(211 + MEM[64], v341.data, v341.length);
                                    MEM[179 + MEM[64]] = msg.data[v105 + 64];
                                    MEM[177 + MEM[64]] = msg.data[v105 + 32];
                                    MEM[157 + MEM[64]] = this;
                                    MEM[136 + MEM[64]] = msg.data[v105 + 160] * 96;
                                    MEM[120 + MEM[64]] = msg.data[v105 + 128] * 96;
                                    MEM[104 + MEM[64]] = msg.data[v105 + 224];
                                    MEM[88 + MEM[64]] = address(msg.data[v105]);
                                    MEM[68 + MEM[64]] = 111 + v341.length;
                                    MEM[36 + MEM[64]] = 32;
                                    MEM[4 + MEM[64]] = 0x48c89491;
                                    MEM8[168 + MEM[64]] = msg.data[v105 + 96] & 0xFF;
                                    MEM[64] = MEM[64] + v341.length + 211;
                                    require((_fun_toCanonicalSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                    v342 = ___function_selector__;
                                    require(!v342, ReentrantCallback(v342));
                                    ___function_selector__ = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                                    v343 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1e320x1e45V0x1e75V0x2ab6V0x34bcV0x1a20.length], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v344 = v345 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v344 = new bytes[](RETURNDATASIZE());
                                        require(!((v344 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v344 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v344)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v344.data, 0, RETURNDATASIZE());
                                    }
                                    require(v343, v344 + 32, MEM[v344]);
                                    v346 = ___function_selector__;
                                    require(!v346, CallbackNotSpent(v346));
                                }
                            } else {
                                require(v105 + v104 - v105 >= 128);
                                require(!(msg.data[v105] - address(msg.data[v105])));
                                require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v105 + 32])) {
                                    v347 = v348 = fun_fastBalanceOf(msg.data[v105 + 32], this);
                                } else {
                                    v347 = v349 = this.balance;
                                }
                                if (v347 > msg.data[v105 + 64]) {
                                    v350 = (v347 * msg.data[v105 + 96] / 10000 ^ v347 - msg.data[v105 + 64]) * (v347 - msg.data[v105 + 64] > v347 * msg.data[v105 + 96] / 10000) ^ v347 - msg.data[v105 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v105 + 32]))) {
                                        fun_safeTransfer(msg.data[v105 + 32], address(msg.data[v105]), v350);
                                    } else {
                                        fun_safeTransferETH(msg.data[v105], v350);
                                    }
                                }
                                v107 = v351 = 1;
                            }
                        } else {
                            require(v105 + v104 - v105 >= 160);
                            require(!(msg.data[v105] - address(msg.data[v105])));
                            require(!(msg.data[v105 + 64] - address(msg.data[v105 + 64])));
                            require(msg.data[v105 + 128] <= uint64.max);
                            require(v105 + msg.data[v105 + 128] + 31 < v105 + v104);
                            require(msg.data[v105 + msg.data[v105 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v352 = new bytes[](msg.data[v105 + msg.data[v105 + 128]]);
                            require(!((v352 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v352 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v352)), Panic(65)); // failed memory allocation (too much memory)
                            require(v105 + msg.data[v105 + 128] + 32 + msg.data[v105 + msg.data[v105 + 128]] <= v105 + v104);
                            CALLDATACOPY(v352.data, v105 + msg.data[v105 + 128] + 32, msg.data[v105 + msg.data[v105 + 128]]);
                            v352[msg.data[v105 + msg.data[v105 + 128]]] = 0;
                            require(address(msg.data[v105 + 64]) != 0x22d473030f116ddee9f6b43ac78ba3, ConfusedDeputy());
                            v353 = v354 = 0;
                            if (address(msg.data[v105]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v105])) {
                                    v355 = fun_fastBalanceOf(msg.data[v105], this);
                                    v356 = fun_unsafeMulDiv_41559(v355, msg.data[v105 + 32]);
                                    require(msg.data[v105 + 96] <= msg.data[v105 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v352.length >= msg.data[v105 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v357 = 0;
                                    v352[msg.data[v105 + 96]] = v356;
                                    if (address(msg.data[v105]) - address(msg.data[v105 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v105], address(msg.data[v105 + 64]), v356);
                                    }
                                } else {
                                    require(!msg.data[v105 + 96], InvalidOffset());
                                    v357 = v358 = 0;
                                }
                            } else {
                                v359 = this.balance;
                                v353 = v359 * msg.data[v105 + 32] / 10000;
                                if (0 == !v352.length) {
                                    require(msg.data[v105 + 96] <= msg.data[v105 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v352.length >= msg.data[v105 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v357 = v360 = 0;
                                    v352[msg.data[v105 + 96]] = v353;
                                } else {
                                    require(!msg.data[v105 + 96], InvalidOffset());
                                    v361 = address(msg.data[v105 + 64]).call().value(v353).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v362 = v363 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v362 = new bytes[](RETURNDATASIZE());
                                        require(!((v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v362)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v362.data, 0, RETURNDATASIZE());
                                    }
                                    require(v361, v362 + 32, MEM[v362]);
                                }
                            }
                            v364 = address(msg.data[v105 + 64]).call(MEM[v1e320x1e45V0x1e75V0x33c0V0x1a20.data:v1e320x1e45V0x1e75V0x33c0V0x1a20.data + v1e320x1e45V0x1e75V0x33c0V0x1a20.length], MEM[v472bV0x33ceV0x1a20:v472bV0x33ceV0x1a20 + v472bV0x33ceV0x1a20]).value(v353).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v365 = v366 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v365 = new bytes[](RETURNDATASIZE());
                                require(!((v365 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v365 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v365)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v365.data, 0, RETURNDATASIZE());
                            }
                            require(v364, v365 + 32, MEM[v365]);
                            v367 = v368 = !MEM[v365];
                            if (v368) {
                                v367 = v369 = !(address(msg.data[v105 + 64])).code.size;
                            }
                            require(!v367, InvalidTarget());
                        }
                        v107 = v370 = 1;
                    } else {
                        require(v105 + v104 - v105 >= 192);
                        require(!(msg.data[v105] - address(msg.data[v105])));
                        require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                        require(!(msg.data[v105 + 96] - address(msg.data[v105 + 96])));
                        require(!(msg.data[v105 + 128] - uint24(msg.data[v105 + 128])));
                        v371 = v372 = 0;
                        if (msg.data[v105 + 64]) {
                            v373 = fun_fastBalanceOf(address(msg.data[v105 + 32]), this);
                            v371 = v374 = v373 * msg.data[v105 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v105 + 32]), address(msg.data[v105 + 96]), v374);
                        }
                        v375 = address(msg.data[v105 + 96]).getReserves().gas(msg.gas);
                        if (!v375) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v376 = !v371;
                            if (bool(v371)) {
                                v376 = v377 = msg.data[v105 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v376) {
                                v378 = fun_fastBalanceOf(address(msg.data[v105 + 32]), address(msg.data[v105 + 96]));
                                v371 = v379 = _SafeSub(v378, MEM[0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 + MEM[0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            if ((10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 * MEM[(msg.data[v105 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 + MEM[0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[160 + v105]) {
                                v380 = address(msg.data[v105 + 96]).token0().gas(msg.gas);
                                require(v380, MEM[64], RETURNDATASIZE());
                                require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, MEM[0], msg.data[160 + v105], (10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 * MEM[(msg.data[v105 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 + MEM[0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5] * 10000)));
                            } else {
                                MEM[MEM[64] + ((msg.data[v105 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 * MEM[(msg.data[v105 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v105 + 128] >> 8)) * v371 + MEM[0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5] * 10000);
                                MEM[MEM[64] + (0x20 ^ (msg.data[v105 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v381 = address(msg.data[v105 + 96]).swap(v18, v18, address(msg.data[v105]), 128, 0).gas(msg.gas);
                                if (!v381) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v107 = v382 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v105 + v104 - v105 >= 128);
                    require(!(msg.data[v105] - address(msg.data[v105])));
                    require(msg.data[v105 + 64] <= uint64.max);
                    require(v105 + msg.data[v105 + 64] + 31 < v105 + v104);
                    require(msg.data[v105 + msg.data[v105 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v383 = new bytes[](msg.data[v105 + msg.data[v105 + 64]]);
                    require(!((v383 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v383 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v383)), Panic(65)); // failed memory allocation (too much memory)
                    require(v105 + msg.data[v105 + 64] + 32 + msg.data[v105 + msg.data[v105 + 64]] <= v105 + v104);
                    CALLDATACOPY(v383.data, v105 + msg.data[v105 + 64] + 32, msg.data[v105 + msg.data[v105 + 64]]);
                    v383[msg.data[v105 + msg.data[v105 + 64]]] = 0;
                    v328 = v384 = msg.data[v105 + 96];
                    v385 = v386 = bytes20(MEM[v383.data]);
                    if (v383.length < 20) {
                        v385 = v387 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v383.length << 3) & MEM[v383.data]);
                    }
                    v388 = (v385 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v388) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE());
                        require(!MEM[0] | (MEM[0] * msg.data[v105 + 32] / MEM[0] == msg.data[v105 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v334 = v389 = MEM[0] * msg.data[v105 + 32] / 10000;
                        v390 = new struct(3);
                        require(!((v390 + 96 > uint64.max) | (v390 + 96 < v390)), Panic(65)); // failed memory allocation (too much memory)
                        v390.word0 = 40;
                        CALLDATACOPY(v390.data, msg.data.length, 64);
                        v391 = v392 = this;
                        require(v389 <= int256.max, Panic(17)); // arithmetic overflow or underflow
                        while (1) {
                            require(MEM[v383] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v393 = MEM[20 + v383];
                            v330 = v394 = MEM[64 + v383];
                            if (0 == !uint8(MEM[21 + v383])) {
                                if (uint8(MEM[21 + v383]) - 1) {
                                    if (uint8(MEM[21 + v383]) - 2) {
                                        require(0 != (uint8(MEM[21 + v383]) == 3), UnknownForkId(uint8(MEM[21 + v383])));
                                        MEM[32] = (address(v393) < address(v394)) * (v394 ^ v393) ^ v393;
                                        MEM[0] = 0;
                                        MEM[12] = (v394 ^ (address(v393) < address(v394)) * (v394 ^ v393)) << 96;
                                        MEM8[11] = 0xff & 0xFF;
                                        MEM[40 + v390] = v393;
                                        MEM[20 + v390] = v391;
                                        v390.word0 = v390.word0.length;
                                        v395 = MEM[64];
                                        MCOPY(196 + v395, v390, 32 + v390.word0.length);
                                        MEM[164 + v395] = 160;
                                        MEM[132 + v395] = address(MEM[44 + v383]);
                                        MEM[100 + v395] = v334;
                                        MEM[68 + v395] = address(v393) < address(v394);
                                        MEM[36 + v395] = address(msg.data[v105]) ^ (this ^ address(msg.data[v105])) * (MEM[v383] > 64);
                                        MEM[16 + v395] = 0x128acb08000000000000000000000000;
                                        require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                                        v396 = ___function_selector__;
                                        require(!v396, ReentrantCallback(v396));
                                        ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x10000000000000000000000000000000000000000;
                                        v397 = address(keccak256(v18, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1be68V0x1a20 + 32:v1be68V0x1a20 + 32 + 196 + v2f0fV0x1a20.word0.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v398 = v399 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v398 = new bytes[](RETURNDATASIZE());
                                            require(!((v398 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v398 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v398)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v398.data, 0, RETURNDATASIZE());
                                        }
                                        require(v397, v400 + 32, MEM[v400]);
                                        v401 = ___function_selector__;
                                        require(!v401, CallbackNotSpent(v401));
                                    } else {
                                        MEM[32] = (address(v393) < address(v394)) * (v394 ^ v393) ^ v393;
                                        MEM[0] = 0;
                                        MEM[12] = (v394 ^ (address(v393) < address(v394)) * (v394 ^ v393)) << 96;
                                        MEM8[11] = 0xff & 0xFF;
                                        MEM[40 + v390] = v393;
                                        MEM[20 + v390] = v391;
                                        v390.word0 = v390.word0.length;
                                        v395 = v402 = MEM[64];
                                        MCOPY(196 + v402, v390, 32 + v390.word0.length);
                                        MEM[164 + v402] = 160;
                                        MEM[132 + v402] = address(MEM[44 + v383]);
                                        MEM[100 + v402] = v334;
                                        MEM[68 + v402] = address(v393) < address(v394);
                                        MEM[36 + v402] = address(msg.data[v105]) ^ (this ^ address(msg.data[v105])) * (MEM[v383] > 64);
                                        MEM[16 + v402] = 0x128acb08000000000000000000000000;
                                        require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                                        v403 = ___function_selector__;
                                        require(!v403, ReentrantCallback(v403));
                                        ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                                        v404 = address(keccak256(v18, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1bdceV0x1a20 + 32:v1bdceV0x1a20 + 32 + 196 + v2f0fV0x1a20.word0.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v398 = v405 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v398 = v406 = new bytes[](RETURNDATASIZE());
                                            require(!((v406 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v406 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v406)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v406.data, 0, RETURNDATASIZE());
                                        }
                                        require(v404, v407 + 32, MEM[v407]);
                                        v408 = ___function_selector__;
                                        require(!v408, CallbackNotSpent(v408));
                                    }
                                } else {
                                    MEM[32] = (address(v393) < address(v394)) * (v394 ^ v393) ^ v393;
                                    MEM[0] = 0;
                                    MEM[12] = (v394 ^ (address(v393) < address(v394)) * (v394 ^ v393)) << 96;
                                    MEM8[11] = 0xff & 0xFF;
                                    MEM[40 + v390] = v393;
                                    MEM[20 + v390] = v391;
                                    v390.word0 = v390.word0.length;
                                    v395 = v409 = MEM[64];
                                    MCOPY(196 + v409, v390, 32 + v390.word0.length);
                                    MEM[164 + v409] = 160;
                                    MEM[132 + v409] = address(MEM[44 + v383]);
                                    MEM[100 + v409] = v334;
                                    MEM[68 + v409] = address(v393) < address(v394);
                                    MEM[36 + v409] = address(msg.data[v105]) ^ (this ^ address(msg.data[v105])) * (MEM[v383] > 64);
                                    MEM[16 + v409] = 0x128acb08000000000000000000000000;
                                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                                    v410 = ___function_selector__;
                                    require(!v410, ReentrantCallback(v410));
                                    ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x10000000000000000000000000000000000000000;
                                    v411 = address(keccak256(v18, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1bd34V0x1a20 + 32:v1bd34V0x1a20 + 32 + 196 + v2f0fV0x1a20.word0.length], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v398 = v412 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v398 = v413 = new bytes[](RETURNDATASIZE());
                                        require(!((v413 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v413 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v413)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v413.data, 0, RETURNDATASIZE());
                                    }
                                    require(v411, v414 + 32, MEM[v414]);
                                    v415 = ___function_selector__;
                                    require(!v415, CallbackNotSpent(v415));
                                }
                            } else {
                                MEM[32] = (address(v393) < address(v394)) * (v394 ^ v393) ^ v393;
                                MEM[0] = 0;
                                MEM[12] = (v394 ^ (address(v393) < address(v394)) * (v394 ^ v393)) << 96;
                                MEM8[11] = 0xff & 0xFF;
                                MEM[40 + v390] = v393;
                                MEM[20 + v390] = v391;
                                v390.word0 = v390.word0.length;
                                v395 = v416 = MEM[64];
                                MCOPY(196 + v416, v390, 32 + v390.word0.length);
                                MEM[164 + v416] = 160;
                                MEM[132 + v416] = address(MEM[44 + v383]);
                                MEM[100 + v416] = v334;
                                MEM[68 + v416] = address(v393) < address(v394);
                                MEM[36 + v416] = address(msg.data[v105]) ^ (this ^ address(msg.data[v105])) * (MEM[v383] > 64);
                                MEM[16 + v416] = 0x128acb08000000000000000000000000;
                                require((_fun_toCanonicalSellAmount ^ address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                                v417 = ___function_selector__;
                                require(!v417, ReentrantCallback(v417));
                                ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x10000000000000000000000000000000000000000;
                                v418 = address(keccak256(v18, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v1e320x1e45V0x1e75V0x2e9eV0x1a20]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1bc9aV0x1a20 + 32:v1bc9aV0x1a20 + 32 + 196 + v2f0fV0x1a20.word0.length], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v398 = v419 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v398 = v420 = new bytes[](RETURNDATASIZE());
                                    require(!((v420 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v420 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v420)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v420.data, 0, RETURNDATASIZE());
                                }
                                require(v418, v421 + 32, MEM[v421]);
                                v422 = ___function_selector__;
                                require(!v422, CallbackNotSpent(v422));
                            }
                            require(v398 + MEM[v398] - v398 >= 64);
                            v334 = v423 = 0 - ((MEM[v398 + 64] ^ MEM[v398 + 32]) * (address(v393) < address(v394)) ^ MEM[v398 + 32]);
                            require(v423 >= 0, Panic(17)); // arithmetic overflow or underflow
                            if (MEM[v383] <= 64) {
                                if (v423 >= v384) {
                                    v107 = v424 = 1;
                                }
                            } else {
                                v391 = v425 = this;
                                require(MEM[v383] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v383 = v383 + 44;
                                MEM[v383] = MEM[v383] - 44;
                                v390.word0 = 40;
                            }
                        }
                    }
                }
                revert(TooMuchSlippage(v330, 0x97a6f3b9000000000000000000000000, v328, v334));
            } else {
                require(v105 + v104 - v105 >= 288);
                require(!(msg.data[v105] - address(msg.data[v105])));
                require(v105 + v104 - (v105 + 32) >= 128);
                v426 = new struct(3);
                require(!((v426 + 96 > uint64.max) | (v426 + 96 < v426)), Panic(65)); // failed memory allocation (too much memory)
                require(v105 + v104 - (v105 + 32) >= 64);
                v427 = new struct(2);
                require(!((v427 + 64 > uint64.max) | (v427 + 64 < v427)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v105 + 32] - address(msg.data[v105 + 32])));
                v427.word0 = msg.data[v105 + 32];
                v427.word1 = msg.data[v105 + 32 + 32];
                v426.word0 = v427;
                v426.word1 = msg.data[v105 + 32 + 64];
                v426.word2 = msg.data[v105 + 32 + 96];
                require(!(msg.data[v105 + 160] - address(msg.data[v105 + 160])));
                require(msg.data[v105 + 192] <= uint64.max);
                require(v105 + msg.data[v105 + 192] + 31 < v105 + v104);
                require(msg.data[v105 + msg.data[v105 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v428 = new bytes[](msg.data[v105 + msg.data[v105 + 192]]);
                require(!((v428 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v428 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v105 + msg.data[v105 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v428)), Panic(65)); // failed memory allocation (too much memory)
                require(v105 + msg.data[v105 + 192] + 32 + msg.data[v105 + msg.data[v105 + 192]] <= v105 + v104);
                CALLDATACOPY(v428.data, v105 + msg.data[v105 + 192] + 32, msg.data[v105 + msg.data[v105 + 192]]);
                v428[msg.data[v105 + msg.data[v105 + 192]]] = 0;
                require(!(msg.data[v105 + 224] - address(msg.data[v105 + 224])));
                v429, v430 = fun_permitToTransferDetails(v426, address(msg.data[v105]));
                v431 = new struct(4);
                require(!((v431 + 128 > uint64.max) | (v431 + 128 < v431)), Panic(65)); // failed memory allocation (too much memory)
                v431.word0 = address(MEM[v426.word0]);
                v431.word1 = v429;
                v431.word2 = address(msg.data[v105 + 160]);
                v431.word3 = 1;
                MEM[v431 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v431 - 32] = MEM[v431 - 32];
                v432 = new struct(4);
                require(!((v432 + 128 > uint64.max) | (v432 + 128 < v432)), Panic(65)); // failed memory allocation (too much memory)
                v432.word0 = address(msg.data[v105 + 224]);
                v432.word1 = msg.data[v105 + (uint8.max + 1)];
                v432.word2 = address(_fun_toCanonicalSellAmount);
                v432.word3 = 1;
                MEM[v432 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v432 - 32] = MEM[v432 - 32];
                v433 = fun_fastBalanceOf(msg.data[v105 + 224], this);
                v434 = fun_unsafeMulDiv(v429, (msg.data[v105 + (uint8.max + 1)] ^ v433) * (v433 > msg.data[v105 + (uint8.max + 1)]) ^ v433, msg.data[v105 + (uint8.max + 1)]);
                v430.word1 = v434;
                fun_safeTransfer(msg.data[v105 + 224], address(msg.data[v105 + 160]), (msg.data[v105 + (uint8.max + 1)] ^ v433) * (v433 > msg.data[v105 + (uint8.max + 1)]) ^ v433);
                require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                v435 = new bytes[](162);
                MEM[v435.data] = 'Consideration consideration)';
                MCOPY(v435 + 60, v436.data, v436.length);
                MEM[v435 + v436.length + 60] = 0;
                MCOPY(v435 + v436.length + 60, v437.data, v437.length);
                MEM[v435 + v436.length + v437.length + 60] = 0;
                require(!((v435 + 224 > uint64.max) | (v435 + 224 < v435)), Panic(65)); // failed memory allocation (too much memory)
                MCOPY(32 + MEM[64], v426.word0, 64);
                MCOPY(96 + MEM[64], 32 + v426, 64);
                MCOPY(160 + MEM[64], v430, 64);
                MCOPY(352 + MEM[64], v435, 194);
                MCOPY(384 + (MEM[64] + v435.length), v428, 32 + v428.length);
                v438 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v18, v18, v18, v18, v18, v18, address(msg.data[v105 + 160]), keccak256(MEM[v2bb8V0x1a20 - 32:v2bb8V0x1a20 - 32 + 160]), 320, 514).gas(msg.gas);
                if (!v438) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v2bb8V0x1a20 - 32:v2bb8V0x1a20 - 32 + 160]), keccak256(MEM[v2b68V0x1a20 - 32:v2b68V0x1a20 - 32 + 160]))(uint128(v434), uint128(v434));
                    v107 = v439 = 1;
                }
            }
            if (!v107) {
                v440 = new uint256[](v104);
                CALLDATACOPY(v440.data, v105, v104);
                revert(ActionInvalid(v100, bytes4(msg.data[varg3 + msg.data[v102] + 68]), v440));
            } else {
                v102 = v102 + 32;
                v100 = v100 + 1;
            }
        }
        require(varg2);
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
            v441 = v442 = fun_fastBalanceOf(varg1, this);
        } else {
            v441 = v443 = this.balance;
        }
        require(v441 >= varg2, TooMuchSlippage(varg1, 0x97a6f3b9000000000000000000000000, varg2, v441));
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
            fun_safeTransfer(varg1, varg0, v441);
        } else {
            fun_safeTransferETH(varg0, v441);
        }
        require(!((_fun_toCanonicalSellAmount ^ varg4) << 96), PayerSpent());
        _fun_toCanonicalSellAmount = 0;
        require(!_fun_transferFrom, WitnessNotSpent(_fun_transferFrom));
        return 1;
    }
}

function 0x4b7758a5(address varg0, address varg1, bool varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = fun_owner();
    require(!((v0 ^ (msg.sender ^ (msg.data[msg.data.length - 20] >> 96 ^ msg.sender) * ((3 < msg.data.length) & !((0xcf9e3c5a26621af382fa17f24f ^ msg.sender) << 96)))) << 96), PermissionDenied());
    _executeMetaTxn[varg0] = (address(_executeMetaTxn[varg1]) ^ varg1) * varg2 ^ address(_executeMetaTxn[varg1]);
    _executeMetaTxn[varg1] = varg2;
    require(!((_executeMetaTxn[varg0] ^ (varg1 ^ (0x1 ^ varg1) * varg2)) << 96 | (!address(_executeMetaTxn[varg1]) ^ varg2 | !varg1)), varg0, varg1);
}

function fun_owner() private { 
    v0 = 0x4533fe15556b1e086bb1a72ceae.authorized(4).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(RETURNDATASIZE() >= 64);
    require(!((block.timestamp > MEM[32]) | (MEM[0] >> 160 | MEM[32] >> 40)));
    return MEM[0];
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
    v1 = fun_toCanonicalSellAmount(address(MEM[varg0.word0.length]), MEM[varg0.word0.length + 32]);
    v0.word1 = v1;
    return v1, v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function fun_transferFrom(struct(3) varg0, struct(2) varg1, bytes varg2, uint256 varg3) private { 
    v0 = _fun_transferFrom;
    _fun_transferFrom = 0;
    require(v0, ConfusedDeputy());
    v1 = new bytes[](129);
    require(!((v1 + 192 > uint64.max) | (v1 + 192 < v1)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v1.data] = 'Slippage slippage)Slippage(addre';
    MEM[v1 + 64] = 'ss recipient,address buyToken,ui';
    MEM[v1 + 96] = 'nt256 minAmountOut)TokenPermissi';
    MEM[v1 + 128] = 'ons(address token,uint256 amount';
    MEM[v1 + 160] = 0x2900000000000000000000000000000000000000000000000000000000000000;
    require(!varg3, ForwarderNotAllowed());
    MCOPY(32 + MEM[64], varg0.word0, 64);
    MCOPY(96 + MEM[64], 32 + varg0, 64);
    MCOPY(160 + MEM[64], varg1, 64);
    MCOPY(352 + MEM[64], v1, 161);
    MCOPY(384 + (MEM[64] + v1.length), varg2, 32 + varg2.length);
    v2, /* uint256 */ v3 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v4, v4, v4, v4, v4, v4, address(_fun_toCanonicalSellAmount), v0, 320, 481).gas(msg.gas);
    if (!v2) {
        v5 = RETURNDATASIZE();
        revert(v4, v4, v4, v4, v4, v4, v4, v4, v4, 481);
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

function fun_unsafeMulDiv_41559(uint256 varg0, uint256 varg1) private { 
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

function fun_ekuboPay(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (0 == (address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v1 = 68;
        if (this - varg1) {
            CALLDATACOPY(100 + MEM[64], 64 + varg3, 64);
            CALLDATACOPY(228 + MEM[64], varg5, varg6);
            v0 = v2 = varg6 + 196;
        }
        require((_fun_toCanonicalSellAmount ^ msg.sender) << 96, ConfusedDeputy());
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

function fun_callSelector_101064(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, varg0);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg0 << 96) * (varg0 << 96), varg1, varg2).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_callSelector_101068(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function fun_toCanonicalSellAmount(uint256 varg0, uint256 varg1) private { 
    if (~varg1 < 10000) {
        if (EXTCODEHASH(_fun_toCanonicalSellAmount) == 0xe98f46388916ca2f096ea767dc04dddb45d2ca2c2f44e7bcc529d6aded9c11f0) {
            v0 = fun_fastBalanceOf(varg0, _fun_toCanonicalSellAmount);
            varg1 = v1 = fun_unsafeMulDiv_41559(v0, 10000 - ~varg1);
        }
    }
    return varg1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, address varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21, uint256 varg22, uint256 varg23, uint256 varg24) public payable { 
    if (msg.data.length >= 4) {
        if (0x4b7758a5 == function_selector >> 224) {
            0x4b7758a5();
        } else if (0x67c4a3b0 == function_selector >> 224) {
            0x67c4a3b0();
        } else if (0x8bc1e8eb == function_selector >> 224) {
            0x8bc1e8eb();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (!(0xfd3ad6d4 - (function_selector >> 224))) {
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
        require(4 <= msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender));
        if (2 == uint16(v0 >> 160)) {
            v1 = v2 = 0;
            v3 = new struct(39);
            v3.word6 = 0;
            MEM[v10e1 + 480:v10e1 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                require(!(msg.data[v4] - address(msg.data[v4])));
                v23 = fun_toCanonicalSellAmount(address(msg.data[v4]), msg.data[v4 + 32]);
                MEM[v3.word2] = v23;
            }
            if (0x1000000000000000000000000000000 & varg13) {
                v24 = fun_ekuboPay(MEM[32 + v3.word2], varg16 >> 96, MEM[v3.word2], v4, v1, v6, v8);
                MEM[v3.word2] = v24;
            }
            require(!(MEM[v3.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
            v3.word3 = MEM[v3.word2];
            fun_checkZeroSellAmount(v3);
            v25 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v16 >= 47) {
                v26 = v27 = msg.data[v14 + 14];
                v28 = v29 = 1;
                if (v27 >> 248) {
                    if (!MEM[64 + v3.word0]) {
                        v3.word6 += v29;
                        MEM[(v29 + v3.word6 << 5) + (192 + v3)] = v3.word0;
                        MEM[64 + v3.word0] = (v29 + v3.word6 << 5) + (192 + v3);
                    }
                    if (v27 >> 248 > v29) {
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
                        if ((v27 >> 248) - 2) {
                            require(3 == v27 >> 248, Panic(1)); // low-level assert failed
                            v26 = msg.data[20 + (v14 + 14)];
                            v28 = 21;
                            require(!((MEM[address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | MEM[address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320]) * (MEM[address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] ^ address(v27 >> 88))), MEM[address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320], address(v27 >> 88));
                            require(address(v27 >> 88), ZeroToken());
                            MEM[address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v27 >> 88);
                            v3.word1 = address(v27 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                        } else {
                            v3.word1 = v3.word0;
                        }
                    }
                    v28 = v30 = v28 + 20;
                    v31 = MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320];
                    require(!((MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 352] | v31) * (v31 ^ address(v26 >> 88))), v31, address(v26 >> 88));
                    require(address(v26 >> 88), ZeroToken());
                    MEM[address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 320] = address(v26 >> 88);
                    v3.word0 = address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288;
                    if (address(v26 >> 88) * v3.word4 % v3.word5 % 768 + (192 + v3) + 288 == v3.word2) {
                        MEM[v3.word2] = 0x784cb7b8;
                        revert(28 + v3.word2, 36);
                    }
                }
                v32 = (address(MEM[32 + v3.word1]) ^ address(MEM[32 + v3.word0])) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96));
                v25.word1 = address(address(MEM[32 + v3.word0]) ^ v32);
                v25.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v3.word1]) ^ v32)) * address(address(MEM[32 + v3.word1]) ^ v32);
                v14 = 32 + (v28 + (v14 + 14));
                v16 = v16 - 14 - v28 - 32;
                v25.word2 = msg.data[v28 + (v14 + 14)];
                require(v16 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0 == !(msg.data[v14] >> 240 & 0x8000)) {
                    MCOPY(v3 + 1248 + 32, 64 + v25, 20);
                    MCOPY(52 + (v3 + 1248), v25, 96);
                    v33 = msg.sender.forward(v34, v34, v34, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96), msg.data[2 + v14] >> 160, 0).gas(msg.gas);
                    if (!v33) {
                        RETURNDATACOPY(v3 + 1248, 0, RETURNDATASIZE());
                        revert(v3 + 1248, RETURNDATASIZE());
                    } else {
                        require(!((64 > RETURNDATASIZE()) | int128(MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000) ^ MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000 | (int128(MEM[0]) ^ MEM[0] | int128(MEM[32]) ^ MEM[32])));
                        v35 = v36, v37 = v38, v39 = v40, v41 = v42, v43 = v44, v45 = v46, v47 = v48 = 0x1516(MEM[32 + v3.word1] << 96, MEM[32 + v3.word0] << 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, MEM[0], 5430, int16.max, MEM[v3.word1], 10000, MEM[32], msg.data[v14] >> 240);
                    }
                } else {
                    MCOPY(v3 + 1248 + 32, v25, 96);
                    v49 = msg.sender.call(0, v34, v34, v34, MEM[v3.word1] * (msg.data[v14] >> 240 & 0x7fff) / 10000, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v3.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word1] << 96) & (MEM[32 + v3.word0] << 96 < MEM[32 + v3.word1] << 96), msg.data[2 + v14] >> 160, 0).gas(msg.gas);
                    if (!v49) {
                        RETURNDATACOPY(v3 + 1248, 0, RETURNDATASIZE());
                        revert(v3 + 1248, RETURNDATASIZE());
                    } else {
                        v35 = v50, v37 = v51, v39 = v52, v41 = v53, v43 = v54, v45 = v55, v47 = v56 = 0x1516(MEM[32 + v3.word1] << 96, MEM[32 + v3.word0] << 96, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000, MEM[0], 5430, int16.max, MEM[v3.word1], 10000, MEM[32], msg.data[v14] >> 240);
                    }
                }
                MEM[v43] = MEM[v43] - v35;
                require(!(((v45 & v37) * v39 / v41 < v35) | (v35 > MEM[v43])), Panic(17)); // arithmetic overflow or underflow
                if (v47 > 0) {
                    MEM[v3.word0] = 0x3351b260;
                    revert(28 + v3.word0, 36);
                } else {
                    MEM[v3.word0] += 0 - v47;
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
                    fun_callSelector_101064(address(MEM[v3.word7 + 32]), this, MEM[v3.word7]);
                }
                v57 = v58 = 1;
                while (v57 < v3.word6) {
                    fun_callSelector_101064(MEM[32 + MEM[(v57 << 5) + v3 + 224]], this, MEM[MEM[(v57 << 5) + v3 + 224]]);
                    v57 = v57 + 1;
                }
            }
            v59 = v60 = MEM[32 + v3.word0];
            v61 = v62 = MEM[v3.word0];
            if (v62 >= varg10 >> 128) {
                fun_callSelector_101064(v60, varg9 >> 96, v62);
                if (!(0x1000000000000000000000000000000 & varg13)) {
                    require(v3.word3 != MEM[v3.word2], MEM[32 + v3.word2], 0xfb772a88000000000000000000000000);
                    v63 = fun_ekuboPay(MEM[32 + v3.word2], varg16 >> 96, v3.word3 - MEM[v3.word2], v4, v1, v6, v8);
                } else if (bool(MEM[v3.word2])) {
                    if (this - (varg16 >> 96)) {
                        v64 = v65 = _fun_toCanonicalSellAmount;
                    } else {
                        v64 = v66 = this;
                    }
                    require(MEM[v3.word2], MEM[32 + v3.word2]);
                    v67, /* uint256 */ v68 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v3.word2] << 96) * (MEM[32 + v3.word2] << 96), v64, MEM[v3.word2]).gas(msg.gas);
                    require(v67, v3 + 1248, RETURNDATASIZE());
                    MEM[96] = 0;
                } else {
                    v69 = v70 = new bytes[](96);
                    MEM[v70.data] = 32;
                    MEM[64 + v70] = 32;
                    MEM[96 + v70] = v62;
                }
            }
        } else if (6 == uint16(v0 >> 160)) {
            v71 = v72 = 0;
            v73 = new struct(39);
            v73.word6 = 0;
            MEM[va80 + 480:va80 + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 352] | MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 320]) * (MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 320] ^ address(varg8 >> 96))), MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 320], address(varg8 >> 96));
            require(address(varg8 >> 96), ZeroToken());
            MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 320] = address(varg8 >> 96);
            v73.word0 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 288;
            v73.word1 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 288;
            v73.word2 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 288;
            v73.word4 = uint128(varg2);
            v73.word5 = varg4 >> 128;
            v74 = v75 = msg.data.length;
            v76 = v77 = msg.data.length;
            v78 = v79 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v73) + 288)])) {
                if (this - (varg6 >> 96)) {
                    require(!bool(varg6 >> 96), Panic(1)); // low-level assert failed
                    v78 = v80 = msg.data[msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 3] >> 232;
                    v76 = v81 = msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - v80 - 3;
                    v71 = v82 = varg17 & 0x1;
                    v74 = v83 = 77;
                    v84 = v85 = 206;
                    require(v85 <= v81);
                    v86 = v87 = msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - v80 - 209;
                } else {
                    v84 = v88 = 111;
                    v86 = v89 = msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender) - 89 - 22;
                    v90 = fun_fastBalanceOf(MEM[32 + v73.word2], this);
                    MEM[v73.word2] = uint16(varg8 >> 80) * v90 / 10000;
                }
            } else {
                require(varg6 >> 96 == this, Panic(1)); // low-level assert failed
                MEM[v73.word2] = this.balance * uint16(varg8 >> 80) / 10000;
                v86 = v91 = msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender) - 89 - 22;
                v84 = v92 = 111;
            }
            require(v86 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if ((varg6 >> 96) - this) {
                require(!(msg.data[v74] - address(msg.data[v74])));
                v93 = fun_toCanonicalSellAmount(address(msg.data[v74]), msg.data[v74 + 32]);
                MEM[v73.word2] = v93;
            }
            if (0x1000000000000000000000000000000 & varg4) {
                if (this - address(varg6 >> 96)) {
                    v94 = new struct(2);
                    require(!((v94 + 64 > uint64.max) | (v94 + 64 < v94)), Panic(65)); // failed memory allocation (too much memory)
                    v94.word0 = msg.sender;
                    v94.word1 = MEM[v73.word2];
                    require(msg.data.length - v74 >= 128);
                    v95 = new struct(3);
                    require(!((v95 + 96 > uint64.max) | (v95 + 96 < v95)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v74 >= 64);
                    v96 = new struct(2);
                    require(!((v96 + 64 > uint64.max) | (v96 + 64 < v96)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v74] - address(msg.data[v74])));
                    v96.word0 = msg.data[v74];
                    v96.word1 = msg.data[v74 + 32];
                    v95.word0 = v96;
                    v95.word1 = msg.data[v74 + 64];
                    v95.word2 = msg.data[v74 + 96];
                    require(v78 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v97 = new bytes[](v78);
                    require(!((v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v97 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v97)), Panic(65)); // failed memory allocation (too much memory)
                    require(v76 + v78 <= msg.data.length);
                    CALLDATACOPY(v97.data, v76, v78);
                    v97[v78] = 0;
                    fun_transferFrom(v95, v94, v97, v71);
                } else if (MEM[v73.word2]) {
                    fun_safeTransfer(MEM[32 + v73.word2], msg.sender, MEM[v73.word2]);
                }
                v98 = msg.sender.settle(MEM[32 + v73.word2], 0x15afd409000000000000000000000000, MEM[v73.word2]).gas(msg.gas);
                if (!v98) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    MEM[52] = 0;
                    MEM[v73.word2] = MEM[0];
                }
            }
            v73.word3 = MEM[v73.word2];
            fun_checkZeroSellAmount(v73);
            v99 = v100 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v101 = new struct(7);
            require(!((v101 + 224 > uint64.max) | (v101 + 224 < v101)), Panic(65)); // failed memory allocation (too much memory)
            v101.word0 = 0;
            v101.word1 = 0;
            v101.word2 = 0;
            v101.word3 = 0;
            v101.word4 = 0;
            v101.word5 = 0;
            v101.word6 = 96;
            while (v86 >= 3) {
                v102 = v103 = msg.data[2 + v84];
                v104 = v105 = 1;
                if (v103 >> 248) {
                    if (!MEM[64 + v73.word0]) {
                        v73.word6 += v105;
                        MEM[(v105 + v73.word6 << 5) + (192 + v73)] = v73.word0;
                        MEM[64 + v73.word0] = (v105 + v73.word6 << 5) + (192 + v73);
                    }
                    if (v103 >> 248 > v105) {
                        if (!MEM[v73.word1]) {
                            if (MEM[64 + v73.word1]) {
                                MEM[64 + v73.word1] = 0;
                                v73.word6 = v73.word6 - 1;
                                if ((v73.word6 << 5) + (192 + v73) - MEM[64 + v73.word1]) {
                                    MEM[MEM[64 + v73.word1]] = MEM[(v73.word6 << 5) + (192 + v73)];
                                    MEM[64 + MEM[(v73.word6 << 5) + (192 + v73)]] = MEM[64 + v73.word1];
                                }
                            }
                        }
                        if ((v103 >> 248) - 2) {
                            require(3 == v103 >> 248, Panic(1)); // low-level assert failed
                            v102 = msg.data[22 + v84];
                            v104 = 21;
                            require(!((MEM[address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 352] | MEM[address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320]) * (MEM[address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320] ^ address(v103 >> 88))), MEM[address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320], address(v103 >> 88));
                            require(address(v103 >> 88), ZeroToken());
                            MEM[address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320] = address(v103 >> 88);
                            v73.word1 = address(v103 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 288;
                        } else {
                            v73.word1 = v73.word0;
                        }
                    }
                    v104 = v106 = v104 + 20;
                    v107 = MEM[address(v102 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320];
                    require(!((MEM[address(v102 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 352] | v107) * (v107 ^ address(v102 >> 88))), v107, address(v102 >> 88));
                    require(address(v102 >> 88), ZeroToken());
                    MEM[address(v102 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 320] = address(v102 >> 88);
                    v73.word0 = address(v102 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 288;
                    if (address(v102 >> 88) * v73.word4 % v73.word5 % 768 + (192 + v73) + 288 == v73.word2) {
                        MEM[v73.word2] = 0x784cb7b8;
                        revert(28 + v73.word2, 36);
                    }
                }
                v84 = v104 + (2 + v84);
                v86 = v86 - 2 - v104;
                if (msg.data[v84] >> 240 & 0xc000) {
                    require(uint24.max >= v86, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(msg.data[v84] >> 240 & 0x4000)) {
                        MEM[v99 + 32] = 1;
                        MEM[v99 + 64] = address(MEM[32 + v73.word1]);
                    } else {
                        MEM[v99 + 32] = 0;
                        MEM[v99 + 64] = address(MEM[32 + v73.word0]);
                    }
                    MEM[v99 + 96] = MEM[v73.word1] * (msg.data[v84] >> 240 & 0x3fff) / 10000;
                    MEM[v99 - 32] = 0x43583be5;
                    v108 = msg.sender.call(MEM[vfb9_0x4 - 4:vfb9_0x4 - 4 + 164], MEM[0:96]).gas(msg.gas);
                    if (!v108) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v99 - 32] = MEM[v99 - 32];
                        MEM[v73.word1] = MEM[v73.word1] - MEM[32];
                        require(MEM[v73.word0] <= MEM[v73.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v73.word0] = MEM[v73.word0] + MEM[64];
                    }
                } else {
                    v101.word1 = msg.data[v84] >> 96;
                    v101.word2 = address(MEM[32 + v73.word1]);
                    v101.word3 = address(MEM[32 + v73.word0]);
                    v101.word4 = MEM[v73.word1] * (msg.data[v84] >> 240) / 10000;
                    v84 = 20 + v84 + (msg.data[20 + v84] >> 232) + 3;
                    v86 = v86 - 20 - (msg.data[20 + v84] >> 232) - 3;
                    require(msg.data[20 + v84] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v109 = new bytes[](msg.data[20 + v84] >> 232);
                    require(!((v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v84] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v84] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v109)), Panic(65)); // failed memory allocation (too much memory)
                    require(23 + v84 + (msg.data[20 + v84] >> 232) <= msg.data.length);
                    CALLDATACOPY(v109.data, 23 + v84, msg.data[20 + v84] >> 232);
                    v109[msg.data[20 + v84] >> 232] = 0;
                    v101.word6 = v109;
                    require(v86 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[v101 - 64] = 0x2bfb780c;
                    MEM[v101 - 32] = 32;
                    v110 = v101.word6;
                    v101.word6 = v101.word6 - v101;
                    v111 = msg.sender.call(MEM[vb8a - 36:vb8a - 36 + vebd.length + vb8a.word6 - vb8a + 68], MEM[0:96]).gas(msg.gas);
                    if (!v111) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        MEM[v101 - 64] = MEM[v101 - 64];
                        MEM[v101 - 32] = MEM[v101 - 32];
                        MEM[v73.word1] = MEM[v73.word1] - MEM[32];
                        require(MEM[v73.word0] <= MEM[v73.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                        MEM[v73.word0] = MEM[v73.word0] + MEM[64];
                        v101.word6 = 96;
                    }
                }
            }
            if (MEM[64 + v73.word0]) {
                MEM[64 + v73.word0] = 0;
                v73.word6 = v73.word6 - 1;
                if ((v73.word6 << 5) + (192 + v73) - MEM[64 + v73.word0]) {
                    MEM[MEM[64 + v73.word0]] = MEM[(v73.word6 << 5) + (192 + v73)];
                    MEM[64 + MEM[(v73.word6 << 5) + (192 + v73)]] = MEM[64 + v73.word0];
                }
            }
            if (!MEM[v73.word1]) {
                if (MEM[64 + v73.word1]) {
                    MEM[64 + v73.word1] = 0;
                    v73.word6 = v73.word6 - 1;
                    if ((v73.word6 << 5) + (192 + v73) - MEM[64 + v73.word1]) {
                        MEM[MEM[64 + v73.word1]] = MEM[(v73.word6 << 5) + (192 + v73)];
                        MEM[64 + MEM[(v73.word6 << 5) + (192 + v73)]] = MEM[64 + v73.word1];
                    }
                }
            }
            if (bool(v73.word6)) {
                require(v73.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v73.word7 - v73.word2) {
                    fun_callSelector_101068(address(MEM[v73.word7 + 32]), this, MEM[v73.word7]);
                }
                v112 = v113 = 1;
                while (v112 < v73.word6) {
                    fun_callSelector_101068(MEM[32 + MEM[(v112 << 5) + v73 + 224]], this, MEM[MEM[(v112 << 5) + v73 + 224]]);
                    v112 = v112 + 1;
                }
            }
            v59 = v114 = MEM[32 + v73.word0];
            v61 = v115 = MEM[v73.word0];
            if (v115 >= varg2 >> 128) {
                fun_callSelector_101068(v114, function_selector >> 96, v115);
                if (!(0x1000000000000000000000000000000 & varg4)) {
                    require(v73.word3 != MEM[v73.word2], MEM[32 + v73.word2], 0xfb772a88000000000000000000000000);
                    if (this - address(varg6 >> 96)) {
                        v116 = new struct(2);
                        require(!((v116 + 64 > uint64.max) | (v116 + 64 < v116)), Panic(65)); // failed memory allocation (too much memory)
                        v116.word0 = msg.sender;
                        v116.word1 = v73.word3 - MEM[v73.word2];
                        require(msg.data.length - v74 >= 128);
                        v117 = new struct(3);
                        require(!((v117 + 96 > uint64.max) | (v117 + 96 < v117)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v74 >= 64);
                        v118 = new struct(2);
                        require(!((v118 + 64 > uint64.max) | (v118 + 64 < v118)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v74] - address(msg.data[v74])));
                        v118.word0 = msg.data[v74];
                        v118.word1 = msg.data[v74 + 32];
                        v117.word0 = v118;
                        v117.word1 = msg.data[v74 + 64];
                        v117.word2 = msg.data[v74 + 96];
                        require(v78 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v119 = new bytes[](v78);
                        require(!((v119 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v119 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v119)), Panic(65)); // failed memory allocation (too much memory)
                        require(v76 + v78 <= msg.data.length);
                        CALLDATACOPY(v119.data, v76, v78);
                        v119[v78] = 0;
                        fun_transferFrom(v117, v116, v119, v71);
                    } else if (v73.word3 - MEM[v73.word2]) {
                        fun_safeTransfer(MEM[32 + v73.word2], msg.sender, v73.word3 - MEM[v73.word2]);
                    }
                    v120 = msg.sender.settle(MEM[32 + v73.word2], 0x15afd409000000000000000000000000, v73.word3 - MEM[v73.word2]).gas(msg.gas);
                    if (!v120) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                    }
                } else if (bool(MEM[v73.word2])) {
                    require(MEM[v73.word2], MEM[32 + v73.word2]);
                    v121, /* uint256 */ v122 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v73.word2] << 96) * (MEM[32 + v73.word2] << 96), (this ^ _fun_toCanonicalSellAmount) * (varg6 >> 96 == this) ^ _fun_toCanonicalSellAmount, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v73.word2] << 96) * (MEM[32 + v73.word2] << 96), MEM[v73.word2]).gas(msg.gas);
                    require(v121, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
                v69 = v123 = new bytes[](32);
                MEM[v123.data] = v115;
            }
        } else if (5 == uint16(v0 >> 160)) {
            v124 = v125 = 0;
            v126 = new struct(39);
            v126.word6 = 0;
            MEM[v3dd + 480:v3dd + 480 + 768] = this.code[this.code.size:this.code.size + 768];
            require(!((MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 352] | MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 320]) * (MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 320] ^ address(varg14 >> 96))), MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 320], address(varg14 >> 96));
            require(address(varg14 >> 96), ZeroToken());
            MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 320] = address(varg14 >> 96);
            v126.word0 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 288;
            v126.word1 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 288;
            v126.word2 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 288;
            v126.word4 = uint128(varg7);
            v126.word5 = varg10 >> 128;
            v127 = v128 = msg.data.length;
            v129 = v130 = msg.data.length;
            v131 = v132 = 0;
            if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v126) + 288)])) {
                if (this - (varg12 >> 96)) {
                    require(!bool(varg12 >> 96), Panic(1)); // low-level assert failed
                    v127 = v133 = 145;
                    v124 = v134 = 0x1 & varg21;
                    v131 = v135 = msg.data[varg3 + 65] >> 232;
                    v129 = v136 = varg3 - v135 + 65;
                    v137 = v138 = 274;
                    require(v138 <= v136);
                    v139 = v140 = varg3 - v135 - 209;
                } else {
                    v137 = v141 = 179;
                    v139 = v142 = varg3 - 89 - 22;
                    v143 = fun_fastBalanceOf(MEM[32 + v126.word2], this);
                    MEM[v126.word2] = uint16(varg14 >> 80) * v143 / 10000;
                }
            } else {
                require(varg12 >> 96 == this, Panic(1)); // low-level assert failed
                MEM[v126.word2] = this.balance * uint16(varg14 >> 80) / 10000;
                v139 = v144 = varg3 - 89 - 22;
                v137 = v145 = 179;
            }
            require(v139 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if ((varg12 >> 96) - this) {
                require(!(msg.data[v127] - address(msg.data[v127])));
                v146 = fun_toCanonicalSellAmount(address(msg.data[v127]), msg.data[v127 + 32]);
                MEM[v126.word2] = v146;
            }
            if (0x1000000000000000000000000000000 & varg10) {
                v147, /* uint256 */ v148 = msg.sender.sync(MEM[32 + v126.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                require(v147, v148, RETURNDATASIZE());
                if (this - address(varg12 >> 96)) {
                    v149 = new struct(2);
                    require(!((v149 + 64 > uint64.max) | (v149 + 64 < v149)), Panic(65)); // failed memory allocation (too much memory)
                    v149.word0 = msg.sender;
                    v149.word1 = MEM[v126.word2];
                    require(msg.data.length - v127 >= 128);
                    v150 = new struct(3);
                    require(!((v150 + 96 > uint64.max) | (v150 + 96 < v150)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v127 >= 64);
                    v151 = new struct(2);
                    require(!((v151 + 64 > uint64.max) | (v151 + 64 < v151)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v127] - address(msg.data[v127])));
                    v151.word0 = msg.data[v127];
                    v151.word1 = msg.data[v127 + 32];
                    v150.word0 = v151;
                    v150.word1 = msg.data[v127 + 64];
                    v150.word2 = msg.data[v127 + 96];
                    require(v131 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v152 = new bytes[](v131);
                    require(!((v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v131) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v131) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v152)), Panic(65)); // failed memory allocation (too much memory)
                    require(v129 + v131 <= msg.data.length);
                    CALLDATACOPY(v152.data, v129, v131);
                    v152[v131] = 0;
                    fun_transferFrom(v150, v149, v152, v124);
                } else {
                    fun_safeTransfer(MEM[32 + v126.word2], msg.sender, MEM[v126.word2]);
                }
                v153 = msg.sender.settle().gas(msg.gas);
                require(v153, MEM[64], RETURNDATASIZE());
                MEM[v126.word2] = MEM[0];
            }
            v126.word3 = MEM[v126.word2];
            fun_checkZeroSellAmount(v126);
            v154 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
            v155 = allocate_and_zero_memory_struct_struct_PoolKey();
            while (v139 >= 52) {
                v155.word2 = msg.data[2 + v137] >> 96;
                v156 = v157 = msg.data[v137 + 22];
                v158 = v159 = 1;
                if (v157 >> 248) {
                    if (!MEM[64 + v126.word0]) {
                        v126.word6 += v159;
                        MEM[(v159 + v126.word6 << 5) + (192 + v126)] = v126.word0;
                        MEM[64 + v126.word0] = (v159 + v126.word6 << 5) + (192 + v126);
                    }
                    if (v157 >> 248 > v159) {
                        if (!MEM[v126.word1]) {
                            if (MEM[64 + v126.word1]) {
                                MEM[64 + v126.word1] = 0;
                                v126.word6 = v126.word6 - 1;
                                if ((v126.word6 << 5) + (192 + v126) - MEM[64 + v126.word1]) {
                                    MEM[MEM[64 + v126.word1]] = MEM[(v126.word6 << 5) + (192 + v126)];
                                    MEM[64 + MEM[(v126.word6 << 5) + (192 + v126)]] = MEM[64 + v126.word1];
                                }
                            }
                        }
                        if ((v157 >> 248) - 2) {
                            require(3 == v157 >> 248, Panic(1)); // low-level assert failed
                            v156 = msg.data[20 + (v137 + 22)];
                            v158 = 21;
                            require(!((MEM[address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 352] | MEM[address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320]) * (MEM[address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320] ^ address(v157 >> 88))), MEM[address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320], address(v157 >> 88));
                            require(address(v157 >> 88), ZeroToken());
                            MEM[address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320] = address(v157 >> 88);
                            v126.word1 = address(v157 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 288;
                        } else {
                            v126.word1 = v126.word0;
                        }
                    }
                    v158 = v160 = v158 + 20;
                    v161 = MEM[address(v156 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320];
                    require(!((MEM[address(v156 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 352] | v161) * (v161 ^ address(v156 >> 88))), v161, address(v156 >> 88));
                    require(address(v156 >> 88), ZeroToken());
                    MEM[address(v156 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 320] = address(v156 >> 88);
                    v126.word0 = address(v156 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 288;
                    if (address(v156 >> 88) * v126.word4 % v126.word5 % 768 + (192 + v126) + 288 == v126.word2) {
                        MEM[v126.word2] = 0x784cb7b8;
                        revert(28 + v126.word2, 36);
                    }
                }
                v162 = (MEM[32 + v126.word0] ^ MEM[32 + v126.word1]) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v126.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v126.word0] << 96) & (MEM[32 + v126.word1] << 96 < MEM[32 + v126.word0] << 96));
                v154.word1 = address(MEM[32 + v126.word1] ^ v162);
                v154.word0 = address(MEM[32 + v126.word0] ^ v162);
                v154.word2 = msg.data[v158 + (v137 + 22)] >> 232;
                v154.word3 = int24(uint24(msg.data[v158 + (v137 + 22)] >> 208));
                v154.word4 = address(msg.data[v158 + (v137 + 22)] >> 48);
                v137 = 26 + (v158 + (v137 + 22)) + (msg.data[26 + (v158 + (v137 + 22))] >> 232) + 3;
                v139 = v139 - 22 - v158 - 26 - (msg.data[26 + (v158 + (v137 + 22))] >> 232) - 3;
                require(v139 <= uint24.max, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v155.word0 = bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v126.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v126.word0] << 96) & (MEM[32 + v126.word1] << 96 < MEM[32 + v126.word0] << 96));
                v155.word1 = 0 - MEM[v126.word1] * (msg.data[v137] >> 240) / 10000;
                MCOPY(64 + MEM[64], 32 + v154, 128);
                MCOPY(192 + MEM[64], v155, 96);
                v163 = new uint256[](msg.data[26 + (v158 + (v137 + 22))] >> 232);
                CALLDATACOPY(v163.data, 29 + (v158 + (v137 + 22)), msg.data[26 + (v158 + (v137 + 22))] >> 232);
                v164 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v154.word0) * v154.word0, v34, v34, v34, v34, v34, v34, v34, v163).gas(msg.gas);
                if (!v164) {
                    v165 = RETURNDATASIZE();
                    revert(v34, v34, v34, v34, v34, v34, v34, v34, v34, msg.data[26 + (v158 + (v137 + 22))] >> 232);
                } else {
                    v166 = (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * ((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v126.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v126.word0] << 96) & (MEM[32 + v126.word1] << 96 < MEM[32 + v126.word0] << 96));
                    v167 = _SafeSub(MEM[v126.word1], 0 - (int128(MEM[0]) ^ v166));
                    MEM[v126.word1] = v167;
                    if (int128(MEM[0] >> 128) ^ v166 < 0) {
                        MEM[v126.word0] = 0x4c085bf1;
                        revert(28 + v126.word0, 36);
                    } else {
                        MEM[v126.word0] += int128(MEM[0] >> 128) ^ v166;
                    }
                }
            }
            if (MEM[64 + v126.word0]) {
                MEM[64 + v126.word0] = 0;
                v126.word6 = v126.word6 - 1;
                if ((v126.word6 << 5) + (192 + v126) - MEM[64 + v126.word0]) {
                    MEM[MEM[64 + v126.word0]] = MEM[(v126.word6 << 5) + (192 + v126)];
                    MEM[64 + MEM[(v126.word6 << 5) + (192 + v126)]] = MEM[64 + v126.word0];
                }
            }
            if (!MEM[v126.word1]) {
                if (MEM[64 + v126.word1]) {
                    MEM[64 + v126.word1] = 0;
                    v126.word6 = v126.word6 - 1;
                    if ((v126.word6 << 5) + (192 + v126) - MEM[64 + v126.word1]) {
                        MEM[MEM[64 + v126.word1]] = MEM[(v126.word6 << 5) + (192 + v126)];
                        MEM[64 + MEM[(v126.word6 << 5) + (192 + v126)]] = MEM[64 + v126.word1];
                    }
                }
            }
            if (bool(v126.word6)) {
                require(v126.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (v126.word7 - v126.word2) {
                    fun_callSelector(address(MEM[v126.word7 + 32]), this, MEM[v126.word7]);
                }
                v168 = v169 = 1;
                while (v168 < v126.word6) {
                    fun_callSelector(MEM[32 + MEM[(v168 << 5) + v126 + 224]], this, MEM[MEM[(v168 << 5) + v126 + 224]]);
                    v168 = v168 + 1;
                }
            }
            v59 = v170 = MEM[32 + v126.word0];
            v61 = v171 = MEM[v126.word0];
            if (v171 >= varg7 >> 128) {
                fun_callSelector(v170, varg5 >> 96, v171);
                if (!(0x1000000000000000000000000000000 & varg10)) {
                    require(v126.word3 != MEM[v126.word2], MEM[32 + v126.word2], 0xfb772a88000000000000000000000000);
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v126.word2])) {
                        v172, /* uint256 */ v173 = msg.sender.sync(MEM[32 + v126.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v172, v173, RETURNDATASIZE());
                        if (this - address(varg12 >> 96)) {
                            v174 = new struct(2);
                            require(!((v174 + 64 > uint64.max) | (v174 + 64 < v174)), Panic(65)); // failed memory allocation (too much memory)
                            v174.word0 = msg.sender;
                            v174.word1 = v126.word3 - MEM[v126.word2];
                            require(msg.data.length - v127 >= 128);
                            v175 = new struct(3);
                            require(!((v175 + 96 > uint64.max) | (v175 + 96 < v175)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v127 >= 64);
                            v176 = new struct(2);
                            require(!((v176 + 64 > uint64.max) | (v176 + 64 < v176)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v127] - address(msg.data[v127])));
                            v176.word0 = msg.data[v127];
                            v176.word1 = msg.data[v127 + 32];
                            v175.word0 = v176;
                            v175.word1 = msg.data[v127 + 64];
                            v175.word2 = msg.data[v127 + 96];
                            require(v131 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v177 = new bytes[](v131);
                            require(!((v177 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v131) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v177 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v131) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v177)), Panic(65)); // failed memory allocation (too much memory)
                            require(v129 + v131 <= msg.data.length);
                            CALLDATACOPY(v177.data, v129, v131);
                            v177[v131] = 0;
                            fun_transferFrom(v175, v174, v177, v124);
                        } else {
                            fun_safeTransfer(MEM[32 + v126.word2], msg.sender, v126.word3 - MEM[v126.word2]);
                        }
                        v178 = msg.sender.settle().gas(msg.gas);
                        require(v178, MEM[64], RETURNDATASIZE());
                    } else {
                        v179, /* uint256 */ v180 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v179, v180, RETURNDATASIZE());
                        v181 = msg.sender.settle().value(v126.word3 - MEM[v126.word2]).gas(msg.gas);
                        require(v181, MEM[64], RETURNDATASIZE());
                    }
                } else if (bool(MEM[v126.word2])) {
                    if (this - (varg12 >> 96)) {
                        v182 = v183 = _fun_toCanonicalSellAmount;
                    } else {
                        v182 = v184 = this;
                    }
                    require(MEM[v126.word2], MEM[32 + v126.word2]);
                    v185, /* uint256 */ v186 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v126.word2] << 96) * (MEM[32 + v126.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v126.word2] << 96) * (MEM[32 + v126.word2] << 96), v182, MEM[v126.word2]).gas(msg.gas);
                    require(v185, MEM[64], RETURNDATASIZE());
                    MEM[96] = 0;
                }
            }
        } else {
            if (1 == uint16(v0 >> 160)) {
                require(128 <= msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender) - 4);
                if (0 == (msg.data[varg5.data] >> 96 == this)) {
                    require(!bool(msg.data[varg5.data] >> 96), Panic(1)); // low-level assert failed
                    v187 = new struct(2);
                    require(!((v187 + 64 > uint64.max) | (v187 + 64 < v187)), Panic(65)); // failed memory allocation (too much memory)
                    v187.word0 = msg.sender;
                    v187.word1 = (varg1 ^ varg3) * (varg1 > 0) ^ varg3;
                    require(msg.data.length - (varg5 + 44) >= 128);
                    v188 = new struct(3);
                    require(!((v188 + 96 > uint64.max) | (v188 + 96 < v188)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - (varg5 + 44) >= 64);
                    v189 = new struct(2);
                    require(!((v189 + 64 > uint64.max) | (v189 + 64 < v189)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[varg5 + 44] - address(msg.data[varg5 + 44])));
                    v189.word0 = msg.data[varg5 + 44];
                    v189.word1 = msg.data[varg5 + 44 + 32];
                    v188.word0 = v189;
                    v188.word1 = msg.data[varg5 + 44 + 64];
                    v188.word2 = msg.data[varg5 + 44 + 96];
                    require(varg5.length - 137 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v190 = new bytes[](varg5.length - 137);
                    require(!((v190 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v190 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v190)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5 + 173 + (varg5.length - 137) <= msg.data.length);
                    CALLDATACOPY(v190.data, varg5 + 173, varg5.length - 137);
                    v190[varg5.length - 137] = 0;
                    fun_transferFrom(v188, v187, v190, 0x1 & msg.data[varg5 + 141]);
                    v69 = v191 = new struct(1);
                    require(!((v191 + 32 > uint64.max) | (v191 + 32 < v191)), Panic(65)); // failed memory allocation (too much memory)
                } else {
                    fun_safeTransfer(msg.data[varg5 + 56] >> 96, msg.sender, (varg1 ^ varg3) * (varg1 > 0) ^ varg3);
                    v69 = v192 = new struct(1);
                    require(!((v192 + 32 > uint64.max) | (v192 + 32 < v192)), Panic(65)); // failed memory allocation (too much memory)
                }
            } else if (4 == uint16(v0 >> 160)) {
                require(160 <= msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender) - 4);
                require(varg1 == varg15, Panic(1)); // low-level assert failed
                v193 = new struct(2);
                require(!((v193 + 64 > uint64.max) | (v193 + 64 < v193)), Panic(65)); // failed memory allocation (too much memory)
                v193.word0 = msg.sender;
                v193.word1 = varg3;
                require(msg.data.length - 164 >= 128);
                v194 = new struct(3);
                require(!((v194 + 96 > uint64.max) | (v194 + 96 < v194)), Panic(65)); // failed memory allocation (too much memory)
                require(msg.data.length - 164 >= 64);
                v195 = new struct(2);
                require(!((v195 + 64 > uint64.max) | (v195 + 64 < v195)), Panic(65)); // failed memory allocation (too much memory)
                v195.word0 = varg15;
                v195.word1 = varg19;
                v194.word0 = v195;
                v194.word1 = varg20;
                v194.word2 = varg22;
                require(varg11 - 129 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v196 = new bytes[](varg11 - 129);
                require(!((v196 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg11 - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v196 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg11 - 129)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v196)), Panic(65)); // failed memory allocation (too much memory)
                require(varg11 + 164 <= msg.data.length);
                CALLDATACOPY(v196.data, 293, varg11 - 129);
                MEM[v196 + varg11 - 97] = 0;
                fun_transferFrom(v194, v193, v196, 0x1 & varg23);
                v69 = v197 = new struct(1);
                require(!((v197 + 32 > uint64.max) | (v197 + 32 < v197)), Panic(65)); // failed memory allocation (too much memory)
            } else {
                require(3 == uint16(v0 >> 160), Panic(81)); // call to a zero-initialized variable of internal function type
                if (0 == 96 < msg.data.length - 20 * (0xcf9e3c5a26621af382fa17f24f == msg.sender) - 4) {
                    fun_safeTransfer(varg3, msg.sender, varg5);
                } else {
                    v198 = new struct(2);
                    require(!((v198 + 64 > uint64.max) | (v198 + 64 < v198)), Panic(65)); // failed memory allocation (too much memory)
                    v198.word0 = msg.sender;
                    v198.word1 = varg5;
                    require(msg.data.length - 36 >= 128);
                    v199 = new struct(3);
                    require(!((v199 + 96 > uint64.max) | (v199 + 96 < v199)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - 36 >= 64);
                    v200 = new struct(2);
                    require(!((v200 + 64 > uint64.max) | (v200 + 64 < v200)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(varg3 - address(varg3)));
                    v200.word0 = varg3;
                    v200.word1 = varg5;
                    v199.word0 = v200;
                    v199.word1 = varg9;
                    v199.word2 = varg11;
                    require(varg19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v201 = new bytes[](varg19);
                    require(!((v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v201)), Panic(65)); // failed memory allocation (too much memory)
                    require(228 + varg19 <= msg.data.length);
                    CALLDATACOPY(v201.data, 228, varg19);
                    v201[varg19] = 0;
                    fun_transferFrom(v199, v198, v201, varg15);
                }
                v69 = v202 = new bytes[](96);
                MEM[v202.data] = 32;
                MEM[64 + v202] = 32;
                MEM[96 + v202] = varg5;
            }
            MEM[v69] = 0;
            // Unknown jump to Block 0x1a2. Refer to 3-address code (TAC);
        }
        return MEM[v301_0x0 + 32:v301_0x0 + 32 + MEM[v301_0x0]];
        v69 = v203 = new bytes[](96);
        MEM[v203.data] = 32;
        MEM[64 + v203] = 32;
        MEM[96 + v203] = v61;
        // Unknown jump to Block 0x1a2. Refer to 3-address code (TAC);
        revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v59, v204 >> 128, v61));
    }
}
