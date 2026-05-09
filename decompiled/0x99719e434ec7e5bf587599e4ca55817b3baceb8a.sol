// Decompiled by library.dedaub.com
// 2026.04.21 23:10 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _swapCallback; // TRANSIENT_STORAGE[0x0]
mapping (address => bool) _whitelist; // STORAGE[0x1]
int256 stor_2; // STORAGE[0x2]
uint256 _onMorphoFlashLoan; // TRANSIENT_STORAGE[0x10]
address _owner; // STORAGE[0x0] bytes 0 to 19
uint256 tstor_40; // TRANSIENT_STORAGE[0x40]


// Events
WhitelistUpdated(address, bool);

function 0xd9dddc1b() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_2;
}

function morpho() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
}

function whitelist(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _whitelist[varg0];
}

function swapCallback(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(msg.data[4 + varg1] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_swapCallback, Error(32, 3, 0x2163620000000000000000000000000000000000000000000000000000000000));
    if (varg0) {
        0x1622(varg1.word1 >> 96, msg.sender, varg0);
        exit;
    } else {
        exit;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(0x4444c5dc75cb358380d2e3de08a90) == msg.sender, Error(0x21706d));
    require(_swapCallback, Error(32, 3, 0x2163620000000000000000000000000000000000000000000000000000000000));
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= uint8.max + 1);
    require(!(address(rawData.word1) - rawData.word1));
    require(!(address(rawData.word2) - rawData.word2));
    require(!(rawData.word3 - uint24(rawData.word3)));
    require(!(rawData.word4 - int24(rawData.word4)));
    require(!(address(rawData.word5) - rawData.word5));
    require(!(address(rawData.word6) - rawData.word6));
    require(rawData.word8 <= uint64.max);
    require(4 + rawData + 32 + rawData.word8 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[4 + rawData + 32 + rawData.word8] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](msg.data[4 + rawData + 32 + rawData.word8]);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word8]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData + 32 + rawData.word8]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + rawData.word8 + msg.data[4 + rawData + 32 + rawData.word8] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v1.data, 4 + rawData + 32 + rawData.word8 + 32, msg.data[4 + rawData + 32 + rawData.word8]);
    v1[msg.data[4 + rawData + 32 + rawData.word8]] = 0;
    v2 = v3 = 0xe33();
    v3.word0 = address(rawData.word1);
    v3.word1 = address(rawData.word2);
    v3.word2 = uint24(rawData.word3);
    v3.word3 = int24(rawData.word4);
    v3.word4 = address(rawData.word5);
    require(rawData.word7 != int256.min, Panic(17)); // arithmetic overflow or underflow
    if (address(rawData.word6) != address(rawData.word1)) {
        v4 = v5 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v4 = v6 = 0x1000276a4;
    }
    v7 = 0xe42();
    v7.word0 = address(rawData.word6) == address(rawData.word1);
    v7.word1 = 0 - rawData.word7;
    v7.word2 = address(v4);
    v8 = new bytes[](v1.length);
    MCOPY(v8.data, v1.data, v1.length);
    v8[v1.length] = 0;
    v9 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4), bool(v7.word0), v7.word1, address(v7.word2), v8).gas(msg.gas);
    if (v9) {
        v10 = v11 = 2568;
        v12 = v13 = 0;
        if (v9) {
            v14 = v15 = 2620;
            if (32 <= RETURNDATASIZE()) {
                require(!((v16 + 32 > uint64.max) | (v16 + 32 < v16)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v16 + 32;
                v17 = v18 = v16 + 32;
            }
        }
        v10 = v19 = int128(v12);
        if (int128(v12 >> 128) > 0) {
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v20 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(MEM[v2]), this, uint128(v12 >> 128)).gas(msg.gas);
            if (v20) {
                if (v20) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        if (v19 > 0) {
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v21 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(MEM[v2 + 32]), this, uint128(v12)).gas(msg.gas);
            if (v21) {
                if (v21) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        if (int128(v12 >> 128) < 0) {
            v2 = v22 = 5973;
            v23, v24, v25, v26 = v27 = 0x171e(address(MEM[v2]), 0x298ab, 0x29567, 0x29542);
            v28 = v29 = uint128(v23);
        }
        if (v10 < 0) {
            v2 = v30 = 0x29521;
            v31, v32, v33, v26 = v34 = 0x171e(address(MEM[v2 + 32]), 0x294f6, 0x294cb, 0x294a6);
            v28 = v35 = uint128(v31);
        }
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v36 = new uint256[](0);
        MCOPY(v36.data, 32 + MEM[64], 0);
        MEM[v36.data] = 0;
        return v36;
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v37 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v26)).gas(msg.gas);
        if (v37) {
            if (v37) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (address(v26)) {
                0x1622(address(v26), 0x4444c5dc75cb358380d2e3de08a90, v28);
                v38 = v39 = MEM[64];
                v40 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                if (v40) {
                    if (!v40) {
                        // Unknown jump to Block ['0x1755', '0x29521']. Refer to 3-address code (TAC);
                    }
                }
            } else {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                v41 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v28).gas(msg.gas);
                if (v41) {
                    if (v41) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v38 = v42 = MEM[64];
                    v43 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v28).gas(msg.gas);
                    if (v43) {
                        if (!v43) {
                            // Unknown jump to Block ['0x1755', '0x29521']. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
            v14 = v44 = 0x297bf;
            if (32 <= RETURNDATASIZE()) {
                require(!((v38 + 32 > uint64.max) | (v38 + 32 < v38)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v38 + 32;
                v17 = v45 = v38 + 32;
            }
        }
        require(!((v38 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v38 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v17 = v38 + RETURNDATASIZE();
        require(v17 - v38 >= 32);
        v12 = MEM[v38];
        // Unknown jump to Block ['0x297bf', '0xa3c']. Refer to 3-address code (TAC);
        // Unknown jump to Block ['0x1755', '0x29521']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x16f3. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xa08. Refer to 3-address code (TAC);
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
}

function 0x8e9b1220(struct(4) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(0xba1333333333a1ba1108e8412f11850a5c319ba9) == msg.sender, Error('!vault'));
    require(4 + varg0 + 32 + msg.data[4 + varg0] - (4 + varg0 + 32) >= 96);
    require(!(address(varg0.word1) - varg0.word1));
    require(varg0.word3 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word3 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](msg.data[4 + varg0 + 32 + varg0.word3]);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg0 + 32 + varg0.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg0 + 32 + varg0.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + 32 + varg0.word3 + msg.data[4 + varg0 + 32 + varg0.word3] + 32 <= 4 + varg0 + 32 + msg.data[4 + varg0]);
    CALLDATACOPY(v1.data, 4 + varg0 + 32 + varg0.word3 + 32, msg.data[4 + varg0 + 32 + varg0.word3]);
    v1[msg.data[4 + varg0 + 32 + varg0.word3]] = 0;
    require((address(0xba1333333333a1ba1108e8412f11850a5c319ba9)).code.size);
    v2 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).sendTo(address(varg0.word1), this, varg0.word2).gas(msg.gas);
    if (v2) {
        if (v2) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        _swapCallback = 1;
        require(v1.length >= 1, DataTooShort());
        if (byte(MEM[v1.data], 0x0)) {
            require((byte(MEM[v1.data], 0x0)) <= 100);
            v3 = 0;
            v4 = 1;
            while (v3 < (byte(MEM[v1.data], 0x0))) {
                require(v4 + 22 <= v1.length, DataTooShort());
                v4 = v4 + (MEM[v1 + v4 + 52] >> 240) + 22;
                require(v4 <= v1.length, DataTooShort());
                v5 = 0x135b(MEM[v1 + v4 + 52] >> 240);
                v6 = 0;
                while (v6 < (MEM[v1 + v4 + 52] >> 240) + 31 >> 5) {
                    v5[v6 << 5] = MEM[v1 + v4 + (v6 << 5) + 54];
                    v6 = v6 + 1;
                }
                v7, /* uint256 */ v8 = (v1[v4] >> 96).delegatecall(MEM[v11d0x1430_0x0.data:v11d0x1430_0x0.data + v11d0x1430_0x0.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v9 = v10 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = v11 = new bytes[](RETURNDATASIZE());
                    require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v8 = v11.data;
                    RETURNDATACOPY(v8, 0, RETURNDATASIZE());
                }
                if (!v7) {
                    require(MEM[v9], DelegatecallFailed());
                    revert(32 + v9, MEM[v9]);
                } else {
                    v3 = v3 + 1;
                }
            }
        }
        _swapCallback = 0;
        v12 = new bytes[](68);
        MEM[v12.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v12 + 36] = address(0xba1333333333a1ba1108e8412f11850a5c319ba9);
        MEM[v12 + 68] = varg0.word2;
        require(!((v12 + 128 > uint64.max) | (v12 + 128 < v12)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v12.length;
        v14, /* uint256 */ v15 = address(varg0.word1).transfer(address(0xba1333333333a1ba1108e8412f11850a5c319ba9), varg0.word2).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v16 = v17 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v16 = v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v15 = v18.data;
            RETURNDATACOPY(v15, 0, RETURNDATASIZE());
        }
        v19 = !v14;
        if (bool(v14)) {
            v19 = v20 = bool(MEM[v16]);
            if (v20) {
                require(v16 + MEM[v16] + 32 - (v16 + 32) >= 32);
                require(!(bool(MEM[v16 + 32]) - MEM[v16 + 32]));
                v19 = v21 = !MEM[v16 + 32];
            }
        }
        require(!v19, TransferFailed());
        v22, /* uint256 */ v23 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).settle(address(varg0.word1), varg0.word2).gas(msg.gas);
        if (v22) {
            if (v22) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v24 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v24 = v25 = MEM[64] + 32;
                }
                require(v24 - MEM[64] >= 32);
                exit;
            } else {
                exit;
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x120e(uint256 varg0) private { 
    require(5 <= 5 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 5 + varg0;
}

function 0x121c(uint256 varg0) private { 
    require(varg0 <= varg0 + 5, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 5;
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function 0x122a(uint256 varg0) private { 
    require(varg0 <= varg0 + 33, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 33;
}

function 0x1246(uint256 varg0) private { 
    require(23 <= 23 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 23 + varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x8a57589a(struct(4) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(0xba1333333333a1ba1108e8412f11850a5c319ba9) == msg.sender, Error('!vault'));
    require(4 + varg0 + 32 + msg.data[4 + varg0] - (4 + varg0 + 32) >= 96);
    require(varg0.word1 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word1 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](msg.data[4 + varg0 + 32 + varg0.word1]);
    require(!((v1 + (32 + (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(4 + varg0 + 32 + varg0.word1 + (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32 <= 4 + varg0 + 32 + msg.data[4 + varg0]);
    v4 = v5 = 32 + (4 + varg0 + 32 + varg0.word1);
    while (v4 < 4 + varg0 + 32 + varg0.word1 + (msg.data[4 + varg0 + 32 + varg0.word1] << 5) + 32) {
        require(!(address(msg.data[v4]) - msg.data[v4]));
        MEM[v2] = msg.data[v4];
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    require(varg0.word2 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word2 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](msg.data[4 + varg0 + 32 + varg0.word2]);
    require(!((v6 + (32 + (msg.data[4 + varg0 + 32 + varg0.word2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (msg.data[4 + varg0 + 32 + varg0.word2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    v7 = v8 = v6.data;
    require(4 + varg0 + 32 + varg0.word2 + (msg.data[4 + varg0 + 32 + varg0.word2] << 5) + 32 <= 4 + varg0 + 32 + msg.data[4 + varg0]);
    v9 = v10 = 32 + (4 + varg0 + 32 + varg0.word2);
    while (v9 < 4 + varg0 + 32 + varg0.word2 + (msg.data[4 + varg0 + 32 + varg0.word2] << 5) + 32) {
        MEM[v7] = msg.data[v9];
        v9 += 32;
        v7 += 32;
    }
    require(varg0.word3 <= uint64.max);
    require(4 + varg0 + 32 + varg0.word3 + 31 < 4 + varg0 + 32 + msg.data[4 + varg0]);
    require(msg.data[4 + varg0 + 32 + varg0.word3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v11 = new bytes[](msg.data[4 + varg0 + 32 + varg0.word3]);
    require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg0 + 32 + varg0.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + varg0 + 32 + varg0.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + 32 + varg0.word3 + msg.data[4 + varg0 + 32 + varg0.word3] + 32 <= 4 + varg0 + 32 + msg.data[4 + varg0]);
    CALLDATACOPY(v11.data, 4 + varg0 + 32 + varg0.word3 + 32, msg.data[4 + varg0 + 32 + varg0.word3]);
    v11[msg.data[4 + varg0 + 32 + varg0.word3]] = 0;
    v12 = v13 = 0;
    while (1) {
        if (v12 < v1.length) {
            require(v12 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v12 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require((address(0xba1333333333a1ba1108e8412f11850a5c319ba9)).code.size);
            v14 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).sendTo(address(v1[v12]), this, v6[v12]).gas(msg.gas);
            if (!v14) {
                break;
            } else {
                if (v14) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v12 = v12 + 1;
            }
        } else {
            _swapCallback = 1;
            require(v11.length >= 1, DataTooShort());
            if (byte(MEM[v11.data], 0x0)) {
                require((byte(MEM[v11.data], 0x0)) <= 100);
                v15 = v16 = 0;
                v17 = v18 = 1;
                while (v15 < (byte(MEM[v11.data], 0x0))) {
                    require(v17 + 22 <= v11.length, DataTooShort());
                    v17 = v17 + (MEM[v11 + v17 + 52] >> 240) + 22;
                    require(v17 <= v11.length, DataTooShort());
                    v19 = 0x135b(MEM[v11 + v17 + 52] >> 240);
                    v20 = v21 = 0;
                    while (v20 < (MEM[v11 + v17 + 52] >> 240) + 31 >> 5) {
                        v19[v20 << 5] = MEM[v11 + v17 + (v20 << 5) + 54];
                        v20 = v20 + 1;
                    }
                    v22, /* uint256 */ v23 = (v11[v17] >> 96).delegatecall(MEM[v13c60x1430_0x0V0x5c0.data:v13c60x1430_0x0V0x5c0.data + v13c60x1430_0x0V0x5c0.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v24 = v25 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v24 = new bytes[](RETURNDATASIZE());
                        require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                        v23 = v24.data;
                        RETURNDATACOPY(v23, 0, RETURNDATASIZE());
                    }
                    if (!v22) {
                        require(MEM[v24], DelegatecallFailed());
                        revert(32 + v24, MEM[v24]);
                    } else {
                        v15 = v15 + 1;
                    }
                }
            }
            _swapCallback = 0;
            v26 = v27 = 0;
            while (1) {
                if (v26 < v1.length) {
                    require(v26 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(v26 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v28 = new bytes[](68);
                    MEM[v28.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v28 + 36] = address(0xba1333333333a1ba1108e8412f11850a5c319ba9);
                    MEM[v28 + 68] = v6[v26];
                    require(!((v28 + 128 > uint64.max) | (v28 + 128 < v28)), Panic(65)); // failed memory allocation (too much memory)
                    v29 = v28.length;
                    v30 = address(v1[v26]).transfer(address(0xba1333333333a1ba1108e8412f11850a5c319ba9), v6[v26]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v31 = v32 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v31 = v33 = new bytes[](RETURNDATASIZE());
                        require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
                    }
                    v34 = !v30;
                    if (bool(v30)) {
                        v34 = v35 = bool(MEM[v31]);
                        if (v35) {
                            require(v31 + MEM[v31] + 32 - (v31 + 32) >= 32);
                            require(!(bool(MEM[v31 + 32]) - MEM[v31 + 32]));
                            v34 = v36 = !MEM[v31 + 32];
                        }
                    }
                    require(!v34, TransferFailed());
                    require(v26 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(v26 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v37, /* uint256 */ v38 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).settle(address(v1[v26]), v6[v26]).gas(msg.gas);
                    if (!v37) {
                        break;
                    } else {
                        if (v37) {
                            v39 = v40 = 32;
                            if (v40 > RETURNDATASIZE()) {
                                v39 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v39 - MEM[64] >= 32);
                        }
                        v26 = v26 + 1;
                    }
                } else {
                    exit;
                }
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x728260d0(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), Unauthorized());
    v0 = v1 = varg0 < 0;
    if (varg0 >= 0) {
        v0 = v2 = varg0 > 10000;
    }
    require(!v0);
    stor_2 = varg0;
    emit 0xef662bd668a644bdcc5d2b191c1c30023d346ca98276d4c21329d4f05af986f(stor_2, varg0);
}

function weth() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function 0x135b(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) - 32);
    return v0;
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb) == msg.sender, Error('!morpho'));
    _swapCallback = 1;
    if (STORAGE[1]) {
        if ((byte(data.word1, 0x0)) + 1 >= _onMorphoFlashLoan) {
            v1 = 0x138d();
            require(v1.length >= 1, DataTooShort());
            if (byte(MEM[v1.data], 0x0)) {
                require((byte(MEM[v1.data], 0x0)) <= 100);
                v2 = v3 = 0;
                v4 = v5 = 1;
                while (v2 < (byte(MEM[v1.data], 0x0))) {
                    require(v4 + 22 <= v1.length, DataTooShort());
                    v4 = v4 + (MEM[v1 + v4 + 52] >> 240) + 22;
                    require(v4 <= v1.length, DataTooShort());
                    v6 = 0x135b(MEM[v1 + v4 + 52] >> 240);
                    v7 = v8 = 0;
                    while (v7 < (MEM[v1 + v4 + 52] >> 240) + 31 >> 5) {
                        v6[v7 << 5] = MEM[v1 + v4 + (v7 << 5) + 54];
                        v7 = v7 + 1;
                    }
                    v9, /* uint256 */ v10 = (v1[v4] >> 96).delegatecall(MEM[v13c60x1430_0x0V0x45a.data:v13c60x1430_0x0V0x45a.data + v13c60x1430_0x0V0x45a.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v11 = v12 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v11 = new bytes[](RETURNDATASIZE());
                        require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
                        v10 = v11.data;
                        RETURNDATACOPY(v10, 0, RETURNDATASIZE());
                    }
                    if (!v9) {
                        require(MEM[v11], DelegatecallFailed());
                        revert(32 + v11, MEM[v11]);
                    } else {
                        v2 = v2 + 1;
                    }
                }
            }
            0x41c(byte(data.word1, 0x0), 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, varg0);
        } else {
            v13 = new struct(2);
            v14 = v13.data;
            v13.word1 = bytes1((byte(data.word1, 0x0)) + 1 << 248);
            v13.word0 = 1;
            require(!((v13 + 64 > uint64.max) | (v13 + 64 < v13)), Panic(65)); // failed memory allocation (too much memory)
            require((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size);
            v15 = new bytes[](v13.word0.length);
            MCOPY(v15.data, v13.data, v13.word0.length);
            v15[v13.word0.length] = 0;
            v16 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(address(STORAGE[33 + (byte(data.word1, 0x0))]), STORAGE[(byte(data.word1, 0x0)) + 49], v15).gas(msg.gas);
            if (v16) {
                if (v16) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v17, /* uint256 */ v18 = address(STORAGE[32 + (byte(data.word1, 0x0))]).allowance(this, address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).gas(msg.gas);
                if (v17) {
                    v18 = v19 = 0;
                    if (v17) {
                        if (32 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v20 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 32;
                            v20 = v21 = MEM[64] + 32;
                        }
                        require(v20 - MEM[64] >= 32);
                    }
                    if (v18 < varg0) {
                        v22 = new bytes[](68);
                        MEM[v22.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                        MEM[v22 + 36] = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                        MEM[v22 + 68] = uint256.max;
                        require(!((v22 + 128 > uint64.max) | (v22 + 128 < v22)), Panic(65)); // failed memory allocation (too much memory)
                        v23 = v22.length;
                        v24 = v25, /* uint256 */ v26 = address(STORAGE[32 + (byte(data.word1, 0x0))]).approve(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb), uint256.max).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v27 = v28 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v27 = v29 = new bytes[](RETURNDATASIZE());
                            require(!((v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                            v26 = v29.data;
                            RETURNDATACOPY(v26, 0, RETURNDATASIZE());
                        }
                        if (v25) {
                            v24 = v30 = !MEM[v27];
                            if (bool(MEM[v27])) {
                                require(v27 + MEM[v27] + 32 - (v27 + 32) >= 32);
                                v24 = MEM[v27 + 32];
                                require(!(bool(v24) - v24));
                            }
                        }
                        if (v24) {
                            v31 = v32 = !(address(STORAGE[32 + (byte(data.word1, 0x0))])).code.size;
                        } else {
                            v31 = !v24;
                        }
                        if (v31) {
                            v33 = new bytes[](68);
                            MEM[v33.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                            MEM[v33 + 36] = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
                            MEM[v33 + 68] = 0;
                            require(!((v33 + 128 > uint64.max) | (v33 + 128 < v33)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
                            v34 = v33.length;
                            v35 = v33.data;
                            v36, /* uint256 */ v37 = address(STORAGE[32 + (byte(data.word1, 0x0))]).approve(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb), 0).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v38 = v39 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v38 = new bytes[](RETURNDATASIZE());
                                require(!((v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                                v37 = v38.data;
                                RETURNDATACOPY(v37, 0, RETURNDATASIZE());
                            }
                            if (!v36) {
                                require(!MEM[v38], 32 + v38, MEM[v38]);
                                v40 = new bytes[](v41.length);
                                MCOPY(v40.data, v41.data, v41.length);
                                v40[v41.length][32] = 0;
                                revert(Error(v40));
                            } else {
                                if (!MEM[v38]) {
                                    require((address(STORAGE[32 + (byte(data.word1, 0x0))])).code.size, Error('Address: call to non-contract'));
                                }
                                v42 = v43 = !MEM[v38];
                                if (bool(MEM[v38])) {
                                    require(v38 + MEM[v38] + 32 - (v38 + 32) >= 32);
                                    v42 = MEM[v38 + 32];
                                    require(!(bool(v42) - v42));
                                }
                                require(v42, Error('SafeERC20: ERC20 operation did not succeed'));
                                require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
                                v44 = v22.length;
                                v45 = v22.data;
                                v46, /* uint256 */ v47 = address(STORAGE[32 + (byte(data.word1, 0x0))]).approve(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb), uint256.max).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v48 = v49 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v48 = new bytes[](RETURNDATASIZE());
                                    require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                                    v47 = v48.data;
                                    RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                                }
                                if (!v46) {
                                    require(!MEM[v48], 32 + v48, MEM[v48]);
                                    v50 = new bytes[](v51.length);
                                    MCOPY(v50.data, v51.data, v51.length);
                                    v50[v51.length][32] = 0;
                                    revert(Error(v50));
                                } else {
                                    if (!MEM[v48]) {
                                        require((address(STORAGE[32 + (byte(data.word1, 0x0))])).code.size, Error('Address: call to non-contract'));
                                    }
                                    v52 = v53 = !MEM[v48];
                                    if (bool(MEM[v48])) {
                                        require(v48 + MEM[v48] + 32 - (v48 + 32) >= 32);
                                        v52 = MEM[v48 + 32];
                                        require(!(bool(v52) - v52));
                                    }
                                    require(v52, Error('SafeERC20: ERC20 operation did not succeed'));
                                }
                            }
                        }
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 96);
        require(!(address(data.word1) - data.word1));
        require(data.word3 <= uint64.max);
        require(4 + data + 32 + data.word3 + 31 < 4 + data + 32 + msg.data[4 + data]);
        require(msg.data[4 + data + 32 + data.word3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v54 = new bytes[](msg.data[4 + data + 32 + data.word3]);
        require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + data + 32 + data.word3]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
        require(4 + data + 32 + data.word3 + msg.data[4 + data + 32 + data.word3] + 32 <= 4 + data + 32 + msg.data[4 + data]);
        CALLDATACOPY(v54.data, 4 + data + 32 + data.word3 + 32, msg.data[4 + data + 32 + data.word3]);
        v54[msg.data[4 + data + 32 + data.word3]] = 0;
        require(v54.length >= 1, DataTooShort());
        if (byte(MEM[v54.data], 0x0)) {
            require((byte(MEM[v54.data], 0x0)) <= 100);
            v55 = v56 = 0;
            v57 = v58 = 1;
            while (v55 < (byte(MEM[v54.data], 0x0))) {
                require(v57 + 22 <= v54.length, DataTooShort());
                v57 = v57 + (MEM[v54 + v57 + 52] >> 240) + 22;
                require(v57 <= v54.length, DataTooShort());
                v59 = 0x135b(MEM[v54 + v57 + 52] >> 240);
                v60 = v61 = 0;
                while (v60 < (MEM[v54 + v57 + 52] >> 240) + 31 >> 5) {
                    v59[v60 << 5] = MEM[v54 + v57 + (v60 << 5) + 54];
                    v60 = v60 + 1;
                }
                v62, /* uint256 */ v63 = (v54[v57] >> 96).delegatecall(MEM[v13c60x1430_0x0V0x36c.data:v13c60x1430_0x0V0x36c.data + v13c60x1430_0x0V0x36c.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v64 = v65 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v64 = new bytes[](RETURNDATASIZE());
                    require(!((v64 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v64 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v64)), Panic(65)); // failed memory allocation (too much memory)
                    v63 = v64.data;
                    RETURNDATACOPY(v63, 0, RETURNDATASIZE());
                }
                if (!v62) {
                    require(MEM[v64], DelegatecallFailed());
                    revert(32 + v64, MEM[v64]);
                } else {
                    v55 = v55 + 1;
                }
            }
        }
        0x14b6(address(data.word1), 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, varg0);
    }
    _swapCallback = 0;
}

function 0x138d() private { 
    v0 = 0x135b(tstor_40);
    v1 = v2 = 0;
    while (v1 < tstor_40 + 31 >> 5) {
        v0[v1 << 5] = STORAGE[v1 + 65];
        v1 = v1 + 1;
    }
    return v0;
}

function balancerVault() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xba1333333333a1ba1108e8412f11850a5c319ba9);
}

function updateWhitelist(address account, bool isWhitelisted) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - _owner), Unauthorized());
    _whitelist[account] = isWhitelisted;
    emit WhitelistUpdated(account, isWhitelisted);
}

function 0x14b6(address varg0, address varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = varg0.allowance(this, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
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
    }
    if (v1 >= varg2) {
        return ;
    } else {
        v5 = new bytes[](68);
        MEM[v5.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v5 + 36] = varg1;
        MEM[v5 + 68] = uint256.max;
        require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v5.length;
        v7 = v8, /* uint256 */ v9 = varg0.approve(varg1, uint256.max).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v10 = v11 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = v12 = new bytes[](RETURNDATASIZE());
            require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v12.data;
            RETURNDATACOPY(v9, 0, RETURNDATASIZE());
        }
        if (v8) {
            v7 = v13 = !MEM[v10];
            if (bool(MEM[v10])) {
                require(v10 + MEM[v10] + 32 - (v10 + 32) >= 32);
                v7 = MEM[v10 + 32];
                require(!(bool(v7) - v7));
            }
        }
        if (v7) {
            v14 = v15 = !varg0.code.size;
        } else {
            v14 = !v7;
        }
        if (v14) {
            v16 = new bytes[](68);
            MEM[v16.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
            MEM[v16 + 36] = varg1;
            MEM[v16 + 68] = 0;
            require(!((v16 + 128 > uint64.max) | (v16 + 128 < v16)), Panic(65)); // failed memory allocation (too much memory)
            require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
            v17 = v16.length;
            v18 = v16.data;
            v19, /* uint256 */ v20 = varg0.approve(varg1, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v21 = v22 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v21 = new bytes[](RETURNDATASIZE());
                require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                v20 = v21.data;
                RETURNDATACOPY(v20, 0, RETURNDATASIZE());
            }
            if (!v19) {
                require(!MEM[v21], 32 + v21, MEM[v21]);
                v23 = new bytes[](v24.length);
                MCOPY(v23.data, v24.data, v24.length);
                v23[v24.length][32] = 0;
                revert(Error(v23));
            } else {
                if (!MEM[v21]) {
                    require(varg0.code.size, Error('Address: call to non-contract'));
                }
                v25 = v26 = !MEM[v21];
                if (bool(MEM[v21])) {
                    require(v21 + MEM[v21] + 32 - (v21 + 32) >= 32);
                    v25 = MEM[v21 + 32];
                    require(!(bool(v25) - v25));
                }
                require(v25, Error('SafeERC20: ERC20 operation did not succeed'));
                require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
                v27 = v5.length;
                v28 = v5.data;
                v29, /* uint256 */ v30 = varg0.approve(varg1, uint256.max).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v31 = v32 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v31 = new bytes[](RETURNDATASIZE());
                    require(!((v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v31)), Panic(65)); // failed memory allocation (too much memory)
                    v30 = v31.data;
                    RETURNDATACOPY(v30, 0, RETURNDATASIZE());
                }
                if (!v29) {
                    require(!MEM[v31], 32 + v31, MEM[v31]);
                    v33 = new bytes[](v34.length);
                    MCOPY(v33.data, v34.data, v34.length);
                    v33[v34.length][32] = 0;
                    revert(Error(v33));
                } else {
                    if (!MEM[v31]) {
                        require(varg0.code.size, Error('Address: call to non-contract'));
                    }
                    v35 = v36 = !MEM[v31];
                    if (bool(MEM[v31])) {
                        require(v31 + MEM[v31] + 32 - (v31 + 32) >= 32);
                        v35 = MEM[v31 + 32];
                        require(!(bool(v35) - v35));
                    }
                    require(v35, Error('SafeERC20: ERC20 operation did not succeed'));
                    return ;
                }
            }
        } else {
            return ;
        }
    }
}

function 0x1622(uint256 varg0, address varg1, uint256 varg2) private { 
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
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(bool(MEM[v4 + 32]) - MEM[v4 + 32]));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed());
    return ;
}

function 0x171e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(int128(v0) != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - int128(v0), varg2, varg3, varg0;
}

function 0x192f(uint8 varg0, uint256 varg1, uint256 varg2) private { 
    if (varg0) {
        if (varg0 - 1) {
            if (varg0 - 2) {
                require(!(3 - varg0), fullExit());
                v0 = varg1 + varg2;
                require(v0 - varg1 >= 96);
                require(msg.data[varg1] <= uint64.max);
                v1 = varg1 + msg.data[varg1];
                require(v1 + 31 < v0);
                require(msg.data[v1] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v2 = new uint256[](msg.data[v1]);
                require(!((v2 + (32 + (msg.data[v1] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (msg.data[v1] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
                v3 = v4 = v2.data;
                require(v1 + (msg.data[v1] << 5) + 32 <= v0);
                v5 = v6 = 32 + v1;
                while (v5 < v1 + (msg.data[v1] << 5) + 32) {
                    require(!(address(msg.data[v5]) - msg.data[v5]));
                    MEM[v3] = msg.data[v5];
                    v3 = v3 + 32;
                    v5 = v5 + 32;
                }
                require(msg.data[varg1 + 32] <= uint64.max);
                v7 = varg1 + msg.data[varg1 + 32];
                require(v7 + 31 < v0);
                require(msg.data[v7] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = new uint256[](msg.data[v7]);
                require(!((v8 + (32 + (msg.data[v7] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (msg.data[v7] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                v9 = v10 = v8.data;
                require(v7 + (msg.data[v7] << 5) + 32 <= v0);
                v11 = v12 = 32 + v7;
                while (v11 < v7 + (msg.data[v7] << 5) + 32) {
                    MEM[v9] = msg.data[v11];
                    v11 += 32;
                    v9 += 32;
                }
                require(msg.data[varg1 + 64] <= uint64.max);
                require(varg1 + msg.data[varg1 + 64] + 31 < v0);
                v13 = msg.data[varg1 + msg.data[varg1 + 64]];
                require(v13 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v14 = new bytes[](v13);
                require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                require(varg1 + msg.data[varg1 + 64] + v13 + 32 <= v0);
                CALLDATACOPY(v14.data, varg1 + msg.data[varg1 + 64] + 32, v13);
                v14[v13] = 0;
                v15 = v16 = !v2.length;
                if (bool(v2.length)) {
                    v15 = v17 = v2.length > 50;
                }
                require(!v15, fullExit());
                STORAGE[1] = 1;
                _onMorphoFlashLoan = v2.length;
                v18 = v19 = 0;
                while (v18 < v2.length) {
                    STORAGE[32 + v18] = v2[v18];
                    STORAGE[48 + v18] = v8[v18];
                    v18 = v18 + 1;
                }
                tstor_40 = v14.length;
                v20 = v21 = 0;
                while (v20 < v14.length + 31 >> 5) {
                    STORAGE[v20 + 65] = v14[v20 << 5];
                    v20 = v20 + 1;
                }
                require(v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v22 = new bytes[](1);
                MEM[v22.data] = 0;
                require(!((v22 + 64 > uint64.max) | (v22 + 64 < v22)), Panic(65)); // failed memory allocation (too much memory)
                require((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size);
                MEM[MEM[64]] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                v23 = new bytes[](v22.length);
                MCOPY(v23.data, v22.data, v22.length);
                v23[v22.length] = 0;
                v24 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(address(MEM[v2.data]), MEM[v8.data], v23).gas(msg.gas);
                require(v24, MEM[64], RETURNDATASIZE());
                if (v24) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                return ;
            } else {
                STORAGE[1] = 0;
                require((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size);
                v25 = new uint256[](varg2);
                CALLDATACOPY(v25.data, varg1, varg2);
                MEM[32 + (varg2 + v25)] = 0;
                v26 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(address(msg.data[varg1]), msg.data[varg1 + 32], v25).gas(msg.gas);
                require(v26, MEM[64], RETURNDATASIZE());
                if (v26) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                return ;
            }
        } else {
            MEM[MEM[64] + 32] = 0x8a57589a00000000000000000000000000000000000000000000000000000000;
            v27 = v28 = 0;
            MEM[MEM[64] + 36] = 32;
            MEM[MEM[64] + 36 + 32] = varg2;
            CALLDATACOPY(MEM[64] + 36 + 32 + 32, varg1, varg2);
            MEM[32 + (varg2 + (MEM[64] + 36 + 32))] = 0;
            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v29 = v30 = MEM[64];
            MEM[v30] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
            MEM[v30 + 4] = 32;
            MEM[v30 + 4 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32;
            MCOPY(v30 + 4 + 32 + 32, 32 + MEM[64], (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32);
            MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32 + (v30 + 4 + 32))] = 0;
            v31 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32)) + (v30 + 4 + 32) + 32;
        }
    } else {
        MEM[MEM[64] + 32] = 0x8e9b122000000000000000000000000000000000000000000000000000000000;
        v27 = v32 = 0;
        MEM[MEM[64] + 36] = 32;
        MEM[MEM[64] + 36 + 32] = varg2;
        CALLDATACOPY(MEM[64] + 36 + 32 + 32, varg1, varg2);
        MEM[32 + (varg2 + (MEM[64] + 36 + 32))] = 0;
        require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v29 = v33 = MEM[64];
        MEM[v33] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
        MEM[v33 + 4] = 32;
        MEM[v33 + 4 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32;
        MCOPY(v33 + 4 + 32 + 32, 32 + MEM[64], (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32);
        MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32 + (v33 + 4 + 32))] = 0;
        v31 = v34 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + (MEM[64] + 36 + 32) + 32 - MEM[64] - 32)) + (v33 + 4 + 32) + 32;
    }
    v35 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).call(MEM[v19cd_0x1:v19cd_0x1 + v8b3V0x8b6V0x29686 - v19cd_0x1], MEM[v19cd_0x1:v19cd_0x1 + v197e_0x3]).value(v27).gas(msg.gas);
    require(v35, MEM[64], RETURNDATASIZE());
    if (v35) {
        RETURNDATACOPY(v29, 0, RETURNDATASIZE());
        require(!((v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v29 + RETURNDATASIZE() - v29 >= 32);
        require(MEM[v29] <= uint64.max);
        require(v29 + MEM[v29] + 31 < v29 + RETURNDATASIZE());
        v36 = MEM[v29 + MEM[v29]];
        require(v36 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v37 = new bytes[](v36);
        require(!((v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v36) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v36) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v37)), Panic(65)); // failed memory allocation (too much memory)
        require(v29 + MEM[v29] + v36 + 32 <= v29 + RETURNDATASIZE());
        MCOPY(v37.data, v29 + MEM[v29] + 32, v36);
        v37[v36] = 0;
        return ;
    } else {
        return ;
    }
}

function 0x1a3b(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_swapCallback, Error(32, 3, 0x2163620000000000000000000000000000000000000000000000000000000000));
    if (amount0Delta > 0) {
    }
    if (v1) {
        0x1622(data.word1 >> 96, msg.sender, v1);
        exit;
    } else {
        exit;
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_swapCallback, Error(32, 3, 0x2163620000000000000000000000000000000000000000000000000000000000));
    if (amount0Delta > 0) {
    }
    if (v1) {
        0x1622(data.word1 >> 96, msg.sender, v1);
        exit;
    } else {
        exit;
    }
}

function 0x41c(uint256 varg0, address varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = address(STORAGE[32 + varg0]).allowance(this, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
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
    }
    if (v1 >= varg2) {
        return ;
    } else {
        v5 = new bytes[](68);
        MEM[v5.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v5 + 36] = varg1;
        MEM[v5 + 68] = uint256.max;
        require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v5.length;
        v7 = v8, /* uint256 */ v9 = address(STORAGE[32 + varg0]).approve(varg1, uint256.max).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v10 = v11 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = v12 = new bytes[](RETURNDATASIZE());
            require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v12.data;
            RETURNDATACOPY(v9, 0, RETURNDATASIZE());
        }
        if (v8) {
            v7 = v13 = !MEM[v10];
            if (bool(MEM[v10])) {
                require(v10 + MEM[v10] + 32 - (v10 + 32) >= 32);
                v7 = MEM[v10 + 32];
                require(!(bool(v7) - v7));
            }
        }
        if (v7) {
            v14 = v15 = !(address(STORAGE[32 + varg0])).code.size;
        } else {
            v14 = !v7;
        }
        if (v14) {
            v16 = new bytes[](68);
            MEM[v16.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
            MEM[v16 + 36] = varg1;
            MEM[v16 + 68] = 0;
            require(!((v16 + 128 > uint64.max) | (v16 + 128 < v16)), Panic(65)); // failed memory allocation (too much memory)
            require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
            v17 = v16.length;
            v18 = v16.data;
            v19, /* uint256 */ v20 = address(STORAGE[32 + varg0]).approve(varg1, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v21 = v22 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v21 = new bytes[](RETURNDATASIZE());
                require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                v20 = v21.data;
                RETURNDATACOPY(v20, 0, RETURNDATASIZE());
            }
            if (!v19) {
                require(!MEM[v21], 32 + v21, MEM[v21]);
                v23 = new bytes[](v24.length);
                MCOPY(v23.data, v24.data, v24.length);
                v23[v24.length][32] = 0;
                revert(Error(v23));
            } else {
                if (!MEM[v21]) {
                    require((address(STORAGE[32 + varg0])).code.size, Error('Address: call to non-contract'));
                }
                v25 = v26 = !MEM[v21];
                if (bool(MEM[v21])) {
                    require(v21 + MEM[v21] + 32 - (v21 + 32) >= 32);
                    v25 = MEM[v21 + 32];
                    require(!(bool(v25) - v25));
                }
                require(v25, Error('SafeERC20: ERC20 operation did not succeed'));
                require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
                v27 = v5.length;
                v28 = v5.data;
                v29, /* uint256 */ v30 = address(STORAGE[32 + varg0]).approve(varg1, uint256.max).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v31 = v32 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v31 = new bytes[](RETURNDATASIZE());
                    require(!((v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v31)), Panic(65)); // failed memory allocation (too much memory)
                    v30 = v31.data;
                    RETURNDATACOPY(v30, 0, RETURNDATASIZE());
                }
                if (!v29) {
                    require(!MEM[v31], 32 + v31, MEM[v31]);
                    v33 = new bytes[](v34.length);
                    MCOPY(v33.data, v34.data, v34.length);
                    v33[v34.length][32] = 0;
                    revert(Error(v33));
                } else {
                    if (!MEM[v31]) {
                        require((address(STORAGE[32 + varg0])).code.size, Error('Address: call to non-contract'));
                    }
                    v35 = v36 = !MEM[v31];
                    if (bool(MEM[v31])) {
                        require(v31 + MEM[v31] + 32 - (v31 + 32) >= 32);
                        v35 = MEM[v31 + 32];
                        require(!(bool(v35) - v35));
                    }
                    require(v35, Error('SafeERC20: ERC20 operation did not succeed'));
                    return ;
                }
            }
        } else {
            return ;
        }
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_swapCallback, Error(32, 3, 0x2163620000000000000000000000000000000000000000000000000000000000));
    if (amount0Delta > 0) {
    }
    if (v1) {
        0x1622(data.word1 >> 96, msg.sender, v1);
        exit;
    } else {
        exit;
    }
}

function receive() public payable { 
}

function 0xe33() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0xe42() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function emergencyWithdraw(address _token, address _to, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), Unauthorized());
    if (_token) {
        v0, v1 = _token.transfer(_to, _amount).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v2 = v3 = 32;
            if (32 > RETURNDATASIZE()) {
                v2 = v4 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v2 - MEM[64] >= 32);
            require(!0x56fa634500000000000000000000000000000000000000000000000000000001);
            exit;
        } else {
            exit;
        }
    } else {
        require(_amount <= _amount + 1, Panic(17)); // arithmetic overflow or underflow
        require(_amount + 1 < this.balance, Error('Keep 1 wei'));
        v5, /* uint256 */ v6 = _to.call().value(_amount).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v7 = v8 = new bytes[](RETURNDATASIZE());
            require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
            v6 = v8.data;
            RETURNDATACOPY(v6, 0, RETURNDATASIZE());
        }
        require(v5, TransferFailed());
        exit;
    }
}

function 0xdd225095(struct(2) varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_whitelist[msg.sender], Unauthorized());
    v1 = 0x120e(msg.data[4 + varg0 + 32 + 1] >> 224);
    require(v1 <= msg.data[4 + varg0], DataTooShort());
    v2 = 0x120e(msg.data[4 + varg0 + 32 + 1] >> 224);
    require(5 <= v2);
    require(v2 <= msg.data[4 + varg0]);
    0x192f(byte(varg0.word1, 0x0), 5 + (4 + varg0 + 32), v2 - 5);
    v3 = 0x120e(msg.data[4 + varg0 + 32 + 1] >> 224);
    v4 = 0x121c(v3);
    require(v4 <= msg.data[4 + varg0], DataTooShort());
    v5 = 0x121c(v3);
    v6 = _SafeAdd(v5, msg.data[4 + varg0 + 32 + v3 + 1] >> 224);
    require(v6 <= msg.data[4 + varg0], DataTooShort());
    v7 = _SafeAdd(v5, msg.data[4 + varg0 + 32 + v3 + 1] >> 224);
    v8, v9 = _SafeSub(4 + varg0 + 32, msg.data[4 + varg0], v5, v7);
    if (uint8(byte(msg.data[4 + varg0 + 32 + v3], 0x0))) {
        if (uint8(byte(msg.data[4 + varg0 + 32 + v3], 0x0)) == 1) {
            v10 = v11 = MEM[64];
            MEM[v11] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[v11 + 4] = this;
            v12 = v13 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            v14 = v15 = 32;
            v16 = v17 = v11 + 36;
        } else if (2 == uint8(byte(msg.data[4 + varg0 + 32 + v3], 0x0))) {
            require(v8 >= 23, DataTooShort());
            v18 = !(byte(msg.data[v9], 0x0));
            if (bool(byte(msg.data[v9], 0x0))) {
                v18 = v19 = (byte(msg.data[v9], 0x0)) > 1;
            }
            require(!v18);
            v20 = 0x1246(msg.data[v9 + 21] >> 240);
            require(v20 <= v8, DataTooShort());
            _swapCallback = 1;
            v21 = 0x1246(msg.data[v9 + 21] >> 240);
            require(23 <= v21);
            require(v21 <= v8);
            CALLDATACOPY(MEM[64], 23 + v9, v21 - 23);
            MEM[MEM[64] + (v21 - 23)] = 0;
            v22, /* uint256 */ v23 = (msg.data[v9 + 1] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + v1ab8_0x0V0xc2d - 23 - MEM[64]], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v24 = v25 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v24 = new bytes[](RETURNDATASIZE());
                require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                v23 = v24.data;
                RETURNDATACOPY(v23, 0, RETURNDATASIZE());
            }
            if (!v22) {
                require(MEM[v24], DelegatecallFailed());
                revert(32 + v24, MEM[v24]);
            } else {
                _swapCallback = 0;
                v10 = v26 = MEM[64];
                MEM[v26] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MEM[v26 + 4] = this;
                v12 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                v14 = 32;
                v16 = v26 + 36;
            }
        }
        v27 = v12.staticcall(MEM[v68f0x1a56_0x1V0xc2d:v68f0x1a56_0x1V0xc2d + v1b32V0xc2d - v68f0x1a56_0x1V0xc2d], MEM[v68f0x1a56_0x1V0xc2d:v68f0x1a56_0x1V0xc2d + v1b2bV0xc2d]).gas(msg.gas);
        if (v27) {
            v28 = v29 = 0;
            if (v27) {
                if (32 > RETURNDATASIZE()) {
                    require(!((v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v10 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v30 = v31 = v10 + RETURNDATASIZE();
                } else {
                    require(!((v10 + 32 > uint64.max) | (v10 + 32 < v10)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v10 + 32;
                    v30 = v32 = v10 + 32;
                }
                require(v30 - v10 >= 32);
                v28 = v33 = MEM[v10];
            }
            if (v28 > 1) {
                v34 = 0x1a3b(v28);
                require(v12.code.size);
                v35 = v12.withdraw(v34).gas(msg.gas);
                if (v35) {
                    if (v35) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    v36 = _SafeAdd(v5, msg.data[4 + varg0 + 32 + v3 + 1] >> 224);
    v37 = 0x122a(v36);
    require(v37 <= msg.data[4 + varg0], DataTooShort());
    v38 = 0x122a(v36);
    v39, v40 = _SafeSub(4 + varg0 + 32, msg.data[4 + varg0], v38, msg.data[4 + varg0]);
    v41 = v42 = byte(msg.data[4 + varg0 + 32 + v36 + 32], 0x0);
    require(this.balance > 1, InsufficientProfit());
    require(this.balance - 1 > msg.data[4 + varg0 + 32 + v36], InsufficientProfit());
    if (!v42) {
        v43 = v44 = stor_2;
        require(v44 >= 0);
    } else {
        require(v42 <= 100);
        require(!v42 | (32 == (v42 << 5) / v42), Panic(17)); // arithmetic overflow or underflow
        while (1) {
            if (v41) {
                v43 = v45 = msg.data[v40 + ((v42 << 5) + (v41 - 1 << 1))] >> 240;
                require(v45 <= 10000);
                if (this.balance - msg.data[4 + varg0 + 32 + v36] - 1 >= msg.data[v40 + (v41 - 1 << 5)]) {
                    break;
                } else {
                    v41 += uint256.max;
                }
            } else {
                v43 = stor_2;
                require(v43 >= 0);
                break;
            }
        }
    }
    require(((this.balance - msg.data[4 + varg0 + 32 + v36] - 1) * v43 / (this.balance - msg.data[4 + varg0 + 32 + v36] - 1) == v43) | !(this.balance - msg.data[4 + varg0 + 32 + v36] - 1), Panic(17)); // arithmetic overflow or underflow
    if ((this.balance - msg.data[4 + varg0 + 32 + v36] - 1) * v43 / 10000) {
        v46, /* uint256 */ v47 = block.coinbase.call().value((this.balance - msg.data[4 + varg0 + 32 + v36] - 1) * v43 / 10000).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v48 = new bytes[](RETURNDATASIZE());
            require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
            v47 = v48.data;
            RETURNDATACOPY(v47, 0, RETURNDATASIZE());
        }
        require(v46, TransferFailed());
    }
    if (uint256.max + (this.balance - (this.balance - msg.data[4 + varg0 + 32 + v36] - 1) * v43 / 10000)) {
        v49, /* uint256 */ v50 = msg.sender.call().value(uint256.max + (this.balance - (this.balance - msg.data[4 + varg0 + 32 + v36] - 1) * v43 / 10000)).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v51 = new bytes[](RETURNDATASIZE());
            require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            v50 = v51.data;
            RETURNDATACOPY(v50, 0, RETURNDATASIZE());
        }
        require(v49, TransferFailed());
    }
    return this.balance - msg.data[4 + varg0 + 32 + v36] - 1;
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x4444c5dc75cb358380d2e3de08a90);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xd392cd9 == function_selector >> 224) {
            updateWhitelist(address,bool);
        } else if (0x158274a5 == function_selector >> 224) {
            balancerVault();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x31f57072 == function_selector >> 224) {
            onMorphoFlashLoan(uint256,bytes);
        } else if (0x3fc8cef3 == function_selector >> 224) {
            weth();
        } else if (0x728260d0 == function_selector >> 224) {
            0x728260d0();
        } else if (0x8a57589a == function_selector >> 224) {
            0x8a57589a();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x8e9b1220 == function_selector >> 224) {
            0x8e9b1220();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x923b8a2a == function_selector >> 224) {
            swapCallback(uint256,uint256,bytes);
        } else if (0x9b19251a == function_selector >> 224) {
            whitelist(address);
        } else if (0xd8fbc833 == function_selector >> 224) {
            morpho();
        } else if (0xd9dddc1b == function_selector >> 224) {
            0xd9dddc1b();
        } else if (0xdc4c90d3 == function_selector >> 224) {
            poolManager();
        } else if (0xdd225095 == function_selector >> 224) {
            0xdd225095();
        } else if (0xe63ea408 == function_selector >> 224) {
            emergencyWithdraw(address,address,uint256);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
