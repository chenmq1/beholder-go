// Decompiled by library.dedaub.com
// 2026.04.07 12:29 UTC
// Compiled using the solidity compiler version 0.8.27


// Data structures and variables inferred from the use of storage instructions
uint256 _dexCallback; // TRANSIENT_STORAGE[0x182f5f6fce345ff56ca07d5a486125a16daddf038f7fc5fdddebaefed603357f]
int256 tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692; // TRANSIENT_STORAGE[0xaf28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692]



function 0x126a(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x127f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(43 <= v0, SliceOutOfBounds());
    v1 = v2 = msg.data[varg4] >> 96;
    v1 = msg.data[varg4 + 23] >> 96;
    v3 = 0x1789(v2, v1, uint24(msg.data[varg4] >> 72), varg2, varg3);
    require(!(address(v3) - msg.sender), V3InvalidCaller());
    if (varg0 <= 0) {
        v4 = v5 = address(v1) < address(v2);
    } else {
        v4 = v6 = address(v2) < address(v1);
    }
    if (!v4) {
        if (v0 < 66) {
            require(varg1 <= tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692, V3TooMuchRequested());
            v7 = v8 = 2603;
            v9 = v10 = msg.sender;
        } else {
            v11, v12 = 0x18fa(varg4, v0);
            v13 = v14 = msg.sender;
            v15 = 0x1917(varg1);
            v16 = 0x126a(v15);
            require(43 <= v11, SliceOutOfBounds());
            v17 = v18 = address(msg.data[v12 + 23] >> 96) < address(msg.data[v12] >> 96);
            v19 = 0x1789(msg.data[v12] >> 96, msg.data[v12 + 23] >> 96, uint24(msg.data[v12] >> 72), varg2, varg3);
            v13 = v20 = address(v19);
            v21 = v22 = 6714;
            v21 = v23 = 0;
            v13 = v24 = 6700;
            v13 = v25 = 6742;
            v21 = v26 = 64;
            if (0 == v18) {
                v27 = v28 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v27 = v29 = 0x1000276a4;
            }
            v13 = v30 = MEM[v26];
            MEM[v30 + 32] = address(varg2);
            MEM[v30 + 32 + 32] = varg3;
            MEM[v30 + 32 + 64] = 96;
            MEM[v30 + 32 + 96] = v11;
            CALLDATACOPY(v30 + 32 + 96 + 32, v12, v11);
            MEM[32 + (v11 + (v30 + 32 + 96))] = 0;
            v31 = v32 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11) + (v30 + 32 + 96) + 32;
            while (1) {
                // Unknown jump to Block ['0x1a2c0x19b9B0x130c', '0x1a560x19b9B0x130c']. Refer to 3-address code (TAC);
                MEM[v13] = v31 - v13 - 32;
                require(!((v13 + (v31 - v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (v31 - v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v13 + (v31 - v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v13 = v33 = MEM[v26];
                MEM[v33] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v33 + 4] = address(v13);
                MEM[v33 + 4 + 32] = bool(v18);
                MEM[v33 + 4 + 64] = v16;
                MEM[v33 + 4 + 96] = address(v27);
                MEM[v33 + 4 + 128] = 160;
                MEM[v33 + 4 + 160] = MEM[v13];
                MCOPY(v33 + 4 + 160 + 32, 32 + v13, MEM[v13]);
                MEM[32 + (MEM[v13] + (v33 + 4 + 160))] = 0;
                v31 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v13]) + (v33 + 4 + 160) + 32;
            }
            v34 = v13.call(MEM[v62f0x19b9_0x1V0x130c:v62f0x19b9_0x1V0x130c + v61bV0x19800x19b9V0x130c - v62f0x19b9_0x1V0x130c], MEM[v62f0x19b9_0x1V0x130c:v62f0x19b9_0x1V0x130c + v1310_0x3V0x13110x127f_3]).value(v21).gas(msg.gas);
            require(v34, MEM[64], RETURNDATASIZE());
            if (v34) {
                v35 = 64;
                if (64 > RETURNDATASIZE()) {
                    v35 = v36 = RETURNDATASIZE();
                }
                require(!((v13 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v13 + (v35 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(v13 + v35 - v13 >= 64);
                // Unknown jump to Block 0x13110x127f. Refer to 3-address code (TAC);
            }
            return v17, v27, 4881;
        }
    } else {
        v7 = v37 = 2603;
        v9 = v38 = msg.sender;
    }
    if (address(v1)) {
        0x1685(v1, v9, varg1);
    } else {
        0x1d4b(v9, varg1);
    }
    return ;
}

function 0x1383(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0x95ea7b3000000000000000000000000, varg1).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x142d(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x145f(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0x9995855c00494d039ab6792f18e368e530dff931, 0x95ea7b3000000000000000000000000, varg1).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x14a5(uint256 varg0) private { 
    v0 = varg0.approve(0x9995855c00494d039ab6792f18e368e530dff931, 0x95ea7b3000000000000000000000000, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x1531(uint256 varg0) private { 
    v0 = varg0.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, 0x95ea7b3000000000000000000000000, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x1577(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x15f0(uint256 varg0) private { 
    require(!(address(msg.data[varg0]) - msg.data[varg0]));
    return msg.data[varg0];
}

function 0x1685(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(0xa9059cbb000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg0.code.size < v0, TransferFailed());
        MEM[52] = 0;
        return ;
    } else {
        MEM[52] = 0;
        return ;
    }
}

function 0x16b7(uint256 varg0, uint256 varg1, uint24 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = address(varg0);
    v0.word2 = address(varg0);
    v0.word3 = varg2;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = keccak256(address(varg0), address(varg0), varg2);
    v4 = new bytes[](85);
    MEM[0] = MEM[0];
    require(!((v4 + 128 > uint64.max) | (v4 + 128 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v4.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000, v3, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
}

function 0x1789(uint256 varg0, uint256 varg1, uint24 varg2, uint256 varg3, uint256 varg4) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = address(varg0);
    v0.word2 = address(varg0);
    v0.word3 = varg2;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = keccak256(address(varg0), address(varg0), varg2);
    v4 = new bytes[](85);
    require(!((v4 + 128 > uint64.max) | (v4 + 128 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v4.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg3 << 96), v3, varg4));
}

function 0x182f(uint256 varg0, uint256 varg1) private { 
    if (address(varg0)) {
        0x1685(varg0, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1);
        return ;
    } else {
        v0 = this.code.size;
        v1 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.call().value(varg1).gas(msg.gas);
        require(v1, ETHTransferFailed());
        return ;
    }
}

function 0x188e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0)) {
        0x1685(varg0, varg1, varg2);
    } else {
        0x1d4b(varg1, varg2);
    }
    return ;
}

function 0x18b1() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    return v0;
}

function 0x18fa(uint256 varg0, uint256 varg1) private { 
    require(23 <= varg1);
    return varg1 - 23, 23 + varg0;
}

function 0x1917(uint256 varg0) private { 
    require(varg0 < int256.min);
    return varg0;
}

function 0x1b32(struct(6) varg0) private { 
    require(2 > 1, Panic(33)); // failed convertion to enum type
    varg0.word0 = 1;
    return ;
}

function 0x1b41(struct(6) varg0) private { 
    require(2 > 0, Panic(33)); // failed convertion to enum type
    varg0.word0 = 0;
    return ;
}

function 0x1b4c(struct(7) varg0, uint256 varg1) private { 
    require(2 > varg1, Panic(33)); // failed convertion to enum type
    varg0.word0 = varg1;
    return ;
}

function 0x1d4b(uint256 varg0, uint256 varg1) private { 
    v0 = this.code.size;
    v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v1, ETHTransferFailed());
    return ;
}

function 0x1d5a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2);
    v0 = 0x38e8(varg0);
    v1 = 0x3909(varg0);
    v2 = v3 = address(varg1) != address(v0);
    if (v3) {
        v2 = v4 = address(v1) != address(varg1);
    }
    require(!v2);
    0x1685(varg1, varg0, varg2);
    if (address(varg1) != address(v0)) {
        v5, v6 = varg0.sellQuote(this).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
    } else {
        v7, v6 = varg0.sellBase(this).gas(msg.gas);
        require(v7, MEM[64], RETURNDATASIZE());
    }
    require(varg3 <= v6);
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + data] + (4 + data + 32) >= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) + (4 + data + 32 + uint32(data.word3)) + 32, SliceOutOfBounds());
    v3 = v4 = address(data.word1) != 0x1f98431c8ad98523631ae4a59f267346ea31f984;
    if (v4) {
        v3 = v5 = address(data.word1) != 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
    }
    require(!v3, address(data.word1));
    MEM[0] = MEM[0];
    if (data.word2 == 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54) {
    }
    require(data.word2 == 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    v6, v7, v8 = 0x127f(amount0Delta, amount1Delta, data.word1, data.word2, 4 + data + 32 + uint32(data.word3) + 32);
}

function 0x1e28(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2);
    v0 = 0x38e8(varg0);
    v1 = v2 = 0x3909(varg0);
    v3 = v4 = address(varg1) != address(v0);
    if (v4) {
        v3 = v5 = address(v2) != address(varg1);
    }
    require(!v3);
    if (address(varg1) != address(v0)) {
        v1 = v6, varg2 = v7, varg3 = v8, varg1 = v9, varg0 = v10 = 0x1e6d(varg3, 7796, v2, varg2, varg3, varg1);
    } else {
        v11 = varg1.approve(0x95ea7b3000000000000000000000000, varg0, varg2).gas(msg.gas);
        if (!((MEM[0] == 1) & v11)) {
            require(RETURNDATASIZE() | !varg1.code.size < v11, ApproveFailed());
            MEM[52] = 0;
        } else {
            MEM[52] = 0;
        }
    }
    if (varg1 == v0) {
        v12 = varg0.sellBaseToken(varg2, varg3, 96, 0).gas(msg.gas);
        require(v12, MEM[64], RETURNDATASIZE());
    }
    if (varg1 == v1) {
        v13 = varg0.buyBaseToken(varg2, varg3, 96, 0).gas(msg.gas);
        require(v13, MEM[64], RETURNDATASIZE());
    }
    0x142d(varg1, varg0);
    return ;
}

function 0x1e6d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = varg5.approve(0x95ea7b3000000000000000000000000, v1, varg0).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !varg5.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return varg2, varg3, varg4, varg5, v1;
    } else {
        MEM[52] = 0;
        return varg2, varg3, varg4, varg5, v1;
    }
}

function 0x1f91(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2);
    v0, v1, v2, v3, /* uint256 */ v4 = 0x5bd8269a20c472b148246de20e6852091bf16ff.getPool(varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v5 = v6 = 0;
    if (v0) {
        v7 = v8 = 128;
        if (128 > RETURNDATASIZE()) {
            v7 = v9 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v7 - MEM[64] >= 128);
        v5 = v10 = new struct(4);
        require(!((v10 + 128 > uint64.max) | (v10 + 128 < v10)), Panic(65)); // failed memory allocation (too much memory)
        require(!0xf974327300000000000000000000000000000000000000000000000000000000);
        v10.word0 = 0x68bcd8d00000000000000000000000000000000000000000000000000000000;
        require(!(address(MEM[MEM[64] + 32]) - MEM[MEM[64] + 32]));
        v10.word1 = MEM[MEM[64] + 32];
        require(!(address(MEM[MEM[64] + 64]) - MEM[MEM[64] + 64]));
        v10.word2 = MEM[MEM[64] + 64];
        v10.word3 = MEM[MEM[64] + 96];
    }
    require(address(MEM[v5]));
    varg2 = v11 = 0;
    varg1 = v12 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(MEM[32 + v5]);
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(MEM[32 + v5])) {
    }
    if (!varg1) {
        varg1 = v13 = address(MEM[64 + v5]) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        if (v13) {
            varg1 = v14 = !varg1;
        }
    }
    if (v11 != varg1) {
    }
    _dexCallback = address(MEM[v5]);
    v15 = address(MEM[v5]).swapInWithCallback(varg1, varg2, varg3, this).value(varg2).gas(msg.gas);
    _dexCallback = 0;
    require(v15, MEM[64], RETURNDATASIZE());
    return ;
}

function 0x21bc(struct(3) varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2);
    if (!varg1) {
        v0 = v1 = address(varg0.word1);
    } else {
        v0 = v2 = address(varg0.word0);
    }
    0x1577(v0, 0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg2);
    v3 = new uint256[](0);
    v4 = new uint256[](0);
    v5, /* uint256 */ v6 = address(0xbbcb91440523216e2b87052a99f69c604a7b6e00).swapSingle(address(varg0.word0), address(varg0.word1), varg0.word2, bool(varg1), varg2, varg3, address(this), 0, v3, v4).gas(msg.gas);
    if (!v5) {
        v7 = RETURNDATASIZE();
        revert(v8, v8, v8, v8, v8, v8, v8, v8, v8, 352, 0);
    } else {
        if (v5) {
            v9 = v10 = 32;
            if (32 > RETURNDATASIZE()) {
                v9 = RETURNDATASIZE();
                require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
            }
            require(MEM[64] + v9 - MEM[64] >= 32);
        }
        v11 = v0.approve(0xbbcb91440523216e2b87052a99f69c604a7b6e00, 0x95ea7b3000000000000000000000000, 0).gas(msg.gas);
        if (!((MEM[0] == 1) & v11)) {
            require(RETURNDATASIZE() | !v0.code.size < v11, ApproveFailed());
            MEM[52] = 0;
        } else {
            MEM[52] = 0;
        }
        return ;
    }
}

