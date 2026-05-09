// Decompiled by library.dedaub.com
// 2026.04.15 18:10 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _allowed; // STORAGE[0x3]
mapping (address => mapping (address => bool)) _approves; // STORAGE[0x4]
mapping (address => mapping (address => bool)) mapping_5; // STORAGE[0x5]
mapping (address => mapping (address => bool)) mapping_6; // STORAGE[0x6]
address _executor; // STORAGE[0x0] bytes 0 to 19
address _pendingExecutor; // STORAGE[0x1] bytes 0 to 19
address _transitRouter; // STORAGE[0x2] bytes 0 to 19
bool stor_2_20_20; // STORAGE[0x2] bytes 20 to 20


// Events
ExecutorshipTransferred(address, address);
ExecutorshipTransferStarted(address, address);
ChangeTransitRouter(address, address);
Withdraw(address, address, address, uint256);
Receipt(address, uint256);

function 0x137b(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = 32 + varg0;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(!(address(MEM[v4]) - MEM[v4]));
        MEM[v2] = MEM[v4];
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    return v1;
}

function 0x13e2(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = 32 + varg0;
    while (v4 < varg0 + (v0 << 5) + 32) {
        MEM[v2] = MEM[v4];
        v4 += 32;
        v2 += 32;
    }
    return v1;
}

function 0xf7f70bb3(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = v1 = varg0.data;
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v2 = v3 = varg1.data;
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    v4 = v5 = 0;
    while (v4 < varg0.length) {
        v6 = 0x1899(v1, varg0.length, v4);
        require(!(address(msg.data[v6]) - msg.data[v6]));
        v7 = 0x1899(v3, varg1.length, v4);
        require(!(address(msg.data[v7]) - msg.data[v7]));
        v8 = 0x1899(v1, varg0.length, v4);
        require(!(address(msg.data[v8]) - msg.data[v8]));
        v9 = 0x1899(v3, varg1.length, v4);
        require(!(address(msg.data[v9]) - msg.data[v9]));
        mapping_5[address(msg.data[v8])][address(msg.data[v9])] = bool(!mapping_5[address(msg.data[v6])][address(msg.data[v7])]);
        v4 = v4 + 1;
    }
    v10 = new uint256[](varg0.length);
    v11 = v12 = v10.data;
    v13 = 0;
    while (v13 < varg0.length) {
        require(!(address(msg.data[v0]) - msg.data[v0]));
        MEM[v11] = address(msg.data[v0]);
        v11 = v11 + 32;
        v0 = v0 + 32;
        v13 = v13 + 1;
    }
    v11 = new uint256[](varg1.length);
    v14 = v15 = v11.data;
    v16 = 0;
    while (v16 < varg1.length) {
        require(!(address(msg.data[v2]) - msg.data[v2]));
        MEM[v14] = address(msg.data[v2]);
        v14 = v14 + 32;
        v2 = v2 + 32;
        v16 = v16 + 1;
    }
    emit 0x8167eede633038dc3f417b0f846cbedcf9b964929db3cf52ca5c612f5866f425(v10, v11);
    exit;
}

function 0x143f(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = 32 + varg0;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] < 10);
        MEM[v2] = MEM[v4];
        v4 += 32;
        v2 += 32;
    }
    return v1;
}

function MIN_SQRT_RATIO() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x1000276a3;
}

function 0xe1217921(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    return mapping_5[address(varg0)][address(varg1)];
}

function 0x14a6(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x14ec(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] <= uint64.max);
        v6 = 0x14a6(varg0 + MEM[v4] + 32, varg1);
        MEM[v2] = v6;
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    return v1;
}

function changeTransitRouter(address newRouter) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    _transitRouter = newRouter;
    emit ChangeTransitRouter(_transitRouter, newRouter);
}

function allowed(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _allowed[varg0];
}

function pendingExecutor() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _pendingExecutor;
}

function 0xce5687d4(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = v1 = varg0.data;
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    v2 = v3 = 0;
    while (v2 < varg0.length) {
        v4 = 0x1899(v1, varg0.length, v2);
        require(!(address(msg.data[v4]) - msg.data[v4]));
        v5 = 0x1899(v1, varg0.length, v2);
        require(!(address(msg.data[v5]) - msg.data[v5]));
        _allowed[address(msg.data[v5])] = bool(!_allowed[address(msg.data[v4])]);
        v2 = v2 + 1;
    }
    v6 = new uint256[](varg0.length);
    v7 = v8 = v6.data;
    v9 = 0;
    while (v9 < varg0.length) {
        require(!(address(msg.data[v0]) - msg.data[v0]));
        MEM[v7] = address(msg.data[v0]);
        v7 = v7 + 32;
        v0 = v0 + 32;
        v9 = v9 + 1;
    }
    emit 0xb488ede6eb53eed08754f0005cf2b41868771c15e49e4bfdb9884776d48e19db(v6);
    exit;
}

function executor() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _executor;
}

function transferExecutorship(address newExecutor) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    _pendingExecutor = newExecutor;
    emit ExecutorshipTransferStarted(_executor, newExecutor);
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 64);
    require(rawData.word2 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word2) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2]) - msg.data[4 + rawData + 32 + rawData.word2]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word2];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 32]) - msg.data[4 + rawData + 32 + rawData.word2 + 32]));
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word2 + 32];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 64]) - msg.data[4 + rawData + 32 + rawData.word2 + 64]));
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word2 + 64];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 96]) - msg.data[4 + rawData + 32 + rawData.word2 + 96]));
    v1.word3 = msg.data[4 + rawData + 32 + rawData.word2 + 96];
    require(msg.data[4 + rawData + 32 + rawData.word2 + 128] <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word2 + msg.data[4 + rawData + 32 + rawData.word2 + 128];
    require(v2 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v2]);
    require(!((v3 + (32 + (msg.data[v2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (msg.data[v2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (msg.data[v2] << 5) + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    v6 = v7 = v2 + 32;
    while (v6 < v2 + (msg.data[v2] << 5) + 32) {
        require(msg.data[v6] <= uint64.max);
        require(4 + rawData + 32 + msg.data[4 + rawData] - (v2 + msg.data[v6]) - 32 >= 192);
        v8 = new struct(6);
        require(!((v8 + 192 > uint64.max) | (v8 + 192 < v8)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v2 + msg.data[v6] + 32]) - msg.data[v2 + msg.data[v6] + 32]));
        v8.word0 = msg.data[v2 + msg.data[v6] + 32];
        require(!(uint24(msg.data[v2 + msg.data[v6] + 64]) - msg.data[v2 + msg.data[v6] + 64]));
        v8.word1 = msg.data[v2 + msg.data[v6] + 64];
        require(!(address(msg.data[v2 + msg.data[v6] + 96]) - msg.data[v2 + msg.data[v6] + 96]));
        v8.word2 = msg.data[v2 + msg.data[v6] + 96];
        require(!(address(msg.data[v2 + msg.data[v6] + 128]) - msg.data[v2 + msg.data[v6] + 128]));
        v8.word3 = msg.data[v2 + msg.data[v6] + 128];
        require(msg.data[v2 + msg.data[v6] + 160] <= uint64.max);
        require(v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
        require(msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new bytes[](msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]);
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 32 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32] <= 4 + rawData + 32 + msg.data[4 + rawData]);
        CALLDATACOPY(v9.data, v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 32, msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]);
        v9[msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]] = 0;
        v8.word4 = v9;
        v8.word5 = msg.data[v2 + msg.data[v6] + 192];
        MEM[v4] = v8;
        v4 = v4 + 32;
        v6 = v6 + 32;
    }
    v1.word4 = v3;
    require(!(msg.sender - address(v1.word1)), NotVault());
    v10 = v11 = address(v1.word2);
    v12 = v13 = uint128(rawData.word1);
    v14 = new struct(6);
    require(!((v14 + 192 > uint64.max) | (v14 + 192 < v14)), Panic(65)); // failed memory allocation (too much memory)
    v14.word0 = 0;
    v14.word1 = 0;
    v14.word2 = 0;
    v14.word3 = 0;
    v14.word4 = 96;
    v14.word5 = 0;
    v15 = v16 = 0;
    while (v15 < v17.length) {
        require(v15 < v18.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v19 = new struct(6);
        require(!((v19 + 192 > uint64.max) | (v19 + 192 < v19)), Panic(65)); // failed memory allocation (too much memory)
        v19.word0 = 0;
        v19.word1 = 0;
        v19.word2 = 0;
        v19.word3 = 0;
        v19.word4 = 0;
        v19.word5 = 0;
        if (address(v10) >= address(MEM[v18[v15]])) {
            v20 = v21 = address(MEM[v18[v15]]) == address(v10);
            v22 = v23 = 0x23e();
            v23.word0 = address(MEM[v18[v15]]);
            v23.word1 = address(v10);
            v23.word2 = address(MEM[v18[v15] + 64]);
            v23.word3 = address(MEM[v18[v15] + 96]);
            v23.word4 = uint24(MEM[v18[v15] + 32]);
            v23.word5 = MEM[v18[v15] + 160];
        } else {
            v20 = v24 = 1;
            v22 = 0x23e();
            v22.word0 = address(v10);
            v22.word1 = address(MEM[v18[v15]]);
            v22.word2 = address(MEM[v18[v15] + 64]);
            v22.word3 = address(MEM[v18[v15] + 96]);
            v22.word4 = uint24(MEM[v18[v15] + 32]);
            v22.word5 = MEM[v18[v15] + 160];
        }
        v25 = 0x3472(v22, v20, 0 - uint128(v12), MEM[v18[v15] + 128]);
        v12 = v26 = uint128(v25);
        v10 = v27 = address(MEM[v18[v15]]);
        v15 = v15 + 1;
    }
    0x350d(address(v1.word1), address(v1.word2));
    v28, /* uint256 */ v29 = address(v1.word1).currencyDelta(this, address(v1.word3)).gas(msg.gas);
    if (v28) {
        v29 = v30 = 0;
        if (v28) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v31 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v31 = v32 = MEM[64] + 32;
            }
            require(v31 - MEM[64] >= 32);
        }
        require(v29 >= 0, DeltaNotPositive(address(v1.word3)));
        require((address(v1.word1)).code.size);
        v33 = address(v1.word1).take(address(v1.word3), address(v1.word0), v29).gas(msg.gas);
        if (v33) {
            if (v33) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v34 = new uint256[](0);
            MCOPY(v34.data, 32 + MEM[64], 0);
            MEM[v34.data] = 0;
            return v34;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0xa938950b(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    0x1851(varg1.length == varg2.length);
    v0 = v1 = 0;
    while (v0 < varg2.length) {
        v2 = 0x1899(varg2.data, varg2.length, v0);
        require(!(address(msg.data[v2]) - msg.data[v2]));
        v3 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v3]) - msg.data[v3]));
        mapping_6[address(msg.data[v2])][address(msg.data[v3])] = 0;
        v4 = 0x1899(varg2.data, varg2.length, v0);
        require(!(address(msg.data[v4]) - msg.data[v4]));
        v5 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v5]) - msg.data[v5]));
        require((address(varg0)).code.size);
        v6 = address(varg0).approve(address(msg.data[v4]), address(msg.data[v5]), 0, 0).gas(msg.gas);
        require(v6, MEM[64], RETURNDATASIZE());
        if (v6) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        v7 = 0x1899(varg2.data, varg2.length, v0);
        require(!(address(msg.data[v7]) - msg.data[v7]));
        v8 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v8]) - msg.data[v8]));
        emit 0xce96d942a2949fc385c1a8b4ed43fbfacf8e3bc14a293bf93625d8f59c147bd1(address(varg0), address(msg.data[v7]), address(msg.data[v8]));
        v0 = v0 + 1;
    }
    exit;
}

function acceptExecutorship() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(_pendingExecutor - msg.sender), Error('Ownable: caller is not the new executor'));
    _pendingExecutor = 0;
    _executor = msg.sender;
    emit ExecutorshipTransferred(_executor, msg.sender);
}

