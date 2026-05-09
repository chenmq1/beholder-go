// Decompiled by library.dedaub.com
// 2026.04.15 09:46 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
bool _paused; // STORAGE[0x0] bytes 0 to 0
address _owner; // STORAGE[0x0] bytes 1 to 20
address _pendingOwner; // STORAGE[0x1] bytes 0 to 19
address _feeReceiver; // STORAGE[0x3] bytes 0 to 19
uint256 _sweep; // TRANSIENT_STORAGE[0xaedd6bde10e3aa2adec092b02a3e3e805795516cda41f27aa145b8f300af87a]
uint256 _pancakeV3SwapCallback; // TRANSIENT_STORAGE[0xf592b31003c48f24a02761b5069687941f260ac74e60190c9ef202403afc0f0e]


// Events
OwnershipTransferStarted(address, address);
FeeReceiverUpdated(address);
SwapOrderId(uint256);
FeeRecord(uint256, address);
AdapterWhitelisted(address, bool);
Paused(address);
OwnershipTransferred(address, address);
Unpaused(address);

function _SafeAdd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(v0 <= v0 + varg0, Panic(17)); // arithmetic overflow or underflow
    return v0 + varg0, varg2, varg3, varg4, varg5, varg0;
}

function pendingOwner() public nonPayable { 
    require(msg.data.length - 4 >= MEM[832], MEM[832], MEM[832]);
    return _pendingOwner;
}

function feeReceiver() public nonPayable { 
    require(msg.data.length - 4 >= MEM[832], MEM[832], MEM[832]);
    return _feeReceiver;
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[832], MEM[832]);
    require(rawData <= uint64.max, MEM[832], MEM[832]);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    if (msg.sender - address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)) {
        MEM[MEM[832]] = 0x62df054500000000000000000000000000000000000000000000000000000000;
        revert(MEM[832], 4);
    } else {
        require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 192, MEM[832], MEM[832]);
        require(!(rawData.word2 - address(rawData.word2)));
        require(!(rawData.word3 - address(rawData.word3)));
        require(!(rawData.word4 - address(rawData.word4)));
        require(rawData.word5 <= uint64.max, MEM[832], MEM[832]);
        require(4 + rawData + 32 + rawData.word5 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
        require(msg.data[4 + rawData + 32 + rawData.word5] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v1 = new bytes[](msg.data[4 + rawData + 32 + rawData.word5]);
        require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word5]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word5]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
        require(4 + rawData + 32 + rawData.word5 + msg.data[4 + rawData + 32 + rawData.word5] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
        CALLDATACOPY(v1.data, 4 + rawData + 32 + rawData.word5 + 32, msg.data[4 + rawData + 32 + rawData.word5]);
        v1[msg.data[4 + rawData + 32 + rawData.word5]] = 0;
        require(!(rawData.word6 - address(rawData.word6)));
        v2 = new struct(6);
        require(!((v2 + 192 > uint64.max) | (v2 + 192 < v2)), Panic(65)); // failed memory allocation (too much memory)
        v2.word0 = MEM[832];
        v2.word1 = MEM[832];
        v2.word2 = MEM[832];
        v2.word3 = MEM[832];
        v2.word4 = MEM[832];
        v2.word5 = MEM[832];
        if (address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283) - address(rawData.word4)) {
            if (address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283) - address(rawData.word4)) {
                MEM[MEM[832]] = 0xbc12814700000000000000000000000000000000000000000000000000000000;
                revert(MEM[832], 4);
            } else {
                require(v1 + v1.length - v1 >= uint8.max + 1, MEM[832], MEM[832]);
                require(v1 + v1.length + 32 - v1.data >= 192);
                v3 = new struct(6);
                require(!((v3 + 192 > uint64.max) | (v3 + 192 < v3)), Panic(65)); // failed memory allocation (too much memory)
                require(!(MEM[v1.data] - address(MEM[v1.data])));
                v3.word0 = MEM[v1.data];
                require(!(v1[32][32] - address(v1[32][32])));
                v3.word1 = v1[32][32];
                require(!(v1[64] - address(v1[64])));
                v3.word2 = v1[64];
                require(!(v1[96] - address(v1[96])));
                v3.word3 = v1[96];
                require(!(v1[128] - uint24(v1[128])));
                v3.word4 = v1[128];
                v3.word5 = v1[160];
                v4 = MEM[v1 + 224];
                require(!(v4 - bool(v4)));
                require(MEM[v1 + (uint8.max + 1)] <= uint64.max, MEM[832], MEM[832]);
                require(32 + (MEM[v1 + (uint8.max + 1)] + v1) + 31 < v1 + v1.length + 32);
                require(v1[MEM[v1 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v5 = new bytes[](v1[MEM[v1 + (uint8.max + 1)]]);
                require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
                require(32 + (MEM[v1 + (uint8.max + 1)] + v1) + v1[MEM[v1 + (uint8.max + 1)]] + 32 <= v1 + v1.length + 32);
                MCOPY(v5.data, 32 + (MEM[v1 + (uint8.max + 1)] + v1) + 32, v1[MEM[v1 + (uint8.max + 1)]]);
                v5[v1[MEM[v1 + (uint8.max + 1)]]] = 0;
                if (rawData.word1 >= 0x80000000000000000000000000000000) {
                    MEM[MEM[832]] = 0x93dafdf1;
                    revert(28, 4);
                } else {
                    v6 = negate_int128(int128(rawData.word1));
                    v7 = new bytes[](v5.length);
                    MCOPY(v7.data, v5.data, v5.length);
                    v7[v5.length] = 0;
                    v8, v9 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).swap(address(v3.word0), address(v3.word1), address(v3.word2), address(v3.word3), uint24(v3.word4), v3.word5, bool(v4), int128(v6), v7).value(MEM[832]).gas(msg.gas);
                    if (!v8) {
                        v10 = RETURNDATASIZE();
                        revert(v11, v11, v11, v11, v11, v11, v11, v11, v11, v5.length);
                    } else {
                        v9 = v12 = MEM[832];
                        if (v8) {
                            v13 = v14 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v13 = v15 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v13 - MEM[64] >= 32);
                        }
                    }
                }
            }
        } else {
            require(v1 + v1.length - v1 >= 288, MEM[832], MEM[832]);
            require(v1 + v1.length + 32 - v1.data >= 192);
            v3 = v16 = new struct(6);
            require(!((v16 + 192 > uint64.max) | (v16 + 192 < v16)), Panic(65)); // failed memory allocation (too much memory)
            require(!(MEM[v1.data] - address(MEM[v1.data])));
            v16.word0 = MEM[v1.data];
            require(!(v1[32][32] - address(v1[32][32])));
            v16.word1 = v1[32][32];
            require(!(v1[64] - address(v1[64])));
            v16.word2 = v1[64];
            require(!(v1[96] - address(v1[96])));
            v16.word3 = v1[96];
            require(!(v1[128] - uint24(v1[128])));
            v16.word4 = v1[128];
            v16.word5 = v1[160];
            v4 = v17 = MEM[v1 + 224];
            require(!(v17 - bool(v17)));
            v18 = MEM[v1 + (uint8.max + 1)];
            require(!(v18 - address(v18)));
            require(MEM[v1 + 288] <= uint64.max, MEM[832], MEM[832]);
            require(32 + (MEM[v1 + 288] + v1) + 31 < v1 + v1.length + 32);
            require(v1[MEM[v1 + 288]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v19 = new bytes[](v1[MEM[v1 + 288]]);
            require(!((v19 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
            require(32 + (MEM[v1 + 288] + v1) + v1[MEM[v1 + 288]] + 32 <= v1 + v1.length + 32);
            MCOPY(v19.data, 32 + (MEM[v1 + 288] + v1) + 32, v1[MEM[v1 + 288]]);
            v19[v1[MEM[v1 + 288]]] = 0;
            if (rawData.word1 < MEM[832]) {
                MEM[MEM[832]] = 0x93dafdf1;
                revert(28, 4);
            } else {
                v20 = negate_int256(rawData.word1);
                if (!address(v18)) {
                    if (!v17) {
                        v18 = v21 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v18 = v22 = 0x1000276a4;
                    }
                }
                v23 = new struct(3);
                require(!((v23 + 96 > uint64.max) | (v23 + 96 < v23)), Panic(65)); // failed memory allocation (too much memory)
                v23.word0 = bool(v17);
                v23.word1 = v20;
                v23.word2 = address(v18);
                v24 = new bytes[](v19.length);
                MCOPY(v24.data, v19.data, v19.length);
                v24[v19.length] = 0;
                v25, v9 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).swap(address(v16.word0), address(v16.word1), address(v16.word2), address(v16.word3), uint24(v16.word4), v16.word5, bool(v23.word0), v23.word1, address(v23.word2), v24).value(MEM[832]).gas(msg.gas);
                if (!v25) {
                    v26 = RETURNDATASIZE();
                    revert(v11, v11, v11, v11, v11, v11, v11, v11, v11, v24);
                } else {
                    v9 = v27 = MEM[832];
                    if (v25) {
                        v28 = v29 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v28 = v30 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v28 - MEM[64] >= 32);
                    }
                }
            }
        }
        if (!v4) {
            if (0 == int128(v9) > MEM[832]) {
                v31 = negate_int128(int128(v9));
                require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
                v32 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).sync(address(MEM[v3 + 32])).value(MEM[832]).gas(msg.gas);
                require(v32, MEM[64], RETURNDATASIZE());
                if (v32) {
                    require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[832], MEM[832], MEM[832]);
                }
                fun_transferInternal(address(rawData.word2), msg.sender, address(MEM[v3 + 32]), uint128(v31));
                v33 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).settle().value(MEM[832]).gas(msg.gas);
                require(v33, MEM[64], RETURNDATASIZE());
                if (v33) {
                    v34 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v34 = v35 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v34 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v34 - MEM[64] >= 32);
                }
                v36 = rawData.word1 > uint128(v31);
                if (v36) {
                    v36 = v37 = this == address(rawData.word2);
                }
                if (v36) {
                    v38 = _SafeSub(rawData.word1, uint128(v31));
                    fun_transferInternal(this, address(rawData.word6), address(MEM[v3 + 32]), v38);
                }
                require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
                v39 = v40 = MEM[64];
                MEM[v40] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
                v41 = v42 = MEM[832];
                MEM[v40 + 4] = address(MEM[v3]);
                MEM[v40 + 36] = address(rawData.word3);
                MEM[v40 + 68] = uint128(v9 >> 128);
                v43 = v44 = v40 + 100;
            } else {
                require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
                v45 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).take(address(MEM[v3 + 32]), address(rawData.word6), uint128(int128(v9))).value(MEM[832]).gas(msg.gas);
                require(v45, MEM[64], RETURNDATASIZE());
                if (v45) {
                    require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[832], MEM[832], MEM[832]);
                }
                require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
                v39 = MEM[64];
                MEM[v39] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
                v41 = MEM[832];
                MEM[v39 + 4] = address(MEM[v3]);
                MEM[v39 + 36] = address(rawData.word3);
                MEM[v39 + 68] = uint128(v9 >> 128);
                v43 = v39 + 100;
            }
        } else if (0 == int128(v9 >> 128) > MEM[832]) {
            v46 = negate_int128(v9 >> 128);
            require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
            v47 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).sync(address(MEM[v3])).value(MEM[832]).gas(msg.gas);
            require(v47, MEM[64], RETURNDATASIZE());
            if (v47) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
            if (address(MEM[v3])) {
                fun_transferInternal(address(rawData.word2), msg.sender, address(MEM[v3]), uint128(v46));
                v48 = v49 = MEM[64];
                v50 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).settle().value(MEM[832]).gas(msg.gas);
                require(v50, MEM[64], RETURNDATASIZE());
                v51 = v52 = 32;
                if (v50) {
                    v53 = v54 = 12638;
                    if (v52 <= RETURNDATASIZE()) {
                        require(!((v49 + 32 > uint64.max) | (v49 + 32 < v49)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v49 + 32;
                        v55 = v56 = v49 + v52;
                    }
                }
            } else {
                v48 = v57 = MEM[64];
                v58 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).settle().value(uint128(v46)).gas(msg.gas);
                require(v58, MEM[64], RETURNDATASIZE());
                v51 = v59 = 32;
                if (v58) {
                    v53 = v60 = 12496;
                    if (v59 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x30d70x2955. Refer to 3-address code (TAC);
                    }
                }
            }
            v61 = v62 = rawData.word1 > uint128(v46);
            if (v62) {
                v61 = v63 = this == address(rawData.word2);
            }
            if (v61) {
                v64 = _SafeSub(rawData.word1, uint128(v46));
                fun_transferInternal(this, address(rawData.word6), address(MEM[v3]), v64);
            }
            require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
            v39 = v65 = MEM[64];
            MEM[v65] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
            v41 = v66 = MEM[832];
            MEM[v65 + 4] = address(MEM[v3 + v51]);
            MEM[v65 + 36] = address(rawData.word3);
            MEM[v65 + 68] = uint128(int128(v9));
            v43 = v67 = v65 + 100;
            require(!((v48 + (v51 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (v51 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v48 + (v51 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v55 = v48 + v51;
            require(v55 - v48 >= 32);
            // Unknown jump to Block ['0x30d0', '0x315e']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x2fd1. Refer to 3-address code (TAC);
            v51 = RETURNDATASIZE();
            // Unknown jump to Block 0x30be0x2955. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x2fd3. Refer to 3-address code (TAC);
        } else {
            require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
            v68 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).take(address(MEM[v3]), address(rawData.word6), uint128(v9 >> 128)).value(MEM[832]).gas(msg.gas);
            require(v68, MEM[64], RETURNDATASIZE());
            if (v68) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
            require((address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283)).code.size, MEM[832], MEM[832]);
            v69 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).take(address(MEM[v3 + 32]), address(rawData.word3), uint128(int128(v9))).value(MEM[832]).gas(msg.gas);
            require(v69, MEM[64], RETURNDATASIZE());
            if (v69) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
        }
        v70 = new struct(1);
        require(!((v70 + 32 > uint64.max) | (v70 + 32 < v70)), Panic(65)); // failed memory allocation (too much memory)
        v70.word0 = MEM[832];
        v71 = new uint256[](v70.word0);
        MCOPY(v71.data, v70 + 32, v70.word0);
        MEM[v71 + v70.word0 + 32] = 0;
        return v71;
        v72 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).call(MEM[v29550x326f:v29550x326f + v29550x32dd - v29550x326f], MEM[v29550x326f:v29550x326f + v29550x3296]).value(MEM[832]).gas(msg.gas);
        require(v72, MEM[64], RETURNDATASIZE());
        if (v72) {
            require(!((v39 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v39 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!MEM[832], MEM[832], MEM[832]);
        }
    }
}

function isAdapterWhitelisted(address adapter) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[832], MEM[832]);
    MEM[MEM[832]] = adapter;
    MEM[32] = 2;
    return bool(STORAGE[keccak256(MEM[MEM[832]:MEM[832] + 64])]);
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[832], MEM[832]);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = newOwner;
    emit OwnershipTransferStarted(address(STORAGE[MEM[832]] >> 8), newOwner);
    return MEM[MEM[832]:MEM[832] + MEM[832]];
}