function 0x22c0(uint256 varg0, uint256 varg1, uint24 varg2, uint256 varg3, uint256 varg4) private { 
    varg4 = v0 = 1353;
    v1 = v2 = 1353;
    varg4 = v3 = 8979;
    varg4 = v4 = 64;
    varg4 = v5 = 8920;
    if (address(varg0) <= address(varg1)) {
    }
    v6 = new struct(4);
    v7 = v6.data;
    v6.word1 = address(varg0);
    v6.word2 = address(varg0);
    v6.word3 = varg2;
    v6.word0 = 96;
    require(!((v6 + 128 > uint64.max) | (v6 + 128 < v6)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v6.word0.length;
    v9 = keccak256(address(varg0), address(varg0), varg2);
    v10 = new bytes[](85);
    MEM[0] = MEM[0];
    require(!((v10 + 128 > uint64.max) | (v10 + 128 < v10)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v10.length;
    v12 = v13 = address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000, v9, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
    while (1) {
        // Unknown jump to Block ['0x5490x22c0', '0xbb40x22c0']. Refer to 3-address code (TAC);
        while (1) {
            v12 = address(v12);
            // Unknown jump to Block ['0x22d8', '0x5490x22c0']. Refer to 3-address code (TAC);
        }
        v14 = MEM[varg4];
        MEM[v14] = 0xa34123a700000000000000000000000000000000000000000000000000000000;
        MEM[v14 + 4] = int24(varg4);
        MEM[v14 + 36] = int24(varg4);
        MEM[v14 + 68] = uint128(varg4);
        v15 = v12.call(MEM[v22da:v22da + v22da + 100 - v22da], MEM[v22da:v22da + v22c0arg0x4]).gas(msg.gas);
        if (v15) {
            v16 = v17 = 0;
            v18 = v19 = 64;
            if (v15) {
                if (v19 > RETURNDATASIZE()) {
                    v18 = RETURNDATASIZE();
                    require(!((v14 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v14 + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                } else {
                    require(!((v14 + 64 > uint64.max) | (v14 + 64 < v14)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v14 + 64;
                }
                require(v14 + v18 - v14 >= 64);
                v16 = 0xa34123a700000000000000000000000000000000000000000000000000000000;
                v16 = v20 = MEM[v14 + 32];
            }
            v21 = int24(varg4);
            v22, /* uint256 */ varg4, v12 = v12.collect(this, v21, int24(varg4), uint128(v16), uint128(v16)).value(v17).gas(msg.gas);
            if (v22) {
                if (v22) {
                    v1 = v23 = 2996;
                    v24 = v25 = 64;
                    if (64 > RETURNDATASIZE()) {
                        v24 = v26 = RETURNDATASIZE();
                    }
                    require(!((MEM[v19] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v19] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v19])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[v19] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[v19] + v24 - MEM[v19] >= 64);
                    require(!0xb0e14c2800000000000000000000000000000000000000000000000000000000);
                    require(!(uint128(v12) - v12));
                } else {
                    return ;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    return v4, varg3, varg4, v3;
}

function 0x241d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = 0x3952(varg3);
    v1 = 0x3952(varg4);
    v2 = 0x3c72(v3, v0, v1, varg5, varg6);
    v4 = 0x16b7(varg0, varg1, varg2);
    v5 = 0xaac();
    v5.word0 = address(varg0);
    v5.word1 = address(varg1);
    v5.word2 = uint24(varg2);
    v6 = new struct(4);
    v7 = v6.data;
    v6.word1 = address(v5.word0);
    v6.word2 = address(v5.word1);
    v6.word3 = uint24(v5.word2);
    v6.word0 = 96;
    require(!((v6 + 128 > uint64.max) | (v6 + 128 < v6)), Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](v6.word0.length);
    MCOPY(v8.data, v6.data, v6.word0.length);
    v8[v6.word0.length] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v11 = address(v4).mint(address(this), int24(varg3), int24(varg4), uint128(v2), v8).gas(msg.gas);
    if (!v9) {
        v12 = RETURNDATASIZE();
        revert(v13, v13, v13, v13, v13, v13, v13, v13, v13, 0);
    } else {
        v10 = v14 = 0;
        v11 = v15 = 0;
        if (v9) {
            v16 = v17 = 64;
            if (64 > RETURNDATASIZE()) {
                v16 = RETURNDATASIZE();
                require(!((MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            } else {
                require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 64;
            }
            require(MEM[64] + v16 - MEM[64] >= 64);
        }
        v18 = v19 = v10 >= varg7;
        if (v19) {
            v18 = v20 = v11 >= varg8;
        }
        require(v18, fullExit());
        return;
    }
}

function 0x256b(struct(3) varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(int128(varg1) > 0, fullExit(int128(varg1)));
    v0 = v1 = 0;
    v2 = v3 = address(varg0.word0);
    v2 = v4 = address(varg0.word1);
    if (v1 != varg2) {
    }
    v0 = v5 = uint128(varg1);
    if (bool(address(v2))) {
        0x145f(v2, v5);
    }
    v6 = 0x9995855c00494d039ab6792f18e368e530dff931.swap(v3, v4, varg0.word2, varg2, varg1, v1, varg3, varg4, this).value(v0).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (bool(address(v2))) {
        0x14a5(v2);
        return ;
    } else {
        return ;
    }
}

function 0x266a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(uint8(varg1) <= 1, uint8(varg1));
    require(varg4, fullExit());
    require(varg0.code.size);
    v0, /* uint256 */ v1 = varg0.coins(varg2).gas(msg.gas);
    require(v0);
    0x1577(v1, varg0, varg4);
    if (1 != !varg1) {
    }
    v2 = varg0.setMetaGold(0x3df0212400000000000000000000000000000000000000000000000000000000, varg2, varg3, varg4, varg5).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    0x142d(v1, varg0);
    return ;
}

function 0x2731(address varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).withdraw(varg0, varg1, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = RETURNDATASIZE();
            require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
        }
        require(MEM[64] + v2 - MEM[64] >= 32);
        return ;
    } else {
        return ;
    }
}

function 0x27b4(uint256 varg0, uint256 varg1) private { 
    0x1577(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), varg1);
    v0, /* uint256 */ v1 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).repay(address(varg0), varg1, 2, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = RETURNDATASIZE();
            require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
        }
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    v4 = varg0.approve(address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), 0x95ea7b3000000000000000000000000, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & v4)) {
        require(RETURNDATASIZE() | !varg0.code.size < v4, ApproveFailed());
        MEM[52] = 0;
    } else {
        MEM[52] = 0;
    }
    return ;
}

function 0x283a(address varg0, uint256 varg1) private { 
    require((address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)).code.size);
    v0 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).borrow(varg0, varg1, 2, 0, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
}

function 0x28d2(uint256 varg0, uint256 varg1) private { 
    0x1577(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), varg1);
    require((address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)).code.size);
    v0 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).supply(address(varg0), varg1, this, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
    }
    0x142d(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2));
    return ;
}

function 0x2997(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0, v1 = 0x9424b1412450d0f8fc2255faf6046b98213b76bd.a5(address(varg0)).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v3 - MEM[64] >= 32);
        require(!0x3d44923e00000000000000000000000000000000000000000000000000000001);
    }
    require(v1, address(varg0));
    0x1577(varg1, varg0, varg3);
    v6 = varg0.swapExactAmountIn(varg1, varg3, varg2, varg4, uint256.max).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    0x142d(varg1, varg0);
    return ;
}

function 0x2aa5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(v0 < int256.min);
    return v0, varg2, varg3, varg4, varg0;
}

function 0x3034(address varg0, address varg1, address varg2, uint256 varg3) private { 
    v0 = 0xabb();
    0x1b32(v0);
    v0.word1 = varg0;
    v0.word2 = varg1;
    v0.word3 = varg2;
    v0.word4 = varg3;
    v0.word5 = v1;
    v2 = new bytes[](196);
    MEM[v2.data] = 0x658068fe00000000000000000000000000000000000000000000000000000000;
    require(2 > v0.word0, Panic(33)); // failed convertion to enum type
    MEM[v2 + 36] = v0.word0;
    v2[36] = address(v0.word1);
    MEM[v2 + 36 + 64] = address(v0.word2);
    MEM[v2 + 36 + 96] = address(v0.word3);
    MEM[v2 + 36 + 128] = v0.word4;
    MEM[v2 + 36 + 160] = v0.word5;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = 32;
    MEM[MEM[64] + 4 + 32] = v2.length;
    MCOPY(MEM[64] + 4 + 32 + 32, v2.data, v2.length);
    MEM[32 + (v2.length + (MEM[64] + 4 + 32))] = 0;
    return 224 + (MEM[64] + 4 + 32) + 32, MEM[64], MEM[64], 0, MEM[64];
}

function 0x312a(address varg0, address varg1, address varg2, uint256 varg3) private { 
    v0 = 0xabb();
    0x1b41(v0);
    v0.word1 = varg0;
    v0.word2 = varg1;
    v0.word3 = varg2;
    v0.word4 = varg3;
    v0.word5 = v1;
    v2 = new bytes[](196);
    MEM[v2.data] = 0x658068fe00000000000000000000000000000000000000000000000000000000;
    require(2 > v0.word0, Panic(33)); // failed convertion to enum type
    MEM[v2 + 36] = v0.word0;
    v2[36] = address(v0.word1);
    MEM[v2 + 36 + 64] = address(v0.word2);
    MEM[v2 + 36 + 96] = address(v0.word3);
    MEM[v2 + 36 + 128] = v0.word4;
    MEM[v2 + 36 + 160] = v0.word5;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = 32;
    MEM[MEM[64] + 4 + 32] = v2.length;
    MCOPY(MEM[64] + 4 + 32 + 32, v2.data, v2.length);
    MEM[32 + (v2.length + (MEM[64] + 4 + 32))] = 0;
    return 224 + (MEM[64] + 4 + 32) + 32, MEM[64], MEM[64], 0, MEM[64];
}

function 0x3153(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = v1 = 0;
    v2 = v3 = 452;
    v4 = v5 = 32;
    require(2 > varg1, Panic(33)); // failed convertion to enum type
    if (v1 == !varg1) {
        varg0 = v6, varg1 = v7, varg3 = v8, varg4 = v9, varg5 = v10, v2 = v11, v0 = v12, v4 = v13, varg2 = v14 = 0x3175(varg5, 12667, varg0, varg1, varg3, varg4, varg5, v3, v1, v5);
    } else {
        v15 = varg2.approve(0x95ea7b3000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, varg4).gas(msg.gas);
        if (!((MEM[0] == 1) & v15)) {
            require(RETURNDATASIZE() | !varg2.code.size < v15, ApproveFailed());
            MEM[52] = 0;
        } else {
            MEM[52] = 0;
        }
    }
    v16 = new uint256[](varg0);
    MEM[v16.data] = varg1;
    v17 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v16, this, v0, this, v0, varg5, block.timestamp + 900, v18, v18, varg2, varg3, varg4, 192, v0).value(v0).gas(msg.gas);
    require(v17);
    0x1531(varg2);
    return ;
}

function 0x3175(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    v0 = v1.approve(0x95ea7b3000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, varg0).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        require(RETURNDATASIZE() | !v1.code.size < v0, ApproveFailed());
        MEM[52] = 0;
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, v1;
    } else {
        MEM[52] = 0;
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, v1;
    }
}

function 0x328b(uint256 varg0) private { 
    v0 = varg0 + msg.data[varg0 + 64];
    v1 = v2 = msg.data[v0];
    v1 = v3 = v0 + 32;
    if (v2 <= v2 + (v0 - varg0) + 32) {
        require(v4 >= v2 + (v0 - varg0) + 32, SliceOutOfBounds());
        v1 = 0;
        require(v2 >= 2, InvalidPath());
        v1 = v5 = msg.data[varg0];
        v6 = v2 - 1;
        if (v6 <= v2) {
            while (v6) {
                if (v6 - 1 > v6) {
                    break;
                } else {
                    v7 = 0x3d25(v3, v2, v6 - 1);
                    require(!(address(msg.data[v7]) - msg.data[v7]));
                    v8 = 0x3d25(v3, v2, v6);
                    require(!(address(msg.data[v8]) - msg.data[v8]));
                    v9, v10, v1 = v11 = 0x4d5a(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v7], msg.data[v8]);
                    v1 = 0x4df0(v1, v10, v9);
                    if (!v6) {
                        break;
                    } else {
                        v6 += uint256.max;
                    }
                }
            }
            require(v1 <= msg.data[32 + varg0], V2TooMuchRequested());
            v1 = v12 = 13091;
            v1 = v13 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
            v14 = v15 = 2180;
            v1 = v16 = 2603;
            v1 = v17 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
            v18 = v19 = 0x3d0d(v3, v2);
            while (1) {
                v1 = v20 = 0x15f0(v18);
                0x188e(v20, v1, v1);
                require(v1 >= 2, V2InvalidPath());
                v1 = v21 = 17781;
                v14 = v22 = 17762;
                v18 = v23 = 0x3d0d(v1, v1);
                v14 = v24 = 17775;
                if (1 >= v1) {
                    break;
                } else {
                    v18 = 32 + v1;
                }
                if (address(v1) < address(v20)) {
                    // Unknown jump to Block 0x45750x328b. Refer to 3-address code (TAC);
                }
                v1 = v1 - 1;
                v1 = v1 - 2;
                v1 = v25 = 0;
                if (v25 < v1) {
                    v14 = v26 = 17829;
                    v18 = v27 = 0x3d25(v1, v1, v25);
                } else {
                    return ;
                }
            }
            revert(Panic(50));
            if (v1 + 1 < v1) {
            }
        }
    }
    revert(Panic(17));
}

function 0x33d7(uint256 varg0) private { 
    v0 = varg0 + msg.data[varg0 + 64];
    v1 = v2 = msg.data[v0];
    v1 = v3 = v0 + 32;
    if (v2 <= v2 + (v0 - varg0) + 32) {
        require(v4 >= v2 + (v0 - varg0) + 32, SliceOutOfBounds());
        v1 = 0;
        require(v2 >= 2, InvalidPath());
        v1 = v5 = msg.data[varg0];
        v6 = v2 - 1;
        if (v6 <= v2) {
            while (v6) {
                if (v6 - 1 > v6) {
                    break;
                } else {
                    v7 = 0x3d25(v3, v2, v6 - 1);
                    require(!(address(msg.data[v7]) - msg.data[v7]));
                    v8 = 0x3d25(v3, v2, v6);
                    require(!(address(msg.data[v8]) - msg.data[v8]));
                    v9, v10, v1 = v11 = 0x4d5a(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v7], msg.data[v8]);
                    v1 = 0x4df0(v1, v10, v9);
                    if (!v6) {
                        break;
                    } else {
                        v6 += uint256.max;
                    }
                }
            }
            require(v1 <= msg.data[32 + varg0], V2TooMuchRequested());
            v1 = v12 = 13091;
            v1 = v13 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
            v14 = v15 = 2180;
            v1 = v16 = 2603;
            v1 = v17 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
            v18 = v19 = 0x3d0d(v3, v2);
            while (1) {
                v1 = v20 = 0x15f0(v18);
                0x188e(v20, v1, v1);
                require(v1 >= 2, V2InvalidPath());
                v1 = v21 = 17781;
                v14 = v22 = 17762;
                v18 = v23 = 0x3d0d(v1, v1);
                v14 = v24 = 17775;
                if (1 >= v1) {
                    break;
                } else {
                    v18 = 32 + v1;
                }
                if (address(v1) < address(v20)) {
                    // Unknown jump to Block 0x45750x33d7. Refer to 3-address code (TAC);
                }
                v1 = v1 - 1;
                v1 = v1 - 2;
                v1 = v25 = 0;
                if (v25 < v1) {
                    v14 = v26 = 17829;
                    v18 = v27 = 0x3d25(v1, v1, v25);
                } else {
                    return ;
                }
            }
            revert(Panic(50));
            if (v1 + 1 < v1) {
            }
        }
    }
    revert(Panic(17));
}