function 0x17b4(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(varg2 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    varg4 = v1 = MEM[(varg2 << 5) + MEM[v0] + 32];
    varg4 = v2 = v1 + 96;
    varg4 = v3 = v1 + 160;
    v4 = MEM[MEM[v2]] == MEM[MEM[v3]];
    if (v4) {
        v4 = v5 = MEM[MEM[v1 + 64]] == MEM[MEM[v2]];
    }
    require(v4, Error('invalid hops'));
    varg4 = v6 = 0;
    varg4 = v7 = 0;
    while (1) {
        v8 = MEM[varg4];
        if (varg4 >= MEM[v8]) {
            return varg4, varg4, varg4, varg4;
        } else {
            require(varg4 < MEM[v8], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(MEM[(varg4 << 5) + v8 + 32] < 10, Panic(33)); // failed convertion to enum type
            require(10 > MEM[(varg4 << 5) + v8 + 32], Panic(33)); // failed convertion to enum type
            v9 = bool(MEM[(varg4 << 5) + v8 + 32]);
            if (v9) {
                v10 = MEM[varg4];
                require(varg4 < MEM[v10], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(MEM[(varg4 << 5) + v10 + 32] < 10, Panic(33)); // failed convertion to enum type
                require(10 > MEM[(varg4 << 5) + v10 + 32], Panic(33)); // failed convertion to enum type
                v9 = v11 = MEM[(varg4 << 5) + v10 + 32] != 1;
            }
            if (v9) {
                v12 = MEM[varg4];
                require(varg4 < MEM[v12], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(MEM[(varg4 << 5) + v12 + 32] < 10, Panic(33)); // failed convertion to enum type
                require(10 > MEM[(varg4 << 5) + v12 + 32], Panic(33)); // failed convertion to enum type
                v9 = v13 = MEM[(varg4 << 5) + v12 + 32] != 2;
            }
            if (v9) {
                v14 = MEM[varg4 + 64];
                require(varg4 < MEM[v14], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                varg4 = _SafeAdd(varg4, MEM[(varg4 << 5) + v14 + 32]);
            }
            v15 = 0x2914(MEM[MEM[varg4]]);
            if (varg4 == v15) {
                v16 = varg4 == 10000;
                if (varg4 != 10000) {
                    v16 = v17 = !varg4;
                }
                require(v16, Error('totalWeight must be 10_000'));
            }
            v18 = MEM[varg4 + 64];
            require(varg4 < MEM[v18], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v19 = _SafeMul(varg4, MEM[(varg4 << 5) + v18 + 32]);
            v20 = MEM[varg4];
            require(varg4 < MEM[v20], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(MEM[(varg4 << 5) + v20 + 32] < 10, Panic(33)); // failed convertion to enum type
            require(10 > MEM[(varg4 << 5) + v20 + 32], Panic(33)); // failed convertion to enum type
            if (MEM[(varg4 << 5) + v20 + 32]) {
                v21 = MEM[varg4];
                require(varg4 < MEM[v21], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(MEM[(varg4 << 5) + v21 + 32] < 10, Panic(33)); // failed convertion to enum type
                require(10 > MEM[(varg4 << 5) + v21 + 32], Panic(33)); // failed convertion to enum type
                if (MEM[(varg4 << 5) + v21 + 32] - 1) {
                    v22 = MEM[varg4];
                    require(varg4 < MEM[v22], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(MEM[(varg4 << 5) + v22 + 32] < 10, Panic(33)); // failed convertion to enum type
                    require(10 > MEM[(varg4 << 5) + v22 + 32], Panic(33)); // failed convertion to enum type
                    if (MEM[(varg4 << 5) + v22 + 32] - 3) {
                        v23 = MEM[varg4];
                        require(varg4 < MEM[v23], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(MEM[(varg4 << 5) + v23 + 32] < 10, Panic(33)); // failed convertion to enum type
                        require(10 > MEM[(varg4 << 5) + v23 + 32], Panic(33)); // failed convertion to enum type
                        if (MEM[(varg4 << 5) + v23 + 32] - 4) {
                            v24 = MEM[varg4];
                            require(varg4 < MEM[v24], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(MEM[(varg4 << 5) + v24 + 32] < 10, Panic(33)); // failed convertion to enum type
                            require(10 > MEM[(varg4 << 5) + v24 + 32], Panic(33)); // failed convertion to enum type
                            if (MEM[(varg4 << 5) + v24 + 32] - 5) {
                                v25 = MEM[varg4];
                                require(varg4 < MEM[v25], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(MEM[(varg4 << 5) + v25 + 32] < 10, Panic(33)); // failed convertion to enum type
                                require(10 > MEM[(varg4 << 5) + v25 + 32], Panic(33)); // failed convertion to enum type
                                if (MEM[(varg4 << 5) + v25 + 32] - 6) {
                                    v26 = MEM[varg4];
                                    require(varg4 < MEM[v26], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(MEM[(varg4 << 5) + v26 + 32] < 10, Panic(33)); // failed convertion to enum type
                                    require(10 > MEM[(varg4 << 5) + v26 + 32], Panic(33)); // failed convertion to enum type
                                    if (MEM[(varg4 << 5) + v26 + 32] - 8) {
                                        v27 = MEM[varg4];
                                        require(varg4 < MEM[v27], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(MEM[(varg4 << 5) + v27 + 32] < 10, Panic(33)); // failed convertion to enum type
                                        require(10 > MEM[(varg4 << 5) + v27 + 32], Panic(33)); // failed convertion to enum type
                                        if (MEM[(varg4 << 5) + v27 + 32] - 2) {
                                            v28 = MEM[varg4];
                                            require(varg4 < MEM[v28], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(MEM[(varg4 << 5) + v28 + 32] < 10, Panic(33)); // failed convertion to enum type
                                            require(10 > MEM[(varg4 << 5) + v28 + 32], Panic(33)); // failed convertion to enum type
                                            if (MEM[(varg4 << 5) + v28 + 32] - 7) {
                                                v29 = MEM[varg4];
                                                require(varg4 < MEM[v29], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                require(MEM[(varg4 << 5) + v29 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                require(10 > MEM[(varg4 << 5) + v29 + 32], Panic(33)); // failed convertion to enum type
                                                require(!(MEM[(varg4 << 5) + v29 + 32] - 9), Error('unknown adapter'));
                                                varg4 = v30 = 1;
                                                v31 = MEM[varg4];
                                                require(varg4 < MEM[v31], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                0x3c44(v19 / 10000, MEM[(varg4 << 5) + v31 + 32]);
                                            } else {
                                                varg4 = v32 = 1;
                                                v33 = MEM[varg4];
                                                require(varg4 < MEM[v33], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                0x3f6a(v19 / 10000, MEM[(varg4 << 5) + v33 + 32]);
                                            }
                                        } else {
                                            varg4 = v34 = 1;
                                            v35 = MEM[varg4 + 32];
                                            require(varg4 < MEM[v35], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v36 = MEM[varg4 + 128];
                                            require(varg4 < MEM[v36], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            0x512e(address(MEM[(varg4 << 5) + v35 + 32]), v19 / 10000);
                                            if (address(MEM[(varg4 << 5) + v36 + 32]) - this) {
                                                0x1f06(address(MEM[(varg4 << 5) + v36 + 32]), v19 / 10000);
                                            }
                                        }
                                    } else {
                                        varg4 = v37 = 1;
                                        v38 = MEM[varg4];
                                        require(varg4 < MEM[v38], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        0x41be(v19 / 10000, MEM[(varg4 << 5) + v38 + 32]);
                                    }
                                } else {
                                    varg4 = v39 = 1;
                                    v40 = MEM[varg4];
                                    require(varg4 < MEM[v40], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(MEM[(varg4 << 5) + v40 + 32] + MEM[MEM[(varg4 << 5) + v40 + 32]] + 32 - (MEM[(varg4 << 5) + v40 + 32] + 32) >= 64);
                                    require(!(address(MEM[MEM[(varg4 << 5) + v40 + 32] + 32]) - MEM[MEM[(varg4 << 5) + v40 + 32] + 32]));
                                    if (0 == !(MEM[MEM[(varg4 << 5) + v40 + 32] + 32 + 32] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                        v41 = v42 = MEM[64];
                                        MEM[v42] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                                        MEM[v42 + 4] = address(MEM[MEM[(varg4 << 5) + v40 + 32] + 32]);
                                        v43 = v44 = v42 + 36;
                                    } else {
                                        v41 = v45 = MEM[64];
                                        MEM[v45] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                                        MEM[v45 + 4] = address(MEM[MEM[(varg4 << 5) + v40 + 32] + 32]);
                                        v43 = v46 = v45 + 36;
                                    }
                                    v47 = address(MEM[MEM[(varg4 << 5) + v40 + 32] + 32 + 32]).call(MEM[v11590x434a_0x1V0x2bf50x17b4:v11590x434a_0x1V0x2bf50x17b4 + v43a3_0x0V0x2bf50x17b4 - v11590x434a_0x1V0x2bf50x17b4], MEM[v11590x434a_0x1V0x2bf50x17b4:v11590x434a_0x1V0x2bf50x17b4 + 32]).gas(msg.gas);
                                    if (!v47) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else if (v47) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v41 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v48 = v49 = v41 + RETURNDATASIZE();
                                        } else {
                                            require(!((v41 + 32 > uint64.max) | (v41 + 32 < v41)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v41 + 32;
                                            v48 = v50 = v41 + 32;
                                        }
                                        require(v48 - v41 >= 32);
                                    }
                                }
                            } else {
                                varg4 = v51 = 1;
                                v52 = MEM[varg4];
                                require(varg4 < MEM[v52], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                0x4467(v19 / 10000, MEM[(varg4 << 5) + v52 + 32]);
                            }
                        } else {
                            varg4 = v53 = 1;
                            v54 = MEM[varg4];
                            require(varg4 < MEM[v54], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            0x46ef(v19 / 10000, MEM[(varg4 << 5) + v54 + 32]);
                        }
                    } else {
                        varg4 = v55 = 1;
                        v56 = address(MEM[varg4]);
                        v57 = 0x1dc3(v56);
                        if (!v57) {
                            0x2b3e(v56, 0x68b44, varg4, v55, varg4, varg4);
                        } else {
                            varg4 = v58 = 0x68af4;
                            v59 = MEM[varg4 + 32];
                            require(varg4 < MEM[v59], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v60 = MEM[varg4];
                            require(varg4 < MEM[v60], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(MEM[(varg4 << 5) + v60 + 32] + MEM[MEM[(varg4 << 5) + v60 + 32]] + 32 - (MEM[(varg4 << 5) + v60 + 32] + 32) >= 96);
                            require(!(address(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 32]) - MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 32]));
                            varg4 = v61 = !(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000);
                            varg4 = v62 = address(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 32]);
                            varg4 = v63 = !bool(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 64] >> 248);
                            varg4 = v64 = address(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 64]);
                            varg4 = v65 = bool(MEM[MEM[(varg4 << 5) + v60 + 32] + 32] >> 248);
                            varg4 = v66 = address(MEM[MEM[(varg4 << 5) + v60 + 32] + 32]);
                            v67, /* uint112 */ v68, /* uint112 */ v69, /* uint32 */ v70 = v64.getReserves().gas(msg.gas);
                            if (v67) {
                                v68 = v71 = 0;
                                v69 = v72 = 0;
                                if (v67) {
                                    v73 = 96;
                                    if (96 > RETURNDATASIZE()) {
                                        v73 = v74 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v73 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v73 - MEM[64] >= 96);
                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                    require(!(v69 - uint112(v69)));
                                    require(!(v70 - uint32(v70)));
                                }
                                varg4 = v75 = uint112(v69);
                                varg4 = v76 = uint112(v68);
                                if (!bool(MEM[MEM[(varg4 << 5) + v60 + 32] + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                }
                                v77 = MEM[64];
                                v78 = address(MEM[(varg4 << 5) + v59 + 32]).balanceOf(address(v64)).gas(msg.gas);
                                if (v78) {
                                    varg4 = v79 = 19105;
                                    v80 = v81 = 0;
                                    if (v78) {
                                        v82 = v83 = 19881;
                                        if (32 <= RETURNDATASIZE()) {
                                            require(!((v77 + 32 > uint64.max) | (v77 + 32 < v77)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v77 + 32;
                                            v84 = v85 = v77 + 32;
                                        }
                                    }
                                    varg4 = v80 - varg4;
                                    require(varg4 <= v80, Panic(17)); // arithmetic overflow or underflow
                                    if (varg4 - 1) {
                                        if (2 - varg4) {
                                            v77 = v86 = MEM[64];
                                            v87 = varg4.getAmountOut(varg4, varg4, varg4).gas(msg.gas);
                                            if (v87) {
                                                v80 = v88 = 0;
                                                if (v87) {
                                                    v82 = v89 = 19850;
                                                    if (32 <= RETURNDATASIZE()) {
                                                        require(!((v86 + 32 > uint64.max) | (v86 + 32 < v86)), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = v86 + 32;
                                                        v84 = v90 = v86 + 32;
                                                    }
                                                }
                                            }
                                        } else {
                                            v91 = MEM[64];
                                            v92 = varg4.token0().gas(msg.gas);
                                            if (v92) {
                                                varg4 = v93 = 0;
                                                if (v92) {
                                                    v94 = v95 = 19754;
                                                    if (32 <= RETURNDATASIZE()) {
                                                        require(!((v91 + 32 > uint64.max) | (v91 + 32 < v91)), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = v91 + 32;
                                                        v96 = v97 = v91 + 32;
                                                    }
                                                }
                                                v91 = v98 = MEM[64];
                                                v99 = varg4.token1().gas(msg.gas);
                                                if (v99) {
                                                    varg4 = v100 = 19586;
                                                    varg4 = v101 = 0;
                                                    varg4 = v102 = 19614;
                                                    if (v99) {
                                                        v94 = v103 = 19723;
                                                        if (32 <= RETURNDATASIZE()) {
                                                            require(!((v98 + 32 > uint64.max) | (v98 + 32 < v98)), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = v98 + 32;
                                                            v96 = v104 = v98 + 32;
                                                        }
                                                    }
                                                }
                                                v105 = new uint256[](2);
                                                require(!((v105 + 96 > uint64.max) | (v105 + 96 < v105)), Panic(65)); // failed memory allocation (too much memory)
                                                CALLDATACOPY(v105.data, msg.data.length, 64);
                                                if (varg4 == varg4) {
                                                    varg4 = v106, varg4 = v107, varg4 = v108, varg4 = v109, varg4 = v110, varg4 = v111 = 0x4c58(varg4, 19568, varg4, varg4, varg4, varg4, varg4);
                                                } else {
                                                    varg4 = v112, varg4 = v113, varg4 = v114, varg4 = v115, varg4 = v116, varg4 = v117 = 0x4c58(varg4, 19568, varg4, varg4, varg4, varg4, varg4);
                                                }
                                                if (varg4 != varg4) {
                                                }
                                                v118 = v119 = 0x69dba;
                                                while (1) {
                                                    require(1 < MEM[varg4], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    // Unknown jump to Block ['0x4cb90x17b4', '0x69dba0x17b4']. Refer to 3-address code (TAC);
                                                    MEM[64 + varg4] = address(varg4);
                                                    MEM[MEM[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000;
                                                    MEM[MEM[64] + 4] = varg4;
                                                    MEM[MEM[64] + 4 + 32] = 64;
                                                    MEM[MEM[64] + 4 + 64] = MEM[varg4];
                                                    v120 = MEM[64] + 4 + 96;
                                                    v121 = varg4 + 32;
                                                    v122 = 0;
                                                    while (v122 < MEM[varg4]) {
                                                        MEM[v120] = address(MEM[v121]);
                                                        v120 += 32;
                                                        v121 = v121 + 32;
                                                        v122 += 1;
                                                    }
                                                    v123 = varg4.staticcall(MEM[MEM[64]:MEM[64] + v17b40x496e - MEM[64]], MEM[MEM[64]:MEM[64] + v17b4arg0x4]).gas(msg.gas);
                                                    if (!v123) {
                                                        break;
                                                    } else {
                                                        v118 = v124 = 19641;
                                                        varg4 = v125 = 0;
                                                        if (v123) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            require(0xd06ca61f00000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                            varg4 = v126 = 0x13e2(MEM[64] + 0xd06ca61f00000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                                        }
                                                    }
                                                }
                                                v80 = v127 = MEM[64 + varg4];
                                                require(!((v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v91)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v91 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                v96 = v91 + RETURNDATASIZE();
                                                require(v96 - v91 >= 32);
                                                varg4 = v128 = MEM[v91];
                                                require(!(address(v128) - v128));
                                                // Unknown jump to Block ['0x4d0b0x17b4', '0x4d2a0x17b4']. Refer to 3-address code (TAC);
                                                // Unknown jump to Block 0x4c420x17b4. Refer to 3-address code (TAC);
                                            }
                                        }
                                    } else {
                                        v77 = v129 = MEM[64];
                                        v130 = varg4.swapFee().gas(msg.gas);
                                        if (v130) {
                                            v80 = v131 = 0;
                                            if (v130) {
                                                varg4 = v132 = 32;
                                                v82 = v133 = 19420;
                                                if (v132 <= RETURNDATASIZE()) {
                                                    require(!((v129 + 32 > uint64.max) | (v129 + 32 < v129)), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = v129 + 32;
                                                    v84 = v134 = v129 + v132;
                                                }
                                            }
                                        }
                                    }
                                    v77 = v135 = MEM[64];
                                    v136 = varg4.getAmountOut(varg4, varg4, varg4, v80).gas(msg.gas);
                                    if (v136) {
                                        v80 = v137 = 0;
                                        if (v136) {
                                            v82 = v138 = 19388;
                                            if (32 <= RETURNDATASIZE()) {
                                                require(!((v135 + 32 > uint64.max) | (v135 + 32 < v135)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v135 + 32;
                                                v84 = v139 = v135 + 32;
                                            }
                                        }
                                    }
                                    if (!varg4) {
                                        v80 = v140 = 0;
                                    } else {
                                        v80 = v141 = 0;
                                    }
                                    if (!varg4) {
                                        require(varg4.code.size);
                                        v142 = v143 = MEM[64];
                                        MEM[v143] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000;
                                        MEM[v143 + 4] = v80;
                                        MEM[v143 + 36] = v80;
                                        MEM[v143 + 68] = address(varg4);
                                        v144 = v145 = 0;
                                        v146 = v147 = v143 + 100;
                                    } else {
                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                        require(varg4.code.size);
                                        v144 = 0;
                                        v142 = MEM[64];
                                        MEM[v142] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                        MEM[v142 + 4] = v80;
                                        MEM[v142 + 4 + 32] = v80;
                                        MEM[v142 + 4 + 64] = address(varg4);
                                        MEM[v142 + 4 + 96] = 128;
                                        MEM[v142 + 4 + 128] = 0;
                                        MCOPY(v142 + 4 + 128 + 32, 32 + MEM[64], 0);
                                        MEM[32 + (v142 + 4 + 128)] = 0;
                                        v146 = v142 + 4 + 128 + 32;
                                    }
                                    v148 = varg4.call(MEM[v17b40x4b3f:v17b40x4b3f + v743V0x499fV0x4b370x17b4 - v17b40x4b3f], MEM[v17b40x4b3f:v17b40x4b3f + v17b40x4b37]).value(v144).gas(msg.gas);
                                    if (v148) {
                                        if (v148) {
                                            require(!((v142 > uint64.max) | (v142 < v142)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v142;
                                            require(v142 - v142 >= 0);
                                            // Unknown jump to Block 0x68af40x17b4. Refer to 3-address code (TAC);
                                        }
                                    }
                                    // Unknown jump to Block 0x4b180x17b4. Refer to 3-address code (TAC);
                                    require(!((v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v77)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v84 = v77 + RETURNDATASIZE();
                                    require(v84 - v77 >= 32);
                                    v80 = MEM[v77];
                                    // Unknown jump to Block ['0x4bbc0x17b4', '0x4bdc0x17b4', '0x4d8a0x17b4', '0x4da90x17b4']. Refer to 3-address code (TAC);
                                    // Unknown jump to Block 0x4b150x17b4. Refer to 3-address code (TAC);
                                    // Unknown jump to Block 0x4ad00x17b4. Refer to 3-address code (TAC);
                                    // Unknown jump to Block 0x4d6a0x17b4. Refer to 3-address code (TAC);
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    }
                } else {
                    varg4 = v149 = 1;
                    v150 = MEM[varg4 + 32];
                    require(varg4 < MEM[v150], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v151 = MEM[varg4 + 128];
                    require(varg4 < MEM[v151], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v152 = v153.length;
                    v154 = v155 = address(MEM[(varg4 << 5) + v150 + 32]).deposit().value(v19 / 10000).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v156 = v157 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v156 = v158 = new bytes[](RETURNDATASIZE());
                        require(!((v158 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v158 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v158)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v158.data, 0, RETURNDATASIZE());
                    }
                    if (v155) {
                        v154 = v159 = !MEM[v156];
                        if (bool(MEM[v156])) {
                            require(v156 + MEM[v156] + 32 - (v156 + 32) >= 32);
                            v154 = MEM[v156 + 32];
                            require(!(bool(v154) - v154));
                        }
                    }
                    require(v154, Error('TransferHelper: DEPOSIT_FAILED'));
                    if (address(MEM[(varg4 << 5) + v151 + 32]) - this) {
                        0x392d(address(MEM[(varg4 << 5) + v150 + 32]), address(MEM[(varg4 << 5) + v151 + 32]), v19 / 10000);
                    }
                }
            } else {
                varg4 = v160 = 1;
                require(varg4 < MEM[MEM[varg4 + 128]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                0x392d(address(MEM[varg4]), address(MEM[(varg4 << 5) + MEM[varg4 + 128] + 32]), v19 / 10000);
            }
            varg4 += varg4;
        }
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 64);
    require(rawData.word2 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word2) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2]) - msg.data[4 + rawData + 32 + rawData.word2]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word2];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 32]) - msg.data[4 + rawData + 32 + rawData.word2 + 32]));
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word2 + 32];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 64]) - msg.data[4 + rawData + 32 + rawData.word2 + 64]));
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word2 + 64];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word2 + 96]) - msg.data[4 + rawData + 32 + rawData.word2 + 96]));
    v1.word3 = msg.data[4 + rawData + 32 + rawData.word2 + 96];
    require(msg.data[4 + rawData + 32 + rawData.word2 + 128] <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word2 + msg.data[4 + rawData + 32 + rawData.word2 + 128];
    require(v2 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[v2]);
    require(!((v3 + (32 + (msg.data[v2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (msg.data[v2] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v5 = v3.data;
    require(v2 + (msg.data[v2] << 5) + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    v6 = v7 = v2 + 32;
    while (v6 < v2 + (msg.data[v2] << 5) + 32) {
        require(msg.data[v6] <= uint64.max);
        require(4 + rawData + 32 + msg.data[4 + rawData] - (v2 + msg.data[v6]) - 32 >= 160);
        v8 = new struct(5);
        require(!((v8 + 160 > uint64.max) | (v8 + 160 < v8)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v2 + msg.data[v6] + 32]) - msg.data[v2 + msg.data[v6] + 32]));
        v8.word0 = msg.data[v2 + msg.data[v6] + 32];
        require(!(uint24(msg.data[v2 + msg.data[v6] + 64]) - msg.data[v2 + msg.data[v6] + 64]));
        v8.word1 = msg.data[v2 + msg.data[v6] + 64];
        require(!(int24(msg.data[v2 + msg.data[v6] + 96]) - msg.data[v2 + msg.data[v6] + 96]));
        v8.word2 = msg.data[v2 + msg.data[v6] + 96];
        require(!(address(msg.data[v2 + msg.data[v6] + 128]) - msg.data[v2 + msg.data[v6] + 128]));
        v8.word3 = msg.data[v2 + msg.data[v6] + 128];
        require(msg.data[v2 + msg.data[v6] + 160] <= uint64.max);
        require(v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
        require(msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new bytes[](msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]);
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 32 + msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32] <= 4 + rawData + 32 + msg.data[4 + rawData]);
        CALLDATACOPY(v9.data, v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32 + 32, msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]);
        v9[msg.data[v2 + msg.data[v6] + msg.data[v2 + msg.data[v6] + 160] + 32]] = 0;
        v8.word4 = v9;
        MEM[v4] = v8;
        v4 = v4 + 32;
        v6 = v6 + 32;
    }
    v1.word4 = v3;
    require(!(msg.sender - address(v1.word1)), NotPoolManager());
    v10 = v11 = address(v1.word2);
    v12 = v13 = uint128(rawData.word1);
    require(!((MEM[64] + 160 > uint64.max) | (MEM[64] + 160 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + 160;
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 96;
    v14 = v15 = 0;
    while (v14 < v16.length) {
        require(v14 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v18 = new struct(5);
        require(!((v18 + 160 > uint64.max) | (v18 + 160 < v18)), Panic(65)); // failed memory allocation (too much memory)
        v18.word0 = 0;
        v18.word1 = 0;
        v18.word2 = 0;
        v18.word3 = 0;
        v18.word4 = 0;
        if (address(v10) >= address(MEM[v17[v14]])) {
            v19 = v20 = address(MEM[v17[v14]]) == address(v10);
            v21 = v22 = new struct(5);
            require(!((v22 + 160 > uint64.max) | (v22 + 160 < v22)), Panic(65)); // failed memory allocation (too much memory)
            v22.word0 = address(MEM[v17[v14]]);
            v22.word1 = address(v10);
            v22.word2 = uint24(MEM[v17[v14] + 32]);
            v22.word3 = int24(MEM[v17[v14] + 64]);
            v22.word4 = address(MEM[v17[v14] + 96]);
        } else {
            v19 = v23 = 1;
            v21 = v24 = new struct(5);
            require(!((v24 + 160 > uint64.max) | (v24 + 160 < v24)), Panic(65)); // failed memory allocation (too much memory)
            v24.word0 = address(v10);
            v24.word1 = address(MEM[v17[v14]]);
            v24.word2 = uint24(MEM[v17[v14] + 32]);
            v24.word3 = int24(MEM[v17[v14] + 64]);
            v24.word4 = address(MEM[v17[v14] + 96]);
        }
        v25 = 0x307a(address(v1.word1), v21, v19, 0 - uint128(v12), MEM[v17[v14] + 128]);
        v12 = v26 = uint128(v25);
        v10 = v27 = address(MEM[v17[v14]]);
        v14 = v14 + 1;
    }
    0x3171(address(v1.word1), address(v1.word2));
    v28 = 0x529d(address(v1.word1), this, address(v1.word3));
    require(v28 >= 0, DeltaNotPositive(address(v1.word3)));
    require((address(v1.word1)).code.size);
    v29 = address(v1.word1).take(address(v1.word3), address(v1.word0), v28).gas(msg.gas);
    require(v29, MEM[64], RETURNDATASIZE());
    if (v29) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v30 = new uint256[](0);
    MCOPY(v30.data, 32 + MEM[64], 0);
    MEM[v30.data] = 0;
    return v30;
}

function 0x7c12e337(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    0x1851(varg0.length == varg1.length);
    v0 = v1 = 0;
    while (v0 < varg1.length) {
        v2 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v2]) - msg.data[v2]));
        v3 = 0x1899(varg0.data, varg0.length, v0);
        require(!(address(msg.data[v3]) - msg.data[v3]));
        _approves[address(msg.data[v2])][address(msg.data[v3])] = 0;
        v4 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v4]) - msg.data[v4]));
        v5 = 0x1899(varg0.data, varg0.length, v0);
        require(!(address(msg.data[v5]) - msg.data[v5]));
        0x2dbd(msg.data[v4], msg.data[v5]);
        v6 = 0x1899(varg1.data, varg1.length, v0);
        require(!(address(msg.data[v6]) - msg.data[v6]));
        v7 = 0x1899(varg0.data, varg0.length, v0);
        require(!(address(msg.data[v7]) - msg.data[v7]));
        emit 0x35548e0de31726989d62236d6385f5f3c19ff39a013732971452ff5497b98267(address(msg.data[v6]), address(msg.data[v7]));
        v0 = v0 + 1;
    }
    exit;
}

function 0x1851(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid data'));
    } else {
        return ;
    }
}

function MAX_SQRT_RATIO() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0xfffd8963efd1fc6a506488495d951d5263988d26;
}

function 0x1899(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x66a0040a() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    v0 = stor_2_20_20;
    stor_2_20_20 = !v0;
    emit 0xa4179a4ea3df4cc1373a9a4f0b29f5b8420c675fe7d28c240e7f4084521c02f0(bool((0xffffffffffffffffffffff00ffffffffffffffffffffffffffffffffffffffff & STORAGE[0x2] | !v0 << 160 & 0xff0000000000000000000000000000000000000000) >> 160));
}

function 0x65e0e5a3(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    return mapping_6[address(varg0)][address(varg1)];
}

function transitRouter() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _transitRouter;
}

function 0x5465a4f1() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return int256.min;
}

function callbytes((address,bytes) varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 64);
    v0 = v1 = 0x67701;
    require(msg.data[4 + varg0 + 32] < msg.data.length - (4 + varg0) - 31);
    require(v2.length <= uint64.max);
    require(v2.data <= msg.data.length - v2.length);
    require(!(('desc.callData length:' + 64 > uint64.max) | ('desc.callData length:' + 64 < 'desc.callData length:')), Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](132);
    MEM[v3.data] = 0xb60e72cc00000000000000000000000000000000000000000000000000000000;
    MEM[v3 + 36] = 64;
    v4 = new bytes[](v5.length);
    MCOPY(v4.data, v5.data, v5.length);
    v4[v5.length] = 0;
    MEM[v3 + 68] = v2.length;
    require(!((v3 + 192 > uint64.max) | (v3 + 192 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v3.length;
    v7 = 'console.log'.log(v4, v2.length).gas(msg.gas);
    if (msg.sender != _transitRouter) {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        revert(Error('caller: invalid router'));
    } else {
        require(msg.data[4 + varg0 + 32] < msg.data.length - (4 + varg0) - 31);
        require(v8.length <= uint64.max);
        require(v8.data <= msg.data.length - v8.length);
        require(v8.data + v8.length - v8.data >= 64);
        require(!(bool(msg.data[v8.data]) - msg.data[v8.data]));
        require(msg.data[v8.data + 32] <= uint64.max);
        require(v8.data + msg.data[v8.data + 32] + 31 < v8.data + v8.length);
        require(msg.data[v8.data + msg.data[v8.data + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new bytes[](msg.data[v8.data + msg.data[v8.data + 32]]);
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v8.data + msg.data[v8.data + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v8.data + msg.data[v8.data + 32]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        require(v8.data + msg.data[v8.data + 32] + 32 + msg.data[v8.data + msg.data[v8.data + 32]] <= v8.data + v8.length);
        CALLDATACOPY(v9.data, v8.data + msg.data[v8.data + 32] + 32, msg.data[v8.data + msg.data[v8.data + 32]]);
        v9[msg.data[v8.data + msg.data[v8.data + 32]]] = 0;
        if (msg.data[v8.data]) {
            require(!(address(varg0.word0) - varg0.word0));
            0x2308(varg0.word0, v9);
        } else {
            require(v9 + v9.length + 32 - v9.data >= 32);
            require(MEM[v9.data] <= uint64.max);
            require(v9 + v9.length + 32 - (v9.data + MEM[v9.data]) >= 32);
            v0 = v10 = new struct(1);
            require(!((v10 + 32 > uint64.max) | (v10 + 32 < v10)), Panic(65)); // failed memory allocation (too much memory)
            require(v9[MEM[v9.data]] <= uint64.max);
            require(v9.data + MEM[v9.data] + v9[MEM[v9.data]] + 31 < v9 + v9.length + 32);
            require(MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v11 = new uint256[](MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]]);
            require(!((v11 + (32 + (MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            v12 = v13 = v11.data;
            require(v9.data + MEM[v9.data] + v9[MEM[v9.data]] + (MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]] << 5) + 32 <= v9 + v9.length + 32);
            v14 = v15 = v9.data + MEM[v9.data] + v9[MEM[v9.data]] + 32;
            while (v14 < v9.data + MEM[v9.data] + v9[MEM[v9.data]] + (MEM[v9.data + MEM[v9.data] + v9[MEM[v9.data]]] << 5) + 32) {
                require(MEM[v14] <= uint64.max);
                v16 = v9.data + MEM[v9.data] + v9[MEM[v9.data]] + MEM[v14];
                require(v9 + v9.length + 32 - v16 - 32 >= 192);
                v17 = 0x23e();
                require(!(address(MEM[v16 + 32]) - MEM[v16 + 32]));
                v17.word0 = MEM[v16 + 32];
                require(MEM[v16 + 64] <= uint64.max);
                v18 = 0x137b(v16 + MEM[v16 + 64] + 32, v9 + v9.length + 32);
                v17.word1 = v18;
                require(MEM[v16 + 96] <= uint64.max);
                v19 = 0x13e2(v16 + MEM[v16 + 96] + 32, v9 + v9.length + 32);
                v17.word2 = v19;
                require(MEM[v16 + 128] <= uint64.max);
                v20 = 0x143f(v16 + MEM[v16 + 128] + 32, v9 + v9.length + 32);
                v17.word3 = v20;
                require(MEM[v16 + 160] <= uint64.max);
                v21 = 0x137b(v16 + MEM[v16 + 160] + 32, v9 + v9.length + 32);
                v17.word4 = v21;
                require(MEM[v16 + 192] <= uint64.max);
                v22 = 0x14ec(v16 + MEM[v16 + 192] + 32, v9 + v9.length + 32);
                v17.word5 = v22;
                MEM[v12] = v17;
                v12 = v12 + 32;
                v14 = v14 + 32;
            }
            v10.word0 = v11;
            v0 = v23 = 0;
            while (v0 < MEM[MEM[v0]]) {
                require(v0 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v24 = 0x1dc3(address(MEM[MEM[(v0 << 5) + MEM[v0] + 32]]));
                if (!v24) {
                    require(v0 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v25 = v26 = MEM[64];
                    v27 = address(MEM[MEM[(v0 << 5) + MEM[v0] + 32]]).balanceOf(this).gas(msg.gas);
                    if (v27) {
                        v0 = v28 = 1;
                        v0 = v29 = 0x68180;
                        v0 = v30 = 0;
                        if (v27) {
                            v31 = v32 = 6196;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v26 + 32;
                                v33 = v34 = v26 + 32;
                            }
                        }
                        v35 = MEM[v0];
                        require(v0 < MEM[v35], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v0 = v36 = MEM[(v0 << 5) + v35 + 32];
                        v0 = v37 = v36 + 96;
                        v0 = v38 = v36 + 160;
                        v39 = v40 = MEM[MEM[v37]] == MEM[MEM[v38]];
                        if (v40) {
                            v39 = v41 = MEM[MEM[v36 + 64]] == MEM[MEM[v37]];
                        }
                        require(v39, Error('invalid hops'));
                        v0 = v42 = 0;
                        v0 = v43 = 0;
                        v44 = MEM[v0];
                        if (v0 >= MEM[v44]) {
                            v0 += v0;
                        } else {
                            require(v0 < MEM[v44], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(MEM[(v0 << 5) + v44 + 32] < 10, Panic(33)); // failed convertion to enum type
                            require(10 > MEM[(v0 << 5) + v44 + 32], Panic(33)); // failed convertion to enum type
                            v45 = bool(MEM[(v0 << 5) + v44 + 32]);
                            if (v45) {
                                v46 = MEM[v0];
                                require(v0 < MEM[v46], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(MEM[(v0 << 5) + v46 + 32] < 10, Panic(33)); // failed convertion to enum type
                                require(10 > MEM[(v0 << 5) + v46 + 32], Panic(33)); // failed convertion to enum type
                                v45 = v47 = MEM[(v0 << 5) + v46 + 32] != 1;
                            }
                            if (v45) {
                                v48 = MEM[v0];
                                require(v0 < MEM[v48], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(MEM[(v0 << 5) + v48 + 32] < 10, Panic(33)); // failed convertion to enum type
                                require(10 > MEM[(v0 << 5) + v48 + 32], Panic(33)); // failed convertion to enum type
                                v45 = v49 = MEM[(v0 << 5) + v48 + 32] != 2;
                            }
                            if (v45) {
                                v50 = MEM[v0 + 64];
                                require(v0 < MEM[v50], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v0 = _SafeAdd(v0, MEM[(v0 << 5) + v50 + 32]);
                            }
                            v51 = 0x2914(MEM[MEM[v0]]);
                            if (v0 == v51) {
                                v52 = v0 == 10000;
                                if (v0 != 10000) {
                                    v52 = v53 = !v0;
                                }
                                require(v52, Error('totalWeight must be 10_000'));
                            }
                            v54 = MEM[v0 + 64];
                            require(v0 < MEM[v54], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v55 = _SafeMul(v0, MEM[(v0 << 5) + v54 + 32]);
                            v56 = MEM[v0];
                            require(v0 < MEM[v56], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(MEM[(v0 << 5) + v56 + 32] < 10, Panic(33)); // failed convertion to enum type
                            require(10 > MEM[(v0 << 5) + v56 + 32], Panic(33)); // failed convertion to enum type
                            if (MEM[(v0 << 5) + v56 + 32]) {
                                v57 = MEM[v0];
                                require(v0 < MEM[v57], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                require(MEM[(v0 << 5) + v57 + 32] < 10, Panic(33)); // failed convertion to enum type
                                require(10 > MEM[(v0 << 5) + v57 + 32], Panic(33)); // failed convertion to enum type
                                if (MEM[(v0 << 5) + v57 + 32] - 1) {
                                    v58 = MEM[v0];
                                    require(v0 < MEM[v58], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(MEM[(v0 << 5) + v58 + 32] < 10, Panic(33)); // failed convertion to enum type
                                    require(10 > MEM[(v0 << 5) + v58 + 32], Panic(33)); // failed convertion to enum type
                                    if (MEM[(v0 << 5) + v58 + 32] - 3) {
                                        v59 = MEM[v0];
                                        require(v0 < MEM[v59], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(MEM[(v0 << 5) + v59 + 32] < 10, Panic(33)); // failed convertion to enum type
                                        require(10 > MEM[(v0 << 5) + v59 + 32], Panic(33)); // failed convertion to enum type
                                        if (MEM[(v0 << 5) + v59 + 32] - 4) {
                                            v60 = MEM[v0];
                                            require(v0 < MEM[v60], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(MEM[(v0 << 5) + v60 + 32] < 10, Panic(33)); // failed convertion to enum type
                                            require(10 > MEM[(v0 << 5) + v60 + 32], Panic(33)); // failed convertion to enum type
                                            if (MEM[(v0 << 5) + v60 + 32] - 5) {
                                                v61 = MEM[v0];
                                                require(v0 < MEM[v61], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                require(MEM[(v0 << 5) + v61 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                require(10 > MEM[(v0 << 5) + v61 + 32], Panic(33)); // failed convertion to enum type
                                                if (MEM[(v0 << 5) + v61 + 32] - 6) {
                                                    v62 = MEM[v0];
                                                    require(v0 < MEM[v62], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(MEM[(v0 << 5) + v62 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                    require(10 > MEM[(v0 << 5) + v62 + 32], Panic(33)); // failed convertion to enum type
                                                    if (MEM[(v0 << 5) + v62 + 32] - 8) {
                                                        v63 = MEM[v0];
                                                        require(v0 < MEM[v63], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        require(MEM[(v0 << 5) + v63 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                        require(10 > MEM[(v0 << 5) + v63 + 32], Panic(33)); // failed convertion to enum type
                                                        if (MEM[(v0 << 5) + v63 + 32] - 2) {
                                                            v64 = MEM[v0];
                                                            require(v0 < MEM[v64], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            require(MEM[(v0 << 5) + v64 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                            require(10 > MEM[(v0 << 5) + v64 + 32], Panic(33)); // failed convertion to enum type
                                                            if (MEM[(v0 << 5) + v64 + 32] - 7) {
                                                                v65 = MEM[v0];
                                                                require(v0 < MEM[v65], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                require(MEM[(v0 << 5) + v65 + 32] < 10, Panic(33)); // failed convertion to enum type
                                                                require(10 > MEM[(v0 << 5) + v65 + 32], Panic(33)); // failed convertion to enum type
                                                                require(!(MEM[(v0 << 5) + v65 + 32] - 9), Error('unknown adapter'));
                                                                v0 = v66 = 1;
                                                                v67 = MEM[v0];
                                                                require(v0 < MEM[v67], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                0x3c44(v55 / 10000, MEM[(v0 << 5) + v67 + 32]);
                                                            } else {
                                                                v0 = v68 = 1;
                                                                v69 = MEM[v0];
                                                                require(v0 < MEM[v69], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                                0x3f6a(v55 / 10000, MEM[(v0 << 5) + v69 + 32]);
                                                            }
                                                        } else {
                                                            v0 = v70 = 1;
                                                            v71 = MEM[v0 + 32];
                                                            require(v0 < MEM[v71], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            v72 = MEM[v0 + 128];
                                                            require(v0 < MEM[v72], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                            0x512e(address(MEM[(v0 << 5) + v71 + 32]), v55 / 10000);
                                                            if (address(MEM[(v0 << 5) + v72 + 32]) - this) {
                                                                0x1f06(address(MEM[(v0 << 5) + v72 + 32]), v55 / 10000);
                                                            }
                                                        }
                                                    } else {
                                                        v0 = v73 = 1;
                                                        v74 = MEM[v0];
                                                        require(v0 < MEM[v74], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        0x41be(v55 / 10000, MEM[(v0 << 5) + v74 + 32]);
                                                    }
                                                } else {
                                                    v0 = v75 = 1;
                                                    v76 = MEM[v0];
                                                    require(v0 < MEM[v76], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    require(MEM[(v0 << 5) + v76 + 32] + MEM[MEM[(v0 << 5) + v76 + 32]] + 32 - (MEM[(v0 << 5) + v76 + 32] + 32) >= 64);
                                                    require(!(address(MEM[MEM[(v0 << 5) + v76 + 32] + 32]) - MEM[MEM[(v0 << 5) + v76 + 32] + 32]));
                                                    if (0 == !(MEM[MEM[(v0 << 5) + v76 + 32] + 32 + 32] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                                        v77 = v78 = MEM[64];
                                                        MEM[v78] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                                                        MEM[v78 + 4] = address(MEM[MEM[(v0 << 5) + v76 + 32] + 32]);
                                                        v79 = v80 = v78 + 36;
                                                    } else {
                                                        v77 = v81 = MEM[64];
                                                        MEM[v81] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                                                        MEM[v81 + 4] = address(MEM[MEM[(v0 << 5) + v76 + 32] + 32]);
                                                        v79 = v82 = v81 + 36;
                                                    }
                                                    v83 = address(MEM[MEM[(v0 << 5) + v76 + 32] + 32 + 32]).call(MEM[v11590x434a_0x1V0x2bf50x170eV0x417:v11590x434a_0x1V0x2bf50x170eV0x417 + v43a3_0x0V0x2bf50x170eV0x417 - v11590x434a_0x1V0x2bf50x170eV0x417], MEM[v11590x434a_0x1V0x2bf50x170eV0x417:v11590x434a_0x1V0x2bf50x170eV0x417 + 32]).gas(msg.gas);
                                                    if (!v83) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else if (v83) {
                                                        if (32 > RETURNDATASIZE()) {
                                                            require(!((v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v77)), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = v77 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            v84 = v85 = v77 + RETURNDATASIZE();
                                                        } else {
                                                            require(!((v77 + 32 > uint64.max) | (v77 + 32 < v77)), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = v77 + 32;
                                                            v84 = v86 = v77 + 32;
                                                        }
                                                        require(v84 - v77 >= 32);
                                                    }
                                                }
                                            } else {
                                                v0 = v87 = 1;
                                                v88 = MEM[v0];
                                                require(v0 < MEM[v88], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                0x4467(v55 / 10000, MEM[(v0 << 5) + v88 + 32]);
                                            }
                                        } else {
                                            v0 = v89 = 1;
                                            v90 = MEM[v0];
                                            require(v0 < MEM[v90], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            0x46ef(v55 / 10000, MEM[(v0 << 5) + v90 + 32]);
                                        }
                                    } else {
                                        v0 = v91 = 1;
                                        v92 = address(MEM[v0]);
                                        v93 = 0x1dc3(v92);
                                        if (!v93) {
                                            0x2b3e(v92, 0x68b44, v0, v91, v0, v0);
                                            // Unknown jump to Block 0x2a970x170eB0x417. Refer to 3-address code (TAC);
                                        } else {
                                            v0 = v94 = 0x68af4;
                                            v95 = MEM[v0 + 32];
                                            require(v0 < MEM[v95], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v96 = MEM[v0];
                                            require(v0 < MEM[v96], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            require(MEM[(v0 << 5) + v96 + 32] + MEM[MEM[(v0 << 5) + v96 + 32]] + 32 - (MEM[(v0 << 5) + v96 + 32] + 32) >= 96);
                                            require(!(address(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 32]) - MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 32]));
                                            v0 = v97 = !(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000);
                                            v0 = v98 = address(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 32]);
                                            v0 = v99 = !bool(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 64] >> 248);
                                            v0 = v100 = address(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 64]);
                                            v0 = v101 = bool(MEM[MEM[(v0 << 5) + v96 + 32] + 32] >> 248);
                                            v0 = v102 = address(MEM[MEM[(v0 << 5) + v96 + 32] + 32]);
                                            v103, /* uint112 */ v104, /* uint112 */ v105, /* uint32 */ v106 = v100.getReserves().gas(msg.gas);
                                            if (v103) {
                                                v104 = v107 = 0;
                                                v105 = v108 = 0;
                                                if (v103) {
                                                    v109 = 96;
                                                    if (96 > RETURNDATASIZE()) {
                                                        v109 = v110 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v109 - MEM[64] >= 96);
                                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                                    require(!(v105 - uint112(v105)));
                                                    require(!(v106 - uint32(v106)));
                                                }
                                                v0 = v111 = uint112(v105);
                                                v0 = v112 = uint112(v104);
                                                if (!bool(MEM[MEM[(v0 << 5) + v96 + 32] + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                                                }
                                                v25 = v113 = MEM[64];
                                                v114 = address(MEM[(v0 << 5) + v95 + 32]).balanceOf(address(v100)).gas(msg.gas);
                                                if (v114) {
                                                    v0 = v115 = 19105;
                                                    v0 = v116 = 0;
                                                    if (v114) {
                                                        v31 = v117 = 19881;
                                                        if (32 <= RETURNDATASIZE()) {
                                                            require(!((v113 + 32 > uint64.max) | (v113 + 32 < v113)), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = v113 + 32;
                                                            v33 = v118 = v113 + 32;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    v0 = v119 = 1;
                                    v120 = MEM[v0 + 32];
                                    require(v0 < MEM[v120], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v121 = MEM[v0 + 128];
                                    require(v0 < MEM[v121], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                                    v122 = v123.length;
                                    v124 = v125 = address(MEM[(v0 << 5) + v120 + 32]).deposit().value(v55 / 10000).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v126 = v127 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v126 = new bytes[](RETURNDATASIZE());
                                        require(!((v126 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v126 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v126)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v126.data, 0, RETURNDATASIZE());
                                    }
                                    if (v125) {
                                        v124 = v128 = !MEM[v126];
                                        if (bool(MEM[v126])) {
                                            require(v126 + MEM[v126] + 32 - (v126 + 32) >= 32);
                                            v124 = MEM[v126 + 32];
                                            require(!(bool(v124) - v124));
                                        }
                                    }
                                    require(v124, Error('TransferHelper: DEPOSIT_FAILED'));
                                    if (address(MEM[(v0 << 5) + v121 + 32]) - this) {
                                        0x392d(address(MEM[(v0 << 5) + v120 + 32]), address(MEM[(v0 << 5) + v121 + 32]), v55 / 10000);
                                    }
                                }
                            } else {
                                v0 = v129 = 1;
                                require(v0 < MEM[MEM[v0 + 128]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                0x392d(address(MEM[v0]), address(MEM[(v0 << 5) + MEM[v0 + 128] + 32]), v55 / 10000);
                            }
                        }
                        require(!((v25 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v25 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v25)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v25 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v33 = v130 = v25 + RETURNDATASIZE();
                        require(v33 - v25 >= 32);
                        v0 = v131 = MEM[v25];
                        // Unknown jump to Block ['0x1834B0x417', '0x4bbc0x170eB0x417', '0x4bdc0x170eB0x417', '0x4d8a0x170eB0x417', '0x4da90x170eB0x417']. Refer to 3-address code (TAC);
                        if (!v0) {
                            v0 = v132 = 0;
                        } else {
                            v0 = v133 = 0;
                        }
                        if (!v0) {
                            require(v0.code.size);
                            v134 = v135 = MEM[64];
                            MEM[v135] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000;
                            MEM[v135 + 4] = v0;
                            MEM[v135 + 36] = v0;
                            MEM[v135 + 68] = address(v0);
                            v136 = v137 = 0;
                            v138 = v139 = v135 + 100;
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                            require(v0.code.size);
                            v136 = v140 = 0;
                            v134 = v141 = MEM[64];
                            MEM[v141] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v141 + 4] = v0;
                            MEM[v141 + 4 + 32] = v0;
                            MEM[v141 + 4 + 64] = address(v0);
                            MEM[v141 + 4 + 96] = 128;
                            MEM[v141 + 4 + 128] = 0;
                            MCOPY(v141 + 4 + 128 + 32, 32 + MEM[64], 0);
                            MEM[32 + (v141 + 4 + 128)] = 0;
                            v138 = v141 + 4 + 128 + 32;
                        }
                        v142 = v0.call(MEM[v691930x170e_0x0V0x417:v691930x170e_0x0V0x417 + v743V0x499fV0x4b370x170eV0x417 - v691930x170e_0x0V0x417], MEM[v691930x170e_0x0V0x417:v691930x170e_0x0V0x417 + v359b0x170e_0x6V0x417]).value(v136).gas(msg.gas);
                        if (v142) {
                            if (v142) {
                                require(!((v134 > uint64.max) | (v134 < v134)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v134;
                                require(v134 - v134 >= 0);
                                // Unknown jump to Block 0x68af40x170eB0x417. Refer to 3-address code (TAC);
                            }
                        }
                        v0 += v0;
                        // Unknown jump to Block 0x29e40x170eB0x417. Refer to 3-address code (TAC);
                        v25 = v143 = MEM[64];
                        v144 = v0.getAmountOut(v0, v0, v0, v0).gas(msg.gas);
                        if (v144) {
                            v0 = v145 = 0;
                            if (v144) {
                                v31 = 19388;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v143 + 32 > uint64.max) | (v143 + 32 < v143)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v143 + 32;
                                    v33 = v146 = v143 + 32;
                                }
                            }
                        }
                        // Unknown jump to Block 0x4b180x170eB0x417. Refer to 3-address code (TAC);
                        v0 = v0 - v0;
                        require(v0 <= v0, Panic(17)); // arithmetic overflow or underflow
                        if (v0 - 1) {
                            if (2 - v0) {
                                v25 = v147 = MEM[64];
                                v148 = v0.getAmountOut(v0, v0, v0).gas(msg.gas);
                                if (v148) {
                                    v0 = v149 = 0;
                                    if (v148) {
                                        v31 = v150 = 19850;
                                        if (32 <= RETURNDATASIZE()) {
                                            require(!((v147 + 32 > uint64.max) | (v147 + 32 < v147)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v147 + 32;
                                            v33 = v151 = v147 + 32;
                                        }
                                    }
                                }
                            } else {
                                v152 = v153 = MEM[64];
                                v154 = v0.token0().gas(msg.gas);
                                if (v154) {
                                    v0 = v155 = 0;
                                    if (v154) {
                                        v156 = v157 = 19754;
                                        if (32 <= RETURNDATASIZE()) {
                                            require(!((v153 + 32 > uint64.max) | (v153 + 32 < v153)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v153 + 32;
                                            v158 = v159 = v153 + 32;
                                        }
                                    }
                                    v152 = v160 = MEM[64];
                                    v161 = v0.token1().gas(msg.gas);
                                    if (v161) {
                                        v0 = v162 = 19586;
                                        v0 = v163 = 0;
                                        v0 = v164 = 19614;
                                        if (v161) {
                                            v156 = v165 = 19723;
                                            if (32 <= RETURNDATASIZE()) {
                                                require(!((v160 + 32 > uint64.max) | (v160 + 32 < v160)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v160 + 32;
                                                v158 = v166 = v160 + 32;
                                            }
                                        }
                                    }
                                    v167 = new uint256[](2);
                                    require(!((v167 + 96 > uint64.max) | (v167 + 96 < v167)), Panic(65)); // failed memory allocation (too much memory)
                                    CALLDATACOPY(v167.data, msg.data.length, 64);
                                    if (v0 == v0) {
                                        v0 = v168, v0 = v169, v0 = v170, v0 = v171, v0 = v172, v0 = v173 = 0x4c58(v0, 19568, v0, v0, v0, v0, v0);
                                    } else {
                                        v0 = v174, v0 = v175, v0 = v176, v0 = v177, v0 = v178, v0 = v179 = 0x4c58(v0, 19568, v0, v0, v0, v0, v0);
                                    }
                                    if (v0 != v0) {
                                    }
                                    v180 = 0x69dba;
                                    while (1) {
                                        require(1 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        // Unknown jump to Block ['0x4cb90x170eB0x417', '0x69dba0x170eB0x417']. Refer to 3-address code (TAC);
                                        MEM[64 + v0] = address(v0);
                                        MEM[MEM[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000;
                                        MEM[MEM[64] + 4] = v0;
                                        MEM[MEM[64] + 4 + 32] = 64;
                                        MEM[MEM[64] + 4 + 64] = MEM[v0];
                                        v181 = v182 = MEM[64] + 4 + 96;
                                        v183 = v184 = v0 + 32;
                                        v185 = v186 = 0;
                                        while (v185 < MEM[v0]) {
                                            MEM[v181] = address(MEM[v183]);
                                            v181 += 32;
                                            v183 = v183 + 32;
                                            v185 += 1;
                                        }
                                        v187 = v0.staticcall(MEM[MEM[64]:MEM[64] + v170e0x4992V0x417 - MEM[64]], MEM[MEM[64]:MEM[64] + v4955_0x0V0x4cd40x170eV0x417]).gas(msg.gas);
                                        if (!v187) {
                                            break;
                                        } else {
                                            v180 = v188 = 19641;
                                            v0 = v189 = 0;
                                            if (v187) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                require(0xd06ca61f00000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                v0 = 0x13e2(MEM[64] + 0xd06ca61f00000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                            }
                                        }
                                    }
                                    v0 = v190 = MEM[64 + v0];
                                    require(!((v152 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v152 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v152)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v152 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    v158 = v191 = v152 + RETURNDATASIZE();
                                    require(v158 - v152 >= 32);
                                    v0 = v192 = MEM[v152];
                                    require(!(address(v192) - v192));
                                    // Unknown jump to Block ['0x4d0b0x170eB0x417', '0x4d2a0x170eB0x417']. Refer to 3-address code (TAC);
                                    // Unknown jump to Block 0x4c420x170eB0x417. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v25 = v193 = MEM[64];
                            v194 = v0.swapFee().gas(msg.gas);
                            if (v194) {
                                v0 = v195 = 0;
                                if (v194) {
                                    v0 = v196 = 32;
                                    v31 = v197 = 19420;
                                    if (v196 <= RETURNDATASIZE()) {
                                        require(!((v193 + 32 > uint64.max) | (v193 + 32 < v193)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v193 + 32;
                                        v33 = v198 = v193 + v196;
                                    }
                                }
                            }
                        }
                    }
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v199 = this.balance;
                    v200, v201, v0, v0 = 0x17b4(v199, 0x680d8, v0, 1, v0);
                    v0 = v200 + v201;
                }
            }
            // Unknown jump to Block 0x67701. Refer to 3-address code (TAC);
        }
        exit;
    }
}

function approves(address varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    return _approves[varg0][varg1];
}

function 0x2b3f2cfb() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_2_20_20;
}

function withdrawTokens(address[] _tokens, address _to) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_tokens <= uint64.max);
    require(_tokens + 35 < msg.data.length);
    require(_tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](_tokens.length);
    require(!((v0 + (32 + (_tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (_tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(_tokens + (_tokens.length << 5) + 36 <= msg.data.length);
    v3 = v4 = _tokens.data;
    while (v3 < _tokens + (_tokens.length << 5) + 36) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(msg.sender - _executor), Error('Ownable: caller is not the executor'));
    v5 = v6 = 0;
    while (v5 < v0.length) {
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v7 = 0x1dc3(address(v0[v5]));
        if (!v7) {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v8, v9 = address(v0[v5]).balanceOf(this).gas(msg.gas);
            require(v8, MEM[64], RETURNDATASIZE());
            v10 = v11 = 1;
            v9 = v12 = 0;
            if (v8) {
                v13 = v14 = 32;
                if (v14 > RETURNDATASIZE()) {
                    v13 = v15 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v13 - MEM[64] >= 32);
            }
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v16 = 0x1e38(address(v0[v5]), _to, v9);
        } else {
            v10 = v17 = 1;
            v9 = v18 = this.balance;
            0x1f06(_to, v18);
        }
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        emit Withdraw(address(v0[v5]), msg.sender, _to, v9);
        v5 = v5 + v10;
    }
    exit;
}

function 0x1dc3(address varg0) private { 
    if (bool(varg0)) {
        return varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    } else {
        return !varg0;
    }
}

function 0x1e38(uint256 varg0, address varg1, uint256 varg2) private { 
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
    if (v2) {
        if (bool(MEM[v4])) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(bool(MEM[v4 + 32]) - MEM[v4 + 32]));
            return MEM[v4 + 32];
        } else {
            return !MEM[v4];
        }
    } else {
        return v2;
    }
}

function 0x1f06(uint256 varg0, uint256 varg1) private { 
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, Error('TransferHelper: TRANSFER_FAILED'));
    return ;
}

function 0x1fc8(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = 32 + varg0;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(!(MEM[v4] - uint8(MEM[v4])));
        MEM[v2] = MEM[v4];
        v4 += 32;
        v2 += 32;
    }
    return v1;
}

function 0x2130(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid calls'));
    } else {
        return ;
    }
}

function 0x2179(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid callers'));
    } else {
        return ;
    }
}

function 0x21c4(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid amounts'));
    } else {
        return ;
    }
}

function 0x220f(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid calldatas'));
    } else {
        return ;
    }
}

function 0x22a6(uint256 varg0) private { 
    if (!varg0) {
        MEM[0] = MEM[0];
        revert(Error('TransitAggregateBridgeV5: invalid call.value'));
    } else {
        return ;
    }
}

function 0x2308(uint256 varg0, bytes varg1) private { 
    v0 = varg1 + varg1.length + 32;
    require(v0 - varg1.data >= 32);
    require(MEM[varg1.data] <= uint64.max);
    v1 = varg1.data + MEM[varg1.data];
    require(v0 - v1 >= 224);
    varg0 = v2 = 0x24f();
    require(!(address(varg1[MEM[varg1.data]]) - varg1[MEM[varg1.data]]));
    v2.word0 = varg1[MEM[varg1.data]];
    require(!(address(MEM[v1 + 32]) - MEM[v1 + 32]));
    v2.word1 = MEM[v1 + 32];
    require(MEM[v1 + 64] <= uint64.max);
    v3 = 0x13e2(v1 + MEM[v1 + 64], v0);
    v2.word2 = v3;
    require(MEM[v1 + 96] <= uint64.max);
    v4 = 0x1fc8(v1 + MEM[v1 + 96], v0);
    v2.word3 = v4;
    require(MEM[v1 + 128] <= uint64.max);
    v5 = 0x137b(v1 + MEM[v1 + 128], v0);
    v2.word4 = v5;
    require(MEM[v1 + 160] <= uint64.max);
    v6 = 0x137b(v1 + MEM[v1 + 160], v0);
    v2.word5 = v6;
    require(MEM[v1 + 192] <= uint64.max);
    v7 = 0x14ec(v1 + MEM[v1 + 192], v0);
    v2.word6 = v7;
    varg0 = v8 = v2 + 128;
    varg0 = v9 = v2 + 192;
    0x2130(v10.length == v11.length);
    v12 = v13 = v2 + 96;
    0x2179(v14.length == v15.length);
    varg0 = v16 = v2 + 64;
    0x21c4(v17.length == v18.length);
    v12 = v19 = v2 + 160;
    0x220f(v20.length == v21.length);
    v12 = v22 = v23.length;
    varg0 = v24 = 0;
    varg0 = v25 = 1;
    while (1) {
        if (varg0 < v12) {
            if (stor_2_20_20) {
                require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!_allowed[address(MEM[(varg0 << 5) + MEM[varg0] + 32])]) {
                    MEM[0] = MEM[0];
                    revert(Error('TransitAggregateBridgeV5: invalid caller'));
                }
            }
            require(varg0 < MEM[MEM[v12]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(MEM[(varg0 << 5) + MEM[v12] + 32])) {
                require(varg0 < MEM[MEM[v12]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v26 = v27 = address(MEM[(varg0 << 5) + MEM[v12] + 32]);
                v28 = address(varg0);
                v29 = v30 = _approves[v28][address(v27)];
                varg0 = v31 = 0;
                v32 = v33 = 0x1dc3(address(MEM[varg0]));
            } else {
                require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v26 = v34 = address(MEM[(varg0 << 5) + MEM[varg0] + 32]);
                v35 = address(varg0);
                v29 = v36 = _approves[v35][address(v34)];
                varg0 = v37 = 0;
                v32 = v38 = 0x1dc3(address(MEM[varg0]));
            }
            if (!v32) {
            }
            if (!v29) {
                0x2e88(varg0, v26);
                v39 = address(varg0);
                _approves[v39][address(v26)] = 1;
            }
            require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (mapping_5[address(v26)][address(MEM[(varg0 << 5) + MEM[varg0] + 32])]) {
                v40 = address(varg0);
                require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!mapping_6[v40][address(MEM[(varg0 << 5) + MEM[varg0] + 32])]) {
                    require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require((address(v26)).code.size);
                    v41 = address(v26).approve(address(varg0), address(MEM[(varg0 << 5) + MEM[varg0] + 32]), uint160.max, uint48.max).gas(msg.gas);
                    if (v41) {
                        if (v41) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v42 = address(varg0);
                        require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        mapping_6[v42][address(MEM[(varg0 << 5) + MEM[varg0] + 32])] = 1;
                    }
                }
            }
            v43 = 0x1dc3(varg0);
            if (!v43) {
                require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                0x22a6(!MEM[(varg0 << 5) + MEM[varg0] + 32]);
            }
            if (!varg0) {
                v44 = v45 = MEM[64];
                v46 = address(MEM[varg0]).balanceOf(this).gas(msg.gas);
                if (v46) {
                    varg0 = v47 = 0;
                    if (v46) {
                        v48 = v49 = 9924;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v45 + 32;
                            v50 = v51 = v45 + 32;
                        }
                    }
                }
            } else {
                varg0 = v52 = this.balance;
            }
        } else {
            v53 = 0x1dc3(varg0);
            if (!v53) {
                v44 = v54 = MEM[64];
                v55 = address(varg0).balanceOf(this).gas(msg.gas);
                if (v55) {
                    varg0 = v56 = 0;
                    if (v55) {
                        v48 = v57 = 9235;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v54 + 32 > uint64.max) | (v54 + 32 < v54)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v54 + 32;
                            v50 = v58 = v54 + 32;
                        }
                    } else {
                        break;
                    }
                }
            } else {
                return ;
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        require(!((v44 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v44 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v50 = v44 + RETURNDATASIZE();
        require(v50 - v44 >= 32);
        varg0 = v59 = MEM[v44];
        // Unknown jump to Block ['0x2413', '0x262b', '0x26c4']. Refer to 3-address code (TAC);
        break;
        v60 = _SafeSub(varg0, varg0);
        v61 = new bytes[](68);
        MEM[v61.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v61 + 36] = address(MEM[varg0 + 32]);
        MEM[v61 + 68] = v60;
        require(!((v61 + 128 > uint64.max) | (v61 + 128 < v61)), Panic(65)); // failed memory allocation (too much memory)
        v62 = v61.length;
        v63 = v64 = address(MEM[varg0]).transfer(address(MEM[varg0 + 32]), v60).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v65 = v66 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v65 = v67 = new bytes[](RETURNDATASIZE());
            require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v67.data, 0, RETURNDATASIZE());
        }
        if (v64) {
            v63 = v68 = !MEM[v65];
            if (bool(MEM[v65])) {
                require(v65 + MEM[v65] + 32 - (v65 + 32) >= 32);
                v63 = MEM[v65 + 32];
                require(!(bool(v63) - v63));
            }
        }
        require(v63, Error('TransferHelper: TRANSFER_TOKEN_FAILED'));
        varg0 += varg0;
        continue;
        require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0 < MEM[MEM[varg0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v69 = address(MEM[(varg0 << 5) + MEM[varg0] + 32]).call(MEM[MEM[v2308arg0x0 << 5 + MEM[v2308arg0x0] + 32] + 32:MEM[v2308arg0x0 << 5 + MEM[v2308arg0x0] + 32] + 32 + MEM[MEM[v2308arg0x0 << 5 + MEM[v2308arg0x0] + 32]]], MEM[0:0]).value(MEM[(varg0 << 5) + MEM[varg0] + 32]).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v70 = v71 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v70 = v72 = new bytes[](RETURNDATASIZE());
            require(!((v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v72 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v72)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v72.data, 0, RETURNDATASIZE());
        }
        if (!v69) {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v73 = v74 = MEM[v70] >= 68;
            if (v74) {
                require(MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v73 = v75 = bytes1(MEM[32 + v70]) == 0x800000000000000000000000000000000000000000000000000000000000000;
            }
            if (v73) {
                require(1 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v73 = v76 = bytes1(MEM[33 + v70]) == 0xc300000000000000000000000000000000000000000000000000000000000000;
            }
            if (v73) {
                require(2 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v73 = v77 = bytes1(MEM[34 + v70]) == 0x7900000000000000000000000000000000000000000000000000000000000000;
            }
            if (v73) {
                require(3 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v73 = v78 = bytes1(MEM[35 + v70]) == 0xa000000000000000000000000000000000000000000000000000000000000000;
            }
            if (!v73) {
                v79 = v80 = MEM[v70] == 36;
                if (v80) {
                    require(MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v79 = v81 = bytes1(MEM[32 + v70]) == 0x4e00000000000000000000000000000000000000000000000000000000000000;
                }
                if (v79) {
                    require(1 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v79 = v82 = bytes1(MEM[33 + v70]) == 0x4800000000000000000000000000000000000000000000000000000000000000;
                }
                if (v79) {
                    require(2 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v79 = v83 = bytes1(MEM[34 + v70]) == 0x7b00000000000000000000000000000000000000000000000000000000000000;
                }
                if (v79) {
                    require(3 < MEM[v70], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v79 = v84 = bytes1(MEM[35 + v70]) == 0x7100000000000000000000000000000000000000000000000000000000000000;
                }
                if (v79) {
                    v85 = v86 = 0x6942b;
                    v87 = 0x5008(MEM[v70 + 36]);
                    MCOPY(MEM[64] + 32, 32 + MEM[64], 0);
                    MEM[MEM[64] + 32] = 0;
                    MCOPY(MEM[64] + 32, 0x6a1b5, MEM[0x6a195]);
                    MEM[MEM[64] + 32 + MEM[0x6a195]] = 0;
                    MEM[MEM[64] + 32 + MEM[0x6a195]] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                    MEM[v86] = 1 + (MEM[64] + 32 + MEM[0x6a195]) - 0x693a0 - 32;
                    require(!((v86 + (1 + (MEM[64] + 32 + MEM[0x6a195]) - 0x693a0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v86 + (1 + (MEM[64] + 32 + MEM[0x6a195]) - 0x693a0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v86)), Panic(65)); // failed memory allocation (too much memory)
                    // Unknown jump to Block 0x2646. Refer to 3-address code (TAC);
                } else {
                    v85 = v88 = 0x6937e;
                    v89 = 0x5024(v70);
                    MCOPY(MEM[64] + 32, 32 + MEM[64], 0);
                    MEM[MEM[64] + 32] = 0;
                    MCOPY(MEM[64] + 32, 0x6a190, MEM[0x6a170]);
                    MEM[MEM[64] + 32 + MEM[0x6a170]] = 0;
                    MEM[MEM[64] + 32 + MEM[0x6a170]] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                    MEM[v88] = 1 + (MEM[64] + 32 + MEM[0x6a170]) - 0x692f3 - 32;
                    require(!((v88 + (1 + (MEM[64] + 32 + MEM[0x6a170]) - 0x692f3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v88 + (1 + (MEM[64] + 32 + MEM[0x6a170]) - 0x692f3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v88)), Panic(65)); // failed memory allocation (too much memory)
                    // Unknown jump to Block 0x2646. Refer to 3-address code (TAC);
                }
            } else {
                v85 = v90 = 0x692ac;
                v91 = 0x28ca(MEM[v70 + 68]);
                require(v91 <= MEM[v70], Error('Invalid revert reason'));
                MCOPY(MEM[64] + 32, 32 + MEM[64], 0);
                MEM[MEM[64] + 32] = 0;
                MCOPY(MEM[64] + 32, 0x6a16b, MEM[0x6a14b]);
                MEM[MEM[64] + 32 + MEM[0x6a14b]] = 0;
                MEM[MEM[64] + 32 + MEM[0x6a14b]] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                MEM[v90] = 1 + (MEM[64] + 32 + MEM[0x6a14b]) - 0x69221 - 32;
                require(!((v90 + (1 + (MEM[64] + 32 + MEM[0x6a14b]) - 0x69221 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v90 + (1 + (MEM[64] + 32 + MEM[0x6a14b]) - 0x69221 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v90)), Panic(65)); // failed memory allocation (too much memory)
            }
            v92 = new uint256[](MEM[v85]);
            MCOPY(v92.data, 32 + v85, MEM[v85]);
            MEM[32 + (MEM[v85] + v92)] = 0;
            revert(Error(v92));
        } else {
            require(varg0 < MEM[MEM[v12]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (uint8(MEM[(varg0 << 5) + MEM[v12] + 32]) - varg0) {
                require(varg0 < MEM[MEM[v12]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (2 == uint8(MEM[(varg0 << 5) + MEM[v12] + 32])) {
                    v44 = v93 = MEM[64];
                    v94 = address(MEM[varg0]).balanceOf(this).gas(msg.gas);
                    if (v94) {
                        v12 = v95 = 9741;
                        varg0 = v96 = 0;
                        if (v94) {
                            v48 = v97 = 9771;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v93 + 32 > uint64.max) | (v93 + 32 < v93)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v93 + 32;
                                v50 = v98 = v93 + 32;
                            }
                        }
                    }
                }
            } else {
                v99 = this.balance;
                v100 = _SafeSub(v99, varg0);
                0x1f06(address(MEM[varg0 + 32]), v100);
            }
        }
    }
    if (varg0) {
        v101 = 0x1e38(varg0, _transitRouter, varg0);
        return ;
    } else {
        return ;
    }
}

function 0x23e() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x24f() private { 
    v0 = new struct(7);
    require(!((v0 + uint8(-32) > uint64.max) | (v0 + uint8(-32) < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x26d() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x28ca(uint256 varg0) private { 
    require(68 <= 68 + varg0, Panic(17)); // arithmetic overflow or underflow
    return 68 + varg0;
}

function 0x28eb(uint256 varg0) private { 
    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 2;
}

function 0x28f9(uint256 varg0) private { 
    require(varg0 <= varg0 + 3, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 3;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x2914(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2991(uint256 varg0) private { 
    require(!((varg0 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff) - varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 << 1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x2b3e(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(varg2 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1 = MEM[(varg2 << 5) + MEM[v0] + 32] + 32;
    require(MEM[(varg2 << 5) + MEM[v0] + 32] + MEM[MEM[(varg2 << 5) + MEM[v0] + 32]] + 32 - v1 >= 96);
    require(!(address(MEM[v1 + 32]) - MEM[v1 + 32]));
    varg5 = v2 = !(MEM[v1 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000);
    varg5 = v3 = address(MEM[v1 + 32]);
    varg5 = v4 = !bool(MEM[v1 + 64] >> 248);
    varg5 = v5 = address(MEM[v1 + 64]);
    varg5 = v6 = bool(MEM[v1] >> 248);
    varg5 = v7 = address(MEM[v1]);
    v8, /* uint112 */ v9, /* uint112 */ v10, /* uint32 */ v11 = v5.getReserves().gas(msg.gas);
    if (v8) {
        v9 = v12 = 0;
        v10 = v13 = 0;
        if (v8) {
            v14 = 96;
            if (96 > RETURNDATASIZE()) {
                v14 = v15 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v14 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v10 - uint112(v10)));
            require(!(v11 - uint32(v11)));
        }
        varg5 = v16 = uint112(v10);
        varg5 = v17 = uint112(v9);
        if (!bool(MEM[v1 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        }
        v18 = MEM[64];
        v19 = varg0.balanceOf(address(v5)).gas(msg.gas);
        if (v19) {
            varg5 = v20 = 19105;
            v21 = v22 = 0;
            if (v19) {
                v23 = v24 = 19881;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v18 + 32 > uint64.max) | (v18 + 32 < v18)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v18 + 32;
                    v25 = v26 = v18 + 32;
                }
            }
            varg5 = v21 - varg5;
            require(varg5 <= v21, Panic(17)); // arithmetic overflow or underflow
            if (varg5 - 1) {
                if (2 - varg5) {
                    v18 = v27 = MEM[64];
                    v28 = varg5.getAmountOut(varg5, varg5, varg5).gas(msg.gas);
                    if (v28) {
                        v21 = v29 = 0;
                        if (v28) {
                            v23 = v30 = 19850;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v27 + 32 > uint64.max) | (v27 + 32 < v27)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v27 + 32;
                                v25 = v31 = v27 + 32;
                            }
                        }
                    }
                } else {
                    v32 = MEM[64];
                    v33 = varg5.token0().gas(msg.gas);
                    if (v33) {
                        varg5 = v34 = 0;
                        if (v33) {
                            v35 = v36 = 19754;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v32 + 32 > uint64.max) | (v32 + 32 < v32)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v32 + 32;
                                v37 = v38 = v32 + 32;
                            }
                        }
                        v32 = v39 = MEM[64];
                        v40 = varg5.token1().gas(msg.gas);
                        if (v40) {
                            varg5 = v41 = 19586;
                            varg5 = v42 = 0;
                            varg5 = v43 = 19614;
                            if (v40) {
                                v35 = v44 = 19723;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v39 + 32 > uint64.max) | (v39 + 32 < v39)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v39 + 32;
                                    v37 = v45 = v39 + 32;
                                }
                            }
                        }
                        v46 = new uint256[](2);
                        require(!((v46 + 96 > uint64.max) | (v46 + 96 < v46)), Panic(65)); // failed memory allocation (too much memory)
                        CALLDATACOPY(v46.data, msg.data.length, 64);
                        if (varg5 == varg5) {
                            varg5 = v47, varg5 = v48, varg5 = v49, varg5 = v50, varg5 = v51, varg5 = v52 = 0x4c58(varg5, 19568, varg5, varg5, varg5, varg5, varg5);
                        } else {
                            varg5 = v53, varg5 = v54, varg5 = v55, varg5 = v56, varg5 = v57, varg5 = v58 = 0x4c58(varg5, 19568, varg5, varg5, varg5, varg5, varg5);
                        }
                        if (varg5 != varg5) {
                        }
                        v59 = v60 = 0x69dba;
                        while (1) {
                            require(1 < MEM[varg5], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            // Unknown jump to Block ['0x4cb90x2b3e', '0x69dba0x2b3e']. Refer to 3-address code (TAC);
                            MEM[64 + varg5] = address(varg5);
                            v61 = new uint256[](MEM[varg5]);
                            v62 = v61.data;
                            v63 = varg5 + 32;
                            v64 = 0;
                            while (v64 < MEM[varg5]) {
                                MEM[v62] = address(MEM[v63]);
                                v62 += 32;
                                v63 = v63 + 32;
                                v64 += 1;
                            }
                            v65 = varg5.getAmountsOut(varg5, v61).gas(msg.gas);
                            if (!v65) {
                                break;
                            } else {
                                v59 = v66 = 19641;
                                varg5 = v67 = 0;
                                if (v65) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(0xd06ca61f00000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                    varg5 = v68 = 0x13e2(MEM[64] + 0xd06ca61f00000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                }
                            }
                        }
                        v21 = v69 = MEM[64 + varg5];
                        require(!((v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v32 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v37 = v32 + RETURNDATASIZE();
                        require(v37 - v32 >= 32);
                        varg5 = v70 = MEM[v32];
                        require(!(address(v70) - v70));
                        // Unknown jump to Block ['0x4d0b0x2b3e', '0x4d2a0x2b3e']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x4c420x2b3e. Refer to 3-address code (TAC);
                    }
                }
            } else {
                v18 = v71 = MEM[64];
                v72 = varg5.swapFee().gas(msg.gas);
                if (v72) {
                    v21 = v73 = 0;
                    if (v72) {
                        varg5 = v74 = 32;
                        v23 = v75 = 19420;
                        if (v74 <= RETURNDATASIZE()) {
                            require(!((v71 + 32 > uint64.max) | (v71 + 32 < v71)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v71 + 32;
                            v25 = v76 = v71 + v74;
                        }
                    }
                }
            }
            v18 = v77 = MEM[64];
            v78 = varg5.getAmountOut(varg5, varg5, varg5, v21).gas(msg.gas);
            if (v78) {
                v21 = v79 = 0;
                if (v78) {
                    v23 = v80 = 19388;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v77 + 32 > uint64.max) | (v77 + 32 < v77)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v77 + 32;
                        v25 = v81 = v77 + 32;
                    }
                }
            }
            if (!varg5) {
                v21 = v82 = 0;
            } else {
                v21 = v83 = 0;
            }
            if (!varg5) {
                require(varg5.code.size);
                v84 = v85 = MEM[64];
                MEM[v85] = 0x6d9a640a00000000000000000000000000000000000000000000000000000000;
                MEM[v85 + 4] = v21;
                MEM[v85 + 36] = v21;
                MEM[v85 + 68] = address(varg5);
                v86 = v87 = 0;
                v88 = v89 = v85 + 100;
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                require(varg5.code.size);
                v86 = 0;
                v84 = MEM[64];
                MEM[v84] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                MEM[v84 + 4] = v21;
                MEM[v84 + 4 + 32] = v21;
                MEM[v84 + 4 + 64] = address(varg5);
                MEM[v84 + 4 + 96] = 128;
                MEM[v84 + 4 + 128] = 0;
                MCOPY(v84 + 4 + 128 + 32, 32 + MEM[64], 0);
                MEM[32 + (v84 + 4 + 128)] = 0;
                v88 = v84 + 4 + 128 + 32;
            }
            v90 = varg5.call(MEM[v2b3e0x4b3f:v2b3e0x4b3f + v743V0x499fV0x4b370x2b3e - v2b3e0x4b3f], MEM[v2b3e0x4b3f:v2b3e0x4b3f + v2b3e0x4b37]).value(v86).gas(msg.gas);
            if (v90) {
                if (v90) {
                    require(!((v84 > uint64.max) | (v84 < v84)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v84;
                    require(v84 - v84 >= 0);
                    return ;
                } else {
                    return ;
                }
            }
            // Unknown jump to Block 0x4b180x2b3e. Refer to 3-address code (TAC);
            require(!((v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v18 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v25 = v18 + RETURNDATASIZE();
            require(v25 - v18 >= 32);
            v21 = MEM[v18];
            // Unknown jump to Block ['0x4bbc0x2b3e', '0x4bdc0x2b3e', '0x4d8a0x2b3e', '0x4da90x2b3e']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x4b150x2b3e. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x4ad00x2b3e. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x4d6a0x2b3e. Refer to 3-address code (TAC);
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x2dbd(uint256 varg0, address varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = 0;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, 0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
        }
    }
    require(v2, Error('TransferHelper: APPROVE_FAILED'));
    return ;
}

function 0x2e88(uint256 varg0, address varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
        }
    }
    require(v2, Error('TransferHelper: APPROVE_FAILED'));
    return ;
}

function 0x2ec5(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
        }
    }
    require(v2, Error('TransferHelper: APPROVE_FAILED'));
    return ;
}

function 0x307a(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (0 == varg2) {
        v0 = v1 = 0;
        v2 = v3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v0 = v4 = 0;
        v2 = v5 = 0x1000276a4;
    }
    v6 = 0x26d();
    v6.word0 = bool(varg2);
    v6.word1 = varg3;
    v6.word2 = address(v2);
    v7 = new uint256[](v8);
    v8 = MEM[varg4];
    MCOPY(v7.data, 32 + varg4, v8);
    MEM[32 + (v8 + v7)] = 0;
    v9, /* uint256 */ v10 = varg0.swap(address(MEM[varg1]), address(MEM[varg1 + 32]), uint24(MEM[varg1 + 64]), int24(MEM[varg1 + 96]), address(MEM[128 + varg1]), bool(v6.word0), v6.word1, address(v6.word2), v7).value(v0).gas(msg.gas);
    if (!v9) {
        v11 = RETURNDATASIZE();
        revert(v12, v12, v12, v12, v12, v12, v12, v12, v12, v8);
    } else {
        v10 = v13 = 0;
        if (v9) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v14 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v14 = v15 = MEM[64] + 32;
            }
            require(v14 - MEM[64] >= 32);
        }
        if (0 == (bool(varg2) == 0 > varg3)) {
            return v10 >> 128;
        } else {
            return int128(v10);
        }
    }
}

function 0x314c(uint256 varg0) private { 
    require(int128(varg0) >= 0, SafeCastOverflow());
    return uint128(varg0);
}

function 0x3171(uint256 varg0, uint256 varg1) private { 
    v0 = 0x4ec5(varg0, varg1);
    require((address(varg0)).code.size);
    v1 = address(varg0).sync(address(varg1)).gas(msg.gas);
    if (v1) {
        if (v1) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        if (address(varg1)) {
            0x4f03(varg1, address(varg0), v0);
            v2 = v3 = MEM[64];
            v4 = address(varg0).settle().gas(msg.gas);
            if (v4) {
                if (!v4) {
                    return ;
                }
            }
        } else {
            v2 = MEM[64];
            v5 = address(varg0).settle().value(v0).gas(msg.gas);
            if (v5) {
                if (!v5) {
                    return ;
                }
            }
        }
        if (32 > RETURNDATASIZE()) {
            require(!((v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = v2 + RETURNDATASIZE();
        } else {
            require(!((v2 + 32 > uint64.max) | (v2 + 32 < v2)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v2 + 32;
            v6 = v7 = v2 + 32;
        }
        require(v6 - v2 >= 32);
        return ;
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x3472(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (!varg1) {
        v0 = v1 = 0;
        v2 = v3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v0 = v4 = 0;
        v2 = v5 = 0x1000276a4;
    }
    v6 = 0x26d();
    v6.word0 = bool(varg1);
    v6.word1 = varg2;
    v6.word2 = address(v2);
    v7 = new uint256[](v8);
    v8 = MEM[varg3];
    MCOPY(v7.data, 32 + varg3, v8);
    MEM[32 + (v8 + v7)] = 0;
    v9, v10 = address(MEM[varg0 + 96]).swap(address(MEM[varg0]), address(MEM[varg0 + 32]), address(MEM[varg0 + 64]), address(MEM[varg0 + 96]), uint24(MEM[varg0 + 128]), MEM[160 + varg0], bool(v6.word0), v6.word1, address(v6.word2), v7).value(v0).gas(msg.gas);
    if (!v9) {
        v11 = RETURNDATASIZE();
        revert(v12, v12, v12, v12, v12, v12, v12, v12, v12, v7);
    } else {
        v10 = v13 = 0;
        if (v9) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v14 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v14 = v15 = MEM[64] + 32;
            }
            require(v14 - MEM[64] >= 32);
            if (0 != (bool(varg1) == 0 > varg2)) {
                return int128(v10);
            }
        } else if (0 != (bool(varg1) == 0 > varg2)) {
            return int128(v13);
        }
        return v10 >> 128;
    }
}

function 0x350d(uint256 varg0, uint256 varg1) private { 
    v0 = 0x4f94(varg0, varg1);
    require((address(varg0)).code.size);
    v1 = address(varg0).sync(address(varg1)).gas(msg.gas);
    if (v1) {
        if (v1) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        if (address(varg1)) {
            0x4f03(varg1, address(varg0), v0);
            v2 = v3 = MEM[64];
            v4 = address(varg0).settle().gas(msg.gas);
            if (v4) {
                if (!v4) {
                    return ;
                }
            }
        } else {
            v2 = MEM[64];
            v5 = address(varg0).settle().value(v0).gas(msg.gas);
            if (v5) {
                if (!v5) {
                    return ;
                }
            }
        }
        if (32 > RETURNDATASIZE()) {
            require(!((v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v2 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v6 = v2 + RETURNDATASIZE();
        } else {
            require(!((v2 + 32 > uint64.max) | (v2 + 32 < v2)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v2 + 32;
            v6 = v7 = v2 + 32;
        }
        require(v6 - v2 >= 32);
        return ;
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x35db(uint256 varg0, uint256 varg1, bytes varg2) private { 
    v0 = v1 = varg0 > 0;
    if (varg0 <= 0) {
        v0 = v2 = varg1 > 0;
    }
    require(v0, Error(0x4d30206f72204d31));
    require(varg2 + varg2.length - varg2 >= 64);
    require(!(address(MEM[varg2.data]) - MEM[varg2.data]));
    require(!(address(MEM[varg2 + 64]) - MEM[varg2 + 64]));
    if (varg0 <= 0) {
    }
    v3 = new bytes[](68);
    MEM[v3.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v3 + 36] = msg.sender;
    MEM[v3 + 68] = varg1;
    require(!((v3 + 128 > uint64.max) | (v3 + 128 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.length;
    v5 = v6, /* uint256 */ v7 = address(MEM[varg2 + 64]).transfer(msg.sender, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v8 = v9 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v8 = v10 = new bytes[](RETURNDATASIZE());
        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
        v7 = v10.data;
        RETURNDATACOPY(v7, 0, RETURNDATASIZE());
    }
    if (v6) {
        v5 = v11 = !MEM[v8];
        if (bool(MEM[v8])) {
            require(v8 + MEM[v8] + 32 - (v8 + 32) >= 32);
            v5 = MEM[v8 + 32];
            require(!(bool(v5) - v5));
        }
    }
    require(v5, Error('TransferHelper: TRANSFER_TOKEN_FAILED'));
    return ;
}

function 0x36a1(struct(2) varg0, uint256 varg1) private { 
    require(varg1 < varg0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 32 + (varg1 + varg0);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x392d(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
        }
    }
    require(v2, Error('TransferHelper: TRANSFER_TOKEN_FAILED'));
    return ;
}

function 0x3a12(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] <= uint64.max);
        v6 = varg0 + MEM[v4];
        require(varg1 - v6 - 32 >= 192);
        v7 = new struct(6);
        require(!((v7 + 192 > uint64.max) | (v7 + 192 < v7)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(MEM[v6 + 32]) - MEM[v6 + 32]));
        v7.word0 = MEM[v6 + 32];
        require(!(uint24(MEM[v6 + 64]) - MEM[v6 + 64]));
        v7.word1 = MEM[v6 + 64];
        require(!(address(MEM[v6 + 96]) - MEM[v6 + 96]));
        v7.word2 = MEM[v6 + 96];
        require(!(address(MEM[v6 + 128]) - MEM[v6 + 128]));
        v7.word3 = MEM[v6 + 128];
        require(MEM[v6 + 160] <= uint64.max);
        v8 = 0x14a6(v6 + MEM[v6 + 160] + 32, varg1);
        v7.word4 = v8;
        v7.word5 = MEM[v6 + 192];
        MEM[v2] = v7;
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    return v1;
}

function 0x3c44(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + MEM[varg1];
    require(v0 - varg1 >= 32);
    require(MEM[varg1 + 32] <= uint64.max);
    v1 = varg1 + MEM[varg1 + 32];
    require(v0 - v1 >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 > uint64.max) | (v2 + 160 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[v1 + 32]) - MEM[v1 + 32]));
    v2.word0 = MEM[v1 + 32];
    require(!(address(MEM[v1 + 64]) - MEM[v1 + 64]));
    v2.word1 = MEM[v1 + 64];
    require(!(address(MEM[v1 + 96]) - MEM[v1 + 96]));
    v2.word2 = MEM[v1 + 96];
    require(!(address(MEM[v1 + 128]) - MEM[v1 + 128]));
    v2.word3 = MEM[v1 + 128];
    require(MEM[v1 + 160] <= uint64.max);
    v3 = 0x3a12(v1 + MEM[v1 + 160] + 32, v0 + 32);
    v2.word4 = v3;
    MEM[MEM[64] + 32] = varg0;
    MEM[MEM[64] + 32 + 32] = 64;
    MEM[MEM[64] + 32 + 64] = address(v2.word0);
    MEM[MEM[64] + 32 + 96] = address(v2.word1);
    MEM[MEM[64] + 32 + 128] = address(v2.word2);
    MEM[MEM[64] + 32 + 160] = address(v2.word3);
    MEM[MEM[64] + 32 + 192] = 160;
    MEM[MEM[64] + 32 + 224] = v4.length;
    v5 = MEM[64] + 32 + (uint8.max + 1);
    v6 = v7 = MEM[64] + 32 + (v4.length << 5) + (uint8.max + 1);
    v8 = v4.data;
    v9 = 0;
    while (v9 < v4.length) {
        MEM[v5] = v6 - (MEM[64] + 32) - 256;
        MEM[v6] = address(MEM[MEM[v8]]);
        MEM[v6 + 32] = uint24(MEM[MEM[v8] + 32]);
        MEM[v6 + 64] = address(MEM[MEM[v8] + 64]);
        MEM[v6 + 96] = address(MEM[MEM[v8] + 96]);
        MEM[v6 + 128] = 192;
        MEM[v6 + 192] = MEM[MEM[MEM[v8] + 128]];
        MCOPY(v6 + 192 + 32, 32 + MEM[MEM[v8] + 128], MEM[MEM[MEM[v8] + 128]]);
        MEM[32 + (MEM[MEM[MEM[v8] + 128]] + (v6 + 192))] = 0;
        v6 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[MEM[v8] + 128]]) + (v6 + 192) + 32;
        MEM[v6 + 160] = MEM[MEM[v8] + 160];
        v8 = v8 + 32;
        v5 = v5 + 32;
        v9 = v9 + 1;
    }
    require(!((MEM[64] + (v6 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](v6 - MEM[64] - 32);
    MCOPY(v10.data, 32 + MEM[64], v6 - MEM[64] - 32);
    MEM[32 + (v6 - MEM[64] - 32 + v10)] = 0;
    v11 = address(v2.word1).lock(v10).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    if (v11) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x8154831900000000000000000000000000000000000000000000000000000000 <= uint64.max);
        v12 = 0x14a6(MEM[64] + 0x8154831900000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
        return ;
    } else {
        return ;
    }
}

function 0x3d70(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (v0 << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] <= uint64.max);
        v6 = varg0 + MEM[v4];
        require(varg1 - v6 - 32 >= 160);
        v7 = new struct(5);
        require(!((v7 + 160 > uint64.max) | (v7 + 160 < v7)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(MEM[v6 + 32]) - MEM[v6 + 32]));
        v7.word0 = MEM[v6 + 32];
        require(!(uint24(MEM[v6 + 64]) - MEM[v6 + 64]));
        v7.word1 = MEM[v6 + 64];
        require(!(int24(MEM[v6 + 96]) - MEM[v6 + 96]));
        v7.word2 = MEM[v6 + 96];
        require(!(address(MEM[v6 + 128]) - MEM[v6 + 128]));
        v7.word3 = MEM[v6 + 128];
        require(MEM[v6 + 160] <= uint64.max);
        v8 = 0x14a6(v6 + MEM[v6 + 160] + 32, varg1);
        v7.word4 = v8;
        MEM[v2] = v7;
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    return v1;
}

function 0x3f6a(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + MEM[varg1];
    require(v0 - varg1 >= 32);
    require(MEM[varg1 + 32] <= uint64.max);
    v1 = varg1 + MEM[varg1 + 32];
    require(v0 - v1 >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 > uint64.max) | (v2 + 160 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(MEM[v1 + 32]) - MEM[v1 + 32]));
    v2.word0 = MEM[v1 + 32];
    require(!(address(MEM[v1 + 64]) - MEM[v1 + 64]));
    v2.word1 = MEM[v1 + 64];
    require(!(address(MEM[v1 + 96]) - MEM[v1 + 96]));
    v2.word2 = MEM[v1 + 96];
    require(!(address(MEM[v1 + 128]) - MEM[v1 + 128]));
    v2.word3 = MEM[v1 + 128];
    require(MEM[v1 + 160] <= uint64.max);
    v3 = 0x3d70(v1 + MEM[v1 + 160] + 32, v0 + 32);
    v2.word4 = v3;
    MEM[MEM[64] + 32] = varg0;
    MEM[MEM[64] + 32 + 32] = 64;
    MEM[MEM[64] + 32 + 64] = address(v2.word0);
    MEM[MEM[64] + 32 + 96] = address(v2.word1);
    MEM[MEM[64] + 32 + 128] = address(v2.word2);
    MEM[MEM[64] + 32 + 160] = address(v2.word3);
    MEM[MEM[64] + 32 + 192] = 160;
    MEM[MEM[64] + 32 + 224] = v4.length;
    v5 = MEM[64] + 32 + (uint8.max + 1);
    v6 = v7 = MEM[64] + 32 + (v4.length << 5) + (uint8.max + 1);
    v8 = v4.data;
    v9 = 0;
    while (v9 < v4.length) {
        MEM[v5] = v6 - (MEM[64] + 32) - 256;
        MEM[v6] = address(MEM[MEM[v8]]);
        MEM[v6 + 32] = uint24(MEM[MEM[v8] + 32]);
        MEM[v6 + 64] = int24(MEM[MEM[v8] + 64]);
        MEM[v6 + 96] = address(MEM[MEM[v8] + 96]);
        MEM[v6 + 128] = 160;
        MEM[v6 + 160] = MEM[MEM[MEM[v8] + 128]];
        MCOPY(v6 + 160 + 32, 32 + MEM[MEM[v8] + 128], MEM[MEM[MEM[v8] + 128]]);
        MEM[32 + (MEM[MEM[MEM[v8] + 128]] + (v6 + 160))] = 0;
        v6 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[MEM[v8] + 128]]) + (v6 + 160) + 32;
        v8 = v8 + 32;
        v5 = v5 + 32;
        v9 = v9 + 1;
    }
    require(!((MEM[64] + (v6 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](v6 - MEM[64] - 32);
    MCOPY(v10.data, 32 + MEM[64], v6 - MEM[64] - 32);
    MEM[32 + (v6 - MEM[64] - 32 + v10)] = 0;
    v11 = address(v2.word1).unlock(v10).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    if (v11) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        v12 = 0x14a6(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
        return ;
    } else {
        return ;
    }
}

function 0x41be(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + 32;
    require(varg1 + MEM[varg1] + 32 - v0 >= 192);
    require(!(address(MEM[v0]) - MEM[v0]));
    v1 = MEM[v0 + 32];
    require(!(address(v1) - v1));
    require(!(address(MEM[v0 + 64]) - MEM[v0 + 64]));
    v2 = v3 = MEM[v0 + 96];
    require(!(address(v3) - v3));
    v2 = v4 = MEM[v0 + 128];
    require(!(v4 - int128(v4)));
    v2 = v5 = MEM[v0 + 160];
    require(!(v5 - int128(v5)));
    v6 = v7 = MEM[64];
    v2 = v8 = address(MEM[v0 + 64]);
    v9 = v8.coins(uint128(v4)).gas(msg.gas);
    if (v9) {
        v1 = v10 = 16946;
        v11 = v12 = 0;
        if (v9) {
            v13 = v14 = 17189;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v15 = v16 = v7 + 32;
            }
        }
        require(address(MEM[v0]) == address(v11), Error('CurveStableNGAdapter: fromToken not match'));
        v6 = v17 = MEM[64];
        v18 = v2.coins(uint128(v2)).gas(msg.gas);
        if (v18) {
            v1 = v19 = 17029;
            v2 = v20 = 17034;
            v11 = v21 = 0;
            if (v18) {
                v13 = v22 = 17151;
                v23 = v24 = 32;
                if (32 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x43050x41be. Refer to 3-address code (TAC);
                }
            }
        }
        require(address(v11) == address(v1), Error('CurveStableNGAdapter: toToken not match'));
        v25 = new bytes[](68);
        MEM[v25.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v25 + 36] = address(v2);
        MEM[v25 + 68] = v2;
        require(!((v25 + 128 > uint64.max) | (v25 + 128 < v25)), Panic(65)); // failed memory allocation (too much memory)
        v26 = v25.length;
        v27 = v28, /* uint256 */ v29 = address(MEM[v0]).approve(address(v2), v2).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v30 = v31 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v30 = v32 = new bytes[](RETURNDATASIZE());
            require(!((v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
            v29 = v32.data;
            RETURNDATACOPY(v29, 0, RETURNDATASIZE());
        }
        if (v28) {
            v27 = v33 = !MEM[v30];
            if (bool(MEM[v30])) {
                require(v30 + MEM[v30] + 32 - (v30 + 32) >= 32);
                v27 = MEM[v30 + 32];
                require(!(bool(v27) - v27));
            }
        }
        require(v27, Error('TransferHelper: APPROVE_FAILED'));
        require(v2.code.size);
        v34 = v2.exchange(int128(v2), int128(v2), v2, 0, address(v2)).gas(msg.gas);
        if (v34) {
            if (v34) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                return ;
            } else {
                return ;
            }
        }
        v23 = RETURNDATASIZE();
        require(!((v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v15 = v6 + v23;
        require(v15 - v6 >= 32);
        v11 = MEM[v6];
        require(!(address(v11) - v11));
        // Unknown jump to Block ['0x42ff', '0x4325']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x4271. Refer to 3-address code (TAC);
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x4467(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + 32;
    require(varg1 + MEM[varg1] + 32 - v0 >= 160);
    require(!(address(MEM[v0]) - MEM[v0]));
    require(!(address(MEM[v0 + 32]) - MEM[v0 + 32]));
    require(!(address(MEM[v0 + 64]) - MEM[v0 + 64]));
    require(!(address(MEM[v0 + 96]) - MEM[v0 + 96]));
    require(!(bool(MEM[v0 + 128]) - MEM[v0 + 128]));
    varg0 = v1 = 0;
    v2 = v3 = address(MEM[v0 + 64]);
    if (MEM[v0 + 128]) {
        0x512e(v3, varg0);
        v2 = v4 = 0;
    }
    varg0 = v5 = _SafeSub(varg0, varg0 % 10 ** 9);
    v6 = _SafeSub(varg0, v5);
    v7 = 0x1dc3(v2);
    if (!v7) {
        v8 = v9 = 0x699c4;
        if (v6) {
            0x392d(v2, address(MEM[v0 + 96]), v6);
        }
        0x2ec5(v2, address(MEM[v0]), v5);
        v10, v11 = 0x44d8(address(MEM[v0 + 96]), 0x69a0f, varg0);
        v11.word3 = 0;
        v11.word4 = 0;
        v11.word5 = v10;
        v11.word6 = 1;
        v12 = v13 = MEM[64];
        v14 = v15 = v13 + 32 + 224;
        MEM[v13 + 32] = v11.word0;
        MEM[v13 + 32 + 32] = address(v11.word1);
        MEM[v13 + 32 + 64] = address(v11.word2);
        MEM[v13 + 32 + 96] = v11.word3;
        MEM[v13 + 32 + 128] = v11.word4;
        MEM[v13 + 32 + 160] = v11.word5;
        MEM[v13 + 32 + 192] = v11.word6;
    } else {
        v8 = v16 = 0x6986b;
        if (v6) {
            0x1f06(address(MEM[v0 + 96]), v6);
        }
        v17, v18 = 0x44d8(address(MEM[v0 + 96]), 0x69892, varg0);
        v18.word3 = 0;
        v18.word4 = 0;
        v18.word5 = v17;
        v18.word6 = 1;
        v12 = v19 = MEM[64];
        v14 = v20 = v19 + 32 + 224;
        MEM[v19 + 32] = v18.word0;
        MEM[v19 + 32 + 32] = address(v18.word1);
        MEM[v19 + 32 + 64] = address(v18.word2);
        MEM[v19 + 32 + 96] = v18.word3;
        MEM[v19 + 32 + 128] = v18.word4;
        MEM[v19 + 32 + 160] = v18.word5;
        MEM[v19 + 32 + 192] = v18.word6;
    }
    MEM[v12] = v14 - v12 - 32;
    require(!((v12 + (v14 - v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (v14 - v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v12 + (v14 - v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    // Unknown jump to Block ['0x6986b', '0x699c4']. Refer to 3-address code (TAC);
    v21 = v22 = MEM[64];
    require(!((v22 + 32 > uint64.max) | (v22 + 32 < v22)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v22 + 32;
    MEM[v22] = 0;
    require((address(MEM[v0])).code.size);
    v23 = new uint256[](MEM[v12]);
    MCOPY(v23.data, 32 + v12, MEM[v12]);
    MEM[32 + (MEM[v12] + v23)] = 0;
    v24 = new uint256[](MEM[v21]);
    MCOPY(v24.data, 32 + v21, MEM[v21]);
    MEM[32 + (MEM[v21] + v24)] = 0;
    v25 = address(MEM[v0]).call(0x2ff2dcc00000000000000000000000000000000000000000000000000000000, v23, 0, v24).value(varg0).gas(msg.gas);
    require(v25, MEM[64], RETURNDATASIZE());
    if (v25) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
    v21 = MEM[64];
    require(!((v21 + 32 > uint64.max) | (v21 + 32 < v21)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v21 + 32;
    MEM[v21] = 0;
}

function 0x44d8(address varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x24f();
    v0.word0 = 0;
    v0.word1 = address(v1);
    v0.word2 = varg0;
    return varg2, v0;
}

function 0x46df(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x46ef(uint256 varg0, uint256 varg1) private { 
    require(varg1 + MEM[varg1] + 32 - (varg1 + 32) >= 96);
    require(!(address(MEM[varg1 + 32]) - MEM[varg1 + 32]));
    require(!(address(MEM[varg1 + 32 + 32]) - MEM[varg1 + 32 + 32]));
    if (bool(MEM[varg1 + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        v0 = 0x51e8(varg0);
        v1 = new struct(3);
        v2 = v1.data;
        v1.word1 = address(MEM[varg1 + 32 + 64]);
        v1.word2 = address(MEM[varg1 + 32 + 32]);
        v1.word0 = 64;
        require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v4 = MEM[64];
        v5 = new bytes[](v1.word0.length);
        MCOPY(v5.data, v1.data, v1.word0.length);
        v5[v1.word0.length] = 0;
        v6 = address(MEM[varg1 + 32 + 64]).swap(address(MEM[varg1 + 32]), 0, v0, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v5).gas(msg.gas);
        if (v6) {
            v7 = v8 = 0x69c68;
            v9 = v10 = 0x69c8a;
            v11 = v12 = 0;
            if (v6) {
                v13 = v14 = 18592;
                if (64 <= RETURNDATASIZE()) {
                    require(!((v4 + 64 > uint64.max) | (v4 + 64 < v4)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v4 + 64;
                    v15 = v16 = v4 + 64;
                }
            }
        }
    } else {
        v17 = 0x51e8(varg0);
        v18 = new struct(3);
        v19 = v18.data;
        v18.word1 = address(MEM[varg1 + 32 + 64]);
        v18.word2 = address(MEM[varg1 + 32 + 32]);
        v18.word0 = 64;
        require(!((v18 + 96 > uint64.max) | (v18 + 96 < v18)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v20 = MEM[64];
        v21 = new bytes[](v18.word0.length);
        MCOPY(v21.data, v18.data, v18.word0.length);
        v21[v18.word0.length] = 0;
        v22 = address(MEM[varg1 + 32 + 64]).swap(address(MEM[varg1 + 32]), bool(!(MEM[varg1 + 32 + 64] & 0x8000000000000000000000000000000000000000000000000000000000000000)), v17, address(0x1000276a4), v21).gas(msg.gas);
        if (v22) {
            v7 = v23 = 0x69bfb;
            v9 = v24 = 0x69c1d;
            v11 = v25 = 0;
            if (v22) {
                v13 = v26 = 18384;
                v27 = v28 = 64;
                if (64 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x47d8. Refer to 3-address code (TAC);
                }
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    require(v11 != int256.min, Panic(17)); // arithmetic overflow or underflow
    // Unknown jump to Block ['0x69c1d', '0x69c8a']. Refer to 3-address code (TAC);
    require(0 - v11 >= 0, Error('SafeCast: value must be positive'));
    // Unknown jump to Block ['0x69bfb', '0x69c68']. Refer to 3-address code (TAC);
    return ;
    return ;
    // Unknown jump to Block 0x524f. Refer to 3-address code (TAC);
    require(!((v3 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v3 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v15 = v29 = v3 + v27;
    require(v15 - v3 >= 64);
    v11 = v30 = MEM[v3];
    v11 = v31 = MEM[v3 + 32];
    // Unknown jump to Block ['0x47d0', '0x48a0']. Refer to 3-address code (TAC);
    v27 = v32 = RETURNDATASIZE();
    // Unknown jump to Block 0x47be. Refer to 3-address code (TAC);
}

function 0x4c58(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v0.data] = varg0;
    return varg2, varg3, varg4, varg5, varg6, v0;
}

function 0x4ec5(uint256 varg0, uint256 varg1) private { 
    v0 = 0x529d(varg0, this, varg1);
    require(v0 <= 0, DeltaNotNegative(address(varg1)));
    v1 = 0x46df(v0);
    return v1;
}

function 0x4f03(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg0)) {
        v0 = varg0.transfer(address(varg1), varg2).gas(msg.gas);
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        if (!(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v0)) {
            v1 = new uint256[](RETURNDATASIZE());
            RETURNDATACOPY(v1.data, 0, RETURNDATASIZE());
            MEM[MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 164] = 4;
            MEM[MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 196] = 0xf27f64e400000000000000000000000000000000000000000000000000000000;
            revert(WrappedError(address(varg0), 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v1, (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 160));
        } else {
            return ;
        }
    } else {
        v2 = varg1.call().value(varg2).gas(msg.gas);
        if (!v2) {
            v3 = new uint256[](RETURNDATASIZE());
            RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
            MEM[MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 164] = 4;
            MEM[MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 196] = 0xf4b3b1bc00000000000000000000000000000000000000000000000000000000;
            revert(WrappedError(address(varg1), 0, v3, (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 160));
        } else {
            return ;
        }
    }
}

function 0x4f94(address varg0, address varg1) private { 
    v0, /* uint256 */ v1 = varg0.currencyDelta(this, varg1).gas(msg.gas);
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
    require(v1 <= 0, DeltaNotNegative(varg1));
    v5 = 0x46df(v1);
    return v5;
}

function 0x5008(uint256 varg0) private { 
    v0 = new struct(2);
    v1 = v0.data;
    v0.word1 = varg0;
    v0.word0 = 32;
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(1, Panic(17)); // arithmetic overflow or underflow
    require(2 <= 66, Panic(17)); // arithmetic overflow or underflow
    require(66 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](66);
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(66 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v2.data, msg.data.length, 96);
    require(v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[v2.data] = 0x30 & 0xFF;
    require(1 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[33 + v2] = 0x78 & 0xFF;
    v3 = v4 = 0;
    while (v3 < v0.word0.length) {
        v5 = 0x36a1(v0, v3);
        if (uint8((0xf00000000000000000000000000000000000000000000000000000000000000 & bytes1(MEM[v5]) >> 4) >> 248) < 16) {
            v6 = 0x2991(v3);
            v7 = 0x28eb(v6);
            v8 = 0x36a1(v9, v7);
            MEM8[v8] = (byte('0123456789abcdef', uint8((0xf00000000000000000000000000000000000000000000000000000000000000 & bytes1(MEM[v5]) >> 4) >> 248))) & 0xFF;
            v10 = 0x36a1(v0, v3);
            if (uint8((bytes1(MEM[v10]) & 0xf00000000000000000000000000000000000000000000000000000000000000) >> 248) < 16) {
                v11 = 0x2991(v3);
                v12 = 0x28f9(v11);
                v13 = 0x36a1(v9, v12);
                MEM8[v13] = (byte('0123456789abcdef', uint8((bytes1(MEM[v10]) & 0xf00000000000000000000000000000000000000000000000000000000000000) >> 248))) & 0xFF;
                v3 = v3 + 1;
            }
        }
        revert(Panic(50));
    }
    return v2;
}

function 0x5024(uint256 varg0) private { 
    require(!MEM[varg0] | (2 == (MEM[varg0] << 1) / MEM[varg0]), Panic(17)); // arithmetic overflow or underflow
    require(2 <= 2 + (MEM[varg0] << 1), Panic(17)); // arithmetic overflow or underflow
    require(2 + (MEM[varg0] << 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](2 + (MEM[varg0] << 1));
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 33 + (MEM[varg0] << 1)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 33 + (MEM[varg0] << 1)) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(2 + (MEM[varg0] << 1) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 33 + (MEM[varg0] << 1)) - 32);
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[v0.data] = 0x30 & 0xFF;
    require(1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM8[33 + v0] = 0x78 & 0xFF;
    v1 = 0;
    while (v1 < MEM[varg0]) {
        v2 = 0x36a1(varg0, v1);
        if (uint8((0xf00000000000000000000000000000000000000000000000000000000000000 & bytes1(MEM[v2]) >> 4) >> 248) < 16) {
            v3 = 0x2991(v1);
            v4 = 0x28eb(v3);
            v5 = 0x36a1(v0, v4);
            MEM8[v5] = (byte('0123456789abcdef', uint8((0xf00000000000000000000000000000000000000000000000000000000000000 & bytes1(MEM[v2]) >> 4) >> 248))) & 0xFF;
            v6 = 0x36a1(varg0, v1);
            if (uint8((bytes1(MEM[v6]) & 0xf00000000000000000000000000000000000000000000000000000000000000) >> 248) < 16) {
                v7 = 0x2991(v1);
                v8 = 0x28f9(v7);
                v9 = 0x36a1(v0, v8);
                MEM8[v9] = (byte('0123456789abcdef', uint8((bytes1(MEM[v6]) & 0xf00000000000000000000000000000000000000000000000000000000000000) >> 248))) & 0xFF;
                v1 = v1 + 1;
            }
        }
        revert(Panic(50));
    }
    return v0;
}

function 0x512e(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](36);
    MEM[v0.data] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.withdraw(varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(bool(v2) - v2));
        }
    }
    require(v2, Error('TransferHelper: WITHDRAW_FAILED'));
    return ;
}

function 0x51e8(uint256 varg0) private { 
    require(varg0 <= int256.max, Error("SafeCast: value doesn't fit in an int256"));
    return varg0;
}

function 0x529d(address varg0, address varg1, address varg2) private { 
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

function receive() public payable { 
    emit Receipt(msg.sender, msg.value);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    0x35db(amount0Delta, amount1Delta, v0);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0xe8cc705 == function_selector >> 224) {
            withdrawTokens(address[],address);
        } else if (0x2b3f2cfb == function_selector >> 224) {
            0x2b3f2cfb();
        } else if (0x2d2af9a0 == function_selector >> 224) {
            approves(address,address);
        } else if (0x3f3204d2 == function_selector >> 224) {
            callbytes((address,bytes));
        } else if (0x5465a4f1 == function_selector >> 224) {
            0x5465a4f1();
        } else if (0x61874181 == function_selector >> 224) {
            transitRouter();
        } else if (0x65e0e5a3 == function_selector >> 224) {
            0x65e0e5a3();
        } else if (0x66a0040a == function_selector >> 224) {
            0x66a0040a();
        } else if (0x6d2cc304 == function_selector >> 224) {
            MAX_SQRT_RATIO();
        } else if (0x7c12e337 == function_selector >> 224) {
            0x7c12e337();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x94d3d793 == function_selector >> 224) {
            acceptExecutorship();
        } else if (0xa938950b == function_selector >> 224) {
            0xa938950b();
        } else if (0xab6291fe == function_selector >> 224) {
            lockAcquired(bytes);
        } else if (0xafed2d0e == function_selector >> 224) {
            transferExecutorship(address);
        } else if (0xc34c08e5 == function_selector >> 224) {
            executor();
        } else if (0xce5687d4 == function_selector >> 224) {
            0xce5687d4();
        } else if (0xd63234e0 == function_selector >> 224) {
            pendingExecutor();
        } else if (0xd63a8e11 == function_selector >> 224) {
            allowed(address);
        } else if (0xdc8296a7 == function_selector >> 224) {
            changeTransitRouter(address);
        } else if (0xe1217921 == function_selector >> 224) {
            0xe1217921();
        } else if (0xee8847ff == function_selector >> 224) {
            MIN_SQRT_RATIO();
        } else if (0xf7f70bb3 == function_selector >> 224) {
            0xf7f70bb3();
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(!msg.value);
        require(4 <= msg.data.length);
        require(msg.data.length - 4 >= 96);
        require(varg3 <= uint64.max);
        require(4 + varg3 + 31 < msg.data.length);
        require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v0 = new bytes[](varg3.length);
        require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        require(varg3.data + varg3.length <= msg.data.length);
        CALLDATACOPY(v0.data, varg3.data, varg3.length);
        v0[varg3.length] = 0;
        0x35db(varg1, varg2, v0);
        exit;
    }
}