function whitelistAdapter(address _receiverAdapter, bool _isWhitelisted) public nonPayable { 
    require(msg.data.length - 4 >= 64, MEM[832], MEM[832]);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    MEM[MEM[832]] = _receiverAdapter;
    MEM[32] = 2;
    STORAGE[keccak256(MEM[MEM[832]:MEM[832] + 64])] = uint8(_isWhitelisted) | bytes31(STORAGE[keccak256(MEM[MEM[832]:MEM[832] + 64])]);
    emit AdapterWhitelisted(_receiverAdapter, _isWhitelisted);
    return MEM[MEM[832]:MEM[832] + MEM[832]];
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), NotPoolManager());
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    require(!(rawData.word2 - address(rawData.word2)));
    require(!(rawData.word3 - address(rawData.word3)));
    require(rawData.word4 <= uint64.max);
    require(4 + rawData + 32 + rawData.word4 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[4 + rawData + 32 + rawData.word4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](msg.data[4 + rawData + 32 + rawData.word4]);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word4]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word4]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + rawData.word4 + msg.data[4 + rawData + 32 + rawData.word4] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v1.data, 4 + rawData + 32 + rawData.word4 + 32, msg.data[4 + rawData + 32 + rawData.word4]);
    v1[msg.data[4 + rawData + 32 + rawData.word4]] = 0;
    require(!(rawData.word5 - address(rawData.word5)));
    require(v1 + v1.length - v1 >= uint8.max + 1);
    require(160 <= v1 + v1.length - v1);
    v2 = v3 = new struct(5);
    require(!((v3 + 160 > uint64.max) | (v3 + 160 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[v1.data] - address(MEM[v1.data])));
    v3.word0 = MEM[v1.data];
    require(!(MEM[v1 + 64] - address(MEM[v1 + 64])));
    v2 = v4 = v3 + 32;
    v3.word1 = MEM[v1 + 64];
    require(!(MEM[v1 + 96] - uint24(MEM[v1 + 96])));
    v3.word2 = MEM[v1 + 96];
    require(!(MEM[v1 + 128] - int24(MEM[v1 + 128])));
    v3.word3 = MEM[v1 + 128];
    require(!(MEM[v1 + 160] - address(MEM[v1 + 160])));
    v3.word4 = MEM[v1 + 160];
    require(!(MEM[v1 + 192] - bool(MEM[v1 + 192])));
    v5 = MEM[v1 + 224];
    require(!(v5 - address(v5)));
    require(MEM[v1 + (uint8.max + 1)] <= uint64.max);
    require(v1 + MEM[v1 + (uint8.max + 1)] + 32 + 31 < v1 + v1.length + 32);
    require(v1[MEM[v1 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new bytes[](v1[MEM[v1 + (uint8.max + 1)]]);
    require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1[MEM[v1 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    require(v1 + MEM[v1 + (uint8.max + 1)] + 32 + v1[MEM[v1 + (uint8.max + 1)]] + 32 <= v1 + v1.length + 32);
    MCOPY(v6.data, v1 + MEM[v1 + (uint8.max + 1)] + 32 + 32, v1[MEM[v1 + (uint8.max + 1)]]);
    v6[v1[MEM[v1 + (uint8.max + 1)]]] = 0;
    require(rawData.word1 >= 0, SafeCastOverflow());
    v7 = negate_int256(rawData.word1);
    if (!address(v5)) {
        if (!MEM[v1 + 192]) {
            v5 = v8 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v5 = v9 = 0x1000276a4;
        }
    }
    v10 = new struct(3);
    require(!((v10 + 96 > uint64.max) | (v10 + 96 < v10)), Panic(65)); // failed memory allocation (too much memory)
    v10.word0 = bool(MEM[v1 + 192]);
    v10.word1 = v7;
    v10.word2 = address(v5);
    v11 = new bytes[](v6.length);
    MCOPY(v11.data, v6.data, v6.length);
    v11[v6.length] = 0;
    v12, v13 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4), bool(v10.word0), v10.word1, address(v10.word2), v11).gas(msg.gas);
    if (!v12) {
        v14 = RETURNDATASIZE();
        revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v6.length);
    } else {
        v13 = v16 = 0;
        if (v12) {
            v17 = v18 = 32;
            if (32 > RETURNDATASIZE()) {
                v17 = v19 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v17 - MEM[64] >= 32);
        }
        if (!MEM[v1 + 192]) {
            if (0 == int128(v13) > 0) {
                v20 = negate_int128(int128(v13));
                v21 = v22 = uint128(v20);
                v23 = v24 = uint128(v13 >> 128);
                require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
                v25, /* uint256 */ v26 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v3.word1)).gas(msg.gas);
                require(v25, v26, RETURNDATASIZE());
                if (v25) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[832] = 0;
                    fun_transferInternal(address(rawData.word2), msg.sender, address(v3.word1), v22);
                } else {
                    fun_transferInternal(address(rawData.word2), msg.sender, address(v3.word1), v22);
                }
                v27 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(MEM[832]).gas(msg.gas);
                require(v27, MEM[64], RETURNDATASIZE());
                if (v27) {
                    v28 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v28 = v29 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v28 - MEM[64] >= 32);
                }
                v30 = uint160.max;
                v31 = rawData.word1 > v22;
                if (v31) {
                    // Unknown jump to Block 0x34b00x38b1. Refer to 3-address code (TAC);
                }
            } else {
                require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
                v32 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v3.word1), address(rawData.word5), uint128(int128(v13))).value(MEM[832]).gas(msg.gas);
                require(v32, MEM[64], RETURNDATASIZE());
                if (v32) {
                    require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(!MEM[832], MEM[832], MEM[832]);
                }
                require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
                v33 = MEM[64];
                MEM[v33] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
                v34 = MEM[832];
                MEM[v33 + 4] = address(v3.word0);
                MEM[v33 + 36] = address(rawData.word3);
                MEM[v33 + 68] = uint128(v13 >> 128);
                v35 = v33 + 100;
            }
        } else if (0 == int128(v13 >> 128) > MEM[832]) {
            v36 = negate_int128(v13 >> 128);
            v21 = v37 = uint128(v36);
            v23 = v38 = uint128(int128(v13));
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
            v39 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v3.word0)).value(MEM[832]).gas(msg.gas);
            require(v39, MEM[64], RETURNDATASIZE());
            if (v39) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
            if (address(v3.word0)) {
                fun_transferInternal(address(rawData.word2), msg.sender, address(v3.word0), v37);
                v40 = v41 = MEM[64];
                v42 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(MEM[832]).gas(msg.gas);
                require(v42, MEM[64], RETURNDATASIZE());
                v30 = v43 = uint160.max;
                if (v42) {
                    v44 = v45 = 16184;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v41 + 32 > uint64.max) | (v41 + 32 < v41)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v41 + 32;
                        v46 = v47 = v41 + 32;
                    }
                }
            } else {
                v40 = v48 = MEM[64];
                v49 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v37).gas(msg.gas);
                require(v49, MEM[64], RETURNDATASIZE());
                v30 = v50 = uint160.max;
                if (v49) {
                    v44 = v51 = 16050;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v48 + 32 > uint64.max) | (v48 + 32 < v48)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v48 + 32;
                        v46 = v52 = v48 + 32;
                    }
                }
            }
            if (rawData.word1 <= v37) {
                if (rawData.word1 <= v37) {
                    require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
                    v33 = v53 = MEM[64];
                    MEM[v53] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
                    v34 = v54 = MEM[832];
                    MEM[v53 + 4] = address(v3.word1);
                    MEM[v53 + 36] = address(rawData.word3);
                    MEM[v53 + 68] = v38;
                    v35 = v55 = v53 + 100;
                }
            }
            require(!((v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v40 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v46 = v40 + RETURNDATASIZE();
            require(v46 - v40 >= 32);
            // Unknown jump to Block ['0x3eb2', '0x3f38']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3e17. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3e19. Refer to 3-address code (TAC);
        } else {
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
            v56 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v3.word0), address(rawData.word5), uint128(v13 >> 128)).value(MEM[832]).gas(msg.gas);
            require(v56, MEM[64], RETURNDATASIZE());
            if (v56) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
            v57 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v3.word1), address(rawData.word3), uint128(int128(v13))).value(MEM[832]).gas(msg.gas);
            require(v57, MEM[64], RETURNDATASIZE());
            if (v57) {
                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!MEM[832], MEM[832], MEM[832]);
            }
        }
        v58 = new struct(1);
        require(!((v58 + 32 > uint64.max) | (v58 + 32 < v58)), Panic(65)); // failed memory allocation (too much memory)
        v58.word0 = MEM[832];
        v59 = new uint256[](v58.word0);
        MCOPY(v59.data, v58 + 32, v58.word0);
        MEM[v59 + v58.word0 + 32] = 0;
        return v59;
        v31 = v60 = this == address(rawData.word2);
        if (v31) {
            // Unknown jump to Block 0x34960x38b1. Refer to 3-address code (TAC);
        }
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size, MEM[832], MEM[832]);
        v33 = v61 = MEM[64];
        MEM[v61] = 0xb0d9c0900000000000000000000000000000000000000000000000000000000;
        v34 = v62 = MEM[832];
        MEM[v61 + 4] = address(MEM[v2] & v30);
        MEM[v61 + 36] = address(rawData.word3);
        MEM[v61 + 68] = v23;
        v35 = v63 = v61 + 100;
        v64 = _SafeSub(rawData.word1, v21);
        fun_transferInternal(this, address(rawData.word5), MEM[v2] & v30, v64);
        // Unknown jump to Block 0x34230x38b1. Refer to 3-address code (TAC);
        v65 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v38b10x326f:v38b10x326f + v38b10x32dd - v38b10x326f], MEM[v38b10x326f:v38b10x326f + v38b10x3296]).value(MEM[832]).gas(msg.gas);
        require(v65, MEM[64], RETURNDATASIZE());
        if (v65) {
            require(!((v33 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v33 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!MEM[832], MEM[832], MEM[832]);
        }
    }
}