function 0x34f9(uint256 varg0) private { 
    MEM[0] = MEM[0];
    v0 = varg0 + uint32(msg.data[varg0 + 64]);
    require(v1 + varg0 >= uint32(msg.data[v0]) + v0 + 32, SliceOutOfBounds());
    tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692 = msg.data[varg0 + 32];
    v2 = 0x1917(msg.data[varg0]);
    v3 = 0x126a(v2);
    v4 = v5 = this;
    require(43 <= uint32(msg.data[v0]), SliceOutOfBounds());
    v6 = v7 = address(msg.data[v0 + 32 + 23] >> 96) < address(msg.data[v0 + 32] >> 96);
    v8 = 0x1789(msg.data[v0 + 32] >> 96, msg.data[v0 + 32 + 23] >> 96, uint24(msg.data[v0 + 32] >> 72), 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    v4 = v9 = address(v8);
    v10 = v11 = 6714;
    v10 = v12 = 0;
    v4 = v13 = 6700;
    v4 = v14 = 6742;
    v10 = v15 = 64;
    if (0 == v7) {
        v16 = v17 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v16 = v18 = 0x1000276a4;
    }
    v4 = v19 = MEM[v15];
    MEM[v19 + 32] = address(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f);
    MEM[v19 + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    MEM[v19 + 32 + 64] = 96;
    MEM[v19 + 32 + 96] = uint32(msg.data[v0]);
    CALLDATACOPY(v19 + 32 + 96 + 32, v0 + 32, uint32(msg.data[v0]));
    MEM[32 + (uint32(msg.data[v0]) + (v19 + 32 + 96))] = 0;
    v20 = v21 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + uint32(msg.data[v0])) + (v19 + 32 + 96) + 32;
    while (1) {
        // Unknown jump to Block ['0x1a2c0x19b9B0x35610x34f9', '0x1a560x19b9B0x35610x34f9']. Refer to 3-address code (TAC);
        MEM[v4] = v20 - v4 - 32;
        require(!((v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v4 = v22 = MEM[v15];
        MEM[v22] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v22 + 4] = address(v4);
        MEM[v22 + 4 + 32] = bool(v7);
        MEM[v22 + 4 + 64] = v3;
        MEM[v22 + 4 + 96] = address(v16);
        MEM[v22 + 4 + 128] = 160;
        MEM[v22 + 4 + 160] = MEM[v4];
        MCOPY(v22 + 4 + 160 + 32, 32 + v4, MEM[v4]);
        MEM[32 + (MEM[v4] + (v22 + 4 + 160))] = 0;
        v20 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v4]) + (v22 + 4 + 160) + 32;
    }
    v23 = v4.call(MEM[v62f0x19b9_0x1V0x35610x34f9:v62f0x19b9_0x1V0x35610x34f9 + v61bV0x19800x19b9V0x35610x34f9 - v62f0x19b9_0x1V0x35610x34f9], MEM[v62f0x19b9_0x1V0x35610x34f9:v62f0x19b9_0x1V0x35610x34f9 + v34f90x3567_0x3V0x35680x34f9_3]).value(v10).gas(msg.gas);
    require(v23, MEM[64], RETURNDATASIZE());
    v24 = v25 = 0;
    v26 = v27 = 0;
    if (v23) {
        v28 = 64;
        if (64 > RETURNDATASIZE()) {
            v28 = v29 = RETURNDATASIZE();
        }
        require(!((v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v4 + v28 - v4 >= 64);
        v24 = v30 = MEM[v4];
        v26 = v31 = MEM[v4 + 32];
        // Unknown jump to Block 0x35680x34f9. Refer to 3-address code (TAC);
    }
    if (!v6) {
        v32 = v33 = 0x126a(v24);
    } else {
        v32 = v34 = 0x126a(v26);
    }
    require(!(v32 - v10), V3InvalidAmountOut());
    tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692 = 0;
    return v16, 13672, msg.data[varg0];
}

function 0x35c2(uint256 varg0) private { 
    MEM[0] = MEM[0];
    v0 = varg0 + uint32(msg.data[varg0 + 64]);
    require(v1 + varg0 >= uint32(msg.data[v0]) + v0 + 32, SliceOutOfBounds());
    tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692 = msg.data[varg0 + 32];
    v2 = 0x1917(msg.data[varg0]);
    v3 = 0x126a(v2);
    v4 = v5 = this;
    require(43 <= uint32(msg.data[v0]), SliceOutOfBounds());
    v6 = v7 = address(msg.data[v0 + 32 + 23] >> 96) < address(msg.data[v0 + 32] >> 96);
    v8 = 0x1789(msg.data[v0 + 32] >> 96, msg.data[v0 + 32 + 23] >> 96, uint24(msg.data[v0 + 32] >> 72), 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    v4 = v9 = address(v8);
    v10 = v11 = 6714;
    v10 = v12 = 0;
    v4 = v13 = 6700;
    v4 = v14 = 6742;
    v10 = v15 = 64;
    if (0 == v7) {
        v16 = v17 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v16 = v18 = 0x1000276a4;
    }
    v4 = v19 = MEM[v15];
    MEM[v19 + 32] = address(0x1f98431c8ad98523631ae4a59f267346ea31f984);
    MEM[v19 + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    MEM[v19 + 32 + 64] = 96;
    MEM[v19 + 32 + 96] = uint32(msg.data[v0]);
    CALLDATACOPY(v19 + 32 + 96 + 32, v0 + 32, uint32(msg.data[v0]));
    MEM[32 + (uint32(msg.data[v0]) + (v19 + 32 + 96))] = 0;
    v20 = v21 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + uint32(msg.data[v0])) + (v19 + 32 + 96) + 32;
    while (1) {
        // Unknown jump to Block ['0x1a2c0x19b9B0x35610x35c2', '0x1a560x19b9B0x35610x35c2']. Refer to 3-address code (TAC);
        MEM[v4] = v20 - v4 - 32;
        require(!((v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v20 - v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v4 = v22 = MEM[v15];
        MEM[v22] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v22 + 4] = address(v4);
        MEM[v22 + 4 + 32] = bool(v7);
        MEM[v22 + 4 + 64] = v3;
        MEM[v22 + 4 + 96] = address(v16);
        MEM[v22 + 4 + 128] = 160;
        MEM[v22 + 4 + 160] = MEM[v4];
        MCOPY(v22 + 4 + 160 + 32, 32 + v4, MEM[v4]);
        MEM[32 + (MEM[v4] + (v22 + 4 + 160))] = 0;
        v20 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v4]) + (v22 + 4 + 160) + 32;
    }
    v23 = v4.call(MEM[v62f0x19b9_0x1V0x35610x35c2:v62f0x19b9_0x1V0x35610x35c2 + v61bV0x19800x19b9V0x35610x35c2 - v62f0x19b9_0x1V0x35610x35c2], MEM[v62f0x19b9_0x1V0x35610x35c2:v62f0x19b9_0x1V0x35610x35c2 + v35c20x3567_0x3V0x35680x35c2_3]).value(v10).gas(msg.gas);
    require(v23, MEM[64], RETURNDATASIZE());
    v24 = v25 = 0;
    v26 = v27 = 0;
    if (v23) {
        v28 = 64;
        if (64 > RETURNDATASIZE()) {
            v28 = v29 = RETURNDATASIZE();
        }
        require(!((v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v4 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v4 + v28 - v4 >= 64);
        v24 = v30 = MEM[v4];
        v26 = v31 = MEM[v4 + 32];
        // Unknown jump to Block 0x35680x35c2. Refer to 3-address code (TAC);
    }
    if (!v6) {
        v32 = v33 = 0x126a(v24);
    } else {
        v32 = v34 = 0x126a(v26);
    }
    require(!(v32 - v10), V3InvalidAmountOut());
    tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692 = 0;
    return v16, 13672, msg.data[varg0];
}

function 0x35f7(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    if (v0) {
        v1 = v2 = 0;
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = RETURNDATASIZE();
                require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
            }
            require(MEM[64] + v3 - MEM[64] >= 32);
        }
        require(v1 >= varg1, InsufficientETH());
        if (varg1) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
            if (v5) {
                if (v5) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (address(varg0) - this) {
                    0x1d4b(varg0, varg1);
                    return ;
                } else {
                    return ;
                }
            }
        } else {
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x36ff(uint256 varg0, uint256 varg1) private { 
    require(varg1 <= this.balance, InsufficientETH());
    if (varg1) {
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        if (address(varg0) - this) {
            v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0xa9059cbb000000000000000000000000, varg0, varg1).gas(msg.gas);
            if (!((MEM[0] == 1) & v1)) {
                require(!0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size | RETURNDATASIZE() < v1, TransferFailed());
            }
            MEM[52] = 0;
            return ;
        } else {
            return ;
        }
    } else {
        return ;
    }
}

function 0x38e8(uint256 varg0) private { 
    v0, /* uint256 */ v1 = varg0._BASE_TOKEN_().gas(msg.gas);
    require(v0);
    return v1;
}

function 0x3909(uint256 varg0) private { 
    v0, /* uint256 */ v1 = varg0._QUOTE_TOKEN_().gas(msg.gas);
    require(v0);
    return v1;
}

function 0x3952(int24 varg0) private { 
    v0 = (varg0 >> uint8.max) + varg0 ^ varg0 >> uint8.max;
    require(v0 <= 0xd89e8, InvalidTick(varg0));
    v1 = v2 = 0x100000000000000000000000000000000 ^ 0x1fffcb933bd6fad37aa2d162d1a594001 * (v0 & 0x1);
    if (v0 & 0x2) {
        v1 = v3 = 0xfff97272373d413259a46990580e213a * v2 >> 128;
    }
    if (v0 & 0x4) {
        v1 = v4 = 0xfff2e50f5f656932ef12357cf3c7fdcc * v1 >> 128;
    }
    if (v0 & 0x8) {
        v1 = v5 = 0xffe5caca7e10e4e61c3624eaa0941cd0 * v1 >> 128;
    }
    if (v0 & 0x10) {
        v1 = v6 = 0xffcb9843d60f6159c9db58835c926644 * v1 >> 128;
    }
    if (v0 & 0x20) {
        v1 = v7 = 0xff973b41fa98c081472e6896dfb254c0 * v1 >> 128;
    }
    if (v0 & 0x40) {
        v1 = v8 = 0xff2ea16466c96a3843ec78b326b52861 * v1 >> 128;
    }
    if (v0 & 0x80) {
        v1 = v9 = 0xfe5dee046a99a2a811c461f1969c3053 * v1 >> 128;
    }
    if (v0 & 0x100) {
        v1 = v10 = 0xfcbe86c7900a88aedcffc83b479aa3a4 * v1 >> 128;
    }
    if (v0 & 0x200) {
        v1 = v11 = 0xf987a7253ac413176f2b074cf7815e54 * v1 >> 128;
    }
    if (v0 & 0x400) {
        v1 = v12 = 0xf3392b0822b70005940c7a398e4b70f3 * v1 >> 128;
    }
    if (v0 & 0x800) {
        v1 = v13 = 0xe7159475a2c29b7443b29c7fa6e889d9 * v1 >> 128;
    }
    if (v0 & 0x1000) {
        v1 = v14 = 0xd097f3bdfd2022b8845ad8f792aa5825 * v1 >> 128;
    }
    if (v0 & 0x2000) {
        v1 = v15 = 0xa9f746462d870fdf8a65dc1f90e061e5 * v1 >> 128;
    }
    if (v0 & 0x4000) {
        v1 = v16 = 0x70d869a156d2a1b890bb3df62baf32f7 * v1 >> 128;
    }
    if (v0 & 0x8000) {
        v1 = v17 = 0x31be135f97d08fd981231505542fcfa6 * v1 >> 128;
    }
    if (v0 & 0x10000) {
        v1 = v18 = 0x9aa508b5b7a84e1c677de54f3e99bc9 * v1 >> 128;
    }
    if (v0 & 0x20000) {
        v1 = v19 = 0x5d6af8dedb81196699c329225ee604 * v1 >> 128;
    }
    if (v0 & 0x40000) {
        v1 = v20 = v1 * 0x2216e584f5fa1ea926041bedfe98 >> 128;
    }
    if (0x80000 & v0) {
        v1 = v21 = v1 * 0x48a170391f7dc42444e8fa2 >> 128;
    }
    if (0 < varg0) {
        v1 = v22 = uint256.max / v1;
    }
    return v1 + uint32.max >> 32;
}

function 0x3c72(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (address(varg1) <= address(varg2)) {
    }
    if (address(varg0) > address(varg0)) {
        if (address(varg0) <= address(varg0)) {
            v0 = v1 = 1583;
        } else {
            v0 = v2 = 15573;
            varg0 = v3 = 0x4449(varg0, varg0, varg3);
            varg0 = v4 = 0x4414(varg0, varg0, varg4);
            if (0 == uint128(varg0) < uint128(varg0)) {
                return varg0;
            } else {
                return varg0;
            }
        }
        v5 = v6 = 1583;
        if (address(varg0) <= address(varg0)) {
        }
        v7 = address(varg0 - varg0);
        v8 = v9 << 96;
        v10 = v9 * (uint96.max + 1) % uint256.max - v8 - (v9 * (uint96.max + 1) % uint256.max < v8);
        require(v7 > v10);
        if (v9 * (uint96.max + 1) % uint256.max - v8 == v9 * (uint96.max + 1) % uint256.max < v8) {
            v11 = v12 = v8 / v7;
        } else {
            v13 = (2 - v7 / (0 - v7 & v7) * ((2 - v7 / (0 - v7 & v7) * (3 * (v7 / (0 - v7 & v7)) ^ 0x2)) * (3 * (v7 / (0 - v7 & v7)) ^ 0x2))) * ((2 - v7 / (0 - v7 & v7) * (3 * (v7 / (0 - v7 & v7)) ^ 0x2)) * (3 * (v7 / (0 - v7 & v7)) ^ 0x2));
            v14 = (2 - v7 / (0 - v7 & v7) * ((2 - v7 / (0 - v7 & v7) * v13) * v13)) * ((2 - v7 / (0 - v7 & v7) * v13) * v13);
            v11 = ((v8 - v9 * (uint96.max + 1) % v7) / (0 - v7 & v7) | (v10 - (v9 * (uint96.max + 1) % v7 > v8)) * ((0 - (0 - v7 & v7)) / (0 - v7 & v7) + 1)) * ((2 - v7 / (0 - v7 & v7) * ((2 - v7 / (0 - v7 & v7) * v14) * v14)) * ((2 - v7 / (0 - v7 & v7) * v14) * v14));
        }
    } else {
        v0 = v15 = 1583;
        v5 = v16 = 1583;
        if (address(varg0) <= address(varg0)) {
        }
        v17 = address(varg0);
        v18 = address(varg0);
        require(uint96.max + 1 > v18 * v17 % uint256.max - v18 * v17 - (v18 * v17 % uint256.max < v18 * v17));
        if (v18 * v17 % uint256.max - v18 * v17 == v18 * v17 % uint256.max < v18 * v17) {
            v19 = v20 = v18 * v17 >> 96;
        } else {
            v19 = v18 * v17 - v18 * v17 % (uint96.max + 1) >> 96 | v18 * v17 % uint256.max - v18 * v17 - (v18 * v17 % uint256.max < v18 * v17) - (v18 * v17 % (uint96.max + 1) > v18 * v17) << 160;
        }
        v21 = address(varg0 - varg0);
        v22 = varg3 * v19;
        v23 = varg3 * v19 % uint256.max - v22 - (varg3 * v19 % uint256.max < v22);
        require(v21 > v23);
        if (varg3 * v19 % uint256.max - v22 == varg3 * v19 % uint256.max < v22) {
            v11 = v24 = v22 / v21;
        } else {
            v25 = (2 - v21 / (0 - v21 & v21) * ((2 - v21 / (0 - v21 & v21) * (3 * (v21 / (0 - v21 & v21)) ^ 0x2)) * (3 * (v21 / (0 - v21 & v21)) ^ 0x2))) * ((2 - v21 / (0 - v21 & v21) * (3 * (v21 / (0 - v21 & v21)) ^ 0x2)) * (3 * (v21 / (0 - v21 & v21)) ^ 0x2));
            v26 = (2 - v21 / (0 - v21 & v21) * ((2 - v21 / (0 - v21 & v21) * v25) * v25)) * ((2 - v21 / (0 - v21 & v21) * v25) * v25);
            v11 = v27 = ((v22 - varg3 * v19 % v21) / (0 - v21 & v21) | (v23 - (varg3 * v19 % v21 > v22)) * ((0 - (0 - v21 & v21)) / (0 - v21 & v21) + 1)) * ((2 - v21 / (0 - v21 & v21) * ((2 - v21 / (0 - v21 & v21) * v26) * v26)) * ((2 - v21 / (0 - v21 & v21) * v26) * v26));
        }
    }
    require(!(v11 - uint128(v11)), SafeCastOverflow());
    return uint128(v11);
}

function 0x3d0d(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0;
}

function 0x3d25(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x3d35(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function 0x3d63(uint256 varg0) private { 
    v0 = 0x4739(0x4444c5dc75cb358380d2e3de08a90, this, varg0);
    require(v0 >= 0, DeltaNotPositive(address(varg0)));
    return v0;
}

function 0x3dba(address varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v0 = address(0x4444c5dc75cb358380d2e3de08a90).take(varg0, varg1, varg2).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
            return ;
        } else {
            return ;
        }
    }
}

function 0x3e3a(uint256 varg0) private { 
    v0 = 0x4739(0x4444c5dc75cb358380d2e3de08a90, this, varg0);
    require(v0 <= 0, DeltaNotNegative(address(varg0)));
    v1 = 0x126a(v0);
    return v1;
}

function 0x3e97(address varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v0 = address(0x4444c5dc75cb358380d2e3de08a90).sync(varg0).gas(msg.gas);
        if (v0) {
            if (v0) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (varg0) {
                if (this == varg1) {
                    if (varg0) {
                        0x1685(varg0, address(0x4444c5dc75cb358380d2e3de08a90), varg2);
                    } else {
                        0x1d4b(address(0x4444c5dc75cb358380d2e3de08a90), varg2);
                    }
                    // Unknown jump to Block 0x3f45. Refer to 3-address code (TAC);
                }
                v1 = v2 = MEM[64];
                v3 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                if (v3) {
                    if (!v3) {
                        return ;
                    }
                }
            } else {
                v1 = v4 = MEM[64];
                v5 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(varg2).gas(msg.gas);
                if (v5) {
                    if (!v5) {
                        return ;
                    }
                }
            }
            v6 = v7 = 32;
            if (32 > RETURNDATASIZE()) {
                v6 = RETURNDATASIZE();
                require(!((v1 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            } else {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
            }
            require(v1 + v6 - v1 >= 32);
            return ;
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function 0x40ff(uint256 varg0) private { 
    require(!(bool(msg.data[varg0]) - msg.data[varg0]));
    return msg.data[varg0];
}

function 0x4414(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = address(varg0 - varg0);
    v1 = varg2 * (uint96.max + 1) % uint256.max - (varg2 << 96) - (varg2 * (uint96.max + 1) % uint256.max < varg2 << 96);
    require(v0 > v1);
    if (varg2 * (uint96.max + 1) % uint256.max - (varg2 << 96) == varg2 * (uint96.max + 1) % uint256.max < varg2 << 96) {
        v2 = v3 = (varg2 << 96) / v0;
    } else {
        v4 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2))) * ((2 - v0 / (0 - v0 & v0) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2)) * (3 * (v0 / (0 - v0 & v0)) ^ 0x2));
        v5 = (2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v4) * v4)) * ((2 - v0 / (0 - v0 & v0) * v4) * v4);
        v2 = (((varg2 << 96) - varg2 * (uint96.max + 1) % v0) / (0 - v0 & v0) | (v1 - (varg2 * (uint96.max + 1) % v0 > varg2 << 96)) * ((0 - (0 - v0 & v0)) / (0 - v0 & v0) + 1)) * ((2 - v0 / (0 - v0 & v0) * ((2 - v0 / (0 - v0 & v0) * v5) * v5)) * ((2 - v0 / (0 - v0 & v0) * v5) * v5));
    }
    require(!(v2 - uint128(v2)), SafeCastOverflow());
    return uint128(v2);
}

function 0x4449(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = address(varg0);
    v1 = address(varg0);
    require(uint96.max + 1 > v1 * v0 % uint256.max - v1 * v0 - (v1 * v0 % uint256.max < v1 * v0));
    if (v1 * v0 % uint256.max - v1 * v0 == v1 * v0 % uint256.max < v1 * v0) {
        v2 = v3 = v1 * v0 >> 96;
    } else {
        v2 = v1 * v0 - v1 * v0 % (uint96.max + 1) >> 96 | v1 * v0 % uint256.max - v1 * v0 - (v1 * v0 % uint256.max < v1 * v0) - (v1 * v0 % (uint96.max + 1) > v1 * v0) << 160;
    }
    v4 = address(varg0 - varg0);
    v5 = varg2 * v2;
    v6 = varg2 * v2 % uint256.max - v5 - (varg2 * v2 % uint256.max < v5);
    require(v4 > v6);
    if (varg2 * v2 % uint256.max - v5 == varg2 * v2 % uint256.max < v5) {
        v7 = v8 = v5 / v4;
    } else {
        v9 = (2 - v4 / (0 - v4 & v4) * ((2 - v4 / (0 - v4 & v4) * (3 * (v4 / (0 - v4 & v4)) ^ 0x2)) * (3 * (v4 / (0 - v4 & v4)) ^ 0x2))) * ((2 - v4 / (0 - v4 & v4) * (3 * (v4 / (0 - v4 & v4)) ^ 0x2)) * (3 * (v4 / (0 - v4 & v4)) ^ 0x2));
        v10 = (2 - v4 / (0 - v4 & v4) * ((2 - v4 / (0 - v4 & v4) * v9) * v9)) * ((2 - v4 / (0 - v4 & v4) * v9) * v9);
        v7 = ((v5 - varg2 * v2 % v4) / (0 - v4 & v4) | (v6 - (varg2 * v2 % v4 > v5)) * ((0 - (0 - v4 & v4)) / (0 - v4 & v4) + 1)) * ((2 - v4 / (0 - v4 & v4) * ((2 - v4 / (0 - v4 & v4) * v10) * v10)) * ((2 - v4 / (0 - v4 & v4) * v10) * v10));
    }
    require(!(v7 - uint128(v7)), SafeCastOverflow());
    return uint128(v7);
}

function 0x4496(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x4c51(varg2, varg3);
    v2 = 0x4c68(varg0, varg1, v1, v0);
    return v2;
}

function 0x4739(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg0.exttload(keccak256(varg1, varg2)).gas(msg.gas);
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
}

function 0x4980(uint256 varg0, uint256 varg1, uint256 varg2, address varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = 0xaac();
    v0.word0 = bool(varg6);
    MEM[varg4 + v0] = varg5;
    v0.word2 = varg3;
    MEM[MEM[64]] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = address(MEM[varg2]);
    MEM[MEM[64] + 4 + 32] = address(MEM[varg2 + 32]);
    MEM[MEM[64] + 4 + 64] = uint24(MEM[varg2 + 64]);
    MEM[MEM[64] + 4 + 96] = int24(MEM[varg2 + 96]);
    MEM[MEM[64] + 4 + 128] = address(MEM[128 + varg2]);
    MEM[MEM[64] + 4 + 160] = bool(v0.word0);
    MEM[MEM[64] + 4 + 192] = v0.word1;
    MEM[MEM[64] + 4 + 224] = address(v0.word2);
    MEM[MEM[64] + 4 + (uint8.max + 1)] = 288;
    MEM[MEM[64] + 4 + 288] = varg0;
    CALLDATACOPY(MEM[64] + 4 + 288 + 32, v1, varg0);
    MEM[32 + (varg0 + (MEM[64] + 4 + 288))] = 0;
    return (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0) + (MEM[64] + 4 + 288) + 32, MEM[64], MEM[64], varg4, varg5, varg6, MEM[64];
}

function 0x4a59(uint128 varg0) private { 
    return varg0;
}

function 0x4a7c(address varg0) private { 
    if (varg0) {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v2 = v3 = 32;
            if (32 > RETURNDATASIZE()) {
                v2 = RETURNDATASIZE();
                require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
            }
            require(MEM[64] + v2 - MEM[64] >= 32);
            return v1;
        } else {
            return 0;
        }
    } else {
        return this.balance;
    }
}

function 0x4c51(uint256 varg0, uint256 varg1) private { 
    if (address(varg0) >= address(varg1)) {
        return varg0, varg1;
    } else {
        return varg1, varg0;
    }
}

function 0x4c68(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(3);
    v1 = v0.data;
    v0.word1 = bytes20(varg2 << 96);
    v0.word0 = 40;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = new bytes[](85);
    require(!((v3 + 128 > uint64.max) | (v3 + 128 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(varg2 << 96), bytes20(varg3 << 96)), varg1));
}

function 0x4d5a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x4c51(varg2, varg3);
    v2 = 0x4c68(varg0, varg1, v1, v0);
    v3, /* uint112 */ v4, /* uint112 */ v5, /* uint32 */ v6 = address(v2).getReserves().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v7 = 0;
    v5 = v8 = 0;
    if (v3) {
        v9 = v10 = 96;
        if (96 > RETURNDATASIZE()) {
            v9 = v11 = RETURNDATASIZE();
            require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        } else {
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
        }
        require(MEM[64] + v9 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
    }
    if (address(v1) - address(varg2)) {
        return uint112(v4), uint112(v5), v2;
    } else {
        return uint112(v5), uint112(v4), v2;
    }
}

function 0x4df0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = !varg1;
    if (bool(varg1)) {
        v0 = v2 = !varg2;
    }
    require(!v0, InvalidReserves());
    v3 = varg1 * varg0;
    require((v3 / varg1 == varg0) | !varg1, Panic(17)); // arithmetic overflow or underflow
    if (!v3 | (1000 == v3 * 1000 / v3)) {
        v4 = varg2 - varg0;
        if (v4 <= varg2) {
            if ((varg2 == varg0) | (997 == v4 * 997 / v4)) {
                require(v4 * 997, Panic(18)); // division by zero
                if (v3 * 1000 / (v4 * 997) <= v3 * 1000 / (v4 * 997) + 1) {
                    return v3 * 1000 / (v4 * 997) + 1;
                }
            }
        }
    }
    revert(Panic(17));
}

function ShibaswapV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + _data] + (4 + _data + 32) >= uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) + (4 + _data + 32 + uint32(_data.word3)) + 32, SliceOutOfBounds());
    require(!(address(_data.word1) + 0xffffffffffffffffffffffff2631b63508d66250e700034d47b5bb02ccbedaf7), address(_data.word1));
    require(!(_data.word2 - 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62));
    v3, v4, v5 = 0x127f(amount0Delta, amount1Delta, _data.word1, _data.word2, 4 + _data + 32 + uint32(_data.word3) + 32);
}

