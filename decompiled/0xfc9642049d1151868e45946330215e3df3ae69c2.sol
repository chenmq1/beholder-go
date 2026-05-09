// Decompiled by library.dedaub.com
// 2025.12.12 23:09 UTC
// Compiled using the solidity compiler version 0.8.27


// Data structures and variables inferred from the use of storage instructions
uint256 _minAmount; // STORAGE[0x0]



function 0x10c2(bytes varg0) private { 
    require(varg0.data + varg0.length - varg0.data >= 32);
    require(MEM[varg0.data] <= uint64.max);
    require(varg0.data + varg0.length > varg0.data + MEM[varg0.data] + 31);
    require(varg0[MEM[varg0.data]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0[MEM[varg0.data]]);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0[MEM[varg0.data]] << 5) + 32 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (varg0[MEM[varg0.data]] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (varg0.data + MEM[varg0.data] + (varg0[MEM[varg0.data]] << 5)) <= varg0.data + varg0.length);
    v3 = v4 = varg0.data + MEM[varg0.data] + 32;
    while (v3 < 32 + (varg0.data + MEM[varg0.data] + (varg0[MEM[varg0.data]] << 5))) {
        require(MEM[v3] <= uint64.max);
        require(varg0.data + varg0.length - (varg0.data + MEM[varg0.data] + MEM[v3]) - 32 >= 96);
        v5 = 0x26d8();
        require(MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 32] == address(MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 32]));
        v5.word0 = MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 32];
        v5.word1 = MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 64];
        require(MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 96] <= uint64.max);
        v6 = varg0.data + MEM[varg0.data] + MEM[v3] + MEM[varg0.data + MEM[varg0.data] + MEM[v3] + 96] + 32;
        require(v6 + 31 < varg0.data + varg0.length);
        require(MEM[v6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](MEM[v6]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v6]) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v6]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + MEM[v6] + 32 <= varg0.data + varg0.length);
        MCOPY(v7.data, v6 + 32, MEM[v6]);
        v7[MEM[v6]] = 0;
        v5.word2 = v7;
        MEM[v1] = v5;
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    v8 = v9 = 0;
    while (v8 < v0.length) {
        require(v8 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MCOPY(MEM[64], MEM[64 + v0[v8]] + 32, MEM[MEM[64 + v0[v8]]]);
        MEM[MEM[64] + MEM[MEM[64 + v0[v8]]]] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(MEM[v0[v8]]).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[MEM[64 + v2728V0x2c19V0x10c2[v118c_0x3]]] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(MEM[32 + v0[v8]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            v11 = v15.data;
            RETURNDATACOPY(v11, 0, RETURNDATASIZE());
        }
        require(0 - bool(v10), v12, MEM[v13]);
        v8 += 1;
    }
    return ;
}

function 0x1197(address varg0) private { 
    if (varg0 - address(0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee)) {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v1;
    } else {
        return this.balance;
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    0x10c2(v0);
}

function batchExecute((address,uint256,bytes) transactions) public payable { 
    require(msg.data.length - 4 >= 32);
    require(transactions <= uint64.max);
    require(4 + transactions + 31 < msg.data.length);
    require(transactions.length <= uint64.max);
    require(4 + transactions + (transactions.length << 5) + 32 <= msg.data.length);
    require(address(0xab63bf0698d92c746dd751c06b069cf04e735ded) == msg.sender, Error(0x343033));
    v0 = v1 = 0;
    while (1) {
        if (v0 >= transactions.length) {
            exit;
        } else {
            require(v0 < transactions.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(transactions[v0] < msg.data.length - transactions.data - 95);
            require(msg.data.length - (transactions[v0] + transactions.data) >= 96);
            v2 = 0x26d8();
            require(msg.data[transactions[v0] + transactions.data] == address(msg.data[transactions[v0] + transactions.data]));
            v2.word0 = msg.data[transactions[v0] + transactions.data];
            v2.word1 = msg.data[32 + (transactions[v0] + transactions.data)];
            require(msg.data[transactions[v0] + transactions.data + 64] <= uint64.max);
            v3 = transactions[v0] + transactions.data + msg.data[transactions[v0] + transactions.data + 64];
            require(v3 + 31 < msg.data.length);
            require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = new bytes[](msg.data[v3]);
            require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v3 + msg.data[v3] + 32 <= msg.data.length);
            CALLDATACOPY(v4.data, v3 + 32, msg.data[v3]);
            v4[msg.data[v3]] = 0;
            v2.word2 = v4;
            MCOPY(MEM[64], v5.data, v5.length);
            MEM[MEM[64] + v5.length] = 0;
            v6, /* uint256 */ v7, /* uint256 */ v8 = address(v2.word0).call(MEM[MEM[64]:MEM[64] + MEM[64] + v3dbV0x152.length - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v2.word1).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v9 = v10 = 96;
            } else {
                v9 = v11 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
            }
            require(0 - bool(v6), v8, MEM[v9]);
            v0 += 1;
        }
    }
}

function onFlashLoan(address initiator, address token, uint256 amount, uint256 fee, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    0x10c2(v0);
}

function 0x85c496b0(uint256 varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + (varg2.length << 5) + 32 <= msg.data.length);
    v0 = 0x1197(varg1);
    v1 = v2 = 0;
    while (v1 < varg0.length) {
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v1] < msg.data.length - varg0.data - 95);
        require(msg.data.length - (varg0[v1] + varg0.data) >= 96);
        v3 = 0x26d8();
        require(msg.data[varg0[v1] + varg0.data] == address(msg.data[varg0[v1] + varg0.data]));
        v3.word0 = msg.data[varg0[v1] + varg0.data];
        v3.word1 = msg.data[32 + (varg0[v1] + varg0.data)];
        require(msg.data[varg0[v1] + varg0.data + 64] <= uint64.max);
        v4 = varg0[v1] + varg0.data + msg.data[varg0[v1] + varg0.data + 64];
        require(v4 + 31 < msg.data.length);
        require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](msg.data[v4]);
        require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4]) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v4]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v4 + msg.data[v4] + 32 <= msg.data.length);
        CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
        v5[msg.data[v4]] = 0;
        v3.word2 = v5;
        MCOPY(MEM[64], v6.data, v6.length);
        MEM[MEM[64] + v6.length] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(v3.word0).call(MEM[MEM[64]:MEM[64] + MEM[64] + v506V0x184.length - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v3.word1).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        require(0 - bool(v7), v9, MEM[v10]);
        v1 += 1;
    }
    v13 = 0x1197(varg1);
    if (v13 > v0) {
        v14 = v15 = _SafeSub(v13, v0);
    } else {
        v14 = v16 = 0;
    }
    v17 = _SafeAdd(varg3, msg.gas);
    v18 = _SafeSub(v17, msg.gas);
    v19 = _SafeMul(msg.gas, v18);
    v20 = new bytes[](v21.length);
    MCOPY(v20.data, v21.data, v21.length);
    v20[v21.length] = 0;
    v22 = 'console.log'.log(v20, v18).gas(msg.gas);
    v23 = new bytes[](v24.length);
    MCOPY(v23.data, v24.data, v24.length);
    v23[v24.length] = 0;
    v25 = 'console.log'.log(v23, msg.gas).gas(msg.gas);
    v26 = new bytes[](v27.length);
    MCOPY(v26.data, v27.data, v27.length);
    v26[v27.length] = 0;
    v28 = 'console.log'.log(v26, v19).gas(msg.gas);
    if (v14 > v19) {
        v29 = _SafeSub(v14, v19);
        MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v30 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v14).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        if (msg.sender.balance < _minAmount) {
            v31 = v32 = msg.sender;
        } else {
            v31 = 0xa07f07c1cf041a0d552351ede3ca9e63e9005032;
        }
        if (4 - varg2.length) {
            if (!msg.value) {
                v33 = address(v31).call().value(v14).gas(2300 * !v14);
                require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else if (msg.value < 1000) {
                v34 = _SafeMul(v29, msg.value);
                v35 = _SafeDiv(v34, 1000);
                v36 = block.coinbase.call().value(v35).gas(2300 * !v35);
                require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v37 = _SafeSub(v14, v35);
                v38 = address(v31).call().value(v37).gas(2300 * !v37);
                require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                revert(Error('invalid'));
            }
        } else {
            require(3 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v39 = _SafeDiv(v29, varg2[3]);
            require(1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v40 = _SafeMul(varg2[1], v39);
            require(0 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v41 = v42 = _SafeAdd(varg2[0], v40);
            require(2 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v42 > varg2[2]) {
                require(2 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v41 = v43 = varg2[2];
            }
            if (v41 < 1000) {
                v44 = _SafeMul(v29, v41);
                v45 = _SafeDiv(v44, 1000);
                v46 = block.coinbase.call().value(v45).gas(2300 * !v45);
                require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v47 = _SafeSub(v14, v45);
                v48 = address(v31).call().value(v47).gas(2300 * !v47);
                require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                revert(Error('invalida'));
            }
        }
        v49 = 'console.log'.log(msg.gas, 0xf82c50f100000000000000000000000000000000000000000000000000000000 | uint224(v14)).gas(msg.gas);
        exit;
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = 32;
        revert(Error(0x726c7463));
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = 96;
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    v3 = 4 + rawData + 32 + rawData.word1;
    require(4 + rawData + 32 + msg.data[4 + rawData] - v3 >= 416);
    v4 = new struct(13);
    require(!((v4 + 416 < v4) | (v4 + 416 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v3] == address(msg.data[v3]));
    v4.word0 = msg.data[v3];
    require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
    v4.word1 = msg.data[v3 + 32];
    require(msg.data[v3 + 64] == uint24(msg.data[v3 + 64]));
    v4.word2 = msg.data[v3 + 64];
    require(msg.data[v3 + 96] == bool(msg.data[v3 + 96]));
    v4.word3 = msg.data[v3 + 96];
    require(msg.data[v3 + 128] == bool(msg.data[v3 + 128]));
    v4.word4 = msg.data[v3 + 128];
    require(msg.data[v3 + 160] == address(msg.data[v3 + 160]));
    v4.word5 = msg.data[v3 + 160];
    require(msg.data[v3 + 192] == address(msg.data[v3 + 192]));
    v4.word6 = msg.data[v3 + 192];
    require(msg.data[v3 + 224] == uint24(msg.data[v3 + 224]));
    v4.word7 = msg.data[v3 + 224];
    require(msg.data[v3 + (uint8.max + 1)] == int24(msg.data[v3 + (uint8.max + 1)]));
    v4.word8 = msg.data[v3 + (uint8.max + 1)];
    require(msg.data[v3 + 288] == address(msg.data[v3 + 288]));
    v4.word9 = msg.data[v3 + 288];
    require(msg.data[v3 + 320] == bool(msg.data[v3 + 320]));
    v4.word10 = msg.data[v3 + 320];
    v4.word11 = msg.data[352 + v3];
    require(msg.data[v3 + 384] <= uint64.max);
    require(v3 + msg.data[v3 + 384] + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    require(msg.data[v3 + msg.data[v3 + 384]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v3 + msg.data[v3 + 384]]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 384]]) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 384]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3 + 384] + msg.data[v3 + msg.data[v3 + 384]] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v5.data, v3 + msg.data[v3 + 384] + 32, msg.data[v3 + msg.data[v3 + 384]]);
    v5[msg.data[v3 + msg.data[v3 + 384]]] = 0;
    v4.word12 = v5;
    require(msg.sender == address(v4.word0));
    if (0 - uint24(v4.word2)) {
        if (1 - uint24(v4.word2)) {
            if (!(2 - uint24(v4.word2))) {
                if (v4.word10) {
                    v6 = v7 = v4.word6;
                } else {
                    v6 = v4.word5;
                }
                0x1c79(0, v4.word11, v4.word1, v6, v4.word0);
                v8 = v4.word12;
                0x10c2(v4.word12);
                if (v4.word10) {
                    v9 = v10 = 0x2a80(1, 0x1000276a3);
                } else {
                    v9 = v11 = 0x2a54(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                v12 = new bytes[](v13.length);
                MCOPY(v12.data, v13.data, v13.length);
                v12[v13.length] = 0;
                v14, /* uint256 */ v15 = address(v4.word0).swap(address(v4.word5), address(v4.word6), uint24(v4.word7), int24(v4.word8), address(v4.word9), bool(v4.word10), v4.word11, address(v9), v12).gas(msg.gas);
                require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v16 = 0x20b6(this, v4.word5, v4.word0);
                v17 = 0x20b6(this, v4.word6, v4.word0);
                if (v16 < 0) {
                    v18 = 0x2b84(v16);
                    0x1da1(0, v18, v4.word1, address(v4.word5), v4.word0);
                }
                if (v17 < 0) {
                    v19 = 0x2b84(v17);
                    0x1da1(0, v19, v4.word1, address(v4.word6), v4.word0);
                }
            }
        } else {
            if (v4.word10) {
                v20 = v21 = v4.word5;
            } else {
                v20 = v4.word6;
            }
            0x1c79(0, v4.word11, v4.word1, v20, v4.word0);
            v22 = v4.word12;
            0x10c2(v4.word12);
            0x1da1(0, v4.word11, v4.word1, v20, v4.word0);
        }
    } else {
        require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 32);
        require(rawData.word1 <= uint64.max);
        v23 = 4 + rawData + 32 + rawData.word1;
        require(4 + rawData + 32 + msg.data[4 + rawData] - v23 >= 416);
        v24 = new struct(13);
        require(!((v24 + 416 < v24) | (v24 + 416 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v23] == address(msg.data[v23]));
        v24.word0 = msg.data[v23];
        require(msg.data[v23 + 32] == address(msg.data[v23 + 32]));
        v24.word1 = msg.data[v23 + 32];
        require(msg.data[v23 + 64] == uint24(msg.data[v23 + 64]));
        v24.word2 = msg.data[v23 + 64];
        require(msg.data[v23 + 96] == bool(msg.data[v23 + 96]));
        v24.word3 = msg.data[v23 + 96];
        require(msg.data[v23 + 128] == bool(msg.data[v23 + 128]));
        v24.word4 = msg.data[v23 + 128];
        require(msg.data[v23 + 160] == address(msg.data[v23 + 160]));
        v24.word5 = msg.data[v23 + 160];
        require(msg.data[v23 + 192] == address(msg.data[v23 + 192]));
        v24.word6 = msg.data[v23 + 192];
        require(msg.data[v23 + 224] == uint24(msg.data[v23 + 224]));
        v24.word7 = msg.data[v23 + 224];
        require(msg.data[v23 + (uint8.max + 1)] == int24(msg.data[v23 + (uint8.max + 1)]));
        v24.word8 = msg.data[v23 + (uint8.max + 1)];
        require(msg.data[v23 + 288] == address(msg.data[v23 + 288]));
        v24.word9 = msg.data[v23 + 288];
        require(msg.data[v23 + 320] == bool(msg.data[v23 + 320]));
        v24.word10 = msg.data[v23 + 320];
        v24.word11 = msg.data[352 + v23];
        require(msg.data[v23 + 384] <= uint64.max);
        require(v23 + msg.data[v23 + 384] + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
        require(msg.data[v23 + msg.data[v23 + 384]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v25 = new bytes[](msg.data[v23 + msg.data[v23 + 384]]);
        require(!((v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v23 + msg.data[v23 + 384]]) + 31) < v25) | (v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v23 + msg.data[v23 + 384]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v23 + msg.data[v23 + 384] + msg.data[v23 + msg.data[v23 + 384]] + 32 <= 4 + rawData + 32 + msg.data[4 + rawData]);
        CALLDATACOPY(v25.data, v23 + msg.data[v23 + 384] + 32, msg.data[v23 + msg.data[v23 + 384]]);
        v25[msg.data[v23 + msg.data[v23 + 384]]] = 0;
        v24.word12 = v25;
        require(msg.sender == address(v24.word0));
        if (v24.word10) {
            v26 = v27 = 0x2a80(1, 0x1000276a3);
        } else {
            v26 = v28 = 0x2a54(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
        v29 = new bytes[](v30.length);
        MCOPY(v29.data, v30.data, v30.length);
        v29[v30.length] = 0;
        v31, v32 = address(v24.word0).swap(address(v24.word5), address(v24.word6), uint24(v24.word7), int24(v24.word8), address(v24.word9), bool(v24.word10), v24.word11, address(v26), v29).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v33 = 0x20b6(this, v24.word5, v24.word0);
        v34 = 0x20b6(this, v24.word6, v24.word0);
        if (!bool(v24.word10)) {
            if (v24.word11 >= 0) {
                require(v34 <= 0, Error('deltaAfter1 is not less than or equal to 0'));
                require(int128(v32 >> 128) == v33, Error('delta.amount0() is not equal to deltaAfter0'));
                if (v33 > v24.word11) {
                    v35 = new uint256[]('deltaAfter0 is not less than or ');
                    revert(Error('deltaAfter0 is not less than or equal to data.params.amountSpecified', v35));
                }
            } else {
                require(v34 >= v24.word11, Error('deltaAfter1 is not greater than or equal to data.params.amountSpecified'));
                require(int128(v32) == v34, Error('delta.amount1() is not equal to deltaAfter1'));
                require(v33 >= 0, Error('deltaAfter0 is not greater than or equal to 0'));
            }
        } else if (v24.word11 >= 0) {
            require(v33 <= 0, Error('deltaAfter0 is not less than or equal to zero'));
            require(int128(v32) == v34, Error('delta.amount1() is not equal to deltaAfter1'));
            if (v34 > v24.word11) {
                v36 = new uint256[]('deltaAfter1 is not less than or ');
                revert(Error('deltaAfter1 is not less than or equal to data.params.amountSpecified', v36));
            }
        } else {
            require(v33 >= v24.word11, Error('deltaAfter0 is not greater than or equal to data.params.amountSpecified'));
            require(int128(v32 >> 128) == v33, Error('delta.amount0() is not equal to deltaAfter0'));
            require(v34 >= 0, Error('deltaAfter1 is not greater than or equal to 0'));
        }
        if (v33 < 0) {
            v37 = 0x2b84(v33);
            0x1da1(0, v37, v24.word1, address(v24.word5), v24.word0);
        }
        if (v34 < 0) {
            v38 = 0x2b84(v34);
            0x1da1(0, v38, v24.word1, address(v24.word6), v24.word0);
        }
        if (v33 > 0) {
            0x1c79(0, v33, v24.word1, address(v24.word5), v24.word0);
        }
        if (v34 > 0) {
            0x1c79(0, v34, v24.word1, address(v24.word6), v24.word0);
        }
        MEM[MEM[64] + 32] = v32;
        v1 = v39 = MEM[64];
        MEM[v39] = 32;
    }
    v40 = new uint256[](MEM[v1]);
    MCOPY(v40.data, v1 + 32, MEM[v1]);
    MEM[v40 + MEM[v1] + 32] = 0;
    return v40;
}

function minAmount() public nonPayable { 
    return _minAmount;
}

function 0x1c79(uint256 varg0, uint256 varg1, address varg2, address varg3, address varg4) private { 
    if (varg0) {
        require(bool(varg4.code.size));
        v0 = varg4.mint(varg2, varg3, varg1).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    } else {
        require(bool(varg4.code.size));
        v1 = varg4.take(varg3, varg2, varg1).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function 0x1da1(uint256 varg0, uint256 varg1, address varg2, address varg3, address varg4) private { 
    if (!varg0) {
        if (varg3) {
            require(bool(varg4.code.size));
            v0 = varg4.sync(varg3).gas(msg.gas);
            require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (this == varg2) {
                require(bool(varg3.code.size));
                v1 = varg3.transfer(varg4, varg1).gas(msg.gas);
                require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            } else {
                require(bool(varg3.code.size));
                v2 = varg3.transferFrom(varg2, varg4, varg1).gas(msg.gas);
                require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v3, /* uint256 */ v4 = varg4.settle().gas(msg.gas);
            require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        } else {
            v5, /* uint256 */ v6 = varg4.settle().value(varg1).gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        }
    } else {
        require(bool(varg4.code.size));
        v7 = varg4.burn(varg2, varg3, varg1).gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function execute(address _to, uint256 _value, bytes _data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    require(address(0xab63bf0698d92c746dd751c06b069cf04e735ded) == msg.sender, Error(0x343033));
    CALLDATACOPY(v0.data, _data.data, _data.length);
    MEM[_data.length + v0.data] = 0;
    v1, /* uint256 */ v2 = _to.call(v0.data).value(_value).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v3 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
    }
    return bool(v1);
}

function withdraw(address tokenAddress, address _toUser, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(address(0xab63bf0698d92c746dd751c06b069cf04e735ded) == msg.sender, Error(0x343033));
    if (tokenAddress) {
        require(bool(tokenAddress.code.size));
        v0 = tokenAddress.transfer(_toUser, amount).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v1 = _toUser.call().value(amount).gas(2300 * !amount);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x20b6(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.exttload(keccak256(varg0, varg1)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    0x10c2(v0);
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(4 + tokens + 31 < msg.data.length);
    require(tokens.length <= uint64.max);
    v0 = tokens.data;
    require(4 + tokens + (tokens.length << 5) + 32 <= msg.data.length);
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    require(amounts.length <= uint64.max);
    v1 = amounts.data;
    require(4 + amounts + (amounts.length << 5) + 32 <= msg.data.length);
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    require(feeAmounts.length <= uint64.max);
    v2 = feeAmounts.data;
    require(4 + feeAmounts + (feeAmounts.length << 5) + 32 <= msg.data.length);
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    require(userData.length <= uint64.max);
    require(4 + userData + userData.length + 32 <= msg.data.length);
    v3 = new bytes[](userData.length);
    CALLDATACOPY(v3.data, userData.data, userData.length);
    v3[userData.length] = 0;
    0x10c2(v3);
}

function 0x26d8() private { 
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x2a54(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2a80(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x2b84(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x9b2cb5d8 > function_selector >> 224) {
        if (0x67ca7c91 > function_selector >> 224) {
            if (0x10d1e85c != function_selector >> 224) {
                if (0x1a833ee3 == function_selector >> 224) {
                    batchExecute((address,uint256,bytes)[]);
                } else if (0x23e30c8b == function_selector >> 224) {
                    onFlashLoan(address,address,uint256,uint256,bytes);
                }
            }
        } else if (0x67ca7c91 != function_selector >> 224) {
            if (0x85c496b0 == function_selector >> 224) {
                0x85c496b0();
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            }
        }
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0xe9cbafb0 > function_selector >> 224) {
        if (0x9b2cb5d8 == function_selector >> 224) {
            minAmount();
        } else if (0xb61d27f6 == function_selector >> 224) {
            execute(address,uint256,bytes);
        } else if (0xd9caed12 == function_selector >> 224) {
            withdraw(address,address,uint256);
        }
    } else {
        if (0xe9cbafb0 != function_selector >> 224) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0xfa461e33 != function_selector >> 224) {
            }
        }
        uniswapV3SwapCallback(int256,int256,bytes);
    }
    if (msg.data.length >= 68) {
        require(4 <= msg.data.length);
        require(msg.data.length <= msg.data.length);
        require(4 + (msg.data.length - 4) - 4 >= 32);
        if (varg1 - this) {
            CALLDATACOPY(MEM[64], varg2 + 4, varg2.length + 32);
            MEM[64] = 32 + (MEM[64] + varg2.length);
            0x10c2(MEM[64]);
        } else {
            CALLDATACOPY(MEM[64], varg3 + 4, varg3.length + 32);
            MEM[64] = 32 + (MEM[64] + varg3.length);
            0x10c2(MEM[64]);
        }
    }
    return MEM[128:128 + MEM[96]];
}