function setFeeReceiver(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32, MEM[832], MEM[832]);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    if (!varg0) {
        MEM[MEM[832]] = 0xd200485c00000000000000000000000000000000000000000000000000000000;
        revert(MEM[832], 4);
    } else {
        _feeReceiver = varg0;
        emit FeeReceiverUpdated(varg0);
        return MEM[MEM[832]:MEM[832] + MEM[832]];
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function pause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(!_paused, EnforcedPause());
    _paused = 1;
    emit Paused(msg.sender);
}

function acceptOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(_pendingOwner - msg.sender), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = 0;
    _owner = msg.sender;
    emit OwnershipTransferred(_owner, msg.sender);
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _pendingOwner = 0;
    _owner = 0;
    emit OwnershipTransferred(_owner, 0);
}

function sweep(address to, address token, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!address(_sweep), ContractLocked());
    _sweep = msg.sender;
    v0 = fun_balanceOf(to, this);
    require(v0 >= amount, InsufficientToken());
    if (v0) {
        fun_transferInternal(this, token, to, v0);
    }
    _sweep = 0;
}

function paused() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _paused;
}

function WETH9() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function 0x44e89504(uint256 varg0, uint256 varg1, bool varg2, uint256 varg3, address varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(!address(_sweep), ContractLocked());
    _sweep = msg.sender;
    require(!_paused, EnforcedPause());
    if (!varg4) {
        v0 = v1 = msg.sender;
    }
    emit SwapOrderId(varg0);
    require(varg1, ZeroAmount());
    if (!varg2) {
        require(!msg.value, NonZeroNativeToken());
        v2 = v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        v4 = v5 = 0;
        fun_transferInternal(msg.sender, this, v3, varg1);
        fun_unwrap(varg1);
    } else {
        require(msg.value, ZeroNativeToken());
        require(!(msg.value - varg1), AmountMisMatch());
        v2 = v6 = 0;
        v4 = v7 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        fun_wrap(varg1);
    }
    if (varg3) {
        v8 = fun_getFeeAmount(varg3, varg1);
        v9 = v10 = _SafeSub(varg1, v8);
        if (v8) {
            fun_transferInternal(this, _feeReceiver, v4, v8);
            emit FeeRecord(v8, _feeReceiver);
        }
    }
    fun_transferInternal(this, v0, v4, v9);
    emit 0xdc4a96373562fa1f6351c1c03bac6124eb245a2d45577a6c8d83ef6449e518a7(address(v2), address(v4), msg.sender, varg1, v9, address(v0));
    _sweep = 0;
    return v9;
}