function 0xa9d() private { 
    v0 = new struct(7);
    require(!((v0 + uint8(-32) > uint64.max) | (v0 + uint8(-32) < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0xaac() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0xabb() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x4444c5dc75cb358380d2e3de08a90);
}

function msgSender() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return this;
}

function uniswapV3MintCallback(uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(data.word1) - data.word1));
    v1.word0 = data.word1;
    require(!(address(data.word2) - data.word2));
    v1.word1 = data.word2;
    require(!(uint24(data.word3) - data.word3));
    v1.word2 = data.word3;
    v2 = v3 = address(data.word1);
    v2 = v4 = address(data.word2);
    if (address(v3) <= address(v4)) {
    }
    v5 = new struct(4);
    v6 = v5.data;
    v5.word1 = address(v2);
    v5.word2 = address(v2);
    v5.word3 = uint24(data.word3);
    v5.word0 = 96;
    require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v7 = v5.word0.length;
    v8 = new bytes[](85);
    MEM[0] = MEM[0];
    require(!((v8 + 128 > uint64.max) | (v8 + 128 < v8)), Panic(65)); // failed memory allocation (too much memory)
    v9 = v8.length;
    require(!(msg.sender - address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000, keccak256(address(v2), address(v2), uint24(data.word3)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))), msg.sender);
    if (amount0) {
        0x188e(address(v1.word0), address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000, keccak256(address(v2), address(v2), uint24(data.word3)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)), amount0);
    }
    if (amount1) {
        0x188e(address(v1.word1), address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000, keccak256(address(v2), address(v2), uint24(data.word3)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)), amount1);
        exit;
    } else {
        exit;
    }
}

