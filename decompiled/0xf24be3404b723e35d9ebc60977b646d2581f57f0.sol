// Decompiled by library.dedaub.com
// 2026.04.18 23:37 UTC

// Data structures and variables inferred from the use of storage instructions
mapping (address => uint256) _getSolvers; // STORAGE[0x8054751d605e5c08a2210bf]
uint256 _fun_transferFrom; // TRANSIENT_STORAGE[0xc7aebfbc05485e093720deaa]
uint256 _fun_toCanonicalSellAmount; // TRANSIENT_STORAGE[0xcd1e9517bb0cb8d0d5cde893]
uint256 _fun__uniV3ForkSwap; // TRANSIENT_STORAGE[0xcdccd5c65a7d4860ce3abbe9]



function 0x1178(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x1622(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

function 0x1a76(uint256 varg0, uint256 varg1) private { 
    require(varg0, 0xcbf0dbf5000000000000000000000000, varg1);
    v0, /* uint256 */ v1 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ varg1) << 96) * varg1, this, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
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
    v1 = fun_toCanonicalSellAmount(address(MEM[varg0.word0]), MEM[varg0.word0 + 32]);
    v0.word1 = v1;
    return v1, v0;
}

function receive() public payable { 
}

function executeMetaTxn(address varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(96 <= msg.data.length - 4);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    require(varg3 <= uint64.max);
    require(varg3 + 35 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(varg3 + (varg3.length << 5) + 36 <= msg.data.length);
    require(varg5 <= uint64.max);
    require(varg5 + 35 < msg.data.length);
    require(varg5.length <= uint64.max);
    require(varg5 + varg5.length + 36 <= msg.data.length);
    v1 = address(msg.sender ^ (msg.data[msg.data.length - 20] >> 96 ^ msg.sender) * ((3 < msg.data.length) & !((0xcf9e3c5a26621af382fa17f24f ^ msg.sender) << 96)));
    require(_getSolvers[v1] << 96, PermissionDenied());
    MCOPY(32 + v2.data, v0, 96);
    require(v1 != varg4, ConfusedDeputy());
    require(!_fun_transferFrom, ReentrantMetatransaction(_fun_transferFrom));
    _fun_transferFrom = keccak256(0xdc83993a2ffc65b01b71ed08790b6e39c5c55d76937b62a3b5085b02071f1259);
    require(varg4 << 96, ConfusedDeputy());
    require(!(_fun_toCanonicalSellAmount << 96), ReentrantPayer(_fun_toCanonicalSellAmount, 0x7407c0f8000000000000000000000000));
    _fun_toCanonicalSellAmount = varg4;
    require(varg3.length);
    v3 = msg.data[varg3 + msg.data[varg3.data] + 36] - 4;
    v4 = varg3 + msg.data[varg3.data] + 72;
    if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0xdfeb419) {
        if (0x45d8bb1f - (msg.data[varg3 + msg.data[varg3.data] + 68] >> 224)) {
            v5 = 0;
        } else {
            require(v4 + v3 - v4 >= 224);
            require(!(msg.data[v4] - address(msg.data[v4])));
            require(v4 + v3 - (v4 + 32) >= 128);
            v6 = new struct(3);
            require(!((v6 + 96 > uint64.max) | (v6 + 96 < v6)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + v3 - (v4 + 32) >= 64);
            v7 = new struct(2);
            require(!((v7 + 64 > uint64.max) | (v7 + 64 < v7)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
            v7.word0 = msg.data[v4 + 32];
            v7.word1 = msg.data[v4 + 32 + 32];
            v6.word0 = v7;
            v6.word1 = msg.data[v4 + 32 + 64];
            v6.word2 = msg.data[v4 + 32 + 96];
            require(msg.data[v4 + 160] <= uint64.max);
            require(v4 + msg.data[v4 + 160] + 31 < v4 + v3);
            require(msg.data[v4 + msg.data[v4 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v8 = new bytes[](msg.data[v4 + msg.data[v4 + 160]]);
            require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + 160]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + msg.data[v4 + 160] + 32 + msg.data[v4 + msg.data[v4 + 160]] <= v4 + v3);
            CALLDATACOPY(v8.data, v4 + msg.data[v4 + 160] + 32, msg.data[v4 + msg.data[v4 + 160]]);
            v8[msg.data[v4 + msg.data[v4 + 160]]] = 0;
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
            MEM[72 + v10] = MEM[32 + v6.word0];
            MCOPY(104 + v10, 32 + v6, 64);
            MEM8[168 + v10] = 0x0 & 0xFF;
            MCOPY(169 + v10, v9.data, v9.length);
            v11 = fun_toCanonicalSellAmount(address(MEM[v6.word0]), MEM[v6.word0 + 32]);
            v12 = fun_uniV3ForkSwap(address(msg.data[v4]), v8, v11, msg.data[v4 + 192], v10);
            v5 = v13 = 1;
        }
    } else {
        require(v4 + v3 - v4 >= 160);
        require(!(msg.data[v4] - address(msg.data[v4])));
        require(v4 + v3 - (v4 + 32) >= 128);
        v14 = new struct(3);
        require(!((v14 + 96 > uint64.max) | (v14 + 96 < v14)), Panic(65)); // failed memory allocation (too much memory)
        require(v4 + v3 - (v4 + 32) >= 64);
        v15 = new struct(2);
        require(!((v15 + 64 > uint64.max) | (v15 + 64 < v15)), Panic(65)); // failed memory allocation (too much memory)
        require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
        v15.word0 = msg.data[v4 + 32];
        v15.word1 = msg.data[v4 + 32 + 32];
        v14.word0 = v15;
        v14.word1 = msg.data[v4 + 32 + 64];
        v14.word2 = msg.data[v4 + 32 + 96];
        v16, v17 = fun_permitToTransferDetails(v14, address(msg.data[v4]));
        require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v18 = new bytes[](varg5.length);
        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
        require(varg5.data + varg5.length <= msg.data.length);
        CALLDATACOPY(v18.data, varg5.data, varg5.length);
        v18[varg5.length] = 0;
        v19 = _fun_transferFrom;
        _fun_transferFrom = 0;
        require(v19, ConfusedDeputy());
        v20 = new bytes[](129);
        require(!((v20 + 192 > uint64.max) | (v20 + 192 < v20)), Panic(65)); // failed memory allocation (too much memory)
        MEM[v20.data] = 'Slippage slippage)Slippage(addre';
        MEM[v20 + 64] = 'ss recipient,address buyToken,ui';
        MEM[v20 + 96] = 'nt256 minAmountOut)TokenPermissi';
        MEM[v20 + 128] = 'ons(address token,uint256 amount';
        MEM[v20 + 160] = 0x2900000000000000000000000000000000000000000000000000000000000000;
        require(!0, ForwarderNotAllowed());
        MEM[v21] = 0x137c29fe;
        MCOPY(32 + v21, v14.word0, 64);
        MCOPY(96 + v21, 32 + v14, 64);
        MCOPY(160 + v21, v17, 64);
        MCOPY(352 + v21, v20, 161);
        MCOPY(384 + (v21 + v20.length), v18, 32 + v18.length);
        v22, /* uint256 */ v23 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v24, v24, v24, v24, v24, v24, address(_fun_toCanonicalSellAmount), v19, 320, 481).gas(msg.gas);
        if (!v22) {
            v25 = RETURNDATASIZE();
            revert(v24, v24, v24, v24, v24, v24, v24, v24, v24, 481);
        } else {
            v5 = v26 = 1;
        }
    }
    if (!v5) {
        if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0xd9d94e41) {
            if ((msg.data[varg3 + msg.data[varg3.data] + 68] >> 224) - 0x449b52ab) {
                if (0xf67d89e5 - (msg.data[varg3 + msg.data[varg3.data] + 68] >> 224)) {
                    v27 = v28 = 0;
                } else {
                    require(v4 + v3 - v4 >= 320);
                    require(!(msg.data[v4] - address(msg.data[v4])));
                    require(v4 + v3 - (v4 + 32) >= 128);
                    v29 = new struct(3);
                    require(!((v29 + 96 > uint64.max) | (v29 + 96 < v29)), Panic(65)); // failed memory allocation (too much memory)
                    require(v4 + v3 - (v4 + 32) >= 64);
                    v30 = new struct(2);
                    require(!((v30 + 64 > uint64.max) | (v30 + 64 < v30)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
                    v30.word0 = msg.data[v4 + 32];
                    v30.word1 = msg.data[v4 + 32 + 32];
                    v29.word0 = v30;
                    v29.word1 = msg.data[v4 + 32 + 64];
                    v29.word2 = msg.data[v4 + 32 + 96];
                    require(!(msg.data[v4 + 160] - bool(msg.data[v4 + 160])));
                    require(msg.data[v4 + (uint8.max + 1)] <= uint64.max);
                    require(v4 + msg.data[v4 + (uint8.max + 1)] + 31 < v4 + v3);
                    require(msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v31 = new bytes[](msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
                    require(!((v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v31 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v31)), Panic(65)); // failed memory allocation (too much memory)
                    require(v4 + msg.data[v4 + (uint8.max + 1)] + 32 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= v4 + v3);
                    CALLDATACOPY(v31.data, v4 + msg.data[v4 + (uint8.max + 1)] + 32, msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
                    v31[msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]] = 0;
                    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v32 = new bytes[](varg5.length);
                    require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                    require(varg5.data + varg5.length <= msg.data.length);
                    CALLDATACOPY(v32.data, varg5.data, varg5.length);
                    v32[varg5.length] = 0;
                    require(!msg.data[v4 + 192] | (96 == msg.data[v4 + 192] * 96 / msg.data[v4 + 192]), Panic(17)); // arithmetic overflow or underflow
                    require(!msg.data[v4 + 224] | (96 == msg.data[v4 + 224] * 96 / msg.data[v4 + 224]), Panic(17)); // arithmetic overflow or underflow
                    require(!(bool(msg.data[v4 + 288] >> 128) | bool(msg.data[v4 + 192] * 96 >> 128) | bool(msg.data[v4 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                    MEM[v32.length + (v31.length + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v32.length;
                    MCOPY(306 + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v31.data, v31.length);
                    MCOPY(v31.length + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v32.data, v32.length);
                    MEM8[305 + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                    MCOPY(241 + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v29, 64);
                    MCOPY(177 + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v29.word0, 64);
                    MEM8[168 + (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 160] & 0xFF;
                    require((_fun_toCanonicalSellAmount ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                    require(!_fun__uniV3ForkSwap, ReentrantCallback(_fun__uniV3ForkSwap));
                    _fun__uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
                    v33, /* uint256 */ v34 = 0x14aa86c5d3c41765bb24e11bd701.lock(32, address(msg.data[v4]), 209 + (v31.length + v32.length), address(msg.data[v4]), msg.data[v4 + 288], msg.data[v4 + 224] * 96, msg.data[v4 + 192] * 96, 0).gas(msg.gas);
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
                    require(!_fun__uniV3ForkSwap, CallbackNotSpent(_fun__uniV3ForkSwap));
                    v27 = v37 = 1;
                }
            } else {
                require(v4 + v3 - v4 >= 320);
                require(!(msg.data[v4] - address(msg.data[v4])));
                require(v4 + v3 - (v4 + 32) >= 128);
                v38 = new struct(3);
                require(!((v38 + 96 > uint64.max) | (v38 + 96 < v38)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + v3 - (v4 + 32) >= 64);
                v39 = new struct(2);
                require(!((v39 + 64 > uint64.max) | (v39 + 64 < v39)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
                v39.word0 = msg.data[v4 + 32];
                v39.word1 = msg.data[v4 + 32 + 32];
                v38.word0 = v39;
                v38.word1 = msg.data[v4 + 32 + 64];
                v38.word2 = msg.data[v4 + 32 + 96];
                require(!(msg.data[v4 + 160] - bool(msg.data[v4 + 160])));
                require(msg.data[v4 + (uint8.max + 1)] <= uint64.max);
                require(v4 + msg.data[v4 + (uint8.max + 1)] + 31 < v4 + v3);
                require(msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v40 = new bytes[](msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
                require(!((v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v40 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v40)), Panic(65)); // failed memory allocation (too much memory)
                require(v4 + msg.data[v4 + (uint8.max + 1)] + 32 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= v4 + v3);
                CALLDATACOPY(v40.data, v4 + msg.data[v4 + (uint8.max + 1)] + 32, msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
                v40[msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]] = 0;
                require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v41 = new bytes[](varg5.length);
                require(!((v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                require(varg5.data + varg5.length <= msg.data.length);
                CALLDATACOPY(v41.data, varg5.data, varg5.length);
                v41[varg5.length] = 0;
                require(!msg.data[v4 + 192] | (96 == msg.data[v4 + 192] * 96 / msg.data[v4 + 192]), Panic(17)); // arithmetic overflow or underflow
                require(!msg.data[v4 + 224] | (96 == msg.data[v4 + 224] * 96 / msg.data[v4 + 224]), Panic(17)); // arithmetic overflow or underflow
                require(!(bool(msg.data[v4 + 288] >> 128) | bool(msg.data[v4 + 192] * 96 >> 128) | bool(msg.data[v4 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                MEM[v41.length + (v40.length + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v41.length;
                MCOPY(306 + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v40.data, v40.length);
                MCOPY(v40.length + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v41.data, v41.length);
                MEM8[305 + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
                MCOPY(241 + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v38, 64);
                MCOPY(177 + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v38.word0, 64);
                MEM8[168 + (v41 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 160] & 0xFF;
                require((_fun_toCanonicalSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                require(!_fun__uniV3ForkSwap, ReentrantCallback(_fun__uniV3ForkSwap));
                _fun__uniV3ForkSwap = uint32(msg.data[v4] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                v42, /* uint256 */ v43 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(32, address(msg.data[v4]), 209 + (v40.length + v41.length), address(msg.data[v4]), msg.data[v4 + 288], msg.data[v4 + 224] * 96, msg.data[v4 + 192] * 96, 0).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v44 = v45 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v44 = new bytes[](RETURNDATASIZE());
                    require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                    v43 = v44.data;
                    RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                }
                require(v42, v44 + 32, MEM[v44]);
                require(!_fun__uniV3ForkSwap, CallbackNotSpent(_fun__uniV3ForkSwap));
                v27 = v46 = 1;
            }
        } else {
            require(v4 + v3 - v4 >= 320);
            require(!(msg.data[v4] - address(msg.data[v4])));
            require(v4 + v3 - (v4 + 32) >= 128);
            v47 = new struct(3);
            require(!((v47 + 96 > uint64.max) | (v47 + 96 < v47)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + v3 - (v4 + 32) >= 64);
            v48 = new struct(2);
            require(!((v48 + 64 > uint64.max) | (v48 + 64 < v48)), Panic(65)); // failed memory allocation (too much memory)
            require(!(msg.data[v4 + 32] - address(msg.data[v4 + 32])));
            v48.word0 = msg.data[v4 + 32];
            v48.word1 = msg.data[v4 + 32 + 32];
            v47.word0 = v48;
            v47.word1 = msg.data[v4 + 32 + 64];
            v47.word2 = msg.data[v4 + 32 + 96];
            require(!(msg.data[v4 + 160] - bool(msg.data[v4 + 160])));
            require(msg.data[v4 + (uint8.max + 1)] <= uint64.max);
            require(v4 + msg.data[v4 + (uint8.max + 1)] + 31 < v4 + v3);
            require(msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v49 = new bytes[](msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
            require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
            require(v4 + msg.data[v4 + (uint8.max + 1)] + 32 + msg.data[v4 + msg.data[v4 + (uint8.max + 1)]] <= v4 + v3);
            CALLDATACOPY(v49.data, v4 + msg.data[v4 + (uint8.max + 1)] + 32, msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]);
            v49[msg.data[v4 + msg.data[v4 + (uint8.max + 1)]]] = 0;
            require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v50 = new bytes[](varg5.length);
            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
            require(varg5.data + varg5.length <= msg.data.length);
            CALLDATACOPY(v50.data, varg5.data, varg5.length);
            v50[varg5.length] = 0;
            require(!msg.data[v4 + 192] | (96 == msg.data[v4 + 192] * 96 / msg.data[v4 + 192]), Panic(17)); // arithmetic overflow or underflow
            require(!msg.data[v4 + 224] | (96 == msg.data[v4 + 224] * 96 / msg.data[v4 + 224]), Panic(17)); // arithmetic overflow or underflow
            require(!(bool(msg.data[v4 + 288] >> 128) | bool(msg.data[v4 + 192] * 96 >> 128) | bool(msg.data[v4 + 224] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
            MEM[v50.length + (v49.length + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))) + 277] = v50.length;
            MCOPY(306 + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v49.data, v49.length);
            MCOPY(v49.length + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)) + 306, v50.data, v50.length);
            MEM8[305 + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = 0x0 & 0xFF;
            MCOPY(241 + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 32 + v47, 64);
            MCOPY(177 + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), v47.word0, 64);
            MEM8[168 + (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))] = msg.data[v4 + 160] & 0xFF;
            require((_fun_toCanonicalSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
            require(!_fun__uniV3ForkSwap, ReentrantCallback(_fun__uniV3ForkSwap));
            _fun__uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
            v51, /* uint256 */ v52 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, address(msg.data[v4]), 209 + (v49.length + v50.length), address(msg.data[v4]), msg.data[v4 + 288], msg.data[v4 + 224] * 96, msg.data[v4 + 192] * 96, 0).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v53 = v54 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v53 = new bytes[](RETURNDATASIZE());
                require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
                v52 = v53.data;
                RETURNDATACOPY(v52, 0, RETURNDATASIZE());
            }
            require(v51, v53 + 32, MEM[v53]);
            require(!_fun__uniV3ForkSwap, CallbackNotSpent(_fun__uniV3ForkSwap));
            v27 = v55 = 1;
        }
    } else {
        v27 = v56 = 1;
    }
    if (!v27) {
        v57 = new uint256[](v3);
        CALLDATACOPY(v57.data, v4, v3);
        revert(ActionInvalid(0, bytes4(msg.data[varg3 + msg.data[varg3.data] + 68]), v57));
    } else {
        v58 = v59 = varg3 + 68;
        v60 = v61 = 1;
        while (v60 < varg3.length) {
            v62 = msg.data[varg3 + msg.data[v58] + 36] - 4;
            v63 = varg3 + msg.data[v58] + 72;
            v64 = msg.data[varg3 + msg.data[v58] + 68] >> 224;
            if (v64 - 0xd92aadfb) {
                if (v64 - 0x8d68a156) {
                    if (v64 - 0x103b48be) {
                        if (v64 - 0x38c9c147) {
                            if (v64 - 0x34ee90ca) {
                                if (0 == (v64 == 0xaf72634f) | (v64 == 0xfd8c38e1) | (v64 == 0x6c5f9cf9) | (v64 == 0xf61460f9)) {
                                    if (0 == (v64 == 0x736180c8)) {
                                        if (v64 - 0x6472b276) {
                                            if (v64 - 0x9b59756f) {
                                                if (v64 - 0x670335be) {
                                                    if (v64 - 0xca9e5d0f) {
                                                        if (0xb8df6d4d - v64) {
                                                            v65 = v66 = 0;
                                                        } else {
                                                            require(v63 + v62 - v63 >= 160);
                                                            require(!(msg.data[v63] - address(msg.data[v63])));
                                                            require(!(msg.data[v63 + 64] - address(msg.data[v63 + 64])));
                                                            require(!(msg.data[v63 + 96] - bool(msg.data[v63 + 96])));
                                                            v67 = fun_fastBalanceOf(msg.data[v63], this);
                                                            fun_safeApproveIfBelow(msg.data[v63], address(msg.data[v63 + 64]), v67 * msg.data[v63 + 32] / 10000);
                                                            if (!msg.data[v63 + 96]) {
                                                                v68 = msg.data[v63 + 64].sellBaseToken(v67 * msg.data[v63 + 32] / 10000, msg.data[v63 + 128], 96, 0).gas(msg.gas);
                                                                if (!v68) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 31);
                                                                    v65 = v69 = 1;
                                                                }
                                                            } else {
                                                                v70 = msg.data[v63 + 64].getExpectedTarget().gas(msg.gas);
                                                                if (!v70) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(RETURNDATASIZE() > 63);
                                                                    v71 = msg.data[v63 + 64]._R_STATUS_().gas(msg.gas);
                                                                    if (!v71) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(RETURNDATASIZE() > 31);
                                                                        require(!(MEM[0] >> 8));
                                                                        require(uint8(MEM[0]) < 3, Panic(33)); // failed convertion to enum type
                                                                        v72 = msg.data[v63 + 64].getOraclePrice().gas(msg.gas);
                                                                        if (!v72) {
                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                        } else {
                                                                            require(RETURNDATASIZE() > 31);
                                                                            v73 = msg.data[v63 + 64]._BASE_BALANCE_().gas(msg.gas);
                                                                            if (!v73) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(RETURNDATASIZE() > 31);
                                                                                v74 = msg.data[v63 + 64]._K_().gas(msg.gas);
                                                                                if (!v74) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                } else {
                                                                                    require(RETURNDATASIZE() > 31);
                                                                                    if (0 == (uint8(MEM[0]) == 2)) {
                                                                                        if ((10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 < MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v67 * msg.data[v63 + 32] / 10000) / 10 ** 18) {
                                                                                            v75 = v76 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v67 * msg.data[v63 + 32] / 10000) / 10 ** 18 - (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18;
                                                                                            v77 = v78 = 10 ** 18;
                                                                                            v79 = v80 = 0;
                                                                                        } else {
                                                                                            v75 = (10 ** 18 - MEM[0]) * ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) / 10 ** 18 - (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) + 10 ** 36 / MEM[0] * (v67 * msg.data[v63 + 32] / 10000) / 10 ** 18);
                                                                                            v79 = v81 = 1;
                                                                                            v77 = 10 ** 18;
                                                                                        }
                                                                                        v82 = v83 = v75 * v75 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v77;
                                                                                        v82 = (v83 >> 1) + 1;
                                                                                        while (v82 < v82) {
                                                                                            v82 = v82 + v83 / v82 >> 1;
                                                                                        }
                                                                                        if (0 == v79) {
                                                                                            v84 = v85 = v82 - v75;
                                                                                        } else {
                                                                                            v84 = v86 = v75 + v82;
                                                                                        }
                                                                                        v87 = v88 = ((MEM[0] ^ MEM[0]) * !uint8(MEM[0]) ^ MEM[0]) - (bool(v84 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v84 * 10 ** 18 / (10 ** 18 - MEM[0] << 1));
                                                                                    } else {
                                                                                        v89 = msg.data[v63 + 64]._QUOTE_BALANCE_().gas(msg.gas);
                                                                                        if (!v89) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            if (v67 * msg.data[v63 + 32] / 10000 > MEM[32] - MEM[0]) {
                                                                                                if ((10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 < MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v67 * msg.data[v63 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18) {
                                                                                                    v90 = v91 = MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v67 * msg.data[v63 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18 - (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18;
                                                                                                    v92 = v93 = 10 ** 18;
                                                                                                    v94 = v95 = 0;
                                                                                                } else {
                                                                                                    v90 = (10 ** 18 - MEM[0]) * MEM[0] / 10 ** 18 - (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18) / MEM[0] + (v67 * msg.data[v63 + 32] / 10000 - (MEM[32] - MEM[0])) * (10 ** 36 / MEM[0]) / 10 ** 18);
                                                                                                    v94 = v96 = 1;
                                                                                                    v92 = 10 ** 18;
                                                                                                }
                                                                                                v97 = v98 = v90 * v90 + (10 ** 18 - MEM[0] << 2) * (MEM[0] * (MEM[0] * MEM[0] / 10 ** 18)) / v92;
                                                                                                v97 = (v98 >> 1) + 1;
                                                                                                while (v97 < v97) {
                                                                                                    v97 = v97 + v98 / v97 >> 1;
                                                                                                }
                                                                                                if (0 == v94) {
                                                                                                    v99 = v100 = v97 - v90;
                                                                                                } else {
                                                                                                    v99 = v101 = v90 + v97;
                                                                                                }
                                                                                                v87 = v102 = MEM[0] - MEM[0] + (MEM[0] - (bool(v99 * 10 ** 18 % (10 ** 18 - MEM[0] << 1)) + v99 * 10 ** 18 / (10 ** 18 - MEM[0] << 1)));
                                                                                            } else {
                                                                                                v87 = v103 = (10 ** 18 - MEM[0] + MEM[0] * (bool(MEM[32] * MEM[32] / (MEM[0] + v67 * msg.data[v63 + 32] / 10000) * 10 ** 18 % MEM[0]) + MEM[32] * MEM[32] / (MEM[0] + v67 * msg.data[v63 + 32] / 10000) * 10 ** 18 / MEM[0]) / 10 ** 18) * ((MEM[0] + v67 * msg.data[v63 + 32] / 10000 - MEM[0]) * (10 ** 36 / MEM[0]) / 10 ** 18) / 10 ** 18;
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                    v104 = msg.data[v63 + 64]._MT_FEE_RATE_().gas(msg.gas);
                                                                                    if (!v104) {
                                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                                    } else {
                                                                                        require(RETURNDATASIZE() > 31);
                                                                                        v105 = msg.data[v63 + 64]._LP_FEE_RATE_().gas(msg.gas);
                                                                                        if (!v105) {
                                                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                            revert(MEM[64], RETURNDATASIZE());
                                                                                        } else {
                                                                                            require(RETURNDATASIZE() > 31);
                                                                                            v106 = v87 * 10 ** 18 / (MEM[0] + MEM[0] + 10 ** 18);
                                                                                            if (v106 < msg.data[v63 + 128]) {
                                                                                                v107 = msg.data[v63 + 64]._BASE_TOKEN_().gas(msg.gas);
                                                                                                require(v107, MEM[64], RETURNDATASIZE());
                                                                                                require(RETURNDATASIZE() > 31);
                                                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v63 + 128], v106));
                                                                                                revert();
                                                                                            } else {
                                                                                                v108 = msg.data[v63 + 64].buyBaseToken(v106, v67 * msg.data[v63 + 32] / 10000, 96, 0).gas(msg.gas);
                                                                                                if (!v108) {
                                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                                } else {
                                                                                                    require(RETURNDATASIZE() > 31);
                                                                                                    v65 = v109 = 1;
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
                                                        require(v63 + v62 - v63 >= 192);
                                                        require(!(msg.data[v63] - address(msg.data[v63])));
                                                        require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                                        require(!(msg.data[v63 + 96] - address(msg.data[v63 + 96])));
                                                        require(!(msg.data[v63 + 128] - bool(msg.data[v63 + 128])));
                                                        if (msg.data[v63 + 64]) {
                                                            v110 = fun_fastBalanceOf(msg.data[v63 + 32], this);
                                                            fun_safeTransfer(msg.data[v63 + 32], address(msg.data[v63 + 96]), v110 * msg.data[v63 + 64] / 10000);
                                                        }
                                                        v111 = msg.data[v63 + 96].sellQuote(address(msg.data[v63]), (0xdd93f59a ^ 0x60f3e02e * !msg.data[v63 + 128]) << 96).gas(msg.gas);
                                                        if (!v111) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            require(RETURNDATASIZE() > 31);
                                                            if (MEM[0] < msg.data[v63 + 160]) {
                                                                v112 = msg.data[v63 + 96]._QUOTE_TOKEN_().gas(msg.gas);
                                                                require(v112, MEM[64], RETURNDATASIZE());
                                                                require(RETURNDATASIZE() > 31);
                                                                require(MEM[0] >> 160, TooMuchSlippage(address(MEM[0]), 0x97a6f3b9000000000000000000000000, msg.data[v63 + 160], MEM[0]));
                                                                revert();
                                                            } else {
                                                                v65 = v113 = 1;
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    require(v63 + v62 - v63 >= 352);
                                                    require(!(msg.data[v63] - address(msg.data[v63])));
                                                    require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                                    require(v63 + v62 - v63 - 64 >= 224);
                                                    v114 = new struct(7);
                                                    require(!((v114 + 224 > uint64.max) | (v114 + 224 < v114)), Panic(65)); // failed memory allocation (too much memory)
                                                    v114.word0 = msg.data[v63 + 64];
                                                    require(!(msg.data[v63 + 96] - address(msg.data[v63 + 96])));
                                                    v114.word1 = msg.data[v63 + 96];
                                                    v114.word2 = msg.data[v63 + 128];
                                                    require(!(msg.data[v63 + 160] - address(msg.data[v63 + 160])));
                                                    v114.word3 = msg.data[v63 + 160];
                                                    v114.word4 = msg.data[v63 + 192];
                                                    v114.word5 = msg.data[v63 + 224];
                                                    v114.word6 = msg.data[v63 + (uint8.max + 1)];
                                                    require(msg.data[v63 + 288] <= uint64.max);
                                                    require(v63 + v62 - (v63 + msg.data[v63 + 288]) >= 64);
                                                    v115 = new struct(2);
                                                    require(!((v115 + 64 > uint64.max) | (v115 + 64 < v115)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(msg.data[v63 + msg.data[v63 + 288]] <= uint64.max);
                                                    require(v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]] + 31 < v63 + v62);
                                                    require(msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v116 = new bytes[](msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]]);
                                                    require(!((v116 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v116 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v116)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]] + 32 + msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]] <= v63 + v62);
                                                    CALLDATACOPY(v116.data, v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]] + 32, msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]]);
                                                    v116[msg.data[v63 + msg.data[v63 + 288] + msg.data[v63 + msg.data[v63 + 288]]]] = 0;
                                                    v115.word0 = v116;
                                                    v115.word1 = msg.data[v63 + msg.data[v63 + 288] + 32];
                                                    v117 = fun_fastBalanceOf(msg.data[v63 + 32], this);
                                                    require(v114.word5 * ((v114.word4 ^ v117) * (v117 > v114.word4) ^ v117) / v114.word4 >= msg.data[v63 + 320], TooMuchSlippage(address(v114.word3), 0x97a6f3b9000000000000000000000000, msg.data[v63 + 320], v114.word5 * ((v114.word4 ^ v117) * (v117 > v114.word4) ^ v117) / v114.word4));
                                                    v118 = msg.data[v63 + 32].allowance(this, this << 96, 0xbbbbbbb520d69a9775e85b458c58c648259fad5f, this, this << 96).gas(msg.gas);
                                                    if (!v118) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        if (MEM[0] < (v114.word4 ^ v117) * (v117 > v114.word4) ^ v117) {
                                                            if (MEM[0]) {
                                                                fun_safeApprove(msg.data[v63 + 32], 0xbbbbbbb520d69a9775e85b458c58c648259fad5f);
                                                            }
                                                            v119 = msg.data[v63 + 32].approve(0xbbbbbbb520d69a9775e85b458c58c648259fad5f, 0x95ea7b3000000000000000000000000, uint256.max).gas(msg.gas);
                                                            if (!v119) {
                                                                RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                                                                revert(uint24(MEM[64]), RETURNDATASIZE());
                                                            } else {
                                                                require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
                                                                MEM[52] = 0;
                                                            }
                                                        }
                                                        MCOPY(96 + MEM[64], 32 + v114, 64);
                                                        MCOPY(192 + MEM[64], 96 + v114, 96);
                                                        v120 = new uint256[](64);
                                                        MEM[v120.data] = v115.word1;
                                                        v121 = v115.word0;
                                                        MCOPY(512 + MEM[64], v115.word0, 32 + v121.length);
                                                        v122 = 0xbbbbbbb520d69a9775e85b458c58c648259fad5f.swapSingle(v114.word0, this, v24, v24, address(msg.data[v63 + 32]), v24, v24, v24, address(msg.data[v63]), _fun_toCanonicalSellAmount << 96 | v114.word6 >> 248, v114.word6 << 128, v120, (v114.word4 ^ v117) * (v117 > v114.word4) ^ v117).gas(msg.gas);
                                                        if (!v122) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            emit uint128(v114.word6)(uint128(v114.word5 * ((v114.word4 ^ v117) * (v117 > v114.word4) ^ v117) / v114.word4), uint128(v114.word5 * ((v114.word4 ^ v117) * (v117 > v114.word4) ^ v117) / v114.word4));
                                                            v65 = v123 = 1;
                                                        }
                                                    }
                                                }
                                            } else {
                                                require(v63 + v62 - v63 >= 224);
                                                require(!(msg.data[v63] - address(msg.data[v63])));
                                                require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                                require(!(msg.data[v63 + 96] - address(msg.data[v63 + 96])));
                                                require(!(msg.data[v63 + 128] - bool(msg.data[v63 + 128])));
                                                require(!(msg.data[v63 + 160] - int32(msg.data[v63 + 160])));
                                                if (!msg.data[v63 + 64]) {
                                                    v124 = fun_fastBalanceOf(msg.data[v63 + 32], address(msg.data[v63 + 96]));
                                                    v125 = msg.data[v63 + 96].getState().gas(msg.gas);
                                                    if (!v125) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(!((288 > RETURNDATASIZE()) | MEM[(!msg.data[v63 + 128] << 5) + MEM[64]] >> 128));
                                                        v126 = v127 = 64;
                                                        v128 = v129 = 0;
                                                        v130 = v131 = v124 - uint128(MEM[(!msg.data[v63 + 128] << 5) + MEM[64]]);
                                                    }
                                                } else {
                                                    v126 = v132 = 64;
                                                    v128 = v133 = 0;
                                                    v134 = fun_fastBalanceOf(msg.data[v63 + 32], this);
                                                    v130 = v135 = v134 * msg.data[v63 + 64] / 10000;
                                                    fun_safeTransfer(msg.data[v63 + 32], address(msg.data[v63 + 96]), v135);
                                                }
                                                require(!((MEM[v126] + 32 > uint64.max) | (MEM[v126] + 32 < MEM[v126])), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(MEM[v126] + 32, msg.data.length, 0);
                                                MCOPY(228 + MEM[v126], MEM[v126], 32);
                                                v136 = msg.data[v63 + 96].call(0x3eece7db000000000000000000000000, address(msg.data[v63]), 0x3eece7db000000000000000000000000, v130, msg.data[v63 + 128], v128, int32(msg.data[v63 + 160]), 192).value(v128).gas(msg.gas);
                                                if (!v136) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else if (MEM[32] < msg.data[192 + v63]) {
                                                    v137 = msg.data[v63 + 96].tokenB().gas(msg.gas);
                                                    require(v137, MEM[64], RETURNDATASIZE());
                                                    require(!((RETURNDATASIZE() < 32) | MEM[0] >> 160));
                                                    revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[192 + v63], MEM[32]));
                                                } else {
                                                    v65 = v138 = 1;
                                                }
                                            }
                                        } else {
                                            require(v63 + v62 - v63 >= 192);
                                            require(!(msg.data[v63] - address(msg.data[v63])));
                                            require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                            require(!(msg.data[v63 + 96] - address(msg.data[v63 + 96])));
                                            require(!(msg.data[v63 + 128] - bool(msg.data[v63 + 128])));
                                            EXTCODECOPY(msg.data[v63 + 96], MEM[64], 54, 384);
                                            v139 = msg.data[v63 + 96].getReserves().gas(msg.gas);
                                            if (!v139) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(!((96 > RETURNDATASIZE()) | (MEM[32] >> 112 | MEM[0] >> 112)));
                                                v140 = address(address(MEM[MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v63 + 128]);
                                                v141 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v63 + 128]).debtOf(MEM[64 + MEM[64]], 0xd283e75f000000000000000000000000).gas(msg.gas);
                                                if (!v141) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(32 <= RETURNDATASIZE());
                                                    v142 = address(address(MEM[32 + MEM[64]]) ^ (address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v63 + 128]).maxDeposit(MEM[64 + MEM[64]], 0x402d267d000000000000000000000000).gas(msg.gas);
                                                    if (!v142) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        require(32 <= RETURNDATASIZE());
                                                        v143 = 0xc9a3dd6b8f28529d72d7f9ce918d493519ee383.isAccountOperatorAuthorized(MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96, address(msg.data[v63 + 96]), MEM[64 + MEM[64]], MEM[64 + MEM[64]] << 96).gas(msg.gas);
                                                        if (!v143) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v144 = v140.cash().gas(msg.gas);
                                                            if (!v144) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                require(32 <= RETURNDATASIZE());
                                                                v145 = v146 = (MEM[0] ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v63 + 128])) * (MEM[0] < MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v63 + 128]) ^ (MEM[0] ^ (MEM[32] ^ MEM[0]) * msg.data[v63 + 128]);
                                                                v147 = v140.caps().gas(msg.gas);
                                                                if (!v147) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    require(!((64 > RETURNDATASIZE()) | (MEM[0] >> 16 | MEM[32] >> 16)));
                                                                    v148 = v140.totalBorrows().gas(msg.gas);
                                                                    if (!v148) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        require(32 <= RETURNDATASIZE());
                                                                        v149 = ((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100 > MEM[0]) * (((0xffffffffffffffffffffffffffff ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) * !MEM[32] ^ 10 ** (MEM[32] & 0x3f) * (MEM[32] >> 6) / 100) - MEM[0]);
                                                                        if (v149 < v146) {
                                                                            v150 = fun_fastBalanceOf(v140, MEM[64 + MEM[64]]);
                                                                            v151 = v140.convertToAssets(v150).gas(msg.gas);
                                                                            if (!v151) {
                                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                revert(MEM[64], RETURNDATASIZE());
                                                                            } else {
                                                                                require(32 <= RETURNDATASIZE());
                                                                                v145 = v152 = (v146 ^ MEM[0] + v149) * (MEM[0] + v149 >= v146) ^ MEM[0] + v149;
                                                                            }
                                                                        }
                                                                        if (0 == msg.data[v63 + 128]) {
                                                                            if ((MEM[0] - v145) * (MEM[0] > v145) > MEM[96 + MEM[64]]) {
                                                                                v153 = v154 = fun_fInverse((MEM[0] - v145) * (MEM[0] > v145), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            } else {
                                                                                v153 = v155 = fun_saturatingF((MEM[0] - v145) * (MEM[0] > v145), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            }
                                                                            v156 = v157 = (v153 > MEM[32]) * (v153 - MEM[32]);
                                                                        } else {
                                                                            if ((MEM[32] - v145) * (MEM[32] > v145) > MEM[128 + MEM[64]]) {
                                                                                v158 = v159 = fun_fInverse((MEM[32] - v145) * (MEM[32] > v145), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            } else {
                                                                                v158 = v160 = fun_saturatingF((MEM[32] - v145) * (MEM[32] > v145), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            }
                                                                            v156 = v161 = (v158 > MEM[0]) * (v158 - MEM[0]);
                                                                        }
                                                                        v162 = ((v156 ^ (MEM[0] + MEM[0]) * MEM[0]) * (v156 < (MEM[0] + MEM[0]) * MEM[0]) ^ (MEM[0] + MEM[0]) * MEM[0]) * 10 ** 18 / (10 ** 18 - MEM[288 + MEM[64]]);
                                                                        v163 = v164 = 0;
                                                                        if (msg.data[v63 + 64]) {
                                                                            v165 = fun_fastBalanceOf(msg.data[v63 + 32], this);
                                                                            v163 = v166 = (v162 ^ v165 * msg.data[v63 + 64] / 10000) * (v165 * msg.data[v63 + 64] / 10000 > v162) ^ v165 * msg.data[v63 + 64] / 10000;
                                                                            fun_safeTransfer(msg.data[v63 + 32], address(msg.data[v63 + 96]), v166);
                                                                        }
                                                                        if (!v163) {
                                                                            v167 = fun_fastBalanceOf(msg.data[v63 + 32], address(msg.data[v63 + 96]));
                                                                            v163 = v168 = (v162 ^ v167) * (v167 > v162) ^ v167;
                                                                        }
                                                                        if (0 == msg.data[v63 + 128]) {
                                                                            if (MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[128 + MEM[64]]) {
                                                                                v169 = fun_fInverse(MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                                v170 = v171 = (MEM[0] > !v169 + v169) * (MEM[0] - (!v169 + v169));
                                                                            } else {
                                                                                v172 = fun_saturatingF(MEM[32] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                                v170 = v173 = (MEM[0] > !v172 + v172) * (MEM[0] - (!v172 + v172));
                                                                            }
                                                                        } else if (MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18) > MEM[96 + MEM[64]]) {
                                                                            v174 = fun_fInverse(MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[192 + MEM[64]], MEM[160 + MEM[64]], MEM[128 + MEM[64]], MEM[96 + MEM[64]], MEM[uint8.max + 1 + MEM[64]]);
                                                                            v170 = v175 = (MEM[32] > !v174 + v174) * (MEM[32] - (!v174 + v174));
                                                                        } else {
                                                                            v176 = fun_saturatingF(MEM[0] + (v163 - v163 * MEM[288 + MEM[64]] / 10 ** 18), MEM[160 + MEM[64]], MEM[192 + MEM[64]], MEM[96 + MEM[64]], MEM[128 + MEM[64]], MEM[224 + MEM[64]]);
                                                                            v170 = v177 = (MEM[32] > !v176 + v176) * (MEM[32] - (!v176 + v176));
                                                                        }
                                                                        if (v170 < msg.data[v63 + 160]) {
                                                                            v178 = address((address(MEM[32 + MEM[64]]) ^ address(MEM[MEM[64]])) * msg.data[v63 + 128] ^ address(MEM[MEM[64]])).asset().gas(msg.gas);
                                                                            require(v178, MEM[64], RETURNDATASIZE());
                                                                            require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                                                            revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v63 + 160], v170));
                                                                        } else {
                                                                            if (v170 > 1) {
                                                                                MEM[MEM[64] + (msg.data[v63 + 128] << 5) + 32] = v170;
                                                                                MEM[(0x20 ^ msg.data[v63 + 128] << 5) + MEM[64] + 32] = 0;
                                                                                v179 = msg.data[v63 + 96].swap(v24, v24, address(msg.data[v63]), 128, 0).gas(msg.gas);
                                                                                if (!v179) {
                                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                                }
                                                                            }
                                                                            v65 = v180 = 1;
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
                                        require(v63 + v62 - v63 >= 192);
                                        require(!(msg.data[v63] - address(msg.data[v63])));
                                        require(!(msg.data[v63 + 64] - bool(msg.data[v63 + 64])));
                                        require(!(msg.data[v63 + 128] - address(msg.data[v63 + 128])));
                                        require(!(msg.data[v63 + 160] - address(msg.data[v63 + 160])));
                                        v181 = fun_fastBalanceOf(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v63 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v63 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v63 + 160]) * msg.data[v63 + 64], this);
                                        if (!msg.data[v63 + 64]) {
                                            v182 = msg.data[v63 + 128].sellGem(address(msg.data[v63]), 0x95991276000000000000000000000000, v181 * msg.data[v63 + 32] / 10000).gas(msg.gas);
                                            if (!v182) {
                                                RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                revert(uint96(MEM[64]), RETURNDATASIZE());
                                            } else {
                                                MEM[52] = 0;
                                                v183 = msg.data[v63 + 128].tin().gas(msg.gas);
                                                if (!v183) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    require(RETURNDATASIZE() > 31);
                                                    v184 = v185 = v181 * msg.data[v63 + 32] / 10000 * 10 ** 18 / 10 ** 6 - v181 * msg.data[v63 + 32] / 10000 * 10 ** 18 / 10 ** 6 * MEM[0] / 10 ** 18;
                                                    if (v185 >= msg.data[v63 + 96]) {
                                                        v65 = v186 = 1;
                                                    }
                                                }
                                            }
                                        } else {
                                            v187 = msg.data[v63 + 128].tout().gas(msg.gas);
                                            if (!v187) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                require(RETURNDATASIZE() > 31);
                                                v184 = v188 = v181 * msg.data[v63 + 32] / 10000 * 10 ** 6 / (MEM[0] + 10 ** 18);
                                                if (v188 >= msg.data[v63 + 96]) {
                                                    v189 = msg.data[v63 + 128].buyGem(address(msg.data[v63]), 0x8d7ef9bb000000000000000000000000, v188).gas(msg.gas);
                                                    if (!v189) {
                                                        RETURNDATACOPY(uint96(MEM[64]), 0, RETURNDATASIZE());
                                                        revert(uint96(MEM[64]), RETURNDATASIZE());
                                                    } else {
                                                        MEM[52] = 0;
                                                        v65 = v190 = 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(TooMuchSlippage(msg.data[v63 + 160] ^ (address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 ^ 0x7a7916044b0f6e1563f1ff4cb7db270f0b85f58f * (address(msg.data[v63 + 128]) == 0xce355440c00014a229bbec030a2b8f8eb45a2897)) ^ msg.data[v63 + 160]) * msg.data[v63 + 64], 0x97a6f3b9000000000000000000000000, msg.data[v63 + 96], v184));
                                    }
                                } else {
                                    require(v63 + v62 - v63 >= uint8.max + 1);
                                    require(!(msg.data[v63] - address(msg.data[v63])));
                                    require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                    require(!(msg.data[v63 + 96] - bool(msg.data[v63 + 96])));
                                    require(msg.data[v63 + 192] <= uint64.max);
                                    require(v63 + msg.data[v63 + 192] + 31 < v63 + v62);
                                    require(msg.data[v63 + msg.data[v63 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v191 = new bytes[](msg.data[v63 + msg.data[v63 + 192]]);
                                    require(!((v191 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v191 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v191)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v63 + msg.data[v63 + 192] + 32 + msg.data[v63 + msg.data[v63 + 192]] <= v63 + v62);
                                    CALLDATACOPY(v191.data, v63 + msg.data[v63 + 192] + 32, msg.data[v63 + msg.data[v63 + 192]]);
                                    v191[msg.data[v63 + msg.data[v63 + 192]]] = 0;
                                    if (0 == (v64 == 0xaf72634f)) {
                                        if (v64 != 0xfd8c38e1) {
                                            if (0 == (v64 == 0x6c5f9cf9)) {
                                                require(!msg.data[v63 + 128] | (96 == msg.data[v63 + 128] * 96 / msg.data[v63 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v63 + 160] | (96 == msg.data[v63 + 160] * 96 / msg.data[v63 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v63 + 64] > 10000) | bool(msg.data[v63 + 224] >> 128) | bool(msg.data[v63 + 128] * 96 >> 128) | bool(msg.data[v63 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v191.data, v191.length);
                                                MEM[179 + MEM[64]] = msg.data[v63 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v63 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v63 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v63 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v63 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v63]);
                                                MEM[68 + MEM[64]] = 111 + v191.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v63 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v191.length + 211;
                                                require((_fun_toCanonicalSellAmount ^ 0x14aa86c5d3c41765bb24e11bd701) << 96, ConfusedDeputy());
                                                v192 = _fun__uniV3ForkSwap;
                                                require(!v192, ReentrantCallback(v192));
                                                _fun__uniV3ForkSwap = 0x300000000000014aa86c5d3c41765bb24e11bd701;
                                                v193 = 0x14aa86c5d3c41765bb24e11bd701.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1d610x1d74V0x1da4V0x2b69.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v194 = v195 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v194 = new bytes[](RETURNDATASIZE());
                                                    require(!((v194 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v194 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v194)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v194.data, 0, RETURNDATASIZE());
                                                }
                                                require(v193, v194 + 32, MEM[v194]);
                                                v196 = _fun__uniV3ForkSwap;
                                                require(!v196, CallbackNotSpent(v196));
                                                v65 = v197 = 1;
                                            } else {
                                                require(!msg.data[v63 + 128] | (96 == msg.data[v63 + 128] * 96 / msg.data[v63 + 128]), Panic(17)); // arithmetic overflow or underflow
                                                require(!msg.data[v63 + 160] | (96 == msg.data[v63 + 160] * 96 / msg.data[v63 + 160]), Panic(17)); // arithmetic overflow or underflow
                                                require(!((msg.data[v63 + 64] > 10000) | bool(msg.data[v63 + 224] >> 128) | bool(msg.data[v63 + 128] * 96 >> 128) | bool(msg.data[v63 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                                MCOPY(211 + MEM[64], v191.data, v191.length);
                                                MEM[179 + MEM[64]] = msg.data[v63 + 64];
                                                MEM[177 + MEM[64]] = msg.data[v63 + 32];
                                                MEM[157 + MEM[64]] = this;
                                                MEM[136 + MEM[64]] = msg.data[v63 + 160] * 96;
                                                MEM[120 + MEM[64]] = msg.data[v63 + 128] * 96;
                                                MEM[104 + MEM[64]] = msg.data[v63 + 224];
                                                MEM[88 + MEM[64]] = address(msg.data[v63]);
                                                MEM[68 + MEM[64]] = 111 + v191.length;
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[4 + MEM[64]] = 0xf83d08ba;
                                                MEM8[168 + MEM[64]] = msg.data[v63 + 96] & 0xFF;
                                                MEM[64] = MEM[64] + v191.length + 211;
                                                require((_fun_toCanonicalSellAmount ^ 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) << 96, ConfusedDeputy());
                                                v198 = _fun__uniV3ForkSwap;
                                                require(!v198, ReentrantCallback(v198));
                                                _fun__uniV3ForkSwap = 0xb45a3c0e0000000000000001e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444;
                                                v199 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1d610x1d74V0x1da4V0x2b69.length], MEM[0:0]).gas(msg.gas);
                                                if (!RETURNDATASIZE()) {
                                                    v200 = v201 = 96;
                                                } else {
                                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                    v200 = new bytes[](RETURNDATASIZE());
                                                    require(!((v200 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v200 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v200)), Panic(65)); // failed memory allocation (too much memory)
                                                    RETURNDATACOPY(v200.data, 0, RETURNDATASIZE());
                                                }
                                                require(v199, v200 + 32, MEM[v200]);
                                                v202 = _fun__uniV3ForkSwap;
                                                require(!v202, CallbackNotSpent(v202));
                                                v65 = v203 = 1;
                                            }
                                        } else {
                                            require(!msg.data[v63 + 128] | (96 == msg.data[v63 + 128] * 96 / msg.data[v63 + 128]), Panic(17)); // arithmetic overflow or underflow
                                            require(!msg.data[v63 + 160] | (96 == msg.data[v63 + 160] * 96 / msg.data[v63 + 160]), Panic(17)); // arithmetic overflow or underflow
                                            require(!((msg.data[v63 + 64] > 10000) | bool(msg.data[v63 + 224] >> 128) | bool(msg.data[v63 + 128] * 96 >> 128) | bool(msg.data[v63 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                            MCOPY(211 + MEM[64], v191.data, v191.length);
                                            MEM[179 + MEM[64]] = msg.data[v63 + 64];
                                            MEM[177 + MEM[64]] = msg.data[v63 + 32];
                                            MEM[157 + MEM[64]] = this;
                                            MEM[136 + MEM[64]] = msg.data[v63 + 160] * 96;
                                            MEM[120 + MEM[64]] = msg.data[v63 + 128] * 96;
                                            MEM[104 + MEM[64]] = msg.data[v63 + 224];
                                            MEM[88 + MEM[64]] = address(msg.data[v63]);
                                            MEM[68 + MEM[64]] = 111 + v191.length;
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[4 + MEM[64]] = 0x48c89491;
                                            MEM8[168 + MEM[64]] = msg.data[v63 + 96] & 0xFF;
                                            MEM[64] = MEM[64] + v191.length + 211;
                                            require((_fun_toCanonicalSellAmount ^ 0xba1333333333a1ba1108e8412f11850a5c319ba9) << 96, ConfusedDeputy());
                                            v204 = _fun__uniV3ForkSwap;
                                            require(!v204, ReentrantCallback(v204));
                                            _fun__uniV3ForkSwap = uint32(msg.data[v63] >> 128) << 224 | 0x6ba1333333333a1ba1108e8412f11850a5c319ba9;
                                            v205 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1d610x1d74V0x1da4V0x2b69.length], MEM[0:0]).gas(msg.gas);
                                            if (!RETURNDATASIZE()) {
                                                v206 = v207 = 96;
                                            } else {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v206 = new bytes[](RETURNDATASIZE());
                                                require(!((v206 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v206 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v206)), Panic(65)); // failed memory allocation (too much memory)
                                                RETURNDATACOPY(v206.data, 0, RETURNDATASIZE());
                                            }
                                            require(v205, v206 + 32, MEM[v206]);
                                            v208 = _fun__uniV3ForkSwap;
                                            require(!v208, CallbackNotSpent(v208));
                                            v65 = v209 = 1;
                                        }
                                    } else {
                                        require(!msg.data[v63 + 128] | (96 == msg.data[v63 + 128] * 96 / msg.data[v63 + 128]), Panic(17)); // arithmetic overflow or underflow
                                        require(!msg.data[v63 + 160] | (96 == msg.data[v63 + 160] * 96 / msg.data[v63 + 160]), Panic(17)); // arithmetic overflow or underflow
                                        require(!((msg.data[v63 + 64] > 10000) | bool(msg.data[v63 + 224] >> 128) | bool(msg.data[v63 + 128] * 96 >> 128) | bool(msg.data[v63 + 160] * 96 >> 128)), Panic(17)); // arithmetic overflow or underflow
                                        MCOPY(211 + MEM[64], v191.data, v191.length);
                                        MEM[179 + MEM[64]] = msg.data[v63 + 64];
                                        MEM[177 + MEM[64]] = msg.data[v63 + 32];
                                        MEM[157 + MEM[64]] = this;
                                        MEM[136 + MEM[64]] = msg.data[v63 + 160] * 96;
                                        MEM[120 + MEM[64]] = msg.data[v63 + 128] * 96;
                                        MEM[104 + MEM[64]] = msg.data[v63 + 224];
                                        MEM[88 + MEM[64]] = address(msg.data[v63]);
                                        MEM[68 + MEM[64]] = 111 + v191.length;
                                        MEM[36 + MEM[64]] = 32;
                                        MEM[4 + MEM[64]] = 0x48c89491;
                                        MEM8[168 + MEM[64]] = msg.data[v63 + 96] & 0xFF;
                                        MEM[64] = MEM[64] + v191.length + 211;
                                        require((_fun_toCanonicalSellAmount ^ 0x4444c5dc75cb358380d2e3de08a90) << 96, ConfusedDeputy());
                                        v210 = _fun__uniV3ForkSwap;
                                        require(!v210, ReentrantCallback(v210));
                                        _fun__uniV3ForkSwap = 0x91dd73460000000000000005000000000004444c5dc75cb358380d2e3de08a90;
                                        v211 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64] + 32:MEM[64] + 32 + 179 + v1d610x1d74V0x1da4V0x2b69.length], MEM[0:0]).gas(msg.gas);
                                        if (!RETURNDATASIZE()) {
                                            v212 = v213 = 96;
                                        } else {
                                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                            v212 = new bytes[](RETURNDATASIZE());
                                            require(!((v212 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v212 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v212)), Panic(65)); // failed memory allocation (too much memory)
                                            RETURNDATACOPY(v212.data, 0, RETURNDATASIZE());
                                        }
                                        require(v211, v212 + 32, MEM[v212]);
                                        v214 = _fun__uniV3ForkSwap;
                                        require(!v214, CallbackNotSpent(v214));
                                        v65 = v215 = 1;
                                    }
                                }
                            } else {
                                require(v63 + v62 - v63 >= 128);
                                require(!(msg.data[v63] - address(msg.data[v63])));
                                require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(msg.data[v63 + 32])) {
                                    v216 = v217 = fun_fastBalanceOf(msg.data[v63 + 32], this);
                                } else {
                                    v216 = v218 = this.balance;
                                }
                                if (v216 > msg.data[v63 + 64]) {
                                    v219 = (v216 * msg.data[v63 + 96] / 10000 ^ v216 - msg.data[v63 + 64]) * (v216 - msg.data[v63 + 64] > v216 * msg.data[v63 + 96] / 10000) ^ v216 - msg.data[v63 + 64];
                                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(msg.data[v63 + 32]))) {
                                        fun_safeTransfer(msg.data[v63 + 32], address(msg.data[v63]), v219);
                                    } else {
                                        fun_safeTransferETH(msg.data[v63], v219);
                                    }
                                }
                                v65 = v220 = 1;
                            }
                        } else {
                            require(v63 + v62 - v63 >= 160);
                            require(!(msg.data[v63] - address(msg.data[v63])));
                            require(!(msg.data[v63 + 64] - address(msg.data[v63 + 64])));
                            require(msg.data[v63 + 128] <= uint64.max);
                            require(v63 + msg.data[v63 + 128] + 31 < v63 + v62);
                            require(msg.data[v63 + msg.data[v63 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v221 = new bytes[](msg.data[v63 + msg.data[v63 + 128]]);
                            require(!((v221 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v221 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 128]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v221)), Panic(65)); // failed memory allocation (too much memory)
                            require(v63 + msg.data[v63 + 128] + 32 + msg.data[v63 + msg.data[v63 + 128]] <= v63 + v62);
                            CALLDATACOPY(v221.data, v63 + msg.data[v63 + 128] + 32, msg.data[v63 + msg.data[v63 + 128]]);
                            v221[msg.data[v63 + msg.data[v63 + 128]]] = 0;
                            require(!((address(msg.data[v63 + 64]) == 0xbbbbbbb520d69a9775e85b458c58c648259fad5f) | (address(msg.data[v63 + 64]) == 0x22d473030f116ddee9f6b43ac78ba3)), ConfusedDeputy());
                            v222 = v223 = 0;
                            if (address(msg.data[v63]) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                if (0 == !address(msg.data[v63])) {
                                    v224 = fun_fastBalanceOf(msg.data[v63], this);
                                    MEM[0] = v224 * msg.data[v63 + 32] % uint256.max - v224 * msg.data[v63 + 32] - (v224 * msg.data[v63 + 32] % uint256.max < v224 * msg.data[v63 + 32]);
                                    MEM[32] = v224 * msg.data[v63 + 32];
                                    if (!MEM[0]) {
                                        v225 = MEM[32] / 10000;
                                    } else {
                                        v225 = v226 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
                                    }
                                    require(msg.data[v63 + 96] <= msg.data[v63 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v221.length >= msg.data[v63 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v227 = 0;
                                    v221[msg.data[v63 + 96]] = v225;
                                    if (address(msg.data[v63]) - address(msg.data[v63 + 64])) {
                                        fun_safeApproveIfBelow(msg.data[v63], address(msg.data[v63 + 64]), v225);
                                    }
                                } else {
                                    require(!msg.data[v63 + 96], InvalidOffset());
                                    v227 = v228 = 0;
                                }
                            } else {
                                v229 = this.balance;
                                v222 = v229 * msg.data[v63 + 32] / 10000;
                                if (0 == !v221.length) {
                                    require(msg.data[v63 + 96] <= msg.data[v63 + 96] + 32, Panic(17)); // arithmetic overflow or underflow
                                    require(v221.length >= msg.data[v63 + 96] + 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v227 = v230 = 0;
                                    v221[msg.data[v63 + 96]] = v222;
                                } else {
                                    require(!msg.data[v63 + 96], InvalidOffset());
                                    v231 = address(msg.data[v63 + 64]).call().value(v222).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v232 = v233 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v232 = new bytes[](RETURNDATASIZE());
                                        require(!((v232 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v232 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v232)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v232.data, 0, RETURNDATASIZE());
                                    }
                                    require(v231, v232 + 32, MEM[v232]);
                                }
                            }
                            v65 = v234 = 1;
                            v235 = address(msg.data[v63 + 64]).call(MEM[v1d610x1d74V0x1da4V0x29f2.data:v1d610x1d74V0x1da4V0x29f2.data + v1d610x1d74V0x1da4V0x29f2.length], MEM[v40baV0x2a00:v40baV0x2a00 + v40baV0x2a00]).value(v222).gas(msg.gas);
                            if (!RETURNDATASIZE()) {
                                v236 = v237 = 96;
                            } else {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v236 = new bytes[](RETURNDATASIZE());
                                require(!((v236 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v236 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v236)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v236.data, 0, RETURNDATASIZE());
                            }
                            require(v235, v236 + 32, MEM[v236]);
                            v238 = v239 = !MEM[v236];
                            if (v239) {
                                v238 = v240 = !(address(msg.data[v63 + 64])).code.size;
                            }
                            require(!v238, InvalidTarget());
                        }
                    } else {
                        require(v63 + v62 - v63 >= 192);
                        require(!(msg.data[v63] - address(msg.data[v63])));
                        require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                        require(!(msg.data[v63 + 96] - address(msg.data[v63 + 96])));
                        require(!(msg.data[v63 + 128] - uint24(msg.data[v63 + 128])));
                        v241 = v242 = 0;
                        if (msg.data[v63 + 64]) {
                            v243 = fun_fastBalanceOf(address(msg.data[v63 + 32]), this);
                            v241 = v244 = v243 * msg.data[v63 + 64] / 10000;
                            fun_safeTransfer(address(msg.data[v63 + 32]), address(msg.data[v63 + 96]), v244);
                        }
                        v245 = address(msg.data[v63 + 96]).getReserves().gas(msg.gas);
                        if (!v245) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(RETURNDATASIZE() >= 64);
                            v246 = v247 = !v241;
                            if (bool(v241)) {
                                v246 = v248 = msg.data[v63 + 128] >> 1 & 0x1 == 1;
                            }
                            if (v246) {
                                v249 = fun_fastBalanceOf(address(msg.data[v63 + 32]), address(msg.data[v63 + 96]));
                                v241 = v250 = _SafeSub(v249, MEM[0x20 ^ (msg.data[v63 + 128] & 0x1 == 1) << 5]);
                            }
                            require((10000 - uint16(msg.data[v63 + 128] >> 8)) * v241 + MEM[0x20 ^ (msg.data[v63 + 128] & 0x1 == 1) << 5] * 10000, Panic(18)); // division by zero
                            v251 = (10000 - uint16(msg.data[v63 + 128] >> 8)) * v241 * MEM[(msg.data[v63 + 128] & 0x1 == 1) << 5] / ((10000 - uint16(msg.data[v63 + 128] >> 8)) * v241 + MEM[0x20 ^ (msg.data[v63 + 128] & 0x1 == 1) << 5] * 10000);
                            if (v251 < msg.data[v63 + 160]) {
                                v252 = address(msg.data[v63 + 96]).token0().gas(msg.gas);
                                require(v252, MEM[64], RETURNDATASIZE());
                                require(!((32 > RETURNDATASIZE()) | MEM[0] >> 160));
                                revert(TooMuchSlippage(MEM[0], 0x97a6f3b9000000000000000000000000, msg.data[v63 + 160], v251));
                            } else {
                                MEM[MEM[64] + ((msg.data[v63 + 128] & 0x1 == 1) << 5) + 32] = v251;
                                MEM[MEM[64] + (0x20 ^ (msg.data[v63 + 128] & 0x1 == 1) << 5) + 32] = 0;
                                v253 = address(msg.data[v63 + 96]).swap(v24, v24, address(msg.data[v63]), 128, 0).gas(msg.gas);
                                if (!v253) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v65 = v254 = 1;
                                }
                            }
                        }
                    }
                } else {
                    require(v63 + v62 - v63 >= 128);
                    require(!(msg.data[v63] - address(msg.data[v63])));
                    require(msg.data[v63 + 64] <= uint64.max);
                    require(v63 + msg.data[v63 + 64] + 31 < v63 + v62);
                    require(msg.data[v63 + msg.data[v63 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v255 = new bytes[](msg.data[v63 + msg.data[v63 + 64]]);
                    require(!((v255 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v255 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 64]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v255)), Panic(65)); // failed memory allocation (too much memory)
                    require(v63 + msg.data[v63 + 64] + 32 + msg.data[v63 + msg.data[v63 + 64]] <= v63 + v62);
                    CALLDATACOPY(v255.data, v63 + msg.data[v63 + 64] + 32, msg.data[v63 + msg.data[v63 + 64]]);
                    v255[msg.data[v63 + msg.data[v63 + 64]]] = 0;
                    v256 = v257 = bytes20(MEM[v255.data]);
                    if (v255.length < 20) {
                        v256 = v258 = bytes20(0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - v255.length << 3) & MEM[v255.data]);
                    }
                    v259 = (v256 >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    if (!v259) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        require(31 < RETURNDATASIZE());
                        require(!MEM[0] | (MEM[0] * msg.data[v63 + 32] / MEM[0] == msg.data[v63 + 32]), Panic(17)); // arithmetic overflow or underflow
                        v260 = new bytes[](40);
                        require(!((v260 + 96 > uint64.max) | (v260 + 96 < v260)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v260.data, msg.data.length, 64);
                        v261 = fun__uniV3ForkSwap(address(msg.data[v63]), v255, MEM[0] * msg.data[v63 + 32] / 10000, msg.data[v63 + 96], this, v260);
                        v65 = v262 = 1;
                    }
                }
            } else {
                require(v63 + v62 - v63 >= 288);
                require(!(msg.data[v63] - address(msg.data[v63])));
                require(v63 + v62 - (v63 + 32) >= 128);
                v263 = new struct(3);
                require(!((v263 + 96 > uint64.max) | (v263 + 96 < v263)), Panic(65)); // failed memory allocation (too much memory)
                require(v63 + v62 - (v63 + 32) >= 64);
                v264 = new struct(2);
                require(!((v264 + 64 > uint64.max) | (v264 + 64 < v264)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[v63 + 32] - address(msg.data[v63 + 32])));
                v264.word0 = msg.data[v63 + 32];
                v264.word1 = msg.data[v63 + 32 + 32];
                v263.word0 = v264;
                v263.word1 = msg.data[v63 + 32 + 64];
                v263.word2 = msg.data[v63 + 32 + 96];
                require(!(msg.data[v63 + 160] - address(msg.data[v63 + 160])));
                require(msg.data[v63 + 192] <= uint64.max);
                require(v63 + msg.data[v63 + 192] + 31 < v63 + v62);
                require(msg.data[v63 + msg.data[v63 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v265 = new bytes[](msg.data[v63 + msg.data[v63 + 192]]);
                require(!((v265 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v265 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v63 + msg.data[v63 + 192]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v265)), Panic(65)); // failed memory allocation (too much memory)
                require(v63 + msg.data[v63 + 192] + 32 + msg.data[v63 + msg.data[v63 + 192]] <= v63 + v62);
                CALLDATACOPY(v265.data, v63 + msg.data[v63 + 192] + 32, msg.data[v63 + msg.data[v63 + 192]]);
                v265[msg.data[v63 + msg.data[v63 + 192]]] = 0;
                require(!(msg.data[v63 + 224] - address(msg.data[v63 + 224])));
                v266, v267 = fun_permitToTransferDetails(v263, address(msg.data[v63]));
                v268 = new struct(4);
                require(!((v268 + 128 > uint64.max) | (v268 + 128 < v268)), Panic(65)); // failed memory allocation (too much memory)
                v268.word0 = address(MEM[v263.word0]);
                v268.word1 = v266;
                v268.word2 = address(msg.data[v63 + 160]);
                v268.word3 = 1;
                MEM[v268 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v268 - 32] = MEM[v268 - 32];
                v269 = new struct(4);
                require(!((v269 + 128 > uint64.max) | (v269 + 128 < v269)), Panic(65)); // failed memory allocation (too much memory)
                v269.word0 = address(msg.data[v63 + 224]);
                v269.word1 = msg.data[v63 + (uint8.max + 1)];
                v269.word2 = address(_fun_toCanonicalSellAmount);
                v269.word3 = 1;
                MEM[v269 - 32] = 0x7d806873084f389a66fd0315dead7adaad8ae6e8b6cf9fb0d3db61e5a91c3ffa;
                MEM[v269 - 32] = MEM[v269 - 32];
                v270 = fun_fastBalanceOf(msg.data[v63 + 224], this);
                v267.word1 = v266 * ((msg.data[v63 + (uint8.max + 1)] ^ v270) * (v270 > msg.data[v63 + (uint8.max + 1)]) ^ v270) / msg.data[v63 + (uint8.max + 1)];
                v271 = msg.data[v63 + 224].transfer(address(msg.data[v63 + 160]), 0xa9059cbb000000000000000000000000, (msg.data[v63 + (uint8.max + 1)] ^ v270) * (v270 > msg.data[v63 + (uint8.max + 1)]) ^ v270).gas(msg.gas);
                if (!v271) {
                    RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                    revert(uint24(MEM[64]), RETURNDATASIZE());
                } else {
                    require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
                    MEM[52] = 0;
                    require(!(('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 > uint64.max) | ('Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)' + 128 < 'Consideration(address token,uint256 amount,address counterparty,bool partialFillAllowed)')), Panic(65)); // failed memory allocation (too much memory)
                    require(!(('TokenPermissions(address token,uint256 amount)' + 96 > uint64.max) | ('TokenPermissions(address token,uint256 amount)' + 96 < 'TokenPermissions(address token,uint256 amount)')), Panic(65)); // failed memory allocation (too much memory)
                    v272 = new bytes[](162);
                    MEM[v272.data] = 'Consideration consideration)';
                    MCOPY(v272 + 60, v273.data, v273.length);
                    MEM[v272 + v273.length + 60] = 0;
                    MCOPY(v272 + v273.length + 60, v274.data, v274.length);
                    MEM[v272 + v273.length + v274.length + 60] = 0;
                    require(!((v272 + 224 > uint64.max) | (v272 + 224 < v272)), Panic(65)); // failed memory allocation (too much memory)
                    MCOPY(32 + MEM[64], v263.word0, 64);
                    MCOPY(96 + MEM[64], 32 + v263, 64);
                    MCOPY(160 + MEM[64], v267, 64);
                    MCOPY(352 + MEM[64], v272, 194);
                    MCOPY(384 + (MEM[64] + v272.length), v265, 32 + v265.length);
                    v275 = 0x22d473030f116ddee9f6b43ac78ba3.permitWitnessTransferFrom(v24, v24, v24, v24, v24, v24, address(msg.data[v63 + 160]), keccak256(MEM[v2476 - 32:v2476 - 32 + 160]), 320, 514).gas(msg.gas);
                    if (!v275) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        emit keccak256(0x49fa719b76f0f6b7e76be94b56c26671a548e1c712d5b13dc2874f70a7598276, keccak256(MEM[v2476 - 32:v2476 - 32 + 160]), keccak256(MEM[v2403 - 32:v2403 - 32 + 160]))(uint128(v266 * ((msg.data[v63 + (uint8.max + 1)] ^ v270) * (v270 > msg.data[v63 + (uint8.max + 1)]) ^ v270) / msg.data[v63 + (uint8.max + 1)]), uint128(v266 * ((msg.data[v63 + (uint8.max + 1)] ^ v270) * (v270 > msg.data[v63 + (uint8.max + 1)]) ^ v270) / msg.data[v63 + (uint8.max + 1)]));
                        v65 = v276 = 1;
                    }
                }
            }
            if (!v65) {
                v277 = new uint256[](v62);
                CALLDATACOPY(v277.data, v63, v62);
                revert(ActionInvalid(v60, bytes4(msg.data[varg3 + msg.data[v58] + 68]), v277));
            } else {
                v58 = v58 + 32;
                v60 = v60 + 1;
            }
        }
        require(v0.word2);
        if (address(v0.word1) != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            v278 = v279 = fun_fastBalanceOf(address(v0.word1), this);
        } else {
            v278 = v280 = this.balance;
        }
        require(v278 >= v0.word2, TooMuchSlippage(address(v0.word1), 0x97a6f3b9000000000000000000000000, v0.word2, v278));
        if (0 == (address(v0.word1) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
            fun_safeTransfer(address(v0.word1), address(v0.word0), v278);
        } else {
            fun_safeTransferETH(address(v0.word0), v278);
        }
        MEM[v7b:v7b + 96] = this.code[this.code.size:this.code.size + 96];
        require(!((_fun_toCanonicalSellAmount ^ varg4) << 96), PayerSpent());
        _fun_toCanonicalSellAmount = 0;
        require(!_fun_transferFrom, WitnessNotSpent(_fun_transferFrom));
        return 1;
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function fun_uniV3ForkSwap(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, bytes varg4) private { 
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
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v8 = _fun__uniV3ForkSwap;
                    require(!v8, ReentrantCallback(v8));
                    _fun__uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v9 = address(keccak256(v7, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1f60d1 + 32:v1f60d1 + 32 + 196 + v410barg0x4.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v10 = v11 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = new bytes[](RETURNDATASIZE());
                        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
                    }
                    require(v9, v12 + 32, MEM[v12]);
                    v13 = _fun__uniV3ForkSwap;
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
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v15 = _fun__uniV3ForkSwap;
                    require(!v15, ReentrantCallback(v15));
                    _fun__uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v16 = address(keccak256(v7, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1f6044 + 32:v1f6044 + 32 + 196 + v410barg0x4.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v10 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v10 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
                    }
                    require(v16, v19 + 32, MEM[v19]);
                    v20 = _fun__uniV3ForkSwap;
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
                require((_fun_toCanonicalSellAmount ^ address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v22 = _fun__uniV3ForkSwap;
                require(!v22, ReentrantCallback(v22));
                _fun__uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v23 = address(keccak256(v7, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1f5fb7 + 32:v1f5fb7 + 32 + 196 + v410barg0x4.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v10 = v24 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v10 = v25 = new bytes[](RETURNDATASIZE());
                    require(!((v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
                }
                require(v23, v26 + 32, MEM[v26]);
                v27 = _fun__uniV3ForkSwap;
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
            require((_fun_toCanonicalSellAmount ^ address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v29 = _fun__uniV3ForkSwap;
            require(!v29, ReentrantCallback(v29));
            _fun__uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v30 = address(keccak256(v7, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v410barg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1f5f2a + 32:v1f5f2a + 32 + 196 + v410barg0x4.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v10 = v31 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = v32 = new bytes[](RETURNDATASIZE());
                require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
            }
            require(v30, v33 + 32, MEM[v33]);
            v34 = _fun__uniV3ForkSwap;
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

function fun__uniV3ForkSwap(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, uint256 varg4, bytes varg5) private { 
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
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf))) << 96, ConfusedDeputy());
                    v6 = _fun__uniV3ForkSwap;
                    require(!v6, ReentrantCallback(v6));
                    _fun__uniV3ForkSwap = 0x3a1c453c00000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)) | 0x40000000000000000000000000000000000000000;
                    v7 = address(keccak256(v5, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)).call(MEM[v1f6305 + 32:v1f6305 + 32 + 196 + v441aarg0x5.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v8 = v9 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v8 = new bytes[](RETURNDATASIZE());
                        require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
                    }
                    require(v7, v10 + 32, MEM[v10]);
                    v11 = _fun__uniV3ForkSwap;
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
                    require((_fun_toCanonicalSellAmount ^ address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
                    v13 = _fun__uniV3ForkSwap;
                    require(!v13, ReentrantCallback(v13));
                    _fun__uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
                    v14 = address(keccak256(v5, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1f6278 + 32:v1f6278 + 32 + 196 + v441aarg0x5.length], MEM[0:0]).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v8 = v15 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v8 = v16 = new bytes[](RETURNDATASIZE());
                        require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());
                    }
                    require(v14, v17 + 32, MEM[v17]);
                    v18 = _fun__uniV3ForkSwap;
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
                require((_fun_toCanonicalSellAmount ^ address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))) << 96, ConfusedDeputy());
                v20 = _fun__uniV3ForkSwap;
                require(!v20, ReentrantCallback(v20));
                _fun__uniV3ForkSwap = 0x23a69e7500000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) | 0x40000000000000000000000000000000000000000;
                v21 = address(keccak256(v5, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)).call(MEM[v1f61eb + 32:v1f61eb + 32 + 196 + v441aarg0x5.length], MEM[0:0]).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v8 = v22 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v8 = v23 = new bytes[](RETURNDATASIZE());
                    require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
                }
                require(v21, v24 + 32, MEM[v24]);
                v25 = _fun__uniV3ForkSwap;
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
            require((_fun_toCanonicalSellAmount ^ address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))) << 96, ConfusedDeputy());
            v27 = _fun__uniV3ForkSwap;
            require(!v27, ReentrantCallback(v27));
            _fun__uniV3ForkSwap = 0xfa461e3300000000000000000000000000000000000000000000000000000000 | address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)) | 0x40000000000000000000000000000000000000000;
            v28 = address(keccak256(v5, 0x1f98431c8ad98523631ae4a59f267346ea31f984, keccak256(MEM[0x0:96 - !uint24(MEM[24 + v441aarg0x1]) << 5]), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[v1f615e + 32:v1f615e + 32 + 196 + v441aarg0x5.length], MEM[0:0]).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v8 = v29 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = v30 = new bytes[](RETURNDATASIZE());
                require(!((v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v30.data, 0, RETURNDATASIZE());
            }
            require(v28, v31 + 32, MEM[v31]);
            v32 = _fun__uniV3ForkSwap;
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

function allocate_and_zero_memory_struct_struct_PoolKey_15544() private { 
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

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = fun_owner();
    return address(v0);
}

function fun_unsafeDiv_40271() private { 
    if (!MEM[0]) {
        return MEM[32] / 10000;
    } else {
        return 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (MEM[0] - (MEM[32] < (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000) << 252 | MEM[32] - (MEM[32] + MEM[0] * 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffd8f0 % 10000) % 10000 >> 4);
    }
}

function getSolvers() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 64 + MEM[64];
    v2 = v3 = address(_getSolvers[0x1]);
    while (1 - v2) {
        MEM[v0] = v2;
        v0 += 32;
        v2 = v4 = address(_getSolvers[v2]);
    }
    v5 = new uint256[](v0 - MEM[64] - 64 >> 5);
    return v5;
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

function setSolver(address varg0, address varg1, bool varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = fun_owner();
    require(!((v0 ^ (msg.sender ^ (msg.data[msg.data.length - 20] >> 96 ^ msg.sender) * ((3 < msg.data.length) & !((0xcf9e3c5a26621af382fa17f24f ^ msg.sender) << 96)))) << 96), PermissionDenied());
    _getSolvers[varg0] = (address(_getSolvers[varg1]) ^ varg1) * varg2 ^ address(_getSolvers[varg1]);
    _getSolvers[varg1] = varg2;
    require(!((_getSolvers[varg0] ^ (varg1 ^ (0x1 ^ varg1) * varg2)) << 96 | (!address(_getSolvers[varg1]) ^ varg2 | !varg1)), InvalidSolver(varg0, varg1));
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
        require((_fun_toCanonicalSellAmount ^ msg.sender) << 96, ConfusedDeputy());
        require(!_fun__uniV3ForkSwap, ReentrantCallback(_fun__uniV3ForkSwap));
        _fun__uniV3ForkSwap = msg.sender | 0x599d071400000000000000020000000000000000000000000000000000000000;
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
        require(!_fun__uniV3ForkSwap, CallbackNotSpent(_fun__uniV3ForkSwap));
        return MEM[96 + v6];
    } else {
        fun_safeTransferETH(msg.sender, varg2);
        return varg2;
    }
}

function fun_toCanonicalSellAmount(uint256 varg0, uint256 varg1) private { 
    if (~varg1 < 10000) {
        if (EXTCODEHASH(_fun_toCanonicalSellAmount) == 0xe98f46388916ca2f096ea767dc04dddb45d2ca2c2f44e7bcc529d6aded9c11f0) {
            v0 = fun_fastBalanceOf(varg0, _fun_toCanonicalSellAmount);
            MEM[0] = v0 * (10000 - ~varg1) % uint256.max - v0 * (10000 - ~varg1) - (v0 * (10000 - ~varg1) % uint256.max < v0 * (10000 - ~varg1));
            MEM[32] = v0 * (10000 - ~varg1);
            v1 = fun_unsafeDiv_40271();
            return v1;
        } else {
            return varg1;
        }
    } else {
        return varg1;
    }
}

function fun_owner() private { 
    v0 = 0x4533fe15556b1e086bb1a72ceae.authorized(4).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    require(RETURNDATASIZE() >= 64);
    require(!((block.timestamp > MEM[32]) | (MEM[0] >> 160 | MEM[32] >> 40)));
    return MEM[0];
}

function 0xc56(uint256 varg0, uint256 varg1) private { 
    require(varg0, varg1);
    v0, /* uint256 */ v1 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), this, (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != varg1 << 96) * (varg1 << 96), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    MEM[96] = 0;
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21) public payable { 
    if (msg.data.length >= 4) {
        if (0x4b7758a5 == function_selector >> 224) {
            setSolver(address,address,bool);
        } else if (0x8bc1e8eb == function_selector >> 224) {
            getSolvers();
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
        v0 = _fun__uniV3ForkSwap;
        v1 = uint16(v0 >> 160) * !((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96);
        if (!((function_selector ^ v0) >> 224 | (msg.sender ^ v0) << 96)) {
            _fun__uniV3ForkSwap = 0;
        }
        if (v1) {
            if (v1 == 3) {
                v2 = v3 = varg10 >> 128;
                v4 = v5 = 0;
                v6 = new struct(39);
                v6.word6 = 0;
                MEM[v18f30x4b4dV0x1899V0x1a + 480:v18f30x4b4dV0x1899V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
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
                    require(!(msg.data[v7] - address(msg.data[v7])));
                    v26 = fun_toCanonicalSellAmount(address(msg.data[v7]), msg.data[v7 + 32]);
                    MEM[v6.word2] = v26;
                }
                if (0x1000000000000000000000000000000 & varg13) {
                    v27 = v28 = MEM[v6.word2];
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v6.word2])) {
                        v29, /* uint256 */ v30 = msg.sender.startPayments(MEM[32 + v6.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                        require(v29, v30, RETURNDATASIZE());
                        if (this - address(varg16 >> 96)) {
                            v31 = new struct(2);
                            require(!((v31 + 64 > uint64.max) | (v31 + 64 < v31)), Panic(65)); // failed memory allocation (too much memory)
                            v31.word0 = msg.sender;
                            v31.word1 = v28;
                            require(msg.data.length - v7 >= 128);
                            v32 = new struct(3);
                            require(!((v32 + 96 > uint64.max) | (v32 + 96 < v32)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v7 >= 64);
                            v33 = new struct(2);
                            require(!((v33 + 64 > uint64.max) | (v33 + 64 < v33)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v7] - address(msg.data[v7])));
                            v33.word0 = msg.data[v7];
                            v33.word1 = msg.data[v7 + 32];
                            v32.word0 = v33;
                            v32.word1 = msg.data[v7 + 64];
                            v32.word2 = msg.data[v7 + 96];
                            require(v11 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v34 = new bytes[](v11);
                            require(!((v34 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v34 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v34)), Panic(65)); // failed memory allocation (too much memory)
                            require(v9 + v11 <= msg.data.length);
                            CALLDATACOPY(v34.data, v9, v11);
                            v34[v11] = 0;
                            fun_transferFrom(v32, v31, v34, v4);
                        } else {
                            fun_safeTransfer(MEM[32 + v6.word2], msg.sender, v28);
                        }
                        v35 = msg.sender.completePayments(MEM[32 + v6.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                        require(v35, MEM[64], RETURNDATASIZE());
                        v27 = 0x12e103f1000000000000000000000000 >> 128;
                    } else {
                        fun_safeTransferETH(msg.sender, v28);
                    }
                    MEM[v6.word2] = v27;
                }
                require(!(MEM[v6.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                v6.word3 = MEM[v6.word2];
                fun_checkZeroSellAmount(v6);
                v36 = allocate_and_zero_memory_struct_struct_PoolKey_15544();
                while (v19 >= 47) {
                    v37 = v38 = msg.data[14 + v17];
                    v39 = v40 = 1;
                    if (v38 >> 248) {
                        if (!MEM[64 + v6.word0]) {
                            v6.word6 += v40;
                            MEM[(v40 + v6.word6 << 5) + (192 + v6)] = v6.word0;
                            MEM[64 + v6.word0] = (v40 + v6.word6 << 5) + (192 + v6);
                        }
                        if (v38 >> 248 > v40) {
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
                            if ((v38 >> 248) - 2) {
                                require(3 == v38 >> 248, Panic(1)); // low-level assert failed
                                v37 = msg.data[34 + v17];
                                v39 = 21;
                                require(!((MEM[address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 352] | MEM[address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320]) * (MEM[address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] ^ address(v38 >> 88))), MEM[address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320], address(v38 >> 88));
                                require(address(v38 >> 88), ZeroToken());
                                MEM[address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] = address(v38 >> 88);
                                v6.word1 = address(v38 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288;
                            } else {
                                v6.word1 = v6.word0;
                            }
                        }
                        v39 = v41 = v39 + 20;
                        v42 = MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320];
                        require(!((MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 352] | v42) * (v42 ^ address(v37 >> 88))), v42, address(v37 >> 88));
                        require(address(v37 >> 88), ZeroToken());
                        MEM[address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 320] = address(v37 >> 88);
                        v6.word0 = address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288;
                        if (address(v37 >> 88) * v6.word4 % v6.word5 % 768 + (192 + v6) + 288 == v6.word2) {
                            MEM[v6.word2] = 0x784cb7b8;
                            revert(28 + v6.word2, 36);
                        }
                    }
                    v43 = v44 = (msg.data[v17] >> 240 & 0x7fff) * MEM[v6.word1] / 10000;
                    v45 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v6.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v6.word1] << 96) & (MEM[32 + v6.word0] << 96 < MEM[32 + v6.word1] << 96);
                    v36.word1 = address(address(MEM[32 + v6.word0]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v45);
                    v36.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v6.word1]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v45)) * address(address(MEM[32 + v6.word1]) ^ (address(MEM[32 + v6.word1]) ^ address(MEM[32 + v6.word0])) * v45);
                    v17 = 32 + (v39 + (14 + v17));
                    v19 = v19 - 14 - v39 - 32;
                    v36.word2 = msg.data[v39 + (14 + v17)];
                    require(uint24.max >= v19, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (0 == !(0x8000 & msg.data[v17] >> 240)) {
                        MCOPY(52 + MEM[64], v36, 96);
                        MCOPY(32 + MEM[64], 64 + v36, 20);
                        v46 = msg.sender.forward(v47, v47, msg.data[2 + v17] >> 160, msg.data[2 + v17] >> 160, msg.data[2 + v17] >> 160, v44, v45 << 31).gas(msg.gas);
                        if (!v46) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!((64 > RETURNDATASIZE()) | int128(v44) ^ v44));
                            v48 = int128(MEM[0]);
                            v49 = (MEM[0] >> 128 ^ v48) * v45;
                            v50 = v6.word1;
                            v51 = MEM[0] >> 128 ^ v49;
                            if (v51 < 0) {
                                MEM[v50] = 0x4c085bf1;
                                revert(28 + v50, 36);
                            } else {
                                // Unknown jump to Block 0x1c10B0x1a. Refer to 3-address code (TAC);
                            }
                        }
                    } else {
                        MCOPY(32 + MEM[64], v36, 96);
                        v52 = msg.sender.call(0, v47, v47, msg.data[2 + v17] >> 160, v45 << 31, msg.data[2 + v17] >> 160, v44).gas(msg.gas);
                        if (!v52) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            require(!(int128(v44) ^ v44));
                            v48 = v53 = int128(MEM[0]);
                            v49 = v54 = (MEM[0] >> 128 ^ v53) * v45;
                            v50 = v55 = v6.word1;
                            v51 = v56 = MEM[0] >> 128 ^ v54;
                            if (v56 < 0) {
                                MEM[v55] = 0x4c085bf1;
                                revert(28 + v55, 36);
                            }
                        }
                    }
                    MEM[v50] = MEM[v50] - v51;
                    require(!((v51 > v43) | (v51 > MEM[v50])), Panic(17)); // arithmetic overflow or underflow
                    if (v48 ^ v49 > 0) {
                        MEM[v6.word0] = 0x3351b260;
                        revert(28 + v6.word0, 36);
                    } else {
                        MEM[v6.word0] += 0 - (v48 ^ v49);
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
                    v57 = 1;
                    while (v57 < v6.word6) {
                        0x1a76(MEM[MEM[(v57 << 5) + (192 + v6) + 32]], MEM[32 + MEM[(v57 << 5) + (192 + v6) + 32]]);
                        v57 = v57 + 1;
                    }
                }
                v58 = MEM[32 + v6.word0];
                v59 = MEM[v6.word0];
                if (v59 >= v3) {
                    fun__callSelector(v58, varg9 >> 96, v59);
                    if (bool(!(0x1000000000000000000000000000000 & varg13))) {
                        require(v6.word3 != MEM[v6.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v6.word2]));
                        v60 = v61 = v6.word3 - MEM[v6.word2];
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v6.word2])) {
                            v62, /* uint256 */ v63 = msg.sender.startPayments(MEM[32 + v6.word2], 0xf9b6a796000000000000000000000000).gas(msg.gas);
                            require(v62, v63, RETURNDATASIZE());
                            if (this - address(varg16 >> 96)) {
                                v64 = new struct(2);
                                require(!((v64 + 64 > uint64.max) | (v64 + 64 < v64)), Panic(65)); // failed memory allocation (too much memory)
                                v64.word0 = msg.sender;
                                v64.word1 = v61;
                                require(msg.data.length - v7 >= 128);
                                v65 = new struct(3);
                                require(!((v65 + 96 > uint64.max) | (v65 + 96 < v65)), Panic(65)); // failed memory allocation (too much memory)
                                require(msg.data.length - v7 >= 64);
                                v66 = new struct(2);
                                require(!((v66 + 64 > uint64.max) | (v66 + 64 < v66)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(msg.data[v7] - address(msg.data[v7])));
                                v66.word0 = msg.data[v7];
                                v66.word1 = msg.data[v7 + 32];
                                v65.word0 = v66;
                                v65.word1 = msg.data[v7 + 64];
                                v65.word2 = msg.data[v7 + 96];
                                require(v11 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v67 = new bytes[](v11);
                                require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
                                require(v9 + v11 <= msg.data.length);
                                CALLDATACOPY(v67.data, v9, v11);
                                v67[v11] = 0;
                                fun_transferFrom(v65, v64, v67, v4);
                            } else {
                                fun_safeTransfer(MEM[32 + v6.word2], msg.sender, v61);
                            }
                            v68 = msg.sender.completePayments(MEM[32 + v6.word2], 0x12e103f1000000000000000000000000).gas(msg.gas);
                            require(v68, MEM[64], RETURNDATASIZE());
                        } else {
                            fun_safeTransferETH(msg.sender, v61);
                        }
                    } else {
                        if (MEM[v6.word2]) {
                            if (address(varg16 >> 96) != this) {
                                v69 = _fun_toCanonicalSellAmount;
                            } else {
                                v69 = v70 = this;
                            }
                            require(MEM[v6.word2], MEM[32 + v6.word2], 0xcbf0dbf5000000000000000000000000);
                            v71, /* uint256 */ v72 = msg.sender.receive(bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ MEM[32 + v6.word2]) << 96) * MEM[32 + v6.word2], v69, bool((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee ^ MEM[32 + v6.word2]) << 96) * MEM[32 + v6.word2], MEM[v6.word2]).gas(msg.gas);
                            require(v71, MEM[64], RETURNDATASIZE());
                        }
                        v73 = v74 = new bytes[](96);
                        MEM[v74.data] = 32;
                        MEM[64 + v74] = 32;
                        MEM[96 + v74] = v59;
                    }
                }
            } else if (6 == v1) {
                v2 = v75 = varg2 >> 128;
                v76 = v77 = 0;
                v78 = new struct(39);
                v78.word6 = 0;
                MEM[v4b4dV0x13c4V0x1a + 480:v4b4dV0x13c4V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                v79 = MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 320];
                require(!((MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 352] | v79) * (v79 ^ address(varg8 >> 96))), v79, address(varg8 >> 96));
                require(address(varg8 >> 96), ZeroToken());
                MEM[address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 320] = address(varg8 >> 96);
                v78.word0 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 288;
                v78.word1 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 288;
                v78.word2 = address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 288;
                v78.word4 = uint128(varg2);
                v78.word5 = varg4 >> 128;
                v80 = v81 = msg.data.length;
                v82 = v83 = msg.data.length;
                v84 = v85 = 0;
                if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg8 >> 96) * uint128(varg2) % (varg4 >> 128) % 768 + (192 + v78) + 288)])) {
                    if (address(varg6 >> 96) - this) {
                        require(!bool(address(varg6 >> 96)), Panic(1)); // low-level assert failed
                        v80 = v86 = 77;
                        v76 = v87 = 0x1 & varg17;
                        v84 = v88 = msg.data[89 + (msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 89) - 3] >> 232;
                        v82 = v89 = 89 + (msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 89) - v88 - 3;
                        v90 = v91 = 206;
                        require(v91 <= v89);
                        v92 = v93 = msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 89 - v88 - 120;
                    } else {
                        v90 = v94 = 111;
                        v92 = v95 = msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 89 - 22;
                        v96 = fun_fastBalanceOf(MEM[32 + v78.word2], this);
                        MEM[v78.word2] = uint16(varg8 >> 80) * v96 / 10000;
                    }
                } else {
                    require(this == address(varg6 >> 96), Panic(1)); // low-level assert failed
                    MEM[v78.word2] = this.balance * uint16(varg8 >> 80) / 10000;
                    v92 = v97 = msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 89 - 22;
                    v90 = v98 = 111;
                }
                require(uint24.max >= v92, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if ((varg6 >> 96) - this) {
                    require(!(msg.data[v80] - address(msg.data[v80])));
                    v99 = fun_toCanonicalSellAmount(address(msg.data[v80]), msg.data[v80 + 32]);
                    MEM[v78.word2] = v99;
                }
                if (0x1000000000000000000000000000000 & varg4) {
                    if (this - address(varg6 >> 96)) {
                        v100 = new struct(2);
                        require(!((v100 + 64 > uint64.max) | (v100 + 64 < v100)), Panic(65)); // failed memory allocation (too much memory)
                        v100.word0 = msg.sender;
                        v100.word1 = MEM[v78.word2];
                        require(msg.data.length - v80 >= 128);
                        v101 = new struct(3);
                        require(!((v101 + 96 > uint64.max) | (v101 + 96 < v101)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - v80 >= 64);
                        v102 = new struct(2);
                        require(!((v102 + 64 > uint64.max) | (v102 + 64 < v102)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[v80] - address(msg.data[v80])));
                        v102.word0 = msg.data[v80];
                        v102.word1 = msg.data[v80 + 32];
                        v101.word0 = v102;
                        v101.word1 = msg.data[v80 + 64];
                        v101.word2 = msg.data[v80 + 96];
                        require(v84 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v103 = new bytes[](v84);
                        require(!((v103 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v84) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v103 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v84) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v103)), Panic(65)); // failed memory allocation (too much memory)
                        require(v82 + v84 <= msg.data.length);
                        CALLDATACOPY(v103.data, v82, v84);
                        v103[v84] = 0;
                        fun_transferFrom(v101, v100, v103, v76);
                    } else if (MEM[v78.word2]) {
                        fun_safeTransfer(MEM[32 + v78.word2], msg.sender, MEM[v78.word2]);
                    }
                    v104 = msg.sender.settle(MEM[32 + v78.word2], 0x15afd409000000000000000000000000, MEM[v78.word2]).gas(msg.gas);
                    if (!v104) {
                        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                        revert(uint24(MEM[64]), RETURNDATASIZE());
                    } else {
                        MEM[52] = 0;
                        MEM[v78.word2] = MEM[0];
                    }
                }
                v78.word3 = MEM[v78.word2];
                fun_checkZeroSellAmount(v78);
                v105 = v106 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
                v107 = v108 = MEM[64];
                require(!((v108 + 224 > uint64.max) | (v108 + 224 < v108)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v108 + 224;
                MEM[v108] = 0;
                MEM[v108 + 32] = 0;
                MEM[v108 + 64] = 0;
                MEM[v108 + 96] = 0;
                MEM[v108 + 128] = 0;
                MEM[v108 + 160] = 0;
                MEM[v108 + 192] = 96;
                while (v92 >= 3) {
                    v109 = v110 = msg.data[2 + v90];
                    v111 = v112 = 1;
                    if (v110 >> 248) {
                        if (!MEM[64 + v78.word0]) {
                            v78.word6 += v112;
                            MEM[(v112 + v78.word6 << 5) + (192 + v78)] = v78.word0;
                            MEM[64 + v78.word0] = (v112 + v78.word6 << 5) + (192 + v78);
                        }
                        if (v110 >> 248 > v112) {
                            if (!MEM[v78.word1]) {
                                if (MEM[64 + v78.word1]) {
                                    MEM[64 + v78.word1] = 0;
                                    v78.word6 = v78.word6 - 1;
                                    if ((v78.word6 << 5) + (192 + v78) - MEM[64 + v78.word1]) {
                                        MEM[MEM[64 + v78.word1]] = MEM[(v78.word6 << 5) + (192 + v78)];
                                        MEM[64 + MEM[(v78.word6 << 5) + (192 + v78)]] = MEM[64 + v78.word1];
                                    }
                                }
                            }
                            if ((v110 >> 248) - 2) {
                                require(3 == v110 >> 248, Panic(1)); // low-level assert failed
                                v109 = msg.data[22 + v90];
                                v111 = 21;
                                v113 = MEM[address(v110 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 320];
                                require(!((MEM[address(v110 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 352] | v113) * (v113 ^ address(v110 >> 88))), v113, address(v110 >> 88));
                                require(address(v110 >> 88), ZeroToken());
                                MEM[address(v110 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 320] = address(v110 >> 88);
                                v78.word1 = address(v110 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 288;
                            } else {
                                v78.word1 = v78.word0;
                            }
                        }
                        v111 = v114 = v111 + 20;
                        v115 = MEM[address(v109 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 320];
                        require(!((MEM[address(v109 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 352] | v115) * (v115 ^ address(v109 >> 88))), v115, address(v109 >> 88));
                        require(address(v109 >> 88), ZeroToken());
                        MEM[address(v109 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 320] = address(v109 >> 88);
                        v78.word0 = address(v109 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 288;
                        if (address(v109 >> 88) * v78.word4 % v78.word5 % 768 + (192 + v78) + 288 == v78.word2) {
                            MEM[v78.word2] = 0x784cb7b8;
                            revert(28 + v78.word2, 36);
                        }
                    }
                    v90 = v111 + (2 + v90);
                    v92 = v92 - 2 - v111;
                    if (msg.data[v90] >> 240 & 0xc000) {
                        require(uint24.max >= v92, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (msg.data[v90] >> 240 & 0x4000) {
                            MEM[v105 + 32] = 1;
                            MEM[v105 + 64] = address(MEM[32 + v78.word1]);
                        } else {
                            MEM[v105 + 32] = 0;
                            MEM[v105 + 64] = address(MEM[32 + v78.word0]);
                        }
                        MEM[v105 + 96] = MEM[v78.word1] * (msg.data[v90] >> 240 & 0x3fff) / 10000;
                        MEM[v105 - 32] = 0x43583be5;
                        v116 = msg.sender.call(MEM[v16b0_0x6V0x1a - 4:v16b0_0x6V0x1a - 4 + 164], MEM[0:96]).gas(msg.gas);
                        if (!v116) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v105 - 32] = MEM[v105 - 32];
                            MEM[v78.word1] = MEM[v78.word1] - MEM[32];
                            require(MEM[v78.word0] <= MEM[v78.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v78.word0] = MEM[v78.word0] + MEM[64];
                        }
                    } else {
                        MEM[32 + v107] = msg.data[v90] >> 96;
                        MEM[v107 + 64] = address(MEM[32 + v78.word1]);
                        MEM[v107 + 96] = address(MEM[32 + v78.word0]);
                        MEM[v107 + 128] = MEM[v78.word1] * (msg.data[v90] >> 240) / 10000;
                        v90 = 20 + v90 + (msg.data[20 + v90] >> 232) + 3;
                        v92 = v92 - 20 - (msg.data[20 + v90] >> 232) - 3;
                        require(msg.data[20 + v90] >> 232 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v117 = new bytes[](msg.data[20 + v90] >> 232);
                        require(!((v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v90] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v117 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (msg.data[20 + v90] >> 232)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v117)), Panic(65)); // failed memory allocation (too much memory)
                        require(23 + v90 + (msg.data[20 + v90] >> 232) <= msg.data.length);
                        CALLDATACOPY(v117.data, 23 + v90, msg.data[20 + v90] >> 232);
                        v117[msg.data[20 + v90] >> 232] = 0;
                        MEM[v107 + 192] = v117;
                        require(uint24.max >= v92, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        MEM[v107 - 64] = 0x2bfb780c;
                        MEM[v107 - 32] = 32;
                        MEM[192 + v107] = MEM[192 + v107] - v107;
                        v118 = msg.sender.call(MEM[v16b0_0x5V0x1a - 36:v16b0_0x5V0x1a - 36 + MEM[MEM[192 + v16b0_0x5V0x1a]] + MEM[192 + v16b0_0x5V0x1a] - v16b0_0x5V0x1a + 68], MEM[0:96]).gas(msg.gas);
                        if (!v118) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            MEM[v107 - 64] = MEM[v107 - 64];
                            MEM[v107 - 32] = MEM[v107 - 32];
                            MEM[v78.word1] = MEM[v78.word1] - MEM[32];
                            require(MEM[v78.word0] <= MEM[v78.word0] + MEM[64], Panic(17)); // arithmetic overflow or underflow
                            MEM[v78.word0] = MEM[v78.word0] + MEM[64];
                            MEM[192 + v107] = 96;
                            MEM[64] = MEM[64];
                        }
                    }
                }
                if (MEM[64 + v78.word0]) {
                    MEM[64 + v78.word0] = 0;
                    v78.word6 = v78.word6 - 1;
                    if ((v78.word6 << 5) + (192 + v78) - MEM[64 + v78.word0]) {
                        MEM[MEM[64 + v78.word0]] = MEM[(v78.word6 << 5) + (192 + v78)];
                        MEM[64 + MEM[(v78.word6 << 5) + (192 + v78)]] = MEM[64 + v78.word0];
                    }
                }
                if (!MEM[v78.word1]) {
                    if (MEM[64 + v78.word1]) {
                        MEM[64 + v78.word1] = 0;
                        v78.word6 = v78.word6 - 1;
                        if ((v78.word6 << 5) + (192 + v78) - MEM[64 + v78.word1]) {
                            MEM[MEM[64 + v78.word1]] = MEM[(v78.word6 << 5) + (192 + v78)];
                            MEM[64 + MEM[(v78.word6 << 5) + (192 + v78)]] = MEM[64 + v78.word1];
                        }
                    }
                }
                if (v78.word6) {
                    require(v78.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (v78.word7 - v78.word2) {
                        fun_callSelector(0xae639329, address(MEM[v78.word7 + 32]), this, MEM[v78.word7]);
                    }
                    v119 = 1;
                    while (v119 < v78.word6) {
                        0x1622(MEM[MEM[(v119 << 5) + (192 + v78) + 32]], MEM[32 + MEM[(v119 << 5) + (192 + v78) + 32]]);
                        v119 = v119 + 1;
                    }
                }
                v58 = v120 = MEM[32 + v78.word0];
                v59 = v121 = MEM[v78.word0];
                if (v121 >= v75) {
                    fun_callSelector(0xae639329, v120, function_selector >> 96, v121);
                    if (bool(!(0x1000000000000000000000000000000 & varg4))) {
                        require(v78.word3 != MEM[v78.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v78.word2]));
                        if (this - address(varg6 >> 96)) {
                            v122 = new struct(2);
                            require(!((v122 + 64 > uint64.max) | (v122 + 64 < v122)), Panic(65)); // failed memory allocation (too much memory)
                            v122.word0 = msg.sender;
                            v122.word1 = v78.word3 - MEM[v78.word2];
                            require(msg.data.length - v80 >= 128);
                            v123 = new struct(3);
                            require(!((v123 + 96 > uint64.max) | (v123 + 96 < v123)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v80 >= 64);
                            v124 = new struct(2);
                            require(!((v124 + 64 > uint64.max) | (v124 + 64 < v124)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v80] - address(msg.data[v80])));
                            v124.word0 = msg.data[v80];
                            v124.word1 = msg.data[v80 + 32];
                            v123.word0 = v124;
                            v123.word1 = msg.data[v80 + 64];
                            v123.word2 = msg.data[v80 + 96];
                            require(v84 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v125 = new bytes[](v84);
                            require(!((v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v84) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v84) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v125)), Panic(65)); // failed memory allocation (too much memory)
                            require(v82 + v84 <= msg.data.length);
                            CALLDATACOPY(v125.data, v82, v84);
                            v125[v84] = 0;
                            fun_transferFrom(v123, v122, v125, v76);
                        } else if (v78.word3 - MEM[v78.word2]) {
                            fun_safeTransfer(MEM[32 + v78.word2], msg.sender, v78.word3 - MEM[v78.word2]);
                        }
                        v126 = msg.sender.settle(MEM[32 + v78.word2], 0x15afd409000000000000000000000000, v78.word3 - MEM[v78.word2]).gas(msg.gas);
                        if (!v126) {
                            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
                            revert(uint24(MEM[64]), RETURNDATASIZE());
                        } else {
                            MEM[52] = 0;
                        }
                    } else if (bool(MEM[v78.word2])) {
                        if (this - (varg6 >> 96)) {
                            v127 = _fun_toCanonicalSellAmount;
                        } else {
                            v127 = v128 = this;
                        }
                        require(MEM[v78.word2], MEM[32 + v78.word2]);
                        v129, /* uint256 */ v130 = msg.sender.sendTo((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v78.word2] << 96) * (MEM[32 + v78.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v78.word2] << 96) * (MEM[32 + v78.word2] << 96), v127, MEM[v78.word2]).gas(msg.gas);
                        require(v129, MEM[64], RETURNDATASIZE());
                        MEM[96] = 0;
                    }
                    v73 = v131 = new bytes[](32);
                    MEM[v131.data] = v121;
                }
            } else {
                if (5 == v1) {
                    v132 = v133 = varg7 >> 128;
                    v134 = v135 = 0;
                    v136 = new struct(39);
                    v136.word6 = 0;
                    MEM[v4b4dV0xed7V0x1a + 480:v4b4dV0xed7V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    v137 = MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 320];
                    require(!((MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 352] | v137) * (v137 ^ address(varg14 >> 96))), v137, address(varg14 >> 96));
                    require(address(varg14 >> 96), ZeroToken());
                    MEM[address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 320] = address(varg14 >> 96);
                    v136.word0 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 288;
                    v136.word1 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 288;
                    v136.word2 = address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 288;
                    v136.word4 = uint128(varg7);
                    v136.word5 = varg10 >> 128;
                    v138 = v139 = msg.data.length;
                    v140 = v141 = msg.data.length;
                    v142 = v143 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg14 >> 96) * uint128(varg7) % (varg10 >> 128) % 768 + (192 + v136) + 288)])) {
                        if (address(varg12 >> 96) - this) {
                            require(!bool(address(varg12 >> 96)), Panic(1)); // low-level assert failed
                            v138 = v144 = 145;
                            v134 = v145 = 0x1 & varg20;
                            v142 = v146 = msg.data[157 + (varg3 - 89) - 3] >> 232;
                            v140 = v147 = 157 + (varg3 - 89) - v146 - 3;
                            v148 = v149 = 274;
                            require(v149 <= v147);
                            v150 = v151 = varg3 - 89 - v146 - 120;
                        } else {
                            v148 = v152 = 179;
                            v150 = v153 = varg3 - 89 - 22;
                            v154 = fun_fastBalanceOf(MEM[32 + v136.word2], this);
                            MEM[v136.word2] = uint16(varg14 >> 80) * v154 / 10000;
                        }
                    } else {
                        require(this == address(varg12 >> 96), Panic(1)); // low-level assert failed
                        MEM[v136.word2] = this.balance * uint16(varg14 >> 80) / 10000;
                        v150 = v155 = varg3 - 89 - 22;
                        v148 = v156 = 179;
                    }
                    require(uint24.max >= v150, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if ((varg12 >> 96) - this) {
                        require(!(msg.data[v138] - address(msg.data[v138])));
                        v157 = fun_toCanonicalSellAmount(address(msg.data[v138]), msg.data[v138 + 32]);
                        MEM[v136.word2] = v157;
                    }
                    if (0x1000000000000000000000000000000 & varg10) {
                        v158, /* uint256 */ v159 = msg.sender.sync(MEM[32 + v136.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                        require(v158, v159, RETURNDATASIZE());
                        if (this - address(varg12 >> 96)) {
                            v160 = new struct(2);
                            require(!((v160 + 64 > uint64.max) | (v160 + 64 < v160)), Panic(65)); // failed memory allocation (too much memory)
                            v160.word0 = msg.sender;
                            v160.word1 = MEM[v136.word2];
                            require(msg.data.length - v138 >= 128);
                            v161 = new struct(3);
                            require(!((v161 + 96 > uint64.max) | (v161 + 96 < v161)), Panic(65)); // failed memory allocation (too much memory)
                            require(msg.data.length - v138 >= 64);
                            v162 = new struct(2);
                            require(!((v162 + 64 > uint64.max) | (v162 + 64 < v162)), Panic(65)); // failed memory allocation (too much memory)
                            require(!(msg.data[v138] - address(msg.data[v138])));
                            v162.word0 = msg.data[v138];
                            v162.word1 = msg.data[v138 + 32];
                            v161.word0 = v162;
                            v161.word1 = msg.data[v138 + 64];
                            v161.word2 = msg.data[v138 + 96];
                            require(v142 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v163 = new bytes[](v142);
                            require(!((v163 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v142) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v163 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v142) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v163)), Panic(65)); // failed memory allocation (too much memory)
                            require(v140 + v142 <= msg.data.length);
                            CALLDATACOPY(v163.data, v140, v142);
                            v163[v142] = 0;
                            fun_transferFrom(v161, v160, v163, v134);
                        } else {
                            fun_safeTransfer(MEM[32 + v136.word2], msg.sender, MEM[v136.word2]);
                        }
                        v164 = msg.sender.settle().gas(msg.gas);
                        require(v164, MEM[64], RETURNDATASIZE());
                        MEM[v136.word2] = MEM[0];
                    }
                    v136.word3 = MEM[v136.word2];
                    fun_checkZeroSellAmount(v136);
                    v165 = allocate_and_zero_memory_struct_struct_BufferWrapOrUnwrapParams();
                    v166 = allocate_and_zero_memory_struct_struct_PoolKey_15544();
                    while (v150 >= 52) {
                        v166.word2 = msg.data[2 + v148] >> 96;
                        v167 = v168 = msg.data[v148 + 22];
                        v169 = v170 = 1;
                        if (v168 >> 248) {
                            if (!MEM[64 + v136.word0]) {
                                v136.word6 += v170;
                                MEM[(v170 + v136.word6 << 5) + (192 + v136)] = v136.word0;
                                MEM[64 + v136.word0] = (v170 + v136.word6 << 5) + (192 + v136);
                            }
                            if (v168 >> 248 > v170) {
                                if (!MEM[v136.word1]) {
                                    if (MEM[64 + v136.word1]) {
                                        MEM[64 + v136.word1] = 0;
                                        v136.word6 = v136.word6 - 1;
                                        if ((v136.word6 << 5) + (192 + v136) - MEM[64 + v136.word1]) {
                                            MEM[MEM[64 + v136.word1]] = MEM[(v136.word6 << 5) + (192 + v136)];
                                            MEM[64 + MEM[(v136.word6 << 5) + (192 + v136)]] = MEM[64 + v136.word1];
                                        }
                                    }
                                }
                                if ((v168 >> 248) - 2) {
                                    require(3 == v168 >> 248, Panic(1)); // low-level assert failed
                                    v167 = msg.data[20 + (v148 + 22)];
                                    v169 = 21;
                                    v171 = MEM[address(v168 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 320];
                                    require(!((MEM[address(v168 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 352] | v171) * (v171 ^ address(v168 >> 88))), v171, address(v168 >> 88));
                                    require(address(v168 >> 88), ZeroToken());
                                    MEM[address(v168 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 320] = address(v168 >> 88);
                                    v136.word1 = address(v168 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 288;
                                } else {
                                    v136.word1 = v136.word0;
                                }
                            }
                            v169 = v172 = v169 + 20;
                            v173 = MEM[address(v167 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 320];
                            require(!((MEM[address(v167 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 352] | v173) * (v173 ^ address(v167 >> 88))), v173, address(v167 >> 88));
                            require(address(v167 >> 88), ZeroToken());
                            MEM[address(v167 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 320] = address(v167 >> 88);
                            v136.word0 = address(v167 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 288;
                            if (address(v167 >> 88) * v136.word4 % v136.word5 % 768 + (192 + v136) + 288 == v136.word2) {
                                MEM[v136.word2] = 0x784cb7b8;
                                revert(28 + v136.word2, 36);
                            }
                        }
                        v174 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v136.word1] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v136.word0] << 96) & (MEM[32 + v136.word1] << 96 < MEM[32 + v136.word0] << 96);
                        v165.word1 = address(MEM[32 + v136.word1] ^ (MEM[32 + v136.word0] ^ MEM[32 + v136.word1]) * v174);
                        v165.word0 = address(MEM[32 + v136.word0] ^ (MEM[32 + v136.word0] ^ MEM[32 + v136.word1]) * v174);
                        v165.word2 = msg.data[v169 + (v148 + 22)] >> 232;
                        v165.word3 = int24(uint24(msg.data[v169 + (v148 + 22)] >> 208));
                        v165.word4 = address(msg.data[v169 + (v148 + 22)] >> 48);
                        v148 = 26 + (v169 + (v148 + 22)) + (msg.data[26 + (v169 + (v148 + 22))] >> 232) + 3;
                        v150 = v150 - 22 - v169 - 26 - (msg.data[26 + (v169 + (v148 + 22))] >> 232) - 3;
                        require(uint24.max >= v150, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v166.word0 = bool(v174);
                        v166.word1 = 0 - MEM[v136.word1] * (msg.data[v148] >> 240) / 10000;
                        MCOPY(64 + MEM[64], 32 + v165, 128);
                        MCOPY(192 + MEM[64], v166, 96);
                        v175 = new uint256[](msg.data[26 + (v169 + (v148 + 22))] >> 232);
                        CALLDATACOPY(v175.data, 29 + (v169 + (v148 + 22)), msg.data[26 + (v169 + (v148 + 22))] >> 232);
                        v176 = msg.sender.swap((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != v165.word0) * v165.word0, v47, v47, v47, v47, v47, v47, v47, v175).gas(msg.gas);
                        if (!v176) {
                            v177 = RETURNDATASIZE();
                            revert(v47, v47, v47, v47, v47, v47, v47, v47, v47, msg.data[26 + (v169 + (v148 + 22))] >> 232);
                        } else {
                            v178 = _SafeSub(MEM[v136.word1], 0 - (int128(MEM[0]) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v174));
                            MEM[v136.word1] = v178;
                            if (int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v174 < 0) {
                                MEM[v136.word0] = 0x4c085bf1;
                                revert(28 + v136.word0, 36);
                            } else {
                                MEM[v136.word0] += int128(MEM[0] >> 128) ^ (int128(MEM[0]) ^ int128(MEM[0] >> 128)) * v174;
                            }
                        }
                    }
                    if (MEM[64 + v136.word0]) {
                        MEM[64 + v136.word0] = 0;
                        v136.word6 = v136.word6 - 1;
                        if ((v136.word6 << 5) + (192 + v136) - MEM[64 + v136.word0]) {
                            MEM[MEM[64 + v136.word0]] = MEM[(v136.word6 << 5) + (192 + v136)];
                            MEM[64 + MEM[(v136.word6 << 5) + (192 + v136)]] = MEM[64 + v136.word0];
                        }
                    }
                    if (!MEM[v136.word1]) {
                        if (MEM[64 + v136.word1]) {
                            MEM[64 + v136.word1] = 0;
                            v136.word6 = v136.word6 - 1;
                            if ((v136.word6 << 5) + (192 + v136) - MEM[64 + v136.word1]) {
                                MEM[MEM[64 + v136.word1]] = MEM[(v136.word6 << 5) + (192 + v136)];
                                MEM[64 + MEM[(v136.word6 << 5) + (192 + v136)]] = MEM[64 + v136.word1];
                            }
                        }
                    }
                    if (v136.word6) {
                        require(v136.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v136.word7 - v136.word2) {
                            fun_callSelector(0xb0d9c09, address(MEM[v136.word7 + 32]), this, MEM[v136.word7]);
                        }
                        v179 = 1;
                        while (v179 < v136.word6) {
                            0x1178(MEM[MEM[(v179 << 5) + (192 + v136) + 32]], MEM[32 + MEM[(v179 << 5) + (192 + v136) + 32]]);
                            v179 = v179 + 1;
                        }
                    }
                    v180 = MEM[32 + v136.word0];
                    v59 = v181 = MEM[v136.word0];
                    if (v181 >= v133) {
                        fun_callSelector(0xb0d9c09, v180, varg5 >> 96, v181);
                        if (bool(!(0x1000000000000000000000000000000 & varg10))) {
                            require(v136.word3 != MEM[v136.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v136.word2]));
                            if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee - address(MEM[32 + v136.word2])) {
                                v182, /* uint256 */ v183 = msg.sender.sync(MEM[32 + v136.word2], 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v182, v183, RETURNDATASIZE());
                                if (this - address(varg12 >> 96)) {
                                    v184 = new struct(2);
                                    require(!((v184 + 64 > uint64.max) | (v184 + 64 < v184)), Panic(65)); // failed memory allocation (too much memory)
                                    v184.word0 = msg.sender;
                                    v184.word1 = v136.word3 - MEM[v136.word2];
                                    require(msg.data.length - v138 >= 128);
                                    v185 = new struct(3);
                                    require(!((v185 + 96 > uint64.max) | (v185 + 96 < v185)), Panic(65)); // failed memory allocation (too much memory)
                                    require(msg.data.length - v138 >= 64);
                                    v186 = new struct(2);
                                    require(!((v186 + 64 > uint64.max) | (v186 + 64 < v186)), Panic(65)); // failed memory allocation (too much memory)
                                    require(!(msg.data[v138] - address(msg.data[v138])));
                                    v186.word0 = msg.data[v138];
                                    v186.word1 = msg.data[v138 + 32];
                                    v185.word0 = v186;
                                    v185.word1 = msg.data[v138 + 64];
                                    v185.word2 = msg.data[v138 + 96];
                                    require(v142 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v187 = new bytes[](v142);
                                    require(!((v187 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v142) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v187 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v142) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v187)), Panic(65)); // failed memory allocation (too much memory)
                                    require(v140 + v142 <= msg.data.length);
                                    CALLDATACOPY(v187.data, v140, v142);
                                    v187[v142] = 0;
                                    fun_transferFrom(v185, v184, v187, v134);
                                } else {
                                    fun_safeTransfer(MEM[32 + v136.word2], msg.sender, v136.word3 - MEM[v136.word2]);
                                }
                                v188 = msg.sender.settle().gas(msg.gas);
                                require(v188, MEM[64], RETURNDATASIZE());
                            } else {
                                v189, /* uint256 */ v190 = msg.sender.sync(0, 0xa5841194000000000000000000000000).gas(msg.gas);
                                require(v189, MEM[64], RETURNDATASIZE());
                                v191 = msg.sender.settle().value(v136.word3 - MEM[v136.word2]).gas(msg.gas);
                                require(v191, MEM[64], RETURNDATASIZE());
                            }
                        } else if (bool(MEM[v136.word2])) {
                            if (this - (varg12 >> 96)) {
                                v192 = _fun_toCanonicalSellAmount;
                            } else {
                                v192 = v193 = this;
                            }
                            require(MEM[v136.word2], MEM[32 + v136.word2]);
                            v194, /* uint256 */ v195 = msg.sender.take((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v136.word2] << 96) * (MEM[32 + v136.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v136.word2] << 96) * (MEM[32 + v136.word2] << 96), v192, MEM[v136.word2]).gas(msg.gas);
                            require(v194, MEM[64], RETURNDATASIZE());
                            MEM[96] = 0;
                        } else {
                            v73 = v196 = new bytes[](96);
                            MEM[v196.data] = 32;
                            MEM[64 + v196] = 32;
                            MEM[96 + v196] = v181;
                        }
                    }
                } else if (1 == v1) {
                    v132 = v197 = varg10 >> 128;
                    v198 = v199 = 0;
                    v200 = new struct(39);
                    v200.word6 = 0;
                    MEM[va1c0x4b4dV0x9c4V0x1a + 480:va1c0x4b4dV0x9c4V0x1a + 480 + 768] = this.code[this.code.size:this.code.size + 768];
                    require(!((MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 352] | MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 320]) * (MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 320] ^ address(varg18 >> 96))), MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 320], address(varg18 >> 96));
                    require(address(varg18 >> 96), ZeroToken());
                    MEM[address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 320] = address(varg18 >> 96);
                    v200.word0 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 288;
                    v200.word1 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 288;
                    v200.word2 = address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 288;
                    v200.word4 = uint128(varg10);
                    v200.word5 = varg13 >> 128;
                    v201 = v202 = msg.data.length;
                    v203 = v204 = msg.data.length;
                    v205 = v206 = 0;
                    if (0 == (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == MEM[32 + (address(varg18 >> 96) * uint128(varg10) % (varg13 >> 128) % 768 + (192 + v200) + 288)])) {
                        if (address(varg16 >> 96) - this) {
                            require(!bool(address(varg16 >> 96)), Panic(1)); // low-level assert failed
                            v201 = v207 = 177;
                            v198 = v208 = 0x1 & varg21;
                            v205 = v209 = msg.data[189 + (varg5 - 89) - 3] >> 232;
                            v203 = v210 = 189 + (varg5 - 89) - v209 - 3;
                            v211 = v212 = 306;
                            require(v212 <= v210);
                            v213 = v214 = varg5 - 89 - v209 - 120;
                        } else {
                            v211 = v215 = 211;
                            v213 = v216 = varg5 - 89 - 22;
                            v217 = fun_fastBalanceOf(MEM[32 + v200.word2], this);
                            MEM[v200.word2] = uint16(varg18 >> 80) * v217 / 10000;
                        }
                    } else {
                        require(this == address(varg16 >> 96), Panic(1)); // low-level assert failed
                        MEM[v200.word2] = this.balance * uint16(varg18 >> 80) / 10000;
                        v213 = v218 = varg5 - 89 - 22;
                        v211 = v219 = 211;
                    }
                    require(uint24.max >= v213, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (address(varg16 >> 96) - this) {
                        require(!(msg.data[v201] - address(msg.data[v201])));
                        v220 = fun_toCanonicalSellAmount(address(msg.data[v201]), msg.data[v201 + 32]);
                        MEM[v200.word2] = v220;
                    }
                    if (0x1000000000000000000000000000000 & varg13) {
                        v221 = fun_ekuboPayV2(MEM[32 + v200.word2], varg16 >> 96, MEM[v200.word2], v201, v198, v203, v205);
                        MEM[v200.word2] = v221;
                    }
                    require(!(MEM[v200.word2] >> int8.max), Panic(17)); // arithmetic overflow or underflow
                    v200.word3 = MEM[v200.word2];
                    fun_checkZeroSellAmount(v200);
                    v222 = allocate_and_zero_memory_struct_struct_PoolKey_15544();
                    while (v213 >= 47) {
                        v223 = v224 = msg.data[14 + v211];
                        v225 = v226 = 1;
                        if (v224 >> 248) {
                            if (!MEM[64 + v200.word0]) {
                                v200.word6 += v226;
                                MEM[(v226 + v200.word6 << 5) + (192 + v200)] = v200.word0;
                                MEM[64 + v200.word0] = (v226 + v200.word6 << 5) + (192 + v200);
                            }
                            if (v224 >> 248 > v226) {
                                if (!MEM[v200.word1]) {
                                    if (MEM[64 + v200.word1]) {
                                        MEM[64 + v200.word1] = 0;
                                        v200.word6 = v200.word6 - 1;
                                        if ((v200.word6 << 5) + (192 + v200) - MEM[64 + v200.word1]) {
                                            MEM[MEM[64 + v200.word1]] = MEM[(v200.word6 << 5) + (192 + v200)];
                                            MEM[64 + MEM[(v200.word6 << 5) + (192 + v200)]] = MEM[64 + v200.word1];
                                        }
                                    }
                                }
                                if ((v224 >> 248) - 2) {
                                    require(3 == v224 >> 248, Panic(1)); // low-level assert failed
                                    v223 = msg.data[34 + v211];
                                    v225 = 21;
                                    require(!((MEM[address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 352] | MEM[address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320]) * (MEM[address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320] ^ address(v224 >> 88))), MEM[address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320], address(v224 >> 88));
                                    require(address(v224 >> 88), ZeroToken());
                                    MEM[address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320] = address(v224 >> 88);
                                    v200.word1 = address(v224 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 288;
                                } else {
                                    v200.word1 = v200.word0;
                                }
                            }
                            v225 = v227 = v225 + 20;
                            v228 = MEM[address(v223 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320];
                            require(!((MEM[address(v223 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 352] | v228) * (v228 ^ address(v223 >> 88))), v228, address(v223 >> 88));
                            require(address(v223 >> 88), ZeroToken());
                            MEM[address(v223 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 320] = address(v223 >> 88);
                            v200.word0 = address(v223 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 288;
                            if (address(v223 >> 88) * v200.word4 % v200.word5 % 768 + (192 + v200) + 288 == v200.word2) {
                                MEM[v200.word2] = 0x784cb7b8;
                                revert(28 + v200.word2, 36);
                            }
                        }
                        v229 = v230 = (msg.data[v211] >> 240 & 0x7fff) * MEM[v200.word1] / 10000;
                        v231 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 == MEM[32 + v200.word0] << 96) | (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v200.word1] << 96) & (MEM[32 + v200.word0] << 96 < MEM[32 + v200.word1] << 96);
                        v222.word1 = address(address(MEM[32 + v200.word0]) ^ (address(MEM[32 + v200.word1]) ^ address(MEM[32 + v200.word0])) * v231);
                        v222.word0 = (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(address(MEM[32 + v200.word1]) ^ (address(MEM[32 + v200.word1]) ^ address(MEM[32 + v200.word0])) * v231)) * address(address(MEM[32 + v200.word1]) ^ (address(MEM[32 + v200.word1]) ^ address(MEM[32 + v200.word0])) * v231);
                        v211 = 32 + (v225 + (14 + v211));
                        v213 = v213 - 14 - v225 - 32;
                        v222.word2 = msg.data[v225 + (14 + v211)];
                        require(uint24.max >= v213, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (0 == !(0x8000 & msg.data[v211] >> 240)) {
                            MCOPY(32 + (v200 + 1248), 64 + v222, 20);
                            MCOPY(52 + (v200 + 1248), v222, 96);
                            v232 = msg.sender.forward(v47, v47, v47, v230, v230, v231, msg.data[2 + v211] >> 160, 0).gas(msg.gas);
                            if (!v232) {
                                RETURNDATACOPY(v200 + 1248, 0, RETURNDATASIZE());
                                revert(v200 + 1248, RETURNDATASIZE());
                            } else {
                                v233 = MEM[32];
                                require(!((64 > RETURNDATASIZE()) | int128(v230) ^ v230 | (int128(MEM[0]) ^ MEM[0] | int128(v233) ^ v233)));
                                v234 = (MEM[0] ^ v233) * v231;
                                v235 = v200.word1;
                                v236 = MEM[0] ^ v234;
                                if (v236 < 0) {
                                    MEM[v235] = 0x4c085bf1;
                                    revert(28 + v235, 36);
                                } else {
                                    // Unknown jump to Block 0xdf0B0x1a. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            MCOPY(32 + (v200 + 1248), v222, 96);
                            v237 = msg.sender.call(0, v47, v47, v47, v230, v231, msg.data[2 + v211] >> 160, 0).gas(msg.gas);
                            if (!v237) {
                                RETURNDATACOPY(v200 + 1248, 0, RETURNDATASIZE());
                                revert(v200 + 1248, RETURNDATASIZE());
                            } else {
                                v233 = v238 = MEM[32];
                                v234 = v239 = (MEM[0x0] ^ v238) * v231;
                                v235 = v240 = v200.word1;
                                v236 = v241 = MEM[0x0] ^ v239;
                                if (v241 < 0) {
                                    MEM[v240] = 0x4c085bf1;
                                    revert(28 + v240, 36);
                                }
                            }
                        }
                        MEM[v235] = MEM[v235] - v236;
                        require(!((v236 > v229) | (v236 > MEM[v235])), Panic(17)); // arithmetic overflow or underflow
                        if (v233 ^ v234 > 0) {
                            MEM[v200.word0] = 0x3351b260;
                            revert(28 + v200.word0, 36);
                        } else {
                            MEM[v200.word0] += 0 - (v233 ^ v234);
                        }
                    }
                    if (MEM[64 + v200.word0]) {
                        MEM[64 + v200.word0] = 0;
                        v200.word6 = v200.word6 - 1;
                        if ((v200.word6 << 5) + (192 + v200) - MEM[64 + v200.word0]) {
                            MEM[MEM[64 + v200.word0]] = MEM[(v200.word6 << 5) + (192 + v200)];
                            MEM[64 + MEM[(v200.word6 << 5) + (192 + v200)]] = MEM[64 + v200.word0];
                        }
                    }
                    if (!MEM[v200.word1]) {
                        if (MEM[64 + v200.word1]) {
                            MEM[64 + v200.word1] = 0;
                            v200.word6 = v200.word6 - 1;
                            if ((v200.word6 << 5) + (192 + v200) - MEM[64 + v200.word1]) {
                                MEM[MEM[64 + v200.word1]] = MEM[(v200.word6 << 5) + (192 + v200)];
                                MEM[64 + MEM[(v200.word6 << 5) + (192 + v200)]] = MEM[64 + v200.word1];
                            }
                        }
                    }
                    if (v200.word6) {
                        require(v200.word6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        if (v200.word7 - v200.word2) {
                            fun_callSelector(0x3a65ab6, address(MEM[v200.word7 + 32]), this, MEM[v200.word7]);
                        }
                        v242 = 1;
                        while (v242 < v200.word6) {
                            0xc56(MEM[MEM[(v242 << 5) + (192 + v200) + 32]], MEM[32 + MEM[(v242 << 5) + (192 + v200) + 32]]);
                            v242 = v242 + 1;
                        }
                    }
                    v180 = v243 = MEM[32 + v200.word0];
                    v59 = v244 = MEM[v200.word0];
                    if (v244 >= v197) {
                        fun_callSelector(0x3a65ab6, v243, varg9 >> 96, v244);
                        if (bool(!(0x1000000000000000000000000000000 & varg13))) {
                            require(v200.word3 != MEM[v200.word2], ZeroSellAmount(0xfb772a88000000000000000000000000, MEM[32 + v200.word2]));
                            v245 = fun_ekuboPayV2(MEM[32 + v200.word2], varg16 >> 96, v200.word3 - MEM[v200.word2], v201, v198, v203, v205);
                        } else if (bool(MEM[v200.word2])) {
                            if (this - address(varg16 >> 96)) {
                                v246 = _fun_toCanonicalSellAmount;
                            } else {
                                v246 = v247 = this;
                            }
                            require(MEM[v200.word2], MEM[32 + v200.word2]);
                            v248, /* uint256 */ v249 = msg.sender.withdraw((0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v200.word2] << 96) * (MEM[32 + v200.word2] << 96), (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee000000000000000000000000 != MEM[32 + v200.word2] << 96) * (MEM[32 + v200.word2] << 96), v246, MEM[v200.word2]).gas(msg.gas);
                            require(v248, v200 + 1248, RETURNDATASIZE());
                            MEM[96] = 0;
                        }
                    }
                } else if (4 == v1) {
                    require(128 <= msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 4);
                    if (0 == (msg.data[varg5.data] >> 96 == this)) {
                        require(!bool(msg.data[varg5.data] >> 96), Panic(1)); // low-level assert failed
                        v250 = new struct(2);
                        require(!((v250 + 64 > uint64.max) | (v250 + 64 < v250)), Panic(65)); // failed memory allocation (too much memory)
                        v250.word0 = msg.sender;
                        v250.word1 = (varg1 ^ varg3) * (varg1 > 0) ^ varg3;
                        require(msg.data.length - (varg5 + 44) >= 128);
                        v251 = new struct(3);
                        require(!((v251 + 96 > uint64.max) | (v251 + 96 < v251)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - (varg5 + 44) >= 64);
                        v252 = new struct(2);
                        require(!((v252 + 64 > uint64.max) | (v252 + 64 < v252)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(msg.data[varg5 + 44] - address(msg.data[varg5 + 44])));
                        v252.word0 = msg.data[varg5 + 44];
                        v252.word1 = msg.data[varg5 + 44 + 32];
                        v251.word0 = v252;
                        v251.word1 = msg.data[varg5 + 44 + 64];
                        v251.word2 = msg.data[varg5 + 44 + 96];
                        require(varg5.length - 137 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v253 = new bytes[](varg5.length - 137);
                        require(!((v253 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v253 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (varg5.length - 137)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v253)), Panic(65)); // failed memory allocation (too much memory)
                        require(varg5 + 173 + (varg5.length - 137) <= msg.data.length);
                        CALLDATACOPY(v253.data, varg5 + 173, varg5.length - 137);
                        v253[varg5.length - 137] = 0;
                        fun_transferFrom(v251, v250, v253, 0x1 & msg.data[varg5 + 141]);
                    } else {
                        fun_safeTransfer(msg.data[varg5 + 56] >> 96, msg.sender, (varg1 ^ varg3) * (varg1 > 0) ^ varg3);
                    }
                    v73 = v254 = MEM[64];
                    require(!((v254 + 32 > uint64.max) | (v254 + 32 < v254)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v254 + 32;
                    MEM[v254] = 0;
                    CALLDATACOPY(v254 + 32, msg.data.length, 0);
                } else {
                    require(2 == v1, Panic(81)); // call to a zero-initialized variable of internal function type
                    if (0 == 96 < msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20 - 4) {
                        fun_safeTransfer(varg3, msg.sender, varg5);
                    } else {
                        v255 = new struct(2);
                        require(!((v255 + 64 > uint64.max) | (v255 + 64 < v255)), Panic(65)); // failed memory allocation (too much memory)
                        v255.word0 = msg.sender;
                        v255.word1 = varg5;
                        require(msg.data.length - 36 >= 128);
                        v256 = new struct(3);
                        require(!((v256 + 96 > uint64.max) | (v256 + 96 < v256)), Panic(65)); // failed memory allocation (too much memory)
                        require(msg.data.length - 36 >= 64);
                        v257 = new struct(2);
                        require(!((v257 + 64 > uint64.max) | (v257 + 64 < v257)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(varg3 - address(varg3)));
                        v257.word0 = varg3;
                        v257.word1 = varg5;
                        v256.word0 = v257;
                        v256.word1 = varg9;
                        v256.word2 = varg11;
                        require(varg19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v258 = new bytes[](varg19);
                        require(!((v258 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v258 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v258)), Panic(65)); // failed memory allocation (too much memory)
                        require(228 + varg19 <= msg.data.length);
                        CALLDATACOPY(v258.data, 228, varg19);
                        v258[varg19] = 0;
                        fun_transferFrom(v256, v255, v258, varg15);
                    }
                }
                v73 = v259 = new bytes[](96);
                MEM[v259.data] = 32;
                MEM[64 + v259] = 32;
                MEM[96 + v259] = v59;
                revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v180, v132, v59));
            }
            v73 = v260 = new bytes[](96);
            MEM[v260.data] = 32;
            MEM[64 + v260] = 32;
            MEM[96 + v260] = v59;
            revert(TooMuchSlippage(0x97a6f3b9000000000000000000000000, v58, v2, v59));
        } else {
            v261 = v262 = (0x67c4a3b0 == function_selector >> 224) & (4 <= msg.data.length - (msg.sender == 0xcf9e3c5a26621af382fa17f24f) * 20);
            v73 = v263 = 96;
            if (!v262) {
                v261 = 0;
            } else {
                v73 = v264 = 0x352650ac2653508d946c4912b07895b22edd84cd;
            }
            require(v261);
        }
        return MEM[v20_0x0V0x21_0 + 32:v20_0x0V0x21_0 + 32 + MEM[v20_0x0V0x21_0]];
    }
}
