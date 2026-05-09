// Decompiled by library.dedaub.com
// 2026.04.15 03:02 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _fun_setPayer; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 _fun_uniV3ForkSwap; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



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

function fun_setPayer(uint256 varg0) private { 
    require(varg0 << 96, ConfusedDeputy());
    require(!(_fun_setPayer << 96), ReentrantPayer(_fun_setPayer, 0x7407c0f8000000000000000000000000));
    _fun_setPayer = varg0;
    return ;
}

function fun_execute(struct(3) varg0, uint256 varg1, uint256 varg2) private { 
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
                v12 = fun_permitToSellAmount(v7);
                v13 = fun__uniV3ForkSwap(address(msg.data[v3]), v9, v12, msg.data[v3 + 224], v11);
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
            v18, v19 = fun_permitToTransferDetails(v15, address(msg.data[v3]));
            fun_transferFrom(v15, v19, v17, msg.sender == 0x1ff3684f28c67538d4d072c22734);
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
                        require((_fun_setPayer ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                        require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                        _fun_uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
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
                        require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
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
                        require((_fun_setPayer ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                        require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                        _fun_uniV3ForkSwap = uint32(msg.data[v3] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
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
                        require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
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
                    require((_fun_setPayer ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                    require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                    _fun_uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
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
                    require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
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
                        if (v1 - 0x38c9c147) {
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
                                                            v47 = fun_fastBalanceOf(msg.data[v3], this);
                                                            fun_safeApproveIfBelow(msg.data[v3], address(msg.data[v3 + 64]), v47 * msg.data[v3 + 32] / 10000);
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
                                                            v90 = fun_fastBalanceOf(msg.data[v3 + 32], this);
                                                            fun_safeTransfer(msg.data[v3 + 32], address(msg.data[v3 + 96]), v90 * msg.data[v3 + 64] / 10000);
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
                                                    v97 = fun_fastBalanceOf(msg.data[v3 + 32], this);
                                                    require(v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4 >= msg.data[v3 + 320], TooMuchSlippage(address(v93.word3), 0x97a6f3b9000000000000000000000000, msg.data[v3 + 320], v93.word5 * ((v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) / v93.word4));
                                                    v98 = msg.data[v3 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                    require(v98, v96 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 288] + msg.data[v3 + msg.data[v3 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), RETURNDATASIZE());
                                                    require(32 <= RETURNDATASIZE());
                                                    if (MEM[0] < (v93.word4 ^ v97) * (v97 > v93.word4) ^ v97) {
                                                        if (MEM[0]) {
                                                            fun_safeApprove_42646(msg.data[v3 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
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
                                                    v102, /* uint256 */ v103 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v93.word0.length, this, v104, v104, address(msg.data[v3 + 32]), v104, v104, v104, address(msg.data[v3]), _fun_setPayer << 96 | v93.word6 >> 248, v93.word6 << 128, v100, (v93.word4 ^ v97) * (v97 > v93.word4) ^ v97).gas(msg.gas);
                                                    if (!v102) {
                                                        v105 = RETURNDATASIZE();
                                                        revert(v104, v104, v104, v104, v104, v104, v104, v104, v104, _fun_setPayer << 96 | v93.word6 >> 248);
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
                                                    v107 = fun_fastBalanceOf(msg.data[v3 + 32], address(msg.data[v3 + 96]));
                                                    v108 = msg.data[v3 + 96].getState().gas(msg.gas);
                                                    require(v108, v4, RETURNDATASIZE());
                                                    require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v3 + 128] << 5) + v4] >> 128));
                                                    v109 = v110 = 64;
                                                    v111 = v112 = 0;
                                                    v113 = v114 = v107 - uint128(MEM[(!msg.data[v3 + 128] << 5) + v4]);
                                                } else {
                                                    v109 = 64;
                                                    v111 = 0;
                                                    v115 = fun_fastBalanceOf(msg.data[v3 + 32], this);
                                                    v113 = v116 = v115 * msg.data[v3 + 64] / 10000;
                                                    fun_safeTransfer(msg.data[v3 + 32], address(msg.data[v3 + 96]), v116);
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
                                                v132 = fun_fastBalanceOf(v122, MEM[64 + v120]);
                                                v133 = v122.convertToAssets(v132).gas(msg.gas);
                                                require(v133, 384 + v120, RETURNDATASIZE());
                                                require(32 <= RETURNDATASIZE());
                                                v127 = v134 = (v128 ^ MEM[0] + v131) * (MEM[0] + v131 >= v128) ^ MEM[0] + v131;
                                            }
                                            if (0 == msg.data[v3 + 128]) {
                                                if ((MEM[0] - v127) * (MEM[0] > v127) > MEM[96 + v120]) {
                                                    v135 = v136 = fun_fInverse((MEM[0] - v127) * (MEM[0] > v127), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                } else {
                                                    v135 = fun_saturatingF((MEM[0] - v127) * (MEM[0] > v127), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                }
                                                v137 = v138 = (v135 > MEM[32]) * (v135 - MEM[32]);
                                            } else {
                                                if ((MEM[32] - v127) * (MEM[32] > v127) > MEM[128 + v120]) {
                                                    v139 = v140 = fun_fInverse((MEM[32] - v127) * (MEM[32] > v127), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                } else {
                                                    v139 = fun_saturatingF((MEM[32] - v127) * (MEM[32] > v127), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                }
                                                v137 = v141 = (v139 > MEM[0]) * (v139 - MEM[0]);
                                            }
                                            v142 = ((v137 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v137 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + v120]);
                                            v143 = 0;
                                            if (msg.data[v3 + 64]) {
                                                v144 = fun_fastBalanceOf(msg.data[v3 + 32], this);
                                                v143 = v145 = (v142 ^ v144 * msg.data[v3 + 64] / 10000) * (v144 * msg.data[v3 + 64] / 10000 > v142) ^ v144 * msg.data[v3 + 64] / 10000;
                                                fun_safeTransfer(msg.data[v3 + 32], address(msg.data[v3 + 96]), v145);
                                            }
                                            if (!v143) {
                                                v146 = fun_fastBalanceOf(msg.data[v3 + 32], address(msg.data[v3 + 96]));
                                                v143 = v147 = (v142 ^ v146) * (v146 > v142) ^ v146;
                                            }
                                            if (0 == msg.data[v3 + 128]) {
                                                if (MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18) > MEM[128 + v120]) {
                                                    v148 = fun_fInverse(MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
                                                    v149 = v150 = (MEM[0] > !v148 + v148) * (MEM[0] - (!v148 + v148));
                                                } else {
                                                    v151 = fun_saturatingF(MEM[32] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                    v149 = v152 = (MEM[0] > !v151 + v151) * (MEM[0] - (!v151 + v151));
                                                }
                                            } else if (MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18) > MEM[96 + v120]) {
                                                v153 = fun_fInverse(MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[192 + v120], MEM[160 + v120], MEM[128 + v120], MEM[96 + v120], MEM[uint8.max + 1 + v120]);
                                                v149 = v154 = (MEM[32] > !v153 + v153) * (MEM[32] - (!v153 + v153));
                                            } else {
                                                v155 = fun_saturatingF(MEM[0] + (v143 - v143 * MEM[288 + v120] / 10 ** 18), MEM[160 + v120], MEM[192 + v120], MEM[96 + v120], MEM[128 + v120], MEM[224 + v120]);
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
                                        v161 = fun_fastBalanceOf(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v3 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v3 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v3 + 160]) * msg.data[v3 + 64], this);
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
                                                require((_fun_setPayer ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                                                _fun_uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
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
                                                require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                                                v45 = v175 = 1;
                                            } else {
                                                require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                                MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                                require((_fun_setPayer ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                                                _fun_uniV3ForkSwap = 0xb45a3c0e0000000000000001e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
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
                                                require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                                                v45 = v180 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                            MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                            require((_fun_setPayer ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                            require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                                            _fun_uniV3ForkSwap = uint32(msg.data[v3] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
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
                                            require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                                            v45 = v185 = 1;
                                        }
                                    } else {
                                        require(!msg.data[v3 + 128] | (96 == msg.data[v3 + 128] * 96 / msg.data[v3 + 128]), Panic(17)); // arithmetic overflow or underflow
                                        require(!msg.data[v3 + 160] | (96 == msg.data[v3 + 160] * 96 / msg.data[v3 + 160]), Panic(17)); // arithmetic overflow or underflow
                                        require(!((msg.data[v3 + 64] > 10000) | bool(msg.data[v3 + 224] >> 128) | bool(msg.data[v3 + 128] * 96 >> 128) | bool(msg.data[v3 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v44.data, v44.length);
                                        MEM8[168 + (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v3 + 96] & 0xFF;
                                        require((_fun_setPayer ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                        require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                                        _fun_uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
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
                                        require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                                        v45 = v190 = 1;
                                    }
                                }
                            } else {
                                require(v3 + v2 - v3 >= 128);
                                require(!(msg.data[v3] - address(msg.data[v3])));
                                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v3 + 32])) {
                                    v191 = v192 = fun_fastBalanceOf(msg.data[v3 + 32], this);
                                } else {
                                    v191 = v193 = this.balance;
                                }
                                if (v191 > msg.data[v3 + 64]) {
                                    v194 = (v191 * msg.data[v3 + 96] / 10000 ^ v191 - msg.data[v3 + 64]) * (v191 - msg.data[v3 + 64] > v191 * msg.data[v3 + 96] / 10000) ^ v191 - msg.data[v3 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v3 + 32]))) {
                                        fun_safeTransfer(msg.data[v3 + 32], address(msg.data[v3]), v194);
                                    } else {
                                        fun_safeTransferETH(msg.data[v3], v194);
                                    }
                                }
                                v45 = v195 = 1;
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
                            v196 = v197 = 0;
                            if (address(msg.data[v3]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v3])) {
                                    v198 = fun_fastBalanceOf(msg.data[v3], this);
                                    if (!(v198 * msg.data[v3 + 32] % uint256.max - v198 * msg.data[v3 + 32] - (v198 * msg.data[v3 + 32] % uint256.max < v198 * msg.data[v3 + 32]))) {
                                        v199 = v198 * msg.data[v3 + 32] / 10000;
                                    } else {
                                        v199 = v200 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (v198 * msg.data[v3 + 32] % uint256.max - v198 * msg.data[v3 + 32] - (v198 * msg.data[v3 + 32] % uint256.max < v198 * msg.data[v3 + 32]) - (v198 * msg.data[v3 + 32] < (v198 * msg.data[v3 + 32] + (v198 * msg.data[v3 + 32] % uint256.max - v198 * msg.data[v3 + 32] - (v198 * msg.data[v3 + 32] % uint256.max < v198 * msg.data[v3 + 32])) * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | v198 * msg.data[v3 + 32] - (v198 * msg.data[v3 + 32] + (v198 * msg.data[v3 + 32] % uint256.max - v198 * msg.data[v3 + 32] - (v198 * msg.data[v3 + 32] % uint256.max < v198 * msg.data[v3 + 32])) * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v3 + 96] <= msg.data[v3 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v44.length >= msg.data[v3 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v201 = 0;
                                    v44[msg.data[v3 + 96]] = v199;
                                    if (address(msg.data[v3]) - address(msg.data[v3 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v3], address(msg.data[v3 + 64]), v199);
                                    }
                                } else {
                                    require(!msg.data[v3 + 96], InvalidOffset());
                                    v201 = v202 = 0;
                                }
                            } else {
                                v196 = this.balance * msg.data[v3 + 32] / 10000;
                                if (0 == !v44.length) {
                                    require(msg.data[v3 + 96] <= msg.data[v3 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v44.length >= msg.data[v3 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v201 = v203 = 0;
                                    v44[msg.data[v3 + 96]] = v196;
                                } else {
                                    require(!msg.data[v3 + 96], InvalidOffset());
                                    v204, /* uint256 */ v205 = address(msg.data[v3 + 64]).call().value(v196).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v206 = v207 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v206 = new bytes[](RETURNDATASIZE());
                                        require(!((v206 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v206 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v206)), Panic(65)); // failed memory allocation (too much memory)
                                        v205 = v206.data;
                                        RETURNDATACOPY(v205, 0, RETURNDATASIZE());
                                    }
                                    require(v204, v206 + 32, MEM[v206]);
                                }
                            }
                            v45 = v208 = 1;
                            v209 = address(msg.data[v3 + 64]).call(MEM[v2164V0x1dfe.data:v2164V0x1dfe.data + v2164V0x1dfe.length], MEM[v4397V0x2bd9V0x215eV0x1dfe:v4397V0x2bd9V0x215eV0x1dfe + v4397V0x2bd9V0x215eV0x1dfe]).value(v196).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v210 = v211 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v210 = new bytes[](RETURNDATASIZE());
                                require(!((v210 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v210 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v210)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v210.data, 0, RETURNDATASIZE());
                            }
                            require(v209, v210 + 32, MEM[v210]);
                            v212 = v213 = !MEM[v210];
                            if (v213) {
                                v212 = v214 = !(address(msg.data[v3 + 64])).code.size;
                            }
                            require(!v212, InvalidTarget());
                        }
                    } else {
                        require(v3 + v2 - v3 >= 192);
                        require(!(msg.data[v3] - address(msg.data[v3])));
                        require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                        require(!(msg.data[v3 + 96] - address(msg.data[v3 + 96])));
                        require(!(msg.data[v3 + 128] - uint24(msg.data[v3 + 128])));
                        v215 = v216 = 0;
                        if (msg.data[v3 + 64]) {
                            v217 = fun_fastBalanceOf(address(msg.data[v3 + 32]), this);
                            v215 = v218 = v217 * msg.data[v3 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v3 + 32]), address(msg.data[v3 + 96]), v218);
                        }
                        v219 = address(msg.data[v3 + 96]).getReserves().gas(msg.gas);
                        require(v219, v4, RETURNDATASIZE());
                        require(RETURNDATASIZE() >= 64);
                        v220 = !v215;
                        if (bool(v215)) {
                            v220 = v221 = msg.data[v3 + 128] >> 1 & 0x1 == 1;
                        }
                        if (v220) {
                            v222 = fun_fastBalanceOf(address(msg.data[v3 + 32]), address(msg.data[v3 + 96]));
                            v215 = v223 = _SafeSub(v222, MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5]);
                        }
                        require((10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                        if ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[v3 + 160]) {
                            v224 = address(msg.data[v3 + 96]).token0().gas(msg.gas);
                            require(v224, v4, RETURNDATASIZE());
                            require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                            revert(TooMuchSlippage(MEM[0], msg.data[v3 + 160], (10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000)));
                        } else {
                            MEM[v4 + ((msg.data[v3 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 * MEM[(msg.data[v3 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v3 + 128] >> 8)) * v215 + MEM[0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5] * 10000);
                            MEM[v4 + (0x20 ^ (msg.data[v3 + 128] & 0x1 == 1) << 5) + 32] = 0;
                            v225, /* uint256 */ v226 = address(msg.data[v3 + 96]).swap(v104, v104, address(msg.data[v3]), 128, 0).gas(msg.gas);
                            require(v225, v4, RETURNDATASIZE());
                            v45 = v227 = 1;
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
                    v228 = v229 = bytes20(MEM[v44.data]);
                    if (v44.length < 20) {
                        v228 = v230 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v44.length << 3) & MEM[v44.data]);
                    }
                    v231 = (v228 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    require(v231, v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0), RETURNDATASIZE());
                    require(31 < RETURNDATASIZE());
                    require(!MEM[0] | (MEM[0] * msg.data[v3 + 32] / MEM[0] == msg.data[v3 + 32]), Panic(17)); // arithmetic overflow or underflow
                    v232 = new bytes[](40);
                    require(!((v232 + 96 > uint64.max) | (v232 + 96 < v232)), Panic(65)); // failed memory allocation (too much memory)
                    CALLDATACOPY(v232.data, msg.data.length, 64);
                    v233 = fun_uniV3ForkSwap(address(msg.data[v3]), v4, MEM[0] * msg.data[v3 + 32] / 10000, msg.data[v3 + 96], this, v232);
                    v45 = v234 = 1;
                }
            } else {
                require(v3 + v2 - v3 >= 288);
                require(!(msg.data[v3] - address(msg.data[v3])));
                require(v3 + v2 - (v3 + 32) >= 128);
                v235 = new struct(3);
                require(!((v235 + 96 > uint64.max) | (v235 + 96 < v235)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + v2 - (v3 + 32) >= 64);
                v236 = new struct(2);
                require(!((v236 + 64 > uint64.max) | (v236 + 64 < v236)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
                v236.word0 = msg.data[v3 + 32];
                v236.word1 = msg.data[v3 + 32 + 32];
                v235.word0 = v236;
                v237 = v44.data;
                v235.word1 = msg.data[v3 + 32 + 64];
                v235.word2 = msg.data[v3 + 32 + 96];
                require(!(msg.data[v3 + 160] - address(msg.data[v3 + 160])));
                require(msg.data[v3 + 192] <= uint64.max);
                require(v3 + msg.data[v3 + 192] + 31 < v3 + v2);
                require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v238 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
                require(!((v238 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v238 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v238)), Panic(65)); // failed memory allocation (too much memory)
                require(v3 + msg.data[v3 + 192] + 32 + msg.data[v3 + msg.data[v3 + 192]] <= v3 + v2);
                CALLDATACOPY(v238.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
                v238[msg.data[v3 + msg.data[v3 + 192]]] = 0;
                require(!(msg.data[v3 + 224] - address(msg.data[v3 + 224])));
                require(MEM[v235.word0.length + 32] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8ef, Panic(1)); // low-level assert failed
                v239, v240 = fun_permitToTransferDetails(v235, address(msg.data[v3]));
                v241 = new struct(4);
                require(!((v241 + 128 > uint64.max) | (v241 + 128 < v241)), Panic(65)); // failed memory allocation (too much memory)
                v241.word0 = address(MEM[v235.word0.length]);
                v241.word1 = v239;
                v241.word2 = address(msg.data[v3 + 160]);
                v241.word3 = 1;
                MEM[v241 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v241 - 32] = MEM[v241 - 32];
                v242 = new struct(4);
                require(!((v242 + 128 > uint64.max) | (v242 + 128 < v242)), Panic(65)); // failed memory allocation (too much memory)
                v242.word0 = address(msg.data[v3 + 224]);
                v242.word1 = msg.data[v3 + (uint8.max + 1)];
                v242.word2 = address(_fun_setPayer);
                v242.word3 = 1;
                MEM[v242 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v242 - 32] = MEM[v242 - 32];
                v243 = fun_fastBalanceOf(msg.data[v3 + 224], this);
                v240.word1 = v239 * ((msg.data[v3 + (uint8.max + 1)] ^ v243) * (v243 > msg.data[v3 + (uint8.max + 1)]) ^ v243) / msg.data[v3 + (uint8.max + 1)];
                v244 = msg.data[v3 + 224].transfer(address(msg.data[v3 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v3 + (uint8.max + 1)] ^ v243) * (v243 > msg.data[v3 + (uint8.max + 1)]) ^ v243).gas(msg.gas);
                if (!v244) {
                    RETURNDATACOPY(uint24(v242 + 128), 0, RETURNDATASIZE());
                    revert(uint24(v242 + 128), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v245 = new bytes[](162);
                    MEM[v245.data] = 'Consideration consideration)';
                    MCOPY(v245 + 60, v246.data, v246.length);
                    MEM[v245 + v246.length + 60] = 0;
                    MCOPY(v245 + v246.length + 60, v247.data, v247.length);
                    MEM[v245 + v246.length + v247.length + 60] = 0;
                    v248 = v245 + 224;
                    require(!((v248 > uint64.max) | (v248 < v245)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[v248] = 0x137c29fe;
                    MCOPY(32 + v248, v235.word0.length, 64);
                    MCOPY(96 + v248, v44.data, 64);
                    MCOPY(160 + v248, v240, 64);
                    MCOPY(352 + v248, v245, 194);
                    MCOPY(384 + (v248 + v245.length), v238, 32 + v238.length);
                    v249, /* uint256 */ v250 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v104, v104, v104, v104, v104, v104, address(msg.data[v3 + 160]), keccak256(MEM[v264fV0x215eV0x1dfe - 32:v264fV0x215eV0x1dfe - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v249) {
                        v251 = RETURNDATASIZE();
                        revert(v104, v104, v104, v104, v104, v104, v104, v104, v104, 514);
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v264fV0x215eV0x1dfe - 32:v264fV0x215eV0x1dfe - 32 + 160]), keccak256(MEM[v25dcV0x215eV0x1dfe - 32:v25dcV0x215eV0x1dfe - 32 + 160]))(uint128(v239 * ((msg.data[v3 + (uint8.max + 1)] ^ v243) * (v243 > msg.data[v3 + (uint8.max + 1)]) ^ v243) / msg.data[v3 + (uint8.max + 1)]), uint128(v239 * ((msg.data[v3 + (uint8.max + 1)] ^ v243) * (v243 > msg.data[v3 + (uint8.max + 1)]) ^ v243) / msg.data[v3 + (uint8.max + 1)]));
                        v45 = v252 = 1;
                    }
                }
            }
            if (0 == v45) {
                if (v1 - 0xbd01c226) {
                    if (0x131ad428 - v1) {
                        v253 = v254 = 0;
                    } else {
                        require(v3 + v2 - v3 >= 32);
                        require(!(msg.data[v3] - bool(msg.data[v3])));
                        fun__checkSlippageAndTransfer(varg0, msg.data[v3]);
                        v253 = v255 = 1;
                    }
                } else {
                    require(v3 + v2 - v3 >= 64);
                    require(block.timestamp <= msg.data[v3], SignatureExpired(msg.data[v3]));
                    require(msg.value <= msg.data[v3 + 32], MsgValueMismatch(msg.data[v3 + 32], msg.value));
                    v253 = v256 = 1;
                }
            } else {
                v253 = v257 = 1;
            }
            if (!v253) {
                v258 = new uint256[](v2);
                CALLDATACOPY(v258.data, v3, v2);
                revert(ActionInvalid(0, bytes4(msg.data[32 + v0]), v258));
            }
        }
        v259 = v260 = varg1 + 32;
        v261 = v262 = 1;
        while (v261 < varg2) {
            v263 = msg.data[varg1 + msg.data[v259]] - 4;
            v264 = varg1 + msg.data[v259] + 36;
            v265 = msg.data[32 + (varg1 + msg.data[v259])] >> 224;
            if (v265 - 0xd92aadfb) {
                if (v265 - 0x8d68a156) {
                    if (v265 - 0x103b48be) {
                        if (v265 - 0x38c9c147) {
                            if (v265 - 0x34ee90ca) {
                                if (0 == (v265 == 0xaf72634f) | (v265 == 0xfd8c38e1) | (v265 == 0x6c5f9cf9) | (v265 == 0xf61460f9)) {
                                    if (0 == (v265 == 0x736180c8)) {
                                        if (v265 - 0x6472b276) {
                                            if (v265 - 0x9b59756f) {
                                                if (v265 - 0x670335be) {
                                                    if (v265 - 0xca9e5d0f) {
                                                        if (0xb8df6d4d - v265) {
                                                            v266 = v267 = 0;
                                                        } else {
                                                            require(v264 + v263 - v264 >= 160);
                                                            require(!(msg.data[v264] - address(msg.data[v264])));
                                                            require(!(msg.data[v264 + 64] - address(msg.data[v264 + 64])));
                                                            require(!(msg.data[v264 + 96] - bool(msg.data[v264 + 96])));
                                                            v268 = fun_fastBalanceOf(msg.data[v264], this);
                                                            fun_safeApproveIfBelow(msg.data[v264], address(msg.data[v264 + 64]), v268 * msg.data[v264 + 32] / 10000);
                                                            if (!msg.data[v264 + 96]) {
                                                                v269 = msg.data[v264 + 64].sellBaseToken(v268 * msg.data[v264 + 32] / 10000, msg.data[v264 + 128], 96, 0).gas(msg.gas);
                                                                if (!v269) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v266 = v270 = 1;
                                                                }
                                                            } else {
                                                                v271 = msg.data[v264 + 64].getExpectedTarget().gas(msg.gas);
                                                                if (!v271) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 63);
                                                                    v272 = msg.data[v264 + 64]._R_STATUS_().gas(msg.gas);
                                                                    if (!v272) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                        require(!(MEM[0] >> 8));
                                                                        require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                        v273 = msg.data[v264 + 64].getOraclePrice().gas(msg.gas);
                                                                        if (!v273) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            v274 = msg.data[v264 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                            if (!v274) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v275 = msg.data[v264 + 64]._K_().gas(msg.gas);
                                                                                if (!v275) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                                    if (uint8(MEM[0]) - 2) {
                                                                                        require(3 > uint8(MEM[0]), Panic(33)); // failed convertion to enum type
                                                                                        v276 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v268 * msg.data[v264 + 32] / 10000) / 10 ** 18;
                                                                                        if ((10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 < v276) {
                                                                                            v277 = v278 = v276 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                            v279 = v280 = 10 ** 18;
                                                                                            v281 = v282 = 0;
                                                                                        } else {
                                                                                            v277 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - v276;
                                                                                            v281 = v283 = 1;
                                                                                            v279 = 10 ** 18;
                                                                                        }
                                                                                        v284 = v285 = v277 * v277 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v279;
                                                                                        v284 = (v285 >> 1) + 1;
                                                                                        while (v284 < v284) {
                                                                                            v284 = v284 + v285 / v284 >> 1;
                                                                                        }
                                                                                        if (0 == v281) {
                                                                                            v286 = v287 = v284 - v277;
                                                                                        } else {
                                                                                            v286 = v288 = v277 + v284;
                                                                                        }
                                                                                        v289 = v290 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v286 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v286 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                    } else {
                                                                                        v291 = msg.data[v264 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                        if (!v291) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            if (v268 * msg.data[v264 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                v292 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v268 * msg.data[v264 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18;
                                                                                                if ((10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 < v292) {
                                                                                                    v293 = v294 = v292 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                    v295 = v296 = 10 ** 18;
                                                                                                    v297 = v298 = 0;
                                                                                                } else {
                                                                                                    v293 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - v292;
                                                                                                    v297 = v299 = 1;
                                                                                                    v295 = 10 ** 18;
                                                                                                }
                                                                                                v300 = v301 = v293 * v293 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v295;
                                                                                                v300 = (v301 >> 1) + 1;
                                                                                                while (v300 < v300) {
                                                                                                    v300 = v300 + v301 / v300 >> 1;
                                                                                                }
                                                                                                if (0 == v297) {
                                                                                                    v302 = v303 = v300 - v293;
                                                                                                } else {
                                                                                                    v302 = v304 = v293 + v300;
                                                                                                }
                                                                                                v289 = v305 = MEM[0] - MEM[0] + (MEM[0] - (bool(v302 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v302 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                            } else {
                                                                                                v289 = (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v268 * msg.data[v264 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v268 * msg.data[v264 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) * ((MEM[0] + v268 * msg.data[v264 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    v306 = msg.data[v264 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                    if (!v306) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        v307 = msg.data[v264 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v307) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            if (v289 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18) < msg.data[v264 + 128]) {
                                                                                                v308 = msg.data[v264 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                require(v308, MEM[64], RETURNDATASIZE());
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v264 + 128], v289 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18)));
                                                                                                revert();
                                                                                            } else {
                                                                                                v309 = msg.data[v264 + 64].buyBaseToken(v289 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18), v268 * msg.data[v264 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                if (!v309) {
                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                } else {
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    v266 = v310 = 1;
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
                                                        require(v264 + v263 - v264 >= 192);
                                                        require(!(msg.data[v264] - address(msg.data[v264])));
                                                        require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                                        require(!(msg.data[v264 + 96] - address(msg.data[v264 + 96])));
                                                        require(!(msg.data[v264 + 128] - bool(msg.data[v264 + 128])));
                                                        if (msg.data[v264 + 64]) {
                                                            v311 = fun_fastBalanceOf(msg.data[v264 + 32], this);
                                                            fun_safeTransfer(msg.data[v264 + 32], address(msg.data[v264 + 96]), v311 * msg.data[v264 + 64] / 10000);
                                                        }
                                                        v312 = msg.data[v264 + 96].sellQuote(address(msg.data[v264]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v264 + 128]) << 96).gas(msg.gas);
                                                        if (!v312) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(RETURNDATASIZE() > 31);
                                                            if (MEM[0] < msg.data[v264 + 160]) {
                                                                v313 = msg.data[v264 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                require(v313, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v264 + 160], MEM[0]));
                                                                revert();
                                                            } else {
                                                                v266 = 1;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    require(v264 + v263 - v264 >= 352);
                                                    require(!(msg.data[v264] - address(msg.data[v264])));
                                                    require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                                    require(v264 + v263 - v264 - 64 >= 224);
                                                    v314 = new struct(7);
                                                    require(!((v314 + 224 > uint64.max) | (v314 + 224 < v314)), Panic(65)); // failed memory allocation (too much memory)
                                                    v314.word0 = msg.data[v264 + 64];
                                                    require(!(msg.data[v264 + 96] - address(msg.data[v264 + 96])));
                                                    v314.word1 = msg.data[v264 + 96];
                                                    v314.word2 = msg.data[v264 + 128];
                                                    require(!(msg.data[v264 + 160] - address(msg.data[v264 + 160])));
                                                    v314.word3 = msg.data[v264 + 160];
                                                    v314.word4 = msg.data[v264 + 192];
                                                    v314.word5 = msg.data[v264 + 224];
                                                    v314.word6 = msg.data[v264 + (uint8.max + 1)];
                                                    require(msg.data[v264 + 288] <= uint64.max);
                                                    require(v264 + v263 - (v264 + msg.data[v264 + 288]) >= 64);
                                                    v315 = new struct(2);
                                                    require(!((v315 + 64 > uint64.max) | (v315 + 64 < v315)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(msg.data[v264 + msg.data[v264 + 288]] <= uint64.max);
                                                    require(v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]] + 31 < v264 + v263);
                                                    require(msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v316 = new bytes[](msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]]);
                                                    require(!((v316 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v316 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v316)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]] + 32 + msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]] <= v264 + v263);
                                                    CALLDATACOPY(v316.data, v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]] + 32, msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]]);
                                                    v316[msg.data[v264 + msg.data[v264 + 288] + msg.data[v264 + msg.data[v264 + 288]]]] = 0;
                                                    v315.word0 = v316;
                                                    v315.word1 = msg.data[v264 + msg.data[v264 + 288] + 32];
                                                    v317 = fun_fastBalanceOf(msg.data[v264 + 32], this);
                                                    require(v314.word5 * ((v314.word4 ^ v317) * (v317 > v314.word4) ^ v317) / v314.word4 >= msg.data[v264 + 320], TooMuchSlippage(address(v314.word3), 0x97a6f3b9000000000000000000000000, msg.data[v264 + 320], v314.word5 * ((v314.word4 ^ v317) * (v317 > v314.word4) ^ v317) / v314.word4));
                                                    v318 = msg.data[v264 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                    if (!v318) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        if (MEM[0] < (v314.word4 ^ v317) * (v317 > v314.word4) ^ v317) {
                                                            if (MEM[0]) {
                                                                fun_safeApprove_42646(msg.data[v264 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
                                                            }
                                                            v319 = msg.data[v264 + 32].approve(0xbbbbbbb520d69a9775e85b458c58c648259fad5f, 0x95ea7b3000000000000000000000000, uint256.max).gas(msg.gas);
                                                            if (!v319) {
                                                                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                                                                revert(uint24(MEM[64]), RETURNDATASIZE());
                                                            } else {
                                                                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                                                                MEM[52] = 0;
                                                            }
                                                        }
                                                        MCOPY(96 + MEM[64], 32 + v314, 64);
                                                        MCOPY(192 + MEM[64], 96 + v314, 96);
                                                        v320 = new uint256[](64);
                                                        MEM[v320.data] = v315.word1;
                                                        v321 = v315.word0;
                                                        MCOPY(512 + MEM[64], v315.word0, 32 + v321.length);
                                                        v322 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v314.word0, this, v104, v104, address(msg.data[v264 + 32]), v104, v104, v104, address(msg.data[v264]), _fun_setPayer << 96 | v314.word6 >> 248, v314.word6 << 128, v320, (v314.word4 ^ v317) * (v317 > v314.word4) ^ v317).gas(msg.gas);
                                                        if (!v322) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            emit uint128(v314.word6)(uint128(v314.word5 * ((v314.word4 ^ v317) * (v317 > v314.word4) ^ v317) / v314.word4), uint128(v314.word5 * ((v314.word4 ^ v317) * (v317 > v314.word4) ^ v317) / v314.word4));
                                                            v266 = v323 = 1;
                                                        }
                                                    }
                                                }
                                            } else {
                                                require(v264 + v263 - v264 >= 224);
                                                require(!(msg.data[v264] - address(msg.data[v264])));
                                                require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                                require(!(msg.data[v264 + 96] - address(msg.data[v264 + 96])));
                                                require(!(msg.data[v264 + 128] - bool(msg.data[v264 + 128])));
                                                require(!(msg.data[v264 + 160] - int32(msg.data[v264 + 160])));
                                                if (!msg.data[v264 + 64]) {
                                                    v324 = fun_fastBalanceOf(msg.data[v264 + 32], address(msg.data[v264 + 96]));
                                                    v325 = msg.data[v264 + 96].getState().gas(msg.gas);
                                                    if (!v325) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v264 + 128] << 5) + MEM[64]] >> 128));
                                                        v326 = v327 = 64;
                                                        v328 = v329 = 0;
                                                        v330 = v331 = v324 - uint128(MEM[(!msg.data[v264 + 128] << 5) + MEM[64]]);
                                                    }
                                                } else {
                                                    v326 = 64;
                                                    v328 = 0;
                                                    v332 = fun_fastBalanceOf(msg.data[v264 + 32], this);
                                                    v330 = v333 = v332 * msg.data[v264 + 64] / 10000;
                                                    fun_safeTransfer(msg.data[v264 + 32], address(msg.data[v264 + 96]), v333);
                                                }
                                                require(!((MEM[v326] + 32 > uint64.max) | (MEM[v326] + 32 < MEM[v326])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[v326] + 32, msg.data.length, 0);
                                                MCOPY(228 + MEM[v326], MEM[v326], 32);
                                                v334 = msg.data[v264 + 96].call(0x3eece7db000000000000000000000000, address(msg.data[v264]), 0x3eece7db000000000000000000000000, v330, msg.data[v264 + 128], v328, int32(msg.data[v264 + 160]), 192).value(v328).gas(msg.gas);
                                                if (!v334) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (MEM[32] < msg.data[192 + v264]) {
                                                    v335 = msg.data[v264 + 96].tokenB().gas(msg.gas);
                                                    require(v335, MEM[64], RETURNDATASIZE());
                                                    require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                    revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[192 + v264], MEM[32]));
                                                } else {
                                                    v266 = v336 = 1;
                                                }
                                            }
                                        } else {
                                            require(v264 + v263 - v264 >= 192);
                                            require(!(msg.data[v264] - address(msg.data[v264])));
                                            require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                            require(!(msg.data[v264 + 96] - address(msg.data[v264 + 96])));
                                            require(!(msg.data[v264 + 128] - bool(msg.data[v264 + 128])));
                                            EXTCODECOPY(msg.data[v264 + 96], MEM[64], 54, 384);
                                            v337 = msg.data[v264 + 96].getReserves().gas(msg.gas);
                                            if (!v337) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v338 = address(address(MEM[MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v264 + 128]);
                                                v339 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v264 + 128]).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                if (!v339) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(32 <= RETURNDATASIZE());
                                                    v340 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v264 + 128]).maxDeposit(0x402d267d000000000000000000000000, MEM[64 + MEM[64]]).gas(msg.gas);
                                                    if (!v340) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v341 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]] << 96, MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, address(msg.data[v264 + 96]), MEM[64 + MEM[64]]).gas(msg.gas);
                                                        if (!v341) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v342 = v338.cash().gas(msg.gas);
                                                            if (!v342) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(32 <= RETURNDATASIZE());
                                                                v343 = v344 = (MEM[0] ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v264 + 128])) * (MEM[0] < MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v264 + 128]) ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v264 + 128]);
                                                                v345 = v338.caps().gas(msg.gas);
                                                                if (!v345) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                    v346 = v338.totalBorrows().gas(msg.gas);
                                                                    if (!v346) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(32 <= RETURNDATASIZE());
                                                                        v347 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * (((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) - MEM[0]);
                                                                        if (v347 < v344) {
                                                                            v348 = fun_fastBalanceOf(v338, MEM[64 + MEM[64]]);
                                                                            v349 = v338.convertToAssets(v348).gas(msg.gas);
                                                                            if (!v349) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(32 <= RETURNDATASIZE());
                                                                                v343 = v350 = (v344 ^ MEM[0] + v347) * (MEM[0] + v347 >= v344) ^ MEM[0] + v347;
                                                                            }
                                                                        }
                                                                        if (0 == msg.data[v264 + 128]) {
                                                                            if ((MEM[0] - v343) * (MEM[0] > v343) > MEM[96 + MEM[64]]) {
                                                                                v351 = v352 = fun_fInverse((MEM[0] - v343) * (MEM[0] > v343), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            } else {
                                                                                v351 = fun_saturatingF((MEM[0] - v343) * (MEM[0] > v343), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            }
                                                                            v353 = v354 = (v351 > MEM[32]) * (v351 - MEM[32]);
                                                                        } else {
                                                                            if ((MEM[32] - v343) * (MEM[32] > v343) > MEM[128 + MEM[64]]) {
                                                                                v355 = v356 = fun_fInverse((MEM[32] - v343) * (MEM[32] > v343), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            } else {
                                                                                v355 = fun_saturatingF((MEM[32] - v343) * (MEM[32] > v343), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            }
                                                                            v353 = v357 = (v355 > MEM[0]) * (v355 - MEM[0]);
                                                                        }
                                                                        v358 = ((v353 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v353 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                        v359 = 0;
                                                                        if (msg.data[v264 + 64]) {
                                                                            v360 = fun_fastBalanceOf(msg.data[v264 + 32], this);
                                                                            v359 = v361 = (v358 ^ v360 * msg.data[v264 + 64] / 10000) * (v360 * msg.data[v264 + 64] / 10000 > v358) ^ v360 * msg.data[v264 + 64] / 10000;
                                                                            fun_safeTransfer(msg.data[v264 + 32], address(msg.data[v264 + 96]), v361);
                                                                        }
                                                                        if (!v359) {
                                                                            v362 = fun_fastBalanceOf(msg.data[v264 + 32], address(msg.data[v264 + 96]));
                                                                            v359 = v363 = (v358 ^ v362) * (v362 > v358) ^ v362;
                                                                        }
                                                                        if (0 == msg.data[v264 + 128]) {
                                                                            if (MEM[32] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                v364 = fun_fInverse(MEM[32] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                v365 = v366 = (MEM[0] > !v364 + v364) * (MEM[0] - (!v364 + v364));
                                                                            } else {
                                                                                v367 = fun_saturatingF(MEM[32] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v365 = v368 = (MEM[0] > !v367 + v367) * (MEM[0] - (!v367 + v367));
                                                                            }
                                                                        } else if (MEM[0] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                            v369 = fun_fInverse(MEM[0] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            v365 = v370 = (MEM[32] > !v369 + v369) * (MEM[32] - (!v369 + v369));
                                                                        } else {
                                                                            v371 = fun_saturatingF(MEM[0] + (v359 - v359 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            v365 = v372 = (MEM[32] > !v371 + v371) * (MEM[32] - (!v371 + v371));
                                                                        }
                                                                        if (v365 < msg.data[v264 + 160]) {
                                                                            v373 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v264 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                            require(v373, MEM[64], RETURNDATASIZE());
                                                                            require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                                                            revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v264 + 160], v365));
                                                                        } else {
                                                                            if (v365 > 1) {
                                                                                MEM[MEM[64] + (msg.data[v264 + 128] << 5) + 32] = v365;
                                                                                MEM[(0x20 ^ msg.data[v264 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                v374 = msg.data[v264 + 96].swap(v104, v104, address(msg.data[v264]), 128, 0).gas(msg.gas);
                                                                                if (!v374) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                }
                                                                            }
                                                                            v266 = v375 = 1;
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
                                        require(v264 + v263 - v264 >= 192);
                                        require(!(msg.data[v264] - address(msg.data[v264])));
                                        require(!(msg.data[v264 + 64] - bool(msg.data[v264 + 64])));
                                        require(!(msg.data[v264 + 128] - address(msg.data[v264 + 128])));
                                        require(!(msg.data[v264 + 160] - address(msg.data[v264 + 160])));
                                        v376 = fun_fastBalanceOf(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v264 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v264 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v264 + 160]) * msg.data[v264 + 64], this);
                                        if (!msg.data[v264 + 64]) {
                                            v377 = msg.data[v264 + 128].sellGem(address(msg.data[v264]), 0x95991276000000000000000000000000, v376 * msg.data[v264 + 32] / 10000).gas(msg.gas);
                                            if (!v377) {
                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                            } else {
                                                MEM[52] = 0;
                                                v378 = msg.data[v264 + 128].tin().gas(msg.gas);
                                                if (!v378) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(RETURNDATASIZE() > 31);
                                                    v379 = v380 = v376 * msg.data[v264 + 32] / 10000 * 10 ** 18 / 10 ** 6 - v376 * msg.data[v264 + 32] / 10000 * 10 ** 18 / 10 ** 6 * MEM[0] / 10 ** 18;
                                                    if (v380 >= msg.data[v264 + 96]) {
                                                        v266 = v381 = 1;
                                                    }
                                                }
                                            }
                                        } else {
                                            v382 = msg.data[v264 + 128].tout().gas(msg.gas);
                                            if (!v382) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                v379 = v383 = v376 * msg.data[v264 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v383 >= msg.data[v264 + 96]) {
                                                    v384 = msg.data[v264 + 128].buyGem(address(msg.data[v264]), 0x8d7ef9bb000000000000000000000000, v383).gas(msg.gas);
                                                    if (!v384) {
                                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                                    } else {
                                                        MEM[52] = 0;
                                                        v266 = v385 = 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(TooMuchSlippage(msg.data[v264 + 160] ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v264 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v264 + 160]) * msg.data[v264 + 64], 0x97a6f3b9000000000000000000000000, msg.data[v264 + 96], v379));
                                    }
                                } else {
                                    require(v264 + v263 - v264 >= uint8.max + 1);
                                    require(!(msg.data[v264] - address(msg.data[v264])));
                                    require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                    require(!(msg.data[v264 + 96] - bool(msg.data[v264 + 96])));
                                    require(msg.data[v264 + 192] <= uint64.max);
                                    require(v264 + msg.data[v264 + 192] + 31 < v264 + v263);
                                    require(msg.data[v264 + msg.data[v264 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v386 = new bytes[](msg.data[v264 + msg.data[v264 + 192]]);
                                    require(!((v386 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v386 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v386)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v264 + msg.data[v264 + 192] + 32 + msg.data[v264 + msg.data[v264 + 192]] <= v264 + v263);
                                    CALLDATACOPY(v386.data, v264 + msg.data[v264 + 192] + 32, msg.data[v264 + msg.data[v264 + 192]]);
                                    v386[msg.data[v264 + msg.data[v264 + 192]]] = 0;
                                    if (0 == (v265 == 0xaf72634f)) {
                                        if (v265 != 0xfd8c38e1) {
                                            if (0 == (v265 == 0x6c5f9cf9)) {
                                                require(!msg.data[v264 + 128] | (96 == msg.data[v264 + 128] * 96 / msg.data[v264 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v264 + 160] | (96 == msg.data[v264 + 160] * 96 / msg.data[v264 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v264 + 64] > 10000) | bool(msg.data[v264 + 224] >> 128) | bool(msg.data[v264 + 128] * 96 >> 128) | bool(msg.data[v264 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v386.data, v386.length);
                                                MEM[179 + MEM[64]] = msg.data[v264 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v264 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v264 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v264 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v264 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v264]);
                                                MEM[68 + MEM[64]] = 111 + v386.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v264 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v386.length + 211;
                                                require((_fun_setPayer ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                v387 = _fun_uniV3ForkSwap;
                                                require(!v387, ReentrantCallback(v387));
                                                _fun_uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
                                                v388 = 0x14aa86c5d3c41765bb24e11bd701.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d42V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v389 = v390 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v389 = new bytes[](RETURNDATASIZE());
                                                    require(!((v389 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v389 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v389)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v389.data, 0, RETURNDATASIZE());
                                                }
                                                require(v388, v389 + 32, MEM[v389]);
                                                v391 = _fun_uniV3ForkSwap;
                                                require(!v391, CallbackNotSpent(v391));
                                                v266 = v392 = 1;
                                            } else {
                                                require(!msg.data[v264 + 128] | (96 == msg.data[v264 + 128] * 96 / msg.data[v264 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v264 + 160] | (96 == msg.data[v264 + 160] * 96 / msg.data[v264 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v264 + 64] > 10000) | bool(msg.data[v264 + 224] >> 128) | bool(msg.data[v264 + 128] * 96 >> 128) | bool(msg.data[v264 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v386.data, v386.length);
                                                MEM[179 + MEM[64]] = msg.data[v264 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v264 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v264 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v264 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v264 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v264]);
                                                MEM[68 + MEM[64]] = 111 + v386.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v264 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v386.length + 211;
                                                require((_fun_setPayer ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                v393 = _fun_uniV3ForkSwap;
                                                require(!v393, ReentrantCallback(v393));
                                                _fun_uniV3ForkSwap = 0xb45a3c0e0000000000000001e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v394 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d42V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v395 = v396 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v395 = new bytes[](RETURNDATASIZE());
                                                    require(!((v395 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v395 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v395)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v395.data, 0, RETURNDATASIZE());
                                                }
                                                require(v394, v395 + 32, MEM[v395]);
                                                v397 = _fun_uniV3ForkSwap;
                                                require(!v397, CallbackNotSpent(v397));
                                                v266 = v398 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v264 + 128] | (96 == msg.data[v264 + 128] * 96 / msg.data[v264 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v264 + 160] | (96 == msg.data[v264 + 160] * 96 / msg.data[v264 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v264 + 64] > 10000) | bool(msg.data[v264 + 224] >> 128) | bool(msg.data[v264 + 128] * 96 >> 128) | bool(msg.data[v264 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + MEM[64], v386.data, v386.length);
                                            MEM[179 + MEM[64]] = msg.data[v264 + 64];
                                            MEM[177 + MEM[64]] = msg.data[v264 + 32];
                                            MEM[157 + MEM[64]] = this;
                                            MEM[136 + MEM[64]] = msg.data[v264 + 160] * 96;
                                            MEM[120 + MEM[64]] = msg.data[v264 + 128] * 96;
                                            MEM[104 + MEM[64]] = msg.data[v264 + 224];
                                            MEM[88 + MEM[64]] = address(msg.data[v264]);
                                            MEM[68 + MEM[64]] = 111 + v386.length;
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[4 + MEM[64]] = 0x48c89491;
                                            MEM8[168 + MEM[64]] = msg.data[v264 + 96] & 0xFF;
                                            MEM[64] = MEM[64] + v386.length + 211;
                                            require((_fun_setPayer ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                            v399 = _fun_uniV3ForkSwap;
                                            require(!v399, ReentrantCallback(v399));
                                            _fun_uniV3ForkSwap = uint32(msg.data[v264] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                            v400 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d42V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v401 = v402 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v401 = new bytes[](RETURNDATASIZE());
                                                require(!((v401 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v401 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v401)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v401.data, 0, RETURNDATASIZE());
                                            }
                                            require(v400, v401 + 32, MEM[v401]);
                                            v403 = _fun_uniV3ForkSwap;
                                            require(!v403, CallbackNotSpent(v403));
                                            v266 = v404 = 1;
                                        }
                                    } else {
                                        require(!msg.data[v264 + 128] | (96 == msg.data[v264 + 128] * 96 / msg.data[v264 + 128]), Panic(17)); // arithmetic overflow or underflow
                                        require(!msg.data[v264 + 160] | (96 == msg.data[v264 + 160] * 96 / msg.data[v264 + 160]), Panic(17)); // arithmetic overflow or underflow
                                        require(!((msg.data[v264 + 64] > 10000) | bool(msg.data[v264 + 224] >> 128) | bool(msg.data[v264 + 128] * 96 >> 128) | bool(msg.data[v264 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + MEM[64], v386.data, v386.length);
                                        MEM[179 + MEM[64]] = msg.data[v264 + 64];
                                        MEM[177 + MEM[64]] = msg.data[v264 + 32];
                                        MEM[157 + MEM[64]] = this;
                                        MEM[136 + MEM[64]] = msg.data[v264 + 160] * 96;
                                        MEM[120 + MEM[64]] = msg.data[v264 + 128] * 96;
                                        MEM[104 + MEM[64]] = msg.data[v264 + 224];
                                        MEM[88 + MEM[64]] = address(msg.data[v264]);
                                        MEM[68 + MEM[64]] = 111 + v386.length;
                                        MEM[36 + MEM[64]] = 32;
                                        MEM[4 + MEM[64]] = 0x48c89491;
                                        MEM8[168 + MEM[64]] = msg.data[v264 + 96] & 0xFF;
                                        MEM[64] = MEM[64] + v386.length + 211;
                                        require((_fun_setPayer ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                        v405 = _fun_uniV3ForkSwap;
                                        require(!v405, ReentrantCallback(v405));
                                        _fun_uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                                        v406 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v64b0x65eV0x68eV0x2d42V0x220fV0x1d6c.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v407 = v408 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v407 = new bytes[](RETURNDATASIZE());
                                            require(!((v407 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v407 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v407)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v407.data, 0, RETURNDATASIZE());
                                        }
                                        require(v406, v407 + 32, MEM[v407]);
                                        v409 = _fun_uniV3ForkSwap;
                                        require(!v409, CallbackNotSpent(v409));
                                        v266 = v410 = 1;
                                    }
                                }
                            } else {
                                require(v264 + v263 - v264 >= 128);
                                require(!(msg.data[v264] - address(msg.data[v264])));
                                require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v264 + 32])) {
                                    v411 = v412 = fun_fastBalanceOf(msg.data[v264 + 32], this);
                                } else {
                                    v411 = v413 = this.balance;
                                }
                                if (v411 > msg.data[v264 + 64]) {
                                    v414 = (v411 * msg.data[v264 + 96] / 10000 ^ v411 - msg.data[v264 + 64]) * (v411 - msg.data[v264 + 64] > v411 * msg.data[v264 + 96] / 10000) ^ v411 - msg.data[v264 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v264 + 32]))) {
                                        fun_safeTransfer(msg.data[v264 + 32], address(msg.data[v264]), v414);
                                    } else {
                                        fun_safeTransferETH(msg.data[v264], v414);
                                    }
                                }
                                v266 = v415 = 1;
                            }
                        } else {
                            require(v264 + v263 - v264 >= 160);
                            require(!(msg.data[v264] - address(msg.data[v264])));
                            require(!(msg.data[v264 + 64] - address(msg.data[v264 + 64])));
                            require(msg.data[v264 + 128] <= uint64.max);
                            require(v264 + msg.data[v264 + 128] + 31 < v264 + v263);
                            require(msg.data[v264 + msg.data[v264 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v416 = new bytes[](msg.data[v264 + msg.data[v264 + 128]]);
                            require(!((v416 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v416 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v416)), Panic(65)); // failed memory allocation (too much memory)
                            require(v264 + msg.data[v264 + 128] + 32 + msg.data[v264 + msg.data[v264 + 128]] <= v264 + v263);
                            CALLDATACOPY(v416.data, v264 + msg.data[v264 + 128] + 32, msg.data[v264 + msg.data[v264 + 128]]);
                            v416[msg.data[v264 + msg.data[v264 + 128]]] = 0;
                            require(!((address(msg.data[v264 + 64]) == 0xbbbbbbb520d69a9775e85b458c58c648259fad5f) | ((address(msg.data[v264 + 64]) == 0x1ff3684f28c67538d4d072c22734) | (address(msg.data[v264 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3))), ConfusedDeputy());
                            v417 = v418 = 0;
                            if (address(msg.data[v264]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v264])) {
                                    v419 = fun_fastBalanceOf(msg.data[v264], this);
                                    MEM[0] = v419 * msg.data[v264 + 32] % uint256.max - v419 * msg.data[v264 + 32] - (v419 * msg.data[v264 + 32] % uint256.max < v419 * msg.data[v264 + 32]);
                                    MEM[32] = v419 * msg.data[v264 + 32];
                                    if (!MEM[0]) {
                                        v420 = MEM[32] / 10000;
                                    } else {
                                        v420 = v421 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v264 + 96] <= msg.data[v264 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v416.length >= msg.data[v264 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v422 = 0;
                                    v416[msg.data[v264 + 96]] = v420;
                                    if (address(msg.data[v264]) - address(msg.data[v264 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v264], address(msg.data[v264 + 64]), v420);
                                    }
                                } else {
                                    require(!msg.data[v264 + 96], InvalidOffset());
                                    v422 = v423 = 0;
                                }
                            } else {
                                v424 = this.balance;
                                v417 = v424 * msg.data[v264 + 32] / 10000;
                                if (0 == !v416.length) {
                                    require(msg.data[v264 + 96] <= msg.data[v264 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v416.length >= msg.data[v264 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v422 = v425 = 0;
                                    v416[msg.data[v264 + 96]] = v417;
                                } else {
                                    require(!msg.data[v264 + 96], InvalidOffset());
                                    v426 = address(msg.data[v264 + 64]).call().value(v417).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v427 = v428 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v427 = new bytes[](RETURNDATASIZE());
                                        require(!((v427 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v427 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v427)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v427.data, 0, RETURNDATASIZE());
                                    }
                                    require(v426, v427 + 32, MEM[v427]);
                                }
                            }
                            v266 = v429 = 1;
                            v430 = address(msg.data[v264 + 64]).call(MEM[v64b0x65eV0x68eV0x2bcbV0x220fV0x1d6c.data:v64b0x65eV0x68eV0x2bcbV0x220fV0x1d6c.data + v64b0x65eV0x68eV0x2bcbV0x220fV0x1d6c.length], MEM[v4397V0x2bd9V0x220fV0x1d6c:v4397V0x2bd9V0x220fV0x1d6c + v4397V0x2bd9V0x220fV0x1d6c]).value(v417).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v431 = v432 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v431 = new bytes[](RETURNDATASIZE());
                                require(!((v431 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v431 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v431)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v431.data, 0, RETURNDATASIZE());
                            }
                            require(v430, v431 + 32, MEM[v431]);
                            v433 = v434 = !MEM[v431];
                            if (v434) {
                                v433 = v435 = !(address(msg.data[v264 + 64])).code.size;
                            }
                            require(!v433, InvalidTarget());
                        }
                    } else {
                        require(v264 + v263 - v264 >= 192);
                        require(!(msg.data[v264] - address(msg.data[v264])));
                        require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                        require(!(msg.data[v264 + 96] - address(msg.data[v264 + 96])));
                        require(!(msg.data[v264 + 128] - uint24(msg.data[v264 + 128])));
                        v436 = v437 = 0;
                        if (msg.data[v264 + 64]) {
                            v438 = fun_fastBalanceOf(address(msg.data[v264 + 32]), this);
                            v436 = v439 = v438 * msg.data[v264 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v264 + 32]), address(msg.data[v264 + 96]), v439);
                        }
                        v440 = address(msg.data[v264 + 96]).getReserves().gas(msg.gas);
                        if (!v440) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v441 = !v436;
                            if (bool(v436)) {
                                v441 = v442 = msg.data[v264 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v441) {
                                v443 = fun_fastBalanceOf(address(msg.data[v264 + 32]), address(msg.data[v264 + 96]));
                                v436 = v444 = _SafeSub(v443, MEM[0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 + MEM[0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            if ((10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 * MEM[(msg.data[v264 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 + MEM[0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5] * 10000) < msg.data[v264 + 160]) {
                                v445 = address(msg.data[v264 + 96]).token0().gas(msg.gas);
                                require(v445, MEM[64], RETURNDATASIZE());
                                require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v264 + 160], (10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 * MEM[(msg.data[v264 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 + MEM[0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5] * 10000)));
                            } else {
                                MEM[MEM[64] + ((msg.data[v264 + 128] & 0x1 == 1) << 5) + 32] = (10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 * MEM[(msg.data[v264 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v264 + 128] >> 8)) * v436 + MEM[0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5] * 10000);
                                MEM[MEM[64] + (0x20 ^ (msg.data[v264 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v446 = address(msg.data[v264 + 96]).swap(v104, v104, address(msg.data[v264]), 128, 0).gas(msg.gas);
                                if (!v446) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v266 = v447 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v264 + v263 - v264 >= 128);
                    require(!(msg.data[v264] - address(msg.data[v264])));
                    require(msg.data[v264 + 64] <= uint64.max);
                    require(v264 + msg.data[v264 + 64] + 31 < v264 + v263);
                    require(msg.data[v264 + msg.data[v264 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v448 = new bytes[](msg.data[v264 + msg.data[v264 + 64]]);
                    require(!((v448 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v448 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v448)), Panic(65)); // failed memory allocation (too much memory)
                    require(v264 + msg.data[v264 + 64] + 32 + msg.data[v264 + msg.data[v264 + 64]] <= v264 + v263);
                    CALLDATACOPY(v448.data, v264 + msg.data[v264 + 64] + 32, msg.data[v264 + msg.data[v264 + 64]]);
                    v448[msg.data[v264 + msg.data[v264 + 64]]] = 0;
                    v449 = v450 = bytes20(MEM[v448.data]);
                    if (v448.length < 20) {
                        v449 = v451 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v448.length << 3) & MEM[v448.data]);
                    }
                    v452 = (v449 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v452) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE());
                        require(!MEM[0] | (MEM[0] * msg.data[v264 + 32] / MEM[0] == msg.data[v264 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v453 = new bytes[](40);
                        require(!((v453 + 96 > uint64.max) | (v453 + 96 < v453)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v453.data, msg.data.length, 64);
                        v454 = fun_uniV3ForkSwap(address(msg.data[v264]), v448, MEM[0] * msg.data[v264 + 32] / 10000, msg.data[v264 + 96], this, v453);
                        v266 = v455 = 1;
                    }
                }
            } else {
                require(v264 + v263 - v264 >= 288);
                require(!(msg.data[v264] - address(msg.data[v264])));
                require(v264 + v263 - (v264 + 32) >= 128);
                v456 = new struct(3);
                require(!((v456 + 96 > uint64.max) | (v456 + 96 < v456)), Panic(65)); // failed memory allocation (too much memory)
                require(v264 + v263 - (v264 + 32) >= 64);
                v457 = new struct(2);
                require(!((v457 + 64 > uint64.max) | (v457 + 64 < v457)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v264 + 32] - address(msg.data[v264 + 32])));
                v457.word0 = msg.data[v264 + 32];
                v457.word1 = msg.data[v264 + 32 + 32];
                v456.word0 = v457;
                v456.word1 = msg.data[v264 + 32 + 64];
                v456.word2 = msg.data[v264 + 32 + 96];
                require(!(msg.data[v264 + 160] - address(msg.data[v264 + 160])));
                require(msg.data[v264 + 192] <= uint64.max);
                require(v264 + msg.data[v264 + 192] + 31 < v264 + v263);
                require(msg.data[v264 + msg.data[v264 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v458 = new bytes[](msg.data[v264 + msg.data[v264 + 192]]);
                require(!((v458 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v458 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v264 + msg.data[v264 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v458)), Panic(65)); // failed memory allocation (too much memory)
                require(v264 + msg.data[v264 + 192] + 32 + msg.data[v264 + msg.data[v264 + 192]] <= v264 + v263);
                CALLDATACOPY(v458.data, v264 + msg.data[v264 + 192] + 32, msg.data[v264 + msg.data[v264 + 192]]);
                v458[msg.data[v264 + msg.data[v264 + 192]]] = 0;
                require(!(msg.data[v264 + 224] - address(msg.data[v264 + 224])));
                require(MEM[v456.word0 + 32] <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8ef, Panic(1)); // low-level assert failed
                v459, v460 = fun_permitToTransferDetails(v456, address(msg.data[v264]));
                v461 = new struct(4);
                require(!((v461 + 128 > uint64.max) | (v461 + 128 < v461)), Panic(65)); // failed memory allocation (too much memory)
                v461.word0 = address(MEM[v456.word0]);
                v461.word1 = v459;
                v461.word2 = address(msg.data[v264 + 160]);
                v461.word3 = 1;
                MEM[v461 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v461 - 32] = MEM[v461 - 32];
                v462 = new struct(4);
                require(!((v462 + 128 > uint64.max) | (v462 + 128 < v462)), Panic(65)); // failed memory allocation (too much memory)
                v462.word0 = address(msg.data[v264 + 224]);
                v462.word1 = msg.data[v264 + (uint8.max + 1)];
                v462.word2 = address(_fun_setPayer);
                v462.word3 = 1;
                MEM[v462 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v462 - 32] = MEM[v462 - 32];
                v463 = fun_fastBalanceOf(msg.data[v264 + 224], this);
                v460.word1 = v459 * ((msg.data[v264 + (uint8.max + 1)] ^ v463) * (v463 > msg.data[v264 + (uint8.max + 1)]) ^ v463) / msg.data[v264 + (uint8.max + 1)];
                v464 = msg.data[v264 + 224].transfer(address(msg.data[v264 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v264 + (uint8.max + 1)] ^ v463) * (v463 > msg.data[v264 + (uint8.max + 1)]) ^ v463).gas(msg.gas);
                if (!v464) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v465 = new bytes[](162);
                    MEM[v465.data] = 'Consideration consideration)';
                    MCOPY(v465 + 60, v466.data, v466.length);
                    MEM[v465 + v466.length + 60] = 0;
                    MCOPY(v465 + v466.length + 60, v467.data, v467.length);
                    MEM[v465 + v466.length + v467.length + 60] = 0;
                    require(!((v465 + 224 > uint64.max) | (v465 + 224 < v465)), Panic(65)); // failed memory allocation (too much memory)
                    MCOPY(32 + MEM[64], v456.word0, 64);
                    MCOPY(96 + MEM[64], 32 + v456, 64);
                    MCOPY(160 + MEM[64], v460, 64);
                    MCOPY(352 + MEM[64], v465, 194);
                    MCOPY(384 + (MEM[64] + v465.length), v458, 32 + v458.length);
                    v468 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v104, v104, v104, v104, v104, v104, address(msg.data[v264 + 160]), keccak256(MEM[v264fV0x220fV0x1d6c - 32:v264fV0x220fV0x1d6c - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v468) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v264fV0x220fV0x1d6c - 32:v264fV0x220fV0x1d6c - 32 + 160]), keccak256(MEM[v25dcV0x220fV0x1d6c - 32:v25dcV0x220fV0x1d6c - 32 + 160]))(uint128(v459 * ((msg.data[v264 + (uint8.max + 1)] ^ v463) * (v463 > msg.data[v264 + (uint8.max + 1)]) ^ v463) / msg.data[v264 + (uint8.max + 1)]), uint128(v459 * ((msg.data[v264 + (uint8.max + 1)] ^ v463) * (v463 > msg.data[v264 + (uint8.max + 1)]) ^ v463) / msg.data[v264 + (uint8.max + 1)]));
                        v266 = v469 = 1;
                    }
                }
            }
            if (0 == v266) {
                if (v265 - 0xbd01c226) {
                    if (0x131ad428 - v265) {
                        v470 = v471 = 0;
                    } else {
                        require(v264 + v263 - v264 >= 32);
                        require(!(msg.data[v264] - bool(msg.data[v264])));
                        fun__checkSlippageAndTransfer(varg0, msg.data[v264]);
                        v470 = v472 = 1;
                    }
                } else {
                    require(v264 + v263 - v264 >= 64);
                    require(block.timestamp <= msg.data[v264], SignatureExpired(msg.data[v264]));
                    require(msg.value <= msg.data[v264 + 32], MsgValueMismatch(msg.data[v264 + 32], msg.value));
                    v470 = v473 = 1;
                }
            } else {
                v470 = v474 = 1;
            }
            if (!v470) {
                v475 = new uint256[](v263);
                CALLDATACOPY(v475.data, v264, v263);
                revert(ActionInvalid(v261, bytes4(msg.data[32 + (varg1 + msg.data[v259])]), v475));
            } else {
                v259 = v259 + 32;
                v261 = v261 + 1;
            }
        }
    }
    fun_checkSlippageAndTransfer(varg0);
    return 1;
}

function fun_checkSlippageAndTransfer(struct(3) varg0) private { 
    if (!varg0.word2 & !address(varg0.word1)) {
        return ;
    } else {
        if (address(varg0.word1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = v1 = fun_fastBalanceOf(address(varg0.word1), this);
        } else {
            v0 = v2 = this.balance;
        }
        require(v0 >= varg0.word2, TooMuchSlippage(address(varg0.word1), 0x97a6f3b9000000000000000000000000, varg0.word2, v0));
        if (0 == (address(varg0.word1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            fun_safeTransfer(address(varg0.word1), address(varg0.word0), v0);
            MEM[v2221arg0x0:v2221arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        } else {
            fun_safeTransferETH(address(varg0.word0), v0);
            MEM[v2221arg0x0:v2221arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        }
    }
}

function fun__checkSlippageAndTransfer(struct(3) varg0, uint256 varg1) private { 
    if (!varg0.word2 & !address(varg0.word1)) {
        return ;
    } else {
        if (address(varg0.word1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v0 = v1 = fun_fastBalanceOf(address(varg0.word1), this);
        } else {
            v0 = v2 = this.balance;
        }
        require(v0 >= varg0.word2, TooMuchSlippage(address(varg0.word1), 0x97a6f3b9000000000000000000000000, varg0.word2, v0));
        if (0 == (address(varg0.word1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            fun_safeTransfer(address(varg0.word1), address(varg0.word0), (varg0.word2 ^ v0) * varg1 ^ v0);
            MEM[v22b9arg0x0:v22b9arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        } else {
            fun_safeTransferETH(address(varg0.word0), (varg0.word2 ^ v0) * varg1 ^ v0);
            MEM[v22b9arg0x0:v22b9arg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
            return ;
        }
    }
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
    v1 = fun_permitToSellAmount(varg0);
    v0.word1 = v1;
    return v1, v0;
}

function fun_fastNonce(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.nonces(0x7ecebe00000000000000000000000000, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    return MEM[0];
}

function fun_checkEffects(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0.allowance(varg1 << 96, varg1, 0x1ff3684f28c67538d4d072c22734, varg1 << 96, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    require(!(!varg3 | (MEM[0] != varg2)), PermitFailed());
    return ;
}

function fun_fastDomainSeparator(uint256 varg0) private { 
    v0 = varg0.DOMAIN_SEPARATOR().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    return MEM[0];
}

function fun_checkSignature(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = ecrecover(varg0, 27 + (varg2 >> uint8.max), varg3, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg2);
    require(RETURNDATASIZE() >= (MEM[v0] ^ varg1) << 96, InvalidSignature());
    MEM[96] = 0;
    return ;
}

function fun_permitToSellAmount(struct(3) varg0) private { 
    if (~MEM[varg0.word0.length + 32] < 10000) {
        v0 = fun_fastBalanceOf(address(MEM[varg0.word0.length]), _fun_setPayer);
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

function fun__uniV3ForkSwap(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, bytes varg4) private { 
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
                    require(0 != (uint8(MEM[21 + varg1]) == 3), UnknownForkId(uint8(MEM[21 + varg1])));
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
                    require((_fun_setPayer ^ address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v8 = _fun_uniV3ForkSwap;
                    require(!v8, ReentrantCallback(v8));
                    _fun_uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v9 = address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v5f998 + 32:v5f998 + 32 + 196 + v452carg0x4.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v10 = v11 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = new bytes[](RETURNDATASIZE());
                        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
                    }
                    require(v9, v12 + 32, MEM[v12]);
                    v13 = _fun_uniV3ForkSwap;
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
                    require((_fun_setPayer ^ address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v15 = _fun_uniV3ForkSwap;
                    require(!v15, ReentrantCallback(v15));
                    _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v16 = address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v5f90b + 32:v5f90b + 32 + 196 + v452carg0x4.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v10 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
                    }
                    require(v16, v19 + 32, MEM[v19]);
                    v20 = _fun_uniV3ForkSwap;
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
                require((_fun_setPayer ^ address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v22 = _fun_uniV3ForkSwap;
                require(!v22, ReentrantCallback(v22));
                _fun_uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v23 = address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v5f87e + 32:v5f87e + 32 + 196 + v452carg0x4.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v10 = v24 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v10 = v25 = new bytes[](RETURNDATASIZE());
                    require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
                }
                require(v23, v26 + 32, MEM[v26]);
                v27 = _fun_uniV3ForkSwap;
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
            require((_fun_setPayer ^ address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v29 = _fun_uniV3ForkSwap;
            require(!v29, ReentrantCallback(v29));
            _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v30 = address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v452carg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v5f7f1 + 32:v5f7f1 + 32 + 196 + v452carg0x4.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v10 = v31 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = v32 = new bytes[](RETURNDATASIZE());
                require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
            }
            require(v30, v33 + 32, MEM[v33]);
            v34 = _fun_uniV3ForkSwap;
            require(!v34, CallbackNotSpent(v34));
        }
        require(v10 + MEM[v10] - v10 >= 64);
        varg2 = v35 = 0 - ((MEM[v10 + 64] ^ MEM[v10 + 32]) * v3 ^ MEM[v10 + 32]);
        require(v35 >= 0, Panic(17)); // arithmetic overflow or underflow
        if (MEM[varg1] <= 64) {
            require(v35 >= varg3, TooMuchSlippage(MEM[64 + varg1], 0x97a6f3b9000000000000000000000000, varg3, v35));
            return v35;
        } else {
            v0 = v36 = this;
            require(MEM[varg1] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            varg1 = varg1 + 44;
            MEM[varg1] = MEM[varg1] - 44;
        }
    }
}

function fun_uniV3ForkSwap(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, uint256 varg4, bytes varg5) private { 
    require(varg2 <= int256.max, Panic(17)); // arithmetic overflow or underflow
    while (1) {
        v0 = MEM[varg1] > 64;
        require(MEM[varg1] >= 64, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v1 = address(MEM[20 + varg1]) < address(MEM[64 + varg1]);
        v2 = (MEM[64 + varg1] ^ MEM[20 + varg1]) * v1;
        if (0 == !uint8(MEM[21 + varg1])) {
            if (uint8(MEM[21 + varg1]) - 1) {
                if (uint8(MEM[21 + varg1]) - 2) {
                    require(0 != (uint8(MEM[21 + varg1]) == 3), UnknownForkId(uint8(MEM[21 + varg1])));
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
                    require((_fun_setPayer ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v6 = _fun_uniV3ForkSwap;
                    require(!v6, ReentrantCallback(v6));
                    _fun_uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v7 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v5fbcc + 32:v5fbcc + 32 + 196 + v4822arg0x5.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v8 = v9 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v8 = new bytes[](RETURNDATASIZE());
                        require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
                    }
                    require(v7, v10 + 32, MEM[v10]);
                    v11 = _fun_uniV3ForkSwap;
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
                    require((_fun_setPayer ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v13 = _fun_uniV3ForkSwap;
                    require(!v13, ReentrantCallback(v13));
                    _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v14 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v5fb3f + 32:v5fb3f + 32 + 196 + v4822arg0x5.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v8 = v15 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v8 = v16 = new bytes[](RETURNDATASIZE());
                        require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());
                    }
                    require(v14, v17 + 32, MEM[v17]);
                    v18 = _fun_uniV3ForkSwap;
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
                require((_fun_setPayer ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v20 = _fun_uniV3ForkSwap;
                require(!v20, ReentrantCallback(v20));
                _fun_uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v21 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v5fab2 + 32:v5fab2 + 32 + 196 + v4822arg0x5.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v8 = v22 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v8 = v23 = new bytes[](RETURNDATASIZE());
                    require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
                }
                require(v21, v24 + 32, MEM[v24]);
                v25 = _fun_uniV3ForkSwap;
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
            require((_fun_setPayer ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v27 = _fun_uniV3ForkSwap;
            require(!v27, ReentrantCallback(v27));
            _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v28 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v4822arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v5fa25 + 32:v5fa25 + 32 + 196 + v4822arg0x5.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v8 = v29 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = v30 = new bytes[](RETURNDATASIZE());
                require(!((v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v30.data, 0, RETURNDATASIZE());
            }
            require(v28, v31 + 32, MEM[v31]);
            v32 = _fun_uniV3ForkSwap;
            require(!v32, CallbackNotSpent(v32));
        }
        require(v8 + MEM[v8] - v8 >= 64);
        varg2 = v33 = 0 - ((MEM[v8 + 64] ^ MEM[v8 + 32]) * v1 ^ MEM[v8 + 32]);
        require(v33 >= 0, Panic(17)); // arithmetic overflow or underflow
        if (MEM[varg1] <= 64) {
            require(v33 >= varg3, TooMuchSlippage(MEM[64 + varg1], 0x97a6f3b9000000000000000000000000, varg3, v33));
            return v33;
        } else {
            varg4 = v34 = this;
            require(MEM[varg1] >= 44, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            varg1 = varg1 + 44;
            MEM[varg1] = MEM[varg1] - 44;
        }
    }
}

function fun_transferFrom(struct(3) varg0, struct(2) varg1, bytes varg2, uint256 varg3) private { 
    if (0 == varg3) {
        MCOPY(32 + MEM[64], varg0.word0, 64);
        MCOPY(96 + MEM[64], 32 + varg0, 64);
        MCOPY(160 + MEM[64], varg1, 64);
        MCOPY(288 + MEM[64], varg2, 32 + varg2.length);
        v0, /* uint256 */ v1 = 0x22d473030f116ddee9f6b43ac78ba3.permitTransferFrom(v2, v2, v2, v2, v2, v2, address(_fun_setPayer), uint8.max + 1).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
        return ;
    } else {
        require(!varg2.length, InvalidSignatureLen());
        require(!varg0.word1, Panic(17)); // arithmetic overflow or underflow
        require(block.timestamp <= varg0.word2, SignatureExpired(varg0.word2));
        v3, /* uint256 */ v4 = 0x1ff3684f28c67538d4d072c22734.transferFrom(bytes20(MEM[varg0.word0] << 96), _fun_setPayer, _fun_setPayer << 96, _fun_setPayer, address(varg1.word0), _fun_setPayer << 96, varg1.word1).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        return ;
    }
}

function allocate_and_zero_memory_struct_struct_PoolKey_15760() private { 
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
    v0 = varg0.allowance(this, this << 96, this, this << 96, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(32 <= RETURNDATASIZE());
    if (MEM[0] < varg2) {
        if (MEM[0]) {
            fun_safeApprove_42646(varg0, varg1);
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

function fun_unsafeDiv_42667() private { 
    if (!MEM[0]) {
        return MEM[32] / 10000;
    } else {
        return 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
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

function fun_callSelector(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, 0xcbf0dbf5000000000000000000000000, varg0);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, varg1, varg2, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function fun__callSelector(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3, varg1);
    v0, /* uint256 */ v1 = msg.sender.call(varg0 << 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg2, varg3).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_safeApprove_42646(uint256 varg0, uint256 varg1) private { 
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

function fun_fInverse(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
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

function fun_saturatingF(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
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

function fun_ekuboPayV2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (0 == (address(varg0) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0 = v1 = 68;
        if (this - varg1) {
            CALLDATACOPY(100 + MEM[64], 64 + varg3, 64);
            CALLDATACOPY(228 + MEM[64], varg5, varg6);
            v0 = v2 = varg6 + 196;
        }
        require((_fun_setPayer ^ msg.sender) << 96, ConfusedDeputy());
        require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
        _fun_uniV3ForkSwap = msg.sender | 0x599d071400000000000000020000000000000000000000000000000000000000;
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
        require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
        return MEM[96 + v6];
    } else {
        fun_safeTransferETH(msg.sender, varg2);
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
    fun_setPayer(v1);
    v4 = fun_execute(v0, varg3.data, varg3.length);
    require(!((_fun_setPayer ^ v1) << 96), PayerSpent());
    _fun_setPayer = 0;
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
    fun_setPayer(v2);
    require(!(msg.sender - 0x1ff3684f28c67538d4d072c22734), ConfusedDeputy());
    require(!(!varg3.word0 | (164 > msg.data[4 + varg3 + 32 + varg3.word1])));
    require(3 > MEM[v1.data] >> 248, Panic(33)); // failed convertion to enum type
    if (MEM[v1.data] >> 248) {
        require(3 > MEM[v1.data] >> 248, Panic(33)); // failed convertion to enum type
        require(!((MEM[v1.data] >> 248) - 1), wipeBlockchain_EkJWPe((MEM[v1.data] >> 248 ^ 0x21) * (MEM[v1.data] >> 248 > 2) ^ MEM[v1.data] >> 248));
        require(v1 + (uint256.max + v1.length) - v1 >= 160);
        require(!(MEM[v1 + 97] - bool(MEM[v1 + 97])));
        v5 = address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]).permit(_fun_setPayer, _fun_setPayer << 96, _fun_setPayer, 0x1ff3684f28c67538d4d072c22734, _fun_setPayer << 96, MEM[v1 + 33], MEM[v1 + 65], MEM[v1 + 97], 27 + (MEM[v1 + 161] >> uint8.max), MEM[v1 + 129], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v1 + 161]).gas(msg.gas);
        if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31) & v5)) {
            require(!((block.timestamp > MEM[v1 + 65]) & bool(MEM[v1 + 65])), PermitExpired());
            v6 = fun_fastNonce(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _fun_setPayer);
            fun_checkEffects(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _fun_setPayer, 0 - MEM[v1 + 97], v6);
            v7 = fun_fastDomainSeparator(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]));
            fun_checkSignature(keccak256(6401, v7, keccak256(0xea2aa0a1be11a07ed86d755c93467f4f82362b452371d1ba94d1715123511acb, _fun_setPayer, 0x1ff3684f28c67538d4d072c22734, uint256.max + v6, MEM[v1 + 65], MEM[v1 + 97])), _fun_setPayer, MEM[v1 + 161], MEM[v1 + 129]);
        } else {
            v8 = fun_execute(v0, 4 + varg3 + 32, varg3.word0);
            require(!((_fun_setPayer ^ v2) << 96), PayerSpent());
            _fun_setPayer = 0;
            return bool(v8);
        }
    } else {
        require(v1 + (uint256.max + v1.length) - v1 >= 128);
        v9 = address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]).permit(_fun_setPayer, _fun_setPayer << 96, _fun_setPayer, 0x1ff3684f28c67538d4d072c22734, _fun_setPayer << 96, MEM[v1 + 33], MEM[v1 + 65], 27 + (MEM[v1 + 129] >> uint8.max), MEM[v1 + 97], 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v1 + 129]).gas(msg.gas);
        if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31) & v9)) {
            require(block.timestamp <= MEM[v1 + 65], PermitExpired());
            v10 = fun_fastNonce(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _fun_setPayer);
            fun_checkEffects(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]), _fun_setPayer, MEM[v1 + 33], v10);
            v11 = fun_fastDomainSeparator(address(msg.data[68 + (4 + varg3 + 32 + varg3.word1)]));
            fun_checkSignature(keccak256(6401, v11, keccak256(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, _fun_setPayer, 0x1ff3684f28c67538d4d072c22734, MEM[v1 + 33], uint256.max + v10, MEM[v1 + 65])), _fun_setPayer, MEM[v1 + 129], MEM[v1 + 97]);
        }
    }
    v12 = fun_execute(v0, 4 + varg3 + 32, varg3.word0);
    require(!((_fun_setPayer ^ v2) << 96), PayerSpent());
    _fun_setPayer = 0;
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
        v0 = _fun_uniV3ForkSwap;
        v1 = uint16(v0 >> 160) * !((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96);
        if (!((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96)) {
            _fun_uniV3ForkSwap = 0;
        }
        v2, v3 = fun_msgData();
        if (v1) {
            if (3 == v1) {
                v4 = v5 = msg.data[20 + (v3 + 100)] >> 128;
                v6 = v7 = 0;
                v8 = new struct(39);
                v8.word6 = 0;
                MEM[v18890x4faeV0x181bV0x1a + 480:v18890x4faeV0x181bV0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                        v27 = fun_fastBalanceOf(MEM[32 + v8.word2], this);
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
                        v32 = fun_fastBalanceOf(address(msg.data[v11]), _fun_setPayer);
                        MEM[0] = v32 * (10000 - ~v31) % uint256.max - v32 * (10000 - ~v31) - (v32 * (10000 - ~v31) % uint256.max < v32 * (10000 - ~v31));
                        MEM[32] = v32 * (10000 - ~v31);
                        v30 = fun_unsafeDiv_42667();
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
                            fun_transferFrom(v38, v37, v40, v6);
                        } else {
                            fun_safeTransfer(MEM[32 + v8.word2], msg.sender, v34);
                        }
                        v41 = msg.sender.completePayments(MEM[32 + v8.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                        require(v41, MEM[64], RETURNDATASIZE());
                        v33 = 0x12e103f1000000000000000000000000 >> 128;
                    } else {
                        fun_safeTransferETH(msg.sender, v34);
                    }
                    MEM[v8.word2] = v33;
                }
                require(!(MEM[v8.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                v8.word3 = MEM[v8.word2];
                fun_checkZeroSellAmount(v8);
                v42 = allocate_and_zero_memory_struct_struct_PoolKey_15760();
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
                        fun_callSelector(address(MEM[v8.word7 + 32]), this, MEM[v8.word7]);
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
                    fun_callSelector(v64, msg.data[v3 + 100] >> 96, v65);
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
                                fun_transferFrom(v71, v70, v73, v6);
                            } else {
                                fun_safeTransfer(MEM[32 + v8.word2], msg.sender, v67);
                            }
                            v74 = msg.sender.completePayments(MEM[32 + v8.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                            require(v74, MEM[64], RETURNDATASIZE());
                        } else {
                            fun_safeTransferETH(msg.sender, v67);
                        }
                    } else {
                        if (MEM[v8.word2]) {
                            if (address(msg.data[69 + (v3 + 100)] >> 96) != this) {
                                v75 = _fun_setPayer;
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
            } else if (6 == v1) {
                v81, v82 = fun_msgData();
                v4 = v83 = msg.data[20 + v82] >> 128;
                v84 = v85 = 0;
                v86 = new struct(39);
                v86.word6 = 0;
                MEM[v4faeV0x1368V0x1a + 480:v4faeV0x1368V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                        v105 = fun_fastBalanceOf(MEM[32 + v86.word2], this);
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
                        v110 = fun_fastBalanceOf(address(msg.data[v89]), _fun_setPayer);
                        MEM[0] = v110 * (10000 - ~v109) % uint256.max - v110 * (10000 - ~v109) - (v110 * (10000 - ~v109) % uint256.max < v110 * (10000 - ~v109));
                        MEM[32] = v110 * (10000 - ~v109);
                        v108 = fun_unsafeDiv_42667();
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
                        fun_transferFrom(v112, v111, v114, v84);
                    } else if (MEM[v86.word2]) {
                        fun_safeTransfer(MEM[32 + v86.word2], msg.sender, MEM[v86.word2]);
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
                fun_checkZeroSellAmount(v86);
                v116 = v117 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
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
                        fun__callSelector(0xae639329, address(MEM[v86.word7 + 32]), this, MEM[v86.word7]);
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
                    fun__callSelector(0xae639329, v132, msg.data[v82] >> 96, v133);
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
                            fun_transferFrom(v135, v134, v137, v84);
                        } else if (v86.word3 - MEM[v86.word2]) {
                            fun_safeTransfer(MEM[32 + v86.word2], msg.sender, v86.word3 - MEM[v86.word2]);
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
                            v139 = _fun_setPayer;
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
                if (5 == v1) {
                    v144 = v145 = msg.data[20 + (v3 + 68)] >> 128;
                    v146 = v147 = 0;
                    v148 = new struct(39);
                    v148.word6 = 0;
                    MEM[v9210x4faeV0xde7V0x1a + 480:v9210x4faeV0xde7V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                            v167 = fun_fastBalanceOf(MEM[32 + v148.word2], this);
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
                            v172 = fun_fastBalanceOf(address(msg.data[v151]), _fun_setPayer);
                            MEM[0] = v172 * (10000 - ~v171) % uint256.max - v172 * (10000 - ~v171) - (v172 * (10000 - ~v171) % uint256.max < v172 * (10000 - ~v171));
                            MEM[32] = v172 * (10000 - ~v171);
                            v170 = fun_unsafeDiv_42667();
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
                            fun_transferFrom(v176, v175, v178, v146);
                        } else {
                            fun_safeTransfer(MEM[32 + v148.word2], msg.sender, MEM[v148.word2]);
                        }
                        v179 = msg.sender.settle().gas(msg.gas);
                        require(v179, MEM[64], RETURNDATASIZE());
                        MEM[v148.word2] = MEM[0];
                    }
                    v148.word3 = MEM[v148.word2];
                    fun_checkZeroSellAmount(v148);
                    v180 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
                    v181 = allocate_and_zero_memory_struct_struct_PoolKey_15760();
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
                            fun__callSelector(0xb0d9c09, address(MEM[v148.word7 + 32]), this, MEM[v148.word7]);
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
                        fun__callSelector(0xb0d9c09, v194, msg.data[v3 + 68] >> 96, v195);
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
                                    fun_transferFrom(v199, v198, v201, v146);
                                } else {
                                    fun_safeTransfer(MEM[32 + v148.word2], msg.sender, v148.word3 - MEM[v148.word2]);
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
                                v206 = _fun_setPayer;
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
                } else if (1 == v1) {
                    v144 = v211 = msg.data[20 + (v3 + 100)] >> 128;
                    v212 = v213 = 0;
                    v214 = new struct(39);
                    v214.word6 = 0;
                    MEM[v9210x4faeV0x8b3V0x1a + 480:v9210x4faeV0x8b3V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                            v233 = fun_fastBalanceOf(MEM[32 + v214.word2], this);
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
                            v238 = fun_fastBalanceOf(address(msg.data[v217]), _fun_setPayer);
                            MEM[0] = v238 * (10000 - ~v237) % uint256.max - v238 * (10000 - ~v237) - (v238 * (10000 - ~v237) % uint256.max < v238 * (10000 - ~v237));
                            MEM[32] = v238 * (10000 - ~v237);
                            v236 = fun_unsafeDiv_42667();
                        }
                        MEM[v214.word2] = v236;
                    }
                    if (0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]) {
                        v239 = fun_ekuboPayV2(MEM[32 + v214.word2], msg.data[69 + (v3 + 100)] >> 96, MEM[v214.word2], v217, v212, v219, v221);
                        MEM[v214.word2] = v239;
                    }
                    require(!(MEM[v214.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                    v214.word3 = MEM[v214.word2];
                    fun_checkZeroSellAmount(v214);
                    v240 = allocate_and_zero_memory_struct_struct_PoolKey_15760();
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
                            fun__callSelector(0x3a65ab6, address(MEM[v214.word7 + 32]), this, MEM[v214.word7]);
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
                        fun__callSelector(0x3a65ab6, v261, msg.data[v3 + 100] >> 96, v262);
                        if (bool(!(0x1000000000000000000000000000000 & msg.data[52 + (v3 + 100)]))) {
                            require(v214.word3 != MEM[v214.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v214.word2]));
                            v263 = fun_ekuboPayV2(MEM[32 + v214.word2], msg.data[69 + (v3 + 100)] >> 96, v214.word3 - MEM[v214.word2], v217, v212, v219, v221);
                        } else if (bool(MEM[v214.word2])) {
                            if (this - address(msg.data[69 + (v3 + 100)] >> 96)) {
                                v264 = _fun_setPayer;
                            } else {
                                v264 = v265 = this;
                            }
                            require(MEM[v214.word2], MEM[32 + v214.word2]);
                            v266, /* uint256 */ v267 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v214.word2] << 96) * (MEM[32 + v214.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v214.word2] << 96) * (MEM[32 + v214.word2] << 96), v264, MEM[v214.word2]).gas(msg.gas);
                            require(v266, v214 + 1248, RETURNDATASIZE());
                            MEM[96] = 0;
                        }
                    }
                } else if (4 == v1) {
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
                        fun_transferFrom(v269, v268, v271, 0x1 & msg.data[msg.data[v3 + 68] + v3 + 141]);
                    } else {
                        fun_safeTransfer(msg.data[msg.data[v3 + 68] + v3 + 56] >> 96, msg.sender, (msg.data[4 + v3] ^ msg.data[v3 + 36]) * (msg.data[4 + v3] > 0) ^ msg.data[v3 + 36]);
                    }
                    v79 = v272 = MEM[64];
                    require(!((v272 + 32 > uint64.max) | (v272 + 32 < v272)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v272 + 32;
                    MEM[v272] = 0;
                    CALLDATACOPY(v272 + 32, msg.data.length, 0);
                } else {
                    require(2 == v1, Panic(81)); // call to a zero-initialized variable of internal function type
                    v65 = v273 = msg.data[v3 + 68];
                    if (0 == 96 < v2 - 4) {
                        fun_safeTransfer(msg.data[v3 + 36], msg.sender, v273);
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
                        fun_transferFrom(v275, v274, v277, msg.data[v3 + 164]);
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