function dexCallback(address token_, uint256 amount_) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(address(_dexCallback));
    require(!(msg.sender - address(_dexCallback)));
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != token_) {
        v0 = token_.transfer(0x52aa899454998be5b000ad077a46bbe360f4e497, 0xa9059cbb000000000000000000000000, amount_).gas(msg.gas);
        if (!((MEM[0] == 1) & v0)) {
            require(RETURNDATASIZE() | !token_.code.size < v0, TransferFailed());
        }
        MEM[52] = 0;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), NotPoolManager());
    v1 = v2 = rawData.word2 ^ (uint32(rawData.word3) + 31 & 0xffffffe0) + 96 | rawData.word1 ^ 0x40;
    v3 = v4 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96] << 5 & 0x1fffffffe0;
    v5 = v6 = 0;
    while (v5 < v4) {
        v1 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] ^ v3 | v1;
        v3 = (msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] + 128] + 31 & 0xffffffe0) + v3 + 32;
        v5 = v5 + 32;
    }
    require(!((msg.data[4 + rawData] + (4 + rawData + 32) < 4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v3 + 128) | v1), SliceOutOfBounds());
    require(!(uint32(rawData.word3) - uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96])), InputLengthMismatch());
    v7 = v8 = 0;
    while (v7 < uint32(rawData.word3)) {
        v9 = v10 = 7478;
        v11 = _SafeAdd(4 + rawData + 32 + 96, uint32(rawData.word3), v7);
        require(v7 < uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96]), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)] < msg.data.length - (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128) - 31);
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]] <= uint64.max);
        require(32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) <= msg.data.length - msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]]);
        if (msg.data[v11] >> 248 >= 4) {
            if ((msg.data[v11] >> 248) - 4) {
                if (msg.data[v11] >> 248 == 5) {
                    require(64 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                    v12 = 0x3d63(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])]);
                    require(v12 >= msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) + 32], V4TooLittleReceived(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) + 32], v12));
                    0x3dba(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])], this, v12);
                } else {
                    v13 = 2231;
                }
            } else {
                require(64 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                v14 = 0x3e3a(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])]);
                require(v14 <= msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) + 32], V4TooMuchRequested(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) + 32], v14));
                0x3e97(msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])], this, v14);
            }
        } else {
            if (msg.data[v11] >> 248) {
                if ((msg.data[v11] >> 248) - 1) {
                    if ((msg.data[v11] >> 248) - 2) {
                        if (msg.data[v11] >> 248 == 3) {
                            require(160 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                            v15 = msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])] + (32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]));
                            require(msg.data[v15 + 32] < msg.data.length - v15 - 31);
                            require(msg.data[v15 + msg.data[v15 + 32]] <= uint64.max);
                            require(32 + (v15 + msg.data[v15 + 32]) <= msg.data.length - (msg.data[v15 + msg.data[v15 + 32]] << 5));
                            require(!(uint128(msg.data[v15 + 64]) - msg.data[v15 + 64]));
                            v16 = 0x15f0(v15);
                            if (msg.data[v15 + msg.data[v15 + 32]]) {
                                require(msg.data[v15 + 32] < msg.data.length - v15 - 31);
                                require(msg.data[v15 + msg.data[v15 + 32]] <= uint64.max);
                                require(32 + (v15 + msg.data[v15 + 32]) <= msg.data.length - (msg.data[v15 + msg.data[v15 + 32]] << 5));
                                require(msg.data[v15 + msg.data[v15 + 32]] - 1 < msg.data[v15 + msg.data[v15 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)] < msg.data.length - (32 + (v15 + msg.data[v15 + 32])) - 159);
                                v17 = new struct(5);
                                require(!((v17 + 160 > uint64.max) | (v17 + 160 < v17)), Panic(65)); // failed memory allocation (too much memory)
                                v17.word0 = 0;
                                v17.word1 = 0;
                                v17.word2 = 0;
                                v17.word3 = 0;
                                v17.word4 = 0;
                                v18 = 0x15f0(32 + (v15 + msg.data[v15 + 32]) + msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)]);
                                if (address(v16) < address(v18)) {
                                }
                                require(!(uint24(msg.data[32 + (v15 + msg.data[v15 + 32]) + msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)] + 32]) - msg.data[32 + (v15 + msg.data[v15 + 32]) + msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)] + 32]));
                                require(!(int24(msg.data[32 + (v15 + msg.data[v15 + 32]) + msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)] + 64]) - msg.data[32 + (v15 + msg.data[v15 + 32]) + msg.data[32 + (v15 + msg.data[v15 + 32]) + (msg.data[v15 + msg.data[v15 + 32]] - 1 << 5)] + 64]));
                                // Unknown jump to Block 0xa2b0x37baB0x1d30B0x6ee. Refer to 3-address code (TAC);
                            } else {
                                require(!(uint128(msg.data[96 + v15]) - msg.data[96 + v15]));
                                if (uint128(0) > uint128(msg.data[96 + v15])) {
                                    require(uint128(msg.data[96 + v15]) - msg.data[96 + v15], V4TooMuchRequested(uint128(msg.data[96 + v15]), uint128(0)));
                                    revert();
                                }
                            }
                        } else {
                            v13 = v19 = 2231;
                        }
                    } else {
                        v9 = v20 = 2603;
                        require(320 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                        v9 = v21 = msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])] + (32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]));
                        v9 = v22 = 224;
                        v9 = v23 = 16869;
                        v9 = v24 = 16864;
                        v9 = v25 = 16856;
                        require(!(uint128(msg.data[v21 + 192]) - msg.data[v21 + 192]));
                        v26 = v27 = msg.data[v21 + 160];
                        require(!(bool(v27) - v27));
                        require(msg.data[v21 + (uint8.max + 1)] < msg.data.length - v21 - 31);
                        v28 = v29 = msg.data[v21 + msg.data[v21 + (uint8.max + 1)]];
                        require(v29 <= uint64.max);
                        v9 = v30 = 32 + (v21 + msg.data[v21 + (uint8.max + 1)]);
                        require(v30 <= msg.data.length - v29);
                        v26 = v31 = uint128(msg.data[v21 + 192]);
                        require(msg.data.length - v21 >= 160);
                        v26 = v32 = new struct(5);
                        require(!((v32 + 160 > uint64.max) | (v32 + 160 < v32)), Panic(65)); // failed memory allocation (too much memory)
                        require(!(address(msg.data[v21]) - msg.data[v21]));
                        v32.word0 = msg.data[v21];
                        require(!(address(msg.data[v21 + 32]) - msg.data[v21 + 32]));
                        v32.word1 = msg.data[v21 + 32];
                        require(!(uint24(msg.data[v21 + 64]) - msg.data[v21 + 64]));
                        v32.word2 = msg.data[v21 + 64];
                        require(!(int24(msg.data[v21 + 96]) - msg.data[v21 + 96]));
                        v32.word3 = msg.data[v21 + 96];
                        require(!(address(msg.data[v21 + 128]) - msg.data[v21 + 128]));
                        v32.word4 = msg.data[v21 + 128];
                    }
                } else {
                    require(160 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                    v33 = msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])] + (32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]));
                    require(msg.data[v33 + 32] < msg.data.length - v33 - 31);
                    require(msg.data[v33 + msg.data[v33 + 32]] <= uint64.max);
                    require(32 + (v33 + msg.data[v33 + 32]) <= msg.data.length - (msg.data[v33 + msg.data[v33 + 32]] << 5));
                    v34 = 0x15f0(v33);
                    require(!(uint128(msg.data[v33 + 64]) - msg.data[v33 + 64]));
                    if (!uint128(msg.data[v33 + 64])) {
                        v35 = 0x4a7c(v34);
                    }
                    if (0 < msg.data[v33 + msg.data[v33 + 32]]) {
                        require(msg.data[v33 + 32] < msg.data.length - v33 - 31);
                        require(msg.data[v33 + msg.data[v33 + 32]] <= uint64.max);
                        require(32 + (v33 + msg.data[v33 + 32]) <= msg.data.length - (msg.data[v33 + msg.data[v33 + 32]] << 5));
                        require(0 < msg.data[v33 + msg.data[v33 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(msg.data[32 + (v33 + msg.data[v33 + 32])] < msg.data.length - (32 + (v33 + msg.data[v33 + 32])) - 159);
                        v36 = new struct(5);
                        require(!((v36 + 160 > uint64.max) | (v36 + 160 < v36)), Panic(65)); // failed memory allocation (too much memory)
                        v36.word0 = 0;
                        v36.word1 = 0;
                        v36.word2 = 0;
                        v36.word3 = 0;
                        v36.word4 = 0;
                        v37 = 0x15f0(32 + (v33 + msg.data[v33 + 32]) + msg.data[32 + (v33 + msg.data[v33 + 32])]);
                        if (address(v34) < address(v37)) {
                        }
                        require(!(uint24(msg.data[32 + (v33 + msg.data[v33 + 32]) + msg.data[32 + (v33 + msg.data[v33 + 32])] + 32]) - msg.data[32 + (v33 + msg.data[v33 + 32]) + msg.data[32 + (v33 + msg.data[v33 + 32])] + 32]));
                        require(!(int24(msg.data[32 + (v33 + msg.data[v33 + 32]) + msg.data[32 + (v33 + msg.data[v33 + 32])] + 64]) - msg.data[32 + (v33 + msg.data[v33 + 32]) + msg.data[32 + (v33 + msg.data[v33 + 32])] + 64]));
                        // Unknown jump to Block 0xa2b0x37baB0x1d30B0x6ee. Refer to 3-address code (TAC);
                    } else {
                        require(!(uint128(msg.data[96 + v33]) - msg.data[96 + v33]));
                        if (uint128(0) < uint128(msg.data[96 + v33])) {
                            require(uint128(msg.data[96 + v33]) - msg.data[96 + v33], V4TooLittleReceived(uint128(msg.data[96 + v33]), uint128(0)));
                            revert();
                        }
                    }
                }
            } else {
                v9 = v38 = 2603;
                require(320 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]], SliceOutOfBounds());
                v9 = v39 = msg.data[32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)])] + (32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]));
                v9 = msg.data[v39 + 192];
                require(!(uint128(v9) - v9));
                if (!uint128(v9)) {
                    v40 = 0x40ff(v39 + 160);
                    if (!v40) {
                        v9 = v41 = 224;
                        v9 = v42 = 17312;
                        v9 = v43 = 17169;
                        v44 = v45 = 16864;
                        v46 = v47 = 0x15f0(v39 + 32);
                    } else {
                        v9 = v48 = 224;
                        v9 = v49 = 17312;
                        v9 = v50 = 17169;
                        v44 = v51 = 16864;
                        v46 = v52 = 0x15f0(v39);
                    }
                    v53 = v54 = 0x4a7c(v46);
                }
            }
            v9 = v55 = 17312;
            v9 = v56 = 17169;
            v9 = v57 = 224;
            v9 = v58 = 17284;
            v9 = v59 = uint128.max;
            v9 = v60 = 17277;
            v26 = v61 = v9 + 160;
            v26 = v62 = 0x40ff(v61);
            // Unknown jump to Block 0x1d36B0x6ee. Refer to 3-address code (TAC);
            v26 = v63 = 0x126a(v9 & v9);
            require(msg.data[v9 + (uint8.max + 1)] < msg.data.length - v9 - 31);
            v28 = v64 = msg.data[v9 + msg.data[v9 + (uint8.max + 1)]];
            require(v64 <= uint64.max);
            v9 = v65 = 32 + (v9 + msg.data[v9 + (uint8.max + 1)]);
            require(v65 <= msg.data.length - v64);
            require(msg.data.length - v9 >= 160);
            v26 = new struct(5);
            require(!((v26 + 160 > uint64.max) | (v26 + 160 < v26)), Panic(65)); // failed memory allocation (too much memory)
            require(!(address(msg.data[v9]) - msg.data[v9]));
            v26.word0 = msg.data[v9];
            require(!(address(msg.data[v9 + 32]) - msg.data[v9 + 32]));
            v26.word1 = msg.data[v9 + 32];
            require(!(uint24(msg.data[v9 + 64]) - msg.data[v9 + 64]));
            v26.word2 = msg.data[v9 + 64];
            require(!(int24(msg.data[v9 + 96]) - msg.data[v9 + 96]));
            v26.word3 = msg.data[v9 + 96];
            require(!(address(msg.data[v9 + 128]) - msg.data[v9 + 128]));
            v26.word4 = msg.data[v9 + 128];
            v26 = v66 = 32;
            if (0 == v26) {
                v26 = v67 = 18882;
                v26 = v68 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                v28 = v69, v26 = v70, v26 = v71, v26 = v72, v26 = v73, v26 = v74, v26 = v75 = 0x4980(v28, v67, v26, v68, v66, v26, v26);
            } else {
                v26 = v76 = 18882;
                v26 = v77 = 0x1000276a4;
            }
            v78 = v79 = 18827;
            v78 = v80 = 0xaac();
            // Unknown jump to Block 0x1d36B0x6ee. Refer to 3-address code (TAC);
            MEM[v78] = bool(v26);
            MEM[v26 + v78] = v26;
            MEM[v78 + 64] = address(v26);
            v26 = v81 = MEM[64];
            MEM[v81] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[v81 + 4] = address(MEM[v26]);
            MEM[v81 + 4 + 32] = address(MEM[v26 + 32]);
            MEM[v81 + 4 + 64] = uint24(MEM[v26 + 64]);
            MEM[v81 + 4 + 96] = int24(MEM[v26 + 96]);
            MEM[v81 + 4 + 128] = address(MEM[128 + v26]);
            MEM[v81 + 4 + 160] = bool(MEM[v78]);
            MEM[v81 + 4 + 192] = MEM[v78 + 32];
            MEM[v81 + 4 + 224] = address(MEM[v78 + 64]);
            MEM[v81 + 4 + (uint8.max + 1)] = 288;
            MEM[v81 + 4 + 288] = v28;
            CALLDATACOPY(v81 + 4 + 288 + 32, v9, v28);
            MEM[32 + (v28 + (v81 + 4 + 288))] = 0;
            v28 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v28) + (v81 + 4 + 288) + 32;
            // Unknown jump to Block 0x49c2B0x1d30B0x6ee. Refer to 3-address code (TAC);
            v82 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v4123V0x4393V0x1d30V0x6ee:v4123V0x4393V0x1d30V0x6ee + v1943V0x48ef0x37baV0x1d30V0x6ee - v4123V0x4393V0x1d30V0x6ee], MEM[v4123V0x4393V0x1d30V0x6ee:v4123V0x4393V0x1d30V0x6ee + v4123V0x4393V0x1d30V0x6ee]).gas(msg.gas);
            require(v82, MEM[64], RETURNDATASIZE());
            v83 = v84 = 0;
            if (v82) {
                v85 = v86 = 32;
                if (32 > RETURNDATASIZE()) {
                    v85 = v87 = RETURNDATASIZE();
                    require(!((v26 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v26 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                } else {
                    require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v26 + 32;
                }
                require(v26 + v85 - v26 >= 32);
                v83 = v88 = MEM[v26];
            }
            if (0 == (bool(v26) == 0 > v26)) {
                v89 = v83 >> 128;
                // Unknown jump to Block 0x41d8B0x1d30B0x6ee. Refer to 3-address code (TAC);
            } else {
                v89 = v90 = int128(v83);
            }
            v53 = v91 = 0x126a(int128(v89));
            v9 = v92 = uint128(v53);
            require(!(uint128(msg.data[v9 + v9]) - msg.data[v9 + v9]));
            if (uint128(v92) > uint128(msg.data[v9 + v9])) {
                require(uint128(msg.data[v9 + v9]) - msg.data[v9 + v9], V4TooMuchRequested(uint128(msg.data[v9 + v9]), uint128(v92)));
                revert();
            } else {
                // Unknown jump to Block 0xa2b0x37baB0x1d30B0x6ee. Refer to 3-address code (TAC);
            }
            // Unknown jump to Block 0x435dB0x1d30B0x6ee. Refer to 3-address code (TAC);
        }
        v7 = v7 + 1;
        revert(UnsupportedAction(msg.data[v11] >> 248));
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v93 = new uint256[](0);
    MCOPY(v93.data, 32 + MEM[64], 0);
    MEM[v93.data] = 0;
    return v93;
}

function 0x658068fe(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(!(msg.sender - 0xba1333333333a1ba1108e8412f11850a5c319ba9), SenderIsNotVault(msg.sender));
    require(varg0 < 2);
    v0 = 0x15f0(36);
    v1 = 0x15f0(68);
    v2 = 0x15f0(100);
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v3 = 0xa9d();
    0x1b4c(v3, varg0);
    v3.word1 = address(v0);
    v3.word2 = address(v1);
    v3.word3 = address(v2);
    v3.word4 = varg3;
    v3.word5 = varg4;
    v3.word6 = MEM[64];
    require(2 > v3.word0, Panic(33)); // failed convertion to enum type
    v4 = new uint256[](v3.word0);
    MEM[v4.data] = address(v3.word1);
    MCOPY(MEM[64] + 4 + (uint8.max + 1) + 32, 32 + v3.word6, MEM[v3.word6]);
    MEM[32 + (MEM[v3.word6] + (MEM[64] + 4 + (uint8.max + 1)))] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v8 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v4, v9, v9, address(v3.word2), address(v3.word3), v3.word4, v3.word5, 224, MEM[v3.word6]).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    v6 = v10 = 0;
    v7 = v11 = 0;
    v8 = v12 = 0;
    if (v5) {
        v13 = v14 = 96;
        if (96 > RETURNDATASIZE()) {
            v13 = v15 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v13 - MEM[64] >= 96);
    }
    if (v7) {
        require(!(address(varg1) - varg1));
        0x182f(address(varg1), v7);
        require(!(address(varg1) - varg1));
        v16, /* uint256 */ v17 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(address(varg1), v7).gas(msg.gas);
        if (v16) {
            if (v16) {
                v18 = v19 = 32;
                if (32 > RETURNDATASIZE()) {
                    v18 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v18 - MEM[64] >= 32);
            }
        }
    }
    require(!(address(varg2) - varg2));
    require(0xba1333333333a1ba1108e8412f11850a5c319ba9.code.size);
    v20 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(address(varg2), this, v8).gas(msg.gas);
    if (v20) {
        if (v20) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        return v6;
    }
    revert(MEM[64], RETURNDATASIZE());
}

