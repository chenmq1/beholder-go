// Decompiled by library.dedaub.com
// 2026.04.18 13:22 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _execute; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x10ae(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x1589(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x1a0c(uint256 varg0, uint256 varg1) private { 
    require(varg0, 0xcbf0dbf5000000000000000000000000, varg1);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function 0x1c81(uint256 varg0) private { 
    require(varg0 << 96, ConfusedDeputy());
    require(!(_execute << 96), ReentrantPayer(_execute, 0x7407c0f8000000000000000000000000));
    _execute = varg0;
    return ;
}

function 0x1d01(struct(3) varg0, uint256 varg1, uint256 varg2) private { 
    if (varg2) {
        v0 = varg1 + msg.data[varg1];
        v1 = msg.data[32 + v0] >> 224;
        v2 = msg.data[v0] - 4;
        v3 = v0 + 36;
        v4 = MEM[64];
        if (v1 - 0xc1fb425e) {
            if (0x3036d6a6 - v1) {
                v5 = v6 = 0;
            } else {
                require(v3 + v2 - v3 >= uint8.max + 1);
                require(!(msg.data[v3] - address(msg.data[v3])));
                require(v3 + v2 - (v3 + 32) >= 128);
                v7 = new struct(3);
                require(!((v7 + 96 > uint64.max) | (v7 + 96 < v7)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + v2 - (v3 + 32) >= 64);
                v8 = new struct(2);
                require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                v8.word0 = msg.data[v3 + 32];
                v8.word1 = msg.data[v3 + 32 + 32];
                v7.word0 = v8;
                v7.word1 = msg.data[v3 + 32 + 64];
                v7.word2 = msg.data[v3 + 32 + 96];
                require(msg.data[v3 + 160] <= uint64.max);
                require(v3 + msg.data[v3 + 160] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v9 = new bytes[](msg.data[v3 + msg.data[v3 + 160]]);
                require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + 160] + 32 + msg.data[v3 + msg.data[v3 + 160]] <= v3 + v2);
                CALLDATACOPY(v9.data, v3 + msg.data[v3 + 160] + 32, msg.data[v3 + msg.data[v3 + 160]]);
                v9[msg.data[v3 + msg.data[v3 + 160]]] = 0;
                require(msg.data[v3 + 192] <= uint64.max);
                require(v3 + msg.data[v3 + 192] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
                require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + 192] + 32 + msg.data[v3 + msg.data[v3 + 192]] <= v3 + v2);
                CALLDATACOPY(v10.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
                v10[msg.data[v3 + msg.data[v3 + 192]]] = 0;
                require(137 <= 137 + v10.length, Panic(17)); // arithmetic overflow or underflow
                require(137 + v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v11 = new bytes[](137 + v10.length);
                require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
                require(137 + v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                CALLDATACOPY(v11.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v10.length) - 32);
                MEM[72 + v11] = MEM[32 + v7.word0];
                MCOPY(104 + v11, 32 + v7, 64);
                MEM8[168 + v11] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                MCOPY(169 + v11, v10.data, v10.length);
                v12 = 0x4518(v7);
                v13 = 0x4562(address(msg.data[v3]), v9, v12, msg.data[v3 + 224], v11);
                v5 = v14 = 1;
            }
        } else {
            require(v3 + v2 - v3 >= 192);
            require(!(msg.data[v3] - address(msg.data[v3])));
            require(v3 + v2 - (v3 + 32) >= 128);
            v15 = new struct(3);
            require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
            require(v3 + v2 - (v3 + 32) >= 64);
            v16 = new struct(2);
            require(!((v16 + 64 > uint64.max) | (v16 + 64 < v16)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
            v16.word0 = msg.data[v3 + 32];
            v16.word1 = msg.data[v3 + 32 + 32];
            v15.word0 = v16;
            v15.word1 = msg.data[v3 + 32 + 64];
            v15.word2 = msg.data[v3 + 32 + 96];
            require(msg.data[v3 + 160] <= uint64.max);
            require(v3 + msg.data[v3 + 160] + 31 < v3 + v2);
            require(msg.data[v3 + msg.data[v3 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v17 = new bytes[](msg.data[v3 + msg.data[v3 + 160]]);
            require(!((v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
            require(v3 + msg.data[v3 + 160] + 32 + msg.data[v3 + msg.data[v3 + 160]] <= v3 + v2);
            CALLDATACOPY(v17.data, v3 + msg.data[v3 + 160] + 32, msg.data[v3 + msg.data[v3 + 160]]);
            v17[msg.data[v3 + msg.data[v3 + 160]]] = 0;
            v18, v19 = 0x3def(v15, address(msg.data[v3]));
            0x4b78(v15, v19, v17, msg.sender == 0x1ff3684f28c67538d4d072c22734);
            v5 = v20 = 1;
        }
        if (!v5) {
            if (0 == (v1 == 0x931997d3) | (v1 == 0x4150c86c) | (v1 == 0x10cd6343)) {
                v21 = v22 = 0;
            } else {
                require(v3 + v2 - v3 >= 352);
                require(!(msg.data[v3] - address(msg.data[v3])));
                require(v3 + v2 - (v3 + 32) >= 128);
                v23 = new struct(3);
                require(!((v23 + 96 > uint64.max) | (v23 + 96 < v23)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + v2 - (v3 + 32) >= 64);
                v24 = new struct(2);
                require(!((v24 + 64 > uint64.max) | (v24 + 64 < v24)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                v24.word0 = msg.data[v3 + 32];
                v24.word1 = msg.data[v3 + 32 + 32];
                v23.word0 = v24;
                v23.word1 = msg.data[v3 + 32 + 64];
                v23.word2 = msg.data[v3 + 32 + 96];
                require(!(msg.data[v3 + 160] - bool(msg.data[v3 + 160])));
                require(msg.data[v3 + (uint8.max + 1)] <= uint64.max);
                require(v3 + msg.data[v3 + (uint8.max + 1)] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v25 = new bytes[](msg.data[v3 + msg.data[v3 + (uint8.max + 1)]]);
                require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + (uint8.max + 1)] + 32 + msg.data[v3 + msg.data[v3 + (uint8.max + 1)]] <= v3 + v2);
                CALLDATACOPY(v25.data, v3 + msg.data[v3 + (uint8.max + 1)] + 32, msg.data[v3 + msg.data[v3 + (uint8.max + 1)]]);
                v25[msg.data[v3 + msg.data[v3 + (uint8.max + 1)]]] = 0;
                require(msg.data[v3 + 288] <= uint64.max);
                require(v3 + msg.data[v3 + 288] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + 288]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v26 = new bytes[](msg.data[v3 + msg.data[v3 + 288]]);
                require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + 288] + 32 + msg.data[v3 + msg.data[v3 + 288]] <= v3 + v2);
                CALLDATACOPY(v26.data, v3 + msg.data[v3 + 288] + 32, msg.data[v3 + msg.data[v3 + 288]]);
                v26[msg.data[v3 + msg.data[v3 + 288]]] = 0;
                if (v1 != 0x931997d3) {
                    if (0 == (v1 == 0x4150c86c)) {
                        require(!msg.data[v3 + 192] | (96 == msg.data[v3 + 192] * 96 / msg.data[v3 + 192]), Panic(17)); // arithmetic overflow or underflow
                        require(!msg.data[v3 + 224] | (96 == msg.data[v3 + 224] * 96 / msg.data[v3 + 224]), Panic(17)); // arithmetic overflow or underflow
                        require(!(bool(msg.data[v3 + 320] >> 128) | bool(msg.data[v3 + 192] * 96 >> 128) | bool(msg.data[v3 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                        MEM[v26.length + (v25.length + v27) + 277] = v26.length;
                        MCOPY(306 + v27, v25.data, v25.length);
                        MCOPY(v25.length + v27 + 306, v26.data, v26.length);
                        MEM8[305 + v27] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                        MCOPY(241 + v27, 32 + v23, 64);
                        MCOPY(177 + v27, v23.word0, 64);
                        MEM8[168 + v27] = msg.data[v3 + 160] & 0xFF;
                        require((_execute ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                        ___function_selector__ = 0x400000000000014aa86c5d3c41765bb24e11bd701;
                        v28, /* uint256 */ v29 = 0x14aa86c5d3c41765bb24e11bd701.lock(32, address(msg.data[v3]), 209 + (v25.length + v26.length), msg.data[v3 + 320], address(msg.data[v3]), msg.data[v3 + 192] * 96, msg.data[v3 + 224] * 96, 0).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v30 = v31 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v30 = new bytes[](RETURNDATASIZE());
                            require(!((v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                            v29 = v30.data;
                            RETURNDATACOPY(v29, 0, RETURNDATASIZE());
                        }
                        require(v28, v30 + 32, MEM[v30]);
                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                        v21 = v32 = 1;
                    } else {
                        require(!msg.data[v3 + 192] | (96 == msg.data[v3 + 192] * 96 / msg.data[v3 + 192]), Panic(17)); // arithmetic overflow or underflow
                        require(!msg.data[v3 + 224] | (96 == msg.data[v3 + 224] * 96 / msg.data[v3 + 224]), Panic(17)); // arithmetic overflow or underflow
                        require(!(bool(msg.data[v3 + 320] >> 128) | bool(msg.data[v3 + 192] * 96 >> 128) | bool(msg.data[v3 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                        MEM[v26.length + (v25.length + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v26.length;
                        MCOPY(306 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v25.data, v25.length);
                        MCOPY(v25.length + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v26.data, v26.length);
                        MEM8[305 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                        MCOPY(241 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v23, 64);
                        MCOPY(177 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v23.word0, 64);
                        MEM8[168 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 160] & 0xFF;
                        require((_execute ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                        require(!___function_selector__, ReentrantCallback(___function_selector__));
                        ___function_selector__ = uint32(msg.data[v3] >> 128) << 224 | 0x1ba1333333333a1ba1108e8412f11850a5c319ba9;
                        v33, /* uint256 */ v34 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v3]), 209 + (v25.length + v26.length), msg.data[v3 + 320], address(msg.data[v3]), msg.data[v3 + 224] * 96, msg.data[v3 + 192] * 96, 0).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v35 = v36 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v35 = new bytes[](RETURNDATASIZE());
                            require(!((v35 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v35 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v35)), Panic(65)); // failed memory allocation (too much memory)
                            v34 = v35.data;
                            RETURNDATACOPY(v34, 0, RETURNDATASIZE());
                        }
                        require(v33, v35 + 32, MEM[v35]);
                        require(!___function_selector__, CallbackNotSpent(___function_selector__));
                        v21 = v37 = 1;
                    }
                } else {
                    require(!msg.data[v3 + 192] | (96 == msg.data[v3 + 192] * 96 / msg.data[v3 + 192]), Panic(17)); // arithmetic overflow or underflow
                    require(!msg.data[v3 + 224] | (96 == msg.data[v3 + 224] * 96 / msg.data[v3 + 224]), Panic(17)); // arithmetic overflow or underflow
                    require(!(bool(msg.data[v3 + 320] >> 128) | bool(msg.data[v3 + 192] * 96 >> 128) | bool(msg.data[v3 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                    MEM[v26.length + (v25.length + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v26.length;
                    MCOPY(306 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v25.data, v25.length);
                    MCOPY(v25.length + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v26.data, v26.length);
                    MEM8[305 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = (msg.sender == 0x1ff3684f28c67538d4d072c22734) & 0xFF;
                    MCOPY(241 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v23, 64);
                    MCOPY(177 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v23.word0, 64);
                    MEM8[168 + (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 160] & 0xFF;
                    require((_execute ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                    ___function_selector__ = 0x91dd73460000000000000006000000000004444c5dc75cb358380d2e3de08a90;
                    v38, /* uint256 */ v39 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v3]), 209 + (v25.length + v26.length), msg.data[v3 + 320], address(msg.data[v3]), msg.data[v3 + 224] * 96, msg.data[v3 + 192] * 96, 0).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v40 = v41 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v40 = new bytes[](RETURNDATASIZE());
                        require(!((v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
                        v39 = v40.data;
                        RETURNDATACOPY(v39, 0, RETURNDATASIZE());
                    }
                    require(v38, v40 + 32, MEM[v40]);
                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                    v21 = v42 = 1;
                }
            }
        } else {
            v21 = v43 = 1;
        }
        if (!v21) {
            v44 = new bytes[](msg.data[v3 + 64]);
            if (v1 - 0xd92aadfb) {
                if (v1 - 0x8d68a156) {
                    if (v1 - 0x103b48be) {
                        if (0 == (v1 == 0x38c9c147)) {
                            if (v1 - 0x96b17b6c) {
                                if (v1 - 0x34ee90ca) {
                                    if (0 == (v1 == 0xaf72634f) | (v1 == 0xfd8c38e1) | (v1 == 0x6c5f9cf9) | (v1 == 0xf61460f9)) {
                                        if (0 == (v1 == 0x736180c8)) {
                                            if (v1 - 0x6472b276) {
                                                if (v1 - 0x9b59756f) {
                                                    if (v1 - 0x670335be) {
                                                        if (v1 - 0xca9e5d0f) {
                                                            if (0xb8df6d4d - v1) {
                                                                v45 = v46 = 0;
                                                            } else {
                                                                require(v3 + v2 - v3 >= 160);
                                                                require(!(msg.data[v3] - address(msg.data[v3])));
                                                                require(!(msg.data[v3 + 64] - address(msg.data[v3 + 64])));
                                                                require(!(msg.data[v3 + 96] - bool(msg.data[v3 + 96])));
                                                                v47 = 0x3cca(msg.data[v3], this);
                                                                0x4d16(msg.data[v3], address(msg.data[v3 + 64]), v47 * msg.data[v3 + 32] / 10000);
                                                                if (!msg.data[v3 + 96]) {
                                                                    v48 = msg.data[v3 + 64].sellBaseToken(v47 * msg.data[v3 + 32] / 10000, msg.data[v3 + 128], 96, 0).gas(msg.gas);
                                                                    require(v48, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v45 = v49 = 1;
                                                                } else {
                                                                    v50 = msg.data[v3 + 64].getExpectedTarget().gas(msg.gas);
                                                                    require(v50, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 63);
                                                                    v51 = msg.data[v3 + 64]._R_STATUS_().gas(msg.gas);
                                                                    require(v51, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    require(!(MEM[0] >> 8));
                                                                    require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                    v52 = msg.data[v3 + 64].getOraclePrice().gas(msg.gas);
                                                                    require(v52, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v53 = msg.data[v3 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                    require(v53, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v54 = msg.data[v3 + 64]._K_().gas(msg.gas);
                                                                    require(v54, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                    if (uint8(MEM[0]) - 2) {
                                                                        require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                        v55 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v47 * msg.data[v3 + 32] / 10000) / 10 ** 18;
                                                                        if ((10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 < v55) {
                                                                            v56 = v57 = v55 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                            v58 = v59 = 10 ** 18;
                                                                            v60 = v61 = 0;
                                                                        } else {
                                                                            v56 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v55;
                                                                            v60 = v62 = 1;
                                                                            v58 = 10 ** 18;
                                                                        }
                                                                        v63 = v64 = v56 * v56 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v58;
                                                                        v63 = (v64 >> 1) + 1;
                                                                        while (v63 < v63) {
                                                                            v63 = v63 + v64 / v63 >> 1;
                                                                        }
                                                                        if (0 == v60) {
                                                                            v65 = v66 = v63 - v56;
                                                                        } else {
                                                                            v65 = v67 = v56 + v63;
                                                                        }
                                                                        v68 = v69 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v65 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v65 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                    } else {
                                                                        v70 = msg.data[v3 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                        require(v70, v4, RETURNDATASIZE());
                                                                        require(RETURNDATASIZE() > 31);
                                                                        if (v47 * msg.data[v3 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                            v71 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v47 * msg.data[v3 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                            if ((10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 < v71) {
                                                                                v72 = v73 = v71 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                v74 = v75 = 10 ** 18;
                                                                                v76 = v77 = 0;
                                                                            } else {
                                                                                v72 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v71;
                                                                                v76 = v78 = 1;
                                                                                v74 = 10 ** 18;
                                                                            }
                                                                            v79 = v80 = v72 * v72 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v74;
                                                                            v79 = (v80 >> 1) + 1;
                                                                            while (v79 < v79) {
                                                                                v79 = v79 + v80 / v79 >> 1;
                                                                            }
                                                                            if (0 == v76) {
                                                                                v81 = v82 = v79 - v72;
                                                                            } else {
                                                                                v81 = v83 = v72 + v79;
                                                                            }
                                                                            v68 = v84 = MEM[0] - MEM[0] + (MEM[0] - (bool(v81 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v81 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                        } else {
                                                                            v68 = (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v47 * msg.data[v3 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v47 * msg.data[v3 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) * ((MEM[0] + v47 * msg.data[v3 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                        }
                                                                    }
                                                                    v85 = msg.data[v3 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                    require(v85, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v86 = msg.data[v3 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                    require(v86, v4, RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    if (v68 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < msg.data[v3 + 128]) {
                                                                        v87 = msg.data[v3 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                        require(v87, v4, RETURNDATASIZE());
                                                                        require(RETURNDATASIZE() > 31);
                                                                        require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), msg.data[v3 + 128], v68 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                        revert();
                                                                    } else {
                                                                        v88 = msg.data[v3 + 64].buyBaseToken(v68 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v47 * msg.data[v3 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                        require(v88, v4, RETURNDATASIZE());
                                                                        require(RETURNDATASIZE() > 31);
                                                                        v45 = v89 = 1;
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            require(v3 + v2 - v3 >= 192);
                                                            require(!(msg.data[v3] - address(msg.data[v3])));
                                                            require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                                            require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                                                            require(!(msg.data[v3 + 128] - bool(msg.data[v3 + 128])));
                                                            if (msg.data[v3 + 64]) {
                                                                v90 = 0x3cca(msg.data[v3 + 32], this);
                                                                0x3d26(msg.data[v3 + 32], address(msg.data[v3 + 96]), v90 * msg.data[v3 + 64] / 10000);
                                                            }
                                                            v91 = msg.data[v3 + 96].sellQuote(address(msg.data[v3]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v3 + 128]) << 96).gas(msg.gas);
                                                            require(v91, v4, RETURNDATASIZE());
                                                            require(RETURNDATASIZE() > 31);
                                                            if (MEM[0] < msg.data[v3 + 160]) {
                                                                v92 = msg.data[v3 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                require(v92, v4, RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v3 + 160], MEM[0]));
                                                                revert();
                                                            } else {
                                                                v45 = 1;
                                                            }
                                                        }
                                                    } else {
                                                        require(v3 + v2 - v3 >= 352);
                                                        require(!(msg.data[v3] - address(msg.data[v3])));
                                                        require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                                        require(v3 + v2 - v3 - 64 >= 224);
                                                        v93 = new struct(7);
                                                        require(!((v93 + 224 > uint64.max) | (v93 + 224 < v93)), Panic(65)); // failed memory allocation (too much memory)
                                                        v93.word0 = msg.data[v3 + 64];
                                                        require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                                                        v94 = v44.data;
                                                        v93.word1 = msg.data[v3 + 96];
                                                        v93.word2 = msg.data[v3 + 128];
                                                        require(!(msg.data[v3 + 160] - address(msg.data[v3 + 160])));
                                                        v93.word3 = msg.data[v3 + 160];
                                                        v93.word4 = msg.data[v3 + 192];
                                                        v93.word5 = msg.data[v3 + 224];
                                                        v93.word6 = msg.data[v3 + (uint8.max + 1)];
                                                        require(msg.data[v3 + 288] <= uint64.max);
                                                        require(v3 + v2 - (v3 + msg.data[v3 + 288]) >= 64);
                                                        v95 = new struct(2);
                                                        require(!((v95 + 64 > uint64.max) | (v95 + 64 < v95)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(msg.data[v3 + msg.data[v3 + 288]] <= uint64.max);
                                                        require(v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]] + 31 < v3 + v2);
                                                        require(msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v96 = new bytes[](msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]);
                                                        require(!((v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v96)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]] + 32 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]] <= v3 + v2);
                                                        CALLDATACOPY(v96.data, v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]] + 32, msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]);
                                                        v96[msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]] = 0;
                                                        v95.word0 = v96;
                                                        v95.word1 = msg.data[v3 + msg.data[v3 + 288] + 32];
                                                        v97 = 0x3cca(msg.data[v3 + 32], this);
                                                        require(v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4 >= msg.data[v3 + 320], TooMuchSlippage(address(v93.word3), 0x97a6f3b9000000000000000000000000, msg.data[v3 + 320], v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4));
                                                        v98 = msg.data[v3 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                        require(v98, v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), RETURNDATASIZE());
                                                        require(32 <= RETURNDATASIZE());
                                                        if (MEM[0] < (v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) {
                                                            if (MEM[0]) {
                                                                0x56db(msg.data[v3 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
                                                            }
                                                            v99 = msg.data[v3 + 32].approve(0xbbbbbbb520d69a9775e85b458c58c648259fad5f, 0x95ea7b3000000000000000000000000, uint256.max).gas(msg.gas);
                                                            if (!v99) {
                                                                RETURNDATACOPY(uint24(v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 0, RETURNDATASIZE());
                                                                revert(uint24(v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), RETURNDATASIZE());
                                                            } else {
                                                                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                                                                MEM[52] = 0;
                                                            }
                                                        }
                                                        MCOPY(96 + (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, 64);
                                                        MCOPY(192 + (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 96 + v93, 96);
                                                        v100 = new uint256[](64);
                                                        MEM[v100.data] = v95.word1;
                                                        v101 = v95.word0;
                                                        MCOPY(512 + (v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v95.word0, 32 + v101.length);
                                                        v102, /* uint256 */ v103 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v93.word0.length, this, v104, v104, address(msg.data[v3 + 32]), v104, v104, v104, address(msg.data[v3]), _execute << 96 | v93.word6 >> 248, v93.word6 << 128, v100, (v93.word4 ^ v97) * (v97 > v93.word4) ^ v97).gas(msg.gas);
                                                        if (!v102) {
                                                            v105 = RETURNDATASIZE();
                                                            revert(v104, v104, v104, v104, v104, v104, v104, v104, v104, _execute << 96 | v93.word6 >> 248);
                                                        } else {
                                                            emit uint128(v93.word6)(uint128(v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4), uint128(v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4));
                                                            v45 = v106 = 1;
                                                        }
                                                    }
                                                } else {
                                                    require(v3 + v2 - v3 >= 224);
                                                    require(!(msg.data[v3] - address(msg.data[v3])));
                                                    require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                                    require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                                                    require(!(msg.data[v3 + 128] - bool(msg.data[v3 + 128])));
                                                    require(!(msg.data[v3 + 160] - int32(msg.data[v3 + 160])));
                                                    if (!msg.data[v3 + 64]) {
                                                        v107 = 0x3cca(msg.data[v3 + 32], address(msg.data[v3 + 96]));
                                                        v108 = msg.data[v3 + 96].getState().gas(msg.gas);
                                                        require(v108, v4, RETURNDATASIZE());
                                                        require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v3 + 128] << 5) + v4] >> 128));
                                                        v109 = v110 = 64;
                                                        v111 = v112 = 0;
                                                        v113 = v114 = v107 - uint128(MEM[(!msg.data[v3 + 128] << 5) + v4]);
                                                    } else {
                                                        v109 = 64;
                                                        v111 = 0;
                                                        v115 = 0x3cca(msg.data[v3 + 32], this);
                                                        v113 = v116 = v115 * msg.data[v3 + 64] / 10000;
                                                        0x3d26(msg.data[v3 + 32], address(msg.data[v3 + 96]), v116);
                                                    }
                                                    require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(v4 + 32, msg.data.length, 0);
                                                    MCOPY(228 + (v4 + 32), v4, 32);
                                                    v117 = msg.data[v3 + 96].call(0x3eece7db000000000000000000000000, address(msg.data[v3]), 0x3eece7db000000000000000000000000, v113, msg.data[v3 + 128], v111, int32(msg.data[v3 + 160]), 192).value(v111).gas(msg.gas);
                                                    require(v117, 288 + (v4 + 32), RETURNDATASIZE());
                                                    if (MEM[32] < msg.data[192 + v3]) {
                                                        v118 = msg.data[v3 + 96].tokenB().gas(msg.gas);
                                                        require(v118, 288 + (v4 + 32), RETURNDATASIZE());
                                                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                        revert(TooMuchSlippage(MEM[0], msg.data[192 + v3], MEM[32]));
                                                    } else {
                                                        v45 = v119 = 1;
                                                    }
                                                }
                                            } else {
                                                require(v3 + v2 - v3 >= 192);
                                                require(!(msg.data[v3] - address(msg.data[v3])));
                                                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                                require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                                                require(!(msg.data[v3 + 128] - bool(msg.data[v3 + 128])));
                                                EXTCODECOPY(msg.data[v3 + 96], v120, 54, 384);
                                                v121 = msg.data[v3 + 96].getReserves().gas(msg.gas);
                                                require(v121, 384 + v120, RETURNDATASIZE());
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v122 = address(address(v44.length) ^ (address(MEM[v44.data]) ^ address(v44.length)) * msg.data[v3 + 128]);
                                                v123 = address(address(MEM[v44.data]) ^ (address(MEM[v44.data]) ^ address(v44.length)) * msg.data[v3 + 128]).debtOf(MEM[64 + v120], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                require(v123, 384 + v120, RETURNDATASIZE());
                                                require(32 <= RETURNDATASIZE());
                                                v124 = address(address(MEM[v44.data]) ^ (address(MEM[v44.data]) ^ address(v44.length)) * msg.data[v3 + 128]).maxDeposit(0x402d267d000000000000000000000000, MEM[64 + v120]).gas(msg.gas);
                                                require(v124, 384 + v120, RETURNDATASIZE());
                                                require(32 <= RETURNDATASIZE());
                                                v125 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + v120] << 96, MEM[64 + v120], MEM[64 + v120] << 96, address(msg.data[v3 + 96]), MEM[64 + v120]).gas(msg.gas);
                                                require(v125, address(msg.data[v3 + 96]), RETURNDATASIZE());
                                                v126 = v122.cash().gas(msg.gas);
                                                require(v126, 384 + v120, RETURNDATASIZE());
                                                require(32 <= RETURNDATASIZE());
                                                v127 = v128 = (MEM[0] ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v3 + 128])) * (MEM[0] < MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v3 + 128]) ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v3 + 128]);
                                                v129 = v122.caps().gas(msg.gas);
                                                require(v129, 384 + v120, RETURNDATASIZE());
                                                require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                v130 = v122.totalBorrows().gas(msg.gas);
                                                require(v130, 384 + v120, RETURNDATASIZE());
                                                require(32 <= RETURNDATASIZE());
                                                v131 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * (((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) - MEM[0]);
                                                if (v131 < v128) {
                                                    v132 = 0x3cca(v122, MEM[64 + v120]);
                                                    v133 = v122.convertToAssets(v132).gas(msg.gas);
                                                    require(v133, 384 + v120, RETURNDATASIZE());
                                                    require(32 <= RETURNDATASIZE());
                                                    v127 = v134 = (v128 ^ MEM[0] + v131) * (MEM[0] + v131 >= v128) ^ MEM[0] + v131;
                                                }
                                                if (0 == msg.data[v3 + 128]) {
                                                    if ((MEM[0] - v127) * (MEM[0] > v127) > MEM[96 + v120]) {
                                                        v135 = v136 = 0x57f3((MEM[0] - v127) * (MEM[0] > v127), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                    } else {
                                                        v135 = 0x5a82((MEM[0] - v127) * (MEM[0] > v127), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                    }
                                                    v137 = v138 = (v135 > MEM[32]) * (v135 - MEM[32]);
                                                } else {
                                                    if ((MEM[32] - v127) * (MEM[32] > v127) > MEM[128 + v120]) {
                                                        v139 = v140 = 0x57f3((MEM[32] - v127) * (MEM[32] > v127), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                    } else {
                                                        v139 = 0x5a82((MEM[32] - v127) * (MEM[32] > v127), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                    }
                                                    v137 = v141 = (v139 > MEM[0]) * (v139 - MEM[0]);
                                                }
                                                v142 = ((v137 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v137 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + v120]);
                                                v143 = 0;
                                                if (msg.data[v3 + 64]) {
                                                    v144 = 0x3cca(msg.data[v3 + 32], this);
                                                    v143 = v145 = (v142 ^ v144 * msg.data[v3 + 64] / 10000) * (v144 * msg.data[v3 + 64] / 10000 > v142) ^ v144 * msg.data[v3 + 64] / 10000;
                                                    0x3d26(msg.data[v3 + 32], address(msg.data[v3 + 96]), v145);
                                                }
                                                if (!v143) {
                                                    v146 = 0x3cca(msg.data[v3 + 32], address(msg.data[v3 + 96]));
                                                    v143 = v147 = (v142 ^ v146) * (v146 > v142) ^ v146;
                                                }
                                                if (0 == msg.data[v3 + 128]) {
                                                    if (MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18) > MEM[128 + v120]) {
                                                        v148 = 0x57f3(MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                        v149 = v150 = (MEM[0] > !v148 + v148) * (MEM[0] - (!v148 + v148));
                                                    } else {
                                                        v151 = 0x5a82(MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                        v149 = v152 = (MEM[0] > !v151 + v151) * (MEM[0] - (!v151 + v151));
                                                    }
                                                } else if (MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18) > MEM[96 + v120]) {
                                                    v153 = 0x57f3(MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                    v149 = v154 = (MEM[32] > !v153 + v153) * (MEM[32] - (!v153 + v153));
                                                } else {
                                                    v155 = 0x5a82(MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                    v149 = v156 = (MEM[32] > !v155 + v155) * (MEM[32] - (!v155 + v155));
                                                }
                                                if (v149 < msg.data[v3 + 160]) {
                                                    v157 = address((address(MEM[v44.data]) ^ address(v44.length)) * msg.data[v3 + 128] ^ address(v44.length)).asset().gas(msg.gas);
                                                    require(v157, 384 + v120, RETURNDATASIZE());
                                                    require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                                    revert(TooMuchSlippage(MEM[0], msg.data[v3 + 160], v149));
                                                } else {
                                                    if (v149 > 1) {
                                                        MEM[384 + v120 + (msg.data[v3 + 128] << 5) + 32] = v149;
                                                        MEM[(0x20 ^ msg.data[v3 + 128] << 5) + (384 + v120) + 32] = 0;
                                                        v158, /* uint256 */ v159 = msg.data[v3 + 96].swap(v104, v104, address(msg.data[v3]), 128, 0).gas(msg.gas);
                                                        require(v158, v159, RETURNDATASIZE());
                                                    }
                                                    v45 = v160 = 1;
                                                }
                                            }
                                        } else {
                                            require(v3 + v2 - v3 >= 192);
                                            require(!(msg.data[v3] - address(msg.data[v3])));
                                            require(!(msg.data[v3 + 64] - bool(msg.data[v3 + 64])));
                                            require(!(msg.data[v3 + 128] - address(msg.data[v3 + 128])));
                                            require(!(msg.data[v3 + 160] - address(msg.data[v3 + 160])));
                                            v161 = 0x3cca(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v3 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v3 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v3 + 160]) * msg.data[v3 + 64], this);
                                            if (!msg.data[v3 + 64]) {
                                                v162 = msg.data[v3 + 128].sellGem(address(msg.data[v3]), 0x95991276000000000000000000000000, v161 * msg.data[v3 + 32] / 10000).gas(msg.gas);
                                                if (!v162) {
                                                    RETURNDATACOPY(uint96(v4), 0, RETURNDATASIZE());
                                                    revert(uint96(v4), RETURNDATASIZE());
                                                } else {
                                                    MEM[52] = 0;
                                                    v163 = msg.data[v3 + 128].tin().gas(msg.gas);
                                                    require(v163, v4, RETURNDATASIZE());
                                                    require(RETURNDATASIZE() > 31);
                                                    v164 = v165 = v161 * msg.data[v3 + 32] / 10000 * 10 ** 18 / 10 ** 6 - v161 * msg.data[v3 + 32] / 10000 * 10 ** 18 / 10 ** 6 * MEM[0] / 10 ** 18;
                                                    if (v165 >= msg.data[v3 + 96]) {
                                                        v45 = v166 = 1;
                                                    }
                                                }
                                            } else {
                                                v167 = msg.data[v3 + 128].tout().gas(msg.gas);
                                                require(v167, v4, RETURNDATASIZE());
                                                require(RETURNDATASIZE() > 31);
                                                v164 = v168 = v161 * msg.data[v3 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v168 >= msg.data[v3 + 96]) {
                                                    v169 = msg.data[v3 + 128].buyGem(address(msg.data[v3]), 0x8d7ef9bb000000000000000000000000, v168).gas(msg.gas);
                                                    if (!v169) {
                                                        RETURNDATACOPY(uint96(v4), 0, RETURNDATASIZE());
                                                        revert(uint96(v4), RETURNDATASIZE());
                                                    } else {
                                                        MEM[52] = 0;
                                                        v45 = v170 = 1;
                                                    }
                                                }
                                            }
                                            revert(TooMuchSlippage(msg.data[v3 + 160] ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v3 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v3 + 160]) * msg.data[v3 + 64], 0x97a6f3b9000000000000000000000000, msg.data[v3 + 96], v164));
                                        }
                                    } else {
                                        require(v3 + v2 - v3 >= uint8.max + 1);
                                        require(!(msg.data[v3] - address(msg.data[v3])));
                                        require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                        require(!(msg.data[v3 + 96] - bool(msg.data[v3 + 96])));
                                        require(msg.data[v3 + 192] <= uint64.max);
                                        require(v3 + msg.data[v3 + 192] + 31 < v3 + v2);
                                        require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                                        require(v3 + msg.data[v3 + 192] + 32 + msg.data[v3 + msg.data[v3 + 192]] <= v3 + v2);
                                        CALLDATACOPY(v44.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
                                        v44[msg.data[v3 + msg.data[v3 + 192]]] = 0;
                                        if (0 == (v1 == 0xaf72634f)) {
                                            if (v1 != 0xfd8c38e1) {
                                                if (0 == (v1 == 0x6c5f9cf9)) {
                                                    require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                    MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                                    MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                                    require((_execute ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                    ___function_selector__ = 0x400000000000014aa86c5d3c41765bb24e11bd701;
                                                    v171, /* uint256 */ v172 = 0x14aa86c5d3c41765bb24e11bd701.lock(32, address(msg.data[v3]), 111 + v44.length, msg.data[v3 + 224], address(msg.data[v3]), msg.data[v3 + 160] * 96, msg.data[v3 + 128] * 96, msg.data[v3 + 64], msg.data[v3 + 32], this).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v173 = v174 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v173 = new bytes[](RETURNDATASIZE());
                                                        require(!((v173 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v173 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v173)), Panic(65)); // failed memory allocation (too much memory)
                                                        v172 = v173.data;
                                                        RETURNDATACOPY(v172, 0, RETURNDATASIZE());
                                                    }
                                                    require(v171, v173 + 32, MEM[v173]);
                                                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                    v45 = v175 = 1;
                                                } else {
                                                    require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                    MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                                    MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                                    require((_execute ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                    require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                    ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                    v176, /* uint256 */ v177 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.lock(32, address(msg.data[v3]), 111 + v44.length, msg.data[v3 + 224], address(msg.data[v3]), msg.data[v3 + 160] * 96, msg.data[v3 + 128] * 96, msg.data[v3 + 64], msg.data[v3 + 32], this).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v178 = v179 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v178 = new bytes[](RETURNDATASIZE());
                                                        require(!((v178 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v178 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v178)), Panic(65)); // failed memory allocation (too much memory)
                                                        v177 = v178.data;
                                                        RETURNDATACOPY(v177, 0, RETURNDATASIZE());
                                                    }
                                                    require(v176, v178 + 32, MEM[v178]);
                                                    require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                    v45 = v180 = 1;
                                                }
                                            } else {
                                                require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                                MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                                require((_execute ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                                require(!___function_selector__, ReentrantCallback(___function_selector__));
                                                ___function_selector__ = uint32(msg.data[v3] >> 128) << 224 | 0x1ba1333333333a1ba1108e8412f11850a5c319ba9;
                                                v181, /* uint256 */ v182 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v3]), 111 + v44.length, msg.data[v3 + 224], address(msg.data[v3]), msg.data[v3 + 160] * 96, msg.data[v3 + 128] * 96, msg.data[v3 + 64], msg.data[v3 + 32], this).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v183 = v184 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v183 = new bytes[](RETURNDATASIZE());
                                                    require(!((v183 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v183 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v183)), Panic(65)); // failed memory allocation (too much memory)
                                                    v182 = v183.data;
                                                    RETURNDATACOPY(v182, 0, RETURNDATASIZE());
                                                }
                                                require(v181, v183 + 32, MEM[v183]);
                                                require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                                v45 = v185 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                            MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                            require((_execute ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                            require(!___function_selector__, ReentrantCallback(___function_selector__));
                                            ___function_selector__ = 0x91dd73460000000000000006000000000004444c5dc75cb358380d2e3de08a90;
                                            v186, /* uint256 */ v187 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v3]), 111 + v44.length, msg.data[v3 + 224], address(msg.data[v3]), msg.data[v3 + 160] * 96, msg.data[v3 + 128] * 96, msg.data[v3 + 64], msg.data[v3 + 32], this).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v188 = v189 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v188 = new bytes[](RETURNDATASIZE());
                                                require(!((v188 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v188 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v188)), Panic(65)); // failed memory allocation (too much memory)
                                                v187 = v188.data;
                                                RETURNDATACOPY(v187, 0, RETURNDATASIZE());
                                            }
                                            require(v186, v188 + 32, MEM[v188]);
                                            require(!___function_selector__, CallbackNotSpent(___function_selector__));
                                            v45 = v190 = 1;
                                        }
                                    }
                                } else {
                                    require(v3 + v2 - v3 >= 128);
                                    require(!(msg.data[v3] - address(msg.data[v3])));
                                    require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v3 + 32])) {
                                        v191 = v192 = 0x3cca(msg.data[v3 + 32], this);
                                    } else {
                                        v191 = v193 = this.balance;
                                    }
                                    if (v191 > msg.data[v3 + 64]) {
                                        v194 = (v191 * msg.data[v3 + 96] / 10000 ^ v191 - msg.data[v3 + 64]) * (v191 - msg.data[v3 + 64] > v191 * msg.data[v3 + 96] / 10000) ^ v191 - msg.data[v3 + 64];
                                        if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v3 + 32]))) {
                                            0x3d26(msg.data[v3 + 32], address(msg.data[v3]), v194);
                                        } else {
                                            0x3d86(msg.data[v3], v194);
                                        }
                                    }
                                    v45 = v195 = 1;
                                }
                            } else {
                                require(v3 + v2 - v3 >= 96);
                                require(!(msg.data[v3] - address(msg.data[v3])));
                                require(!(msg.data[v3 + 64] - address(msg.data[v3 + 64])));
                                v45 = v196 = 1;
                            }
                        } else {
                            require(v3 + v2 - v3 >= 160);
                            require(!(msg.data[v3] - address(msg.data[v3])));
                            require(!(msg.data[v3 + 64] - address(msg.data[v3 + 64])));
                            require(msg.data[v3 + 128] <= uint64.max);
                            require(v3 + msg.data[v3 + 128] + 31 < v3 + v2);
                            require(msg.data[v3 + msg.data[v3 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                            require(v3 + msg.data[v3 + 128] + 32 + msg.data[v3 + msg.data[v3 + 128]] <= v3 + v2);
                            CALLDATACOPY(v44.data, v3 + msg.data[v3 + 128] + 32, msg.data[v3 + msg.data[v3 + 128]]);
                            v44[msg.data[v3 + msg.data[v3 + 128]]] = 0;
                            require(!((address(msg.data[v3 + 64]) == 0xbbbbbbb520d69a9775e85b458c58c648259fad5f) | ((address(msg.data[v3 + 64]) == 0x1ff3684f28c67538d4d072c22734) | (address(msg.data[v3 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3))), ConfusedDeputy());
                            v197 = v198 = 0;
                            if (address(msg.data[v3]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v3])) {
                                    v199 = 0x3cca(msg.data[v3], this);
                                    if (!(v199 * msg.data[v3 + 32] % uint256.max - v199 * msg.data[v3 + 32] - (v199 * msg.data[v3 + 32] % uint256.max < v199 * msg.data[v3 + 32]))) {
                                        v200 = v199 * msg.data[v3 + 32] / 10000;
                                    } else {
                                        v200 = v201 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (v199 * msg.data[v3 + 32] % uint256.max - v199 * msg.data[v3 + 32] - (v199 * msg.data[v3 + 32] % uint256.max < v199 * msg.data[v3 + 32]) - (v199 * msg.data[v3 + 32] < (v199 * msg.data[v3 + 32] + (v199 * msg.data[v3 + 32] % uint256.max - v199 * msg.data[v3 + 32] - (v199 * msg.data[v3 + 32] % uint256.max < v199 * msg.data[v3 + 32])) * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | v199 * msg.data[v3 + 32] - (v199 * msg.data[v3 + 32] + (v199 * msg.data[v3 + 32] % uint256.max - v199 * msg.data[v3 + 32] - (v199 * msg.data[v3 + 32] % uint256.max < v199 * msg.data[v3 + 32])) * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v3 + 96] <= msg.data[v3 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v44.length >= msg.data[v3 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v202 = 0;
                                    v44[msg.data[v3 + 96]] = v200;
                                    if (address(msg.data[v3]) - address(msg.data[v3 + 64])) {
                                        0x4d16(msg.data[v3], address(msg.data[v3 + 64]), v200);
                                    }
                                } else {
                                    require(!msg.data[v3 + 96], InvalidOffset());
                                    v202 = v203 = 0;
                                }
                            } else {
                                v197 = this.balance * msg.data[v3 + 32] / 10000;
                                if (0 == !v44.length) {
                                    require(msg.data[v3 + 96] <= msg.data[v3 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v44.length >= msg.data[v3 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v202 = v204 = 0;
                                    v44[msg.data[v3 + 96]] = v197;
                                } else {
                                    require(!msg.data[v3 + 96], InvalidOffset());
                                    v205, /* uint256 */ v206 = address(msg.data[v3 + 64]).call().value(v197).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v207 = v208 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v207 = new bytes[](RETURNDATASIZE());
                                        require(!((v207 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v207 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v207)), Panic(65)); // failed memory allocation (too much memory)
                                        v206 = v207.data;
                                        RETURNDATACOPY(v206, 0, RETURNDATASIZE());
                                    }
                                    require(v205, v207 + 32, MEM[v207]);
                                }
                            }
                            v45 = v209 = 1;
                            v210 = address(msg.data[v3 + 64]).call(MEM[v2164V0x1dfe.data:v2164V0x1dfe.data + v2164V0x1dfe.length], MEM[v43cdV0x2bdbV0x215eV0x1dfe:v43cdV0x2bdbV0x215eV0x1dfe + v43cdV0x2bdbV0x215eV0x1dfe]).value(v197).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v211 = v212 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v211 = new bytes[](RETURNDATASIZE());
                                require(!((v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v211 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v211)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v211.data, 0, RETURNDATASIZE());
                            }
                            require(v210, v211 + 32, MEM[v211]);
                            v213 = v214 = !MEM[v211];
                            if (v214) {
                                v213 = v215 = !(address(msg.data[v3 + 64])).code.size;
                            }
                            require(!v213, InvalidTarget());
                        }
                    } else {
                        require(v3 + v2 - v3 >= 192);
                        require(!(msg.data[v3] - address(msg.data[v3])));
                        require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                        require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                        require(!(msg.data[v3 + 128] - uint24(msg.data[v3 + 128])));
                        v216 = v217 = 0;
                        if (msg.data[v3 + 64]) {
                            v218 = 0x3cca(address(msg.data[v3 + 32]), this);
                            v216 = v219 = v218 * msg.data[v3 + 64] / 10000;
                            0x3d26(address(msg.data[v3 + 32]), address(msg.data[v3 + 96]), v219);
                        }
                        v220 = address(msg.data[v3 + 96]).getReserves().gas(msg.gas);
                        require(v220, v4, RETURNDATASIZE());
                        require(RETURNDATASIZE() >= 64);
                        v221 = !v216;
                        if (bool(v216)) {
                            v221 = v222 = msg.data[v3 + 128] >> 1 & 0x1 == 1;
                        }
                        if (v221) {
                            v223 = 0x3cca(address(msg.data[v3 + 32]), address(msg.data[v3 + 96]));
                            v216 = v224 = _SafeSub(v223, MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5]);
                        }
                        require((10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                        if ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[v3 + 160]) {
                            v225 = address(msg.data[v3 + 96]).token0().gas(msg.gas);
                            require(v225, v4, RETURNDATASIZE());
                            require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                            revert(TooMuchSlippage(MEM[0], msg.data[v3 + 160], (10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000)));
                        } else {
                            MEM[v4 + ((msg.data[v3 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v216 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000);
                            MEM[v4 + (0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5) + 32] = 0;
                            v226, /* uint256 */ v227 = address(msg.data[v3 + 96]).swap(v104, v104, address(msg.data[v3]), 128, 0).gas(msg.gas);
                            require(v226, v4, RETURNDATASIZE());
                            v45 = v228 = 1;
                        }
                    }
                } else {
                    require(v3 + v2 - v3 >= 128);
                    require(!(msg.data[v3] - address(msg.data[v3])));
                    require(msg.data[v3 + 64] <= uint64.max);
                    require(v3 + msg.data[v3 + 64] + 31 < v3 + v2);
                    require(msg.data[v3 + msg.data[v3 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                    require(v3 + msg.data[v3 + 64] + 32 + msg.data[v3 + msg.data[v3 + 64]] <= v3 + v2);
                    CALLDATACOPY(v44.data, v3 + msg.data[v3 + 64] + 32, msg.data[v3 + msg.data[v3 + 64]]);
                    v44[msg.data[v3 + msg.data[v3 + 64]]] = 0;
                    v229 = v230 = bytes20(MEM[v44.data]);
                    if (v44.length < 20) {
                        v229 = v231 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v44.length << 3) & MEM[v44.data]);
                    }
                    v232 = (v229 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    require(v232, v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), RETURNDATASIZE());
                    require(31 < RETURNDATASIZE(), 0, 16);
                    require(!MEM[0] | (MEM[0] * msg.data[v3 + 32] / MEM[0] == msg.data[v3 + 32]), Panic(17)); // arithmetic overflow or underflow
                    v233 = new bytes[](40);
                    require(!((v233 + 96 > uint64.max) | (v233 + 96 < v233)), Panic(65)); // failed memory allocation (too much memory)
                    CALLDATACOPY(v233.data, msg.data.length, 64);
                    v234 = 0x48bc(address(msg.data[v3]), v4, MEM[0] * msg.data[v3 + 32] / 10000, msg.data[v3 + 96], this, v233);
                    v45 = v235 = 1;
                }
            } else {
                require(v3 + v2 - v3 >= 288);
                require(!(msg.data[v3] - address(msg.data[v3])));
                require(v3 + v2 - (v3 + 32) >= 128);
                v236 = new struct(3);
                require(!((v236 + 96 > uint64.max) | (v236 + 96 < v236)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + v2 - (v3 + 32) >= 64);
                v237 = new struct(2);
                require(!((v237 + 64 > uint64.max) | (v237 + 64 < v237)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                v237.word0 = msg.data[v3 + 32];
                v237.word1 = msg.data[v3 + 32 + 32];
                v236.word0 = v237;
                v238 = v44.data;
                v236.word1 = msg.data[v3 + 32 + 64];
                v236.word2 = msg.data[v3 + 32 + 96];
                require(!(msg.data[v3 + 160] - address(msg.data[v3 + 160])));
                require(msg.data[v3 + 192] <= uint64.max);
                require(v3 + msg.data[v3 + 192] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v239 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
                require(!((v239 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v239 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v239)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + 192] + 32 + msg.data[v3 + msg.data[v3 + 192]] <= v3 + v2);
                CALLDATACOPY(v239.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
                v239[msg.data[v3 + msg.data[v3 + 192]]] = 0;
                require(!(msg.data[v3 + 224] - address(msg.data[v3 + 224])));
                require(MEM[v236.word0.length + 32] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8ef, Panic(1)); // low-level assert failed
                v240, v241 = 0x3def(v236, address(msg.data[v3]));
                v242 = new struct(4);
                require(!((v242 + 128 > uint64.max) | (v242 + 128 < v242)), Panic(65)); // failed memory allocation (too much memory)
                v242.word0 = address(MEM[v236.word0.length]);
                v242.word1 = v240;
                v242.word2 = address(msg.data[v3 + 160]);
                v242.word3 = 1;
                MEM[v242 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v242 - 32] = MEM[v242 - 32];
                v243 = new struct(4);
                require(!((v243 + 128 > uint64.max) | (v243 + 128 < v243)), Panic(65)); // failed memory allocation (too much memory)
                v243.word0 = address(msg.data[v3 + 224]);
                v243.word1 = msg.data[v3 + (uint8.max + 1)];
                v243.word2 = address(_execute);
                v243.word3 = 1;
                MEM[v243 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v243 - 32] = MEM[v243 - 32];
                v244 = 0x3cca(msg.data[v3 + 224], this);
                v241.word1 = v240 * ((msg.data[v3 + (uint8.max + 1)] ^ v244) * (v244 > msg.data[v3 + (uint8.max + 1)]) ^ v244) / msg.data[v3 + (uint8.max + 1)];
                v245 = msg.data[v3 + 224].transfer(address(msg.data[v3 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v3 + (uint8.max + 1)] ^ v244) * (v244 > msg.data[v3 + (uint8.max + 1)]) ^ v244).gas(msg.gas);
                if (!v245) {
                    RETURNDATACOPY(uint24(v243 + 128), 0, RETURNDATASIZE());
                    revert(uint24(v243 + 128), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v246 = new bytes[](162);
                    MEM[v246.data] = 'Consideration consideration)';
                    MCOPY(v246 + 60, v247.data, v247.length);
                    MEM[v246 + v247.length + 60] = 0;
                    MCOPY(v246 + v247.length + 60, v248.data, v248.length);
                    MEM[v246 + v247.length + v248.length + 60] = 0;
                    v249 = v246 + 224;
                    require(!((v249 > uint64.max) | (v249 < v246)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[v249] = 0x137c29fe;
                    MCOPY(32 + v249, v236.word0.length, 64);
                    MCOPY(96 + v249, v44.data, 64);
                    MCOPY(160 + v249, v241, 64);
                    MCOPY(352 + v249, v246, 194);
                    MCOPY(384 + (v249 + v246.length), v239, 32 + v239.length);
                    v250, /* uint256 */ v251 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v104, v104, v104, v104, v104, v104, address(msg.data[v3 + 160]), keccak256(MEM[v264fV0x215eV0x1dfe - 32:v264fV0x215eV0x1dfe - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v250) {
                        v252 = RETURNDATASIZE();
                        revert(v104, v104, v104, v104, v104, v104, v104, v104, v104, 514);
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v264fV0x215eV0x1dfe - 32:v264fV0x215eV0x1dfe - 32 + 160]), keccak256(MEM[v25dcV0x215eV0x1dfe - 32:v25dcV0x215eV0x1dfe - 32 + 160]))(uint128(v240 * ((msg.data[v3 + (uint8.max + 1)] ^ v244) * (v244 > msg.data[v3 + (uint8.max + 1)]) ^ v244) / msg.data[v3 + (uint8.max + 1)]), uint128(v240 * ((msg.data[v3 + (uint8.max + 1)] ^ v244) * (v244 > msg.data[v3 + (uint8.max + 1)]) ^ v244) / msg.data[v3 + (uint8.max + 1)]));
                        v45 = v253 = 1;
                    }
                }
            }
            if (0 == v45) {
                if (v1 - 0xbd01c226) {
                    if (0x131ad428 - v1) {
                        v254 = v255 = 0;
                    } else {
                        require(v3 + v2 - v3 >= 32);
                        require(!(msg.data[v3] - bool(msg.data[v3])));
                        0x22b9(varg0, msg.data[v3]);
                        v254 = v256 = 1;
                    }
                } else {
                    require(v3 + v2 - v3 >= 64);
                    require(block.timestamp <= msg.data[v3], SignatureExpired(msg.data[v3]));
                    require(msg.value <= msg.data[v3 + 32], MsgValueMismatch(msg.data[v3 + 32], msg.value));
                    v254 = v257 = 1;
                }
            } else {
                v254 = v258 = 1;
            }
            if (!v254) {
                v259 = new uint256[](v2);
                CALLDATACOPY(v259.data, v3, v2);
                revert(ActionInvalid(0, bytes4(msg.data[32 + v0]), v259));
            }
        }
        v260 = v261 = varg1 + 32;
        v262 = v263 = 1;
        while (v262 < varg2) {
            v264 = msg.data[varg1 + msg.data[v260]] - 4;
            v265 = varg1 + msg.data[v260] + 36;
            v266 = msg.data[32 + (varg1 + msg.data[v260])] >> 224;
            if (v266 - 0xd92aadfb) {
                if (v266 - 0x8d68a156) {
                    if (v266 - 0x103b48be) {
                        if (0 == (v266 == 0x38c9c147)) {
                            if (v266 - 0x96b17b6c) {
                                if (v266 - 0x34ee90ca) {
                                    if (0 == (v266 == 0xaf72634f) | (v266 == 0xfd8c38e1) | (v266 == 0x6c5f9cf9) | (v266 == 0xf61460f9)) {
                                        if (0 == (v266 == 0x736180c8)) {
                                            if (v266 - 0x6472b276) {
                                                if (v266 - 0x9b59756f) {
                                                    if (v266 - 0x670335be) {
                                                        if (v266 - 0xca9e5d0f) {
                                                            if (0xb8df6d4d - v266) {
                                                                v267 = v268 = 0;
                                                            } else {
                                                                require(v265 + v264 - v265 >= 160);
                                                                require(!(msg.data[v265] - address(msg.data[v265])));
                                                                require(!(msg.data[v265 + 64] - address(msg.data[v265 + 64])));
                                                                require(!(msg.data[v265 + 96] - bool(msg.data[v265 + 96])));
                                                                v269 = 0x3cca(msg.data[v265], this);
                                                                0x4d16(msg.data[v265], address(msg.data[v265 + 64]), v269 * msg.data[v265 + 32] / 10000);
                                                                if (!msg.data[v265 + 96]) {
                                                                    v270 = msg.data[v265 + 64].sellBaseToken(v269 * msg.data[v265 + 32] / 10000, msg.data[v265 + 128], 96, 0).gas(msg.gas);
                                                                    if (!v270) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                        v267 = v271 = 1;
                                                                    }
                                                                } else {
                                                                    v272 = msg.data[v265 + 64].getExpectedTarget().gas(msg.gas);
                                                                    if (!v272) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 63);
                                                                        v273 = msg.data[v265 + 64]._R_STATUS_().gas(msg.gas);
                                                                        if (!v273) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            require(!(MEM[0] >> 8));
                                                                            require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                            v274 = msg.data[v265 + 64].getOraclePrice().gas(msg.gas);
                                                                            if (!v274) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v275 = msg.data[v265 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                                if (!v275) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    v276 = msg.data[v265 + 64]._K_().gas(msg.gas);
                                                                                    if (!v276) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                                        if (uint8(MEM[0]) - 2) {
                                                                                            require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                                            v277 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v269 * msg.data[v265 + 32] / 10000) / 10 ** 18;
                                                                                            if ((10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 < v277) {
                                                                                                v278 = v279 = v277 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                                v280 = v281 = 10 ** 18;
                                                                                                v282 = v283 = 0;
                                                                                            } else {
                                                                                                v278 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v277;
                                                                                                v282 = v284 = 1;
                                                                                                v280 = 10 ** 18;
                                                                                            }
                                                                                            v285 = v286 = v278 * v278 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v280;
                                                                                            v285 = (v286 >> 1) + 1;
                                                                                            while (v285 < v285) {
                                                                                                v285 = v285 + v286 / v285 >> 1;
                                                                                            }
                                                                                            if (0 == v282) {
                                                                                                v287 = v288 = v285 - v278;
                                                                                            } else {
                                                                                                v287 = v289 = v278 + v285;
                                                                                            }
                                                                                            v290 = v291 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v287 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v287 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                        } else {
                                                                                            v292 = msg.data[v265 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                            if (!v292) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v269 * msg.data[v265 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                    v293 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v269 * msg.data[v265 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                                                    if ((10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 < v293) {
                                                                                                        v294 = v295 = v293 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                        v296 = v297 = 10 ** 18;
                                                                                                        v298 = v299 = 0;
                                                                                                    } else {
                                                                                                        v294 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v293;
                                                                                                        v298 = v300 = 1;
                                                                                                        v296 = 10 ** 18;
                                                                                                    }
                                                                                                    v301 = v302 = v294 * v294 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v296;
                                                                                                    v301 = (v302 >> 1) + 1;
                                                                                                    while (v301 < v301) {
                                                                                                        v301 = v301 + v302 / v301 >> 1;
                                                                                                    }
                                                                                                    if (0 == v298) {
                                                                                                        v303 = v304 = v301 - v294;
                                                                                                    } else {
                                                                                                        v303 = v305 = v294 + v301;
                                                                                                    }
                                                                                                    v290 = v306 = MEM[0] - MEM[0] + (MEM[0] - (bool(v303 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v303 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                                } else {
                                                                                                    v290 = (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v269 * msg.data[v265 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v269 * msg.data[v265 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) * ((MEM[0] + v269 * msg.data[v265 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                        v307 = msg.data[v265 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v307) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            v308 = msg.data[v265 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                            if (!v308) {
                                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                                            } else {
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                if (v290 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < msg.data[v265 + 128]) {
                                                                                                    v309 = msg.data[v265 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                    require(v309, MEM[64], RETURNDATASIZE());
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v265 + 128], v290 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                                                    revert();
                                                                                                } else {
                                                                                                    v310 = msg.data[v265 + 64].buyBaseToken(v290 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v269 * msg.data[v265 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                    if (!v310) {
                                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                                    } else {
                                                                                                        require(RETURNDATASIZE() > 31);
                                                                                                        v267 = v311 = 1;
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
                                                            require(v265 + v264 - v265 >= 192);
                                                            require(!(msg.data[v265] - address(msg.data[v265])));
                                                            require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                                            require(!(msg.data[v265 + 96] - address(msg.data[v265 + 96])));
                                                            require(!(msg.data[v265 + 128] - bool(msg.data[v265 + 128])));
                                                            if (msg.data[v265 + 64]) {
                                                                v312 = 0x3cca(msg.data[v265 + 32], this);
                                                                0x3d26(msg.data[v265 + 32], address(msg.data[v265 + 96]), v312 * msg.data[v265 + 64] / 10000);
                                                            }
                                                            v313 = msg.data[v265 + 96].sellQuote(address(msg.data[v265]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v265 + 128]) << 96).gas(msg.gas);
                                                            if (!v313) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(RETURNDATASIZE() > 31);
                                                                if (MEM[0] < msg.data[v265 + 160]) {
                                                                    v314 = msg.data[v265 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                    require(v314, MEM[64], RETURNDATASIZE());
                                                                    require(RETURNDATASIZE() > 31);
                                                                    require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v265 + 160], MEM[0]));
                                                                    revert();
                                                                } else {
                                                                    v267 = 1;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(v265 + v264 - v265 >= 352);
                                                        require(!(msg.data[v265] - address(msg.data[v265])));
                                                        require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                                        require(v265 + v264 - v265 - 64 >= 224);
                                                        v315 = new struct(7);
                                                        require(!((v315 + 224 > uint64.max) | (v315 + 224 < v315)), Panic(65)); // failed memory allocation (too much memory)
                                                        v315.word0 = msg.data[v265 + 64];
                                                        require(!(msg.data[v265 + 96] - address(msg.data[v265 + 96])));
                                                        v315.word1 = msg.data[v265 + 96];
                                                        v315.word2 = msg.data[v265 + 128];
                                                        require(!(msg.data[v265 + 160] - address(msg.data[v265 + 160])));
                                                        v315.word3 = msg.data[v265 + 160];
                                                        v315.word4 = msg.data[v265 + 192];
                                                        v315.word5 = msg.data[v265 + 224];
                                                        v315.word6 = msg.data[v265 + (uint8.max + 1)];
                                                        require(msg.data[v265 + 288] <= uint64.max);
                                                        require(v265 + v264 - (v265 + msg.data[v265 + 288]) >= 64);
                                                        v316 = new struct(2);
                                                        require(!((v316 + 64 > uint64.max) | (v316 + 64 < v316)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(msg.data[v265 + msg.data[v265 + 288]] <= uint64.max);
                                                        require(v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]] + 31 < v265 + v264);
                                                        require(msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v317 = new bytes[](msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]]);
                                                        require(!((v317 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v317 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v317)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]] + 32 + msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]] <= v265 + v264);
                                                        CALLDATACOPY(v317.data, v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]] + 32, msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]]);
                                                        v317[msg.data[v265 + msg.data[v265 + 288] + msg.data[v265 + msg.data[v265 + 288]]]] = 0;
                                                        v316.word0 = v317;
                                                        v316.word1 = msg.data[v265 + msg.data[v265 + 288] + 32];
                                                        v318 = 0x3cca(msg.data[v265 + 32], this);
                                                        require(v315.word5 * ((v315.word4 ^ v318) * (v318 > v315.word4) ^ v318) / v315.word4 >= msg.data[v265 + 320], TooMuchSlippage(address(v315.word3), 0x97a6f3b9000000000000000000000000, msg.data[v265 + 320], v315.word5 * ((v315.word4 ^ v318) * (v318 > v315.word4) ^ v318) / v315.word4));
                                                        v319 = msg.data[v265 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                        if (!v319) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(32 <= RETURNDATASIZE());
                                                            if (MEM[0] < (v315.word4 ^ v318) * (v318 > v315.word4) ^ v318) {
                                                                if (MEM[0]) {
                                                                    0x56db(msg.data[v265 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
                                                                }
                                                                v320 = msg.data[v265 + 32].approve(0xbbbbbbb520d69a9775e85b458c58c648259fad5f, 0x95ea7b3000000000000000000000000, uint256.max).gas(msg.gas);
                                                                if (!v320) {
                                                                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                                                                    revert(uint24(MEM[64]), RETURNDATASIZE());
                                                                } else {
                                                                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                                                                    MEM[52] = 0;
                                                                }
                                                            }
                                                            MCOPY(96 + MEM[64], 32 + v315, 64);
                                                            MCOPY(192 + MEM[64], 96 + v315, 96);
                                                            v321 = new uint256[](64);
                                                            MEM[v321.data] = v316.word1;
                                                            v322 = v316.word0;
                                                            MCOPY(512 + MEM[64], v316.word0, 32 + v322.length);
                                                            v323 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v315.word0, this, v104, v104, address(msg.data[v265 + 32]), v104, v104, v104, address(msg.data[v265]), _execute << 96 | v315.word6 >> 248, v315.word6 << 128, v321, (v315.word4 ^ v318) * (v318 > v315.word4) ^ v318).gas(msg.gas);
                                                            if (!v323) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                emit uint128(v315.word6)(uint128(v315.word5 * ((v315.word4 ^ v318) * (v318 > v315.word4) ^ v318) / v315.word4), uint128(v315.word5 * ((v315.word4 ^ v318) * (v318 > v315.word4) ^ v318) / v315.word4));
                                                                v267 = v324 = 1;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    require(v265 + v264 - v265 >= 224);
                                                    require(!(msg.data[v265] - address(msg.data[v265])));
                                                    require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                                    require(!(msg.data[v265 + 96] - address(msg.data[v265 + 96])));
                                                    require(!(msg.data[v265 + 128] - bool(msg.data[v265 + 128])));
                                                    require(!(msg.data[v265 + 160] - int32(msg.data[v265 + 160])));
                                                    if (!msg.data[v265 + 64]) {
                                                        v325 = 0x3cca(msg.data[v265 + 32], address(msg.data[v265 + 96]));
                                                        v326 = msg.data[v265 + 96].getState().gas(msg.gas);
                                                        if (!v326) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v265 + 128] << 5) + MEM[64]] >> 128));
                                                            v327 = v328 = 64;
                                                            v329 = v330 = 0;
                                                            v331 = v332 = v325 - uint128(MEM[(!msg.data[v265 + 128] << 5) + MEM[64]]);
                                                        }
                                                    } else {
                                                        v327 = 64;
                                                        v329 = 0;
                                                        v333 = 0x3cca(msg.data[v265 + 32], this);
                                                        v331 = v334 = v333 * msg.data[v265 + 64] / 10000;
                                                        0x3d26(msg.data[v265 + 32], address(msg.data[v265 + 96]), v334);
                                                    }
                                                    require(!((MEM[v327] + 32 > uint64.max) | (MEM[v327] + 32 < MEM[v327])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[v327] + 32, msg.data.length, 0);
                                                    MCOPY(228 + MEM[v327], MEM[v327], 32);
                                                    v335 = msg.data[v265 + 96].call(0x3eece7db000000000000000000000000, address(msg.data[v265]), 0x3eece7db000000000000000000000000, v331, msg.data[v265 + 128], v329, int32(msg.data[v265 + 160]), 192).value(v329).gas(msg.gas);
                                                    if (!v335) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (MEM[32] < msg.data[192 + v265]) {
                                                        v336 = msg.data[v265 + 96].tokenB().gas(msg.gas);
                                                        require(v336, MEM[64], RETURNDATASIZE());
                                                        require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                        revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[192 + v265], MEM[32]));
                                                    } else {
                                                        v267 = v337 = 1;
                                                    }
                                                }
                                            } else {
                                                require(v265 + v264 - v265 >= 192);
                                                require(!(msg.data[v265] - address(msg.data[v265])));
                                                require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                                require(!(msg.data[v265 + 96] - address(msg.data[v265 + 96])));
                                                require(!(msg.data[v265 + 128] - bool(msg.data[v265 + 128])));
                                                EXTCODECOPY(msg.data[v265 + 96], MEM[64], 54, 384);
                                                v338 = msg.data[v265 + 96].getReserves().gas(msg.gas);
                                                if (!v338) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                    v339 = address(address(MEM[MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v265 + 128]);
                                                    v340 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v265 + 128]).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                    if (!v340) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v341 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v265 + 128]).maxDeposit(0x402d267d000000000000000000000000, MEM[64 + MEM[64]]).gas(msg.gas);
                                                        if (!v341) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(32 <= RETURNDATASIZE());
                                                            v342 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]] << 96, MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, address(msg.data[v265 + 96]), MEM[64 + MEM[64]]).gas(msg.gas);
                                                            if (!v342) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v343 = v339.cash().gas(msg.gas);
                                                                if (!v343) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(32 <= RETURNDATASIZE());
                                                                    v344 = v345 = (MEM[0] ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v265 + 128])) * (MEM[0] < MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v265 + 128]) ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v265 + 128]);
                                                                    v346 = v339.caps().gas(msg.gas);
                                                                    if (!v346) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                        v347 = v339.totalBorrows().gas(msg.gas);
                                                                        if (!v347) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(32 <= RETURNDATASIZE());
                                                                            v348 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * (((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) - MEM[0]);
                                                                            if (v348 < v345) {
                                                                                v349 = 0x3cca(v339, MEM[64 + MEM[64]]);
                                                                                v350 = v339.convertToAssets(v349).gas(msg.gas);
                                                                                if (!v350) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(32 <= RETURNDATASIZE());
                                                                                    v344 = v351 = (v345 ^ MEM[0] + v348) * (MEM[0] + v348 >= v345) ^ MEM[0] + v348;
                                                                                }
                                                                            }
                                                                            if (0 == msg.data[v265 + 128]) {
                                                                                if ((MEM[0] - v344) * (MEM[0] > v344) > MEM[96 + MEM[64]]) {
                                                                                    v352 = v353 = 0x57f3((MEM[0] - v344) * (MEM[0] > v344), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                } else {
                                                                                    v352 = 0x5a82((MEM[0] - v344) * (MEM[0] > v344), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                }
                                                                                v354 = v355 = (v352 > MEM[32]) * (v352 - MEM[32]);
                                                                            } else {
                                                                                if ((MEM[32] - v344) * (MEM[32] > v344) > MEM[128 + MEM[64]]) {
                                                                                    v356 = v357 = 0x57f3((MEM[32] - v344) * (MEM[32] > v344), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                } else {
                                                                                    v356 = 0x5a82((MEM[32] - v344) * (MEM[32] > v344), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                }
                                                                                v354 = v358 = (v356 > MEM[0]) * (v356 - MEM[0]);
                                                                            }
                                                                            v359 = ((v354 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v354 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                            v360 = 0;
                                                                            if (msg.data[v265 + 64]) {
                                                                                v361 = 0x3cca(msg.data[v265 + 32], this);
                                                                                v360 = v362 = (v359 ^ v361 * msg.data[v265 + 64] / 10000) * (v361 * msg.data[v265 + 64] / 10000 > v359) ^ v361 * msg.data[v265 + 64] / 10000;
                                                                                0x3d26(msg.data[v265 + 32], address(msg.data[v265 + 96]), v362);
                                                                            }
                                                                            if (!v360) {
                                                                                v363 = 0x3cca(msg.data[v265 + 32], address(msg.data[v265 + 96]));
                                                                                v360 = v364 = (v359 ^ v363) * (v363 > v359) ^ v363;
                                                                            }
                                                                            if (0 == msg.data[v265 + 128]) {
                                                                                if (MEM[32] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                    v365 = 0x57f3(MEM[32] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                    v366 = v367 = (MEM[0] > !v365 + v365) * (MEM[0] - (!v365 + v365));
                                                                                } else {
                                                                                    v368 = 0x5a82(MEM[32] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                    v366 = v369 = (MEM[0] > !v368 + v368) * (MEM[0] - (!v368 + v368));
                                                                                }
                                                                            } else if (MEM[0] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                                v370 = 0x57f3(MEM[0] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v366 = v371 = (MEM[32] > !v370 + v370) * (MEM[32] - (!v370 + v370));
                                                                            } else {
                                                                                v372 = 0x5a82(MEM[0] + (v360 - v360 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                v366 = v373 = (MEM[32] > !v372 + v372) * (MEM[32] - (!v372 + v372));
                                                                            }
                                                                            if (v366 < msg.data[v265 + 160]) {
                                                                                v374 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v265 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                                require(v374, MEM[64], RETURNDATASIZE());
                                                                                require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                                                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v265 + 160], v366));
                                                                            } else {
                                                                                if (v366 > 1) {
                                                                                    MEM[MEM[64] + (msg.data[v265 + 128] << 5) + 32] = v366;
                                                                                    MEM[(0x20 ^ msg.data[v265 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                    v375 = msg.data[v265 + 96].swap(v104, v104, address(msg.data[v265]), 128, 0).gas(msg.gas);
                                                                                    if (!v375) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    }
                                                                                }
                                                                                v267 = v376 = 1;
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
                                            require(v265 + v264 - v265 >= 192);
                                            require(!(msg.data[v265] - address(msg.data[v265])));
                                            require(!(msg.data[v265 + 64] - bool(msg.data[v265 + 64])));
                                            require(!(msg.data[v265 + 128] - address(msg.data[v265 + 128])));
                                            require(!(msg.data[v265 + 160] - address(msg.data[v265 + 160])));
                                            v377 = 0x3cca(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v265 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v265 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v265 + 160]) * msg.data[v265 + 64], this);
                                            if (!msg.data[v265 + 64]) {
                                                v378 = msg.data[v265 + 128].sellGem(address(msg.data[v265]), 0x95991276000000000000000000000000, v377 * msg.data[v265 + 32] / 10000).gas(msg.gas);
                                                if (!v378) {
                                                    RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                    revert(uint96(MEM[64]), RETURNDATASIZE());
                                                } else {
                                                    MEM[52] = 0;
                                                    v379 = msg.data[v265 + 128].tin().gas(msg.gas);
                                                    if (!v379) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(RETURNDATASIZE() > 31);
                                                        v380 = v381 = v377 * msg.data[v265 + 32] / 10000 * 10 ** 18 / 10 ** 6 - v377 * msg.data[v265 + 32] / 10000 * 10 ** 18 / 10 ** 6 * MEM[0] / 10 ** 18;
                                                        if (v381 >= msg.data[v265 + 96]) {
                                                            v267 = v382 = 1;
                                                        }
                                                    }
                                                }
                                            } else {
                                                v383 = msg.data[v265 + 128].tout().gas(msg.gas);
                                                if (!v383) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(RETURNDATASIZE() > 31);
                                                    v380 = v384 = v377 * msg.data[v265 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                    if (v384 >= msg.data[v265 + 96]) {
                                                        v385 = msg.data[v265 + 128].buyGem(address(msg.data[v265]), 0x8d7ef9bb000000000000000000000000, v384).gas(msg.gas);
                                                        if (!v385) {
                                                            RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                            revert(uint96(MEM[64]), RETURNDATASIZE());
                                                        } else {
                                                            MEM[52] = 0;
                                                            v267 = v386 = 1;
                                                        }
                                                    }
                                                }
                                            }
                                            revert(TooMuchSlippage(msg.data[v265 + 160] ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v265 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v265 + 160]) * msg.data[v265 + 64], 0x97a6f3b9000000000000000000000000, msg.data[v265 + 96], v380));
                                        }
                                    } else {
                                        require(v265 + v264 - v265 >= uint8.max + 1);
                                        require(!(msg.data[v265] - address(msg.data[v265])));
                                        require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                        require(!(msg.data[v265 + 96] - bool(msg.data[v265 + 96])));
                                        require(msg.data[v265 + 192] <= uint64.max);
                                        require(v265 + msg.data[v265 + 192] + 31 < v265 + v264);
                                        require(msg.data[v265 + msg.data[v265 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v387 = new bytes[](msg.data[v265 + msg.data[v265 + 192]]);
                                        require(!((v387 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v387 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v387)), Panic(65)); // failed memory allocation (too much memory)
                                        require(v265 + msg.data[v265 + 192] + 32 + msg.data[v265 + msg.data[v265 + 192]] <= v265 + v264);
                                        CALLDATACOPY(v387.data, v265 + msg.data[v265 + 192] + 32, msg.data[v265 + msg.data[v265 + 192]]);
                                        v387[msg.data[v265 + msg.data[v265 + 192]]] = 0;
                                        if (0 == (v266 == 0xaf72634f)) {
                                            if (v266 != 0xfd8c38e1) {
                                                if (0 == (v266 == 0x6c5f9cf9)) {
                                                    require(!msg.data[v265 + 128] | (96 == msg.data[v265 + 128] * 96 / msg.data[v265 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!msg.data[v265 + 160] | (96 == msg.data[v265 + 160] * 96 / msg.data[v265 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!((msg.data[v265 + 64] > 10000) | bool(msg.data[v265 + 224] >> 128) | bool(msg.data[v265 + 128] * 96 >> 128) | bool(msg.data[v265 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                    MCOPY(211 + MEM[64], v387.data, v387.length);
                                                    MEM[179 + MEM[64]] = msg.data[v265 + 64];
                                                    MEM[177 + MEM[64]] = msg.data[v265 + 32];
                                                    MEM[157 + MEM[64]] = this;
                                                    MEM[136 + MEM[64]] = msg.data[v265 + 160] * 96;
                                                    MEM[120 + MEM[64]] = msg.data[v265 + 128] * 96;
                                                    MEM[104 + MEM[64]] = msg.data[v265 + 224];
                                                    MEM[88 + MEM[64]] = address(msg.data[v265]);
                                                    MEM[68 + MEM[64]] = 111 + v387.length;
                                                    MEM[36 + MEM[64]] = 32;
                                                    MEM[4 + MEM[64]] = 0xf83d08ba;
                                                    MEM8[168 + MEM[64]] = msg.data[v265 + 96] & 0xFF;
                                                    MEM[64] = MEM[64] + v387.length + 211;
                                                    require((_execute ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                    v388 = ___function_selector__;
                                                    require(!v388, ReentrantCallback(v388));
                                                    ___function_selector__ = 0x400000000000014aa86c5d3c41765bb24e11bd701;
                                                    v389 = 0x14aa86c5d3c41765bb24e11bd701.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d73V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v390 = v391 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v390 = new bytes[](RETURNDATASIZE());
                                                        require(!((v390 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v390 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v390)), Panic(65)); // failed memory allocation (too much memory)
                                                        RETURNDATACOPY(v390.data, 0, RETURNDATASIZE());
                                                    }
                                                    require(v389, v390 + 32, MEM[v390]);
                                                    v392 = ___function_selector__;
                                                    require(!v392, CallbackNotSpent(v392));
                                                    v267 = v393 = 1;
                                                } else {
                                                    require(!msg.data[v265 + 128] | (96 == msg.data[v265 + 128] * 96 / msg.data[v265 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!msg.data[v265 + 160] | (96 == msg.data[v265 + 160] * 96 / msg.data[v265 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                    require(!((msg.data[v265 + 64] > 10000) | bool(msg.data[v265 + 224] >> 128) | bool(msg.data[v265 + 128] * 96 >> 128) | bool(msg.data[v265 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                    MCOPY(211 + MEM[64], v387.data, v387.length);
                                                    MEM[179 + MEM[64]] = msg.data[v265 + 64];
                                                    MEM[177 + MEM[64]] = msg.data[v265 + 32];
                                                    MEM[157 + MEM[64]] = this;
                                                    MEM[136 + MEM[64]] = msg.data[v265 + 160] * 96;
                                                    MEM[120 + MEM[64]] = msg.data[v265 + 128] * 96;
                                                    MEM[104 + MEM[64]] = msg.data[v265 + 224];
                                                    MEM[88 + MEM[64]] = address(msg.data[v265]);
                                                    MEM[68 + MEM[64]] = 111 + v387.length;
                                                    MEM[36 + MEM[64]] = 32;
                                                    MEM[4 + MEM[64]] = 0xf83d08ba;
                                                    MEM8[168 + MEM[64]] = msg.data[v265 + 96] & 0xFF;
                                                    MEM[64] = MEM[64] + v387.length + 211;
                                                    require((_execute ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                    v394 = ___function_selector__;
                                                    require(!v394, ReentrantCallback(v394));
                                                    ___function_selector__ = 0xb45a3c0e0000000000000002e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                    v395 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d73V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                                    if (!RETURNDATASIZE()) {
                                                        v396 = v397 = 96;
                                                    } else {
                                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                        v396 = new bytes[](RETURNDATASIZE());
                                                        require(!((v396 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v396 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v396)), Panic(65)); // failed memory allocation (too much memory)
                                                        RETURNDATACOPY(v396.data, 0, RETURNDATASIZE());
                                                    }
                                                    require(v395, v396 + 32, MEM[v396]);
                                                    v398 = ___function_selector__;
                                                    require(!v398, CallbackNotSpent(v398));
                                                    v267 = v399 = 1;
                                                }
                                            } else {
                                                require(!msg.data[v265 + 128] | (96 == msg.data[v265 + 128] * 96 / msg.data[v265 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v265 + 160] | (96 == msg.data[v265 + 160] * 96 / msg.data[v265 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v265 + 64] > 10000) | bool(msg.data[v265 + 224] >> 128) | bool(msg.data[v265 + 128] * 96 >> 128) | bool(msg.data[v265 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v387.data, v387.length);
                                                MEM[179 + MEM[64]] = msg.data[v265 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v265 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v265 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v265 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v265 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v265]);
                                                MEM[68 + MEM[64]] = 111 + v387.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0x48c89491;
                                                MEM8[168 + MEM[64]] = msg.data[v265 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v387.length + 211;
                                                require((_execute ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                                v400 = ___function_selector__;
                                                require(!v400, ReentrantCallback(v400));
                                                ___function_selector__ = uint32(msg.data[v265] >> 128) << 224 | 0x1ba1333333333a1ba1108e8412f11850a5c319ba9;
                                                v401 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d73V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v402 = v403 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v402 = new bytes[](RETURNDATASIZE());
                                                    require(!((v402 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v402 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v402)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v402.data, 0, RETURNDATASIZE());
                                                }
                                                require(v401, v402 + 32, MEM[v402]);
                                                v404 = ___function_selector__;
                                                require(!v404, CallbackNotSpent(v404));
                                                v267 = v405 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v265 + 128] | (96 == msg.data[v265 + 128] * 96 / msg.data[v265 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v265 + 160] | (96 == msg.data[v265 + 160] * 96 / msg.data[v265 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v265 + 64] > 10000) | bool(msg.data[v265 + 224] >> 128) | bool(msg.data[v265 + 128] * 96 >> 128) | bool(msg.data[v265 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + MEM[64], v387.data, v387.length);
                                            MEM[179 + MEM[64]] = msg.data[v265 + 64];
                                            MEM[177 + MEM[64]] = msg.data[v265 + 32];
                                            MEM[157 + MEM[64]] = this;
                                            MEM[136 + MEM[64]] = msg.data[v265 + 160] * 96;
                                            MEM[120 + MEM[64]] = msg.data[v265 + 128] * 96;
                                            MEM[104 + MEM[64]] = msg.data[v265 + 224];
                                            MEM[88 + MEM[64]] = address(msg.data[v265]);
                                            MEM[68 + MEM[64]] = 111 + v387.length;
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[4 + MEM[64]] = 0x48c89491;
                                            MEM8[168 + MEM[64]] = msg.data[v265 + 96] & 0xFF;
                                            MEM[64] = MEM[64] + v387.length + 211;
                                            require((_execute ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                            v406 = ___function_selector__;
                                            require(!v406, ReentrantCallback(v406));
                                            ___function_selector__ = 0x91dd73460000000000000006000000000004444c5dc75cb358380d2e3de08a90;
                                            v407 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d73V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v408 = v409 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v408 = new bytes[](RETURNDATASIZE());
                                                require(!((v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v408 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v408)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v408.data, 0, RETURNDATASIZE());
                                            }
                                            require(v407, v408 + 32, MEM[v408]);
                                            v410 = ___function_selector__;
                                            require(!v410, CallbackNotSpent(v410));
                                            v267 = v411 = 1;
                                        }
                                    }
                                } else {
                                    require(v265 + v264 - v265 >= 128);
                                    require(!(msg.data[v265] - address(msg.data[v265])));
                                    require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v265 + 32])) {
                                        v412 = v413 = 0x3cca(msg.data[v265 + 32], this);
                                    } else {
                                        v412 = v414 = this.balance;
                                    }
                                    if (v412 > msg.data[v265 + 64]) {
                                        v415 = (v412 * msg.data[v265 + 96] / 10000 ^ v412 - msg.data[v265 + 64]) * (v412 - msg.data[v265 + 64] > v412 * msg.data[v265 + 96] / 10000) ^ v412 - msg.data[v265 + 64];
                                        if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v265 + 32]))) {
                                            0x3d26(msg.data[v265 + 32], address(msg.data[v265]), v415);
                                        } else {
                                            0x3d86(msg.data[v265], v415);
                                        }
                                    }
                                    v267 = v416 = 1;
                                }
                            } else {
                                require(v265 + v264 - v265 >= 96);
                                require(!(msg.data[v265] - address(msg.data[v265])));
                                require(!(msg.data[v265 + 64] - address(msg.data[v265 + 64])));
                                v267 = v417 = 1;
                            }
                        } else {
                            require(v265 + v264 - v265 >= 160);
                            require(!(msg.data[v265] - address(msg.data[v265])));
                            require(!(msg.data[v265 + 64] - address(msg.data[v265 + 64])));
                            require(msg.data[v265 + 128] <= uint64.max);
                            require(v265 + msg.data[v265 + 128] + 31 < v265 + v264);
                            require(msg.data[v265 + msg.data[v265 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v418 = new bytes[](msg.data[v265 + msg.data[v265 + 128]]);
                            require(!((v418 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v418 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v418)), Panic(65)); // failed memory allocation (too much memory)
                            require(v265 + msg.data[v265 + 128] + 32 + msg.data[v265 + msg.data[v265 + 128]] <= v265 + v264);
                            CALLDATACOPY(v418.data, v265 + msg.data[v265 + 128] + 32, msg.data[v265 + msg.data[v265 + 128]]);
                            v418[msg.data[v265 + msg.data[v265 + 128]]] = 0;
                            require(!((address(msg.data[v265 + 64]) == 0xbbbbbbb520d69a9775e85b458c58c648259fad5f) | ((address(msg.data[v265 + 64]) == 0x1ff3684f28c67538d4d072c22734) | (address(msg.data[v265 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3))), ConfusedDeputy());
                            v419 = v420 = 0;
                            if (address(msg.data[v265]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v265])) {
                                    v421 = 0x3cca(msg.data[v265], this);
                                    MEM[0] = v421 * msg.data[v265 + 32] % uint256.max - v421 * msg.data[v265 + 32] - (v421 * msg.data[v265 + 32] % uint256.max < v421 * msg.data[v265 + 32]);
                                    MEM[32] = v421 * msg.data[v265 + 32];
                                    if (!MEM[0]) {
                                        v422 = MEM[32] / 10000;
                                    } else {
                                        v422 = v423 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v265 + 96] <= msg.data[v265 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v418.length >= msg.data[v265 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v424 = 0;
                                    v418[msg.data[v265 + 96]] = v422;
                                    if (address(msg.data[v265]) - address(msg.data[v265 + 64])) {
                                        0x4d16(msg.data[v265], address(msg.data[v265 + 64]), v422);
                                    }
                                } else {
                                    require(!msg.data[v265 + 96], InvalidOffset());
                                    v424 = v425 = 0;
                                }
                            } else {
                                v426 = this.balance;
                                v419 = v426 * msg.data[v265 + 32] / 10000;
                                if (0 == !v418.length) {
                                    require(msg.data[v265 + 96] <= msg.data[v265 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v418.length >= msg.data[v265 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v424 = v427 = 0;
                                    v418[msg.data[v265 + 96]] = v419;
                                } else {
                                    require(!msg.data[v265 + 96], InvalidOffset());
                                    v428 = address(msg.data[v265 + 64]).call().value(v419).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v429 = v430 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v429 = new bytes[](RETURNDATASIZE());
                                        require(!((v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v429 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v429)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v429.data, 0, RETURNDATASIZE());
                                    }
                                    require(v428, v429 + 32, MEM[v429]);
                                }
                            }
                            v267 = v431 = 1;
                            v432 = address(msg.data[v265 + 64]).call(MEM[v64b0x65eV0x68eV0x2bcdV0x220fV0x1d6c.data:v64b0x65eV0x68eV0x2bcdV0x220fV0x1d6c.data + v64b0x65eV0x68eV0x2bcdV0x220fV0x1d6c.length], MEM[v43cdV0x2bdbV0x220fV0x1d6c:v43cdV0x2bdbV0x220fV0x1d6c + v43cdV0x2bdbV0x220fV0x1d6c]).value(v419).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v433 = v434 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v433 = new bytes[](RETURNDATASIZE());
                                require(!((v433 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v433 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v433)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v433.data, 0, RETURNDATASIZE());
                            }
                            require(v432, v433 + 32, MEM[v433]);
                            v435 = v436 = !MEM[v433];
                            if (v436) {
                                v435 = v437 = !(address(msg.data[v265 + 64])).code.size;
                            }
                            require(!v435, InvalidTarget());
                        }
                    } else {
                        require(v265 + v264 - v265 >= 192);
                        require(!(msg.data[v265] - address(msg.data[v265])));
                        require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                        require(!(msg.data[v265 + 96] - address(msg.data[v265 + 96])));
                        require(!(msg.data[v265 + 128] - uint24(msg.data[v265 + 128])));
                        v438 = v439 = 0;
                        if (msg.data[v265 + 64]) {
                            v440 = 0x3cca(address(msg.data[v265 + 32]), this);
                            v438 = v441 = v440 * msg.data[v265 + 64] / 10000;
                            0x3d26(address(msg.data[v265 + 32]), address(msg.data[v265 + 96]), v441);
                        }
                        v442 = address(msg.data[v265 + 96]).getReserves().gas(msg.gas);
                        if (!v442) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v443 = !v438;
                            if (bool(v438)) {
                                v443 = v444 = msg.data[v265 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v443) {
                                v445 = 0x3cca(address(msg.data[v265 + 32]), address(msg.data[v265 + 96]));
                                v438 = v446 = _SafeSub(v445, MEM[0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 + MEM[0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            if ((10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 * MEM[(msg.data[v265 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 + MEM[0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[v265 + 160]) {
                                v447 = address(msg.data[v265 + 96]).token0().gas(msg.gas);
                                require(v447, MEM[64], RETURNDATASIZE());
                                require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v265 + 160], (10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 * MEM[(msg.data[v265 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 + MEM[0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5] * 10000)));
                            } else {
                                MEM[MEM[64] + ((msg.data[v265 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 * MEM[(msg.data[v265 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v265 + 128] >> 8)) * v438 + MEM[0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5] * 10000);
                                MEM[MEM[64] + (0x20 ^ (msg.data[v265 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v448 = address(msg.data[v265 + 96]).swap(v104, v104, address(msg.data[v265]), 128, 0).gas(msg.gas);
                                if (!v448) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v267 = v449 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v265 + v264 - v265 >= 128);
                    require(!(msg.data[v265] - address(msg.data[v265])));
                    require(msg.data[v265 + 64] <= uint64.max);
                    require(v265 + msg.data[v265 + 64] + 31 < v265 + v264);
                    require(msg.data[v265 + msg.data[v265 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v450 = new bytes[](msg.data[v265 + msg.data[v265 + 64]]);
                    require(!((v450 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v450 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v450)), Panic(65)); // failed memory allocation (too much memory)
                    require(v265 + msg.data[v265 + 64] + 32 + msg.data[v265 + msg.data[v265 + 64]] <= v265 + v264);
                    CALLDATACOPY(v450.data, v265 + msg.data[v265 + 64] + 32, msg.data[v265 + msg.data[v265 + 64]]);
                    v450[msg.data[v265 + msg.data[v265 + 64]]] = 0;
                    v451 = v452 = bytes20(MEM[v450.data]);
                    if (v450.length < 20) {
                        v451 = v453 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v450.length << 3) & MEM[v450.data]);
                    }
                    v454 = (v451 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v454) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE(), 0, 16);
                        require(!MEM[0] | (MEM[0] * msg.data[v265 + 32] / MEM[0] == msg.data[v265 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v455 = new bytes[](40);
                        require(!((v455 + 96 > uint64.max) | (v455 + 96 < v455)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v455.data, msg.data.length, 64);
                        v456 = 0x48bc(address(msg.data[v265]), v450, MEM[0] * msg.data[v265 + 32] / 10000, msg.data[v265 + 96], this, v455);
                        v267 = v457 = 1;
                    }
                }
            } else {
                require(v265 + v264 - v265 >= 288);
                require(!(msg.data[v265] - address(msg.data[v265])));
                require(v265 + v264 - (v265 + 32) >= 128);
                v458 = new struct(3);
                require(!((v458 + 96 > uint64.max) | (v458 + 96 < v458)), Panic(65)); // failed memory allocation (too much memory)
                require(v265 + v264 - (v265 + 32) >= 64);
                v459 = new struct(2);
                require(!((v459 + 64 > uint64.max) | (v459 + 64 < v459)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v265 + 32] - address(msg.data[v265 + 32])));
                v459.word0 = msg.data[v265 + 32];
                v459.word1 = msg.data[v265 + 32 + 32];
                v458.word0 = v459;
                v458.word1 = msg.data[v265 + 32 + 64];
                v458.word2 = msg.data[v265 + 32 + 96];
                require(!(msg.data[v265 + 160] - address(msg.data[v265 + 160])));
                require(msg.data[v265 + 192] <= uint64.max);
                require(v265 + msg.data[v265 + 192] + 31 < v265 + v264);
                require(msg.data[v265 + msg.data[v265 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v460 = new bytes[](msg.data[v265 + msg.data[v265 + 192]]);
                require(!((v460 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v460 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v265 + msg.data[v265 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v460)), Panic(65)); // failed memory allocation (too much memory)
                require(v265 + msg.data[v265 + 192] + 32 + msg.data[v265 + msg.data[v265 + 192]] <= v265 + v264);
                CALLDATACOPY(v460.data, v265 + msg.data[v265 + 192] + 32, msg.data[v265 + msg.data[v265 + 192]]);
                v460[msg.data[v265 + msg.data[v265 + 192]]] = 0;
                require(!(msg.data[v265 + 224] - address(msg.data[v265 + 224])));
                require(MEM[v458.word0 + 32] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8ef, Panic(1)); // low-level assert failed
                v461, v462 = 0x3def(v458, address(msg.data[v265]));
                v463 = new struct(4);
                require(!((v463 + 128 > uint64.max) | (v463 + 128 < v463)), Panic(65)); // failed memory allocation (too much memory)
                v463.word0 = address(MEM[v458.word0]);
                v463.word1 = v461;
                v463.word2 = address(msg.data[v265 + 160]);
                v463.word3 = 1;
                MEM[v463 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v463 - 32] = MEM[v463 - 32];
                v464 = new struct(4);
                require(!((v464 + 128 > uint64.max) | (v464 + 128 < v464)), Panic(65)); // failed memory allocation (too much memory)
                v464.word0 = address(msg.data[v265 + 224]);
                v464.word1 = msg.data[v265 + (uint8.max + 1)];
                v464.word2 = address(_execute);
                v464.word3 = 1;
                MEM[v464 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v464 - 32] = MEM[v464 - 32];
                v465 = 0x3cca(msg.data[v265 + 224], this);
                v462.word1 = v461 * ((msg.data[v265 + (uint8.max + 1)] ^ v465) * (v465 > msg.data[v265 + (uint8.max + 1)]) ^ v465) / msg.data[v265 + (uint8.max + 1)];
                v466 = msg.data[v265 + 224].transfer(address(msg.data[v265 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v265 + (uint8.max + 1)] ^ v465) * (v465 > msg.data[v265 + (uint8.max + 1)]) ^ v465).gas(msg.gas);
                if (!v466) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v467 = new bytes[](162);
                    MEM[v467.data] = 'Consideration consideration)';
                    MCOPY(v467 + 60, v468.data, v468.length);
                    MEM[v467 + v468.length + 60] = 0;
                    MCOPY(v467 + v468.length + 60, v469.data, v469.length);
                    MEM[v467 + v468.length + v469.length + 60] = 0;
                    require(!((v467 + 224 > uint64.max) | (v467 + 224 < v467)), Panic(65)); // failed memory allocation (too much memory)
                    MCOPY(32 + MEM[64], v458.word0, 64);
                    MCOPY(96 + MEM[64], 32 + v458, 64);
                    MCOPY(160 + MEM[64], v462, 64);
                    MCOPY(352 + MEM[64], v467, 194);
                    MCOPY(384 + (MEM[64] + v467.length), v460, 32 + v460.length);
                    v470 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v104, v104, v104, v104, v104, v104, address(msg.data[v265 + 160]), keccak256(MEM[v264fV0x220fV0x1d6c - 32:v264fV0x220fV0x1d6c - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v470) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v264fV0x220fV0x1d6c - 32:v264fV0x220fV0x1d6c - 32 + 160]), keccak256(MEM[v25dcV0x220fV0x1d6c - 32:v25dcV0x220fV0x1d6c - 32 + 160]))(uint128(v461 * ((msg.data[v265 + (uint8.max + 1)] ^ v465) * (v465 > msg.data[v265 + (uint8.max + 1)]) ^ v465) / msg.data[v265 + (uint8.max + 1)]), uint128(v461 * ((msg.data[v265 + (uint8.max + 1)] ^ v465) * (v465 > msg.data[v265 + (uint8.max + 1)]) ^ v465) / msg.data[v265 + (uint8.max + 1)]));
                        v267 = v471 = 1;
                    }
                }
            }
            if (0 == v267) {
                if (v266 - 0xbd01c226) {
                    if (0x131ad428 - v266) {
                        v472 = v473 = 0;
                    } else {
                        require(v265 + v264 - v265 >= 32);
                        require(!(msg.data[v265] - bool(msg.data[v265])));
                        0x22b9(varg0, msg.data[v265]);
                        v472 = v474 = 1;
                    }
                } else {
                    require(v265 + v264 - v265 >= 64);
                    require(block.timestamp <= msg.data[v265], SignatureExpired(msg.data[v265]));
                    require(msg.value <= msg.data[v265 + 32], MsgValueMismatch(msg.data[v265 + 32], msg.value));
                    v472 = v475 = 1;
                }
            } else {
                v472 = v476 = 1;
            }
            if (!v472) {
                v477 = new uint256[](v264);
                CALLDATACOPY(v477.data, v265, v264);
                revert(ActionInvalid(v262, bytes4(msg.data[32 + (varg1 + msg.data[v260])]), v477));
            } else {
                v260 = v260 + 32;
                v262 = v262 + 1;
            }
        }
    }
    0x2221(varg0);
    return 1;
}

function 0x2221(struct(3) varg0) private { 
    if (!varg0.word2 & !address(varg0.word1)) {
        return ;
    } else {
        if (address(varg0.word1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = v1 = 0x3cca(address(varg0.word1), this);
        } else {
            v0 = v2 = this.balance;
        }
        require(v0 >= varg0.word2, TooMuchSlippage(address(varg0.word1), 0x97a6f3b9000000000000000000000000, varg0.word2, v0));
        if (0 == (address(varg0.word1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            0x3d26(address(varg0.word1), address(varg0.word0), v0);
            MEM[v2221arg0x0:v2221arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        } else {
            0x3d86(address(varg0.word0), v0);
            MEM[v2221arg0x0:v2221arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        }
    }
}

function 0x22b9(struct(3) varg0, uint256 varg1) private { 
    if (!varg0.word2 & !address(varg0.word1)) {
        return ;
    } else {
        if (address(varg0.word1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = v1 = 0x3cca(address(varg0.word1), this);
        } else {
            v0 = v2 = this.balance;
        }
        require(v0 >= varg0.word2, TooMuchSlippage(address(varg0.word1), 0x97a6f3b9000000000000000000000000, varg0.word2, v0));
        if (0 == (address(varg0.word1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            0x3d26(address(varg0.word1), address(varg0.word0), (varg0.word2 ^ v0) * varg1 ^ v0);
            MEM[v22b9arg0x0:v22b9arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        } else {
            0x3d86(address(varg0.word0), (varg0.word2 ^ v0) * varg1 ^ v0);
            MEM[v22b9arg0x0:v22b9arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        }
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2354() private { 
    if (0x1ff3684f28c67538d4d072c22734 - msg.sender) {
        return msg.data.length, 0;
    } else {
        require(msg.data.length - 20 <= msg.data.length, Panic(17)); // arithmetic overflow or underflow
        return msg.data.length - 20, 0;
    }
}

function 0x3cca(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.balanceOf(0x70a08231000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(31 < RETURNDATASIZE(), 0, 16);
    return MEM[0];
}

function 0x3d26(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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

function 0x3d86(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x3def(struct(3) varg0, address varg1) private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word1 = 0;
    v0.word0 = varg1;
    v1 = 0x4518(varg0);
    v0.word1 = v1;
    return v1, v0;
}

function 0x4411(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.nonces(0x7ecebe00000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    return MEM[0];
}

function 0x4444(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0.allowance(varg1 << 96, varg1, 0x1ff3684f28c67538d4d072c22734, varg1 << 96, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    require(!(!varg3 | (MEM[0] != varg2)), PermitFailed());
    return ;
}

function 0x44a7(uint256 varg0) private { 
    v0 = varg0.DOMAIN_SEPARATOR().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    return MEM[0];
}

function 0x44ca(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = ecrecover(varg0, 27 + (varg2 >> uint8.max), varg3, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg2);
    require(RETURNDATASIZE() >= (MEM[v0] ^ varg1) << 96, InvalidSignature());
    MEM[96] = 0;
    return ;
}

function 0x4518(struct(3) varg0) private { 
    if (~MEM[varg0.word0.length + 32] < 10000) {
        v0 = 0x3cca(address(MEM[varg0.word0.length]), _execute);
        if (!v1) {
            v2 = v3 = v0 * (10000 - ~MEM[varg0.word0.length + 32]) / 10000;
        } else {
            v2 = v4 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (v1 - (v0 * (10000 - ~MEM[varg0.word0.length + 32]) < (v0 * (10000 - ~MEM[varg0.word0.length + 32]) + v1 * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | v0 * (10000 - ~MEM[varg0.word0.length + 32]) - (v0 * (10000 - ~MEM[varg0.word0.length + 32]) + v1 * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
        }
        return v2;
    } else {
        return MEM[varg0.word0.length + 32];
    }
}

function 0x4562(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, bytes varg4) private { 
    v0 = v1 = 0;
    require(varg2 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    while (1) {
        v2 = MEM[varg1] > 64;
        require(MEM[varg1] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = address(MEM[20 + varg1]) < address(MEM[64 + varg1]);
        v4 = (MEM[64 + varg1] ^ MEM[20 + varg1]) * v3;
        if (0 == !uint8(MEM[21 + varg1])) {
            if (uint8(MEM[21 + varg1]) - 1) {
                if (uint8(MEM[21 + varg1]) - 2) {
                    if (uint8(MEM[21 + varg1]) - 3) {
                        require(0 != (uint8(MEM[21 + varg1]) == 38), UnknownForkId(uint8(MEM[21 + varg1])));
                        MEM[32] = MEM[20 + varg1] ^ v4;
                        MEM[0] = 0;
                        MEM[12] = (MEM[64 + varg1] ^ v4) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + varg4] = MEM[20 + varg1];
                        MEM[20 + varg4] = v0;
                        v5 = v6 = MEM[64];
                        MCOPY(196 + v6, varg4, 32 + varg4.length);
                        MEM[164 + v6] = 160;
                        MEM[132 + v6] = address(MEM[44 + varg1]);
                        MEM[100 + v6] = varg2;
                        MEM[68 + v6] = v3;
                        MEM[36 + v6] = (this ^ varg0) * v2 ^ varg0;
                        MEM[16 + v6] = 0x128acb08000000000000000000000000;
                        require((_execute ^ address(keccak256(v7, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62))) << 96, ConfusedDeputy());
                        v8 = ___function_selector__;
                        require(!v8, ReentrantCallback(v8));
                        ___function_selector__ = 0xf40a74a800000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62)) | 0x50000000000000000000000000000000000000000;
                        v9 = address(keccak256(v7, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62)).call(MEM[v6023a + 32:v6023a + 32 + 196 + v4562arg0x4.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v10 = v11 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v10 = new bytes[](RETURNDATASIZE());
                            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
                        }
                        require(v9, v12 + 32, MEM[v12]);
                        v13 = ___function_selector__;
                        require(!v13, CallbackNotSpent(v13));
                    } else {
                        MEM[32] = MEM[20 + varg1] ^ v4;
                        MEM[0] = 0;
                        MEM[12] = (MEM[64 + varg1] ^ v4) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + varg4] = MEM[20 + varg1];
                        MEM[20 + varg4] = v0;
                        v5 = v14 = MEM[64];
                        MCOPY(196 + v14, varg4, 32 + varg4.length);
                        MEM[164 + v14] = 160;
                        MEM[132 + v14] = address(MEM[44 + varg1]);
                        MEM[100 + v14] = varg2;
                        MEM[68 + v14] = v3;
                        MEM[36 + v14] = (this ^ varg0) * v2 ^ varg0;
                        MEM[16 + v14] = 0x128acb08000000000000000000000000;
                        require((_execute ^ address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                        v15 = ___function_selector__;
                        require(!v15, ReentrantCallback(v15));
                        ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x50000000000000000000000000000000000000000;
                        v16 = address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v601ad + 32:v601ad + 32 + 196 + v4562arg0x4.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v10 = v17 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v10 = v18 = new bytes[](RETURNDATASIZE());
                            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
                        }
                        require(v16, v19 + 32, MEM[v19]);
                        v20 = ___function_selector__;
                        require(!v20, CallbackNotSpent(v20));
                    }
                } else {
                    MEM[32] = MEM[20 + varg1] ^ v4;
                    MEM[0] = 0;
                    MEM[12] = (MEM[64 + varg1] ^ v4) << 96;
                    MEM8[11] = 0xff & 0xFF;
                    MEM[40 + varg4] = MEM[20 + varg1];
                    MEM[20 + varg4] = v0;
                    v5 = v21 = MEM[64];
                    MCOPY(196 + v21, varg4, 32 + varg4.length);
                    MEM[164 + v21] = 160;
                    MEM[132 + v21] = address(MEM[44 + varg1]);
                    MEM[100 + v21] = varg2;
                    MEM[68 + v21] = v3;
                    MEM[36 + v21] = (this ^ varg0) * v2 ^ varg0;
                    MEM[16 + v21] = 0x128acb08000000000000000000000000;
                    require((_execute ^ address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v22 = ___function_selector__;
                    require(!v22, ReentrantCallback(v22));
                    ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x50000000000000000000000000000000000000000;
                    v23 = address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v60120 + 32:v60120 + 32 + 196 + v4562arg0x4.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v10 = v24 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = v25 = new bytes[](RETURNDATASIZE());
                        require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
                    }
                    require(v23, v26 + 32, MEM[v26]);
                    v27 = ___function_selector__;
                    require(!v27, CallbackNotSpent(v27));
                }
            } else {
                MEM[32] = MEM[20 + varg1] ^ v4;
                MEM[0] = 0;
                MEM[12] = (MEM[64 + varg1] ^ v4) << 96;
                MEM8[11] = 0xff & 0xFF;
                MEM[40 + varg4] = MEM[20 + varg1];
                MEM[20 + varg4] = v0;
                v5 = v28 = MEM[64];
                MCOPY(196 + v28, varg4, 32 + varg4.length);
                MEM[164 + v28] = 160;
                MEM[132 + v28] = address(MEM[44 + varg1]);
                MEM[100 + v28] = varg2;
                MEM[68 + v28] = v3;
                MEM[36 + v28] = (this ^ varg0) * v2 ^ varg0;
                MEM[16 + v28] = 0x128acb08000000000000000000000000;
                require((_execute ^ address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v29 = ___function_selector__;
                require(!v29, ReentrantCallback(v29));
                ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x50000000000000000000000000000000000000000;
                v30 = address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v60093 + 32:v60093 + 32 + 196 + v4562arg0x4.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v10 = v31 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v10 = v32 = new bytes[](RETURNDATASIZE());
                    require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
                }
                require(v30, v33 + 32, MEM[v33]);
                v34 = ___function_selector__;
                require(!v34, CallbackNotSpent(v34));
            }
        } else {
            MEM[32] = MEM[20 + varg1] ^ v4;
            MEM[0] = 0;
            MEM[12] = (MEM[64 + varg1] ^ v4) << 96;
            MEM8[11] = 0xff & 0xFF;
            MEM[40 + varg4] = MEM[20 + varg1];
            MEM[20 + varg4] = v0;
            v5 = v35 = MEM[64];
            MCOPY(196 + v35, varg4, 32 + varg4.length);
            MEM[164 + v35] = 160;
            MEM[132 + v35] = address(MEM[44 + varg1]);
            MEM[100 + v35] = varg2;
            MEM[68 + v35] = v3;
            MEM[36 + v35] = (this ^ varg0) * v2 ^ varg0;
            MEM[16 + v35] = 0x128acb08000000000000000000000000;
            require((_execute ^ address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v36 = ___function_selector__;
            require(!v36, ReentrantCallback(v36));
            ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x50000000000000000000000000000000000000000;
            v37 = address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4562arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v60006 + 32:v60006 + 32 + 196 + v4562arg0x4.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v10 = v38 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = v39 = new bytes[](RETURNDATASIZE());
                require(!((v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());
            }
            require(v37, v40 + 32, MEM[v40]);
            v41 = ___function_selector__;
            require(!v41, CallbackNotSpent(v41));
        }
        require(v10 + MEM[v10] - v10 >= 64);
        varg2 = v42 = 0 - ((MEM[v10 + 64] ^ MEM[v10 + 32]) * v3 ^ MEM[v10 + 32]);
        require(v42 >= 0, Panic(17)); // arithmetic overflow or underflow
        if (MEM[varg1] <= 64) {
            require(v42 >= varg3, TooMuchSlippage(MEM[64 + varg1], 0x97a6f3b9000000000000000000000000, varg3, v42));
            return v42;
        } else {
            v0 = v43 = this;
            require(MEM[varg1] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            varg1 = varg1 + 44;
            MEM[varg1] = MEM[varg1] - 44;
        }
    }
}

function 0x48bc(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, uint256 varg4, bytes varg5) private { 
    require(varg2 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    while (1) {
        v0 = MEM[varg1] > 64;
        require(MEM[varg1] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v1 = address(MEM[20 + varg1]) < address(MEM[64 + varg1]);
        v2 = (MEM[64 + varg1] ^ MEM[20 + varg1]) * v1;
        if (0 == !uint8(MEM[21 + varg1])) {
            if (uint8(MEM[21 + varg1]) - 1) {
                if (uint8(MEM[21 + varg1]) - 2) {
                    if (uint8(MEM[21 + varg1]) - 3) {
                        require(0 != (uint8(MEM[21 + varg1]) == 38), UnknownForkId(uint8(MEM[21 + varg1])));
                        MEM[32] = MEM[20 + varg1] ^ v2;
                        MEM[0] = 0;
                        MEM[12] = (MEM[64 + varg1] ^ v2) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + varg5] = MEM[20 + varg1];
                        MEM[20 + varg5] = varg4;
                        v3 = v4 = MEM[64];
                        MCOPY(196 + v4, varg5, 32 + varg5.length);
                        MEM[164 + v4] = 160;
                        MEM[132 + v4] = address(MEM[44 + varg1]);
                        MEM[100 + v4] = varg2;
                        MEM[68 + v4] = v1;
                        MEM[36 + v4] = (this ^ varg0) * v0 ^ varg0;
                        MEM[16 + v4] = 0x128acb08000000000000000000000000;
                        require((_execute ^ address(keccak256(v5, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62))) << 96, ConfusedDeputy());
                        v6 = ___function_selector__;
                        require(!v6, ReentrantCallback(v6));
                        ___function_selector__ = 0xf40a74a800000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62)) | 0x50000000000000000000000000000000000000000;
                        v7 = address(keccak256(v5, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62)).call(MEM[v604fb + 32:v604fb + 32 + 196 + v48bcarg0x5.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v8 = v9 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v8 = new bytes[](RETURNDATASIZE());
                            require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
                        }
                        require(v7, v10 + 32, MEM[v10]);
                        v11 = ___function_selector__;
                        require(!v11, CallbackNotSpent(v11));
                    } else {
                        MEM[32] = MEM[20 + varg1] ^ v2;
                        MEM[0] = 0;
                        MEM[12] = (MEM[64 + varg1] ^ v2) << 96;
                        MEM8[11] = 0xff & 0xFF;
                        MEM[40 + varg5] = MEM[20 + varg1];
                        MEM[20 + varg5] = varg4;
                        v3 = v12 = MEM[64];
                        MCOPY(196 + v12, varg5, 32 + varg5.length);
                        MEM[164 + v12] = 160;
                        MEM[132 + v12] = address(MEM[44 + varg1]);
                        MEM[100 + v12] = varg2;
                        MEM[68 + v12] = v1;
                        MEM[36 + v12] = (this ^ varg0) * v0 ^ varg0;
                        MEM[16 + v12] = 0x128acb08000000000000000000000000;
                        require((_execute ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                        v13 = ___function_selector__;
                        require(!v13, ReentrantCallback(v13));
                        ___function_selector__ = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x50000000000000000000000000000000000000000;
                        v14 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v6046e + 32:v6046e + 32 + 196 + v48bcarg0x5.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v8 = v15 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v8 = v16 = new bytes[](RETURNDATASIZE());
                            require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());
                        }
                        require(v14, v17 + 32, MEM[v17]);
                        v18 = ___function_selector__;
                        require(!v18, CallbackNotSpent(v18));
                    }
                } else {
                    MEM[32] = MEM[20 + varg1] ^ v2;
                    MEM[0] = 0;
                    MEM[12] = (MEM[64 + varg1] ^ v2) << 96;
                    MEM8[11] = 0xff & 0xFF;
                    MEM[40 + varg5] = MEM[20 + varg1];
                    MEM[20 + varg5] = varg4;
                    v3 = v19 = MEM[64];
                    MCOPY(196 + v19, varg5, 32 + varg5.length);
                    MEM[164 + v19] = 160;
                    MEM[132 + v19] = address(MEM[44 + varg1]);
                    MEM[100 + v19] = varg2;
                    MEM[68 + v19] = v1;
                    MEM[36 + v19] = (this ^ varg0) * v0 ^ varg0;
                    MEM[16 + v19] = 0x128acb08000000000000000000000000;
                    require((_execute ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v20 = ___function_selector__;
                    require(!v20, ReentrantCallback(v20));
                    ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x50000000000000000000000000000000000000000;
                    v21 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v603e1 + 32:v603e1 + 32 + 196 + v48bcarg0x5.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v8 = v22 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v8 = v23 = new bytes[](RETURNDATASIZE());
                        require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
                    }
                    require(v21, v24 + 32, MEM[v24]);
                    v25 = ___function_selector__;
                    require(!v25, CallbackNotSpent(v25));
                }
            } else {
                MEM[32] = MEM[20 + varg1] ^ v2;
                MEM[0] = 0;
                MEM[12] = (MEM[64 + varg1] ^ v2) << 96;
                MEM8[11] = 0xff & 0xFF;
                MEM[40 + varg5] = MEM[20 + varg1];
                MEM[20 + varg5] = varg4;
                v3 = v26 = MEM[64];
                MCOPY(196 + v26, varg5, 32 + varg5.length);
                MEM[164 + v26] = 160;
                MEM[132 + v26] = address(MEM[44 + varg1]);
                MEM[100 + v26] = varg2;
                MEM[68 + v26] = v1;
                MEM[36 + v26] = (this ^ varg0) * v0 ^ varg0;
                MEM[16 + v26] = 0x128acb08000000000000000000000000;
                require((_execute ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v27 = ___function_selector__;
                require(!v27, ReentrantCallback(v27));
                ___function_selector__ = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x50000000000000000000000000000000000000000;
                v28 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v60354 + 32:v60354 + 32 + 196 + v48bcarg0x5.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v8 = v29 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v8 = v30 = new bytes[](RETURNDATASIZE());
                    require(!((v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v30.data, 0, RETURNDATASIZE());
                }
                require(v28, v31 + 32, MEM[v31]);
                v32 = ___function_selector__;
                require(!v32, CallbackNotSpent(v32));
            }
        } else {
            MEM[32] = MEM[20 + varg1] ^ v2;
            MEM[0] = 0;
            MEM[12] = (MEM[64 + varg1] ^ v2) << 96;
            MEM8[11] = 0xff & 0xFF;
            MEM[40 + varg5] = MEM[20 + varg1];
            MEM[20 + varg5] = varg4;
            v3 = v33 = MEM[64];
            MCOPY(196 + v33, varg5, 32 + varg5.length);
            MEM[164 + v33] = 160;
            MEM[132 + v33] = address(MEM[44 + varg1]);
            MEM[100 + v33] = varg2;
            MEM[68 + v33] = v1;
            MEM[36 + v33] = (this ^ varg0) * v0 ^ varg0;
            MEM[16 + v33] = 0x128acb08000000000000000000000000;
            require((_execute ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v34 = ___function_selector__;
            require(!v34, ReentrantCallback(v34));
            ___function_selector__ = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x50000000000000000000000000000000000000000;
            v35 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v48bcarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v602c7 + 32:v602c7 + 32 + 196 + v48bcarg0x5.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v8 = v36 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = v37 = new bytes[](RETURNDATASIZE());
                require(!((v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v37 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v37)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v37.data, 0, RETURNDATASIZE());
            }
            require(v35, v38 + 32, MEM[v38]);
            v39 = ___function_selector__;
            require(!v39, CallbackNotSpent(v39));
        }
        require(v8 + MEM[v8] - v8 >= 64);
        varg2 = v40 = 0 - ((MEM[v8 + 64] ^ MEM[v8 + 32]) * v1 ^ MEM[v8 + 32]);
        require(v40 >= 0, Panic(17)); // arithmetic overflow or underflow
        if (MEM[varg1] <= 64) {
            require(v40 >= varg3, TooMuchSlippage(MEM[64 + varg1], 0x97a6f3b9000000000000000000000000, varg3, v40));
            return v40;
        } else {
            varg4 = v41 = this;
            require(MEM[varg1] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            varg1 = varg1 + 44;
            MEM[varg1] = MEM[varg1] - 44;
        }
    }
}

function 0x4b78(struct(3) varg0, struct(2) varg1, bytes varg2, uint256 varg3) private { 
    if (0 == varg3) {
        MCOPY(32 + MEM[64], varg0.word0, 64);
        MCOPY(96 + MEM[64], 32 + varg0, 64);
        MCOPY(160 + MEM[64], varg1, 64);
        MCOPY(288 + MEM[64], varg2, 32 + varg2.length);
        v0, /* uint256 */ v1 = 0x22d473030f116ddee9f6b43ac78ba3.permitTransferFrom(v2, v2, v2, v2, v2, v2, address(_execute), uint8.max + 1).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
        return ;
    } else {
        require(!varg2.length, InvalidSignatureLen());
        require(!varg0.word1, Panic(17)); // arithmetic overflow or underflow
        require(block.timestamp <= varg0.word2, SignatureExpired(varg0.word2));
        v3, /* uint256 */ v4 = 0x1ff3684f28c67538d4d072c22734.transferFrom(bytes20(MEM[varg0.word0] << 96), _execute, _execute << 96, _execute, address(varg1.word0), _execute << 96, varg1.word1).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        return ;
    }
}

function 0x4cbd() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x4cdb() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    return v0;
}

function 0x4d16(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.allowance(this, this << 96, this, this << 96, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    if (MEM[0] < varg2) {
        if (MEM[0]) {
            0x56db(varg0, varg1);
        }
        v1 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, uint256.max).gas(msg.gas);
        if (!v1) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            MEM[52] = 0;
            return ;
        }
    } else {
        return ;
    }
}

function 0x5002() private { 
    if (!MEM[0]) {
        return MEM[32] / 10000;
    } else {
        return 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
    }
}

function 0x535f(struct(39) varg0) private { 
    if (!MEM[varg0.word2]) {
        MEM[varg0.word2] = 0xfb772a88;
        revert(28 + varg0.word2, 36);
    } else {
        return ;
    }
}

function 0x5502(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, 0xcbf0dbf5000000000000000000000000, varg0);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, varg1, varg2, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function 0x55e3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3, varg1);
    v0, /* uint256 */ v1 = msg.sender.call(varg0 << 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg2, varg3).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x56db(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
        MEM[52] = 0;
        return ;
    }
}

function 0x57f3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = 10 ** 18 * ((varg0 - varg4) * varg2 + varg3 * varg1);
    v1 = (varg5 << 1) * varg3 * varg1;
    v2 = ((v0 - v1 ^ 0 - (v0 < v1)) + (v0 < v1)) / varg1 + (bool(((v0 - v1 ^ 0 - (v0 < v1)) + (v0 < v1)) % varg1) & (v0 < v1));
    v3 = ((uint8.max + 1 - CLZ(varg3 * 0x3782dace9d9) > 109) * (uint8.max + 1 - CLZ(varg3 * 0x3782dace9d9) - 109) ^ (uint8.max + 1 - CLZ(v2) > int8.max) * (uint8.max + 1 - CLZ(v2) - 127)) * ((uint8.max + 1 - CLZ(v2) > int8.max) * (uint8.max + 1 - CLZ(v2) - 127) < (uint8.max + 1 - CLZ(varg3 * 0x3782dace9d9) > 109) * (uint8.max + 1 - CLZ(varg3 * 0x3782dace9d9) - 109)) ^ (uint8.max + 1 - CLZ(v2) > int8.max) * (uint8.max + 1 - CLZ(v2) - 127);
    if (0 == v0 < v1) {
        v4 = varg3 * varg3;
        v5 = ((10 ** 18 - varg5) * varg5 << 2) * v4;
        v6 = ((10 ** 18 - varg5) * varg5 << 2) * v4 % uint256.max - v5 - (((10 ** 18 - varg5) * varg5 << 2) * v4 % uint256.max < v5);
        v7 = v2 * v2 % uint256.max - v2 * v2 - (v2 * v2 % uint256.max < v2 * v2) << uint8.max + 1 - (v3 << 1) | v2 * v2 >> (v3 << 1) | v2 * v2 % uint256.max - v2 * v2 - (v2 * v2 % uint256.max < v2 * v2) >> (v3 << 1) - 256;
        MEM[0] = v2 * v2 % uint256.max - v2 * v2 - (v2 * v2 % uint256.max < v2 * v2) >> (v3 << 1);
        MEM[32] = v7;
        v8 = (v6 << uint8.max + 1 - (v3 << 1) | v5 >> (v3 << 1) | v6 >> (v3 << 1) - 256) + v7;
        v9 = v8 / ((1 << (uint8.max + 1 - CLZ(v8) >> 1)) + (v8 >> (uint8.max + 1 - CLZ(v8) >> 1)) >> 1) + ((1 << (uint8.max + 1 - CLZ(v8) >> 1)) + (v8 >> (uint8.max + 1 - CLZ(v8) >> 1)) >> 1) >> 1;
        v10 = v8 / (v8 / (v8 / v9 + v9 >> 1) + (v8 / v9 + v9 >> 1) >> 1) + (v8 / (v8 / v9 + v9 >> 1) + (v8 / v9 + v9 >> 1) >> 1) >> 1;
        v11 = ((v8 / (v8 / v10 + v10 >> 1) + (v8 / v10 + v10 >> 1) >> 1) - (v8 / (v8 / (v8 / v10 + v10 >> 1) + (v8 / v10 + v10 >> 1) >> 1) < v8 / (v8 / v10 + v10 >> 1) + (v8 / v10 + v10 >> 1) >> 1) << v3) + v2;
        if (0 == !v11) {
            v12 = (10 ** 18 - varg5 << 1) * v4 % uint256.max - (10 ** 18 - varg5 << 1) * v4 - ((10 ** 18 - varg5 << 1) * v4 % uint256.max < (10 ** 18 - varg5 << 1) * v4);
            if (!v12) {
                v13 = v14 = bool(v15 % v11) + v15 / v11;
            } else {
                v16 = (2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2))) * ((2 - v11 / (0 - v11 & v11) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)))) * ((2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2))) * ((2 - v11 / (0 - v11 & v11) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)) * (3 * (v11 / (0 - v11 & v11)) ^ 0x2)));
                v13 = v17 = bool((v15 + v12 * (0 - v11) % v11) % v11) + (2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * v16) * v16)) * ((2 - v11 / (0 - v11 & v11) * v16) * v16))) * ((2 - v11 / (0 - v11 & v11) * ((2 - v11 / (0 - v11 & v11) * v16) * v16)) * ((2 - v11 / (0 - v11 & v11) * v16) * v16)) * ((v15 - (v15 + v12 * (0 - v11) % v11) % v11) / (0 - v11 & v11) | ((0 - (0 - v11 & v11)) / (0 - v11 & v11) + 1) * (v12 - ((v15 + v12 * (0 - v11) % v11) % v11 > v15)));
            }
        } else {
            v13 = v18 = 0;
        }
    } else {
        v19 = ((10 ** 18 - varg5) * varg5 << 2) * (varg3 * varg3) % uint256.max;
        v20 = ((10 ** 18 - varg5) * varg5 << 2) * (varg3 * varg3);
        v21 = v2 * v2 % uint256.max - v2 * v2 - (v2 * v2 % uint256.max < v2 * v2);
        v22 = v2 * v2 >> (v3 << 1) << (v3 << 1) ^ v2 * v2 | (v21 ^ v21 >> (v3 << 1) - 256 << (v3 << 1) - 256) * (uint8.max + 1 < uint8.max + 1 - (v3 << 1));
        v23 = bool(v22) + (v21 << uint8.max + 1 - (v3 << 1) | v2 * v2 >> (v3 << 1) | v21 >> (v3 << 1) - 256);
        MEM[0] = (v23 < bool(v22)) + (v21 >> (v3 << 1));
        MEM[32] = v23;
        v24 = v20 >> (v3 << 1) << (v3 << 1) ^ v20 | (v19 - v20 - (v19 < v20) >> (v3 << 1) - 256 << (v3 << 1) - 256 ^ v19 - v20 - (v19 < v20)) * (uint8.max + 1 < uint8.max + 1 - (v3 << 1));
        v25 = bool(v24) + (v19 - v20 - (v19 < v20) << uint8.max + 1 - (v3 << 1) | v20 >> (v3 << 1) | v19 - v20 - (v19 < v20) >> (v3 << 1) - 256) + v23;
        v26 = v25 / ((1 << (uint8.max + 1 - CLZ(v25) >> 1)) + (v25 >> (uint8.max + 1 - CLZ(v25) >> 1)) >> 1) + ((1 << (uint8.max + 1 - CLZ(v25) >> 1)) + (v25 >> (uint8.max + 1 - CLZ(v25) >> 1)) >> 1) >> 1;
        v27 = v25 / (v25 / (v25 / v26 + v26 >> 1) + (v25 / v26 + v26 >> 1) >> 1) + (v25 / (v25 / v26 + v26 >> 1) + (v25 / v26 + v26 >> 1) >> 1) >> 1;
        v28 = (((v25 / (v25 / v27 + v27 >> 1) + (v25 / v27 + v27 >> 1) >> 1) * (v25 / (v25 / v27 + v27 >> 1) + (v25 / v27 + v27 >> 1) >> 1) < v25) + (v25 / (v25 / v27 + v27 >> 1) + (v25 / v27 + v27 >> 1) >> 1) << v3) + v2;
        v13 = v29 = bool(v28 % (varg5 << 1)) + v28 / (varg5 << 1);
    }
    return v13 - (v13 > varg3);
}

function 0x5a82(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (0 == (varg5 == 10 ** 18)) {
        v0 = varg3 * (10 ** 18 - varg5) + varg0 * varg5;
        v1 = varg0 * varg2 * 10 ** 18;
        v2 = (varg3 - varg0) * varg1;
        if (!v1) {
            return ~v1;
        } else {
            require(v1, Panic(18)); // division by zero
            if (!v3) {
                MEM[0] = 0;
                MEM[32] = bool(v2 * v0 % v1) + v2 * v0 / v1;
                v4 = v5 = 0;
            } else {
                v6 = (2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2))) * ((2 - v1 / (0 - v1 & v1) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)))) * ((2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2))) * ((2 - v1 / (0 - v1 & v1) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)) * (3 * (v1 / (0 - v1 & v1)) ^ 0x2)));
                v7 = (2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * v6) * v6)) * ((2 - v1 / (0 - v1 & v1) * v6) * v6))) * ((2 - v1 / (0 - v1 & v1) * ((2 - v1 / (0 - v1 & v1) * v6) * v6)) * ((2 - v1 / (0 - v1 & v1) * v6) * v6)) * ((v2 * v0 - (v2 * v0 + v3 * (0 - v1) % v1) % v1) / (0 - v1 & v1) | ((0 - (0 - v1 & v1)) / (0 - v1 & v1) + 1) * (v3 - ((v2 * v0 + v3 * (0 - v1) % v1) % v1 > v2 * v0)));
                MEM[0] = v3 / v1 + (v7 + bool((v2 * v0 + v3 * (0 - v1) % v1) % v1) < v7);
                MEM[32] = v7 + bool((v2 * v0 + v3 * (0 - v1) % v1) % v1);
                v4 = v8 = 0;
            }
            return 0 - (varg4 + (0 - bool(MEM[v4]) | MEM[0x20]) < 0 - bool(MEM[v4]) | MEM[0x20]) | varg4 + (0 - bool(MEM[v4]) | MEM[0x20]);
        }
    } else {
        v9 = (varg3 - varg0) * varg1;
        return bool(v9 % varg2) + v9 / varg2 + varg4;
    }
}

function 0x5c73(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (0 == (address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v1 = 68;
        if (this - varg1) {
            CALLDATACOPY(100 + MEM[64], 64 + varg3, 64);
            CALLDATACOPY(228 + MEM[64], varg5, varg6);
            v0 = v2 = varg6 + 196;
        }
        require((_execute ^ msg.sender) << 96, ConfusedDeputy());
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
        0x3d86(msg.sender, varg2);
        return varg2;
    }
}

function execute(address varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 160);
    require(msg.data.length - 4 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require((varg3.length << 5) + (4 + varg3) + 32 <= msg.data.length);
    v1 = v2 = msg.sender;
    if (msg.sender == 0x1ff3684f28c67538d4d072c22734) {
        v1 = v3 = msg.data[msg.data.length - 20] >> 96;
    }
    0x1c81(v1);
    v4 = 0x1d01(v0, varg3.data, varg3.length);
    require(!((_execute ^ v1) << 96), PayerSpent());
    _execute = 0;
    return bool(v4);
}

function 0xb5b(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function receive() public payable { 
}

function balanceOf(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    MEM8[0] = 0x0 & 0xFF;
    return MEM[0:1];
}

function 0x06b8524c(address varg0, address varg1, uint256 varg2, struct(2) varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 192);
    require(msg.data.length - 4 >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.word0 <= uint64.max);
    require((varg3.word0 << 5) + (4 + varg3) + 32 <= msg.data.length);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](varg4.length);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg4.data + varg4.length <= msg.data.length);
    CALLDATACOPY(v1.data, varg4.data, varg4.length);
    v1[varg4.length] = 0;
    v2 = v3 = msg.sender;
    if (msg.sender == 0x1ff3684f28c67538d4d072c22734) {
        v2 = v4 = msg.data[msg.data.length - 20] >> 96;
    }
    0x1c81(v2);
    require(!(msg.sender - 0x1ff3684f28c67538d4d072c22734), ConfusedDeputy());
    require(!(!varg3.word0 | (164 > msg.data[4 + varg3 + 32 + varg3.word1])));
    require(3 > MEM[v1.data] >> 248, Panic(33)); // failed convertion to enum type
    if (MEM[v1.data] >> 248) {
        require(3 > MEM[v1.data] >> 248, Panic(33)); // failed convertion to enum type
        require(!((MEM[v1.data] >> 248) - 1), wipeBlockchain_EkJWPe((MEM[v1.data] >> 248 ^ 0x21) * (MEM[v1.data] >> 248 > 2) ^ MEM[v1.data] >> 248));
        require(v1 + (uint256.max + v1.length) - v1 >= 160);
        require(!(MEM[v1 + 97] - bool(MEM[v1 + 97])));
        v5 = address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]).permit(_execute, _execute << 96, _execute, 0x1ff3684f28c67538d4d072c22734, _execute << 96, MEM[v1 + 33], MEM[v1 + 65], MEM[v1 + 97], 27 + (MEM[v1 + 161] >> uint8.max), MEM[v1 + 129], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v1 + 161]).gas(msg.gas);
        if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31) & v5)) {
            require(!((block.timestamp > MEM[v1 + 65]) & bool(MEM[v1 + 65])), PermitExpired());
            v6 = 0x4411(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _execute);
            0x4444(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _execute, 0 - MEM[v1 + 97], v6);
            v7 = 0x44a7(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]));
            0x44ca(keccak256(6401, v7, keccak256(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, _execute, 0x1ff3684f28c67538d4d072c22734, uint256.max + v6, MEM[v1 + 65], MEM[v1 + 97])), _execute, MEM[v1 + 161], MEM[v1 + 129]);
        } else {
            v8 = 0x1d01(v0, 4 + varg3 + 32, varg3.word0);
            require(!((_execute ^ v2) << 96), PayerSpent());
            _execute = 0;
            return bool(v8);
        }
    } else {
        require(v1 + (uint256.max + v1.length) - v1 >= 128);
        v9 = address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]).permit(_execute, _execute << 96, _execute, 0x1ff3684f28c67538d4d072c22734, _execute << 96, MEM[v1 + 33], MEM[v1 + 65], 27 + (MEM[v1 + 129] >> uint8.max), MEM[v1 + 97], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v1 + 129]).gas(msg.gas);
        if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31) & v9)) {
            require(block.timestamp <= MEM[v1 + 65], PermitExpired());
            v10 = 0x4411(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _execute);
            0x4444(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _execute, MEM[v1 + 33], v10);
            v11 = 0x44a7(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]));
            0x44ca(keccak256(6401, v11, keccak256(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, _execute, 0x1ff3684f28c67538d4d072c22734, MEM[v1 + 33], uint256.max + v10, MEM[v1 + 65])), _execute, MEM[v1 + 129], MEM[v1 + 97]);
        }
    }
    v12 = 0x1d01(v0, 4 + varg3 + 32, varg3.word0);
    require(!((_execute ^ v2) << 96), PayerSpent());
    _execute = 0;
    return bool(v12);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    if (msg.data.length >= 4) {
        if (0x6b8524c == function_selector >> 224) {
            0x06b8524c();
        } else if (0x1fff991f == function_selector >> 224) {
            execute((address,address,uint256),bytes[],bytes32);
        } else if (!(0x70a08231 - (function_selector >> 224))) {
            balanceOf(address);
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(!msg.value);
        v0 = ___function_selector__;
        v1 = uint16(v0 >> 160) * !((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96);
        if (!((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96)) {
            ___function_selector__ = 0;
        }
        v2, v3 = 0x2354();
        if (v1) {
            if (4 == v1) {
                v4 = v5 = msg.data[20 + (v3 + 100)] >> 128;
                v6 = v7 = 0;
                v8 = new struct(39);
                v8.word6 = 0;
                MEM[v18890x50acV0x181bV0x1a + 480:v18890x50acV0x181bV0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                v9 = address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v8) + 288;
                v10 = MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v8) + 320];
                require(!((MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v8) + 352] | v10) * (v10 ^ address(msg.data[v3 + 100 + 89] >> 96))), v10, address(msg.data[v3 + 100 + 89] >> 96));
                require(address(msg.data[v3 + 100 + 89] >> 96), ZeroToken());
                MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v8) + 320] = address(msg.data[v3 + 100 + 89] >> 96);
                v8.word0 = v9;
                v8.word1 = v9;
                v8.word2 = v9;
                v8.word4 = uint128(msg.data[20 + (v3 + 100)]);
                v8.word5 = msg.data[52 + (v3 + 100)] >> 128;
                v11 = v12 = msg.data.length;
                v13 = v14 = msg.data.length;
                v15 = v16 = 0;
                if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + v9])) {
                    if (address(msg.data[69 + (v3 + 100)] >> 96) - this) {
                        require(!bool(address(msg.data[69 + (v3 + 100)] >> 96)), Panic(1)); // low-level assert failed
                        v11 = v17 = v3 + 100 + 89 - 12;
                        v6 = v18 = 0x1 & msg.data[85 + (v3 + 100 + 89)];
                        v15 = v19 = msg.data[v3 + 100 + 89 + (msg.data[v3 + 68] - 89) - 3] >> 232;
                        v13 = v20 = v3 + 100 + 89 + (msg.data[v3 + 68] - 89) - v19 - 3;
                        v21 = v22 = 117 + (v3 + 100 + 89);
                        require(v22 <= v20);
                        v23 = v24 = msg.data[v3 + 68] - 89 - v19 - 120;
                    } else {
                        v21 = v25 = 22 + (v3 + 100 + 89);
                        v23 = v26 = msg.data[v3 + 68] - 89 - 22;
                        v27 = 0x3cca(MEM[32 + v8.word2], this);
                        MEM[v8.word2] = uint16(msg.data[v3 + 100 + 89] >> 80) * v27 / 10000;
                    }
                } else {
                    require(this == address(msg.data[69 + (v3 + 100)] >> 96), Panic(1)); // low-level assert failed
                    MEM[v8.word2] = this.balance * uint16(msg.data[v3 + 100 + 89] >> 80) / 10000;
                    v23 = v28 = msg.data[v3 + 68] - 89 - 22;
                    v21 = v29 = 22 + (v3 + 100 + 89);
                }
                require(uint24.max >= v23, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (address(msg.data[69 + (v3 + 100)] >> 96) != this) {
                    v30 = v31 = msg.data[v11 + 32];
                    if (~v31 < 10000) {
                        require(!(msg.data[v11] - address(msg.data[v11])));
                        v32 = 0x3cca(address(msg.data[v11]), _execute);
                        MEM[0] = v32 * (10000 - ~v31) % uint256.max - v32 * (10000 - ~v31) - (v32 * (10000 - ~v31) % uint256.max < v32 * (10000 - ~v31));
                        MEM[32] = v32 * (10000 - ~v31);
                        v30 = 0x5002();
                    }
                    MEM[v8.word2] = v30;
                }
                if (0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]) {
                    v33 = v34 = MEM[v8.word2];
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v8.word2])) {
                        v35, /* uint256 */ v36 = msg.sender.startPayments(MEM[32 + v8.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                        require(v35, v36, RETURNDATASIZE());
                        if (this - address(msg.data[69 + (v3 + 100)] >> 96)) {
                            v37 = new struct(2);
                            require(!((v37 + 64 > uint64.max) | (v37 + 64 < v37)), Panic(65)); // failed memory allocation (too much memory)
                            v37.word0 = msg.sender;
                            v37.word1 = v34;
                            require(msg.data.length - v11 >= 128);
                            v38 = new struct(3);
                            require(!((v38 + 96 > uint64.max) | (v38 + 96 < v38)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v11 >= 64);
                            v39 = new struct(2);
                            require(!((v39 + 64 > uint64.max) | (v39 + 64 < v39)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v11] - address(msg.data[v11])));
                            v39.word0 = msg.data[v11];
                            v39.word1 = msg.data[v11 + 32];
                            v38.word0 = v39;
                            v38.word1 = msg.data[v11 + 64];
                            v38.word2 = msg.data[v11 + 96];
                            require(v15 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v40 = new bytes[](v15);
                            require(!((v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v15) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v15) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
                            require(v13 + v15 <= msg.data.length);
                            CALLDATACOPY(v40.data, v13, v15);
                            v40[v15] = 0;
                            0x4b78(v38, v37, v40, v6);
                        } else {
                            0x3d26(MEM[32 + v8.word2], msg.sender, v34);
                        }
                        v41 = msg.sender.completePayments(MEM[32 + v8.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                        require(v41, MEM[64], RETURNDATASIZE());
                        v33 = 0x12e103f1000000000000000000000000 >> 128;
                    } else {
                        0x3d86(msg.sender, v34);
                    }
                    MEM[v8.word2] = v33;
                }
                require(!(MEM[v8.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                v8.word3 = MEM[v8.word2];
                0x535f(v8);
                v42 = 0x4cbd();
                while (v23 >= 47) {
                    v43 = v44 = msg.data[14 + v21];
                    v45 = v46 = 1;
                    if (v44 >> 248) {
                        if (!MEM[64 + v8.word0]) {
                            v8.word6 += v46;
                            MEM[(v46 + v8.word6 << 5) + (192 + v8)] = v8.word0;
                            MEM[64 + v8.word0] = (v46 + v8.word6 << 5) + (192 + v8);
                        }
                        if (v44 >> 248 > v46) {
                            if (!MEM[v8.word1]) {
                                if (MEM[64 + v8.word1]) {
                                    MEM[64 + v8.word1] = 0;
                                    v8.word6 = v8.word6 - 1;
                                    if ((v8.word6 << 5) + (192 + v8) - MEM[64 + v8.word1]) {
                                        MEM[MEM[64 + v8.word1]] = MEM[(v8.word6 << 5) + (192 + v8)];
                                        MEM[64 + MEM[(v8.word6 << 5) + (192 + v8)]] = MEM[64 + v8.word1];
                                    }
                                }
                            }
                            if ((v44 >> 248) - 2) {
                                require(3 == v44 >> 248, Panic(1)); // low-level assert failed
                                v43 = msg.data[34 + v21];
                                v45 = 21;
                                require(!((MEM[address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 352] | MEM[address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320]) * (MEM[address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320] ^ address(v44 >> 88))), MEM[address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320], address(v44 >> 88));
                                require(address(v44 >> 88), ZeroToken());
                                MEM[address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320] = address(v44 >> 88);
                                v8.word1 = address(v44 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 288;
                            } else {
                                v8.word1 = v8.word0;
                            }
                        }
                        v45 = v47 = v45 + 20;
                        v48 = MEM[address(v43 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320];
                        require(!((MEM[address(v43 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 352] | v48) * (v48 ^ address(v43 >> 88))), v48, address(v43 >> 88));
                        require(address(v43 >> 88), ZeroToken());
                        MEM[address(v43 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 320] = address(v43 >> 88);
                        v8.word0 = address(v43 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 288;
                        if (address(v43 >> 88) * v8.word4 % v8.word5 % 768 + (192 + v8) + 288 == v8.word2) {
                            MEM[v8.word2] = 0x784cb7b8;
                            revert(28 + v8.word2, 36);
                        }
                    }
                    v49 = v50 = (msg.data[v21] >> 240 & 0x7fff) * MEM[v8.word1] / 10000;
                    v51 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v8.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v8.word1] << 96) & (MEM[32 + v8.word0] << 96 < MEM[32 + v8.word1] << 96);
                    v42.word1 = address(address(MEM[32 + v8.word0]) ^ (address(MEM[32 + v8.word1]) ^ address(MEM[32 + v8.word0])) * v51);
                    v42.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v8.word1]) ^ (address(MEM[32 + v8.word1]) ^ address(MEM[32 + v8.word0])) * v51)) * address(address(MEM[32 + v8.word1]) ^ (address(MEM[32 + v8.word1]) ^ address(MEM[32 + v8.word0])) * v51);
                    v21 = 32 + (v45 + (14 + v21));
                    v23 = v23 - 14 - v45 - 32;
                    v42.word2 = msg.data[v45 + (14 + v21)];
                    require(uint24.max >= v23, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(0x8000 & msg.data[v21] >> 240)) {
                        MCOPY(52 + MEM[64], v42, 96);
                        MCOPY(32 + MEM[64], 64 + v42, 20);
                        v52 = msg.sender.forward(v53, v53, msg.data[2 + v21] >> 160, msg.data[2 + v21] >> 160, msg.data[2 + v21] >> 160, v50, v51 << 31).gas(msg.gas);
                        if (!v52) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!((64 > RETURNDATASIZE()) | int128(v50) ^ v50));
                            v54 = int128(MEM[0]);
                            v55 = (MEM[0] >> 128 ^ v54) * v51;
                            v56 = v8.word1;
                            v57 = MEM[0] >> 128 ^ v55;
                            if (v57 < 0) {
                                MEM[v56] = 0x4c085bf1;
                                revert(28 + v56, 36);
                            } else {
                                // Unknown jump to Block 0x1ba6B0x1a. Refer to 3-address code (TAC);
                            }
                        }
                    } else {
                        MCOPY(32 + MEM[64], v42, 96);
                        v58 = msg.sender.call(0, v53, v53, msg.data[2 + v21] >> 160, v51 << 31, msg.data[2 + v21] >> 160, v50).gas(msg.gas);
                        if (!v58) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!(int128(v50) ^ v50));
                            v54 = v59 = int128(MEM[0]);
                            v55 = v60 = (MEM[0] >> 128 ^ v59) * v51;
                            v56 = v61 = v8.word1;
                            v57 = v62 = MEM[0] >> 128 ^ v60;
                            if (v62 < 0) {
                                MEM[v61] = 0x4c085bf1;
                                revert(28 + v61, 36);
                            }
                        }
                    }
                    MEM[v56] = MEM[v56] - v57;
                    require(!((v57 > v49) | (v57 > MEM[v56])), Panic(17)); // arithmetic overflow or underflow
                    if (v54 ^ v55 > 0) {
                        MEM[v8.word0] = 0x3351b260;
                        revert(28 + v8.word0, 36);
                    } else {
                        MEM[v8.word0] += 0 - (v54 ^ v55);
                    }
                }
                if (MEM[64 + v8.word0]) {
                    MEM[64 + v8.word0] = 0;
                    v8.word6 = v8.word6 - 1;
                    if ((v8.word6 << 5) + (192 + v8) - MEM[64 + v8.word0]) {
                        MEM[MEM[64 + v8.word0]] = MEM[(v8.word6 << 5) + (192 + v8)];
                        MEM[64 + MEM[(v8.word6 << 5) + (192 + v8)]] = MEM[64 + v8.word0];
                    }
                }
                if (!MEM[v8.word1]) {
                    if (MEM[64 + v8.word1]) {
                        MEM[64 + v8.word1] = 0;
                        v8.word6 = v8.word6 - 1;
                        if ((v8.word6 << 5) + (192 + v8) - MEM[64 + v8.word1]) {
                            MEM[MEM[64 + v8.word1]] = MEM[(v8.word6 << 5) + (192 + v8)];
                            MEM[64 + MEM[(v8.word6 << 5) + (192 + v8)]] = MEM[64 + v8.word1];
                        }
                    }
                }
                if (v8.word6) {
                    require(v8.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v8.word7 - v8.word2) {
                        0x5502(address(MEM[v8.word7 + 32]), this, MEM[v8.word7]);
                    }
                    v63 = 1;
                    while (v63 < v8.word6) {
                        0x1a0c(MEM[MEM[(v63 << 5) + (192 + v8) + 32]], MEM[32 + MEM[(v63 << 5) + (192 + v8) + 32]]);
                        v63 = v63 + 1;
                    }
                }
                v64 = MEM[32 + v8.word0];
                v65 = MEM[v8.word0];
                if (v65 >= v5) {
                    0x5502(v64, msg.data[v3 + 100] >> 96, v65);
                    if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]))) {
                        require(v8.word3 != MEM[v8.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v8.word2]));
                        v66 = v67 = v8.word3 - MEM[v8.word2];
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v8.word2])) {
                            v68, /* uint256 */ v69 = msg.sender.startPayments(MEM[32 + v8.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                            require(v68, v69, RETURNDATASIZE());
                            if (this - address(msg.data[69 + (v3 + 100)] >> 96)) {
                                v70 = new struct(2);
                                require(!((v70 + 64 > uint64.max) | (v70 + 64 < v70)), Panic(65)); // failed memory allocation (too much memory)
                                v70.word0 = msg.sender;
                                v70.word1 = v67;
                                require(msg.data.length - v11 >= 128);
                                v71 = new struct(3);
                                require(!((v71 + 96 > uint64.max) | (v71 + 96 < v71)), Panic(65)); // failed memory allocation (too much memory)
                                require(msg.data.length - v11 >= 64);
                                v72 = new struct(2);
                                require(!((v72 + 64 > uint64.max) | (v72 + 64 < v72)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(msg.data[v11] - address(msg.data[v11])));
                                v72.word0 = msg.data[v11];
                                v72.word1 = msg.data[v11 + 32];
                                v71.word0 = v72;
                                v71.word1 = msg.data[v11 + 64];
                                v71.word2 = msg.data[v11 + 96];
                                require(v15 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v73 = new bytes[](v15);
                                require(!((v73 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v15) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v73 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v15) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v73)), Panic(65)); // failed memory allocation (too much memory)
                                require(v13 + v15 <= msg.data.length);
                                CALLDATACOPY(v73.data, v13, v15);
                                v73[v15] = 0;
                                0x4b78(v71, v70, v73, v6);
                            } else {
                                0x3d26(MEM[32 + v8.word2], msg.sender, v67);
                            }
                            v74 = msg.sender.completePayments(MEM[32 + v8.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                            require(v74, MEM[64], RETURNDATASIZE());
                        } else {
                            0x3d86(msg.sender, v67);
                        }
                    } else {
                        if (MEM[v8.word2]) {
                            if (address(msg.data[69 + (v3 + 100)] >> 96) != this) {
                                v75 = _execute;
                            } else {
                                v75 = v76 = this;
                            }
                            require(MEM[v8.word2], MEM[32 + v8.word2], 0xcbf0dbf5000000000000000000000000);
                            v77, /* uint256 */ v78 = msg.sender.withdraw(v75, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ MEM[32 + v8.word2]) << 96) * MEM[32 + v8.word2], MEM[v8.word2]).gas(msg.gas);
                            require(v77, MEM[64], RETURNDATASIZE());
                        }
                        v79 = v80 = new bytes[](96);
                        MEM[v80.data] = 32;
                        MEM[64 + v80] = 32;
                        MEM[96 + v80] = v65;
                    }
                }
            } else if (1 == v1) {
                v81, v82 = 0x2354();
                v4 = v83 = msg.data[20 + v82] >> 128;
                v84 = v85 = 0;
                v86 = new struct(39);
                v86.word6 = 0;
                MEM[v50acV0x1368V0x1a + 480:v50acV0x1368V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                v87 = address(msg.data[v82 + 89] >> 96) * uint128(msg.data[20 + v82]) % (msg.data[52 + v82] >> 128) % 768 + (192 + v86) + 288;
                v88 = MEM[address(msg.data[v82 + 89] >> 96) * uint128(msg.data[20 + v82]) % (msg.data[52 + v82] >> 128) % 768 + (192 + v86) + 320];
                require(!((MEM[address(msg.data[v82 + 89] >> 96) * uint128(msg.data[20 + v82]) % (msg.data[52 + v82] >> 128) % 768 + (192 + v86) + 352] | v88) * (v88 ^ address(msg.data[v82 + 89] >> 96))), v88, address(msg.data[v82 + 89] >> 96));
                require(address(msg.data[v82 + 89] >> 96), ZeroToken());
                MEM[address(msg.data[v82 + 89] >> 96) * uint128(msg.data[20 + v82]) % (msg.data[52 + v82] >> 128) % 768 + (192 + v86) + 320] = address(msg.data[v82 + 89] >> 96);
                v86.word0 = v87;
                v86.word1 = v87;
                v86.word2 = v87;
                v86.word4 = uint128(msg.data[20 + v82]);
                v86.word5 = msg.data[52 + v82] >> 128;
                v89 = v90 = msg.data.length;
                v91 = v92 = msg.data.length;
                v93 = v94 = 0;
                if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + v87])) {
                    if (address(msg.data[69 + v82] >> 96) - this) {
                        require(!bool(address(msg.data[69 + v82] >> 96)), Panic(1)); // low-level assert failed
                        v89 = v95 = v82 + 89 - 12;
                        v84 = v96 = 0x1 & msg.data[85 + (v82 + 89)];
                        v93 = v97 = msg.data[v82 + 89 + (v81 - 89) - 3] >> 232;
                        v91 = v98 = v82 + 89 + (v81 - 89) - v97 - 3;
                        v99 = v100 = 117 + (v82 + 89);
                        require(v100 <= v98);
                        v101 = v102 = v81 - 89 - v97 - 120;
                    } else {
                        v99 = v103 = 22 + (v82 + 89);
                        v101 = v104 = v81 - 89 - 22;
                        v105 = 0x3cca(MEM[32 + v86.word2], this);
                        MEM[v86.word2] = uint16(msg.data[v82 + 89] >> 80) * v105 / 10000;
                    }
                } else {
                    require(this == address(msg.data[69 + v82] >> 96), Panic(1)); // low-level assert failed
                    MEM[v86.word2] = this.balance * uint16(msg.data[v82 + 89] >> 80) / 10000;
                    v101 = v106 = v81 - 89 - 22;
                    v99 = v107 = 22 + (v82 + 89);
                }
                require(uint24.max >= v101, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (address(msg.data[69 + v82] >> 96) - this) {
                    v108 = v109 = msg.data[v89 + 32];
                    if (~v109 < 10000) {
                        require(!(msg.data[v89] - address(msg.data[v89])));
                        v110 = 0x3cca(address(msg.data[v89]), _execute);
                        MEM[0] = v110 * (10000 - ~v109) % uint256.max - v110 * (10000 - ~v109) - (v110 * (10000 - ~v109) % uint256.max < v110 * (10000 - ~v109));
                        MEM[32] = v110 * (10000 - ~v109);
                        v108 = 0x5002();
                    }
                    MEM[v86.word2] = v108;
                }
                if (0x1000000000000000000000000000000 & msg.data[52 + v82]) {
                    if (this - address(msg.data[69 + v82] >> 96)) {
                        v111 = new struct(2);
                        require(!((v111 + 64 > uint64.max) | (v111 + 64 < v111)), Panic(65)); // failed memory allocation (too much memory)
                        v111.word0 = msg.sender;
                        v111.word1 = MEM[v86.word2];
                        require(msg.data.length - v89 >= 128);
                        v112 = new struct(3);
                        require(!((v112 + 96 > uint64.max) | (v112 + 96 < v112)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v89 >= 64);
                        v113 = new struct(2);
                        require(!((v113 + 64 > uint64.max) | (v113 + 64 < v113)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v89] - address(msg.data[v89])));
                        v113.word0 = msg.data[v89];
                        v113.word1 = msg.data[v89 + 32];
                        v112.word0 = v113;
                        v112.word1 = msg.data[v89 + 64];
                        v112.word2 = msg.data[v89 + 96];
                        require(v93 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v114 = new bytes[](v93);
                        require(!((v114 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v114 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v114)), Panic(65)); // failed memory allocation (too much memory)
                        require(v91 + v93 <= msg.data.length);
                        CALLDATACOPY(v114.data, v91, v93);
                        v114[v93] = 0;
                        0x4b78(v112, v111, v114, v84);
                    } else if (MEM[v86.word2]) {
                        0x3d26(MEM[32 + v86.word2], msg.sender, MEM[v86.word2]);
                    }
                    v115 = msg.sender.settle(MEM[32 + v86.word2], MEM[v86.word2]).gas(msg.gas);
                    if (!v115) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                        MEM[v86.word2] = MEM[0];
                    }
                }
                v86.word3 = MEM[v86.word2];
                0x535f(v86);
                v116 = v117 = 0x4cdb();
                v118 = v119 = MEM[64];
                require(!((v119 + 224 > uint64.max) | (v119 + 224 < v119)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v119 + 224;
                MEM[v119] = 0;
                MEM[v119 + 32] = 0;
                MEM[v119 + 64] = 0;
                MEM[v119 + 96] = 0;
                MEM[v119 + 128] = 0;
                MEM[v119 + 160] = 0;
                MEM[v119 + 192] = 96;
                while (v101 >= 3) {
                    v120 = v121 = msg.data[2 + v99];
                    v122 = v123 = 1;
                    if (v121 >> 248) {
                        if (!MEM[64 + v86.word0]) {
                            v86.word6 += v123;
                            MEM[(v123 + v86.word6 << 5) + (192 + v86)] = v86.word0;
                            MEM[64 + v86.word0] = (v123 + v86.word6 << 5) + (192 + v86);
                        }
                        if (v121 >> 248 > v123) {
                            if (!MEM[v86.word1]) {
                                if (MEM[64 + v86.word1]) {
                                    MEM[64 + v86.word1] = 0;
                                    v86.word6 = v86.word6 - 1;
                                    if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word1]) {
                                        MEM[MEM[64 + v86.word1]] = MEM[(v86.word6 << 5) + (192 + v86)];
                                        MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word1];
                                    }
                                }
                            }
                            if ((v121 >> 248) - 2) {
                                require(3 == v121 >> 248, Panic(1)); // low-level assert failed
                                v120 = msg.data[22 + v99];
                                v122 = 21;
                                v124 = MEM[address(v121 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320];
                                require(!((MEM[address(v121 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 352] | v124) * (v124 ^ address(v121 >> 88))), v124, address(v121 >> 88));
                                require(address(v121 >> 88), ZeroToken());
                                MEM[address(v121 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] = address(v121 >> 88);
                                v86.word1 = address(v121 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 288;
                            } else {
                                v86.word1 = v86.word0;
                            }
                        }
                        v122 = v125 = v122 + 20;
                        v126 = MEM[address(v120 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320];
                        require(!((MEM[address(v120 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 352] | v126) * (v126 ^ address(v120 >> 88))), v126, address(v120 >> 88));
                        require(address(v120 >> 88), ZeroToken());
                        MEM[address(v120 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 320] = address(v120 >> 88);
                        v86.word0 = address(v120 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 288;
                        if (address(v120 >> 88) * v86.word4 % v86.word5 % 768 + (192 + v86) + 288 == v86.word2) {
                            MEM[v86.word2] = 0x784cb7b8;
                            revert(28 + v86.word2, 36);
                        }
                    }
                    v99 = v122 + (2 + v99);
                    v101 = v101 - 2 - v122;
                    if (msg.data[v99] >> 240 & 0xc000) {
                        require(uint24.max >= v101, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (msg.data[v99] >> 240 & 0x4000) {
                            MEM[v116 + 32] = 1;
                            MEM[v116 + 64] = address(MEM[32 + v86.word1]);
                        } else {
                            MEM[v116 + 32] = 0;
                            MEM[v116 + 64] = address(MEM[32 + v86.word0]);
                        }
                        MEM[v116 + 96] = MEM[v86.word1] * (msg.data[v99] >> 240 & 0x3fff) / 10000;
                        MEM[v116 - 32] = 0x43583be5;
                        v127 = msg.sender.call(MEM[v1617_0x6V0x1a - 4:v1617_0x6V0x1a - 4 + 164], MEM[0:96]).gas(msg.gas);
                        if (!v127) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v116 - 32] = MEM[v116 - 32];
                            MEM[v86.word1] = MEM[v86.word1] - MEM[32];
                            require(MEM[v86.word0] <= MEM[v86.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v86.word0] = MEM[v86.word0] + MEM[64];
                        }
                    } else {
                        MEM[32 + v118] = msg.data[v99] >> 96;
                        MEM[v118 + 64] = address(MEM[32 + v86.word1]);
                        MEM[v118 + 96] = address(MEM[32 + v86.word0]);
                        MEM[v118 + 128] = MEM[v86.word1] * (msg.data[v99] >> 240) / 10000;
                        v99 = 20 + v99 + (msg.data[20 + v99] >> 232) + 3;
                        v101 = v101 - 20 - (msg.data[20 + v99] >> 232) - 3;
                        require(msg.data[20 + v99] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v128 = new bytes[](msg.data[20 + v99] >> 232);
                        require(!((v128 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v99] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v128 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v99] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v128)), Panic(65)); // failed memory allocation (too much memory)
                        require(23 + v99 + (msg.data[20 + v99] >> 232) <= msg.data.length);
                        CALLDATACOPY(v128.data, 23 + v99, msg.data[20 + v99] >> 232);
                        v128[msg.data[20 + v99] >> 232] = 0;
                        MEM[v118 + 192] = v128;
                        require(uint24.max >= v101, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[v118 - 64] = 0x2bfb780c;
                        MEM[v118 - 32] = 32;
                        MEM[192 + v118] = MEM[192 + v118] - v118;
                        v129 = msg.sender.call(MEM[v1617_0x5V0x1a - 36:v1617_0x5V0x1a - 36 + MEM[MEM[192 + v1617_0x5V0x1a]] + MEM[192 + v1617_0x5V0x1a] - v1617_0x5V0x1a + 68], MEM[0:96]).gas(msg.gas);
                        if (!v129) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v118 - 64] = MEM[v118 - 64];
                            MEM[v118 - 32] = MEM[v118 - 32];
                            MEM[v86.word1] = MEM[v86.word1] - MEM[32];
                            require(MEM[v86.word0] <= MEM[v86.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v86.word0] = MEM[v86.word0] + MEM[64];
                            MEM[192 + v118] = 96;
                            MEM[64] = MEM[64];
                        }
                    }
                }
                if (MEM[64 + v86.word0]) {
                    MEM[64 + v86.word0] = 0;
                    v86.word6 = v86.word6 - 1;
                    if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word0]) {
                        MEM[MEM[64 + v86.word0]] = MEM[(v86.word6 << 5) + (192 + v86)];
                        MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word0];
                    }
                }
                if (!MEM[v86.word1]) {
                    if (MEM[64 + v86.word1]) {
                        MEM[64 + v86.word1] = 0;
                        v86.word6 = v86.word6 - 1;
                        if ((v86.word6 << 5) + (192 + v86) - MEM[64 + v86.word1]) {
                            MEM[MEM[64 + v86.word1]] = MEM[(v86.word6 << 5) + (192 + v86)];
                            MEM[64 + MEM[(v86.word6 << 5) + (192 + v86)]] = MEM[64 + v86.word1];
                        }
                    }
                }
                if (v86.word6) {
                    require(v86.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v86.word7 - v86.word2) {
                        0x55e3(0xae639329, address(MEM[v86.word7 + 32]), this, MEM[v86.word7]);
                    }
                    v130 = v131 = 1;
                    while (v130 < v86.word6) {
                        0x1589(MEM[MEM[(v130 << 5) + (192 + v86) + 32]], MEM[32 + MEM[(v130 << 5) + (192 + v86) + 32]]);
                        v130 = v130 + 1;
                    }
                }
                v64 = v132 = MEM[32 + v86.word0];
                v65 = v133 = MEM[v86.word0];
                if (v133 >= v83) {
                    0x55e3(0xae639329, v132, msg.data[v82] >> 96, v133);
                    if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + v82]))) {
                        require(v86.word3 != MEM[v86.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v86.word2]));
                        if (this - address(msg.data[69 + v82] >> 96)) {
                            v134 = new struct(2);
                            require(!((v134 + 64 > uint64.max) | (v134 + 64 < v134)), Panic(65)); // failed memory allocation (too much memory)
                            v134.word0 = msg.sender;
                            v134.word1 = v86.word3 - MEM[v86.word2];
                            require(msg.data.length - v89 >= 128);
                            v135 = new struct(3);
                            require(!((v135 + 96 > uint64.max) | (v135 + 96 < v135)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v89 >= 64);
                            v136 = new struct(2);
                            require(!((v136 + 64 > uint64.max) | (v136 + 64 < v136)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v89] - address(msg.data[v89])));
                            v136.word0 = msg.data[v89];
                            v136.word1 = msg.data[v89 + 32];
                            v135.word0 = v136;
                            v135.word1 = msg.data[v89 + 64];
                            v135.word2 = msg.data[v89 + 96];
                            require(v93 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v137 = new bytes[](v93);
                            require(!((v137 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v137 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v93) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v137)), Panic(65)); // failed memory allocation (too much memory)
                            require(v91 + v93 <= msg.data.length);
                            CALLDATACOPY(v137.data, v91, v93);
                            v137[v93] = 0;
                            0x4b78(v135, v134, v137, v84);
                        } else if (v86.word3 - MEM[v86.word2]) {
                            0x3d26(MEM[32 + v86.word2], msg.sender, v86.word3 - MEM[v86.word2]);
                        }
                        v138 = msg.sender.settle(MEM[32 + v86.word2], 0x15afd409000000000000000000000000, v86.word3 - MEM[v86.word2]).gas(msg.gas);
                        if (!v138) {
                            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                            revert(uint24(MEM[64]), RETURNDATASIZE());
                        } else {
                            MEM[52] = 0;
                        }
                    } else if (bool(MEM[v86.word2])) {
                        if (this - address(msg.data[69 + v82] >> 96)) {
                            v139 = _execute;
                        } else {
                            v139 = v140 = this;
                        }
                        require(MEM[v86.word2], MEM[32 + v86.word2]);
                        v141, /* uint256 */ v142 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word2] << 96) * (MEM[32 + v86.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v86.word2] << 96) * (MEM[32 + v86.word2] << 96), v139, MEM[v86.word2]).gas(msg.gas);
                        require(v141, MEM[64], RETURNDATASIZE());
                        MEM[96] = 0;
                    }
                    v79 = v143 = new bytes[](32);
                    MEM[v143.data] = v133;
                }
            } else {
                if (6 == v1) {
                    v144 = v145 = msg.data[20 + (v3 + 68)] >> 128;
                    v146 = v147 = 0;
                    v148 = new struct(39);
                    v148.word6 = 0;
                    MEM[v9210x50acV0xde7V0x1a + 480:v9210x50acV0xde7V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    v149 = address(msg.data[v3 + 68 + 89] >> 96) * uint128(msg.data[20 + (v3 + 68)]) % (msg.data[52 + (v3 + 68)] >> 128) % 768 + (192 + v148) + 288;
                    v150 = MEM[address(msg.data[v3 + 68 + 89] >> 96) * uint128(msg.data[20 + (v3 + 68)]) % (msg.data[52 + (v3 + 68)] >> 128) % 768 + (192 + v148) + 320];
                    require(!((MEM[address(msg.data[v3 + 68 + 89] >> 96) * uint128(msg.data[20 + (v3 + 68)]) % (msg.data[52 + (v3 + 68)] >> 128) % 768 + (192 + v148) + 352] | v150) * (v150 ^ address(msg.data[v3 + 68 + 89] >> 96))), v150, address(msg.data[v3 + 68 + 89] >> 96));
                    require(address(msg.data[v3 + 68 + 89] >> 96), ZeroToken());
                    MEM[address(msg.data[v3 + 68 + 89] >> 96) * uint128(msg.data[20 + (v3 + 68)]) % (msg.data[52 + (v3 + 68)] >> 128) % 768 + (192 + v148) + 320] = address(msg.data[v3 + 68 + 89] >> 96);
                    v148.word0 = v149;
                    v148.word1 = v149;
                    v148.word2 = v149;
                    v148.word4 = uint128(msg.data[20 + (v3 + 68)]);
                    v148.word5 = msg.data[52 + (v3 + 68)] >> 128;
                    v151 = v152 = msg.data.length;
                    v153 = v154 = msg.data.length;
                    v155 = v156 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + v149])) {
                        if (address(msg.data[69 + (v3 + 68)] >> 96) - this) {
                            require(!bool(address(msg.data[69 + (v3 + 68)] >> 96)), Panic(1)); // low-level assert failed
                            v151 = v157 = v3 + 68 + 89 - 12;
                            v146 = v158 = 0x1 & msg.data[85 + (v3 + 68 + 89)];
                            v155 = v159 = msg.data[v3 + 68 + 89 + (msg.data[v3 + 36] - 89) - 3] >> 232;
                            v153 = v160 = v3 + 68 + 89 + (msg.data[v3 + 36] - 89) - v159 - 3;
                            v161 = v162 = 117 + (v3 + 68 + 89);
                            require(v162 <= v160);
                            v163 = v164 = msg.data[v3 + 36] - 89 - v159 - 120;
                        } else {
                            v161 = v165 = 22 + (v3 + 68 + 89);
                            v163 = v166 = msg.data[v3 + 36] - 89 - 22;
                            v167 = 0x3cca(MEM[32 + v148.word2], this);
                            MEM[v148.word2] = uint16(msg.data[v3 + 68 + 89] >> 80) * v167 / 10000;
                        }
                    } else {
                        require(this == address(msg.data[69 + (v3 + 68)] >> 96), Panic(1)); // low-level assert failed
                        MEM[v148.word2] = this.balance * uint16(msg.data[v3 + 68 + 89] >> 80) / 10000;
                        v163 = v168 = msg.data[v3 + 36] - 89 - 22;
                        v161 = v169 = 22 + (v3 + 68 + 89);
                    }
                    require(uint24.max >= v163, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (address(msg.data[69 + (v3 + 68)] >> 96) - this) {
                        v170 = v171 = msg.data[v151 + 32];
                        if (~v171 < 10000) {
                            require(!(msg.data[v151] - address(msg.data[v151])));
                            v172 = 0x3cca(address(msg.data[v151]), _execute);
                            MEM[0] = v172 * (10000 - ~v171) % uint256.max - v172 * (10000 - ~v171) - (v172 * (10000 - ~v171) % uint256.max < v172 * (10000 - ~v171));
                            MEM[32] = v172 * (10000 - ~v171);
                            v170 = 0x5002();
                        }
                        MEM[v148.word2] = v170;
                    }
                    if (0x1000000000000000000000000000000 & msg.data[52 + (v3 + 68)]) {
                        v173, /* uint256 */ v174 = msg.sender.sync(MEM[32 + v148.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v173, v174, RETURNDATASIZE());
                        if (this - address(msg.data[69 + (v3 + 68)] >> 96)) {
                            v175 = new struct(2);
                            require(!((v175 + 64 > uint64.max) | (v175 + 64 < v175)), Panic(65)); // failed memory allocation (too much memory)
                            v175.word0 = msg.sender;
                            v175.word1 = MEM[v148.word2];
                            require(msg.data.length - v151 >= 128);
                            v176 = new struct(3);
                            require(!((v176 + 96 > uint64.max) | (v176 + 96 < v176)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v151 >= 64);
                            v177 = new struct(2);
                            require(!((v177 + 64 > uint64.max) | (v177 + 64 < v177)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v151] - address(msg.data[v151])));
                            v177.word0 = msg.data[v151];
                            v177.word1 = msg.data[v151 + 32];
                            v176.word0 = v177;
                            v176.word1 = msg.data[v151 + 64];
                            v176.word2 = msg.data[v151 + 96];
                            require(v155 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v178 = new bytes[](v155);
                            require(!((v178 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v155) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v178 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v155) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v178)), Panic(65)); // failed memory allocation (too much memory)
                            require(v153 + v155 <= msg.data.length);
                            CALLDATACOPY(v178.data, v153, v155);
                            v178[v155] = 0;
                            0x4b78(v176, v175, v178, v146);
                        } else {
                            0x3d26(MEM[32 + v148.word2], msg.sender, MEM[v148.word2]);
                        }
                        v179 = msg.sender.settle().gas(msg.gas);
                        require(v179, MEM[64], RETURNDATASIZE());
                        MEM[v148.word2] = MEM[0];
                    }
                    v148.word3 = MEM[v148.word2];
                    0x535f(v148);
                    v180 = 0x4cdb();
                    v181 = 0x4cbd();
                    while (v163 >= 52) {
                        v181.word2 = msg.data[2 + v161] >> 96;
                        v182 = v183 = msg.data[v161 + 22];
                        v184 = v185 = 1;
                        if (v183 >> 248) {
                            if (!MEM[64 + v148.word0]) {
                                v148.word6 += v185;
                                MEM[(v185 + v148.word6 << 5) + (192 + v148)] = v148.word0;
                                MEM[64 + v148.word0] = (v185 + v148.word6 << 5) + (192 + v148);
                            }
                            if (v183 >> 248 > v185) {
                                if (!MEM[v148.word1]) {
                                    if (MEM[64 + v148.word1]) {
                                        MEM[64 + v148.word1] = 0;
                                        v148.word6 = v148.word6 - 1;
                                        if ((v148.word6 << 5) + (192 + v148) - MEM[64 + v148.word1]) {
                                            MEM[MEM[64 + v148.word1]] = MEM[(v148.word6 << 5) + (192 + v148)];
                                            MEM[64 + MEM[(v148.word6 << 5) + (192 + v148)]] = MEM[64 + v148.word1];
                                        }
                                    }
                                }
                                if ((v183 >> 248) - 2) {
                                    require(3 == v183 >> 248, Panic(1)); // low-level assert failed
                                    v182 = msg.data[20 + (v161 + 22)];
                                    v184 = 21;
                                    require(!((MEM[address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 352] | MEM[address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320]) * (MEM[address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320] ^ address(v183 >> 88))), MEM[address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320], address(v183 >> 88));
                                    require(address(v183 >> 88), ZeroToken());
                                    MEM[address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320] = address(v183 >> 88);
                                    v148.word1 = address(v183 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 288;
                                } else {
                                    v148.word1 = v148.word0;
                                }
                            }
                            v184 = v186 = v184 + 20;
                            v187 = MEM[address(v182 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320];
                            require(!((MEM[address(v182 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 352] | v187) * (v187 ^ address(v182 >> 88))), v187, address(v182 >> 88));
                            require(address(v182 >> 88), ZeroToken());
                            MEM[address(v182 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 320] = address(v182 >> 88);
                            v148.word0 = address(v182 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 288;
                            if (address(v182 >> 88) * v148.word4 % v148.word5 % 768 + (192 + v148) + 288 == v148.word2) {
                                MEM[v148.word2] = 0x784cb7b8;
                                revert(28 + v148.word2, 36);
                            }
                        }
                        v188 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v148.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v148.word0] << 96) & (MEM[32 + v148.word1] << 96 < MEM[32 + v148.word0] << 96);
                        v180.word1 = address(MEM[32 + v148.word1] ^ (MEM[32 + v148.word0] ^ MEM[32 + v148.word1]) * v188);
                        v180.word0 = address(MEM[32 + v148.word0] ^ (MEM[32 + v148.word0] ^ MEM[32 + v148.word1]) * v188);
                        v180.word2 = msg.data[v184 + (v161 + 22)] >> 232;
                        v180.word3 = int24(uint24(msg.data[v184 + (v161 + 22)] >> 208));
                        v180.word4 = address(msg.data[v184 + (v161 + 22)] >> 48);
                        v161 = 26 + (v184 + (v161 + 22)) + (msg.data[26 + (v184 + (v161 + 22))] >> 232) + 3;
                        v163 = v163 - 22 - v184 - 26 - (msg.data[26 + (v184 + (v161 + 22))] >> 232) - 3;
                        require(uint24.max >= v163, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v181.word0 = bool(v188);
                        v181.word1 = 0 - MEM[v148.word1] * (msg.data[v161] >> 240) / 10000;
                        MCOPY(64 + MEM[64], 32 + v180, 128);
                        MCOPY(192 + MEM[64], v181, 96);
                        v189 = new uint256[](msg.data[26 + (v184 + (v161 + 22))] >> 232);
                        CALLDATACOPY(v189.data, 29 + (v184 + (v161 + 22)), msg.data[26 + (v184 + (v161 + 22))] >> 232);
                        v190 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v180.word0) * v180.word0, v53, v53, v53, v53, v53, v53, v53, v189).gas(msg.gas);
                        if (!v190) {
                            v191 = RETURNDATASIZE();
                            revert(v53, v53, v53, v53, v53, v53, v53, v53, v53, msg.data[26 + (v184 + (v161 + 22))] >> 232);
                        } else {
                            v192 = _SafeSub(MEM[v148.word1], 0 - (int128(MEM[0]) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v188));
                            MEM[v148.word1] = v192;
                            if (int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v188 < 0) {
                                MEM[v148.word0] = 0x4c085bf1;
                                revert(28 + v148.word0, 36);
                            } else {
                                MEM[v148.word0] += int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v188;
                            }
                        }
                    }
                    if (MEM[64 + v148.word0]) {
                        MEM[64 + v148.word0] = 0;
                        v148.word6 = v148.word6 - 1;
                        if ((v148.word6 << 5) + (192 + v148) - MEM[64 + v148.word0]) {
                            MEM[MEM[64 + v148.word0]] = MEM[(v148.word6 << 5) + (192 + v148)];
                            MEM[64 + MEM[(v148.word6 << 5) + (192 + v148)]] = MEM[64 + v148.word0];
                        }
                    }
                    if (!MEM[v148.word1]) {
                        if (MEM[64 + v148.word1]) {
                            MEM[64 + v148.word1] = 0;
                            v148.word6 = v148.word6 - 1;
                            if ((v148.word6 << 5) + (192 + v148) - MEM[64 + v148.word1]) {
                                MEM[MEM[64 + v148.word1]] = MEM[(v148.word6 << 5) + (192 + v148)];
                                MEM[64 + MEM[(v148.word6 << 5) + (192 + v148)]] = MEM[64 + v148.word1];
                            }
                        }
                    }
                    if (v148.word6) {
                        require(v148.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v148.word7 - v148.word2) {
                            0x55e3(0xb0d9c09, address(MEM[v148.word7 + 32]), this, MEM[v148.word7]);
                        }
                        v193 = 1;
                        while (v193 < v148.word6) {
                            0x10ae(MEM[MEM[(v193 << 5) + (192 + v148) + 32]], MEM[32 + MEM[(v193 << 5) + (192 + v148) + 32]]);
                            v193 = v193 + 1;
                        }
                    }
                    v194 = MEM[32 + v148.word0];
                    v65 = v195 = MEM[v148.word0];
                    if (v195 >= v145) {
                        0x55e3(0xb0d9c09, v194, msg.data[v3 + 68] >> 96, v195);
                        if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + (v3 + 68)]))) {
                            require(v148.word3 != MEM[v148.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v148.word2]));
                            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v148.word2])) {
                                v196, /* uint256 */ v197 = msg.sender.sync(MEM[32 + v148.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v196, v197, RETURNDATASIZE());
                                if (this - address(msg.data[69 + (v3 + 68)] >> 96)) {
                                    v198 = new struct(2);
                                    require(!((v198 + 64 > uint64.max) | (v198 + 64 < v198)), Panic(65)); // failed memory allocation (too much memory)
                                    v198.word0 = msg.sender;
                                    v198.word1 = v148.word3 - MEM[v148.word2];
                                    require(msg.data.length - v151 >= 128);
                                    v199 = new struct(3);
                                    require(!((v199 + 96 > uint64.max) | (v199 + 96 < v199)), Panic(65)); // failed memory allocation (too much memory)
                                    require(msg.data.length - v151 >= 64);
                                    v200 = new struct(2);
                                    require(!((v200 + 64 > uint64.max) | (v200 + 64 < v200)), Panic(65)); // failed memory allocation (too much memory)
                                    require(!(msg.data[v151] - address(msg.data[v151])));
                                    v200.word0 = msg.data[v151];
                                    v200.word1 = msg.data[v151 + 32];
                                    v199.word0 = v200;
                                    v199.word1 = msg.data[v151 + 64];
                                    v199.word2 = msg.data[v151 + 96];
                                    require(v155 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v201 = new bytes[](v155);
                                    require(!((v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v155) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v155) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v201)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v153 + v155 <= msg.data.length);
                                    CALLDATACOPY(v201.data, v153, v155);
                                    v201[v155] = 0;
                                    0x4b78(v199, v198, v201, v146);
                                } else {
                                    0x3d26(MEM[32 + v148.word2], msg.sender, v148.word3 - MEM[v148.word2]);
                                }
                                v202 = msg.sender.settle().gas(msg.gas);
                                require(v202, MEM[64], RETURNDATASIZE());
                            } else {
                                v203, /* uint256 */ v204 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v203, MEM[64], RETURNDATASIZE());
                                v205 = msg.sender.settle().value(v148.word3 - MEM[v148.word2]).gas(msg.gas);
                                require(v205, MEM[64], RETURNDATASIZE());
                            }
                        } else if (bool(MEM[v148.word2])) {
                            if (this - address(msg.data[69 + (v3 + 68)] >> 96)) {
                                v206 = _execute;
                            } else {
                                v206 = v207 = this;
                            }
                            require(MEM[v148.word2], MEM[32 + v148.word2]);
                            v208, /* uint256 */ v209 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v148.word2] << 96) * (MEM[32 + v148.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v148.word2] << 96) * (MEM[32 + v148.word2] << 96), v206, MEM[v148.word2]).gas(msg.gas);
                            require(v208, MEM[64], RETURNDATASIZE());
                            MEM[96] = 0;
                        } else {
                            v79 = v210 = new bytes[](96);
                            MEM[v210.data] = 32;
                            MEM[64 + v210] = 32;
                            MEM[96 + v210] = v195;
                        }
                    }
                } else if (2 == v1) {
                    v144 = v211 = msg.data[20 + (v3 + 100)] >> 128;
                    v212 = v213 = 0;
                    v214 = new struct(39);
                    v214.word6 = 0;
                    MEM[v9210x50acV0x8b3V0x1a + 480:v9210x50acV0x8b3V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    v215 = address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v214) + 288;
                    v216 = MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v214) + 320];
                    require(!((MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v214) + 352] | v216) * (v216 ^ address(msg.data[v3 + 100 + 89] >> 96))), v216, address(msg.data[v3 + 100 + 89] >> 96));
                    require(address(msg.data[v3 + 100 + 89] >> 96), ZeroToken());
                    MEM[address(msg.data[v3 + 100 + 89] >> 96) * uint128(msg.data[20 + (v3 + 100)]) % (msg.data[52 + (v3 + 100)] >> 128) % 768 + (192 + v214) + 320] = address(msg.data[v3 + 100 + 89] >> 96);
                    v214.word0 = v215;
                    v214.word1 = v215;
                    v214.word2 = v215;
                    v214.word4 = uint128(msg.data[20 + (v3 + 100)]);
                    v214.word5 = msg.data[52 + (v3 + 100)] >> 128;
                    v217 = v218 = msg.data.length;
                    v219 = v220 = msg.data.length;
                    v221 = v222 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + v215])) {
                        if (address(msg.data[69 + (v3 + 100)] >> 96) - this) {
                            require(!bool(address(msg.data[69 + (v3 + 100)] >> 96)), Panic(1)); // low-level assert failed
                            v217 = v223 = v3 + 100 + 89 - 12;
                            v212 = v224 = 0x1 & msg.data[85 + (v3 + 100 + 89)];
                            v221 = v225 = msg.data[v3 + 100 + 89 + (msg.data[v3 + 68] - 89) - 3] >> 232;
                            v219 = v226 = v3 + 100 + 89 + (msg.data[v3 + 68] - 89) - v225 - 3;
                            v227 = v228 = 117 + (v3 + 100 + 89);
                            require(v228 <= v226);
                            v229 = v230 = msg.data[v3 + 68] - 89 - v225 - 120;
                        } else {
                            v227 = v231 = 22 + (v3 + 100 + 89);
                            v229 = v232 = msg.data[v3 + 68] - 89 - 22;
                            v233 = 0x3cca(MEM[32 + v214.word2], this);
                            MEM[v214.word2] = uint16(msg.data[v3 + 100 + 89] >> 80) * v233 / 10000;
                        }
                    } else {
                        require(this == address(msg.data[69 + (v3 + 100)] >> 96), Panic(1)); // low-level assert failed
                        MEM[v214.word2] = this.balance * uint16(msg.data[v3 + 100 + 89] >> 80) / 10000;
                        v229 = v234 = msg.data[v3 + 68] - 89 - 22;
                        v227 = v235 = 22 + (v3 + 100 + 89);
                    }
                    require(uint24.max >= v229, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (address(msg.data[69 + (v3 + 100)] >> 96) - this) {
                        v236 = v237 = msg.data[v217 + 32];
                        if (~v237 < 10000) {
                            require(!(msg.data[v217] - address(msg.data[v217])));
                            v238 = 0x3cca(address(msg.data[v217]), _execute);
                            MEM[0] = v238 * (10000 - ~v237) % uint256.max - v238 * (10000 - ~v237) - (v238 * (10000 - ~v237) % uint256.max < v238 * (10000 - ~v237));
                            MEM[32] = v238 * (10000 - ~v237);
                            v236 = 0x5002();
                        }
                        MEM[v214.word2] = v236;
                    }
                    if (0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]) {
                        v239 = 0x5c73(MEM[32 + v214.word2], msg.data[69 + (v3 + 100)] >> 96, MEM[v214.word2], v217, v212, v219, v221);
                        MEM[v214.word2] = v239;
                    }
                    require(!(MEM[v214.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                    v214.word3 = MEM[v214.word2];
                    0x535f(v214);
                    v240 = 0x4cbd();
                    while (v229 >= 47) {
                        v241 = v242 = msg.data[14 + v227];
                        v243 = v244 = 1;
                        if (v242 >> 248) {
                            if (!MEM[64 + v214.word0]) {
                                v214.word6 += v244;
                                MEM[(v244 + v214.word6 << 5) + (192 + v214)] = v214.word0;
                                MEM[64 + v214.word0] = (v244 + v214.word6 << 5) + (192 + v214);
                            }
                            if (v242 >> 248 > v244) {
                                if (!MEM[v214.word1]) {
                                    if (MEM[64 + v214.word1]) {
                                        MEM[64 + v214.word1] = 0;
                                        v214.word6 = v214.word6 - 1;
                                        if ((v214.word6 << 5) + (192 + v214) - MEM[64 + v214.word1]) {
                                            MEM[MEM[64 + v214.word1]] = MEM[(v214.word6 << 5) + (192 + v214)];
                                            MEM[64 + MEM[(v214.word6 << 5) + (192 + v214)]] = MEM[64 + v214.word1];
                                        }
                                    }
                                }
                                if ((v242 >> 248) - 2) {
                                    require(3 == v242 >> 248, Panic(1)); // low-level assert failed
                                    v241 = msg.data[34 + v227];
                                    v243 = 21;
                                    require(!((MEM[address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 352] | MEM[address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320]) * (MEM[address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320] ^ address(v242 >> 88))), MEM[address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320], address(v242 >> 88));
                                    require(address(v242 >> 88), ZeroToken());
                                    MEM[address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320] = address(v242 >> 88);
                                    v214.word1 = address(v242 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 288;
                                } else {
                                    v214.word1 = v214.word0;
                                }
                            }
                            v243 = v245 = v243 + 20;
                            v246 = MEM[address(v241 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320];
                            require(!((MEM[address(v241 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 352] | v246) * (v246 ^ address(v241 >> 88))), v246, address(v241 >> 88));
                            require(address(v241 >> 88), ZeroToken());
                            MEM[address(v241 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 320] = address(v241 >> 88);
                            v214.word0 = address(v241 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 288;
                            if (address(v241 >> 88) * v214.word4 % v214.word5 % 768 + (192 + v214) + 288 == v214.word2) {
                                MEM[v214.word2] = 0x784cb7b8;
                                revert(28 + v214.word2, 36);
                            }
                        }
                        v247 = v248 = (msg.data[v227] >> 240 & 0x7fff) * MEM[v214.word1] / 10000;
                        v249 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v214.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v214.word1] << 96) & (MEM[32 + v214.word0] << 96 < MEM[32 + v214.word1] << 96);
                        v240.word1 = address(address(MEM[32 + v214.word0]) ^ (address(MEM[32 + v214.word1]) ^ address(MEM[32 + v214.word0])) * v249);
                        v240.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v214.word1]) ^ (address(MEM[32 + v214.word1]) ^ address(MEM[32 + v214.word0])) * v249)) * address(address(MEM[32 + v214.word1]) ^ (address(MEM[32 + v214.word1]) ^ address(MEM[32 + v214.word0])) * v249);
                        v227 = 32 + (v243 + (14 + v227));
                        v229 = v229 - 14 - v243 - 32;
                        v240.word2 = msg.data[v243 + (14 + v227)];
                        require(uint24.max >= v229, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (0 == !(0x8000 & msg.data[v227] >> 240)) {
                            MCOPY(32 + (v214 + 1248), 64 + v240, 20);
                            MCOPY(52 + (v214 + 1248), v240, 96);
                            v250 = msg.sender.forward(v53, v53, v53, v248, v248, v249, msg.data[2 + v227] >> 160, 0).gas(msg.gas);
                            if (!v250) {
                                RETURNDATACOPY(v214 + 1248, 0, RETURNDATASIZE());
                                revert(v214 + 1248, RETURNDATASIZE());
                            } else {
                                v251 = MEM[32];
                                require(!((64 > RETURNDATASIZE()) | int128(v248) ^ v248 | (int128(MEM[0]) ^ MEM[0] | int128(v251) ^ v251)));
                                v252 = (MEM[0] ^ v251) * v249;
                                v253 = v214.word1;
                                v254 = MEM[0] ^ v252;
                                if (v254 < 0) {
                                    MEM[v253] = 0x4c085bf1;
                                    revert(28 + v253, 36);
                                } else {
                                    // Unknown jump to Block 0xcf5B0x1a. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            MCOPY(32 + (v214 + 1248), v240, 96);
                            v255 = msg.sender.call(0, v53, v53, v53, v248, v249, msg.data[2 + v227] >> 160, 0).gas(msg.gas);
                            if (!v255) {
                                RETURNDATACOPY(v214 + 1248, 0, RETURNDATASIZE());
                                revert(v214 + 1248, RETURNDATASIZE());
                            } else {
                                v251 = v256 = MEM[32];
                                v252 = v257 = (MEM[0x0] ^ v256) * v249;
                                v253 = v258 = v214.word1;
                                v254 = v259 = MEM[0x0] ^ v257;
                                if (v259 < 0) {
                                    MEM[v258] = 0x4c085bf1;
                                    revert(28 + v258, 36);
                                }
                            }
                        }
                        MEM[v253] = MEM[v253] - v254;
                        require(!((v254 > v247) | (v254 > MEM[v253])), Panic(17)); // arithmetic overflow or underflow
                        if (v251 ^ v252 > 0) {
                            MEM[v214.word0] = 0x3351b260;
                            revert(28 + v214.word0, 36);
                        } else {
                            MEM[v214.word0] += 0 - (v251 ^ v252);
                        }
                    }
                    if (MEM[64 + v214.word0]) {
                        MEM[64 + v214.word0] = 0;
                        v214.word6 = v214.word6 - 1;
                        if ((v214.word6 << 5) + (192 + v214) - MEM[64 + v214.word0]) {
                            MEM[MEM[64 + v214.word0]] = MEM[(v214.word6 << 5) + (192 + v214)];
                            MEM[64 + MEM[(v214.word6 << 5) + (192 + v214)]] = MEM[64 + v214.word0];
                        }
                    }
                    if (!MEM[v214.word1]) {
                        if (MEM[64 + v214.word1]) {
                            MEM[64 + v214.word1] = 0;
                            v214.word6 = v214.word6 - 1;
                            if ((v214.word6 << 5) + (192 + v214) - MEM[64 + v214.word1]) {
                                MEM[MEM[64 + v214.word1]] = MEM[(v214.word6 << 5) + (192 + v214)];
                                MEM[64 + MEM[(v214.word6 << 5) + (192 + v214)]] = MEM[64 + v214.word1];
                            }
                        }
                    }
                    if (v214.word6) {
                        require(v214.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v214.word7 - v214.word2) {
                            0x55e3(0x3a65ab6, address(MEM[v214.word7 + 32]), this, MEM[v214.word7]);
                        }
                        v260 = 1;
                        while (v260 < v214.word6) {
                            0xb5b(MEM[MEM[(v260 << 5) + (192 + v214) + 32]], MEM[32 + MEM[(v260 << 5) + (192 + v214) + 32]]);
                            v260 = v260 + 1;
                        }
                    }
                    v194 = v261 = MEM[32 + v214.word0];
                    v65 = v262 = MEM[v214.word0];
                    if (v262 >= v211) {
                        0x55e3(0x3a65ab6, v261, msg.data[v3 + 100] >> 96, v262);
                        if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]))) {
                            require(v214.word3 != MEM[v214.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v214.word2]));
                            v263 = 0x5c73(MEM[32 + v214.word2], msg.data[69 + (v3 + 100)] >> 96, v214.word3 - MEM[v214.word2], v217, v212, v219, v221);
                        } else if (bool(MEM[v214.word2])) {
                            if (this - address(msg.data[69 + (v3 + 100)] >> 96)) {
                                v264 = _execute;
                            } else {
                                v264 = v265 = this;
                            }
                            require(MEM[v214.word2], MEM[32 + v214.word2]);
                            v266, /* uint256 */ v267 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v214.word2] << 96) * (MEM[32 + v214.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v214.word2] << 96) * (MEM[32 + v214.word2] << 96), v264, MEM[v214.word2]).gas(msg.gas);
                            require(v266, v214 + 1248, RETURNDATASIZE());
                            MEM[96] = 0;
                        }
                    }
                } else if (5 == v1) {
                    require(128 <= v2 - 4);
                    if (0 == (msg.data[msg.data[v3 + 68] + v3 + 36] >> 96 == this)) {
                        require(!bool(msg.data[msg.data[v3 + 68] + v3 + 36] >> 96), Panic(1)); // low-level assert failed
                        v268 = new struct(2);
                        require(!((v268 + 64 > uint64.max) | (v268 + 64 < v268)), Panic(65)); // failed memory allocation (too much memory)
                        v268.word0 = msg.sender;
                        v268.word1 = (msg.data[4 + v3] ^ msg.data[v3 + 36]) * (msg.data[4 + v3] > 0) ^ msg.data[v3 + 36];
                        require(msg.data.length - (msg.data[v3 + 68] + v3 + 44) >= 128);
                        v269 = new struct(3);
                        require(!((v269 + 96 > uint64.max) | (v269 + 96 < v269)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - (msg.data[v3 + 68] + v3 + 44) >= 64);
                        v270 = new struct(2);
                        require(!((v270 + 64 > uint64.max) | (v270 + 64 < v270)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[msg.data[v3 + 68] + v3 + 44] - address(msg.data[msg.data[v3 + 68] + v3 + 44])));
                        v270.word0 = msg.data[msg.data[v3 + 68] + v3 + 44];
                        v270.word1 = msg.data[msg.data[v3 + 68] + v3 + 44 + 32];
                        v269.word0 = v270;
                        v269.word1 = msg.data[msg.data[v3 + 68] + v3 + 44 + 64];
                        v269.word2 = msg.data[msg.data[v3 + 68] + v3 + 44 + 96];
                        require(msg.data[msg.data[v3 + 68] + v3 + 4] - 137 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v271 = new bytes[](msg.data[msg.data[v3 + 68] + v3 + 4] - 137);
                        require(!((v271 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[msg.data[v3 + 68] + v3 + 4] - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v271 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[msg.data[v3 + 68] + v3 + 4] - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v271)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data[v3 + 68] + v3 + 173 + (msg.data[msg.data[v3 + 68] + v3 + 4] - 137) <= msg.data.length);
                        CALLDATACOPY(v271.data, msg.data[v3 + 68] + v3 + 173, msg.data[msg.data[v3 + 68] + v3 + 4] - 137);
                        v271[msg.data[msg.data[v3 + 68] + v3 + 4] - 137] = 0;
                        0x4b78(v269, v268, v271, 0x1 & msg.data[msg.data[v3 + 68] + v3 + 141]);
                    } else {
                        0x3d26(msg.data[msg.data[v3 + 68] + v3 + 56] >> 96, msg.sender, (msg.data[4 + v3] ^ msg.data[v3 + 36]) * (msg.data[4 + v3] > 0) ^ msg.data[v3 + 36]);
                    }
                    v79 = v272 = MEM[64];
                    require(!((v272 + 32 > uint64.max) | (v272 + 32 < v272)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v272 + 32;
                    MEM[v272] = 0;
                    CALLDATACOPY(v272 + 32, msg.data.length, 0);
                } else {
                    require(3 == v1, Panic(81)); // call to a zero-initialized variable of internal function type
                    v65 = v273 = msg.data[v3 + 68];
                    if (0 == 96 < v2 - 4) {
                        0x3d26(msg.data[v3 + 36], msg.sender, v273);
                    } else {
                        v274 = new struct(2);
                        require(!((v274 + 64 > uint64.max) | (v274 + 64 < v274)), Panic(65)); // failed memory allocation (too much memory)
                        v274.word0 = msg.sender;
                        v274.word1 = v273;
                        require(msg.data.length - (v3 + 36) >= 128);
                        v275 = new struct(3);
                        require(!((v275 + 96 > uint64.max) | (v275 + 96 < v275)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - (v3 + 36) >= 64);
                        v276 = new struct(2);
                        require(!((v276 + 64 > uint64.max) | (v276 + 64 < v276)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v3 + 36] - address(msg.data[v3 + 36])));
                        v276.word0 = msg.data[v3 + 36];
                        v276.word1 = msg.data[v3 + 36 + 32];
                        v275.word0 = v276;
                        v275.word1 = msg.data[v3 + 36 + 64];
                        v275.word2 = msg.data[v3 + 36 + 96];
                        require(msg.data[v3 + 196] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v277 = new bytes[](msg.data[v3 + 196]);
                        require(!((v277 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + 196]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v277 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + 196]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v277)), Panic(65)); // failed memory allocation (too much memory)
                        require(v3 + 228 + msg.data[v3 + 196] <= msg.data.length);
                        CALLDATACOPY(v277.data, v3 + 228, msg.data[v3 + 196]);
                        v277[msg.data[v3 + 196]] = 0;
                        0x4b78(v275, v274, v277, msg.data[v3 + 164]);
                    }
                }
                v79 = v278 = new bytes[](96);
                MEM[v278.data] = 32;
                MEM[64 + v278] = 32;
                MEM[96 + v278] = v65;
                revert(TooMuchSlippage(v194, v144, v65));
            }
            v79 = v279 = new bytes[](96);
            MEM[v279.data] = 32;
            MEM[64 + v279] = 32;
            MEM[96 + v279] = v65;
            revert(TooMuchSlippage(v64, v4, v65));
        } else {
            v280 = v281 = (0x67c4a3b0 == msg.data[v3] >> 224) & (v2 >= 4);
            v79 = v282 = 96;
            if (!v281) {
                v280 = 0;
            } else {
                v79 = v283 = 0x352650ac2653508d946c4912b07895b22edd84cd;
            }
            require(v280);
        }
        return MEM[v20_0x0V0x21_0 + 32:v20_0x0V0x21_0 + 32 + MEM[v20_0x0V0x21_0]];
    }
}