function unpause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(_paused, ExpectedPause());
    _paused = 0;
    emit Unpaused(msg.sender);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(_pancakeV3SwapCallback)), V3InvalidCaller());
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 192);
    require(!(data.word1 - address(data.word1)));
    require(!(data.word2 - address(data.word2)));
    require(!(data.word3 - uint24(data.word3)));
    require(!(data.word4 - address(data.word4)));
    require(!(data.word6 - address(data.word6)));
    v1 = fun_computePoolAddress(0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2, address(data.word1), address(data.word2), data.word3);
    require(!(address(v1) - msg.sender), V3InvalidCaller());
    fun_callback(amount0Delta, amount1Delta, address(data.word1), address(data.word2), address(data.word4), data.word5, address(data.word6));
    receive();
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0xedad400c(uint256 varg0, address varg1, address varg2, address varg3, uint256 varg4, address varg5, uint256 varg6, address varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288, MEM[832], MEM[832]);
    require(msg.data.length - 36 >= 128, MEM[832], MEM[832]);
    require(varg5 <= uint64.max, MEM[832], MEM[832]);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max);
    require((varg5.length << 5) + (4 + varg5) + 32 <= msg.data.length);
    require(varg6 <= uint64.max, MEM[832], MEM[832]);
    require(4 + varg6 + 31 < msg.data.length);
    require(varg6.length <= uint64.max);
    require((varg6.length << 5) + (4 + varg6) + 32 <= msg.data.length);
    require(!(varg8 - address(varg8)), MEM[832], MEM[832]);
    if (block.timestamp > varg4) {
        MEM[MEM[832]] = 0x5bf6f91600000000000000000000000000000000000000000000000000000000;
        revert(MEM[832], 4);
    } else if (address(_sweep)) {
        MEM[MEM[832]] = 0x6f5ffb7e00000000000000000000000000000000000000000000000000000000;
        revert(MEM[832], 4);
    } else {
        _sweep = msg.sender;
        require(!_paused, EnforcedPause());
        MEM[800] = varg8;
        if (!address(varg8)) {
            MEM[800] = msg.sender;
        }
        emit SwapOrderId(varg0);
        v0 = v1 = !varg1;
        if (bool(varg1)) {
            v2 = v3 = msg.sender;
        } else {
            v2 = v4 = this;
        }
        MEM[512] = v2;
        if (v1) {
            v0 = v5 = !msg.value;
        }
        if (v0) {
            MEM[MEM[832]] = 0xfcb01dca00000000000000000000000000000000000000000000000000000000;
            revert(MEM[832], 4);
        } else {
            v6 = v7 = bool(varg1);
            if (v7) {
                v6 = v8 = bool(msg.value);
            }
            if (v6) {
                MEM[MEM[832]] = 0x2aa7bcc000000000000000000000000000000000000000000000000000000000;
                revert(MEM[832], 4);
            } else if (varg5.length - varg6.length) {
                MEM[MEM[832]] = 0xcbc4ef400000000000000000000000000000000000000000000000000000000;
                revert(MEM[832], 4);
            } else {
                v9 = v10 = MEM[832];
                while (v9 < varg6.length) {
                    require(v9 < varg5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v11 = _SafeAdd(MEM[832], msg.data[(v9 << 5) + varg5.data]);
                    MEM[768] = v11;
                    require(v9 < varg6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(msg.data[varg6.data + (v9 << 5)] < msg.data.length - varg6.data - 31);
                    require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] <= uint64.max);
                    require(32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) <= msg.data.length - (msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] << 5));
                    require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])) - 159);
                    require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128])));
                    if (varg1 - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128])) {
                        if (v1) {
                            require(v9 < varg6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(msg.data[varg6.data + (v9 << 5)] < msg.data.length - varg6.data - 31);
                            require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] <= uint64.max);
                            require(32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) <= msg.data.length - (msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] << 5));
                            require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])) - 159);
                            require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128])));
                            v0 = v12 = address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128]) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        }
                        if (!v0) {
                            v13 = v14 = varg1 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                            if (v14) {
                                require(v9 < varg6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(msg.data[varg6.data + (v9 << 5)] < msg.data.length - varg6.data - 31);
                                require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] <= uint64.max);
                                require(32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) <= msg.data.length - (msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]] << 5));
                                require(msg.data[varg6.data + msg.data[varg6.data + (v9 << 5)]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])) - 159);
                                require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128])));
                                v13 = v15 = !address(msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (v9 << 5)])] + 128]);
                            }
                            if (!v13) {
                                MEM[MEM[832]] = 0x2fe784400000000000000000000000000000000000000000000000000000000;
                                revert(MEM[832], 4);
                            } else {
                                require(v9 < varg5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v9 = _SafeAdd(v9, msg.data[(v9 << 5) + varg5.data]);
                            }
                        } else {
                            require(v9 < varg5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v9 = _SafeAdd(v9, msg.data[(v9 << 5) + varg5.data]);
                        }
                    }
                    v9 += 1;
                }
                if (v1) {
                    v0 = v16 = msg.value != MEM[768];
                }
                if (v0) {
                    MEM[MEM[832]] = 0x6515d6de00000000000000000000000000000000000000000000000000000000;
                    revert(MEM[832], 4);
                } else {
                    if (v9) {
                        if (bool(varg1)) {
                            fun_transferInternal(msg.sender, this, varg1, MEM[768]);
                            fun_unwrap(v9);
                        } else {
                            fun_wrap(v9);
                        }
                        MEM[512] = this;
                    }
                    v17 = fun_balanceOf(varg2, MEM[800]);
                    v18 = v19 = !varg2;
                    if (bool(varg2)) {
                        v18 = v20 = varg2 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    }
                    MEM[704] = v18;
                    if (!v18) {
                        MEM[704] = bool(varg7);
                    }
                    while (MEM[832] < varg6.length) {
                        MEM[128] = MEM[832];
                        if (!MEM[704]) {
                            MEM[128] = MEM[800];
                        } else {
                            MEM[128] = this;
                        }
                        require(MEM[832] < varg5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(MEM[832] < varg6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(msg.data[varg6.data + (MEM[832] << 5)] < msg.data.length - varg6.data - 31);
                        v21 = msg.data[varg6.data + msg.data[varg6.data + (MEM[832] << 5)]];
                        require(v21 <= uint64.max);
                        require(32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) <= msg.data.length - (v21 << 5));
                        MEM[352] = msg.data[(MEM[832] << 5) + varg5.data];
                        MEM[uint8.max + 1] = MEM[512];
                        v22 = v23 = MEM[832];
                        MEM[384] = v23;
                        MEM[416] = v23;
                        v22 = v24 = 1;
                        while (v23 < v21) {
                            if (v23) {
                                require(MEM[288] < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])));
                                if (address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])) {
                                    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])) {
                                        v25 = fun_balanceOf(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128], this);
                                        MEM[352] = v25;
                                    } else {
                                        v26 = this.balance;
                                        if (v26 > v22) {
                                            v27 = _SafeSub(v26, v22);
                                            fun_wrap(v27);
                                        }
                                        v28, v29 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                        if (!v28) {
                                            RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v29 = v30 = MEM[832];
                                            if (v28) {
                                                v31 = v32 = 32;
                                                if (v32 > RETURNDATASIZE()) {
                                                    v31 = v33 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                require(MEM[64] + v31 - MEM[64] >= 32);
                                            }
                                            v34 = _SafeSub(v29, MEM[416]);
                                            MEM[352] = v34;
                                        }
                                    }
                                } else {
                                    v35, v36 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                    if (!v35) {
                                        RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v36 = v37 = MEM[832];
                                        if (v35) {
                                            v38 = v39 = 32;
                                            if (v39 > RETURNDATASIZE()) {
                                                v38 = v40 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            require(MEM[64] + v38 - MEM[64] >= 32);
                                        }
                                        if (v36 > MEM[416]) {
                                            v41 = _SafeSub(v36, MEM[416]);
                                            fun_unwrap(v41);
                                        }
                                        v42 = this.balance;
                                        v43 = _SafeSub(v42, v22);
                                        MEM[352] = v43;
                                    }
                                }
                                MEM[uint8.max + 1] = this;
                            }
                            v44 = v45 = this;
                            if (v21 - 1 > v21) {
                                MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                MEM[4] = 17;
                                revert(MEM[832], 36);
                            } else {
                                if (0 == (v23 == v21 - 1)) {
                                    MEM[320] = MEM[832];
                                    v46 = v47 = MEM[288] < v21 - 1;
                                    if (v47) {
                                        if (MEM[288] > MEM[288] + 1) {
                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 17;
                                            revert(MEM[832], 36);
                                        } else {
                                            require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]) - 31);
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]] <= uint64.max);
                                            require(32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]) <= msg.data.length - (msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]] << 5));
                                            v46 = v48 = msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]] == 1;
                                        }
                                    }
                                    if (v46) {
                                        if (MEM[288] > MEM[288] + 1) {
                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 17;
                                            revert(MEM[832], 36);
                                        } else {
                                            require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]) - 31);
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]] <= uint64.max);
                                            require(32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]) <= msg.data.length - (msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]] << 5));
                                            if (!msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]]) {
                                                MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                MEM[4] = 50;
                                                revert(MEM[832], 36);
                                            } else {
                                                v49 = v50 = bool(0x8000000000000000000000000000000000000000000000000000000000000000 & msg.data[32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]])]);
                                                if (!(0x8000000000000000000000000000000000000000000000000000000000000000 & msg.data[32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]])])) {
                                                    require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                                    require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]) - 31);
                                                    require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]] <= uint64.max);
                                                    require(32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]) <= msg.data.length - (msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]] << 5));
                                                    if (!msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]]]) {
                                                        MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                        MEM[4] = 50;
                                                        revert(MEM[832], 36);
                                                    } else {
                                                        v49 = v51 = bool(0x4000000000000000000000000000000000000000000000000000000000000000 & msg.data[32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]])]);
                                                    }
                                                }
                                                v46 = v52 = !v49;
                                            }
                                        }
                                    }
                                    if (!v46) {
                                        MEM[384] = MEM[832];
                                    } else if (MEM[288] > MEM[288] + 1) {
                                        MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                        MEM[4] = 17;
                                        revert(MEM[832], 36);
                                    } else {
                                        require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                        require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)]) - 31);
                                        require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]] <= uint64.max);
                                        require(32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]) <= msg.data.length - (msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]] << 5));
                                        if (!msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32]]) {
                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 50;
                                            revert(MEM[832], 36);
                                        } else {
                                            v44 = msg.data[32 + (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 32])];
                                            require(!(v44 - address(v44)));
                                            MEM[384] = 1;
                                        }
                                    }
                                } else {
                                    v44 = v53 = MEM[128];
                                }
                                if (MEM[320]) {
                                    MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                    MEM[4] = 17;
                                    revert(MEM[832], 36);
                                } else {
                                    v54 = v55 = v23 < v21 - 1;
                                    if (v55) {
                                        if (MEM[288] > MEM[288] + 1) {
                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 17;
                                            revert(MEM[832], 36);
                                        } else {
                                            require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                            require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128])));
                                            v54 = v56 = !address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128]);
                                            if (address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128])) {
                                                require(MEM[288] + 1 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                                require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128])));
                                                v54 = v57 = address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] + 1 << 5)] + 128]) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                            }
                                        }
                                    }
                                    if (v54) {
                                        v22 = v58 = this == address(MEM[0x100]);
                                        if (this != address(MEM[0x100])) {
                                        }
                                        v59 = v60 = 8028;
                                        v61 = v62 = this.balance;
                                        require(MEM[288] < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                        require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])));
                                        v22 = v63 = !address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128]);
                                        if (address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])) {
                                        }
                                        if (v22) {
                                            v64 = v65 = MEM[352];
                                        }
                                        while (1) {
                                            v22 = v61 - v64;
                                            require(v22 <= v61, Panic(17)); // arithmetic overflow or underflow
                                            // Unknown jump to Block ['0x1f5c', '0x572ca']. Refer to 3-address code (TAC);
                                            v66, v61 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                            if (!v66) {
                                                RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v61 = v67 = MEM[832];
                                                if (v66) {
                                                    v68 = v69 = 32;
                                                    if (v69 > RETURNDATASIZE()) {
                                                        v68 = v70 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    require(MEM[64] + v68 - MEM[64] >= 32);
                                                }
                                                v59 = v71 = 0x572ca;
                                                require(MEM[288] < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                                require(!(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128] - address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128])));
                                                v22 = v72 = address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128]) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                                if (address(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (MEM[288] << 5)] + 128]) != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                                                }
                                                if (!v22) {
                                                    break;
                                                } else {
                                                    v64 = v73 = MEM[352];
                                                }
                                            }
                                        }
                                        MEM[416] = v22;
                                        v64 = v74 = MEM[832];
                                        // Unknown jump to Block 0x4d610x4dd. Refer to 3-address code (TAC);
                                    }
                                    require(v23 < v21, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (v23 << 5)] < msg.data.length - (32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)])) - 159);
                                    v75 = 32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + msg.data[32 + (varg6.data + msg.data[varg6.data + (MEM[832] << 5)]) + (v23 << 5)];
                                    MEM[224] = MEM[uint8.max + 1];
                                    v76 = msg.data[v75 + 128];
                                    require(!(v76 - address(v76)));
                                    v77 = v78 = MEM[832];
                                    require(msg.data[v75] < msg.data.length - v75 - 31);
                                    require(msg.data[v75 + msg.data[v75]] <= uint64.max);
                                    require(32 + (v75 + msg.data[v75]) <= msg.data.length - (msg.data[v75 + msg.data[v75]] << 5));
                                    v79 = v80 = MEM[832];
                                    v81 = v82 = MEM[832];
                                    while (v81 < msg.data[v75 + msg.data[v75]]) {
                                        require(msg.data[v75] < msg.data.length - v75 - 31);
                                        require(msg.data[v75 + msg.data[v75]] <= uint64.max);
                                        require(32 + (v75 + msg.data[v75]) <= msg.data.length - (msg.data[v75 + msg.data[v75]] << 5));
                                        require(v81 < msg.data[v75 + msg.data[v75]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v83 = v84 = msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75]))];
                                        require(msg.data[v75 + 64] < msg.data.length - v75 - 31);
                                        require(msg.data[v75 + msg.data[v75 + 64]] <= uint64.max);
                                        require(32 + (v75 + msg.data[v75 + 64]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 64]] << 5));
                                        require(v81 < msg.data[v75 + msg.data[v75 + 64]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v83 = v85 = msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 64]))];
                                        v77 = _SafeAdd(v77, uint16(v85 >> 160));
                                        if (msg.data[v75 + msg.data[v75]] - 1 > msg.data[v75 + msg.data[v75]]) {
                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 17;
                                            revert(MEM[832], 36);
                                        } else {
                                            if (v81 == msg.data[v75 + msg.data[v75]] - 1) {
                                                if (v77 - 10000) {
                                                    MEM[MEM[832]] = 0x994bf9200000000000000000000000000000000000000000000000000000000;
                                                    revert(MEM[832], 4);
                                                }
                                            }
                                            if (v81 - (msg.data[v75 + msg.data[v75]] - 1)) {
                                                if (10000 - uint16(v85 >> 160)) {
                                                    v86 = _SafeMul(MEM[352], uint16(v85 >> 160));
                                                    v79, v83 = v87, v83 = v88, v81, v22, v89 = v90 = _SafeAdd(v86 / 10000, 0x57280, v84, v85, v81, v22);
                                                } else {
                                                    v79, v83 = v91, v83 = v92, v81, v22, v89 = v93 = _SafeAdd(MEM[352], 0x5725b, v84, v85, v81, v22);
                                                }
                                            } else {
                                                v89 = v94 = _SafeSub(MEM[352], v79);
                                            }
                                            if (!(v83 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                                if (v83 & 0x4000000000000000000000000000000000000000000000000000000000000000) {
                                                    if (address(MEM[0xe0]) - this) {
                                                        fun_transferInternal(MEM[224], this, v76, v89);
                                                    }
                                                    fun_unwrap(v89);
                                                    v76 = v95 = MEM[832];
                                                    MEM[224] = this;
                                                }
                                            } else {
                                                fun_wrap(v89);
                                                v76 = v96 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                                MEM[224] = this;
                                            }
                                            v97 = v98 = v83 & 0x800000000000000000000000000000000000000000000000000000000000000;
                                            if (!(v83 & 0x800000000000000000000000000000000000000000000000000000000000000)) {
                                                v97 = v99 = bool(v83 & 0x400000000000000000000000000000000000000000000000000000000000000);
                                            }
                                            if (!v97) {
                                                if (!(v83 & 0x200000000000000000000000000000000000000000000000000000000000000)) {
                                                    if (!(v83 & 0x80000000000000000000000000000000000000000000000000000000000000)) {
                                                        if (!(v83 & 0x100000000000000000000000000000000000000000000000000000000000000)) {
                                                            MEM[MEM[832]] = address(v83);
                                                            MEM[32] = 2;
                                                            if (!uint8(STORAGE[keccak256(MEM[MEM[832]:MEM[832] + 64])])) {
                                                                MEM[MEM[832]] = 0xd71b9a0000000000000000000000000000000000000000000000000000000000;
                                                                revert(MEM[832], 4);
                                                            } else {
                                                                if (v22) {
                                                                    require(msg.data[v75 + 32] < msg.data.length - v75 - 31);
                                                                    require(msg.data[v75 + msg.data[v75 + 32]] <= uint64.max);
                                                                    require(32 + (v75 + msg.data[v75 + 32]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 32]] << 5));
                                                                    require(v81 < msg.data[v75 + msg.data[v75 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                    require(!(msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))] - address(msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))])));
                                                                    fun_transferInternal(MEM[224], msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))], v76, v89);
                                                                }
                                                                if (!(v83 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                                                    require(msg.data[v75 + 96] < msg.data.length - v75 - 31);
                                                                    require(msg.data[v75 + msg.data[v75 + 96]] <= uint64.max);
                                                                    require(32 + (v75 + msg.data[v75 + 96]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 96]] << 5));
                                                                    require(v81 < msg.data[v75 + msg.data[v75 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                    require(msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)] < msg.data.length - (32 + (v75 + msg.data[v75 + 96])) - 31);
                                                                    v100 = msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]];
                                                                    require(v100 <= uint64.max);
                                                                    require(32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]) <= msg.data.length - v100);
                                                                    require((address(v83)).code.size, MEM[832], MEM[832]);
                                                                    v101 = v102 = MEM[64];
                                                                    MEM[v102] = 0xb2375e4e00000000000000000000000000000000000000000000000000000000;
                                                                    v103 = v104 = MEM[832];
                                                                    MEM[v102 + 4] = address(v44);
                                                                    MEM[v102 + 4 + 32] = address(v83);
                                                                    MEM[v102 + 4 + 64] = 96;
                                                                    MEM[v102 + 4 + 96] = v100;
                                                                    CALLDATACOPY(v102 + 4 + 96 + 32, 32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]), v100);
                                                                    MEM[v102 + 4 + 96 + v100 + 32] = 0;
                                                                    v105 = (v100 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v102 + 4 + 96) + 32;
                                                                } else {
                                                                    require(msg.data[v75 + 96] < msg.data.length - v75 - 31);
                                                                    require(msg.data[v75 + msg.data[v75 + 96]] <= uint64.max);
                                                                    require(32 + (v75 + msg.data[v75 + 96]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 96]] << 5));
                                                                    require(v81 < msg.data[v75 + msg.data[v75 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                    require(msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)] < msg.data.length - (32 + (v75 + msg.data[v75 + 96])) - 31);
                                                                    v106 = msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]];
                                                                    require(v106 <= uint64.max);
                                                                    require(32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]) <= msg.data.length - v106);
                                                                    require((address(v83)).code.size, MEM[832], MEM[832]);
                                                                    v101 = v107 = MEM[64];
                                                                    MEM[v107] = 0x652f0d3c00000000000000000000000000000000000000000000000000000000;
                                                                    v103 = v108 = MEM[832];
                                                                    MEM[v107 + 4] = address(v44);
                                                                    MEM[v107 + 4 + 32] = address(v83);
                                                                    MEM[v107 + 4 + 64] = 96;
                                                                    MEM[v107 + 4 + 96] = v106;
                                                                    CALLDATACOPY(v107 + 4 + 96 + 32, 32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]), v106);
                                                                    MEM[v107 + 4 + 96 + v106 + 32] = 0;
                                                                    v105 = v109 = (v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v107 + 4 + 96) + 32;
                                                                }
                                                            }
                                                        } else {
                                                            require(msg.data[v75 + 96] < msg.data.length - v75 - 31);
                                                            require(msg.data[v75 + msg.data[v75 + 96]] <= uint64.max);
                                                            require(32 + (v75 + msg.data[v75 + 96]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 96]] << 5));
                                                            require(v81 < msg.data[v75 + msg.data[v75 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            require(msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)] < msg.data.length - (32 + (v75 + msg.data[v75 + 96])) - 31);
                                                            v110 = msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]];
                                                            require(v110 <= uint64.max);
                                                            require(32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]) <= msg.data.length - v110);
                                                            MEM[MEM[64] + 32] = v89;
                                                            MEM[MEM[64] + 64] = address(MEM[0xe0]);
                                                            MEM[MEM[64] + 96] = address(v44);
                                                            MEM[MEM[64] + 128] = 160;
                                                            MEM[MEM[64] + 192] = v110;
                                                            CALLDATACOPY(MEM[64] + 192 + 32, 32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]), v110);
                                                            MEM[MEM[64] + 192 + v110 + 32] = 0;
                                                            MEM[MEM[64] + 160] = msg.sender;
                                                            require(!((MEM[64] + ((v110 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 192) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v110 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 192) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            v111 = v112 = MEM[64];
                                                            MEM[v112] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                            MEM[v112 + 4] = 32;
                                                            MEM[v112 + 36] = (v110 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 192) + 32 - MEM[64] - 32;
                                                            MCOPY(v112 + 36 + 32, MEM[64] + 32, (v110 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 192) + 32 - MEM[64] - 32);
                                                            MEM[v112 + 36 + ((v110 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 192) + 32 - MEM[64] - 32) + 32] = 0;
                                                            v113 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v1b79:v1b79 + v59acV0x5717c + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 192 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + v1b79 + 36 + 32 - v1b79], MEM[v1b79:v1b79 + MEM[832]]).value(MEM[832]).gas(msg.gas);
                                                            if (!v113) {
                                                                RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v114 = v115 = 1;
                                                                if (!v113) {
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(msg.data[v75 + 96] < msg.data.length - v75 - 31);
                                                        require(msg.data[v75 + msg.data[v75 + 96]] <= uint64.max);
                                                        require(32 + (v75 + msg.data[v75 + 96]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 96]] << 5));
                                                        require(v81 < msg.data[v75 + msg.data[v75 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        require(msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)] < msg.data.length - (32 + (v75 + msg.data[v75 + 96])) - 31);
                                                        v116 = msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]];
                                                        require(v116 <= uint64.max);
                                                        require(32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]) <= msg.data.length - v116);
                                                        MEM[MEM[64] + 32] = v89;
                                                        MEM[MEM[64] + 64] = address(MEM[0xe0]);
                                                        MEM[MEM[64] + 96] = address(v44);
                                                        MEM[MEM[64] + 128] = address(v83);
                                                        MEM[MEM[64] + 160] = 192;
                                                        MEM[MEM[64] + 224] = v116;
                                                        CALLDATACOPY(MEM[64] + 224 + 32, 32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]), v116);
                                                        MEM[MEM[64] + 224 + v116 + 32] = 0;
                                                        MEM[MEM[64] + 192] = msg.sender;
                                                        require(!((MEM[64] + ((v116 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 224) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v116 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 224) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        v111 = v117 = MEM[64];
                                                        MEM[v117] = 0x8154831900000000000000000000000000000000000000000000000000000000;
                                                        MEM[v117 + 4] = 32;
                                                        MEM[v117 + 36] = (v116 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 224) + 32 - MEM[64] - 32;
                                                        MCOPY(v117 + 36 + 32, MEM[64] + 32, (v116 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 224) + 32 - MEM[64] - 32);
                                                        MEM[v117 + 36 + ((v116 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 224) + 32 - MEM[64] - 32) + 32] = 0;
                                                        v118 = address(0x1238dd9808ad45090df2a7f6b70fb5c20db4c283).call(MEM[v19eb:v19eb + v59acV0x57157 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 224 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + v19eb + 36 + 32 - v19eb], MEM[v19eb:v19eb + MEM[832]]).value(MEM[832]).gas(msg.gas);
                                                        if (!v118) {
                                                            RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v114 = v119 = 1;
                                                            if (v118) {
                                                                // Unknown jump to Block 0x1a7e. Refer to 3-address code (TAC);
                                                            }
                                                        }
                                                    }
                                                    RETURNDATACOPY(v111, MEM[832], RETURNDATASIZE());
                                                    require(!((v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v111)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(v111 + RETURNDATASIZE() - v111 >= 32);
                                                    require(MEM[v111] <= uint64.max);
                                                    require(v111 + MEM[v111] + 31 < v111 + RETURNDATASIZE());
                                                    require(MEM[v111 + MEM[v111]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v120 = new bytes[](MEM[v111 + MEM[v111]]);
                                                    require(!((v120 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v111 + MEM[v111]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v120 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v111 + MEM[v111]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v120)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(v111 + MEM[v111] + MEM[v111 + MEM[v111]] + 32 <= v111 + RETURNDATASIZE());
                                                    MCOPY(v120.data, v111 + MEM[v111] + 32, MEM[v111 + MEM[v111]]);
                                                    v120[MEM[v111 + MEM[v111]]] = 0;
                                                } else {
                                                    require(msg.data[v75 + 96] < msg.data.length - v75 - 31);
                                                    require(msg.data[v75 + msg.data[v75 + 96]] <= uint64.max);
                                                    require(32 + (v75 + msg.data[v75 + 96]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 96]] << 5));
                                                    require(v81 < msg.data[v75 + msg.data[v75 + 96]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)] < msg.data.length - (32 + (v75 + msg.data[v75 + 96])) - 31);
                                                    require(msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]] <= uint64.max);
                                                    v121 = 32 + (32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]);
                                                    require(v121 <= msg.data.length - msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]]);
                                                    require(v121 + msg.data[32 + (v75 + msg.data[v75 + 96]) + msg.data[32 + (v75 + msg.data[v75 + 96]) + (v81 << 5)]] - v121 >= 128, MEM[832], MEM[832]);
                                                    require(!(msg.data[v121] - address(msg.data[v121])), MEM[832], MEM[832]);
                                                    require(!(msg.data[v121 + 32] - address(msg.data[v121 + 32])));
                                                    require(!(msg.data[v121 + 64] - address(msg.data[v121 + 64])));
                                                    require(!(msg.data[v121 + 96] - uint24(msg.data[v121 + 96])));
                                                    _pancakeV3SwapCallback = address(v83);
                                                    if (v89 > int256.max) {
                                                        MEM[MEM[832]] = 0x24775e0600000000000000000000000000000000000000000000000000000000;
                                                        MEM[4] = v89;
                                                        revert(MEM[832], 36);
                                                    } else {
                                                        if (0 == !address(msg.data[v121])) {
                                                            v122 = v123 = msg.data[v121];
                                                        } else if (address(msg.data[v121 + 32]) >= address(msg.data[v121 + 64])) {
                                                            v122 = v124 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                        } else {
                                                            v122 = v125 = 0x1000276a4;
                                                        }
                                                        v126 = new struct(7);
                                                        v127 = v126.data;
                                                        v126.word1 = address(msg.data[v121 + 32]);
                                                        v126.word2 = address(msg.data[v121 + 64]);
                                                        v126.word3 = uint24(msg.data[v121 + 96]);
                                                        v126.word4 = address(MEM[0xe0]);
                                                        v126.word5 = v89;
                                                        v126.word6 = msg.sender;
                                                        v126.word0 = 192;
                                                        require(!((v126 + uint8(-32) > uint64.max) | (v126 + uint8(-32) < v126)), Panic(65)); // failed memory allocation (too much memory)
                                                        v128 = new bytes[](v126.word0.length);
                                                        MCOPY(v128.data, v126.data, v126.word0.length);
                                                        v128[v126.word0.length] = 0;
                                                        v129 = address(v83).swap(address(v44), address(msg.data[v121 + 32]) < address(msg.data[v121 + 64]), v89, address(v122), v128).value(MEM[832]).gas(msg.gas);
                                                        if (!v129) {
                                                            RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            if (v129) {
                                                                v130 = v131 = 64;
                                                                if (v131 > RETURNDATASIZE()) {
                                                                    v130 = v132 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                MEM[64] = MEM[64] + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                require(MEM[64] + v130 - MEM[64] >= v131, MEM[832], MEM[832]);
                                                            }
                                                            v114 = v133 = 1;
                                                            _pancakeV3SwapCallback = MEM[832];
                                                        }
                                                    }
                                                }
                                            } else {
                                                if (v22) {
                                                    require(msg.data[v75 + 32] < msg.data.length - v75 - 31);
                                                    require(msg.data[v75 + msg.data[v75 + 32]] <= uint64.max);
                                                    require(32 + (v75 + msg.data[v75 + 32]) <= msg.data.length - (msg.data[v75 + msg.data[v75 + 32]] << 5));
                                                    require(v81 < msg.data[v75 + msg.data[v75 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(!(msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))] - address(msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))])));
                                                    fun_transferInternal(MEM[224], msg.data[(v81 << 5) + (32 + (v75 + msg.data[v75 + 32]))], v76, v89);
                                                }
                                                if (bool(!(v83 & 0x800000000000000000000000000000000000000000000000000000000000000))) {
                                                    v134 = v135 = 9975;
                                                } else {
                                                    v134 = v136 = 9970;
                                                }
                                                if (!(v83 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                                    v137, /* address */ v138 = address(v83).token0().gas(msg.gas);
                                                    if (!v137) {
                                                        RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v138 = v139 = MEM[832];
                                                        if (v137) {
                                                            v140 = v141 = 32;
                                                            if (v141 > RETURNDATASIZE()) {
                                                                v140 = v142 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v140 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v140 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (v140 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + v140 - MEM[64] >= 32, MEM[832], MEM[832]);
                                                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                                        }
                                                        v143 = v144 = MEM[64];
                                                        v145 = address(v83).getReserves().gas(msg.gas);
                                                        if (!v145) {
                                                            RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v146 = v147 = MEM[832];
                                                            v146 = v148 = MEM[832];
                                                            if (v145) {
                                                                v149 = v150 = 5626;
                                                                if (96 <= RETURNDATASIZE()) {
                                                                    require(!((v144 + 96 > uint64.max) | (v144 + 96 < v144)), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = v144 + 96;
                                                                    v151 = v152 = v144 + 96;
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    v153, /* address */ v138 = address(v83).token1().gas(msg.gas);
                                                    if (!v153) {
                                                        RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v138 = v154 = MEM[832];
                                                        if (v153) {
                                                            v155 = v156 = 32;
                                                            if (v156 > RETURNDATASIZE()) {
                                                                v155 = v157 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v155 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v155 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (v155 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + v155 - MEM[64] >= 32, MEM[832], MEM[832]);
                                                            require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                        }
                                                        v143 = v158 = MEM[64];
                                                        v159 = address(v83).getReserves().gas(msg.gas);
                                                        if (!v159) {
                                                            RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v146 = v160 = MEM[832];
                                                            if (v159) {
                                                                v149 = v161 = 4741;
                                                                v162 = v163 = 96;
                                                                if (v163 > RETURNDATASIZE()) {
                                                                    // Unknown jump to Block 0x128e. Refer to 3-address code (TAC);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                v164 = v165 = !uint112(v146);
                                                if (bool(uint112(v146))) {
                                                    v164 = v166 = !uint112(v146);
                                                }
                                                if (v164) {
                                                    MEM[MEM[832]] = 0x8207ee0d00000000000000000000000000000000000000000000000000000000;
                                                    revert(MEM[832], 4);
                                                } else {
                                                    v167, v168 = address(v138).balanceOf(address(v83)).gas(msg.gas);
                                                    if (!v167) {
                                                        RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v168 = v169 = MEM[832];
                                                        if (v167) {
                                                            v170 = v171 = 32;
                                                            if (v171 > RETURNDATASIZE()) {
                                                                v170 = v172 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            require(MEM[64] + v170 - MEM[64] >= 32);
                                                        }
                                                        v173 = _SafeSub(v168, uint112(v146));
                                                        v174 = _SafeMul(v173, v134);
                                                        v175 = _SafeMul(v174, uint112(v146));
                                                        if (!((10000 == uint112(v146) * 10000 / uint112(v146)) | v165)) {
                                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                            MEM[4] = 17;
                                                            revert(MEM[832], 36);
                                                        } else {
                                                            v176 = _SafeAdd(uint112(v146) * 10000, v174);
                                                            v177 = _SafeDiv(v175, v176);
                                                            v178 = new struct(1);
                                                            require(!((v178 + 32 > uint64.max) | (v178 + 32 < v178)), Panic(65)); // failed memory allocation (too much memory)
                                                            v178.word0 = MEM[832];
                                                            CALLDATACOPY(v178 + 32, msg.data.length, 0);
                                                            require((address(v83)).code.size, MEM[832], MEM[832]);
                                                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                                            MEM[MEM[64] + 4] = v177;
                                                            MEM[MEM[64] + 36] = MEM[832];
                                                            MEM[MEM[64] + 68] = address(v44);
                                                            MEM[MEM[64] + 100] = 128;
                                                            MEM[MEM[64] + 132] = v178.word0;
                                                            MCOPY(MEM[64] + 132 + 32, v178 + 32, v178.word0);
                                                            MEM[MEM[64] + 132 + v178.word0 + 32] = 0;
                                                            v179 = address(v83).call(MEM[MEM[64]:MEM[64] + v109c.word0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 132 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + MEM[832]]).value(MEM[832]).gas(msg.gas);
                                                            if (!v179) {
                                                                RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                if (v179) {
                                                                    require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                    require(!MEM[832], MEM[832], MEM[832]);
                                                                }
                                                                v114 = v180 = 1;
                                                            }
                                                        }
                                                    }
                                                }
                                                require(!((v143 + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v143 + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v143)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v143 + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                v151 = v181 = v143 + v162;
                                                require(v151 - v143 >= 96);
                                                v146 = v182 = MEM[v143];
                                                require(!(v182 - uint112(v182)));
                                                v146 = MEM[v143 + 32];
                                                require(!(v146 - uint112(v146)));
                                                require(!(MEM[v143 + 64] - uint32(MEM[v143 + 64])));
                                                // Unknown jump to Block ['0x1285', '0x15fa']. Refer to 3-address code (TAC);
                                                // Unknown jump to Block 0xf8f. Refer to 3-address code (TAC);
                                                v162 = v183 = RETURNDATASIZE();
                                                // Unknown jump to Block 0x1273. Refer to 3-address code (TAC);
                                                v184 = v185 = !uint112(v146);
                                                if (bool(uint112(v146))) {
                                                    v184 = v186 = !uint112(v146);
                                                }
                                                if (v184) {
                                                    MEM[MEM[832]] = 0x8207ee0d00000000000000000000000000000000000000000000000000000000;
                                                    revert(MEM[832], 4);
                                                } else {
                                                    v187, v188 = address(v138).balanceOf(address(v83)).gas(msg.gas);
                                                    if (!v187) {
                                                        RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v188 = v189 = MEM[832];
                                                        if (v187) {
                                                            v190 = v191 = 32;
                                                            if (v191 > RETURNDATASIZE()) {
                                                                v190 = v192 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v190 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v190 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            require(MEM[64] + v190 - MEM[64] >= 32);
                                                        }
                                                        v193 = _SafeSub(v188, uint112(v146));
                                                        v194 = _SafeMul(v193, v134);
                                                        v195 = _SafeMul(v194, uint112(v146));
                                                        if (!((10000 == uint112(v146) * 10000 / uint112(v146)) | v185)) {
                                                            MEM[MEM[832]] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
                                                            MEM[4] = 17;
                                                            revert(MEM[832], 36);
                                                        } else {
                                                            v196 = _SafeAdd(uint112(v146) * 10000, v194);
                                                            v197 = _SafeDiv(v195, v196);
                                                            v198 = new struct(1);
                                                            require(!((v198 + 32 > uint64.max) | (v198 + 32 < v198)), Panic(65)); // failed memory allocation (too much memory)
                                                            v198.word0 = MEM[832];
                                                            CALLDATACOPY(v198 + 32, msg.data.length, 0);
                                                            require((address(v83)).code.size, MEM[832], MEM[832]);
                                                            v101 = v199 = MEM[64];
                                                            MEM[v199] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                                            MEM[v199 + 4] = MEM[832];
                                                            MEM[v199 + 36] = v197;
                                                            MEM[v199 + 68] = address(v44);
                                                            MEM[v199 + 100] = 128;
                                                            v103 = v200 = MEM[832];
                                                            MEM[v199 + 132] = v198.word0;
                                                            MCOPY(v199 + 132 + 32, v198 + 32, v198.word0);
                                                            MEM[v199 + 132 + v198.word0 + 32] = 0;
                                                            v105 = v201 = (v198.word0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v199 + 132) + 32;
                                                        }
                                                    }
                                                }
                                            }
                                            v81 = v81 + v114;
                                            v202 = address(v83).call(MEM[v1577_0x0:v1577_0x0 + v5a07V0x5a0aV0x1d25 - v1577_0x0], MEM[v1577_0x0:v1577_0x0 + v1544_0x5]).value(MEM[832]).gas(msg.gas);
                                            if (!v202) {
                                                RETURNDATACOPY(MEM[64], MEM[832], RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                if (v202) {
                                                    require(!((v101 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v101 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v101)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = v101 + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(!MEM[832], MEM[832], MEM[832]);
                                                }
                                                v114 = v203 = 1;
                                            }
                                        }
                                    }
                                    v22 = v204 = !MEM[384];
                                    MEM[288] = v23 + 1;
                                }
                            }
                        }
                        MEM[448] = MEM[832] + 1;
                    }
                    if (!v19) {
                        if (varg2 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                            if (this.balance) {
                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[832], MEM[832]);
                                v205 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
                                require(v205, MEM[64], RETURNDATASIZE());
                                if (v205) {
                                    require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(!MEM[832], MEM[832], MEM[832]);
                                }
                            }
                        }
                    } else {
                        v206, v207 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                        require(v206, MEM[64], RETURNDATASIZE());
                        v207 = v208 = MEM[832];
                        if (v206) {
                            v209 = v210 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v209 = v211 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v209 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v209 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v209 - MEM[64] >= 32);
                        }
                        if (v207) {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, MEM[832], MEM[832]);
                            v212 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v207).value(MEM[832]).gas(msg.gas);
                            require(v212, MEM[64], RETURNDATASIZE());
                            if (v212) {
                                require(!((MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (MEM[832] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(!MEM[832], MEM[832], MEM[832]);
                            }
                        }
                    }
                    if (MEM[704]) {
                        v213 = v214 = fun_balanceOf(varg2, this);
                        if (varg7) {
                            v215 = v216 = MEM[832];
                            v213 = v217 = uint240(varg7);
                            v218 = v219 = v217 > varg3;
                            if (v219) {
                                v218 = v220 = v214 > v217;
                            }
                            if (v218) {
                                v215 = v221 = _SafeSub(v214, v217);
                            }
                            v222 = fun_getFeeAmount(varg7, v213);
                            v213 = v223 = _SafeSub(v213, v222);
                            v224 = _SafeAdd(v222, v215);
                            if (v224) {
                                fun_transferInternal(this, _feeReceiver, varg2, v224);
                                emit FeeRecord(v224, _feeReceiver);
                            }
                        }
                        if (v213) {
                            if (address(this) != address(MEM[0x320])) {
                                if (varg2) {
                                    if (address(this) - this) {
                                        v225 = varg2.transferFrom(address(this), address(MEM[0x320]), v213).gas(msg.gas);
                                        require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v225, Error('TRANSFER_FROM_FAILED'));
                                    } else {
                                        v226 = varg2.transfer(address(MEM[0x320]), v213).gas(msg.gas);
                                        require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v226, Error('TRANSFER_FAILED'));
                                    }
                                } else {
                                    v227 = MEM[0x320].call().value(v213).gas(msg.gas);
                                    require(v227, Error('ETH_TRANSFER_FAILED'));
                                }
                            }
                        }
                    }
                    v228 = fun_balanceOf(varg2, MEM[800]);
                    v229 = _SafeSub(v228, v17);
                    if (v229 < varg3) {
                        MEM[MEM[832]] = 0xa7c6745900000000000000000000000000000000000000000000000000000000;
                        revert(MEM[832], 4);
                    } else {
                        emit 0xdc4a96373562fa1f6351c1c03bac6124eb245a2d45577a6c8d83ef6449e518a7(varg1, varg2, msg.sender, MEM[768], v229, address(MEM[0x320]));
                        _sweep = MEM[832];
                        return v229;
                    }
                }
            }
        }
    }
}

function negate_int256(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function negate_int128(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function fun_computePoolAddress(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint24 varg4) private { 
    if (address(varg2) <= address(varg3)) {
    }
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = address(varg2);
    v0.word2 = address(varg2);
    v0.word3 = varg4;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = keccak256(address(varg2), address(varg2), varg4);
    v4 = new bytes[](85);
    require(!((v4 + 128 > uint64.max) | (v4 + 128 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v4.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), v3, varg1));
}

function fun_callback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = v1 = varg0 <= 0;
    if (v1) {
        v0 = v2 = varg1 <= 0;
    }
    require(!v0, BothDeltaNonPositive());
    if (varg0 <= 0) {
        v3 = v4 = address(varg3) < address(varg2);
    } else {
        v3 = v5 = address(varg2) < address(varg3);
    }
    if (v3) {
    }
    fun_transferInternal(varg4, msg.sender, varg2, varg1);
    v6 = v7 = varg5 > varg1;
    if (v7) {
        v6 = v8 = this == address(varg4);
    }
    if (v6) {
        v9 = _SafeSub(varg5, varg1);
        fun_transferInternal(this, varg6, varg2, v9);
        return ;
    } else {
        return ;
    }
}

function fun_transferInternal(address varg0, uint256 varg1, address varg2, uint256 varg3) private { 
    if (!varg3) {
        return ;
    } else if (varg0 == address(varg1)) {
        return ;
    } else if (varg2) {
        if (varg0 - this) {
            v0 = varg2.transferFrom(varg0, address(varg1), varg3).gas(msg.gas);
            require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v0, Error('TRANSFER_FROM_FAILED'));
            return ;
        } else {
            v1 = varg2.transfer(address(varg1), varg3).gas(msg.gas);
            require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v1, Error('TRANSFER_FAILED'));
            return ;
        }
    } else {
        v2 = varg1.call().value(varg3).gas(msg.gas);
        require(v2, Error('ETH_TRANSFER_FAILED'));
        return ;
    }
}

function fun_unwrap(uint256 varg0) private { 
    v0, v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    require(v1 >= varg0, InsufficientWETH());
    if (varg0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v6, /* uint256 */ v7 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
        require(v6, v7, RETURNDATASIZE());
        if (v6) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            return ;
        } else {
            return ;
        }
    } else {
        return ;
    }
}

function fun_wrap(uint256 varg0) private { 
    require(varg0 <= this.balance, InsufficientETH());
    if (varg0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            return ;
        } else {
            return ;
        }
    } else {
        return ;
    }
}

function fun_getFeeAmount(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 >> 240;
    require(v0 <= 10000, InvalidFeePercentage());
    if (v0) {
        v1 = varg1 * v0;
        v2 = varg1 * v0 % uint256.max - v1 - (varg1 * v0 % uint256.max < v1);
        require(10000 > v2);
        if (varg1 * v0 % uint256.max - v1 == varg1 * v0 % uint256.max < v1) {
            v3 = v4 = v1 / 10000;
        } else {
            v3 = v5 = (v1 - varg1 * v0 % 10000 >> 4 | v2 - (varg1 * v0 % 10000 > v1) << 252) * 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91;
        }
        if (varg1 * v0 % 10000) {
            require(1 + v3);
            return 1 + v3;
        } else {
            return v3;
        }
    } else {
        return 0;
    }
}

function fun_balanceOf(address varg0, uint256 varg1) private { 
    if (varg0) {
        v0, /* uint256 */ v1 = varg0.balanceOf(address(varg1)).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v2 = v3 = 32;
            if (32 > RETURNDATASIZE()) {
                v2 = v4 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v2 - MEM[64] >= 32);
            return v1;
        } else {
            return 0;
        }
    } else {
        return varg1.balance;
    }
}

function fun_toUint128(uint256 varg0) private { 
    require(int128(varg0) >= 0, SafeCastOverflow());
    return uint128(varg0);
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function receive() public payable { 
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    if (msg.sender - address(_pancakeV3SwapCallback)) {
        MEM[MEM[832]] = 0x32b13d9100000000000000000000000000000000000000000000000000000000;
        revert(MEM[832], 4);
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 192);
        require(!(data.word1 - address(data.word1)));
        require(!(data.word2 - address(data.word2)));
        require(!(data.word3 - uint24(data.word3)));
        require(!(data.word4 - address(data.word4)));
        require(!(data.word6 - address(data.word6)));
        v1 = fun_computePoolAddress(0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54, address(data.word1), address(data.word2), data.word3);
        v2 = v3 = address(v1) != msg.sender;
        if (v3) {
            v4 = fun_computePoolAddress(0, 0, address(data.word1), address(data.word2), data.word3);
            v2 = v5 = address(v4) != msg.sender;
        }
        if (v2) {
            MEM[MEM[832]] = 0x32b13d9100000000000000000000000000000000000000000000000000000000;
            revert(MEM[832], 4);
        } else {
            fun_callback(amount0Delta, amount1Delta, address(data.word1), address(data.word2), address(data.word4), data.word5, address(data.word6));
            return MEM[MEM[832]:MEM[832] + MEM[832]];
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 864;
    if (msg.data.length >= 4) {
        MEM[832] = 0;
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3f4ba83a == function_selector >> 224) {
            unpause();
        } else if (0x44e89504 == function_selector >> 224) {
            0x44e89504();
        } else if (0x4aa4a4fc == function_selector >> 224) {
            WETH9();
        } else if (0x5c975abb == function_selector >> 224) {
            paused();
        } else if (0x62c06767 == function_selector >> 224) {
            sweep(address,address,uint256);
        } else if (0x715018a6 == function_selector >> 224) {
            renounceOwnership();
        } else if (0x79ba5097 == function_selector >> 224) {
            acceptOwnership();
        } else if (0x8456cb59 == function_selector >> 224) {
            pause();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x954e863e == function_selector >> 224) {
            whitelistAdapter(address,bool);
        } else if (0xab6291fe == function_selector >> 224) {
            lockAcquired(bytes);
        } else if (0xb3f00674 == function_selector >> 224) {
            feeReceiver();
        } else if (0xe30c3978 == function_selector >> 224) {
            pendingOwner();
        } else if (0xedad400c == function_selector >> 224) {
            0xedad400c();
        } else if (0xefdcd974 == function_selector >> 224) {
            setFeeReceiver(address);
        } else if (0xf2fde38b == function_selector >> 224) {
            transferOwnership(address);
        } else if (0xf6f38e7c == function_selector >> 224) {
            isAdapterWhitelisted(address);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
