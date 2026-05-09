// Decompiled by library.dedaub.com
// 2025.12.11 06:37 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
string array_0; // STORAGE[0x0]
address _executor; // STORAGE[0x1] bytes 0 to 19
address _uniswapV3SwapCallback; // STORAGE[0x2] bytes 0 to 19
uint256 stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00; // STORAGE[0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00]



function executor() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _executor;
}

function 0x99689196(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 160);
    v0 = v1 = varg0 + 36;
    require(!(msg.data[v1] - address(msg.data[v1])));
    v2 = v3 = MEM[64];
    v4 = v5 = address(msg.data[v1]);
    v6 = v5.token0().gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    v4 = v7 = 0;
    if (v6) {
        v0 = v8 = 32;
        v9 = v10 = 1594;
        if (v8 <= RETURNDATASIZE()) {
            require(!((v3 + 32 > uint64.max) | (v3 + 32 < v3)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v3 + 32;
            v11 = v12 = v3 + v8;
        }
    }
    v2 = v13 = MEM[64];
    v14 = v4.token1().gas(msg.gas);
    require(v14, MEM[64], RETURNDATASIZE());
    v4 = v15 = 0;
    if (v14) {
        v9 = v16 = 1560;
        if (32 <= RETURNDATASIZE()) {
            require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v13 + 32;
            v11 = v17 = v13 + 32;
        }
    }
    require(!(msg.data[v0 + 68] - address(msg.data[v0 + 68])));
    v18 = v19 = address(v4) == address(msg.data[v0 + 68]);
    if (v19) {
        require(!(msg.data[v0 + 100] - address(msg.data[v0 + 100])));
        v18 = v20 = address(msg.data[v0 + 100]) == address(v4);
    }
    if (!v18) {
        require(!(msg.data[v0 + 68] - address(msg.data[v0 + 68])));
        v21 = v22 = address(v4) == address(msg.data[v0 + 68]);
        if (v22) {
            require(!(msg.data[v0 + 100] - address(msg.data[v0 + 100])));
            v21 = v23 = address(msg.data[v0 + 100]) == address(v4);
        }
        require(v21, Error('UniswapV3Like: invalid tokens'));
        v24 = v25 = 0;
        require(!(msg.data[v0] - address(msg.data[v0])));
        v26 = v27 = 0xeb8(msg.data[v0]);
    } else {
        v24 = v28 = 1;
        require(!(msg.data[v0] - address(msg.data[v0])));
        v26 = v29 = 0xeb8(msg.data[v0]);
    }
    if (!v24) {
        v30 = v31 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        v32 = msg.data[v0 + 68];
        require(!(v32 - address(v32)));
        v33 = msg.data[v0 + 100];
        require(!(v33 - address(v33)));
    } else {
        v30 = v34 = 0x1000276a4;
        v32 = v35 = msg.data[v0 + 68];
        require(!(v35 - address(v35)));
        v33 = v36 = msg.data[v0 + 100];
        require(!(v36 - address(v36)));
    }
    v37 = new struct(5);
    require(!((v37 + 160 > uint64.max) | (v37 + 160 < v37)), Panic(65)); // failed memory allocation (too much memory)
    v37.word0 = address(v32);
    v37.word1 = address(v33);
    v37.word2 = msg.data[4 + v0];
    v37.word3 = uint24(v26);
    v37.word4 = address(v30);
    v38, v39, v40, v41 = address(0xb048bbc1ee6b733fffcfb9e9cef7375518e25997).quoteExactInputSingle(address(v37.word0), address(v37.word1), v37.word2, uint24(v37.word3), address(v37.word4)).gas(msg.gas);
    require(v38, MEM[64], RETURNDATASIZE());
    v39 = v42 = 0;
    if (v38) {
        v43 = v44 = 128;
        if (128 > RETURNDATASIZE()) {
            v43 = v45 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v43 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v43 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v43 - MEM[64] >= 128);
        require(!(address(v40) - v40));
        require(!(uint32(v41) - v41));
    }
    return v39;
    require(!((v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v11 = v2 + RETURNDATASIZE();
    require(v11 - v2 >= 32);
    v4 = MEM[v2];
    require(!(v4 - address(v4)));
    // Unknown jump to Block ['0x618', '0x63a']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x381. Refer to 3-address code (TAC);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(!(msg.sender - _uniswapV3SwapCallback), Error('UniswapV3Like: Unauthorized callback', 'UniswapV3Like: Unauthorized callback'));
    require(_uniswapV3SwapCallback, Error('UniswapV3Like: No active swap'));
    require(data.data + data.length - data.data >= 96);
    require(!(msg.data[data.data] - address(msg.data[data.data])));
    require(!(msg.data[data.data + 32] - address(msg.data[data.data + 32])));
    v0 = v1 = MEM[64];
    v2 = v3 = address(msg.data[data.data]);
    v2 = v4 = address(msg.data[data.data + 32]);
    v5 = msg.sender.token0().gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    v2 = v6 = 0;
    if (v5) {
        v7 = v8 = 548;
        if (32 <= RETURNDATASIZE()) {
            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + 32;
            v9 = v10 = v1 + 32;
        }
    }
    v0 = v11 = MEM[64];
    v12 = msg.sender.token1().gas(msg.gas);
    require(v12, MEM[64], RETURNDATASIZE());
    v2 = v13 = 0;
    if (v12) {
        v7 = v14 = 498;
        v15 = v16 = 32;
        if (32 > RETURNDATASIZE()) {
            // Unknown jump to Block 0x1f90x5e. Refer to 3-address code (TAC);
        }
    }
    v17 = v18 = address(v2) == v2;
    if (v18) {
        v17 = v19 = v2 == address(v2);
    }
    if (!v17) {
        v17 = v20 = address(v2) == v2;
        if (v20) {
            v17 = v21 = address(v2) == v2;
        }
    }
    require(v17, Error('UniswapV3Like: Invalid from token'));
    if (v2 <= 0) {
        if (v2 > 0) {
            0xe13(v2, msg.sender, v2);
            exit;
        } else {
            exit;
        }
    } else {
        0xe13(v2, msg.sender, v2);
        exit;
    }
    require(!((v0 + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v0 + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v9 = v0 + v15;
    require(v9 - v0 >= 32);
    v2 = v22 = MEM[v0];
    require(!(v22 - address(v22)));
    // Unknown jump to Block ['0x1f2', '0x224']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0xf4. Refer to 3-address code (TAC);
    v15 = RETURNDATASIZE();
    // Unknown jump to Block 0x1e00x5e. Refer to 3-address code (TAC);
}

function 0x3c06ac9d() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 0;
    v2 = v3 = array_0.length >> 1;
    if (!(array_0.length & 0x1)) {
        v2 = v4 = 0x7f & v3;
    }
    require(array_0.length & 0x1 != v2 < 32, Panic(34)); // access to incorrectly encoded storage byte array
    if (!(array_0.length & 0x1)) {
        MEM[MEM[64] + 32] = bytes31(array_0.length);
        v0 = v5 = 32 + (MEM[64] + (bool(v2) << 5));
    } else if (1 == array_0.length & 0x1) {
        v6 = v7 = 0;
        MEM[v7] = v7;
        v8 = v9 = array_0.data;
        while (v6 < v2) {
            MEM[MEM[64] + v6 + 32] = STORAGE[v8];
            v8 = v8 + 1;
            v6 = v6 + 32;
        }
        v0 = v10 = 32 + (MEM[64] + v6);
    }
    require(!((MEM[64] + (v0 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v11 = new uint256[](v2);
    MCOPY(v11.data, 32 + MEM[64], v2);
    MEM[32 + (v2 + v11)] = 0;
    return v11;
}

function 0x3a7f92de(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 192);
    require(stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 != 2, ReentrancyGuardReentrantCall());
    stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 = 2;
    require(!(msg.sender - _executor), Error('BaseDex: caller is not the executor'));
    require(!(msg.data[varg0 + 68] - address(msg.data[varg0 + 68])));
    v0 = v1 = address(msg.data[varg0 + 68]).transferFrom(msg.sender, this, varg0.length).gas(msg.gas);
    if (!(v1 & (MEM[0] == 1))) {
        require(!(!v1 & 0x1), MEM[64], RETURNDATASIZE());
        v0 = v2 = !RETURNDATASIZE() & bool((address(msg.data[varg0 + 68])).code.size) & v1;
    }
    MEM[96] = 0;
    require(v0, SafeERC20FailedOperation(address(msg.data[varg0 + 68])));
    require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
    v3, /* address */ v4 = address(msg.data[varg0.data]).token0().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v6 = v7 = MEM[64] + 32;
        }
        require(v6 - MEM[64] >= 32);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
    }
    require(!(msg.data[varg0 + 68] - address(msg.data[varg0 + 68])));
    if (address(v4) != address(msg.data[varg0 + 68])) {
        v8 = v9 = 0;
        v10 = v11 = 0xfffd8963efd1fc6a506488495d951d526398893e;
        v12 = msg.data[varg0 + 68];
        require(!(v12 - address(v12)));
        v13 = v14 = varg0 + 100;
        v15 = msg.data[v14];
        require(!(v15 - address(v15)));
    } else {
        v8 = v16 = 0;
        v10 = v17 = 0x100027a8b;
        v12 = v18 = msg.data[varg0 + 68];
        require(!(v18 - address(v18)));
        v13 = v19 = varg0 + 100;
        v15 = v20 = msg.data[v19];
        require(!(v20 - address(v20)));
    }
    v21 = new struct(4);
    v22 = v21.data;
    v21.word1 = address(v12);
    v21.word2 = address(v15);
    v21.word3 = varg0.length;
    v21.word0 = 96;
    require(!((v21 + 128 > uint64.max) | (v21 + 128 < v21)), Panic(65)); // failed memory allocation (too much memory)
    require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
    _uniswapV3SwapCallback = msg.data[varg0.data];
    MEM[v23] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[v23 + 4] = this;
    v24 = new bytes[](v21.word0.length);
    MCOPY(v24.data, v21.data, v21.word0.length);
    v24[v21.word0.length] = 0;
    v25, v26, v27 = address(msg.data[varg0.data]).swap(this, address(v4) == address(msg.data[varg0 + 68]), varg0.length, address(v10), v24).value(v8).gas(msg.gas);
    if (!v25) {
        v28 = RETURNDATASIZE();
        revert(v29, v29, v29, v29, v29, v29, v29, v29, v29, 0);
    } else {
        v26 = v30 = 0;
        v27 = v31 = 0;
        if (v25) {
            v32 = v33 = 64;
            if (64 > RETURNDATASIZE()) {
                v32 = v34 = RETURNDATASIZE();
            }
            require(!((v23 + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            require(v23 + v32 - v23 >= 64);
        }
        _uniswapV3SwapCallback = 0;
        if (address(v4) != address(msg.data[varg0 + 68])) {
            v35 = v36 = 0xe94(v26);
        } else {
            v35 = v37 = 0xe94(v27);
        }
        require(v35 >= msg.data[varg0 + 132], Error('Insufficient output amount'));
        require(!(msg.data[v13] - address(msg.data[v13])));
        0xe13(address(msg.data[v13]), msg.sender, v35);
        stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 = 1;
        return v35;
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = v1 = msg.sender == _uniswapV3SwapCallback;
    if (v1) {
        v0 = v2 = bool(_uniswapV3SwapCallback);
    }
    require(v0, Error(32, 18, 'V3Like: bad caller'));
    require(data.data + data.length - data.data >= 96);
    require(!(msg.data[data.data] - address(msg.data[data.data])));
    require(!(msg.data[data.data + 32] - address(msg.data[data.data + 32])));
    v3 = v4 = MEM[64];
    v5 = v6 = address(msg.data[data.data]);
    v5 = v7 = address(msg.data[data.data + 32]);
    v8 = msg.sender.token0().gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v5 = v9 = 0;
    if (v8) {
        v10 = v11 = 3261;
        if (32 <= RETURNDATASIZE()) {
            require(!((v4 + 32 > uint64.max) | (v4 + 32 < v4)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v4 + 32;
            v12 = v13 = v4 + 32;
        }
    }
    v3 = v14 = MEM[64];
    v15 = msg.sender.token1().gas(msg.gas);
    require(v15, MEM[64], RETURNDATASIZE());
    v5 = v16 = 0;
    if (v15) {
        v10 = v17 = 3229;
        if (32 <= RETURNDATASIZE()) {
            require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v14 + 32;
            v12 = v18 = v14 + 32;
        }
    }
    v19 = v20 = address(v5) == v5;
    if (v20) {
        v19 = v21 = v5 == address(v5);
    }
    if (!v19) {
        v19 = v22 = address(v5) == v5;
        if (v22) {
            v19 = v23 = address(v5) == v5;
        }
    }
    require(v19, Error('V3Like: token mismatch'));
    if (v5 <= 0) {
        if (v5 > 0) {
            0xe13(v5, msg.sender, v5);
            exit;
        } else {
            exit;
        }
    } else {
        0xe13(v5, msg.sender, v5);
        exit;
    }
    require(!((v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v3 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v12 = v3 + RETURNDATASIZE();
    require(v12 - v3 >= 32);
    v5 = v24 = MEM[v3];
    require(!(v24 - address(v24)));
    // Unknown jump to Block ['0xc9d', '0xcbd']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0xbd1. Refer to 3-address code (TAC);
}

function 0xe13(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!(v1 & (MEM[0] == 1))) {
        require(!(!v1 & 0x1), MEM[64], RETURNDATASIZE());
        v0 = v2 = !RETURNDATASIZE() & bool(varg0.code.size) & v1;
    }
    require(v0, SafeERC20FailedOperation(address(varg0)));
    return ;
}

function 0xe94(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xeb8(address varg0) private { 
    v0, v1 = varg0.fee().gas(msg.gas);
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
        require(!0xddca3f4300000000000000000000000000000000000000000000000000000000);
    }
    require(v0, Error('invaild pool'));
    v6 = v7 = !uint24(v1);
    if (bool(uint24(v1))) {
        v6 = v8 = uint24(v1) > 10 ** 6;
    }
    require(!v6);
    return v1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    require(msg.data.length >= 4);
    if (0x23a69e75 == function_selector >> 224) {
        pancakeV3SwapCallback(int256,int256,bytes);
    } else if (0x3a7f92de == function_selector >> 224) {
        0x3a7f92de();
    } else if (0x3c06ac9d == function_selector >> 224) {
        0x3c06ac9d();
    } else if (0x99689196 == function_selector >> 224) {
        0x99689196();
    } else if (0xc34c08e5 == function_selector >> 224) {
        executor();
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
