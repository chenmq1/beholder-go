// Decompiled by library.dedaub.com
// 2025.12.15 10:23 UTC
// Compiled using the solidity compiler version 0.8.29


// Data structures and variables inferred from the use of storage instructions
address _withdrawETH; // STORAGE[0x0] bytes 0 to 19



function receive() public payable { 
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(msg.data.length > 4 + data + 31);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = 36 + data + msg.data[4 + data];
    require(v1 - (36 + data) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (36 + data + data.word1) >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 < v2) | (v2 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[36 + data + data.word1] <= uint64.max);
    v3 = 36 + data + data.word1 + msg.data[36 + data + data.word1];
    require(v1 > v3 + 31);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(v3 + (msg.data[v3] << 7) + 32 <= v1);
    v7 = v8 = v3 + 32;
    while (v7 < v3 + (msg.data[v3] << 7) + 32) {
        require(v1 - v7 >= 128);
        v9 = new struct(4);
        require(!((v9 + 128 < v9) | (v9 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v7] == address(msg.data[v7]));
        v9.word0 = msg.data[v7];
        require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
        v9.word1 = msg.data[v7 + 32];
        require(msg.data[v7 + 64] == address(msg.data[v7 + 64]));
        v9.word2 = msg.data[v7 + 64];
        require(msg.data[v7 + 96] == uint24(msg.data[v7 + 96]));
        v9.word3 = msg.data[v7 + 96];
        MEM[v5] = v9;
        v5 = v5 + 32;
        v7 = v7 + 128;
    }
    v2.word0 = v4;
    v2.word1 = msg.data[32 + (36 + data + data.word1)];
    v2.word2 = msg.data[36 + data + data.word1 + 64];
    v2.word3 = msg.data[36 + data + data.word1 + 96];
    v2.word4 = msg.data[128 + (36 + data + data.word1)];
    require(v2.word4 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v2.word4 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v2.word4 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v13, /* address */ v14 = address(0xbfbcf9fa4f9c56b0f40a671ad40e0805a091865).getPool(address(MEM[v10[v2.word4]]), address(MEM[32 + v11[v2.word4]]), uint24(MEM[96 + v12[v2.word4]])).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v14 == address(v14));
    require(address(v14) == msg.sender, Error(70));
    if (amount0Delta <= 0) {
    }
    v15 = _SafeAdd(1, v2.word4);
    v2.word4 = v15;
    if (v16.length - v15) {
        require(v2.word4 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v2.word4 < v18.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v2.word4 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v20 = address(MEM[v18[v2.word4]]) < address(MEM[32 + v19[v2.word4]]);
        if (0 - v2.word4) {
            v21 = _SafeSub(v2.word4, 1);
            require(v21 < v22.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23 = 0xf4e(v24);
            if (v20) {
                v25 = v26 = 0xf87(1, 0x1000276a3);
            } else {
                v25 = v27 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = 160;
            MEM[32 + MEM[64] + 192] = v28.length;
            v29 = v30 = 0;
            v31 = v32 = v28.data;
            v33 = v34 = 32 + MEM[64] + 224;
            while (v29 < v28.length) {
                MEM[v33] = address(MEM[MEM[v31]]);
                MEM[v33 + 32] = address(MEM[MEM[v31] + 32]);
                MEM[v33 + 64] = address(MEM[MEM[v31] + 64]);
                MEM[v33 + 96] = uint24(MEM[96 + MEM[v31]]);
                v31 = v31 + 32;
                v29 += 1;
                v33 = v33 + 128;
            }
            MEM[32 + MEM[64] + 64] = v2.word1;
            MEM[32 + MEM[64] + 96] = v2.word2;
            MEM[32 + MEM[64] + 128] = v2.word3;
            MEM[32 + MEM[64] + 160] = v2.word4;
            v35 = new uint256[](v33 - MEM[64] - 32);
            MCOPY(v35.data, MEM[64] + 32, v33 - MEM[64] - 32);
            MEM[4 + MEM[64] + (v33 - MEM[64] - 32) + 192] = 0;
            v36, /* uint256 */ v37, /* uint256 */ v38 = address(MEM[64 + v17[v2.word4]]).swap(address(MEM[64 + v22[v21]]), bool(v20), v23, address(v25), v35).gas(msg.gas);
            require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        } else {
            v39 = 0xf4e(v24);
            if (v20) {
                v40 = v41 = 0xf87(1, 0x1000276a3);
            } else {
                v40 = v42 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = 160;
            MEM[32 + MEM[64] + 192] = v43.length;
            v44 = v45 = 0;
            v46 = v47 = v43.data;
            v48 = v49 = 32 + MEM[64] + 224;
            while (v44 < v43.length) {
                MEM[v48] = address(MEM[MEM[v46]]);
                MEM[v48 + 32] = address(MEM[MEM[v46] + 32]);
                MEM[v48 + 64] = address(MEM[MEM[v46] + 64]);
                MEM[v48 + 96] = uint24(MEM[96 + MEM[v46]]);
                v46 = v46 + 32;
                v44 += 1;
                v48 = v48 + 128;
            }
            MEM[32 + MEM[64] + 64] = v2.word1;
            MEM[32 + MEM[64] + 96] = v2.word2;
            MEM[32 + MEM[64] + 128] = v2.word3;
            MEM[32 + MEM[64] + 160] = v2.word4;
            v50 = new uint256[](v48 - MEM[64] - 32);
            MCOPY(v50.data, MEM[64] + 32, v48 - MEM[64] - 32);
            MEM[4 + MEM[64] + (v48 - MEM[64] - 32) + 192] = 0;
            v51, /* uint256 */ v52, /* uint256 */ v53 = address(MEM[64 + v17[v2.word4]]).swap(address(this), bool(v20), v39, address(v40), v50).gas(msg.gas);
            require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        }
    } else {
        v54 = _SafeAdd(v24, v2.word2);
        require(v54 < v2.word1, Error(78));
        v55 = _SafeSub(v2.word4, 1);
        require(v55 < v56.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v57 = _SafeSub(v2.word4, 1);
        require(v57 < v58.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v59, /* bool */ v60 = address(MEM[v56[v55]]).transfer(address(MEM[64 + v58[v57]]), v24).gas(msg.gas);
        require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v60 == bool(v60));
        v61, /* uint256 */ v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v63 = _SafeSub(v62, v2.word2);
        v64 = _SafeMul(v63, v2.word3);
        require(1000, Panic(18)); // division by zero
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v65 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v62).gas(msg.gas);
        require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v66 = block.coinbase.call().value(v64 / 1000).gas(2300 * !(v64 / 1000));
        require(bool(v66), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v67 = _SafeSub(v62, v64 / 1000);
        v68 = tx.origin.call().value(v67).gas(2300 * !v67);
        require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function withdrawToken(address _tokenContract, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _withdrawETH, Error('Not authorized'));
    v0, /* bool */ v1 = _tokenContract.transfer(_withdrawETH, _amount).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == bool(v1));
}

function 0xb14a776d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    v0 = v1 = varg0.length;
    require(v1 <= uint64.max);
    require(4 + varg0 + (v1 << 5) + 32 <= msg.data.length);
    require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1);
    if (v1) {
        v3 = v2.data;
        while (v0) {
            v4 = new struct(4);
            v4.word0 = 0;
            v4.word1 = 0;
            v4.word2 = 0;
            v4.word3 = 0;
            MEM[v3] = v4;
            v0 = v0 - 1;
            v3 += 32;
        }
    }
    v5 = v6 = 0;
    while (1) {
        v7 = _SafeSub(v1, 1);
        if (v5 > v7) {
            v8 = new struct(5);
            v8.word0 = v2;
            v8.word1 = varg1;
            v8.word2 = varg2;
            v8.word3 = varg3;
            v8.word4 = 0;
            require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v9 = v2.data;
            require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10 = v2.data;
            require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v11 = v2.data;
            v12 = address(MEM[v2[0]]) < address(MEM[32 + v2[0]]);
            if (0 - v8.word4) {
                v13 = _SafeSub(v8.word4, 1);
                require(v13 < v14.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v15 = 0xf4e(varg1);
                if (v12) {
                    v16 = v17 = 0xf87(1, 0x1000276a3);
                } else {
                    v16 = v18 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                MEM[32 + MEM[64]] = 32;
                MEM[64 + MEM[64]] = 160;
                MEM[32 + MEM[64] + 192] = v19.length;
                v20 = v21 = 0;
                v22 = v23 = v19.data;
                v24 = v25 = 32 + MEM[64] + 224;
                while (v20 < v19.length) {
                    MEM[v24] = address(MEM[MEM[v22]]);
                    MEM[v24 + 32] = address(MEM[MEM[v22] + 32]);
                    MEM[v24 + 64] = address(MEM[MEM[v22] + 64]);
                    MEM[v24 + 96] = uint24(MEM[96 + MEM[v22]]);
                    v22 = v22 + 32;
                    v20 += 1;
                    v24 = v24 + 128;
                }
                MEM[32 + MEM[64] + 64] = v8.word1;
                MEM[32 + MEM[64] + 96] = v8.word2;
                MEM[32 + MEM[64] + 128] = v8.word3;
                MEM[32 + MEM[64] + 160] = v8.word4;
                v26 = new uint256[](v24 - MEM[64] - 32);
                MCOPY(v26.data, MEM[64] + 32, v24 - MEM[64] - 32);
                MEM[4 + MEM[64] + (v24 - MEM[64] - 32) + 192] = 0;
                v27, /* uint256 */ v28, /* uint256 */ v29 = address(MEM[64 + v2[0]]).swap(address(MEM[64 + v14[v13]]), bool(v12), v15, address(v16), v26).gas(msg.gas);
                require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            } else {
                v30 = 0xf4e(varg1);
                if (v12) {
                    v31 = v32 = 0xf87(1, 0x1000276a3);
                } else {
                    v31 = v33 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                MEM[32 + MEM[64]] = 32;
                MEM[64 + MEM[64]] = 160;
                MEM[32 + MEM[64] + 192] = v34.length;
                v35 = v36 = 0;
                v37 = v38 = v34.data;
                v39 = v40 = 32 + MEM[64] + 224;
                while (v35 < v34.length) {
                    MEM[v39] = address(MEM[MEM[v37]]);
                    MEM[v39 + 32] = address(MEM[MEM[v37] + 32]);
                    MEM[v39 + 64] = address(MEM[MEM[v37] + 64]);
                    MEM[v39 + 96] = uint24(MEM[96 + MEM[v37]]);
                    v37 = v37 + 32;
                    v35 += 1;
                    v39 = v39 + 128;
                }
                MEM[32 + MEM[64] + 64] = v8.word1;
                MEM[32 + MEM[64] + 96] = v8.word2;
                MEM[32 + MEM[64] + 128] = v8.word3;
                MEM[32 + MEM[64] + 160] = v8.word4;
                v41 = new uint256[](v39 - MEM[64] - 32);
                MCOPY(v41.data, MEM[64] + 32, v39 - MEM[64] - 32);
                MEM[4 + MEM[64] + (v39 - MEM[64] - 32) + 192] = 0;
                v42, /* uint256 */ v43, /* uint256 */ v44 = address(MEM[64 + v2[0]]).swap(address(this), bool(v12), v30, address(v31), v41).gas(msg.gas);
                require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            }
            exit;
        } else {
            require(v5 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg0[v5] < msg.data.length - varg0.data - 31);
            require(msg.data[varg0.data + varg0[v5]] <= uint64.max);
            require(32 + (varg0.data + varg0[v5]) <= msg.data.length - msg.data[varg0.data + varg0[v5]]);
            require(32 + (varg0.data + varg0[v5]) + msg.data[varg0.data + varg0[v5]] - (32 + (varg0.data + varg0[v5])) >= 128);
            require(32 + (varg0.data + varg0[v5]) + msg.data[varg0.data + varg0[v5]] - (32 + (varg0.data + varg0[v5])) >= 128);
            v45 = new struct(4);
            require(!((v45 + 128 < v45) | (v45 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(msg.data[32 + (varg0.data + varg0[v5])] == address(msg.data[32 + (varg0.data + varg0[v5])]));
            v45.word0 = msg.data[32 + (varg0.data + varg0[v5])];
            require(msg.data[32 + (varg0.data + varg0[v5]) + 32] == address(msg.data[32 + (varg0.data + varg0[v5]) + 32]));
            v45.word1 = msg.data[32 + (varg0.data + varg0[v5]) + 32];
            require(msg.data[32 + (varg0.data + varg0[v5]) + 64] == address(msg.data[32 + (varg0.data + varg0[v5]) + 64]));
            v45.word2 = msg.data[32 + (varg0.data + varg0[v5]) + 64];
            require(msg.data[32 + (varg0.data + varg0[v5]) + 96] == uint24(msg.data[32 + (varg0.data + varg0[v5]) + 96]));
            v45.word3 = msg.data[32 + (varg0.data + varg0[v5]) + 96];
            require(v5 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2[v5] = v45;
            require(v5 + 1, Panic(17)); // arithmetic overflow or underflow
            v5 += 1;
        }
    }
}

function withdrawETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _withdrawETH, Error('Not authorized'));
    v0 = _withdrawETH.call().value(amount).gas(2300 * !amount);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(msg.data.length > 4 + data + 31);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = 36 + data + msg.data[4 + data];
    require(v1 - (36 + data) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (36 + data + data.word1) >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 < v2) | (v2 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[36 + data + data.word1] <= uint64.max);
    v3 = 36 + data + data.word1 + msg.data[36 + data + data.word1];
    require(v1 > v3 + 31);
    require(msg.data[v3] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v3]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v3] << 5) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(v3 + (msg.data[v3] << 7) + 32 <= v1);
    v7 = v8 = v3 + 32;
    while (v7 < v3 + (msg.data[v3] << 7) + 32) {
        require(v1 - v7 >= 128);
        v9 = new struct(4);
        require(!((v9 + 128 < v9) | (v9 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v7] == address(msg.data[v7]));
        v9.word0 = msg.data[v7];
        require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
        v9.word1 = msg.data[v7 + 32];
        require(msg.data[v7 + 64] == address(msg.data[v7 + 64]));
        v9.word2 = msg.data[v7 + 64];
        require(msg.data[v7 + 96] == uint24(msg.data[v7 + 96]));
        v9.word3 = msg.data[v7 + 96];
        MEM[v5] = v9;
        v5 = v5 + 32;
        v7 = v7 + 128;
    }
    v2.word0 = v4;
    v2.word1 = msg.data[32 + (36 + data + data.word1)];
    v2.word2 = msg.data[36 + data + data.word1 + 64];
    v2.word3 = msg.data[36 + data + data.word1 + 96];
    v2.word4 = msg.data[128 + (36 + data + data.word1)];
    require(v2.word4 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v2.word4 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v2.word4 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v13, /* address */ v14 = address(0x1f98431c8ad98523631ae4a59f267346ea31f984).getPool(address(MEM[v10[v2.word4]]), address(MEM[32 + v11[v2.word4]]), uint24(MEM[96 + v12[v2.word4]])).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v14 == address(v14));
    require(address(v14) == msg.sender, Error(70));
    if (amount0Delta <= 0) {
    }
    v15 = _SafeAdd(1, v2.word4);
    v2.word4 = v15;
    if (v16.length - v15) {
        require(v2.word4 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v2.word4 < v18.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v2.word4 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v20 = address(MEM[v18[v2.word4]]) < address(MEM[32 + v19[v2.word4]]);
        if (0 - v2.word4) {
            v21 = _SafeSub(v2.word4, 1);
            require(v21 < v22.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v23 = 0xf4e(v24);
            if (v20) {
                v25 = v26 = 0xf87(1, 0x1000276a3);
            } else {
                v25 = v27 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = 160;
            MEM[32 + MEM[64] + 192] = v28.length;
            v29 = v30 = 0;
            v31 = v32 = v28.data;
            v33 = v34 = 32 + MEM[64] + 224;
            while (v29 < v28.length) {
                MEM[v33] = address(MEM[MEM[v31]]);
                MEM[v33 + 32] = address(MEM[MEM[v31] + 32]);
                MEM[v33 + 64] = address(MEM[MEM[v31] + 64]);
                MEM[v33 + 96] = uint24(MEM[96 + MEM[v31]]);
                v31 = v31 + 32;
                v29 += 1;
                v33 = v33 + 128;
            }
            MEM[32 + MEM[64] + 64] = v2.word1;
            MEM[32 + MEM[64] + 96] = v2.word2;
            MEM[32 + MEM[64] + 128] = v2.word3;
            MEM[32 + MEM[64] + 160] = v2.word4;
            v35 = new uint256[](v33 - MEM[64] - 32);
            MCOPY(v35.data, MEM[64] + 32, v33 - MEM[64] - 32);
            MEM[4 + MEM[64] + (v33 - MEM[64] - 32) + 192] = 0;
            v36, /* uint256 */ v37, /* uint256 */ v38 = address(MEM[64 + v17[v2.word4]]).swap(address(MEM[64 + v22[v21]]), bool(v20), v23, address(v25), v35).gas(msg.gas);
            require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        } else {
            v39 = 0xf4e(v24);
            if (v20) {
                v40 = v41 = 0xf87(1, 0x1000276a3);
            } else {
                v40 = v42 = 0xf68(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = 160;
            MEM[32 + MEM[64] + 192] = v43.length;
            v44 = v45 = 0;
            v46 = v47 = v43.data;
            v48 = v49 = 32 + MEM[64] + 224;
            while (v44 < v43.length) {
                MEM[v48] = address(MEM[MEM[v46]]);
                MEM[v48 + 32] = address(MEM[MEM[v46] + 32]);
                MEM[v48 + 64] = address(MEM[MEM[v46] + 64]);
                MEM[v48 + 96] = uint24(MEM[96 + MEM[v46]]);
                v46 = v46 + 32;
                v44 += 1;
                v48 = v48 + 128;
            }
            MEM[32 + MEM[64] + 64] = v2.word1;
            MEM[32 + MEM[64] + 96] = v2.word2;
            MEM[32 + MEM[64] + 128] = v2.word3;
            MEM[32 + MEM[64] + 160] = v2.word4;
            v50 = new uint256[](v48 - MEM[64] - 32);
            MCOPY(v50.data, MEM[64] + 32, v48 - MEM[64] - 32);
            MEM[4 + MEM[64] + (v48 - MEM[64] - 32) + 192] = 0;
            v51, /* uint256 */ v52, /* uint256 */ v53 = address(MEM[64 + v17[v2.word4]]).swap(address(this), bool(v20), v39, address(v40), v50).gas(msg.gas);
            require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        }
    } else {
        v54 = _SafeAdd(v24, v2.word2);
        require(v54 < v2.word1, Error(78));
        v55 = _SafeSub(v2.word4, 1);
        require(v55 < v56.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v57 = _SafeSub(v2.word4, 1);
        require(v57 < v58.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v59, /* bool */ v60 = address(MEM[v56[v55]]).transfer(address(MEM[64 + v58[v57]]), v24).gas(msg.gas);
        require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v60 == bool(v60));
        v61, /* uint256 */ v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v63 = _SafeSub(v62, v2.word2);
        v64 = _SafeMul(v63, v2.word3);
        require(1000, Panic(18)); // division by zero
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v65 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v62).gas(msg.gas);
        require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v66 = block.coinbase.call().value(v64 / 1000).gas(2300 * !(v64 / 1000));
        require(bool(v66), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v67 = _SafeSub(v62, v64 / 1000);
        v68 = tx.origin.call().value(v67).gas(2300 * !v67);
        require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0xf4e(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xf68(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0xf87(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x23a69e75 == function_selector >> 224) {
        pancakeV3SwapCallback(int256,int256,bytes);
    } else if (0x9e281a98 == function_selector >> 224) {
        withdrawToken(address,uint256);
    } else if (0xb14a776d == function_selector >> 224) {
        0xb14a776d();
    } else if (0xf14210a6 == function_selector >> 224) {
        withdrawETH(uint256);
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