function _SafeAdd(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0 + varg2;
}

function 0x57f9104f(uint256 varg0, uint256 varg1, uint256 varg2, bytes varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    require(!(msg.sender - address(0x3ee92cd00993a4488ae153ab41ac7947cbcbc1de)), Unauthorized(msg.sender));
    require(block.timestamp <= varg2);
    require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg3.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg3.data + varg3.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    MEM[MEM[64] + 32] = bytes20(varg0 << 96);
    MCOPY(MEM[64] + 52, v0.data, v0.length);
    MEM[MEM[64] + v0.length + 52] = 0;
    require(!((MEM[64] + (MEM[64] + v0.length - MEM[64] + 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v0.length - MEM[64] + 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    require(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.code.size);
    v1 = new uint256[](MEM[64] + v0.length - MEM[64] + 52 - 32);
    MCOPY(v1.data, 32 + MEM[64], MEM[64] + v0.length - MEM[64] + 52 - 32);
    MEM[32 + (MEM[64] + v0.length - MEM[64] + 52 - 32 + v1)] = 0;
    v2 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.flashLoan(address(varg0), varg1, v1).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    if (v2) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
    }
    v3 = varg0.approve(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb, 0x95ea7b3000000000000000000000000, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & v3)) {
        require(RETURNDATASIZE() | !varg0.code.size < v3, ApproveFailed());
        MEM[52] = 0;
    } else {
        MEM[52] = 0;
    }
}

function 0xcad(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(varg1, fullExit());
    require(!(varg3 - varg1));
    v0 = v1 = 0;
    while (1) {
        if (v0 < v0) {
            v2 = _SafeAdd(v0, v0, v0);
            require(v0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 31);
            v0 = v3 = msg.data[v0 + msg.data[v0 + (v0 << 5)]];
            require(v3 <= uint64.max);
            v0 = 32 + (v0 + msg.data[v0 + (v0 << 5)]);
            require(v0 <= msg.data.length - v3);
            v4 = msg.data[v2] >> 248 & 0x3f;
            if (v4 >= 29) {
                if (v4 - 29) {
                    if (v4 - 30) {
                        if (v4 - 31) {
                            require(!(v4 - 32), InvalidCommandType(v4));
                            v0 = v5 = 1;
                            0x1d5a(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96]);
                        } else {
                            v0 = v6 = 1;
                            0x1e28(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96]);
                        }
                    } else {
                        v0 = v7 = 1;
                        0x1f91(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96]);
                    }
                } else {
                    v0 = v8 = 1;
                    v9 = 0x18b1();
                    v10 = new struct(3);
                    v10.word0 = msg.data[v0];
                    v10.word1 = msg.data[v0 + 32];
                    v10.word2 = msg.data[v0 + 64];
                    0x21bc(v10, msg.data[v0 + 96], msg.data[v0 + 128], msg.data[v0 + 160]);
                }
            } else if (v4 >= 27) {
                if (v4 - 27) {
                    require(!(v4 - 28), InvalidCommandType(v4));
                    v0 = v11 = 3419;
                    v0 = v12 = 1;
                    v0 = v13, v0 = v14, v0 = v15, v0 = v16 = 0x22c0(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96], msg.data[v0 + 128]);
                } else {
                    v0 = v17 = 3419;
                    v0 = v18 = 1;
                    v0 = v19 = msg.data[v0 + 288];
                    v0 = v20 = msg.data[v0 + (uint8.max + 1)];
                    v0 = v21 = msg.data[v0 + 224];
                    v0 = v22 = msg.data[v0 + 192];
                    v0 = v23 = msg.data[v0 + 160];
                    v0 = v24 = msg.data[v0 + 128];
                    v0 = v25 = msg.data[v0 + 96];
                    v0 = v26 = msg.data[v0 + 64];
                    v0 = v27 = msg.data[v0 + 32];
                    v0 = v28 = msg.data[v0];
                    0x241d(v28, v27, v26, v25, v24, v23, v22, v21, v20);
                    v29 = 0x3952(v0);
                    v30 = 0x3952(v0);
                    v31 = 0x3c72(v0, v29, v30, v0, v0);
                    if (address(v0) <= address(v0)) {
                    }
                    MEM[MEM[64] + 32] = address(v0);
                    MEM[MEM[64] + 64] = address(v0);
                    MEM[MEM[64] + 96] = uint24(v0);
                    MEM[MEM[64]] = 96;
                }
            } else if (v4 >= 21) {
                if (v4 - 21) {
                    if (v4 - 22) {
                        if (v4 - 23) {
                            if (v4 - 24) {
                                if (v4 - 25) {
                                    require(!(v4 - 26), InvalidCommandType(v4));
                                    v0 = v32 = 1;
                                    v33 = 0x18b1();
                                    v34 = new struct(3);
                                    v34.word0 = msg.data[v0];
                                    v34.word1 = msg.data[v0 + 32];
                                    v34.word2 = msg.data[v0 + 64];
                                    0x256b(v34, msg.data[v0 + 96], msg.data[v0 + 128], msg.data[v0 + 160], msg.data[v0 + 192]);
                                } else {
                                    v0 = v35 = 1;
                                    0x266a(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96], msg.data[v0 + 128], msg.data[v0 + 160]);
                                }
                            } else {
                                v0 = v36 = 1;
                                0x2731(msg.data[v0], msg.data[v0 + 32]);
                            }
                        } else {
                            v0 = v37 = 1;
                            0x27b4(msg.data[v0], msg.data[v0 + 32]);
                        }
                    } else {
                        v0 = v38 = 1;
                        0x283a(msg.data[v0], msg.data[v0 + 32]);
                    }
                } else {
                    v0 = v39 = 1;
                    0x28d2(msg.data[v0], msg.data[v0 + 32]);
                }
            } else {
                if (v4 >= 16) {
                    if (v4 - 16) {
                        if (v4 - 17) {
                            if (v4 - 18) {
                                if (v4 - 19) {
                                    require(!(v4 - 20), InvalidCommandType(v4));
                                    v0 = v40 = 1;
                                    0x2997(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96], msg.data[v0 + 128]);
                                } else {
                                    v0 = v41 = 1;
                                    v0 = v42 = 3419;
                                    v43 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                                    v44 = v0 + uint32(msg.data[v0 + 64]) + 32;
                                    require(v3 + v0 >= v43 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                                    v45 = v46 = msg.data[v0];
                                    while (1) {
                                        v47, v48, v0 = v49, v0, v0 = v50 = 0x2aa5(66 <= v43, 10923, v44, v43, v0);
                                        require(43 <= v49);
                                        v0 = v51 = 11003;
                                        v52 = v53 = this;
                                        require(43 <= 43, SliceOutOfBounds());
                                        v54 = address(msg.data[v48] >> 96) < address(msg.data[v48 + 23] >> 96);
                                        v55 = 0x1789(msg.data[v48] >> 96, msg.data[v48 + 23] >> 96, uint24(msg.data[v48] >> 72), 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62);
                                        v52 = v56 = address(v55);
                                        v57 = v58 = 6714;
                                        v57 = 0;
                                        v52 = v59 = 6700;
                                        v52 = v60 = 6742;
                                        v57 = v61 = 64;
                                        if (0 == v54) {
                                            v62 = v63 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        } else {
                                            v62 = v64 = 0x1000276a4;
                                        }
                                        v52 = v65 = MEM[v61];
                                        MEM[v65 + 32] = address(0xd9ce49caf7299daf18fffcb2b84a44fd33412509);
                                        MEM[v65 + 32 + 32] = 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62;
                                        MEM[v65 + 32 + 64] = 96;
                                        MEM[v65 + 32 + 96] = 43;
                                        CALLDATACOPY(v65 + 32 + 96 + 32, v48, 43);
                                        MEM[75 + (v65 + 32 + 96)] = 0;
                                        v66 = v67 = 64 + (v65 + 32 + 96) + 32;
                                        while (1) {
                                            // Unknown jump to Block ['0x1a2c0x1ab9B0x2ab6B0xf67', '0x1a560x1ab9B0x2ab6B0xf67']. Refer to 3-address code (TAC);
                                            MEM[v52] = v66 - v52 - 32;
                                            require(!((v52 + (v66 - v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (v66 - v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v52 + (v66 - v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v52 = v68 = MEM[v61];
                                            MEM[v68] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                            MEM[v68 + 4] = address(v52);
                                            MEM[v68 + 4 + 32] = bool(v54);
                                            MEM[v68 + 4 + 64] = v47;
                                            MEM[v68 + 4 + 96] = address(v62);
                                            MEM[v68 + 4 + 128] = 160;
                                            MEM[v68 + 4 + 160] = MEM[v52];
                                            MCOPY(v68 + 4 + 160 + 32, 32 + v52, MEM[v52]);
                                            MEM[32 + (MEM[v52] + (v68 + 4 + 160))] = 0;
                                            v66 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v52]) + (v68 + 4 + 160) + 32;
                                        }
                                        v69 = v52.call(MEM[v62f0x1ab9_0x1V0x2ab6V0xf67:v62f0x1ab9_0x1V0x2ab6V0xf67 + v61bV0x19800x1ab9V0x2ab6V0xf67 - v62f0x1ab9_0x1V0x2ab6V0xf67], MEM[v62f0x1ab9_0x1V0x2ab6V0xf67:v62f0x1ab9_0x1V0x2ab6V0xf67 + v1ab90x1a07V0x2ab6V0xf67]).value(v57).gas(msg.gas);
                                        if (!v69) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v70 = v71 = 0;
                                            v70 = v72 = 0;
                                            if (v69) {
                                                v73 = 64;
                                                if (64 > RETURNDATASIZE()) {
                                                    v73 = v74 = RETURNDATASIZE();
                                                }
                                                require(!((v52 + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v52 + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(v52 + v73 - v52 >= 64);
                                                v70 = MEM[v52];
                                                v70 = v75 = MEM[v52 + 32];
                                                // Unknown jump to Block 0x2afb0x2a87B0xf67. Refer to 3-address code (TAC);
                                            }
                                            if (v54) {
                                            }
                                            require(v70 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                            v45 = v76 = 0 - v70;
                                            if (!11017) {
                                                require(msg.data[11035] <= v76, V3TooLittleReceived());
                                                // Unknown jump to Block 0xd5b. Refer to 3-address code (TAC);
                                            } else {
                                                v43 = v77, v44 = v78 = 0x18fa(v54, v62);
                                            }
                                        }
                                    }
                                }
                            } else {
                                v0 = v79 = 1;
                                v0 = v80 = 3419;
                                v0 = v81 = msg.data[v0 + msg.data[v0 + 64]];
                                v0 = v82 = v0 + msg.data[v0 + 64] + 32;
                                if (v81 <= v81 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                                    require(v3 >= v81 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                                    if (v81) {
                                        v83 = v84 = msg.data[v82];
                                        require(!(address(v84) - v84));
                                        if (1 < v81) {
                                            v0 = v85 = 11666;
                                            v0 = v86 = 11651;
                                            v0 = v87 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                                            v0 = v88 = 0x115934131916c8b277dd010ee02de363c09d037c;
                                            v89 = v90 = 11588;
                                            v0 = v91 = 11661;
                                            v0 = v92 = 32;
                                            v93 = v94 = msg.data[v0 + msg.data[v0 + 64] + 64];
                                            require(!(address(v94) - v94));
                                        }
                                    }
                                }
                            }
                        } else {
                            v0 = v95 = 1;
                            v0 = v96 = 3419;
                            v97 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                            v98 = v0 + uint32(msg.data[v0 + 64]) + 32;
                            require(v3 + v0 >= v97 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                            v99 = v100 = msg.data[v0];
                            while (1) {
                                v101, v102, v0 = v103, v0, v0 = v104 = 0x2aa5(66 <= v97, 11104, v98, v97, v0);
                                require(43 <= v103);
                                v0 = v105 = 11003;
                                v106 = v107 = this;
                                require(43 <= 43, SliceOutOfBounds());
                                v108 = address(msg.data[v102] >> 96) < address(msg.data[v102 + 23] >> 96);
                                v109 = 0x1789(msg.data[v102] >> 96, msg.data[v102 + 23] >> 96, uint24(msg.data[v102] >> 72), 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2);
                                v106 = v110 = address(v109);
                                v111 = v112 = 6714;
                                v111 = 0;
                                v106 = v113 = 6700;
                                v106 = v114 = 6742;
                                v111 = v115 = 64;
                                if (0 == v108) {
                                    v116 = v117 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    v116 = v118 = 0x1000276a4;
                                }
                                v106 = v119 = MEM[v115];
                                MEM[v119 + 32] = address(0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9);
                                MEM[v119 + 32 + 32] = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                                MEM[v119 + 32 + 64] = 96;
                                MEM[v119 + 32 + 96] = 43;
                                CALLDATACOPY(v119 + 32 + 96 + 32, v102, 43);
                                MEM[75 + (v119 + 32 + 96)] = 0;
                                v120 = v121 = 64 + (v119 + 32 + 96) + 32;
                                while (1) {
                                    // Unknown jump to Block ['0x1a2c0x1ab9B0x2b6bB0xf3b', '0x1a560x1ab9B0x2b6bB0xf3b']. Refer to 3-address code (TAC);
                                    MEM[v106] = v120 - v106 - 32;
                                    require(!((v106 + (v120 - v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v106 + (v120 - v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v106)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v106 + (v120 - v106 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v106 = v122 = MEM[v115];
                                    MEM[v122] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v122 + 4] = address(v106);
                                    MEM[v122 + 4 + 32] = bool(v108);
                                    MEM[v122 + 4 + 64] = v101;
                                    MEM[v122 + 4 + 96] = address(v116);
                                    MEM[v122 + 4 + 128] = 160;
                                    MEM[v122 + 4 + 160] = MEM[v106];
                                    MCOPY(v122 + 4 + 160 + 32, 32 + v106, MEM[v106]);
                                    MEM[32 + (MEM[v106] + (v122 + 4 + 160))] = 0;
                                    v120 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v106]) + (v122 + 4 + 160) + 32;
                                }
                                v123 = v106.call(MEM[v62f0x1ab9_0x1V0x2b6bV0xf3b:v62f0x1ab9_0x1V0x2b6bV0xf3b + v61bV0x19800x1ab9V0x2b6bV0xf3b - v62f0x1ab9_0x1V0x2b6bV0xf3b], MEM[v62f0x1ab9_0x1V0x2b6bV0xf3b:v62f0x1ab9_0x1V0x2b6bV0xf3b + v1ab90x1a07V0x2b6bV0xf3b]).value(v111).gas(msg.gas);
                                if (!v123) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v124 = v125 = 0;
                                    v124 = v126 = 0;
                                    if (v123) {
                                        v127 = 64;
                                        if (64 > RETURNDATASIZE()) {
                                            v127 = v128 = RETURNDATASIZE();
                                        }
                                        require(!((v106 + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v106 + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v106)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v106 + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(v106 + v127 - v106 >= 64);
                                        v124 = MEM[v106];
                                        v124 = v129 = MEM[v106 + 32];
                                        // Unknown jump to Block 0x2afb0x2b42B0xf3b. Refer to 3-address code (TAC);
                                    }
                                    if (v108) {
                                    }
                                    require(v124 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                    v99 = v130 = 0 - v124;
                                    if (!11184) {
                                        require(msg.data[11035] <= v130, V3TooLittleReceived());
                                        // Unknown jump to Block 0xd5b. Refer to 3-address code (TAC);
                                    } else {
                                        v97 = v131, v98 = v132 = 0x18fa(v108, v116);
                                    }
                                }
                            }
                        }
                    } else {
                        v0 = v133 = 1;
                        v0 = v134 = 3419;
                        v0 = v135 = msg.data[v0 + msg.data[v0 + 64]];
                        v0 = v136 = v0 + msg.data[v0 + 64] + 32;
                        if (v135 <= v135 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                            require(v3 >= v135 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                            if (v135) {
                                v83 = v137 = msg.data[v136];
                                require(!(address(v137) - v137));
                                if (1 < v135) {
                                    v0 = v138 = 11666;
                                    v0 = v139 = 11651;
                                    v0 = v140 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                                    v0 = v141 = 0x1097053fd2ea711dad45caccc45eff7548fcb362;
                                    v89 = v142 = 11588;
                                    v0 = v143 = 11661;
                                    v0 = v144 = 32;
                                    v93 = v145 = msg.data[v0 + msg.data[v0 + 64] + 64];
                                    require(!(address(v145) - v145));
                                }
                            }
                        }
                    }
                } else if (v4 >= 12) {
                    if (v4 - 12) {
                        if (v4 - 13) {
                            if (v4 - 14) {
                                require(!(v4 - 15), InvalidCommandType(v4));
                                v0 = v146 = 3816;
                                v0 = v147 = 1;
                                v0 = v148 = msg.data[v0 + 128];
                                v0 = v149 = msg.data[v0 + 96];
                                v0 = v150 = msg.data[v0 + 64];
                                v0 = v151 = msg.data[v0 + 32];
                                v152 = v153 = msg.data[v0];
                                v152 = v154, v0 = v155, v0 = v156, v0 = v157, v0 = v158 = 0x3034(v153, v151, v150, v149);
                                v159 = v160 = 12429;
                                v161 = v162 = 12413;
                                v163 = v164 = 12397;
                                v165 = v166 = 0xabb();
                                0x1b32(v166);
                            } else {
                                v0 = v167 = 3816;
                                v0 = v168 = 1;
                                v0 = v169 = msg.data[v0 + 128];
                                v0 = v170 = msg.data[v0 + 96];
                                v0 = v171 = msg.data[v0 + 64];
                                v0 = v172 = msg.data[v0 + 32];
                                v152 = v173 = msg.data[v0];
                                v152 = v174, v0 = v175, v0 = v176, v0 = v177, v0 = v178 = 0x312a(v173, v172, v171, v170);
                                v159 = v179 = 12429;
                                v161 = v180 = 12413;
                                v163 = v181 = 12397;
                                v165 = v182 = 0xabb();
                                0x1b41(v182);
                            }
                            MEM[v165 + 32] = address(v152);
                            MEM[v165 + 64] = address(v0);
                            MEM[v165 + 96] = address(v0);
                            MEM[v165 + 128] = v0;
                            MEM[v165 + 160] = v0;
                            MEM[MEM[64] + 32] = 0x658068fe00000000000000000000000000000000000000000000000000000000;
                        } else {
                            v0 = v183 = 1;
                            0x3153(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64], msg.data[v0 + 96], msg.data[v0 + 128], msg.data[v0 + 160]);
                        }
                    } else {
                        v0 = v184 = 1;
                        MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 32;
                        MEM[MEM[64] + 36] = v3;
                        CALLDATACOPY(MEM[64] + 36 + 32, v0, v3);
                        MEM[32 + (v3 + (MEM[64] + 36))] = 0;
                        v185 = address(0x4444c5dc75cb358380d2e3de08a90).call(v186, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                        if (!v185) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v185) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                            require(v187.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v188 = new bytes[](v187.length);
                            require(!((v188 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v187.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v188 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v187.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v188)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v187.length + 32 <= MEM[64] + RETURNDATASIZE());
                            MCOPY(v188.data, v187.data, v187.length);
                            v188[v187.length] = 0;
                        }
                    }
                } else {
                    if (v4 >= 8) {
                        if (v4 - 8) {
                            if (v4 - 9) {
                                if (v4 - 10) {
                                    require(!(v4 - 11), InvalidCommandType(v4));
                                    v0 = v189 = 1;
                                    v0 = v190 = 3419;
                                    0x328b(v0);
                                    v0 = v191 = msg.data[v0 + msg.data[v0 + 64]];
                                    v0 = v192 = v0 + msg.data[v0 + 64] + 32;
                                    if (v191 <= v191 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                                        require(v0 >= v191 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                                        v0 = v193 = 0;
                                        require(v191 >= 2, InvalidPath());
                                        v0 = v194 = msg.data[v0];
                                        v195 = v191 - 1;
                                        if (v195 > v191) {
                                            // Unknown jump to Block 0x127a0xcad. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v0 = v196 = 1;
                                    v0 = v197 = 3419;
                                    v0 = v198 = msg.data[v0 + msg.data[v0 + 64]];
                                    v0 = v199 = v0 + msg.data[v0 + 64] + 32;
                                    if (v198 <= v198 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                                        require(v3 >= v198 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                                        if (v198) {
                                            v83 = v200 = msg.data[v199];
                                            require(!(address(v200) - v200));
                                            if (1 < v198) {
                                                v0 = v201 = 11666;
                                                v0 = v202 = 11651;
                                                v0 = v203 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                                                v0 = v204 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
                                                v89 = v205 = 11588;
                                                v0 = v206 = 11661;
                                                v0 = v207 = 32;
                                                v93 = v208 = msg.data[v0 + msg.data[v0 + 64] + 64];
                                                require(!(address(v208) - v208));
                                            }
                                        }
                                    }
                                }
                            } else {
                                v0 = v209 = 1;
                                v0 = v210 = 3419;
                                v0 = v211, v0 = v212, v0 = v213 = 0x34f9(v0);
                                MEM[0] = MEM[0];
                                v214 = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
                                v215 = 32;
                                v216 = msg.data[v0];
                                v217 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                v218 = v219 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                                v220 = v221 = v0 + uint32(msg.data[v0 + 64]) + 32;
                                require(v0 + v0 >= v219 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                            }
                        } else {
                            v0 = v222 = 1;
                            v0 = v223 = 3419;
                            v224 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                            v225 = v0 + uint32(msg.data[v0 + 64]) + 32;
                            require(v3 + v0 >= v224 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                            v226 = v227 = msg.data[v0];
                            while (1) {
                                v228, v229, v0 = v230, v0, v0 = v231 = 0x2aa5(66 <= v224, 11236, v225, v224, v0);
                                require(43 <= v230);
                                MEM[0] = MEM[0];
                                v0 = v232 = 11003;
                                v233 = v234 = this;
                                require(43 <= 43, SliceOutOfBounds());
                                v235 = address(msg.data[v229] >> 96) < address(msg.data[v229 + 23] >> 96);
                                v236 = 0x1789(msg.data[v229] >> 96, msg.data[v229 + 23] >> 96, uint24(msg.data[v229] >> 72), 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                                v233 = v237 = address(v236);
                                v238 = v239 = 6714;
                                v238 = 0;
                                v233 = v240 = 6700;
                                v233 = v241 = 6742;
                                v238 = v242 = 64;
                                if (0 == v235) {
                                    v243 = v244 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    v243 = v245 = 0x1000276a4;
                                }
                                v233 = v246 = MEM[v242];
                                MEM[v246 + 32] = address(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f);
                                MEM[v246 + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                MEM[v246 + 32 + 64] = 96;
                                MEM[v246 + 32 + 96] = 43;
                                CALLDATACOPY(v246 + 32 + 96 + 32, v229, 43);
                                MEM[75 + (v246 + 32 + 96)] = 0;
                                v247 = v248 = 64 + (v246 + 32 + 96) + 32;
                                while (1) {
                                    // Unknown jump to Block ['0x1a2c0x1ab9B0x2befB0xe1e', '0x1a560x1ab9B0x2befB0xe1e']. Refer to 3-address code (TAC);
                                    MEM[v233] = v247 - v233 - 32;
                                    require(!((v233 + (v247 - v233 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v233 + (v247 - v233 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v233)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v233 + (v247 - v233 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v233 = v249 = MEM[v242];
                                    MEM[v249] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[v249 + 4] = address(v233);
                                    MEM[v249 + 4 + 32] = bool(v235);
                                    MEM[v249 + 4 + 64] = v228;
                                    MEM[v249 + 4 + 96] = address(v243);
                                    MEM[v249 + 4 + 128] = 160;
                                    MEM[v249 + 4 + 160] = MEM[v233];
                                    MCOPY(v249 + 4 + 160 + 32, 32 + v233, MEM[v233]);
                                    MEM[32 + (MEM[v233] + (v249 + 4 + 160))] = 0;
                                    v247 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (v249 + 4 + 160) + 32;
                                }
                                v250 = v233.call(MEM[v62f0x1ab9_0x1V0x2befV0xe1e:v62f0x1ab9_0x1V0x2befV0xe1e + v61bV0x19800x1ab9V0x2befV0xe1e - v62f0x1ab9_0x1V0x2befV0xe1e], MEM[v62f0x1ab9_0x1V0x2befV0xe1e:v62f0x1ab9_0x1V0x2befV0xe1e + v1ab90x1a07V0x2befV0xe1e]).value(v238).gas(msg.gas);
                                if (!v250) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v251 = v252 = 0;
                                    v251 = v253 = 0;
                                    if (v250) {
                                        v254 = 64;
                                        if (64 > RETURNDATASIZE()) {
                                            v254 = v255 = RETURNDATASIZE();
                                        }
                                        require(!((v233 + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v233 + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v233)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v233 + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(v233 + v254 - v233 >= 64);
                                        v251 = MEM[v233];
                                        v251 = v256 = MEM[v233 + 32];
                                        // Unknown jump to Block 0x2afb0x2bc6B0xe1e. Refer to 3-address code (TAC);
                                    }
                                    if (v235) {
                                    }
                                    require(v251 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                    v226 = v257 = 0 - v251;
                                    if (!11297) {
                                        require(msg.data[11035] <= v257, V3TooLittleReceived());
                                        // Unknown jump to Block 0xd5b. Refer to 3-address code (TAC);
                                    } else {
                                        v224 = v258, v225 = v259 = 0x18fa(v235, v243);
                                    }
                                }
                            }
                        }
                    } else if (v4 >= 4) {
                        if (v4 - 4) {
                            if (v4 - 5) {
                                if (v4 - 6) {
                                    require(!(v4 - 7), InvalidCommandType(v4));
                                    v0 = v260 = 1;
                                    0x35f7(msg.data[v0], msg.data[v0 + 32]);
                                } else {
                                    v0 = v261 = 1;
                                    0x36ff(msg.data[v0], msg.data[v0 + 32]);
                                }
                            } else {
                                v0 = v262 = 1;
                                v0 = v263 = 3419;
                                0x33d7(v0);
                                v0 = v264 = msg.data[v0 + msg.data[v0 + 64]];
                                v0 = v265 = v0 + msg.data[v0 + 64] + 32;
                                if (v264 <= v264 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                                    require(v0 >= v264 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                                    v0 = v266 = 0;
                                    require(v264 >= 2, InvalidPath());
                                    v0 = v267 = msg.data[v0];
                                    v195 = v268 = v264 - 1;
                                    if (v268 > v264) {
                                        // Unknown jump to Block 0x127a0xcad. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                        } else {
                            v0 = v269 = 1;
                            v0 = v270 = 3419;
                            v0 = v271 = msg.data[v0 + msg.data[v0 + 64]];
                            v0 = v272 = v0 + msg.data[v0 + 64] + 32;
                            if (v271 <= v271 + (v0 + msg.data[v0 + 64] - v0) + 32) {
                                require(v3 >= v271 + (v0 + msg.data[v0 + 64] - v0) + 32, SliceOutOfBounds());
                                if (v271) {
                                    v83 = v273 = msg.data[v272];
                                    require(!(address(v273) - v273));
                                    if (1 < v271) {
                                        v0 = v274 = 11666;
                                        v0 = v275 = 11651;
                                        v0 = v276 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                                        v0 = v277 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
                                        v89 = v278 = 11588;
                                        v0 = v279 = 11661;
                                        v0 = v280 = 32;
                                        v93 = v281 = msg.data[v0 + msg.data[v0 + 64] + 64];
                                        require(!(address(v281) - v281));
                                    }
                                }
                            }
                        }
                    } else if (v4) {
                        if (v4 - 1) {
                            if (v4 - 2) {
                                require(!(v4 - 3), InvalidCommandType(v4));
                                v0 = v282 = 1;
                                0x188e(msg.data[v0], msg.data[v0 + 32], msg.data[v0 + 64]);
                            } else {
                                v0 = v283 = 1;
                                0x1d4b(block.coinbase, msg.data[v0]);
                            }
                        } else {
                            v0 = v284 = 1;
                            v0 = v285 = 3419;
                            v0 = v286, v0 = v287, v0 = v288 = 0x35c2(v0);
                            MEM[0] = MEM[0];
                            v214 = v289 = 0x1f98431c8ad98523631ae4a59f267346ea31f984;
                            v215 = v290 = 32;
                            v216 = v291 = msg.data[v0];
                            v217 = v292 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                            v218 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                            v220 = v0 + uint32(msg.data[v0 + 64]) + 32;
                            require(v0 + v0 >= v218 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                        }
                    } else {
                        v0 = v293 = 1;
                        v0 = v294 = 3391;
                        v295 = uint32(msg.data[v0 + uint32(msg.data[v0 + 64])]);
                        v296 = v0 + uint32(msg.data[v0 + 64]) + 32;
                        require(v3 + v0 >= v295 + (v0 + uint32(msg.data[v0 + 64])) + 32, SliceOutOfBounds());
                        v297 = v298 = msg.data[v0];
                        while (1) {
                            v299, v300, v0 = v301, v0, v0 = v302 = 0x2aa5(66 <= v295, 11349, v296, v295, v0);
                            require(43 <= v301);
                            MEM[0] = MEM[0];
                            v0 = v303 = 11003;
                            v304 = v305 = this;
                            require(43 <= 43, SliceOutOfBounds());
                            v306 = address(msg.data[v300] >> 96) < address(msg.data[v300 + 23] >> 96);
                            v307 = 0x1789(msg.data[v300] >> 96, msg.data[v300 + 23] >> 96, uint24(msg.data[v300] >> 72), 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                            v304 = v308 = address(v307);
                            v309 = v310 = 6714;
                            v309 = 0;
                            v304 = v311 = 6700;
                            v304 = v312 = 6742;
                            v309 = v313 = 64;
                            if (0 == v306) {
                                v314 = v315 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            } else {
                                v314 = v316 = 0x1000276a4;
                            }
                            v304 = v317 = MEM[v313];
                            MEM[v317 + 32] = address(0x1f98431c8ad98523631ae4a59f267346ea31f984);
                            MEM[v317 + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                            MEM[v317 + 32 + 64] = 96;
                            MEM[v317 + 32 + 96] = 43;
                            CALLDATACOPY(v317 + 32 + 96 + 32, v300, 43);
                            MEM[75 + (v317 + 32 + 96)] = 0;
                            v318 = v319 = 64 + (v317 + 32 + 96) + 32;
                            while (1) {
                                // Unknown jump to Block ['0x1a2c0x1ab9B0x2c60B0xd32', '0x1a560x1ab9B0x2c60B0xd32']. Refer to 3-address code (TAC);
                                MEM[v304] = v318 - v304 - 32;
                                require(!((v304 + (v318 - v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v304 + (v318 - v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v304)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v304 + (v318 - v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v304 = v320 = MEM[v313];
                                MEM[v320] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[v320 + 4] = address(v304);
                                MEM[v320 + 4 + 32] = bool(v306);
                                MEM[v320 + 4 + 64] = v299;
                                MEM[v320 + 4 + 96] = address(v314);
                                MEM[v320 + 4 + 128] = 160;
                                MEM[v320 + 4 + 160] = MEM[v304];
                                MCOPY(v320 + 4 + 160 + 32, 32 + v304, MEM[v304]);
                                MEM[32 + (MEM[v304] + (v320 + 4 + 160))] = 0;
                                v318 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v304]) + (v320 + 4 + 160) + 32;
                            }
                            v321 = v304.call(MEM[v62f0x1ab9_0x1V0x2c60V0xd32:v62f0x1ab9_0x1V0x2c60V0xd32 + v61bV0x19800x1ab9V0x2c60V0xd32 - v62f0x1ab9_0x1V0x2c60V0xd32], MEM[v62f0x1ab9_0x1V0x2c60V0xd32:v62f0x1ab9_0x1V0x2c60V0xd32 + v1ab90x1a07V0x2c60V0xd32]).value(v309).gas(msg.gas);
                            if (!v321) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v322 = v323 = 0;
                                v322 = v324 = 0;
                                if (v321) {
                                    v325 = 64;
                                    if (64 > RETURNDATASIZE()) {
                                        v325 = v326 = RETURNDATASIZE();
                                    }
                                    require(!((v304 + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v304 + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v304)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v304 + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(v304 + v325 - v304 >= 64);
                                    v322 = MEM[v304];
                                    v322 = v327 = MEM[v304 + 32];
                                    // Unknown jump to Block 0x2afb0x2c37B0xd32. Refer to 3-address code (TAC);
                                }
                                if (v306) {
                                }
                                require(v322 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                v297 = v328 = 0 - v322;
                                if (!11410) {
                                    require(msg.data[11035] <= v328, V3TooLittleReceived());
                                    // Unknown jump to Block 0xd3f. Refer to 3-address code (TAC);
                                } else {
                                    v295 = v329, v296 = v330 = 0x18fa(v306, v314);
                                }
                            }
                        }
                    }
                    tstor_af28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692 = msg.data[v0 + v215];
                    v331 = 0x1917(v216);
                    v332 = 0x126a(v331);
                    require(43 <= v218, SliceOutOfBounds());
                    v333 = 0x1789(msg.data[v220] >> 96, msg.data[v220 + 23] >> 96, uint24(msg.data[v220] >> 72), v214, v217);
                    if (0 == address(msg.data[v220 + 23] >> 96) < address(msg.data[v220] >> 96)) {
                        v334 = v335 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v334 = 0x1000276a4;
                    }
                    MEM[MEM[64] + 32] = address(v214);
                    MEM[MEM[64] + 32 + 32] = v217;
                    MEM[MEM[64] + 32 + 64] = 96;
                    MEM[MEM[64] + 32 + 96] = v218;
                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v220, v218);
                    MEM[32 + (v218 + (MEM[64] + 32 + 96))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v218) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v218) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v218) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v218) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = address(this);
                    MEM[MEM[64] + 4 + 32] = address(msg.data[v220 + 23] >> 96) < address(msg.data[v220] >> 96);
                    MEM[MEM[64] + 4 + 64] = v332;
                    MEM[MEM[64] + 4 + 96] = address(v334);
                    MEM[MEM[64] + 4 + 128] = 160;
                    if (v195) {
                        if (v195 - 1 <= v195) {
                            v336 = v337 = 13545;
                            v338 = 0x3d25(v0, v0, v195 - 1);
                            require(!(address(msg.data[v338]) - msg.data[v338]));
                            v339 = 0x3d25(v0, v0, v195);
                            require(!(address(msg.data[v339]) - msg.data[v339]));
                            v340 = v341, v342 = v343, v0 = v344 = 0x4d5a(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v338], msg.data[v339]);
                        }
                    } else {
                        require(v0 <= msg.data[32 + v0], V2TooMuchRequested());
                        v0 = v345 = 13091;
                        v0 = v346 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
                        v347 = v348 = 2180;
                        v0 = v349 = 2603;
                        v0 = v350 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                        v351 = v352 = 0x3d0d(v0, v0);
                    }
                    v0 = 0x4df0(v0, v342, v340);
                    if (v195) {
                        v195 += uint256.max;
                    }
                    if (v195) {
                        v195 += uint256.max;
                    }
                    if (v195) {
                        if (v195 - 1 <= v195) {
                            v336 = v353 = 13240;
                            v354 = 0x3d25(v0, v0, v195 - 1);
                            require(!(address(msg.data[v354]) - msg.data[v354]));
                            v355 = 0x3d25(v0, v0, v195);
                            require(!(address(msg.data[v355]) - msg.data[v355]));
                            v340 = v356, v342 = v357, v0 = v358 = 0x4d5a(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v354], msg.data[v355]);
                        }
                    } else {
                        require(v0 <= msg.data[32 + v0], V2TooMuchRequested());
                        v0 = v359 = 13091;
                        v0 = v360 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
                        v347 = v361 = 2180;
                        v0 = v362 = 2603;
                        v0 = v363 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                        v351 = v364 = 0x3d0d(v0, v0);
                    }
                }
                while (1) {
                    v0 = v365 = 0x15f0(v351);
                    0x188e(v365, v0, v0);
                    v347 = v366 = 11634;
                    v367 = 0x3d35(v0);
                    v351 = v368 = 0x3d25(v0, v0, v367);
                    require(v0 >= 2, V2InvalidPath());
                    v0 = v369 = 17781;
                    v347 = v370 = 17762;
                    v351 = v371 = 0x3d0d(v0, v0);
                    v372 = v365.balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
                    v0 = v373 = MEM[32] * ((RETURNDATASIZE() > 31) & v372);
                    // Unknown jump to Block 0x45470xcad. Refer to 3-address code (TAC);
                    v347 = v374 = 17775;
                    if (1 >= v0) {
                        break;
                    } else {
                        v351 = 32 + v0;
                    }
                }
                if (!address(v0)) {
                }
                if (address(v0) < address(v365)) {
                }
                revert(Panic(17));
                revert(Panic(50));
                v0 = v375 = 0x4496(v0, v0, v83, v93);
                v0 = v376 = 11612;
                v0 = v377 = msg.data[v0];
                v347 = v378 = 2180;
                v351 = v379 = 0x3d0d(v0, v0);
            }
            v0 += v0;
        } else {
            return ;
        }
    }
}

function onMorphoFlashLoan(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(!(msg.sender - 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb), msg.sender);
    0xcad(varg2.data + msg.data[varg2.data + 20] + 52, msg.data[varg2.data + msg.data[varg2.data + 20] + 20], varg2.data + msg.data[varg2.data + 52] + 52, msg.data[varg2.data + msg.data[varg2.data + 52] + 20], 728, varg2.data);
    0x1383(varg1 >> 96);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + data] + (4 + data + 32) >= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) + (4 + data + 32 + uint32(data.word3)) + 32, SliceOutOfBounds());
    require(!(address(data.word1) + 0xffffffffffffffffffffffffbe0065581e9474e575723b0f105326c2fd2f8e37), address(data.word1));
    require(!(data.word2 - 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
    v3, v4, v5 = 0x127f(amount0Delta, amount1Delta, data.word1, data.word2, 4 + data + 32 + uint32(data.word3) + 32);
}

function 0x165d164d(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(varg1 + 35 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(varg1 + (varg1.length << 5) + 36 <= msg.data.length);
    require(!(msg.sender - address(0x3ee92cd00993a4488ae153ab41ac7947cbcbc1de)), Unauthorized(msg.sender));
    require(block.timestamp <= varg2);
    0xcad(varg0.data, varg0.length, varg1.data, varg1.length, 2603, 24);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x165d164d == function_selector >> 224) {
            0x165d164d();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x31f57072 == function_selector >> 224) {
            onMorphoFlashLoan(uint256,bytes);
        } else if (0x57f9104f == function_selector >> 224) {
            0x57f9104f();
        } else if (0x658068fe == function_selector >> 224) {
            0x658068fe();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x9410ae88 == function_selector >> 224) {
            dexCallback(address,uint256);
        } else if (0xd3487997 == function_selector >> 224) {
            uniswapV3MintCallback(uint256,uint256,bytes);
        } else if (0xd737d0c7 == function_selector >> 224) {
            msgSender();
        } else if (0xdc4c90d3 == function_selector >> 224) {
            poolManager();
        } else if (0xf40a74a8 == function_selector >> 224) {
            ShibaswapV2SwapCallback(int256,int256,bytes);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
}
