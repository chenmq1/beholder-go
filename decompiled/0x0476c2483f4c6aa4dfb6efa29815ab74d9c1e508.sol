// Decompiled by library.dedaub.com
// 2026.04.20 02:18 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 _fun_transferFrom; // TRANSIENT_STORAGE[0xc7aebfbc05485e093720deaa]
uint256 _fun_ekuboPayV2; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 _fun_uniV3ForkSwap; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x134c(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x17b9(uint256 varg0, uint256 varg1) private { 
    require(varg0, 0xcbf0dbf5000000000000000000000000, varg1);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function fun_checkSlippageAndTransfer(uint256 varg0) private { 
    v0 = address(MEM[varg0 + 32]);
    if (!MEM[varg0 + 64] & !v0) {
        return ;
    } else {
        if (v0 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v1 = v2 = fun_fastBalanceOf(v0, this);
        } else {
            v1 = v3 = this.balance;
        }
        require(v1 >= MEM[varg0 + 64], TooMuchSlippage(v0, 0x97a6f3b9000000000000000000000000, MEM[varg0 + 64], v1));
        if (0 == (v0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            fun_safeTransfer(v0, address(MEM[varg0]), v1);
        } else {
            fun_safeTransferETH(address(MEM[varg0]), v1);
        }
        MEM[v1d4earg0x0:v1d4earg0x0 + 96] = this.code[this.code.size:this.code.size + 96];
        return ;
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
    v0.word1 = MEM[varg0.word0 + 32];
    return MEM[varg0.word0 + 32], v0;
}

function receive() public payable { 
}

function executeMetaTxn(address varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(96 <= msg.data.length - 4);
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    MEM[128] = varg0;
    MEM[160] = varg1;
    MEM[192] = varg2;
    require(varg3 <= uint64.max);
    require(varg3 + 35 < msg.data.length);
    require(varg3.length <= uint64.max);
    v0 = v1 = varg3.data;
    require(varg3 + (varg3.length << 5) + 36 <= msg.data.length);
    require(varg5 <= uint64.max);
    require(varg5 + 35 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(varg5 + varg5.length + 36 <= msg.data.length);
    v2 = v3 = v3.data;
    while (v0 < varg3 + (varg3.length << 5) + 36) {
        CALLDATACOPY(v2, msg.data[v0] + varg3 + 68, msg.data[msg.data[v0] + varg3 + 36]);
        MEM[v2] = keccak256(MEM[v3b6_0x1:v3b6_0x1 + msg.data[msg.data[v3b6_0x0] + varg3 + 36]]);
        v0 += 32;
        v2 += 32;
    }
    MCOPY(v4.data + 32, 128, 96);
    require(msg.sender != varg4, ConfusedDeputy());
    require(!_fun_transferFrom, ReentrantMetatransaction(_fun_transferFrom));
    _fun_transferFrom = keccak256(0x615e8d716cef7295e75dd3f1f10d679914ad6d7759e8e9459f0109ef75241701, keccak256(v3));
    require(varg4 << 96, ConfusedDeputy());
    require(!(_fun_ekuboPayV2 << 96), ReentrantPayer(_fun_ekuboPayV2, 0x7407c0f8000000000000000000000000));
    _fun_ekuboPayV2 = varg4;
    require(varg3.length);
    v5 = msg.data[varg3 + msg.data[v1] + 36] - 4;
    v6 = varg3 + msg.data[v1] + 72;
    if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0xdfeb419) {
        if (0x45d8bb1f - (msg.data[varg3 + msg.data[v1] + 68] >> 224)) {
            v7 = 0;
        } else {
            require(v6 + v5 - v6 >= 224);
            require(!(msg.data[v6] - address(msg.data[v6])));
            require(v6 + v5 - (v6 + 32) >= 128);
            v8 = new struct(3);
            require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
            require(v6 + v5 - (v6 + 32) >= 64);
            v9 = new struct(2);
            require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v6 + 32] - address(msg.data[v6 + 32])));
            v9.word0 = msg.data[v6 + 32];
            v9.word1 = msg.data[v6 + 32 + 32];
            v8.word0 = v9;
            v8.word1 = msg.data[v6 + 32 + 64];
            v8.word2 = msg.data[v6 + 32 + 96];
            require(msg.data[v6 + 160] <= uint64.max);
            require(v6 + msg.data[v6 + 160] + 31 < v6 + v5);
            require(msg.data[v6 + msg.data[v6 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = new bytes[](msg.data[v6 + msg.data[v6 + 160]]);
            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
            require(v6 + msg.data[v6 + 160] + 32 + msg.data[v6 + msg.data[v6 + 160]] <= v6 + v5);
            CALLDATACOPY(v10.data, v6 + msg.data[v6 + 160] + 32, msg.data[v6 + msg.data[v6 + 160]]);
            v10[msg.data[v6 + msg.data[v6 + 160]]] = 0;
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v11 = new bytes[](varg5.length);
            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5.data + varg5.length <= msg.data.length);
            CALLDATACOPY(v11.data, varg5.data, varg5.length);
            v11[varg5.length] = 0;
            require(137 <= 137 + v11.length, Panic(17)); // arithmetic overflow or underflow
            require(137 + v11.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v12 = new bytes[](137 + v11.length);
            require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v11.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v11.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            require(137 + v11.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(v12.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 168 + v11.length) - 32);
            MEM[72 + v12] = MEM[32 + v8.word0];
            MCOPY(104 + v12, 32 + v8, 64);
            MEM8[168 + v12] = 0x0 & 0xFF;
            MCOPY(169 + v12, v11.data, v11.length);
            v13 = fun__uniV3ForkSwap(address(msg.data[v6]), v10, MEM[v8.word0 + 32], msg.data[v6 + 192], v12);
            v7 = v14 = 1;
        }
    } else {
        require(v6 + v5 - v6 >= 160);
        require(!(msg.data[v6] - address(msg.data[v6])));
        require(v6 + v5 - (v6 + 32) >= 128);
        v15 = new struct(3);
        require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + v5 - (v6 + 32) >= 64);
        v16 = new struct(2);
        require(!((v16 + 64 > uint64.max) | (v16 + 64 < v16)), Panic(65)); // failed memory allocation (too much memory)
        require(!(msg.data[v6 + 32] - address(msg.data[v6 + 32])));
        v16.word0 = msg.data[v6 + 32];
        v16.word1 = msg.data[v6 + 32 + 32];
        v15.word0 = v16;
        v15.word1 = msg.data[v6 + 32 + 64];
        v15.word2 = msg.data[v6 + 32 + 96];
        v17, v18 = fun_permitToTransferDetails(v15, address(msg.data[v6]));
        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v19 = new bytes[](varg5.length);
        require(!((v19 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
        require(varg5.data + varg5.length <= msg.data.length);
        CALLDATACOPY(v19.data, varg5.data, varg5.length);
        v19[varg5.length] = 0;
        v20 = _fun_transferFrom;
        _fun_transferFrom = 0;
        require(v20, ConfusedDeputy());
        v21 = new bytes[](175);
        require(!((v21 + uint8(-32) > uint64.max) | (v21 + uint8(-32) < v21)), Panic(65)); // failed memory allocation (too much memory)
        MEM[v21.data] = 'SlippageAndActions slippageAndAc';
        MEM[v21 + 64] = 'tions)SlippageAndActions(address';
        MEM[v21 + 96] = ' recipient,address buyToken,uint';
        MEM[v21 + 128] = '256 minAmountOut,bytes[] actions';
        MEM[v21 + 160] = ')TokenPermissions(address token,';
        MEM[v21 + 192] = 'uint256 amount)';
        require(!0, ForwarderNotAllowed());
        MEM[v22] = 0x137c29fe;
        MCOPY(32 + v22, v15.word0, 64);
        MCOPY(96 + v22, 32 + v15, 64);
        MCOPY(160 + v22, v18, 64);
        MCOPY(352 + v22, v21, 207);
        MCOPY(384 + (v22 + v21.length), v19, 32 + v19.length);
        v23, /* uint256 */ v24 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v25, v25, v25, v25, v25, v25, address(_fun_ekuboPayV2), v20, 320, 527).gas(msg.gas);
        if (!v23) {
            v26 = RETURNDATASIZE();
            revert(v25, v25, v25, v25, v25, v25, v25, v25, v25, 527);
        } else {
            v7 = v27 = 1;
        }
    }
    if (!v7) {
        if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0xd9d94e41) {
            if ((msg.data[varg3 + msg.data[v1] + 68] >> 224) - 0x449b52ab) {
                if (0xf67d89e5 - (msg.data[varg3 + msg.data[v1] + 68] >> 224)) {
                    v28 = v29 = 0;
                } else {
                    require(v6 + v5 - v6 >= 320);
                    require(!(msg.data[v6] - address(msg.data[v6])));
                    require(v6 + v5 - (v6 + 32) >= 128);
                    v30 = new struct(3);
                    require(!((v30 + 96 > uint64.max) | (v30 + 96 < v30)), Panic(65)); // failed memory allocation (too much memory)
                    require(v6 + v5 - (v6 + 32) >= 64);
                    v31 = new struct(2);
                    require(!((v31 + 64 > uint64.max) | (v31 + 64 < v31)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v6 + 32] - address(msg.data[v6 + 32])));
                    v31.word0 = msg.data[v6 + 32];
                    v31.word1 = msg.data[v6 + 32 + 32];
                    v30.word0 = v31;
                    v30.word1 = msg.data[v6 + 32 + 64];
                    v30.word2 = msg.data[v6 + 32 + 96];
                    require(!(msg.data[v6 + 160] - bool(msg.data[v6 + 160])));
                    require(msg.data[v6 + (uint8.max + 1)] <= uint64.max);
                    require(v6 + msg.data[v6 + (uint8.max + 1)] + 31 < v6 + v5);
                    require(msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v32 = new bytes[](msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
                    require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                    require(v6 + msg.data[v6 + (uint8.max + 1)] + 32 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= v6 + v5);
                    CALLDATACOPY(v32.data, v6 + msg.data[v6 + (uint8.max + 1)] + 32, msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
                    v32[msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]] = 0;
                    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v33 = new bytes[](varg5.length);
                    require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5.data + varg5.length <= msg.data.length);
                    CALLDATACOPY(v33.data, varg5.data, varg5.length);
                    v33[varg5.length] = 0;
                    require(!msg.data[v6 + 192] | (96 == msg.data[v6 + 192] * 96 / msg.data[v6 + 192]), Panic(17)); // arithmetic overflow or underflow
                    require(!msg.data[v6 + 224] | (96 == msg.data[v6 + 224] * 96 / msg.data[v6 + 224]), Panic(17)); // arithmetic overflow or underflow
                    require(!(bool(msg.data[v6 + 288] >> 128) | bool(msg.data[v6 + 192] * 96 >> 128) | bool(msg.data[v6 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                    MEM[v33.length + (v32.length + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v33.length;
                    MCOPY(306 + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v32.data, v32.length);
                    MCOPY(v32.length + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v33.data, v33.length);
                    MEM8[305 + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                    MCOPY(241 + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v30, 64);
                    MCOPY(177 + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v30.word0, 64);
                    MEM8[168 + (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v6 + 160] & 0xFF;
                    require((_fun_ekuboPayV2 ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                    require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                    _fun_uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
                    v34, /* uint256 */ v35 = 0x14aa86c5d3c41765bb24e11bd701.lock(32, address(msg.data[v6]), 209 + (v32.length + v33.length), address(msg.data[v6]), msg.data[v6 + 288], msg.data[v6 + 224] * 96, msg.data[v6 + 192] * 96, 0).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v36 = v37 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v36 = new bytes[](RETURNDATASIZE());
                        require(!((v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v36 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v36)), Panic(65)); // failed memory allocation (too much memory)
                        v35 = v36.data;
                        RETURNDATACOPY(v35, 0, RETURNDATASIZE());
                    }
                    require(v34, v36 + 32, MEM[v36]);
                    require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                    v28 = v38 = 1;
                }
            } else {
                require(v6 + v5 - v6 >= 320);
                require(!(msg.data[v6] - address(msg.data[v6])));
                require(v6 + v5 - (v6 + 32) >= 128);
                v39 = new struct(3);
                require(!((v39 + 96 > uint64.max) | (v39 + 96 < v39)), Panic(65)); // failed memory allocation (too much memory)
                require(v6 + v5 - (v6 + 32) >= 64);
                v40 = new struct(2);
                require(!((v40 + 64 > uint64.max) | (v40 + 64 < v40)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v6 + 32] - address(msg.data[v6 + 32])));
                v40.word0 = msg.data[v6 + 32];
                v40.word1 = msg.data[v6 + 32 + 32];
                v39.word0 = v40;
                v39.word1 = msg.data[v6 + 32 + 64];
                v39.word2 = msg.data[v6 + 32 + 96];
                require(!(msg.data[v6 + 160] - bool(msg.data[v6 + 160])));
                require(msg.data[v6 + (uint8.max + 1)] <= uint64.max);
                require(v6 + msg.data[v6 + (uint8.max + 1)] + 31 < v6 + v5);
                require(msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v41 = new bytes[](msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
                require(!((v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                require(v6 + msg.data[v6 + (uint8.max + 1)] + 32 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= v6 + v5);
                CALLDATACOPY(v41.data, v6 + msg.data[v6 + (uint8.max + 1)] + 32, msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
                v41[msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]] = 0;
                require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v42 = new bytes[](varg5.length);
                require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
                require(varg5.data + varg5.length <= msg.data.length);
                CALLDATACOPY(v42.data, varg5.data, varg5.length);
                v42[varg5.length] = 0;
                require(!msg.data[v6 + 192] | (96 == msg.data[v6 + 192] * 96 / msg.data[v6 + 192]), Panic(17)); // arithmetic overflow or underflow
                require(!msg.data[v6 + 224] | (96 == msg.data[v6 + 224] * 96 / msg.data[v6 + 224]), Panic(17)); // arithmetic overflow or underflow
                require(!(bool(msg.data[v6 + 288] >> 128) | bool(msg.data[v6 + 192] * 96 >> 128) | bool(msg.data[v6 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                MEM[v42.length + (v41.length + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v42.length;
                MCOPY(306 + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v41.data, v41.length);
                MCOPY(v41.length + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v42.data, v42.length);
                MEM8[305 + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                MCOPY(241 + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v39, 64);
                MCOPY(177 + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v39.word0, 64);
                MEM8[168 + (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v6 + 160] & 0xFF;
                require((_fun_ekuboPayV2 ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
                _fun_uniV3ForkSwap = uint32(msg.data[v6] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                v43, /* uint256 */ v44 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v6]), 209 + (v41.length + v42.length), address(msg.data[v6]), msg.data[v6 + 288], msg.data[v6 + 224] * 96, msg.data[v6 + 192] * 96, 0).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v45 = v46 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v45 = new bytes[](RETURNDATASIZE());
                    require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                    v44 = v45.data;
                    RETURNDATACOPY(v44, 0, RETURNDATASIZE());
                }
                require(v43, v45 + 32, MEM[v45]);
                require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
                v28 = v47 = 1;
            }
        } else {
            require(v6 + v5 - v6 >= 320);
            require(!(msg.data[v6] - address(msg.data[v6])));
            require(v6 + v5 - (v6 + 32) >= 128);
            v48 = new struct(3);
            require(!((v48 + 96 > uint64.max) | (v48 + 96 < v48)), Panic(65)); // failed memory allocation (too much memory)
            require(v6 + v5 - (v6 + 32) >= 64);
            v49 = new struct(2);
            require(!((v49 + 64 > uint64.max) | (v49 + 64 < v49)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v6 + 32] - address(msg.data[v6 + 32])));
            v49.word0 = msg.data[v6 + 32];
            v49.word1 = msg.data[v6 + 32 + 32];
            v48.word0 = v49;
            v48.word1 = msg.data[v6 + 32 + 64];
            v48.word2 = msg.data[v6 + 32 + 96];
            require(!(msg.data[v6 + 160] - bool(msg.data[v6 + 160])));
            require(msg.data[v6 + (uint8.max + 1)] <= uint64.max);
            require(v6 + msg.data[v6 + (uint8.max + 1)] + 31 < v6 + v5);
            require(msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v50 = new bytes[](msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
            require(v6 + msg.data[v6 + (uint8.max + 1)] + 32 + msg.data[v6 + msg.data[v6 + (uint8.max + 1)]] <= v6 + v5);
            CALLDATACOPY(v50.data, v6 + msg.data[v6 + (uint8.max + 1)] + 32, msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]);
            v50[msg.data[v6 + msg.data[v6 + (uint8.max + 1)]]] = 0;
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v51 = new bytes[](varg5.length);
            require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5.data + varg5.length <= msg.data.length);
            CALLDATACOPY(v51.data, varg5.data, varg5.length);
            v51[varg5.length] = 0;
            require(!msg.data[v6 + 192] | (96 == msg.data[v6 + 192] * 96 / msg.data[v6 + 192]), Panic(17)); // arithmetic overflow or underflow
            require(!msg.data[v6 + 224] | (96 == msg.data[v6 + 224] * 96 / msg.data[v6 + 224]), Panic(17)); // arithmetic overflow or underflow
            require(!(bool(msg.data[v6 + 288] >> 128) | bool(msg.data[v6 + 192] * 96 >> 128) | bool(msg.data[v6 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
            MEM[v51.length + (v50.length + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v51.length;
            MCOPY(306 + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v50.data, v50.length);
            MCOPY(v50.length + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v51.data, v51.length);
            MEM8[305 + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
            MCOPY(241 + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v48, 64);
            MCOPY(177 + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v48.word0, 64);
            MEM8[168 + (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v6 + 160] & 0xFF;
            require((_fun_ekuboPayV2 ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
            require(!_fun_uniV3ForkSwap, ReentrantCallback(_fun_uniV3ForkSwap));
            _fun_uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
            v52, /* uint256 */ v53 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v6]), 209 + (v50.length + v51.length), address(msg.data[v6]), msg.data[v6 + 288], msg.data[v6 + 224] * 96, msg.data[v6 + 192] * 96, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v54 = v55 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v54 = new bytes[](RETURNDATASIZE());
                require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
                v53 = v54.data;
                RETURNDATACOPY(v53, 0, RETURNDATASIZE());
            }
            require(v52, v54 + 32, MEM[v54]);
            require(!_fun_uniV3ForkSwap, CallbackNotSpent(_fun_uniV3ForkSwap));
            v28 = v56 = 1;
        }
    } else {
        v28 = v57 = 1;
    }
    if (!v28) {
        v58 = new uint256[](v5);
        CALLDATACOPY(v58.data, v6, v5);
        revert(ActionInvalid(0, bytes4(msg.data[varg3 + msg.data[v1] + 68]), v58));
    } else {
        v59 = v60 = varg3 + 68;
        v61 = v62 = 1;
        while (v61 < varg3.length) {
            v63 = msg.data[varg3 + msg.data[v59] + 36] - 4;
            v64 = varg3 + msg.data[v59] + 72;
            v65 = msg.data[varg3 + msg.data[v59] + 68] >> 224;
            if (v65 - 0xd92aadfb) {
                if (v65 - 0x8d68a156) {
                    if (v65 - 0x103b48be) {
                        if (v65 - 0x38c9c147) {
                            if (v65 - 0x34ee90ca) {
                                if (0 == (v65 == 0xaf72634f) | (v65 == 0xfd8c38e1) | (v65 == 0x6c5f9cf9) | (v65 == 0xf61460f9)) {
                                    if (0 == (v65 == 0x736180c8)) {
                                        if (v65 - 0x6472b276) {
                                            if (v65 - 0x9b59756f) {
                                                if (v65 - 0x670335be) {
                                                    if (v65 - 0xca9e5d0f) {
                                                        if (0xb8df6d4d - v65) {
                                                            v66 = v67 = 0;
                                                        } else {
                                                            require(v64 + v63 - v64 >= 160);
                                                            require(!(msg.data[v64] - address(msg.data[v64])));
                                                            require(!(msg.data[v64 + 64] - address(msg.data[v64 + 64])));
                                                            require(!(msg.data[v64 + 96] - bool(msg.data[v64 + 96])));
                                                            v68 = fun_fastBalanceOf(msg.data[v64], this);
                                                            fun_safeApproveIfBelow(msg.data[v64], address(msg.data[v64 + 64]), v68 * msg.data[v64 + 32] / 10000);
                                                            if (!msg.data[v64 + 96]) {
                                                                v69 = msg.data[v64 + 64].sellBaseToken(v68 * msg.data[v64 + 32] / 10000, msg.data[v64 + 128], 96, 0).gas(msg.gas);
                                                                if (!v69) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v66 = v70 = 1;
                                                                }
                                                            } else {
                                                                v71 = msg.data[v64 + 64].getExpectedTarget().gas(msg.gas);
                                                                if (!v71) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 63);
                                                                    v72 = msg.data[v64 + 64]._R_STATUS_().gas(msg.gas);
                                                                    if (!v72) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                        require(!(MEM[0] >> 8));
                                                                        require(uint8(MEM[0]) < 3, Panic(33)); // failed convertion to enum type
                                                                        v73 = msg.data[v64 + 64].getOraclePrice().gas(msg.gas);
                                                                        if (!v73) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            v74 = msg.data[v64 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                            if (!v74) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v75 = msg.data[v64 + 64]._K_().gas(msg.gas);
                                                                                if (!v75) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    if (0 == (uint8(MEM[0]) == 2)) {
                                                                                        if ((10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 < MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v68 * msg.data[v64 + 32] / 10000) / 10 ** 18) {
                                                                                            v76 = v77 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v68 * msg.data[v64 + 32] / 10000) / 10 ** 18 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                            v78 = v79 = 10 ** 18;
                                                                                            v80 = v81 = 0;
                                                                                        } else {
                                                                                            v76 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v68 * msg.data[v64 + 32] / 10000) / 10 ** 18);
                                                                                            v80 = v82 = 1;
                                                                                            v78 = 10 ** 18;
                                                                                        }
                                                                                        v83 = v84 = v76 * v76 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v78;
                                                                                        v83 = (v84 >> 1) + 1;
                                                                                        while (v83 < v83) {
                                                                                            v83 = v83 + v84 / v83 >> 1;
                                                                                        }
                                                                                        if (0 == v80) {
                                                                                            v85 = v86 = v83 - v76;
                                                                                        } else {
                                                                                            v85 = v87 = v76 + v83;
                                                                                        }
                                                                                        v88 = v89 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v85 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v85 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                    } else {
                                                                                        v90 = msg.data[v64 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                        if (!v90) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            if (v68 * msg.data[v64 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                if ((10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 < MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v68 * msg.data[v64 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18) {
                                                                                                    v91 = v92 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v68 * msg.data[v64 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                    v93 = v94 = 10 ** 18;
                                                                                                    v95 = v96 = 0;
                                                                                                } else {
                                                                                                    v91 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v68 * msg.data[v64 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18);
                                                                                                    v95 = v97 = 1;
                                                                                                    v93 = 10 ** 18;
                                                                                                }
                                                                                                v98 = v99 = v91 * v91 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v93;
                                                                                                v98 = (v99 >> 1) + 1;
                                                                                                while (v98 < v98) {
                                                                                                    v98 = v98 + v99 / v98 >> 1;
                                                                                                }
                                                                                                if (0 == v95) {
                                                                                                    v100 = v101 = v98 - v91;
                                                                                                } else {
                                                                                                    v100 = v102 = v91 + v98;
                                                                                                }
                                                                                                v88 = v103 = MEM[0] - MEM[0] + (MEM[0] - (bool(v100 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v100 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                            } else {
                                                                                                v88 = v104 = (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v68 * msg.data[v64 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v68 * msg.data[v64 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) * ((MEM[0] + v68 * msg.data[v64 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    v105 = msg.data[v64 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                    if (!v105) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        v106 = msg.data[v64 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v106) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            v107 = v88 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18);
                                                                                            if (v107 < msg.data[v64 + 128]) {
                                                                                                v108 = msg.data[v64 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                require(v108, MEM[64], RETURNDATASIZE());
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v64 + 128], v107));
                                                                                                revert();
                                                                                            } else {
                                                                                                v109 = msg.data[v64 + 64].buyBaseToken(v107, v68 * msg.data[v64 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                if (!v109) {
                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                } else {
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    v66 = v110 = 1;
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
                                                        require(v64 + v63 - v64 >= 192);
                                                        require(!(msg.data[v64] - address(msg.data[v64])));
                                                        require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                                        require(!(msg.data[v64 + 96] - address(msg.data[v64 + 96])));
                                                        require(!(msg.data[v64 + 128] - bool(msg.data[v64 + 128])));
                                                        if (msg.data[v64 + 64]) {
                                                            v111 = fun_fastBalanceOf(msg.data[v64 + 32], this);
                                                            fun_safeTransfer(msg.data[v64 + 32], address(msg.data[v64 + 96]), v111 * msg.data[v64 + 64] / 10000);
                                                        }
                                                        v112 = msg.data[v64 + 96].sellQuote(address(msg.data[v64]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v64 + 128]) << 96).gas(msg.gas);
                                                        if (!v112) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(RETURNDATASIZE() > 31);
                                                            if (MEM[0] < msg.data[v64 + 160]) {
                                                                v113 = msg.data[v64 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                require(v113, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v64 + 160], MEM[0]));
                                                                revert();
                                                            } else {
                                                                v66 = v114 = 1;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    require(v64 + v63 - v64 >= 352);
                                                    require(!(msg.data[v64] - address(msg.data[v64])));
                                                    require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                                    require(v64 + v63 - v64 - 64 >= 224);
                                                    v115 = new struct(7);
                                                    require(!((v115 + 224 > uint64.max) | (v115 + 224 < v115)), Panic(65)); // failed memory allocation (too much memory)
                                                    v115.word0 = msg.data[v64 + 64];
                                                    require(!(msg.data[v64 + 96] - address(msg.data[v64 + 96])));
                                                    v115.word1 = msg.data[v64 + 96];
                                                    v115.word2 = msg.data[v64 + 128];
                                                    require(!(msg.data[v64 + 160] - address(msg.data[v64 + 160])));
                                                    v115.word3 = msg.data[v64 + 160];
                                                    v115.word4 = msg.data[v64 + 192];
                                                    v115.word5 = msg.data[v64 + 224];
                                                    v115.word6 = msg.data[v64 + (uint8.max + 1)];
                                                    require(msg.data[v64 + 288] <= uint64.max);
                                                    require(v64 + v63 - (v64 + msg.data[v64 + 288]) >= 64);
                                                    v116 = new struct(2);
                                                    require(!((v116 + 64 > uint64.max) | (v116 + 64 < v116)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(msg.data[v64 + msg.data[v64 + 288]] <= uint64.max);
                                                    require(v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]] + 31 < v64 + v63);
                                                    require(msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v117 = new bytes[](msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]]);
                                                    require(!((v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v117)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]] + 32 + msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]] <= v64 + v63);
                                                    CALLDATACOPY(v117.data, v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]] + 32, msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]]);
                                                    v117[msg.data[v64 + msg.data[v64 + 288] + msg.data[v64 + msg.data[v64 + 288]]]] = 0;
                                                    v116.word0 = v117;
                                                    v116.word1 = msg.data[v64 + msg.data[v64 + 288] + 32];
                                                    v118 = fun_fastBalanceOf(msg.data[v64 + 32], this);
                                                    require(v115.word5 * ((v115.word4 ^ v118) * (v118 > v115.word4) ^ v118) / v115.word4 >= msg.data[v64 + 320], TooMuchSlippage(address(v115.word3), 0x97a6f3b9000000000000000000000000, msg.data[v64 + 320], v115.word5 * ((v115.word4 ^ v118) * (v118 > v115.word4) ^ v118) / v115.word4));
                                                    v119 = msg.data[v64 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                    if (!v119) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        if (MEM[0] < (v115.word4 ^ v118) * (v118 > v115.word4) ^ v118) {
                                                            if (MEM[0]) {
                                                                fun_safeApprove(msg.data[v64 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
                                                            }
                                                            v120 = msg.data[v64 + 32].approve(0xbbbbbbb520d69a9775e85b458c58c648259fad5f, 0x95ea7b3000000000000000000000000, uint256.max).gas(msg.gas);
                                                            if (!v120) {
                                                                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                                                                revert(uint24(MEM[64]), RETURNDATASIZE());
                                                            } else {
                                                                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                                                                MEM[52] = 0;
                                                            }
                                                        }
                                                        MCOPY(96 + MEM[64], 32 + v115, 64);
                                                        MCOPY(192 + MEM[64], 96 + v115, 96);
                                                        v121 = new uint256[](64);
                                                        MEM[v121.data] = v116.word1;
                                                        v122 = v116.word0;
                                                        MCOPY(512 + MEM[64], v116.word0, 32 + v122.length);
                                                        v123 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v115.word0, this, v25, v25, address(msg.data[v64 + 32]), v25, v25, v25, address(msg.data[v64]), _fun_ekuboPayV2 << 96 | v115.word6 >> 248, v115.word6 << 128, v121, (v115.word4 ^ v118) * (v118 > v115.word4) ^ v118).gas(msg.gas);
                                                        if (!v123) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            emit uint128(v115.word6)(uint128(v115.word5 * ((v115.word4 ^ v118) * (v118 > v115.word4) ^ v118) / v115.word4), uint128(v115.word5 * ((v115.word4 ^ v118) * (v118 > v115.word4) ^ v118) / v115.word4));
                                                            v66 = v124 = 1;
                                                        }
                                                    }
                                                }
                                            } else {
                                                require(v64 + v63 - v64 >= 224);
                                                require(!(msg.data[v64] - address(msg.data[v64])));
                                                require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                                require(!(msg.data[v64 + 96] - address(msg.data[v64 + 96])));
                                                require(!(msg.data[v64 + 128] - bool(msg.data[v64 + 128])));
                                                require(!(msg.data[v64 + 160] - int32(msg.data[v64 + 160])));
                                                if (!msg.data[v64 + 64]) {
                                                    v125 = fun_fastBalanceOf(msg.data[v64 + 32], address(msg.data[v64 + 96]));
                                                    v126 = msg.data[v64 + 96].getState().gas(msg.gas);
                                                    if (!v126) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v64 + 128] << 5) + MEM[64]] >> 128));
                                                        v127 = v128 = 64;
                                                        v129 = v130 = 0;
                                                        v131 = v132 = v125 - uint128(MEM[(!msg.data[v64 + 128] << 5) + MEM[64]]);
                                                    }
                                                } else {
                                                    v127 = v133 = 64;
                                                    v129 = v134 = 0;
                                                    v135 = fun_fastBalanceOf(msg.data[v64 + 32], this);
                                                    v131 = v136 = v135 * msg.data[v64 + 64] / 10000;
                                                    fun_safeTransfer(msg.data[v64 + 32], address(msg.data[v64 + 96]), v136);
                                                }
                                                require(!((MEM[v127] + 32 > uint64.max) | (MEM[v127] + 32 < MEM[v127])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[v127] + 32, msg.data.length, 0);
                                                MCOPY(228 + MEM[v127], MEM[v127], 32);
                                                v137 = msg.data[v64 + 96].call(0x3eece7db000000000000000000000000, address(msg.data[v64]), 0x3eece7db000000000000000000000000, v131, msg.data[v64 + 128], v129, int32(msg.data[v64 + 160]), 192).value(v129).gas(msg.gas);
                                                if (!v137) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (MEM[32] < msg.data[192 + v64]) {
                                                    v138 = msg.data[v64 + 96].tokenB().gas(msg.gas);
                                                    require(v138, MEM[64], RETURNDATASIZE());
                                                    require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                    revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[192 + v64], MEM[32]));
                                                } else {
                                                    v66 = v139 = 1;
                                                }
                                            }
                                        } else {
                                            require(v64 + v63 - v64 >= 192);
                                            require(!(msg.data[v64] - address(msg.data[v64])));
                                            require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                            require(!(msg.data[v64 + 96] - address(msg.data[v64 + 96])));
                                            require(!(msg.data[v64 + 128] - bool(msg.data[v64 + 128])));
                                            EXTCODECOPY(msg.data[v64 + 96], MEM[64], 54, 384);
                                            v140 = msg.data[v64 + 96].getReserves().gas(msg.gas);
                                            if (!v140) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v141 = address(address(MEM[MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v64 + 128]);
                                                v142 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v64 + 128]).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                if (!v142) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(32 <= RETURNDATASIZE());
                                                    v143 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v64 + 128]).maxDeposit(MEM[64 + MEM[64]], 0x402d267d000000000000000000000000).gas(msg.gas);
                                                    if (!v143) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v144 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, address(msg.data[v64 + 96]), MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96).gas(msg.gas);
                                                        if (!v144) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v145 = v141.cash().gas(msg.gas);
                                                            if (!v145) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(32 <= RETURNDATASIZE());
                                                                v146 = v147 = (MEM[0] ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v64 + 128])) * (MEM[0] < MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v64 + 128]) ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v64 + 128]);
                                                                v148 = v141.caps().gas(msg.gas);
                                                                if (!v148) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                    v149 = v141.totalBorrows().gas(msg.gas);
                                                                    if (!v149) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(32 <= RETURNDATASIZE());
                                                                        v150 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * (((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) - MEM[0]);
                                                                        if (v150 < v147) {
                                                                            v151 = fun_fastBalanceOf(v141, MEM[64 + MEM[64]]);
                                                                            v152 = v141.convertToAssets(v151).gas(msg.gas);
                                                                            if (!v152) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(32 <= RETURNDATASIZE());
                                                                                v146 = v153 = (v147 ^ MEM[0] + v150) * (MEM[0] + v150 >= v147) ^ MEM[0] + v150;
                                                                            }
                                                                        }
                                                                        if (0 == msg.data[v64 + 128]) {
                                                                            if ((MEM[0] - v146) * (MEM[0] > v146) > MEM[96 + MEM[64]]) {
                                                                                v154 = v155 = fun_fInverse((MEM[0] - v146) * (MEM[0] > v146), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            } else {
                                                                                v154 = v156 = fun_saturatingF((MEM[0] - v146) * (MEM[0] > v146), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            }
                                                                            v157 = v158 = (v154 > MEM[32]) * (v154 - MEM[32]);
                                                                        } else {
                                                                            if ((MEM[32] - v146) * (MEM[32] > v146) > MEM[128 + MEM[64]]) {
                                                                                v159 = v160 = fun_fInverse((MEM[32] - v146) * (MEM[32] > v146), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            } else {
                                                                                v159 = v161 = fun_saturatingF((MEM[32] - v146) * (MEM[32] > v146), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            }
                                                                            v157 = v162 = (v159 > MEM[0]) * (v159 - MEM[0]);
                                                                        }
                                                                        v163 = ((v157 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v157 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                        v164 = v165 = 0;
                                                                        if (msg.data[v64 + 64]) {
                                                                            v166 = fun_fastBalanceOf(msg.data[v64 + 32], this);
                                                                            v164 = v167 = (v163 ^ v166 * msg.data[v64 + 64] / 10000) * (v166 * msg.data[v64 + 64] / 10000 > v163) ^ v166 * msg.data[v64 + 64] / 10000;
                                                                            fun_safeTransfer(msg.data[v64 + 32], address(msg.data[v64 + 96]), v167);
                                                                        }
                                                                        if (!v164) {
                                                                            v168 = fun_fastBalanceOf(msg.data[v64 + 32], address(msg.data[v64 + 96]));
                                                                            v164 = v169 = (v163 ^ v168) * (v168 > v163) ^ v168;
                                                                        }
                                                                        if (0 == msg.data[v64 + 128]) {
                                                                            if (MEM[32] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                v170 = fun_fInverse(MEM[32] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                v171 = v172 = (MEM[0] > !v170 + v170) * (MEM[0] - (!v170 + v170));
                                                                            } else {
                                                                                v173 = fun_saturatingF(MEM[32] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v171 = v174 = (MEM[0] > !v173 + v173) * (MEM[0] - (!v173 + v173));
                                                                            }
                                                                        } else if (MEM[0] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                            v175 = fun_fInverse(MEM[0] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            v171 = v176 = (MEM[32] > !v175 + v175) * (MEM[32] - (!v175 + v175));
                                                                        } else {
                                                                            v177 = fun_saturatingF(MEM[0] + (v164 - v164 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            v171 = v178 = (MEM[32] > !v177 + v177) * (MEM[32] - (!v177 + v177));
                                                                        }
                                                                        if (v171 < msg.data[v64 + 160]) {
                                                                            v179 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v64 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                            require(v179, MEM[64], RETURNDATASIZE());
                                                                            require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                                                            revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v64 + 160], v171));
                                                                        } else {
                                                                            if (v171 > 1) {
                                                                                MEM[MEM[64] + (msg.data[v64 + 128] << 5) + 32] = v171;
                                                                                MEM[(0x20 ^ msg.data[v64 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                v180 = msg.data[v64 + 96].swap(v25, v25, address(msg.data[v64]), 128, 0).gas(msg.gas);
                                                                                if (!v180) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                }
                                                                            }
                                                                            v66 = v181 = 1;
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
                                        require(v64 + v63 - v64 >= 192);
                                        require(!(msg.data[v64] - address(msg.data[v64])));
                                        require(!(msg.data[v64 + 64] - bool(msg.data[v64 + 64])));
                                        require(!(msg.data[v64 + 128] - address(msg.data[v64 + 128])));
                                        require(!(msg.data[v64 + 160] - address(msg.data[v64 + 160])));
                                        v182 = fun_fastBalanceOf(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v64 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v64 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v64 + 160]) * msg.data[v64 + 64], this);
                                        if (!msg.data[v64 + 64]) {
                                            v183 = msg.data[v64 + 128].sellGem(address(msg.data[v64]), 0x95991276000000000000000000000000, v182 * msg.data[v64 + 32] / 10000).gas(msg.gas);
                                            if (!v183) {
                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                            } else {
                                                MEM[52] = 0;
                                                v184 = msg.data[v64 + 128].tin().gas(msg.gas);
                                                if (!v184) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(RETURNDATASIZE() > 31);
                                                    v185 = v186 = v182 * msg.data[v64 + 32] / 10000 * 10 ** 18 / 10 ** 6 - v182 * msg.data[v64 + 32] / 10000 * 10 ** 18 / 10 ** 6 * MEM[0] / 10 ** 18;
                                                    if (v186 >= msg.data[v64 + 96]) {
                                                        v66 = v187 = 1;
                                                    }
                                                }
                                            }
                                        } else {
                                            v188 = msg.data[v64 + 128].tout().gas(msg.gas);
                                            if (!v188) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                v185 = v189 = v182 * msg.data[v64 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v189 >= msg.data[v64 + 96]) {
                                                    v190 = msg.data[v64 + 128].buyGem(address(msg.data[v64]), 0x8d7ef9bb000000000000000000000000, v189).gas(msg.gas);
                                                    if (!v190) {
                                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                                    } else {
                                                        MEM[52] = 0;
                                                        v66 = v191 = 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(TooMuchSlippage(msg.data[v64 + 160] ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v64 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v64 + 160]) * msg.data[v64 + 64], 0x97a6f3b9000000000000000000000000, msg.data[v64 + 96], v185));
                                    }
                                } else {
                                    require(v64 + v63 - v64 >= uint8.max + 1);
                                    require(!(msg.data[v64] - address(msg.data[v64])));
                                    require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                    require(!(msg.data[v64 + 96] - bool(msg.data[v64 + 96])));
                                    require(msg.data[v64 + 192] <= uint64.max);
                                    require(v64 + msg.data[v64 + 192] + 31 < v64 + v63);
                                    require(msg.data[v64 + msg.data[v64 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v192 = new bytes[](msg.data[v64 + msg.data[v64 + 192]]);
                                    require(!((v192 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v192 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v192)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v64 + msg.data[v64 + 192] + 32 + msg.data[v64 + msg.data[v64 + 192]] <= v64 + v63);
                                    CALLDATACOPY(v192.data, v64 + msg.data[v64 + 192] + 32, msg.data[v64 + msg.data[v64 + 192]]);
                                    v192[msg.data[v64 + msg.data[v64 + 192]]] = 0;
                                    if (0 == (v65 == 0xaf72634f)) {
                                        if (v65 != 0xfd8c38e1) {
                                            if (0 == (v65 == 0x6c5f9cf9)) {
                                                require(!msg.data[v64 + 128] | (96 == msg.data[v64 + 128] * 96 / msg.data[v64 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v64 + 160] | (96 == msg.data[v64 + 160] * 96 / msg.data[v64 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v64 + 64] > 10000) | bool(msg.data[v64 + 224] >> 128) | bool(msg.data[v64 + 128] * 96 >> 128) | bool(msg.data[v64 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v192.data, v192.length);
                                                MEM[179 + MEM[64]] = msg.data[v64 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v64 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v64 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v64 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v64 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v64]);
                                                MEM[68 + MEM[64]] = 111 + v192.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v64 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v192.length + 211;
                                                require((_fun_ekuboPayV2 ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                v193 = _fun_uniV3ForkSwap;
                                                require(!v193, ReentrantCallback(v193));
                                                _fun_uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
                                                v194 = 0x14aa86c5d3c41765bb24e11bd701.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1aad0x1ac0V0x1af0V0x284b.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v195 = v196 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v195 = new bytes[](RETURNDATASIZE());
                                                    require(!((v195 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v195 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v195)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v195.data, 0, RETURNDATASIZE());
                                                }
                                                require(v194, v195 + 32, MEM[v195]);
                                                v197 = _fun_uniV3ForkSwap;
                                                require(!v197, CallbackNotSpent(v197));
                                                v66 = v198 = 1;
                                            } else {
                                                require(!msg.data[v64 + 128] | (96 == msg.data[v64 + 128] * 96 / msg.data[v64 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v64 + 160] | (96 == msg.data[v64 + 160] * 96 / msg.data[v64 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v64 + 64] > 10000) | bool(msg.data[v64 + 224] >> 128) | bool(msg.data[v64 + 128] * 96 >> 128) | bool(msg.data[v64 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v192.data, v192.length);
                                                MEM[179 + MEM[64]] = msg.data[v64 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v64 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v64 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v64 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v64 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v64]);
                                                MEM[68 + MEM[64]] = 111 + v192.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v64 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v192.length + 211;
                                                require((_fun_ekuboPayV2 ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                v199 = _fun_uniV3ForkSwap;
                                                require(!v199, ReentrantCallback(v199));
                                                _fun_uniV3ForkSwap = 0xb45a3c0e0000000000000001e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v200 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1aad0x1ac0V0x1af0V0x284b.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v201 = v202 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v201 = new bytes[](RETURNDATASIZE());
                                                    require(!((v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v201 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v201)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v201.data, 0, RETURNDATASIZE());
                                                }
                                                require(v200, v201 + 32, MEM[v201]);
                                                v203 = _fun_uniV3ForkSwap;
                                                require(!v203, CallbackNotSpent(v203));
                                                v66 = v204 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v64 + 128] | (96 == msg.data[v64 + 128] * 96 / msg.data[v64 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v64 + 160] | (96 == msg.data[v64 + 160] * 96 / msg.data[v64 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v64 + 64] > 10000) | bool(msg.data[v64 + 224] >> 128) | bool(msg.data[v64 + 128] * 96 >> 128) | bool(msg.data[v64 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + MEM[64], v192.data, v192.length);
                                            MEM[179 + MEM[64]] = msg.data[v64 + 64];
                                            MEM[177 + MEM[64]] = msg.data[v64 + 32];
                                            MEM[157 + MEM[64]] = this;
                                            MEM[136 + MEM[64]] = msg.data[v64 + 160] * 96;
                                            MEM[120 + MEM[64]] = msg.data[v64 + 128] * 96;
                                            MEM[104 + MEM[64]] = msg.data[v64 + 224];
                                            MEM[88 + MEM[64]] = address(msg.data[v64]);
                                            MEM[68 + MEM[64]] = 111 + v192.length;
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[4 + MEM[64]] = 0x48c89491;
                                            MEM8[168 + MEM[64]] = msg.data[v64 + 96] & 0xFF;
                                            MEM[64] = MEM[64] + v192.length + 211;
                                            require((_fun_ekuboPayV2 ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                            v205 = _fun_uniV3ForkSwap;
                                            require(!v205, ReentrantCallback(v205));
                                            _fun_uniV3ForkSwap = uint32(msg.data[v64] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                            v206 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1aad0x1ac0V0x1af0V0x284b.length], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v207 = v208 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v207 = new bytes[](RETURNDATASIZE());
                                                require(!((v207 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v207 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v207)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v207.data, 0, RETURNDATASIZE());
                                            }
                                            require(v206, v207 + 32, MEM[v207]);
                                            v209 = _fun_uniV3ForkSwap;
                                            require(!v209, CallbackNotSpent(v209));
                                            v66 = v210 = 1;
                                        }
                                    } else {
                                        require(!msg.data[v64 + 128] | (96 == msg.data[v64 + 128] * 96 / msg.data[v64 + 128]), Panic(17)); // arithmetic overflow or underflow
                                        require(!msg.data[v64 + 160] | (96 == msg.data[v64 + 160] * 96 / msg.data[v64 + 160]), Panic(17)); // arithmetic overflow or underflow
                                        require(!((msg.data[v64 + 64] > 10000) | bool(msg.data[v64 + 224] >> 128) | bool(msg.data[v64 + 128] * 96 >> 128) | bool(msg.data[v64 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + MEM[64], v192.data, v192.length);
                                        MEM[179 + MEM[64]] = msg.data[v64 + 64];
                                        MEM[177 + MEM[64]] = msg.data[v64 + 32];
                                        MEM[157 + MEM[64]] = this;
                                        MEM[136 + MEM[64]] = msg.data[v64 + 160] * 96;
                                        MEM[120 + MEM[64]] = msg.data[v64 + 128] * 96;
                                        MEM[104 + MEM[64]] = msg.data[v64 + 224];
                                        MEM[88 + MEM[64]] = address(msg.data[v64]);
                                        MEM[68 + MEM[64]] = 111 + v192.length;
                                        MEM[36 + MEM[64]] = 32;
                                        MEM[4 + MEM[64]] = 0x48c89491;
                                        MEM8[168 + MEM[64]] = msg.data[v64 + 96] & 0xFF;
                                        MEM[64] = MEM[64] + v192.length + 211;
                                        require((_fun_ekuboPayV2 ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                        v211 = _fun_uniV3ForkSwap;
                                        require(!v211, ReentrantCallback(v211));
                                        _fun_uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                                        v212 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1aad0x1ac0V0x1af0V0x284b.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v213 = v214 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v213 = new bytes[](RETURNDATASIZE());
                                            require(!((v213 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v213 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v213)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v213.data, 0, RETURNDATASIZE());
                                        }
                                        require(v212, v213 + 32, MEM[v213]);
                                        v215 = _fun_uniV3ForkSwap;
                                        require(!v215, CallbackNotSpent(v215));
                                        v66 = v216 = 1;
                                    }
                                }
                            } else {
                                require(v64 + v63 - v64 >= 128);
                                require(!(msg.data[v64] - address(msg.data[v64])));
                                require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v64 + 32])) {
                                    v217 = v218 = fun_fastBalanceOf(msg.data[v64 + 32], this);
                                } else {
                                    v217 = v219 = this.balance;
                                }
                                if (v217 > msg.data[v64 + 64]) {
                                    v220 = (v217 * msg.data[v64 + 96] / 10000 ^ v217 - msg.data[v64 + 64]) * (v217 - msg.data[v64 + 64] > v217 * msg.data[v64 + 96] / 10000) ^ v217 - msg.data[v64 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v64 + 32]))) {
                                        fun_safeTransfer(msg.data[v64 + 32], address(msg.data[v64]), v220);
                                    } else {
                                        fun_safeTransferETH(msg.data[v64], v220);
                                    }
                                }
                                v66 = v221 = 1;
                            }
                        } else {
                            require(v64 + v63 - v64 >= 160);
                            require(!(msg.data[v64] - address(msg.data[v64])));
                            require(!(msg.data[v64 + 64] - address(msg.data[v64 + 64])));
                            require(msg.data[v64 + 128] <= uint64.max);
                            require(v64 + msg.data[v64 + 128] + 31 < v64 + v63);
                            require(msg.data[v64 + msg.data[v64 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v222 = new bytes[](msg.data[v64 + msg.data[v64 + 128]]);
                            require(!((v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v222 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v222)), Panic(65)); // failed memory allocation (too much memory)
                            require(v64 + msg.data[v64 + 128] + 32 + msg.data[v64 + msg.data[v64 + 128]] <= v64 + v63);
                            CALLDATACOPY(v222.data, v64 + msg.data[v64 + 128] + 32, msg.data[v64 + msg.data[v64 + 128]]);
                            v222[msg.data[v64 + msg.data[v64 + 128]]] = 0;
                            require(!((address(msg.data[v64 + 64]) == 0xbbbbbbb520d69a9775e85b458c58c648259fad5f) | (address(msg.data[v64 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3)), ConfusedDeputy());
                            v223 = v224 = 0;
                            if (address(msg.data[v64]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v64])) {
                                    v225 = fun_fastBalanceOf(msg.data[v64], this);
                                    MEM[0] = v225 * msg.data[v64 + 32] % uint256.max - v225 * msg.data[v64 + 32] - (v225 * msg.data[v64 + 32] % uint256.max < v225 * msg.data[v64 + 32]);
                                    MEM[32] = v225 * msg.data[v64 + 32];
                                    if (!MEM[0]) {
                                        v226 = v227 = MEM[32] / 10000;
                                    } else {
                                        v226 = v228 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v64 + 96] <= msg.data[v64 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v222.length >= msg.data[v64 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v229 = 0;
                                    v222[msg.data[v64 + 96]] = v226;
                                    if (address(msg.data[v64]) - address(msg.data[v64 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v64], address(msg.data[v64 + 64]), v226);
                                    }
                                } else {
                                    require(!msg.data[v64 + 96], InvalidOffset());
                                    v229 = v230 = 0;
                                }
                            } else {
                                v231 = this.balance;
                                v223 = v231 * msg.data[v64 + 32] / 10000;
                                if (0 == !v222.length) {
                                    require(msg.data[v64 + 96] <= msg.data[v64 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v222.length >= msg.data[v64 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v229 = v232 = 0;
                                    v222[msg.data[v64 + 96]] = v223;
                                } else {
                                    require(!msg.data[v64 + 96], InvalidOffset());
                                    v233 = address(msg.data[v64 + 64]).call().value(v223).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v234 = v235 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v234 = new bytes[](RETURNDATASIZE());
                                        require(!((v234 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v234 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v234)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v234.data, 0, RETURNDATASIZE());
                                    }
                                    require(v233, v234 + 32, MEM[v234]);
                                }
                            }
                            v66 = v236 = 1;
                            v237 = address(msg.data[v64 + 64]).call(MEM[v1aad0x1ac0V0x1af0V0x26d4.data:v1aad0x1ac0V0x1af0V0x26d4.data + v1aad0x1ac0V0x1af0V0x26d4.length], MEM[v3e97V0x26e2:v3e97V0x26e2 + v3e97V0x26e2]).value(v223).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v238 = v239 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v238 = new bytes[](RETURNDATASIZE());
                                require(!((v238 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v238 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v238)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v238.data, 0, RETURNDATASIZE());
                            }
                            require(v237, v238 + 32, MEM[v238]);
                            v240 = v241 = !MEM[v238];
                            if (v241) {
                                v240 = v242 = !(address(msg.data[v64 + 64])).code.size;
                            }
                            require(!v240, InvalidTarget());
                        }
                    } else {
                        require(v64 + v63 - v64 >= 192);
                        require(!(msg.data[v64] - address(msg.data[v64])));
                        require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                        require(!(msg.data[v64 + 96] - address(msg.data[v64 + 96])));
                        require(!(msg.data[v64 + 128] - uint24(msg.data[v64 + 128])));
                        v243 = v244 = 0;
                        if (msg.data[v64 + 64]) {
                            v245 = fun_fastBalanceOf(address(msg.data[v64 + 32]), this);
                            v243 = v246 = v245 * msg.data[v64 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v64 + 32]), address(msg.data[v64 + 96]), v246);
                        }
                        v247 = address(msg.data[v64 + 96]).getReserves().gas(msg.gas);
                        if (!v247) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v248 = v249 = !v243;
                            if (bool(v243)) {
                                v248 = v250 = msg.data[v64 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v248) {
                                v251 = fun_fastBalanceOf(address(msg.data[v64 + 32]), address(msg.data[v64 + 96]));
                                v243 = v252 = _SafeSub(v251, MEM[0x20 ^ (msg.data[v64 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v64 + 128] >> 8)) * v243 + MEM[0x20 ^ (msg.data[v64 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            v253 = (10000 - uint16(msg.data[v64 + 128] >> 8)) * v243 * MEM[(msg.data[v64 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v64 + 128] >> 8)) * v243 + MEM[0x20 ^ (msg.data[v64 + 128] & 0x1 == 1) << 5] * 10000);
                            if (v253 < msg.data[v64 + 160]) {
                                v254 = address(msg.data[v64 + 96]).token0().gas(msg.gas);
                                require(v254, MEM[64], RETURNDATASIZE());
                                require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v64 + 160], v253));
                            } else {
                                MEM[MEM[64] + ((msg.data[v64 + 128] & 0x1 == 1) << 5) + 32] = v253;
                                MEM[MEM[64] + (0x20 ^ (msg.data[v64 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v255 = address(msg.data[v64 + 96]).swap(v25, v25, address(msg.data[v64]), 128, 0).gas(msg.gas);
                                if (!v255) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v66 = v256 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v64 + v63 - v64 >= 128);
                    require(!(msg.data[v64] - address(msg.data[v64])));
                    require(msg.data[v64 + 64] <= uint64.max);
                    require(v64 + msg.data[v64 + 64] + 31 < v64 + v63);
                    require(msg.data[v64 + msg.data[v64 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v257 = new bytes[](msg.data[v64 + msg.data[v64 + 64]]);
                    require(!((v257 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v257 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v257)), Panic(65)); // failed memory allocation (too much memory)
                    require(v64 + msg.data[v64 + 64] + 32 + msg.data[v64 + msg.data[v64 + 64]] <= v64 + v63);
                    CALLDATACOPY(v257.data, v64 + msg.data[v64 + 64] + 32, msg.data[v64 + msg.data[v64 + 64]]);
                    v257[msg.data[v64 + msg.data[v64 + 64]]] = 0;
                    v258 = v259 = bytes20(MEM[v257.data]);
                    if (v257.length < 20) {
                        v258 = v260 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v257.length << 3) & MEM[v257.data]);
                    }
                    v261 = (v258 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v261) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE());
                        require(!MEM[0] | (MEM[0] * msg.data[v64 + 32] / MEM[0] == msg.data[v64 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v262 = new bytes[](40);
                        require(!((v262 + 96 > uint64.max) | (v262 + 96 < v262)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v262.data, msg.data.length, 64);
                        v263 = fun_uniV3ForkSwap(address(msg.data[v64]), v257, MEM[0] * msg.data[v64 + 32] / 10000, msg.data[v64 + 96], this, v262);
                        v66 = v264 = 1;
                    }
                }
            } else {
                require(v64 + v63 - v64 >= 288);
                require(!(msg.data[v64] - address(msg.data[v64])));
                require(v64 + v63 - (v64 + 32) >= 128);
                v265 = new struct(3);
                require(!((v265 + 96 > uint64.max) | (v265 + 96 < v265)), Panic(65)); // failed memory allocation (too much memory)
                require(v64 + v63 - (v64 + 32) >= 64);
                v266 = new struct(2);
                require(!((v266 + 64 > uint64.max) | (v266 + 64 < v266)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v64 + 32] - address(msg.data[v64 + 32])));
                v266.word0 = msg.data[v64 + 32];
                v266.word1 = msg.data[v64 + 32 + 32];
                v265.word0 = v266;
                v265.word1 = msg.data[v64 + 32 + 64];
                v265.word2 = msg.data[v64 + 32 + 96];
                require(!(msg.data[v64 + 160] - address(msg.data[v64 + 160])));
                require(msg.data[v64 + 192] <= uint64.max);
                require(v64 + msg.data[v64 + 192] + 31 < v64 + v63);
                require(msg.data[v64 + msg.data[v64 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v267 = new bytes[](msg.data[v64 + msg.data[v64 + 192]]);
                require(!((v267 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v267 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v64 + msg.data[v64 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v267)), Panic(65)); // failed memory allocation (too much memory)
                require(v64 + msg.data[v64 + 192] + 32 + msg.data[v64 + msg.data[v64 + 192]] <= v64 + v63);
                CALLDATACOPY(v267.data, v64 + msg.data[v64 + 192] + 32, msg.data[v64 + msg.data[v64 + 192]]);
                v267[msg.data[v64 + msg.data[v64 + 192]]] = 0;
                require(!(msg.data[v64 + 224] - address(msg.data[v64 + 224])));
                v268, v269 = fun_permitToTransferDetails(v265, address(msg.data[v64]));
                v270 = new struct(4);
                require(!((v270 + 128 > uint64.max) | (v270 + 128 < v270)), Panic(65)); // failed memory allocation (too much memory)
                v270.word0 = address(MEM[v265.word0]);
                v270.word1 = v268;
                v270.word2 = address(msg.data[v64 + 160]);
                v270.word3 = 1;
                MEM[v270 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v270 - 32] = MEM[v270 - 32];
                v271 = new struct(4);
                require(!((v271 + 128 > uint64.max) | (v271 + 128 < v271)), Panic(65)); // failed memory allocation (too much memory)
                v271.word0 = address(msg.data[v64 + 224]);
                v271.word1 = msg.data[v64 + (uint8.max + 1)];
                v271.word2 = address(_fun_ekuboPayV2);
                v271.word3 = 1;
                MEM[v271 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v271 - 32] = MEM[v271 - 32];
                v272 = fun_fastBalanceOf(msg.data[v64 + 224], this);
                v269.word1 = v268 * ((msg.data[v64 + (uint8.max + 1)] ^ v272) * (v272 > msg.data[v64 + (uint8.max + 1)]) ^ v272) / msg.data[v64 + (uint8.max + 1)];
                v273 = msg.data[v64 + 224].transfer(address(msg.data[v64 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v64 + (uint8.max + 1)] ^ v272) * (v272 > msg.data[v64 + (uint8.max + 1)]) ^ v272).gas(msg.gas);
                if (!v273) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v274 = new bytes[](162);
                    MEM[v274.data] = 'Consideration consideration)';
                    MCOPY(v274 + 60, v275.data, v275.length);
                    MEM[v274 + v275.length + 60] = 0;
                    MCOPY(v274 + v275.length + 60, v276.data, v276.length);
                    MEM[v274 + v275.length + v276.length + 60] = 0;
                    require(!((v274 + 224 > uint64.max) | (v274 + 224 < v274)), Panic(65)); // failed memory allocation (too much memory)
                    MCOPY(32 + MEM[64], v265.word0, 64);
                    MCOPY(96 + MEM[64], 32 + v265, 64);
                    MCOPY(160 + MEM[64], v269, 64);
                    MCOPY(352 + MEM[64], v274, 194);
                    MCOPY(384 + (MEM[64] + v274.length), v267, 32 + v267.length);
                    v277 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v25, v25, v25, v25, v25, v25, address(msg.data[v64 + 160]), keccak256(MEM[v2158 - 32:v2158 - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v277) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v2158 - 32:v2158 - 32 + 160]), keccak256(MEM[v20e5 - 32:v20e5 - 32 + 160]))(uint128(v268 * ((msg.data[v64 + (uint8.max + 1)] ^ v272) * (v272 > msg.data[v64 + (uint8.max + 1)]) ^ v272) / msg.data[v64 + (uint8.max + 1)]), uint128(v268 * ((msg.data[v64 + (uint8.max + 1)] ^ v272) * (v272 > msg.data[v64 + (uint8.max + 1)]) ^ v272) / msg.data[v64 + (uint8.max + 1)]));
                        v66 = v278 = 1;
                    }
                }
            }
            if (!v66) {
                v279 = new uint256[](v63);
                CALLDATACOPY(v279.data, v64, v63);
                revert(ActionInvalid(v61, bytes4(msg.data[varg3 + msg.data[v59] + 68]), v279));
            } else {
                v59 = v59 + 32;
                v61 = v61 + 1;
            }
        }
        fun_checkSlippageAndTransfer(128);
        require(!((_fun_ekuboPayV2 ^ varg4) << 96), PayerSpent());
        _fun_ekuboPayV2 = 0;
        require(!_fun_transferFrom, WitnessNotSpent(_fun_transferFrom));
        return 1;
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
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
                    require((_fun_ekuboPayV2 ^ address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v8 = _fun_uniV3ForkSwap;
                    require(!v8, ReentrantCallback(v8));
                    _fun_uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v9 = address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1e40cd + 32:v1e40cd + 32 + 196 + v3ee8arg0x4.length], MEM[0:0]).gas(msg.gas);
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
                    require((_fun_ekuboPayV2 ^ address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v15 = _fun_uniV3ForkSwap;
                    require(!v15, ReentrantCallback(v15));
                    _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v16 = address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1e4040 + 32:v1e4040 + 32 + 196 + v3ee8arg0x4.length], MEM[0:0]).gas(msg.gas);
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
                require((_fun_ekuboPayV2 ^ address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v22 = _fun_uniV3ForkSwap;
                require(!v22, ReentrantCallback(v22));
                _fun_uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v23 = address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1e3fb3 + 32:v1e3fb3 + 32 + 196 + v3ee8arg0x4.length], MEM[0:0]).gas(msg.gas);
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
            require((_fun_ekuboPayV2 ^ address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v29 = _fun_uniV3ForkSwap;
            require(!v29, ReentrantCallback(v29));
            _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v30 = address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v3ee8arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1e3f26 + 32:v1e3f26 + 32 + 196 + v3ee8arg0x4.length], MEM[0:0]).gas(msg.gas);
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
                    require((_fun_ekuboPayV2 ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v6 = _fun_uniV3ForkSwap;
                    require(!v6, ReentrantCallback(v6));
                    _fun_uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v7 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1e4301 + 32:v1e4301 + 32 + 196 + v41f7arg0x5.length], MEM[0:0]).gas(msg.gas);
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
                    require((_fun_ekuboPayV2 ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v13 = _fun_uniV3ForkSwap;
                    require(!v13, ReentrantCallback(v13));
                    _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v14 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1e4274 + 32:v1e4274 + 32 + 196 + v41f7arg0x5.length], MEM[0:0]).gas(msg.gas);
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
                require((_fun_ekuboPayV2 ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v20 = _fun_uniV3ForkSwap;
                require(!v20, ReentrantCallback(v20));
                _fun_uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v21 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1e41e7 + 32:v1e41e7 + 32 + 196 + v41f7arg0x5.length], MEM[0:0]).gas(msg.gas);
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
            require((_fun_ekuboPayV2 ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v27 = _fun_uniV3ForkSwap;
            require(!v27, ReentrantCallback(v27));
            _fun_uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v28 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v41f7arg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1e415a + 32:v1e415a + 32 + 196 + v41f7arg0x5.length], MEM[0:0]).gas(msg.gas);
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
    v0 = _fun_transferFrom;
    _fun_transferFrom = 0;
    require(v0, ConfusedDeputy());
    v1 = new bytes[](175);
    require(!((v1 + uint8(-32) > uint64.max) | (v1 + uint8(-32) < v1)), Panic(65)); // failed memory allocation (too much memory)
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
    v2, /* uint256 */ v3 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v4, v4, v4, v4, v4, v4, address(_fun_ekuboPayV2), v0, 320, 527).gas(msg.gas);
    if (!v2) {
        v5 = RETURNDATASIZE();
        revert(v4, v4, v4, v4, v4, v4, v4, v4, v4, 527);
    } else {
        return ;
    }
}

function allocate_and_zero_memory_struct_struct_PoolKey_14919() private { 
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
            fun_safeApprove(varg0, varg1);
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

function fun_checkZeroSellAmount(struct(39) varg0) private { 
    if (!MEM[varg0.word2]) {
        MEM[varg0.word2] = 0xfb772a88;
        revert(28 + varg0.word2, 36);
    } else {
        return ;
    }
}

function fun__callSelector(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2, 0xcbf0dbf5000000000000000000000000, varg0);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg0) << 96) * varg0, varg1, varg2, varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function fun_callSelector(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3, varg1);
    v0, /* uint256 */ v1 = msg.sender.call(varg0 << 96, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg2, varg3).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function fun_safeApprove(uint256 varg0, uint256 varg1) private { 
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
        require((_fun_ekuboPayV2 ^ msg.sender) << 96, ConfusedDeputy());
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

function 0x97f(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0xea8(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21) public payable { 
    if (msg.data.length >= 4) {
        if (!(0xfd3ad6d4 - (function_selector >> 224))) {
            executeMetaTxn((address,address,uint256),bytes[],bytes32,address,bytes);
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
        if (v1) {
            if (3 == v1) {
                v2 = v3 = varg10 >> 128;
                v4 = v5 = 0;
                v6 = new struct(39);
                v6.word6 = 0;
                MEM[v16360x48f5V0x15ddV0x1c + 480:v16360x48f5V0x15ddV0x1c + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                require(!((MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 352] | MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 320]) * (MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 320] ^ address(varg18 >> 96))), MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 320], address(varg18 >> 96));
                require(address(varg18 >> 96), ZeroToken());
                MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 320] = address(varg18 >> 96);
                v6.word0 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 288;
                v6.word1 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 288;
                v6.word2 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 288;
                v6.word4 = uint128(varg10);
                v6.word5 = varg13 >> 128;
                v7 = v8 = msg.data.length;
                v9 = v10 = msg.data.length;
                v11 = v12 = 0;
                if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v6) + 288)])) {
                    if (address(varg16 >> 96) - this) {
                        require(!bool(address(varg16 >> 96)), Panic(1)); // low-level assert failed
                        v7 = v13 = 177;
                        v4 = v14 = 0x1 & varg21;
                        v11 = v15 = msg.data[189 + (varg5 - 89) - 3] >> 232;
                        v9 = v16 = 189 + (varg5 - 89) - v15 - 3;
                        v17 = v18 = 306;
                        require(v18 <= v16);
                        v19 = v20 = varg5 - 89 - v15 - 120;
                    } else {
                        v17 = v21 = 211;
                        v19 = v22 = varg5 - 89 - 22;
                        v23 = fun_fastBalanceOf(MEM[32 + v6.word2], this);
                        MEM[v6.word2] = uint16(varg18 >> 80) * v23 / 10000;
                    }
                } else {
                    require(this == address(varg16 >> 96), Panic(1)); // low-level assert failed
                    MEM[v6.word2] = this.balance * uint16(varg18 >> 80) / 10000;
                    v19 = v24 = varg5 - 89 - 22;
                    v17 = v25 = 211;
                }
                require(uint24.max >= v19, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (address(varg16 >> 96) != this) {
                    MEM[v6.word2] = msg.data[v7 + 32];
                }
                if (0x1000000000000000000000000000000 & varg13) {
                    v26 = v27 = MEM[v6.word2];
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v6.word2])) {
                        v28, /* uint256 */ v29 = msg.sender.startPayments(MEM[32 + v6.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                        require(v28, v29, RETURNDATASIZE());
                        if (this - address(varg16 >> 96)) {
                            v30 = new struct(2);
                            require(!((v30 + 64 > uint64.max) | (v30 + 64 < v30)), Panic(65)); // failed memory allocation (too much memory)
                            v30.word0 = msg.sender;
                            v30.word1 = v27;
                            require(msg.data.length - v7 >= 128);
                            v31 = new struct(3);
                            require(!((v31 + 96 > uint64.max) | (v31 + 96 < v31)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v7 >= 64);
                            v32 = new struct(2);
                            require(!((v32 + 64 > uint64.max) | (v32 + 64 < v32)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v7] - address(msg.data[v7])));
                            v32.word0 = msg.data[v7];
                            v32.word1 = msg.data[v7 + 32];
                            v31.word0 = v32;
                            v31.word1 = msg.data[v7 + 64];
                            v31.word2 = msg.data[v7 + 96];
                            require(v11 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v33 = new bytes[](v11);
                            require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                            require(v9 + v11 <= msg.data.length);
                            CALLDATACOPY(v33.data, v9, v11);
                            v33[v11] = 0;
                            fun_transferFrom(v31, v30, v33, v4);
                        } else {
                            fun_safeTransfer(MEM[32 + v6.word2], msg.sender, v27);
                        }
                        v34 = msg.sender.completePayments(MEM[32 + v6.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                        require(v34, MEM[64], RETURNDATASIZE());
                        v26 = 0x12e103f1000000000000000000000000 >> 128;
                    } else {
                        fun_safeTransferETH(msg.sender, v27);
                    }
                    MEM[v6.word2] = v26;
                }
                require(!(MEM[v6.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                v6.word3 = MEM[v6.word2];
                fun_checkZeroSellAmount(v6);
                v35 = allocate_and_zero_memory_struct_struct_PoolKey_14919();
                while (v19 >= 47) {
                    v36 = v37 = msg.data[14 + v17];
                    v38 = v39 = 1;
                    if (v37 >> 248) {
                        if (!MEM[64 + v6.word0]) {
                            v6.word6 += v39;
                            MEM[(v39 + v6.word6 << 5) + (192 + v6)] = v6.word0;
                            MEM[64 + v6.word0] = (v39 + v6.word6 << 5) + (192 + v6);
                        }
                        if (v37 >> 248 > v39) {
                            if (!MEM[v6.word1]) {
                                if (MEM[64 + v6.word1]) {
                                    MEM[64 + v6.word1] = 0;
                                    v6.word6 = v6.word6 - 1;
                                    if ((v6.word6 << 5) + (192 + v6) - MEM[64 + v6.word1]) {
                                        MEM[MEM[64 + v6.word1]] = MEM[(v6.word6 << 5) + (192 + v6)];
                                        MEM[64 + MEM[(v6.word6 << 5) + (192 + v6)]] = MEM[64 + v6.word1];
                                    }
                                }
                            }
                            if ((v37 >> 248) - 2) {
                                require(3 == v37 >> 248, Panic(1)); // low-level assert failed
                                v36 = msg.data[34 + v17];
                                v38 = 21;
                                require(!((MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 352] | MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320]) * (MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] ^ address(v37 >> 88))), MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320], address(v37 >> 88));
                                require(address(v37 >> 88), ZeroToken());
                                MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] = address(v37 >> 88);
                                v6.word1 = address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288;
                            } else {
                                v6.word1 = v6.word0;
                            }
                        }
                        v38 = v40 = v38 + 20;
                        v41 = MEM[address(v36 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320];
                        require(!((MEM[address(v36 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 352] | v41) * (v41 ^ address(v36 >> 88))), v41, address(v36 >> 88));
                        require(address(v36 >> 88), ZeroToken());
                        MEM[address(v36 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] = address(v36 >> 88);
                        v6.word0 = address(v36 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288;
                        if (address(v36 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288 == v6.word2) {
                            MEM[v6.word2] = 0x784cb7b8;
                            revert(28 + v6.word2, 36);
                        }
                    }
                    v42 = v43 = (msg.data[v17] >> 240 & 0x7fff) * MEM[v6.word1] / 10000;
                    v44 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v6.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v6.word1] << 96) & (MEM[32 + v6.word0] << 96 < MEM[32 + v6.word1] << 96);
                    v35.word1 = address(address(MEM[32 + v6.word0]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v44);
                    v35.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v6.word1]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v44)) * address(address(MEM[32 + v6.word1]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v44);
                    v17 = 32 + (v38 + (14 + v17));
                    v19 = v19 - 14 - v38 - 32;
                    v35.word2 = msg.data[v38 + (14 + v17)];
                    require(uint24.max >= v19, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(0x8000 & msg.data[v17] >> 240)) {
                        MCOPY(52 + MEM[64], v35, 96);
                        MCOPY(32 + MEM[64], 64 + v35, 20);
                        v45 = msg.sender.forward(v46, v46, msg.data[2 + v17] >> 160, msg.data[2 + v17] >> 160, msg.data[2 + v17] >> 160, v43, v44 << 31).gas(msg.gas);
                        if (!v45) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!((64 > RETURNDATASIZE()) | int128(v43) ^ v43));
                            v47 = int128(MEM[0]);
                            v48 = (MEM[0] >> 128 ^ v47) * v44;
                            v49 = v6.word1;
                            v50 = MEM[0] >> 128 ^ v48;
                            if (v50 < 0) {
                                MEM[v49] = 0x4c085bf1;
                                revert(28 + v49, 36);
                            } else {
                                // Unknown jump to Block 0x1953B0x1c. Refer to 3-address code (TAC);
                            }
                        }
                    } else {
                        MCOPY(32 + MEM[64], v35, 96);
                        v51 = msg.sender.call(0, v46, v46, msg.data[2 + v17] >> 160, v44 << 31, msg.data[2 + v17] >> 160, v43).gas(msg.gas);
                        if (!v51) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!(int128(v43) ^ v43));
                            v47 = v52 = int128(MEM[0]);
                            v48 = v53 = (MEM[0] >> 128 ^ v52) * v44;
                            v49 = v54 = v6.word1;
                            v50 = v55 = MEM[0] >> 128 ^ v53;
                            if (v55 < 0) {
                                MEM[v54] = 0x4c085bf1;
                                revert(28 + v54, 36);
                            }
                        }
                    }
                    MEM[v49] = MEM[v49] - v50;
                    require(!((v50 > v42) | (v50 > MEM[v49])), Panic(17)); // arithmetic overflow or underflow
                    if (v47 ^ v48 > 0) {
                        MEM[v6.word0] = 0x3351b260;
                        revert(28 + v6.word0, 36);
                    } else {
                        MEM[v6.word0] += 0 - (v47 ^ v48);
                    }
                }
                if (MEM[64 + v6.word0]) {
                    MEM[64 + v6.word0] = 0;
                    v6.word6 = v6.word6 - 1;
                    if ((v6.word6 << 5) + (192 + v6) - MEM[64 + v6.word0]) {
                        MEM[MEM[64 + v6.word0]] = MEM[(v6.word6 << 5) + (192 + v6)];
                        MEM[64 + MEM[(v6.word6 << 5) + (192 + v6)]] = MEM[64 + v6.word0];
                    }
                }
                if (!MEM[v6.word1]) {
                    if (MEM[64 + v6.word1]) {
                        MEM[64 + v6.word1] = 0;
                        v6.word6 = v6.word6 - 1;
                        if ((v6.word6 << 5) + (192 + v6) - MEM[64 + v6.word1]) {
                            MEM[MEM[64 + v6.word1]] = MEM[(v6.word6 << 5) + (192 + v6)];
                            MEM[64 + MEM[(v6.word6 << 5) + (192 + v6)]] = MEM[64 + v6.word1];
                        }
                    }
                }
                if (v6.word6) {
                    require(v6.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v6.word7 - v6.word2) {
                        fun__callSelector(address(MEM[v6.word7 + 32]), this, MEM[v6.word7]);
                    }
                    v56 = 1;
                    while (v56 < v6.word6) {
                        0x17b9(MEM[MEM[(v56 << 5) + (192 + v6) + 32]], MEM[32 + MEM[(v56 << 5) + (192 + v6) + 32]]);
                        v56 = v56 + 1;
                    }
                }
                v57 = MEM[32 + v6.word0];
                v58 = MEM[v6.word0];
                if (v58 >= v3) {
                    fun__callSelector(v57, varg9 >> 96, v58);
                    if (bool(!(0x1000000000000000000000000000000 & varg13))) {
                        require(v6.word3 != MEM[v6.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v6.word2]));
                        v59 = v60 = v6.word3 - MEM[v6.word2];
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v6.word2])) {
                            v61, /* uint256 */ v62 = msg.sender.startPayments(MEM[32 + v6.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                            require(v61, v62, RETURNDATASIZE());
                            if (this - address(varg16 >> 96)) {
                                v63 = new struct(2);
                                require(!((v63 + 64 > uint64.max) | (v63 + 64 < v63)), Panic(65)); // failed memory allocation (too much memory)
                                v63.word0 = msg.sender;
                                v63.word1 = v60;
                                require(msg.data.length - v7 >= 128);
                                v64 = new struct(3);
                                require(!((v64 + 96 > uint64.max) | (v64 + 96 < v64)), Panic(65)); // failed memory allocation (too much memory)
                                require(msg.data.length - v7 >= 64);
                                v65 = new struct(2);
                                require(!((v65 + 64 > uint64.max) | (v65 + 64 < v65)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(msg.data[v7] - address(msg.data[v7])));
                                v65.word0 = msg.data[v7];
                                v65.word1 = msg.data[v7 + 32];
                                v64.word0 = v65;
                                v64.word1 = msg.data[v7 + 64];
                                v64.word2 = msg.data[v7 + 96];
                                require(v11 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v66 = new bytes[](v11);
                                require(!((v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
                                require(v9 + v11 <= msg.data.length);
                                CALLDATACOPY(v66.data, v9, v11);
                                v66[v11] = 0;
                                fun_transferFrom(v64, v63, v66, v4);
                            } else {
                                fun_safeTransfer(MEM[32 + v6.word2], msg.sender, v60);
                            }
                            v67 = msg.sender.completePayments(MEM[32 + v6.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                            require(v67, MEM[64], RETURNDATASIZE());
                        } else {
                            fun_safeTransferETH(msg.sender, v60);
                        }
                    } else {
                        if (MEM[v6.word2]) {
                            if (address(varg16 >> 96) != this) {
                                v68 = _fun_ekuboPayV2;
                            } else {
                                v68 = v69 = this;
                            }
                            require(MEM[v6.word2], MEM[32 + v6.word2], 0xcbf0dbf5000000000000000000000000);
                            v70, /* uint256 */ v71 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ MEM[32 + v6.word2]) << 96) * MEM[32 + v6.word2], v68, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ MEM[32 + v6.word2]) << 96) * MEM[32 + v6.word2], MEM[v6.word2]).gas(msg.gas);
                            require(v70, MEM[64], RETURNDATASIZE());
                        }
                        v72 = v73 = new bytes[](96);
                        MEM[v73.data] = 32;
                        MEM[64 + v73] = 32;
                        MEM[96 + v73] = v58;
                    }
                }
            } else if (6 == v1) {
                v2 = v74 = varg2 >> 128;
                v75 = v76 = 0;
                v77 = new struct(39);
                v77.word6 = 0;
                MEM[v48f5V0x10f0V0x1c + 480:v48f5V0x10f0V0x1c + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                v78 = MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 320];
                require(!((MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 352] | v78) * (v78 ^ address(varg8 >> 96))), v78, address(varg8 >> 96));
                require(address(varg8 >> 96), ZeroToken());
                MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 320] = address(varg8 >> 96);
                v77.word0 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 288;
                v77.word1 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 288;
                v77.word2 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 288;
                v77.word4 = uint128(varg2);
                v77.word5 = varg4 >> 128;
                v79 = v80 = msg.data.length;
                v81 = v82 = msg.data.length;
                v83 = v84 = 0;
                if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v77) + 288)])) {
                    if (address(varg6 >> 96) - this) {
                        require(!bool(address(varg6 >> 96)), Panic(1)); // low-level assert failed
                        v79 = v85 = 77;
                        v75 = v86 = 0x1 & varg17;
                        v83 = v87 = msg.data[89 + (msg.data.length - 89) - 3] >> 232;
                        v81 = v88 = 89 + (msg.data.length - 89) - v87 - 3;
                        v89 = v90 = 206;
                        require(v90 <= v88);
                        v91 = v92 = msg.data.length - 89 - v87 - 120;
                    } else {
                        v89 = v93 = 111;
                        v91 = v94 = msg.data.length - 89 - 22;
                        v95 = fun_fastBalanceOf(MEM[32 + v77.word2], this);
                        MEM[v77.word2] = uint16(varg8 >> 80) * v95 / 10000;
                    }
                } else {
                    require(this == address(varg6 >> 96), Panic(1)); // low-level assert failed
                    MEM[v77.word2] = this.balance * uint16(varg8 >> 80) / 10000;
                    v91 = v96 = msg.data.length - 89 - 22;
                    v89 = v97 = 111;
                }
                require(uint24.max >= v91, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if ((varg6 >> 96) - this) {
                    MEM[v77.word2] = msg.data[v79 + 32];
                }
                if (0x1000000000000000000000000000000 & varg4) {
                    if (this - address(varg6 >> 96)) {
                        v98 = new struct(2);
                        require(!((v98 + 64 > uint64.max) | (v98 + 64 < v98)), Panic(65)); // failed memory allocation (too much memory)
                        v98.word0 = msg.sender;
                        v98.word1 = MEM[v77.word2];
                        require(msg.data.length - v79 >= 128);
                        v99 = new struct(3);
                        require(!((v99 + 96 > uint64.max) | (v99 + 96 < v99)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v79 >= 64);
                        v100 = new struct(2);
                        require(!((v100 + 64 > uint64.max) | (v100 + 64 < v100)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v79] - address(msg.data[v79])));
                        v100.word0 = msg.data[v79];
                        v100.word1 = msg.data[v79 + 32];
                        v99.word0 = v100;
                        v99.word1 = msg.data[v79 + 64];
                        v99.word2 = msg.data[v79 + 96];
                        require(v83 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v101 = new bytes[](v83);
                        require(!((v101 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v83) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v101 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v83) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v101)), Panic(65)); // failed memory allocation (too much memory)
                        require(v81 + v83 <= msg.data.length);
                        CALLDATACOPY(v101.data, v81, v83);
                        v101[v83] = 0;
                        fun_transferFrom(v99, v98, v101, v75);
                    } else if (MEM[v77.word2]) {
                        fun_safeTransfer(MEM[32 + v77.word2], msg.sender, MEM[v77.word2]);
                    }
                    v102 = msg.sender.settle(MEM[32 + v77.word2], 0x15afd409000000000000000000000000, MEM[v77.word2]).gas(msg.gas);
                    if (!v102) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                        MEM[v77.word2] = MEM[0];
                    }
                }
                v77.word3 = MEM[v77.word2];
                fun_checkZeroSellAmount(v77);
                v103 = v104 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
                v105 = v106 = MEM[64];
                require(!((v106 + 224 > uint64.max) | (v106 + 224 < v106)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v106 + 224;
                MEM[v106] = 0;
                MEM[v106 + 32] = 0;
                MEM[v106 + 64] = 0;
                MEM[v106 + 96] = 0;
                MEM[v106 + 128] = 0;
                MEM[v106 + 160] = 0;
                MEM[v106 + 192] = 96;
                while (v91 >= 3) {
                    v107 = v108 = msg.data[2 + v89];
                    v109 = v110 = 1;
                    if (v108 >> 248) {
                        if (!MEM[64 + v77.word0]) {
                            v77.word6 += v110;
                            MEM[(v110 + v77.word6 << 5) + (192 + v77)] = v77.word0;
                            MEM[64 + v77.word0] = (v110 + v77.word6 << 5) + (192 + v77);
                        }
                        if (v108 >> 248 > v110) {
                            if (!MEM[v77.word1]) {
                                if (MEM[64 + v77.word1]) {
                                    MEM[64 + v77.word1] = 0;
                                    v77.word6 = v77.word6 - 1;
                                    if ((v77.word6 << 5) + (192 + v77) - MEM[64 + v77.word1]) {
                                        MEM[MEM[64 + v77.word1]] = MEM[(v77.word6 << 5) + (192 + v77)];
                                        MEM[64 + MEM[(v77.word6 << 5) + (192 + v77)]] = MEM[64 + v77.word1];
                                    }
                                }
                            }
                            if ((v108 >> 248) - 2) {
                                require(3 == v108 >> 248, Panic(1)); // low-level assert failed
                                v107 = msg.data[22 + v89];
                                v109 = 21;
                                v111 = MEM[address(v108 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 320];
                                require(!((MEM[address(v108 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 352] | v111) * (v111 ^ address(v108 >> 88))), v111, address(v108 >> 88));
                                require(address(v108 >> 88), ZeroToken());
                                MEM[address(v108 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 320] = address(v108 >> 88);
                                v77.word1 = address(v108 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 288;
                            } else {
                                v77.word1 = v77.word0;
                            }
                        }
                        v109 = v112 = v109 + 20;
                        v113 = MEM[address(v107 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 320];
                        require(!((MEM[address(v107 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 352] | v113) * (v113 ^ address(v107 >> 88))), v113, address(v107 >> 88));
                        require(address(v107 >> 88), ZeroToken());
                        MEM[address(v107 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 320] = address(v107 >> 88);
                        v77.word0 = address(v107 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 288;
                        if (address(v107 >> 88) * v77.word4 % v77.word5 % 768 + (192 + v77) + 288 == v77.word2) {
                            MEM[v77.word2] = 0x784cb7b8;
                            revert(28 + v77.word2, 36);
                        }
                    }
                    v89 = v109 + (2 + v89);
                    v91 = v91 - 2 - v109;
                    if (msg.data[v89] >> 240 & 0xc000) {
                        require(uint24.max >= v91, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (msg.data[v89] >> 240 & 0x4000) {
                            MEM[v103 + 32] = 1;
                            MEM[v103 + 64] = address(MEM[32 + v77.word1]);
                        } else {
                            MEM[v103 + 32] = 0;
                            MEM[v103 + 64] = address(MEM[32 + v77.word0]);
                        }
                        MEM[v103 + 96] = MEM[v77.word1] * (msg.data[v89] >> 240 & 0x3fff) / 10000;
                        MEM[v103 - 32] = 0x43583be5;
                        v114 = msg.sender.call(MEM[v13da_0x6V0x1c - 4:v13da_0x6V0x1c - 4 + 164], MEM[0:96]).gas(msg.gas);
                        if (!v114) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v103 - 32] = MEM[v103 - 32];
                            MEM[v77.word1] = MEM[v77.word1] - MEM[32];
                            require(MEM[v77.word0] <= MEM[v77.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v77.word0] = MEM[v77.word0] + MEM[64];
                        }
                    } else {
                        MEM[32 + v105] = msg.data[v89] >> 96;
                        MEM[v105 + 64] = address(MEM[32 + v77.word1]);
                        MEM[v105 + 96] = address(MEM[32 + v77.word0]);
                        MEM[v105 + 128] = MEM[v77.word1] * (msg.data[v89] >> 240) / 10000;
                        v89 = 20 + v89 + (msg.data[20 + v89] >> 232) + 3;
                        v91 = v91 - 20 - (msg.data[20 + v89] >> 232) - 3;
                        require(msg.data[20 + v89] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v115 = new bytes[](msg.data[20 + v89] >> 232);
                        require(!((v115 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v89] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v115 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v89] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v115)), Panic(65)); // failed memory allocation (too much memory)
                        require(23 + v89 + (msg.data[20 + v89] >> 232) <= msg.data.length);
                        CALLDATACOPY(v115.data, 23 + v89, msg.data[20 + v89] >> 232);
                        v115[msg.data[20 + v89] >> 232] = 0;
                        MEM[v105 + 192] = v115;
                        require(uint24.max >= v91, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[v105 - 64] = 0x2bfb780c;
                        MEM[v105 - 32] = 32;
                        MEM[192 + v105] = MEM[192 + v105] - v105;
                        v116 = msg.sender.call(MEM[v13da_0x5V0x1c - 36:v13da_0x5V0x1c - 36 + MEM[MEM[192 + v13da_0x5V0x1c]] + MEM[192 + v13da_0x5V0x1c] - v13da_0x5V0x1c + 68], MEM[0:96]).gas(msg.gas);
                        if (!v116) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v105 - 64] = MEM[v105 - 64];
                            MEM[v105 - 32] = MEM[v105 - 32];
                            MEM[v77.word1] = MEM[v77.word1] - MEM[32];
                            require(MEM[v77.word0] <= MEM[v77.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v77.word0] = MEM[v77.word0] + MEM[64];
                            MEM[192 + v105] = 96;
                            MEM[64] = MEM[64];
                        }
                    }
                }
                if (MEM[64 + v77.word0]) {
                    MEM[64 + v77.word0] = 0;
                    v77.word6 = v77.word6 - 1;
                    if ((v77.word6 << 5) + (192 + v77) - MEM[64 + v77.word0]) {
                        MEM[MEM[64 + v77.word0]] = MEM[(v77.word6 << 5) + (192 + v77)];
                        MEM[64 + MEM[(v77.word6 << 5) + (192 + v77)]] = MEM[64 + v77.word0];
                    }
                }
                if (!MEM[v77.word1]) {
                    if (MEM[64 + v77.word1]) {
                        MEM[64 + v77.word1] = 0;
                        v77.word6 = v77.word6 - 1;
                        if ((v77.word6 << 5) + (192 + v77) - MEM[64 + v77.word1]) {
                            MEM[MEM[64 + v77.word1]] = MEM[(v77.word6 << 5) + (192 + v77)];
                            MEM[64 + MEM[(v77.word6 << 5) + (192 + v77)]] = MEM[64 + v77.word1];
                        }
                    }
                }
                if (v77.word6) {
                    require(v77.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v77.word7 - v77.word2) {
                        fun_callSelector(0xae639329, address(MEM[v77.word7 + 32]), this, MEM[v77.word7]);
                    }
                    v117 = 1;
                    while (v117 < v77.word6) {
                        0x134c(MEM[MEM[(v117 << 5) + (192 + v77) + 32]], MEM[32 + MEM[(v117 << 5) + (192 + v77) + 32]]);
                        v117 = v117 + 1;
                    }
                }
                v57 = v118 = MEM[32 + v77.word0];
                v58 = v119 = MEM[v77.word0];
                if (v119 >= v74) {
                    fun_callSelector(0xae639329, v118, function_selector >> 96, v119);
                    if (bool(!(0x1000000000000000000000000000000 & varg4))) {
                        require(v77.word3 != MEM[v77.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v77.word2]));
                        if (this - address(varg6 >> 96)) {
                            v120 = new struct(2);
                            require(!((v120 + 64 > uint64.max) | (v120 + 64 < v120)), Panic(65)); // failed memory allocation (too much memory)
                            v120.word0 = msg.sender;
                            v120.word1 = v77.word3 - MEM[v77.word2];
                            require(msg.data.length - v79 >= 128);
                            v121 = new struct(3);
                            require(!((v121 + 96 > uint64.max) | (v121 + 96 < v121)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v79 >= 64);
                            v122 = new struct(2);
                            require(!((v122 + 64 > uint64.max) | (v122 + 64 < v122)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v79] - address(msg.data[v79])));
                            v122.word0 = msg.data[v79];
                            v122.word1 = msg.data[v79 + 32];
                            v121.word0 = v122;
                            v121.word1 = msg.data[v79 + 64];
                            v121.word2 = msg.data[v79 + 96];
                            require(v83 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v123 = new bytes[](v83);
                            require(!((v123 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v83) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v123 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v83) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v123)), Panic(65)); // failed memory allocation (too much memory)
                            require(v81 + v83 <= msg.data.length);
                            CALLDATACOPY(v123.data, v81, v83);
                            v123[v83] = 0;
                            fun_transferFrom(v121, v120, v123, v75);
                        } else if (v77.word3 - MEM[v77.word2]) {
                            fun_safeTransfer(MEM[32 + v77.word2], msg.sender, v77.word3 - MEM[v77.word2]);
                        }
                        v124 = msg.sender.settle(MEM[32 + v77.word2], 0x15afd409000000000000000000000000, v77.word3 - MEM[v77.word2]).gas(msg.gas);
                        if (!v124) {
                            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                            revert(uint24(MEM[64]), RETURNDATASIZE());
                        } else {
                            MEM[52] = 0;
                        }
                    } else if (bool(MEM[v77.word2])) {
                        if (this - (varg6 >> 96)) {
                            v125 = _fun_ekuboPayV2;
                        } else {
                            v125 = v126 = this;
                        }
                        require(MEM[v77.word2], MEM[32 + v77.word2]);
                        v127, /* uint256 */ v128 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v77.word2] << 96) * (MEM[32 + v77.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v77.word2] << 96) * (MEM[32 + v77.word2] << 96), v125, MEM[v77.word2]).gas(msg.gas);
                        require(v127, MEM[64], RETURNDATASIZE());
                        MEM[96] = 0;
                    }
                    v72 = v129 = new bytes[](32);
                    MEM[v129.data] = v119;
                }
            } else {
                if (5 == v1) {
                    v130 = v131 = varg7 >> 128;
                    v132 = v133 = 0;
                    v134 = new struct(39);
                    v134.word6 = 0;
                    MEM[v48f5V0xc07V0x1c + 480:v48f5V0xc07V0x1c + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    v135 = MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 320];
                    require(!((MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 352] | v135) * (v135 ^ address(varg14 >> 96))), v135, address(varg14 >> 96));
                    require(address(varg14 >> 96), ZeroToken());
                    MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 320] = address(varg14 >> 96);
                    v134.word0 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 288;
                    v134.word1 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 288;
                    v134.word2 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 288;
                    v134.word4 = uint128(varg7);
                    v134.word5 = varg10 >> 128;
                    v136 = v137 = msg.data.length;
                    v138 = v139 = msg.data.length;
                    v140 = v141 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v134) + 288)])) {
                        if (address(varg12 >> 96) - this) {
                            require(!bool(address(varg12 >> 96)), Panic(1)); // low-level assert failed
                            v136 = v142 = 145;
                            v132 = v143 = 0x1 & varg20;
                            v140 = v144 = msg.data[157 + (varg3 - 89) - 3] >> 232;
                            v138 = v145 = 157 + (varg3 - 89) - v144 - 3;
                            v146 = v147 = 274;
                            require(v147 <= v145);
                            v148 = v149 = varg3 - 89 - v144 - 120;
                        } else {
                            v146 = v150 = 179;
                            v148 = v151 = varg3 - 89 - 22;
                            v152 = fun_fastBalanceOf(MEM[32 + v134.word2], this);
                            MEM[v134.word2] = uint16(varg14 >> 80) * v152 / 10000;
                        }
                    } else {
                        require(this == address(varg12 >> 96), Panic(1)); // low-level assert failed
                        MEM[v134.word2] = this.balance * uint16(varg14 >> 80) / 10000;
                        v148 = v153 = varg3 - 89 - 22;
                        v146 = v154 = 179;
                    }
                    require(uint24.max >= v148, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if ((varg12 >> 96) - this) {
                        MEM[v134.word2] = msg.data[v136 + 32];
                    }
                    if (0x1000000000000000000000000000000 & varg10) {
                        v155, /* uint256 */ v156 = msg.sender.sync(MEM[32 + v134.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v155, v156, RETURNDATASIZE());
                        if (this - address(varg12 >> 96)) {
                            v157 = new struct(2);
                            require(!((v157 + 64 > uint64.max) | (v157 + 64 < v157)), Panic(65)); // failed memory allocation (too much memory)
                            v157.word0 = msg.sender;
                            v157.word1 = MEM[v134.word2];
                            require(msg.data.length - v136 >= 128);
                            v158 = new struct(3);
                            require(!((v158 + 96 > uint64.max) | (v158 + 96 < v158)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v136 >= 64);
                            v159 = new struct(2);
                            require(!((v159 + 64 > uint64.max) | (v159 + 64 < v159)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v136] - address(msg.data[v136])));
                            v159.word0 = msg.data[v136];
                            v159.word1 = msg.data[v136 + 32];
                            v158.word0 = v159;
                            v158.word1 = msg.data[v136 + 64];
                            v158.word2 = msg.data[v136 + 96];
                            require(v140 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v160 = new bytes[](v140);
                            require(!((v160 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v140) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v160 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v140) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v160)), Panic(65)); // failed memory allocation (too much memory)
                            require(v138 + v140 <= msg.data.length);
                            CALLDATACOPY(v160.data, v138, v140);
                            v160[v140] = 0;
                            fun_transferFrom(v158, v157, v160, v132);
                        } else {
                            fun_safeTransfer(MEM[32 + v134.word2], msg.sender, MEM[v134.word2]);
                        }
                        v161 = msg.sender.settle().gas(msg.gas);
                        require(v161, MEM[64], RETURNDATASIZE());
                        MEM[v134.word2] = MEM[0];
                    }
                    v134.word3 = MEM[v134.word2];
                    fun_checkZeroSellAmount(v134);
                    v162 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
                    v163 = allocate_and_zero_memory_struct_struct_PoolKey_14919();
                    while (v148 >= 52) {
                        v163.word2 = msg.data[2 + v146] >> 96;
                        v164 = v165 = msg.data[v146 + 22];
                        v166 = v167 = 1;
                        if (v165 >> 248) {
                            if (!MEM[64 + v134.word0]) {
                                v134.word6 += v167;
                                MEM[(v167 + v134.word6 << 5) + (192 + v134)] = v134.word0;
                                MEM[64 + v134.word0] = (v167 + v134.word6 << 5) + (192 + v134);
                            }
                            if (v165 >> 248 > v167) {
                                if (!MEM[v134.word1]) {
                                    if (MEM[64 + v134.word1]) {
                                        MEM[64 + v134.word1] = 0;
                                        v134.word6 = v134.word6 - 1;
                                        if ((v134.word6 << 5) + (192 + v134) - MEM[64 + v134.word1]) {
                                            MEM[MEM[64 + v134.word1]] = MEM[(v134.word6 << 5) + (192 + v134)];
                                            MEM[64 + MEM[(v134.word6 << 5) + (192 + v134)]] = MEM[64 + v134.word1];
                                        }
                                    }
                                }
                                if ((v165 >> 248) - 2) {
                                    require(3 == v165 >> 248, Panic(1)); // low-level assert failed
                                    v164 = msg.data[20 + (v146 + 22)];
                                    v166 = 21;
                                    v168 = MEM[address(v165 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 320];
                                    require(!((MEM[address(v165 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 352] | v168) * (v168 ^ address(v165 >> 88))), v168, address(v165 >> 88));
                                    require(address(v165 >> 88), ZeroToken());
                                    MEM[address(v165 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 320] = address(v165 >> 88);
                                    v134.word1 = address(v165 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 288;
                                } else {
                                    v134.word1 = v134.word0;
                                }
                            }
                            v166 = v169 = v166 + 20;
                            v170 = MEM[address(v164 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 320];
                            require(!((MEM[address(v164 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 352] | v170) * (v170 ^ address(v164 >> 88))), v170, address(v164 >> 88));
                            require(address(v164 >> 88), ZeroToken());
                            MEM[address(v164 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 320] = address(v164 >> 88);
                            v134.word0 = address(v164 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 288;
                            if (address(v164 >> 88) * v134.word4 % v134.word5 % 768 + (192 + v134) + 288 == v134.word2) {
                                MEM[v134.word2] = 0x784cb7b8;
                                revert(28 + v134.word2, 36);
                            }
                        }
                        v171 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v134.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v134.word0] << 96) & (MEM[32 + v134.word1] << 96 < MEM[32 + v134.word0] << 96);
                        v162.word1 = address(MEM[32 + v134.word1] ^ (MEM[32 + v134.word0] ^ MEM[32 + v134.word1]) * v171);
                        v162.word0 = address(MEM[32 + v134.word0] ^ (MEM[32 + v134.word0] ^ MEM[32 + v134.word1]) * v171);
                        v162.word2 = msg.data[v166 + (v146 + 22)] >> 232;
                        v162.word3 = int24(uint24(msg.data[v166 + (v146 + 22)] >> 208));
                        v162.word4 = address(msg.data[v166 + (v146 + 22)] >> 48);
                        v146 = 26 + (v166 + (v146 + 22)) + (msg.data[26 + (v166 + (v146 + 22))] >> 232) + 3;
                        v148 = v148 - 22 - v166 - 26 - (msg.data[26 + (v166 + (v146 + 22))] >> 232) - 3;
                        require(uint24.max >= v148, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v163.word0 = bool(v171);
                        v163.word1 = 0 - MEM[v134.word1] * (msg.data[v146] >> 240) / 10000;
                        MCOPY(64 + MEM[64], 32 + v162, 128);
                        MCOPY(192 + MEM[64], v163, 96);
                        v172 = new uint256[](msg.data[26 + (v166 + (v146 + 22))] >> 232);
                        CALLDATACOPY(v172.data, 29 + (v166 + (v146 + 22)), msg.data[26 + (v166 + (v146 + 22))] >> 232);
                        v173 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v162.word0) * v162.word0, v46, v46, v46, v46, v46, v46, v46, v172).gas(msg.gas);
                        if (!v173) {
                            v174 = RETURNDATASIZE();
                            revert(v46, v46, v46, v46, v46, v46, v46, v46, v46, msg.data[26 + (v166 + (v146 + 22))] >> 232);
                        } else {
                            v175 = _SafeSub(MEM[v134.word1], 0 - (int128(MEM[0]) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v171));
                            MEM[v134.word1] = v175;
                            if (int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v171 < 0) {
                                MEM[v134.word0] = 0x4c085bf1;
                                revert(28 + v134.word0, 36);
                            } else {
                                MEM[v134.word0] += int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v171;
                            }
                        }
                    }
                    if (MEM[64 + v134.word0]) {
                        MEM[64 + v134.word0] = 0;
                        v134.word6 = v134.word6 - 1;
                        if ((v134.word6 << 5) + (192 + v134) - MEM[64 + v134.word0]) {
                            MEM[MEM[64 + v134.word0]] = MEM[(v134.word6 << 5) + (192 + v134)];
                            MEM[64 + MEM[(v134.word6 << 5) + (192 + v134)]] = MEM[64 + v134.word0];
                        }
                    }
                    if (!MEM[v134.word1]) {
                        if (MEM[64 + v134.word1]) {
                            MEM[64 + v134.word1] = 0;
                            v134.word6 = v134.word6 - 1;
                            if ((v134.word6 << 5) + (192 + v134) - MEM[64 + v134.word1]) {
                                MEM[MEM[64 + v134.word1]] = MEM[(v134.word6 << 5) + (192 + v134)];
                                MEM[64 + MEM[(v134.word6 << 5) + (192 + v134)]] = MEM[64 + v134.word1];
                            }
                        }
                    }
                    if (v134.word6) {
                        require(v134.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v134.word7 - v134.word2) {
                            fun_callSelector(0xb0d9c09, address(MEM[v134.word7 + 32]), this, MEM[v134.word7]);
                        }
                        v176 = 1;
                        while (v176 < v134.word6) {
                            0xea8(MEM[MEM[(v176 << 5) + (192 + v134) + 32]], MEM[32 + MEM[(v176 << 5) + (192 + v134) + 32]]);
                            v176 = v176 + 1;
                        }
                    }
                    v177 = MEM[32 + v134.word0];
                    v58 = v178 = MEM[v134.word0];
                    if (v178 >= v131) {
                        fun_callSelector(0xb0d9c09, v177, varg5 >> 96, v178);
                        if (bool(!(0x1000000000000000000000000000000 & varg10))) {
                            require(v134.word3 != MEM[v134.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v134.word2]));
                            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v134.word2])) {
                                v179, /* uint256 */ v180 = msg.sender.sync(MEM[32 + v134.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v179, v180, RETURNDATASIZE());
                                if (this - address(varg12 >> 96)) {
                                    v181 = new struct(2);
                                    require(!((v181 + 64 > uint64.max) | (v181 + 64 < v181)), Panic(65)); // failed memory allocation (too much memory)
                                    v181.word0 = msg.sender;
                                    v181.word1 = v134.word3 - MEM[v134.word2];
                                    require(msg.data.length - v136 >= 128);
                                    v182 = new struct(3);
                                    require(!((v182 + 96 > uint64.max) | (v182 + 96 < v182)), Panic(65)); // failed memory allocation (too much memory)
                                    require(msg.data.length - v136 >= 64);
                                    v183 = new struct(2);
                                    require(!((v183 + 64 > uint64.max) | (v183 + 64 < v183)), Panic(65)); // failed memory allocation (too much memory)
                                    require(!(msg.data[v136] - address(msg.data[v136])));
                                    v183.word0 = msg.data[v136];
                                    v183.word1 = msg.data[v136 + 32];
                                    v182.word0 = v183;
                                    v182.word1 = msg.data[v136 + 64];
                                    v182.word2 = msg.data[v136 + 96];
                                    require(v140 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v184 = new bytes[](v140);
                                    require(!((v184 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v140) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v184 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v140) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v184)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v138 + v140 <= msg.data.length);
                                    CALLDATACOPY(v184.data, v138, v140);
                                    v184[v140] = 0;
                                    fun_transferFrom(v182, v181, v184, v132);
                                } else {
                                    fun_safeTransfer(MEM[32 + v134.word2], msg.sender, v134.word3 - MEM[v134.word2]);
                                }
                                v185 = msg.sender.settle().gas(msg.gas);
                                require(v185, MEM[64], RETURNDATASIZE());
                            } else {
                                v186, /* uint256 */ v187 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v186, MEM[64], RETURNDATASIZE());
                                v188 = msg.sender.settle().value(v134.word3 - MEM[v134.word2]).gas(msg.gas);
                                require(v188, MEM[64], RETURNDATASIZE());
                            }
                        } else if (bool(MEM[v134.word2])) {
                            if (this - (varg12 >> 96)) {
                                v189 = _fun_ekuboPayV2;
                            } else {
                                v189 = v190 = this;
                            }
                            require(MEM[v134.word2], MEM[32 + v134.word2]);
                            v191, /* uint256 */ v192 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v134.word2] << 96) * (MEM[32 + v134.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v134.word2] << 96) * (MEM[32 + v134.word2] << 96), v189, MEM[v134.word2]).gas(msg.gas);
                            require(v191, MEM[64], RETURNDATASIZE());
                            MEM[96] = 0;
                        } else {
                            v72 = v193 = new bytes[](96);
                            MEM[v193.data] = 32;
                            MEM[64 + v193] = 32;
                            MEM[96 + v193] = v178;
                        }
                    }
                } else if (1 == v1) {
                    v130 = v194 = varg10 >> 128;
                    v195 = v196 = 0;
                    v197 = new struct(39);
                    v197.word6 = 0;
                    MEM[v7450x48f5V0x6edV0x1c + 480:v7450x48f5V0x6edV0x1c + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    require(!((MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 352] | MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 320]) * (MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 320] ^ address(varg18 >> 96))), MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 320], address(varg18 >> 96));
                    require(address(varg18 >> 96), ZeroToken());
                    MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 320] = address(varg18 >> 96);
                    v197.word0 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 288;
                    v197.word1 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 288;
                    v197.word2 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 288;
                    v197.word4 = uint128(varg10);
                    v197.word5 = varg13 >> 128;
                    v198 = v199 = msg.data.length;
                    v200 = v201 = msg.data.length;
                    v202 = v203 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v197) + 288)])) {
                        if (address(varg16 >> 96) - this) {
                            require(!bool(address(varg16 >> 96)), Panic(1)); // low-level assert failed
                            v198 = v204 = 177;
                            v195 = v205 = 0x1 & varg21;
                            v202 = v206 = msg.data[189 + (varg5 - 89) - 3] >> 232;
                            v200 = v207 = 189 + (varg5 - 89) - v206 - 3;
                            v208 = v209 = 306;
                            require(v209 <= v207);
                            v210 = v211 = varg5 - 89 - v206 - 120;
                        } else {
                            v208 = v212 = 211;
                            v210 = v213 = varg5 - 89 - 22;
                            v214 = fun_fastBalanceOf(MEM[32 + v197.word2], this);
                            MEM[v197.word2] = uint16(varg18 >> 80) * v214 / 10000;
                        }
                    } else {
                        require(this == address(varg16 >> 96), Panic(1)); // low-level assert failed
                        MEM[v197.word2] = this.balance * uint16(varg18 >> 80) / 10000;
                        v210 = v215 = varg5 - 89 - 22;
                        v208 = v216 = 211;
                    }
                    require(uint24.max >= v210, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (address(varg16 >> 96) - this) {
                        MEM[v197.word2] = msg.data[v198 + 32];
                    }
                    if (0x1000000000000000000000000000000 & varg13) {
                        v217 = fun_ekuboPayV2(MEM[32 + v197.word2], varg16 >> 96, MEM[v197.word2], v198, v195, v200, v202);
                        MEM[v197.word2] = v217;
                    }
                    require(!(MEM[v197.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                    v197.word3 = MEM[v197.word2];
                    fun_checkZeroSellAmount(v197);
                    v218 = allocate_and_zero_memory_struct_struct_PoolKey_14919();
                    while (v210 >= 47) {
                        v219 = v220 = msg.data[14 + v208];
                        v221 = v222 = 1;
                        if (v220 >> 248) {
                            if (!MEM[64 + v197.word0]) {
                                v197.word6 += v222;
                                MEM[(v222 + v197.word6 << 5) + (192 + v197)] = v197.word0;
                                MEM[64 + v197.word0] = (v222 + v197.word6 << 5) + (192 + v197);
                            }
                            if (v220 >> 248 > v222) {
                                if (!MEM[v197.word1]) {
                                    if (MEM[64 + v197.word1]) {
                                        MEM[64 + v197.word1] = 0;
                                        v197.word6 = v197.word6 - 1;
                                        if ((v197.word6 << 5) + (192 + v197) - MEM[64 + v197.word1]) {
                                            MEM[MEM[64 + v197.word1]] = MEM[(v197.word6 << 5) + (192 + v197)];
                                            MEM[64 + MEM[(v197.word6 << 5) + (192 + v197)]] = MEM[64 + v197.word1];
                                        }
                                    }
                                }
                                if ((v220 >> 248) - 2) {
                                    require(3 == v220 >> 248, Panic(1)); // low-level assert failed
                                    v219 = msg.data[34 + v208];
                                    v221 = 21;
                                    require(!((MEM[address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 352] | MEM[address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320]) * (MEM[address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320] ^ address(v220 >> 88))), MEM[address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320], address(v220 >> 88));
                                    require(address(v220 >> 88), ZeroToken());
                                    MEM[address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320] = address(v220 >> 88);
                                    v197.word1 = address(v220 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 288;
                                } else {
                                    v197.word1 = v197.word0;
                                }
                            }
                            v221 = v223 = v221 + 20;
                            v224 = MEM[address(v219 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320];
                            require(!((MEM[address(v219 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 352] | v224) * (v224 ^ address(v219 >> 88))), v224, address(v219 >> 88));
                            require(address(v219 >> 88), ZeroToken());
                            MEM[address(v219 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 320] = address(v219 >> 88);
                            v197.word0 = address(v219 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 288;
                            if (address(v219 >> 88) * v197.word4 % v197.word5 % 768 + (192 + v197) + 288 == v197.word2) {
                                MEM[v197.word2] = 0x784cb7b8;
                                revert(28 + v197.word2, 36);
                            }
                        }
                        v225 = v226 = (msg.data[v208] >> 240 & 0x7fff) * MEM[v197.word1] / 10000;
                        v227 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v197.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v197.word1] << 96) & (MEM[32 + v197.word0] << 96 < MEM[32 + v197.word1] << 96);
                        v218.word1 = address(address(MEM[32 + v197.word0]) ^ (address(MEM[32 + v197.word1]) ^ address(MEM[32 + v197.word0])) * v227);
                        v218.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v197.word1]) ^ (address(MEM[32 + v197.word1]) ^ address(MEM[32 + v197.word0])) * v227)) * address(address(MEM[32 + v197.word1]) ^ (address(MEM[32 + v197.word1]) ^ address(MEM[32 + v197.word0])) * v227);
                        v208 = 32 + (v221 + (14 + v208));
                        v210 = v210 - 14 - v221 - 32;
                        v218.word2 = msg.data[v221 + (14 + v208)];
                        require(uint24.max >= v210, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (0 == !(0x8000 & msg.data[v208] >> 240)) {
                            MCOPY(32 + (v197 + 1248), 64 + v218, 20);
                            MCOPY(52 + (v197 + 1248), v218, 96);
                            v228 = msg.sender.forward(v46, v46, v46, v226, v226, v227, msg.data[2 + v208] >> 160, 0).gas(msg.gas);
                            if (!v228) {
                                RETURNDATACOPY(v197 + 1248, 0, RETURNDATASIZE());
                                revert(v197 + 1248, RETURNDATASIZE());
                            } else {
                                v229 = MEM[32];
                                require(!((64 > RETURNDATASIZE()) | int128(v226) ^ v226 | (int128(MEM[0]) ^ MEM[0] | int128(v229) ^ v229)));
                                v230 = (MEM[0] ^ v229) * v227;
                                v231 = v197.word1;
                                v232 = MEM[0] ^ v230;
                                if (v232 < 0) {
                                    MEM[v231] = 0x4c085bf1;
                                    revert(28 + v231, 36);
                                } else {
                                    // Unknown jump to Block 0xb19B0x1c. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            MCOPY(32 + (v197 + 1248), v218, 96);
                            v233 = msg.sender.call(0, v46, v46, v46, v226, v227, msg.data[2 + v208] >> 160, 0).gas(msg.gas);
                            if (!v233) {
                                RETURNDATACOPY(v197 + 1248, 0, RETURNDATASIZE());
                                revert(v197 + 1248, RETURNDATASIZE());
                            } else {
                                v229 = v234 = MEM[32];
                                v230 = v235 = (MEM[0x0] ^ v234) * v227;
                                v231 = v236 = v197.word1;
                                v232 = v237 = MEM[0x0] ^ v235;
                                if (v237 < 0) {
                                    MEM[v236] = 0x4c085bf1;
                                    revert(28 + v236, 36);
                                }
                            }
                        }
                        MEM[v231] = MEM[v231] - v232;
                        require(!((v232 > v225) | (v232 > MEM[v231])), Panic(17)); // arithmetic overflow or underflow
                        if (v229 ^ v230 > 0) {
                            MEM[v197.word0] = 0x3351b260;
                            revert(28 + v197.word0, 36);
                        } else {
                            MEM[v197.word0] += 0 - (v229 ^ v230);
                        }
                    }
                    if (MEM[64 + v197.word0]) {
                        MEM[64 + v197.word0] = 0;
                        v197.word6 = v197.word6 - 1;
                        if ((v197.word6 << 5) + (192 + v197) - MEM[64 + v197.word0]) {
                            MEM[MEM[64 + v197.word0]] = MEM[(v197.word6 << 5) + (192 + v197)];
                            MEM[64 + MEM[(v197.word6 << 5) + (192 + v197)]] = MEM[64 + v197.word0];
                        }
                    }
                    if (!MEM[v197.word1]) {
                        if (MEM[64 + v197.word1]) {
                            MEM[64 + v197.word1] = 0;
                            v197.word6 = v197.word6 - 1;
                            if ((v197.word6 << 5) + (192 + v197) - MEM[64 + v197.word1]) {
                                MEM[MEM[64 + v197.word1]] = MEM[(v197.word6 << 5) + (192 + v197)];
                                MEM[64 + MEM[(v197.word6 << 5) + (192 + v197)]] = MEM[64 + v197.word1];
                            }
                        }
                    }
                    if (v197.word6) {
                        require(v197.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v197.word7 - v197.word2) {
                            fun_callSelector(0x3a65ab6, address(MEM[v197.word7 + 32]), this, MEM[v197.word7]);
                        }
                        v238 = 1;
                        while (v238 < v197.word6) {
                            0x97f(MEM[MEM[(v238 << 5) + (192 + v197) + 32]], MEM[32 + MEM[(v238 << 5) + (192 + v197) + 32]]);
                            v238 = v238 + 1;
                        }
                    }
                    v177 = v239 = MEM[32 + v197.word0];
                    v58 = v240 = MEM[v197.word0];
                    if (v240 >= v194) {
                        fun_callSelector(0x3a65ab6, v239, varg9 >> 96, v240);
                        if (bool(!(0x1000000000000000000000000000000 & varg13))) {
                            require(v197.word3 != MEM[v197.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v197.word2]));
                            v241 = fun_ekuboPayV2(MEM[32 + v197.word2], varg16 >> 96, v197.word3 - MEM[v197.word2], v198, v195, v200, v202);
                        } else if (bool(MEM[v197.word2])) {
                            if (this - address(varg16 >> 96)) {
                                v242 = _fun_ekuboPayV2;
                            } else {
                                v242 = v243 = this;
                            }
                            require(MEM[v197.word2], MEM[32 + v197.word2]);
                            v244, /* uint256 */ v245 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v197.word2] << 96) * (MEM[32 + v197.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v197.word2] << 96) * (MEM[32 + v197.word2] << 96), v242, MEM[v197.word2]).gas(msg.gas);
                            require(v244, v197 + 1248, RETURNDATASIZE());
                            MEM[96] = 0;
                        }
                    }
                } else if (4 == v1) {
                    require(128 <= msg.data.length - 4);
                    if (0 == (msg.data[varg5.data] >> 96 == this)) {
                        require(!bool(msg.data[varg5.data] >> 96), Panic(1)); // low-level assert failed
                        v246 = new struct(2);
                        require(!((v246 + 64 > uint64.max) | (v246 + 64 < v246)), Panic(65)); // failed memory allocation (too much memory)
                        v246.word0 = msg.sender;
                        v246.word1 = (varg1 ^ varg3) * (varg1 > 0) ^ varg3;
                        require(msg.data.length - (varg5 + 44) >= 128);
                        v247 = new struct(3);
                        require(!((v247 + 96 > uint64.max) | (v247 + 96 < v247)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - (varg5 + 44) >= 64);
                        v248 = new struct(2);
                        require(!((v248 + 64 > uint64.max) | (v248 + 64 < v248)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[varg5 + 44] - address(msg.data[varg5 + 44])));
                        v248.word0 = msg.data[varg5 + 44];
                        v248.word1 = msg.data[varg5 + 44 + 32];
                        v247.word0 = v248;
                        v247.word1 = msg.data[varg5 + 44 + 64];
                        v247.word2 = msg.data[varg5 + 44 + 96];
                        require(varg5.length - 137 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v249 = new bytes[](varg5.length - 137);
                        require(!((v249 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v249 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v249)), Panic(65)); // failed memory allocation (too much memory)
                        require(varg5 + 173 + (varg5.length - 137) <= msg.data.length);
                        CALLDATACOPY(v249.data, varg5 + 173, varg5.length - 137);
                        v249[varg5.length - 137] = 0;
                        fun_transferFrom(v247, v246, v249, 0x1 & msg.data[varg5 + 141]);
                    } else {
                        fun_safeTransfer(msg.data[varg5 + 56] >> 96, msg.sender, (varg1 ^ varg3) * (varg1 > 0) ^ varg3);
                    }
                    v72 = v250 = MEM[64];
                    require(!((v250 + 32 > uint64.max) | (v250 + 32 < v250)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v250 + 32;
                    MEM[v250] = 0;
                    CALLDATACOPY(v250 + 32, msg.data.length, 0);
                } else {
                    require(2 == v1, Panic(81)); // call to a zero-initialized variable of internal function type
                    if (0 == 96 < msg.data.length - 4) {
                        fun_safeTransfer(varg3, msg.sender, varg5);
                    } else {
                        v251 = new struct(2);
                        require(!((v251 + 64 > uint64.max) | (v251 + 64 < v251)), Panic(65)); // failed memory allocation (too much memory)
                        v251.word0 = msg.sender;
                        v251.word1 = varg5;
                        require(msg.data.length - 36 >= 128);
                        v252 = new struct(3);
                        require(!((v252 + 96 > uint64.max) | (v252 + 96 < v252)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - 36 >= 64);
                        v253 = new struct(2);
                        require(!((v253 + 64 > uint64.max) | (v253 + 64 < v253)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(varg3 - address(varg3)));
                        v253.word0 = varg3;
                        v253.word1 = varg5;
                        v252.word0 = v253;
                        v252.word1 = varg9;
                        v252.word2 = varg11;
                        require(varg19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v254 = new bytes[](varg19);
                        require(!((v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v254 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v254)), Panic(65)); // failed memory allocation (too much memory)
                        require(228 + varg19 <= msg.data.length);
                        CALLDATACOPY(v254.data, 228, varg19);
                        v254[varg19] = 0;
                        fun_transferFrom(v252, v251, v254, varg15);
                    }
                }
                v72 = v255 = new bytes[](96);
                MEM[v255.data] = 32;
                MEM[64 + v255] = 32;
                MEM[96 + v255] = v58;
                revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v177, v130, v58));
            }
            v72 = v256 = new bytes[](96);
            MEM[v256.data] = 32;
            MEM[64 + v256] = 32;
            MEM[96 + v256] = v58;
            revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v57, v2, v58));
        } else {
            v257 = v258 = (0x67c4a3b0 == function_selector >> 224) & (4 <= msg.data.length);
            v72 = v259 = 96;
            if (!v258) {
                v257 = 0;
            } else {
                v72 = v260 = 0x352650ac2653508d946c4912b07895b22edd84cd;
            }
            require(v257);
        }
        return MEM[v22_0x0V0x23_0 + 32:v22_0x0V0x23_0 + 32 + MEM[v22_0x0V0x23_0]];
    }
}
