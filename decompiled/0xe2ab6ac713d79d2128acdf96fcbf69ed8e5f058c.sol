// Decompiled by library.dedaub.com
// 2026.04.25 04:27 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV3SwapCallback; // TRANSIENT_STORAGE[0x0]
uint256 _receiveFlashLoan; // TRANSIENT_STORAGE[0x1]
address _owner; // STORAGE[0x0] bytes 0 to 19
uint256 stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00; // STORAGE[0x9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00]



function emergencyWithdraw(address _receiver) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, NotAuthorized(msg.sender));
    if (_receiver) {
        v0, /* uint256 */ v1 = _receiver.balanceOf(this).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v1) {
            0x144c(v1, _owner, _receiver);
        }
    } else if (this.balance) {
        v2, /* uint256 */ v3 = _owner.call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v4 = new bytes[](RETURNDATASIZE());
            v3 = v4.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        require(v2, TransferFailed(_owner, address(0x0), this.balance));
    }
}

function 0x1257() private { 
    require(2 - stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00, ReentrancyGuardReentrantCall());
    MEM[0] = MEM[0];
    stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 = 2;
    return ;
}

function 0x1272(struct(9) varg0) private { 
    v0 = 0x1776(varg0);
    require(v0 <= int256.max, fullExit(1, v0));
    require(varg0.word0 <= 5, Panic(33)); // failed convertion to enum type
    if (varg0.word0 - 0) {
        require(varg0.word0 <= 5, Panic(33)); // failed convertion to enum type
        if (varg0.word0 - 1) {
            require(varg0.word0 <= 5, Panic(33)); // failed convertion to enum type
            if (varg0.word0 - 2) {
                require(varg0.word0 <= 5, Panic(33)); // failed convertion to enum type
                revert(varg0.word0);
            } else {
                v1 = 0x2c38(v0);
                varg0.word5 = v1;
                v2 = v3 = 0x1cf5(varg0);
            }
        } else {
            varg0.word5 = v0;
            v2 = v4 = 0x1b8f(varg0);
        }
    } else {
        varg0.word5 = v0;
        v2 = v5 = 0x1970(varg0);
    }
    require(v2 >= varg0.word6, address(varg0.word4), varg0.word6, v2);
    return v2;
}

function updateOwner(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, NotAuthorized(msg.sender));
    require(varg0, InvalidAddress(varg0));
    _owner = varg0;
}

function 0x144c(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (!(v1 & (MEM[0] == 1))) {
        require(!(!v1 & 0x1), MEM[64], RETURNDATASIZE());
        v0 = v2 = v1 & (!RETURNDATASIZE() & (varg2.code.size > 0));
    }
    require(v0, SafeERC20FailedOperation(address(varg2)));
    return ;
}

function 0x1488(struct(5) varg0) private { 
    v0 = _SafeSub(v1.length, 1);
    require(v0 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (address(MEM[128 + v1[v0]]) == address(0x0)) {
        v2 = v3 = this.balance;
    } else {
        v4, /* uint256 */ v2 = address(MEM[128 + v1[v0]]).balanceOf(this).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    v5 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(MEM[128 + v1[v0]]);
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != address(MEM[128 + v1[v0]])) {
        v5 = v7 = !address(MEM[128 + v1[v0]]);
    }
    if (!v5) {
        0x144c(v2, _owner, address(MEM[128 + v1[v0]]));
        return ;
    } else {
        if (!(address(MEM[128 + v1[v0]]) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
            v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v2).gas(msg.gas);
            require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        if (uint16(varg0.word3)) {
            v9 = _SafeMul(v2, uint16(varg0.word3));
            v10 = _SafeDiv(v9, 10000);
            v11, /* uint256 */ v12 = block.coinbase.call().value(v10).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v13 = new bytes[](RETURNDATASIZE());
                v12 = v13.data;
                RETURNDATACOPY(v12, 0, RETURNDATASIZE());
            }
            require(v11, TransferFailed(address(block.coinbase), address(0x0), v10));
        }
        v14, /* uint256 */ v15 = _owner.call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v16 = new bytes[](RETURNDATASIZE());
            v15 = v16.data;
            RETURNDATACOPY(v15, 0, RETURNDATASIZE());
        }
        require(v14, TransferFailed(_owner, address(0x0), this.balance));
        return ;
    }
}

function owner() public nonPayable { 
    return _owner;
}

function 0x1776(struct(9) varg0) private { 
    if (address(varg0.word3)) {
        if (!(address(varg0.word3) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
            if (this.balance) {
                require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
                require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
        }
        v1, /* uint256 */ v2 = address(varg0.word3).balanceOf(this).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v2;
    } else {
        v3, /* uint256 */ v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v4) {
            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
            v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v4).gas(msg.gas);
            require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        return this.balance;
    }
}

function receive() public payable { 
}

function 0x1970(struct(9) varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = address(varg0.word1).getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    require(0 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v5 = v4.data;
    if (address(v4[0x0]) == address(varg0.word3)) {
        v6 = v7 = uint112(v1);
    } else {
        v6 = v8 = uint112(v2);
    }
    if (address(v4[0x0]) == address(varg0.word3)) {
        v9 = v10 = uint112(v2);
    } else {
        v9 = v11 = uint112(v1);
    }
    v12 = 0x2cea(10000, varg0.word7);
    v13 = _SafeMul(varg0.word5, uint24(v12));
    v14 = _SafeMul(10000, v6);
    v15 = _SafeAdd(v14, v13);
    v16 = _SafeMul(v13, v9);
    v17 = v18 = _SafeDiv(v16, v15);
    require(v18 < v9, InsufficientLiquidity(v9, v18));
    0x144c(varg0.word5, varg0.word1, address(varg0.word3));
    if (address(v4[0x0]) == address(varg0.word3)) {
        v17 = v19 = 0;
    } else {
        v17 = v20 = 0;
    }
    v21 = new uint256[](0);
    require(bool((address(varg0.word1)).code.size));
    v22 = address(varg0.word1).swap(v17, v17, this, v21).gas(msg.gas);
    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return v18;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(_uniswapV3SwapCallback) == msg.sender, InvalidCaller(msg.sender));
    v1 = 4 + rawData + 32 + msg.data[4 + rawData];
    require(v1 - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word1;
    require(v1 - v2 >= 288);
    v3 = 0x1e39();
    require(msg.data[v2] < 6);
    v3.word0 = msg.data[v2];
    require(msg.data[v2 + 32] == address(msg.data[v2 + 32]));
    v3.word1 = msg.data[v2 + 32];
    require(msg.data[v2 + 64] <= uint64.max);
    require(v2 + msg.data[v2 + 64] + 31 < v1);
    require(msg.data[v2 + msg.data[v2 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v2 + msg.data[v2 + 64]]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v2 + msg.data[v2 + 64]] << 5) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v2 + msg.data[v2 + 64]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(v2 + msg.data[v2 + 64] + (msg.data[v2 + msg.data[v2 + 64]] << 5) + 32 <= v1);
    v7 = v8 = v2 + msg.data[v2 + 64] + 32;
    while (v7 < v2 + msg.data[v2 + 64] + (msg.data[v2 + msg.data[v2 + 64]] << 5) + 32) {
        require(msg.data[v7] == address(msg.data[v7]));
        MEM[v5] = msg.data[v7];
        v5 += 32;
        v7 += 32;
    }
    v3.word2 = v4;
    require(msg.data[v2 + 96] == address(msg.data[v2 + 96]));
    v3.word3 = msg.data[v2 + 96];
    require(msg.data[v2 + 128] == address(msg.data[v2 + 128]));
    v3.word4 = msg.data[v2 + 128];
    v3.word5 = msg.data[160 + v2];
    v3.word6 = msg.data[v2 + 192];
    require(msg.data[v2 + 224] == uint24(msg.data[v2 + 224]));
    v3.word7 = msg.data[v2 + 224];
    require(msg.data[v2 + (uint8.max + 1)] <= uint64.max);
    require(v2 + msg.data[v2 + (uint8.max + 1)] + 31 < v1);
    require(msg.data[v2 + msg.data[v2 + (uint8.max + 1)]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new bytes[](msg.data[v2 + msg.data[v2 + (uint8.max + 1)]]);
    require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + (uint8.max + 1)]]) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + (uint8.max + 1)]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2 + (uint8.max + 1)] + msg.data[v2 + msg.data[v2 + (uint8.max + 1)]] + 32 <= v1);
    CALLDATACOPY(v9.data, v2 + msg.data[v2 + (uint8.max + 1)] + 32, msg.data[v2 + msg.data[v2 + (uint8.max + 1)]]);
    v9[msg.data[v2 + msg.data[v2 + (uint8.max + 1)]]] = 0;
    v3.word8 = v9;
    require(0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v11 = v10.data;
    require(0 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v13 = v12.data;
    require(1 < v14.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v15.data + v15.length - v15.data >= 64);
    require(MEM[v15.data] == address(MEM[v15.data]));
    require(v15[32][32] == int24(v15[32][32]));
    if (address(v10[0x0]) == address(v3.word3)) {
        v16 = v17 = 0x25a6(1, 0x1000276a3);
    } else {
        v16 = v18 = 0x2587(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v19 = new uint256[](0);
    v20, v21 = msg.sender.swap(address(v12[0x0]), address(v14[0x1]), uint24(v3.word7), int24(v15[32][32]), address(MEM[v15.data]), address(v10[0x0]) == address(v3.word3), v3.word5, address(v16), v19).gas(msg.gas);
    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (int128(v21 >> 128) < 0) {
        v22 = 0x263f(v21 >> 128);
        if (address(v12[0x0])) {
            require(bool(msg.sender.code.size));
            v23 = msg.sender.sync(address(v12[0x0])).gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0x144c(uint128(v22), msg.sender, address(v12[0x0]));
            v24, /* uint256 */ v25 = msg.sender.settle().gas(msg.gas);
            require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            v26, /* uint256 */ v27 = msg.sender.settle().value(uint128(v22)).gas(msg.gas);
            require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
    }
    if (int128(v21) < 0) {
        v28 = 0x263f(v21);
        if (address(v14[0x1])) {
            require(bool(msg.sender.code.size));
            v29 = msg.sender.sync(address(v14[0x1])).gas(msg.gas);
            require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            0x144c(uint128(v28), msg.sender, address(v14[0x1]));
            v30, /* uint256 */ v31 = msg.sender.settle().gas(msg.gas);
            require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            v32, /* uint256 */ v33 = msg.sender.settle().value(uint128(v28)).gas(msg.gas);
            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
    }
    v34 = v35 = 0;
    if (int128(v21 >> 128) > 0) {
        v34 = v36 = uint128(v21 >> 128);
        require(bool(msg.sender.code.size));
        v37 = msg.sender.take(address(v12[0x0]), address(this), v36).gas(msg.gas);
        require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    if (int128(v21) > 0) {
        v34 = v38 = uint128(v21);
        require(bool(msg.sender.code.size));
        v39 = msg.sender.take(address(v14[0x1]), address(this), v38).gas(msg.gas);
        require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    MEM[MEM[64] + 32] = v34;
    v40 = new uint256[](32);
    MCOPY(v40.data, MEM[64] + 32, 32);
    MEM[v40.data + 32] = 0;
    return v40;
}

function 0x1b8f(struct(9) varg0) private { 
    require(0 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v1 = v0.data;
    if (address(v0[0x0]) == address(varg0.word3)) {
        v2 = v3 = 0x25a6(1, 0x1000276a3);
    } else {
        v2 = v4 = 0x2587(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    _uniswapV3SwapCallback = varg0.word1;
    MEM[32 + MEM[64]] = address(varg0.word3);
    v5 = new uint256[](32);
    MCOPY(v5.data, MEM[64] + 32, 32);
    MEM[v5.data + 32] = 0;
    v6, v7, v7 = address(varg0.word1).swap(address(this), address(v0[0x0]) == address(varg0.word3), varg0.word5, address(v2), v5).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    _uniswapV3SwapCallback = 0;
    if (address(v0[0x0]) != address(varg0.word3)) {
    }
    v8 = 0x2c38(v7);
    return v8;
}

function 0xb290fb47(struct(5) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 160);
    v0 = 0x1e62();
    require(msg.data[4 + varg0] <= uint64.max);
    v1 = varg0.word0;
    require(msg.data.length > varg0.word0 + 31);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(varg0.word0 + (v1.length << 5) + 32 <= msg.data.length);
    v5 = v6 = v1.data;
    while (v5 < varg0.word0 + (v1.length << 5) + 32) {
        require(msg.data[v5] <= uint64.max);
        require(msg.data.length - (varg0.word0 + msg.data[v5] + 32) >= 288);
        v7 = 0x1e39();
        require(msg.data[varg0.word0 + msg.data[v5] + 32] < 6);
        v7.word0 = msg.data[varg0.word0 + msg.data[v5] + 32];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 32] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 32]));
        v7.word1 = msg.data[varg0.word0 + msg.data[v5] + 32 + 32];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 64] <= uint64.max);
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + 31 < msg.data.length);
        v8 = msg.data[varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64]];
        require(v8 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new uint256[](v8);
        require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v8 << 5) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v8 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v10 = v11 = v9.data;
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + (v8 << 5) + 32 <= msg.data.length);
        v12 = v13 = varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + 32;
        while (v12 < varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + (v8 << 5) + 32) {
            require(msg.data[v12] == address(msg.data[v12]));
            MEM[v10] = msg.data[v12];
            v10 += 32;
            v12 += 32;
        }
        v7.word2 = v9;
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 96] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 96]));
        v7.word3 = msg.data[varg0.word0 + msg.data[v5] + 32 + 96];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 128] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 128]));
        v7.word4 = msg.data[varg0.word0 + msg.data[v5] + 32 + 128];
        v7.word5 = msg.data[160 + (varg0.word0 + msg.data[v5] + 32)];
        v7.word6 = msg.data[varg0.word0 + msg.data[v5] + 32 + 192];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 224] == uint24(msg.data[varg0.word0 + msg.data[v5] + 32 + 224]));
        v7.word7 = msg.data[varg0.word0 + msg.data[v5] + 32 + 224];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] <= uint64.max);
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + 31 < msg.data.length);
        v14 = msg.data[varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)]];
        require(v14 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v15 = new bytes[](v14);
        require(!((v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14) + 31) < v15) | (v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + v14 + 32 <= msg.data.length);
        CALLDATACOPY(v15.data, varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + 32, v14);
        v15[v14] = 0;
        v7.word8 = v15;
        MEM[v3] = v7;
        v3 += 32;
        v5 += 32;
    }
    v0.word0 = v2;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    v0.word2 = varg0.word2;
    require(varg0.word3 == uint16(varg0.word3));
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    _receiveFlashLoan = 1;
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = 160;
    MEM[32 + MEM[64] + 192] = v16.length;
    v17 = v18 = 32 + MEM[64] + 224;
    v19 = v20 = 32 + MEM[64] + (v16.length << 5) + 224;
    v21 = v22 = v16.data;
    v23 = v24 = 0;
    while (v23 < v16.length) {
        MEM[v17] = v19 - (32 + MEM[64]) - 224;
        require(MEM[MEM[v21]] < 6, Panic(33)); // failed convertion to enum type
        MEM[v19] = MEM[MEM[v21]];
        MEM[v19 + 32] = address(MEM[MEM[v21] + 32]);
        MEM[v19 + 64] = 288;
        MEM[v19 + 288] = MEM[MEM[MEM[v21] + 64]];
        v25 = v19 + 288 + 32;
        v26 = v27 = MEM[MEM[v21] + 64] + 32;
        v28 = v29 = 0;
        while (v28 < MEM[MEM[MEM[v21] + 64]]) {
            MEM[v25] = address(MEM[v26]);
            v25 += 32;
            v26 = v26 + 32;
            v28 += 1;
        }
        MEM[v19 + 96] = address(MEM[MEM[v21] + 96]);
        MEM[v19 + 128] = address(MEM[MEM[v21] + 128]);
        MEM[v19 + 160] = MEM[MEM[v21] + 160];
        MEM[v19 + 192] = MEM[MEM[v21] + 192];
        MEM[v19 + 224] = uint24(MEM[MEM[v21] + 224]);
        MEM[v19 + (uint8.max + 1)] = v25 - v19;
        MEM[v25] = MEM[MEM[MEM[v21] + (uint8.max + 1)]];
        MCOPY(v25 + 32, MEM[MEM[v21] + (uint8.max + 1)] + 32, MEM[MEM[MEM[v21] + (uint8.max + 1)]]);
        MEM[v25 + MEM[MEM[MEM[v21] + (uint8.max + 1)]] + 32] = 0;
        v19 = v25 + (MEM[MEM[MEM[v21] + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
        v21 += 32;
        v17 += 32;
        v23 += 1;
    }
    MEM[32 + MEM[64] + 64] = address(v0.word1);
    MEM[32 + MEM[64] + 96] = v0.word2;
    MEM[32 + MEM[64] + 128] = uint16(v0.word3);
    MEM[32 + MEM[64] + 160] = v0.word4;
    MEM[v19] = 1;
    CALLDATACOPY(v19 + 32, msg.data.length, 32);
    v30 = new uint256[](1);
    CALLDATACOPY(v30.data, msg.data.length, 32);
    require(0 < 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[32 + v19] = address(v0.word1);
    require(0 < v30.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v31 = v30.data;
    v30[0] = v0.word2;
    MEM[MEM[64]] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
    v32 = new uint256[](1);
    v33 = v34 = 0;
    v35 = v36 = v19 + 32;
    v37 = v38 = v32.data;
    while (v33 < 1) {
        MEM[v37] = address(MEM[v35]);
        v35 += 32;
        v37 = v37 + 32;
        v33 += 1;
    }
    v39 = v40 = v37.data;
    v41 = v42 = v30.data;
    v43 = v44 = 0;
    v37 = new uint256[](v30.length);
    while (v43 < v30.length) {
        MEM[v39] = MEM[v41];
        v39 += 32;
        v41 = v41 + 32;
        v43 += 1;
    }
    v39 = new uint256[](v19 - MEM[64] - 32);
    MCOPY(v39.data, MEM[64] + 32, v19 - MEM[64] - 32);
    MEM[v39 + (v19 - MEM[64] - 32) + 32] = 0;
    require(bool(0xba12222222228d8ba445958a75a0704d566bf2c8.code.size));
    v45 = v46, /* uint256 */ v47 = 0xba12222222228d8ba445958a75a0704d566bf2c8.flashLoan(address(this), v32, v37, v39).gas(msg.gas);
    if (v46) {
        v45 = v48 = 1;
    }
    if (v45) {
        v49 = _SafeSub(v50.length, 1);
        require(v49 < v50.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (address(MEM[128 + v50[v49]]) == address(0x0)) {
            v51 = v52 = this.balance;
        } else {
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v53, /* uint256 */ v51 = address(MEM[128 + v50[v49]]).balanceOf(this).gas(msg.gas);
            require(bool(v53), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        revert(v51);
    } else {
        if (!RETURNDATASIZE()) {
            v54 = v55 = 96;
        } else {
            v54 = v56 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v56.data, 0, RETURNDATASIZE());
        }
        v57 = new uint256[](MEM[v54]);
        MCOPY(v57.data, v47, MEM[v54]);
        MEM[v57 + MEM[v54] + 32] = 0;
        revert(v57);
    }
}

function 0x1cf5(struct(9) varg0) private { 
    _uniswapV3SwapCallback = varg0.word1;
    MEM[32 + MEM[64]] = 32;
    require(varg0.word0 < 6, Panic(33)); // failed convertion to enum type
    MEM[32 + MEM[64] + 32] = varg0.word0;
    MEM[32 + MEM[64] + 32 + 32] = address(varg0.word1);
    MEM[32 + MEM[64] + 32 + 64] = 288;
    MEM[32 + MEM[64] + 32 + 288] = v0.length;
    v1 = v2 = 32 + MEM[64] + 32 + 288 + 32;
    v3 = v4 = v0.data;
    v5 = v6 = 0;
    while (v5 < v0.length) {
        MEM[v1] = address(MEM[v3]);
        v1 += 32;
        v3 = v3 + 32;
        v5 += 1;
    }
    MEM[32 + MEM[64] + 32 + 96] = address(varg0.word3);
    MEM[32 + MEM[64] + 32 + 128] = address(varg0.word4);
    MEM[32 + MEM[64] + 32 + 160] = varg0.word5;
    MEM[32 + MEM[64] + 32 + 192] = varg0.word6;
    MEM[32 + MEM[64] + 32 + 224] = uint24(varg0.word7);
    MEM[32 + MEM[64] + 32 + (uint8.max + 1)] = v1 - (32 + MEM[64] + 32);
    MEM[v1] = v7.length;
    MCOPY(v1 + 32, v7.data, v7.length);
    MEM[v1 + v7.length + 32] = 0;
    v8 = new uint256[](v1 + (v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MCOPY(v8.data, MEM[64] + 32, v1 + (v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[v8 + (v1 + (v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
    v9, /* uint256 */ v10 = address(varg0.word1).unlock(v8).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(v10, 0, RETURNDATASIZE());
    MEM[64] = v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    require(v10 + RETURNDATASIZE() - v10 >= 32);
    require(MEM[v10] <= uint64.max);
    v11 = 0x29a0(v10 + MEM[v10], v10 + RETURNDATASIZE());
    _uniswapV3SwapCallback = 0;
    require(v11.data + v11.length - v11.data >= 32);
    return MEM[v11.data];
}

function 0x1e39() private { 
    v0 = new struct(9);
    require(!((v0 + 288 < v0) | (v0 + 288 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0xd5268a92(struct(5) varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 160);
    v0 = 0x1e62();
    require(msg.data[4 + varg0] <= uint64.max);
    v1 = varg0.word0;
    require(msg.data.length > varg0.word0 + 31);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(varg0.word0 + (v1.length << 5) + 32 <= msg.data.length);
    v5 = v6 = v1.data;
    while (v5 < varg0.word0 + (v1.length << 5) + 32) {
        require(msg.data[v5] <= uint64.max);
        require(msg.data.length - (varg0.word0 + msg.data[v5] + 32) >= 288);
        v7 = 0x1e39();
        require(msg.data[varg0.word0 + msg.data[v5] + 32] < 6);
        v7.word0 = msg.data[varg0.word0 + msg.data[v5] + 32];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 32] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 32]));
        v7.word1 = msg.data[varg0.word0 + msg.data[v5] + 32 + 32];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 64] <= uint64.max);
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + 31 < msg.data.length);
        v8 = msg.data[varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64]];
        require(v8 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = new uint256[](v8);
        require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v8 << 5) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v8 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v10 = v11 = v9.data;
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + (v8 << 5) + 32 <= msg.data.length);
        v12 = v13 = varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + 32;
        while (v12 < varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + 64] + (v8 << 5) + 32) {
            require(msg.data[v12] == address(msg.data[v12]));
            MEM[v10] = msg.data[v12];
            v10 += 32;
            v12 += 32;
        }
        v7.word2 = v9;
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 96] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 96]));
        v7.word3 = msg.data[varg0.word0 + msg.data[v5] + 32 + 96];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 128] == address(msg.data[varg0.word0 + msg.data[v5] + 32 + 128]));
        v7.word4 = msg.data[varg0.word0 + msg.data[v5] + 32 + 128];
        v7.word5 = msg.data[160 + (varg0.word0 + msg.data[v5] + 32)];
        v7.word6 = msg.data[varg0.word0 + msg.data[v5] + 32 + 192];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + 224] == uint24(msg.data[varg0.word0 + msg.data[v5] + 32 + 224]));
        v7.word7 = msg.data[varg0.word0 + msg.data[v5] + 32 + 224];
        require(msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] <= uint64.max);
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + 31 < msg.data.length);
        v14 = msg.data[varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)]];
        require(v14 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v15 = new bytes[](v14);
        require(!((v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14) + 31) < v15) | (v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + v14 + 32 <= msg.data.length);
        CALLDATACOPY(v15.data, varg0.word0 + msg.data[v5] + 32 + msg.data[varg0.word0 + msg.data[v5] + 32 + (uint8.max + 1)] + 32, v14);
        v15[v14] = 0;
        v7.word8 = v15;
        MEM[v3] = v7;
        v3 += 32;
        v5 += 32;
    }
    v0.word0 = v2;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    v0.word2 = varg0.word2;
    require(varg0.word3 == uint16(varg0.word3));
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    0xcad(v0);
}

function 0x1e62() private { 
    v0 = new struct(5);
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    v0 = v1 = 291;
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(msg.data.length > 4 + tokens + 31);
    require(tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v2 = new address[](tokens.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (tokens.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (tokens.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(4 + tokens + (tokens.length << 5) + 32 <= msg.data.length);
    v5 = v6 = tokens.data;
    while (v5 < 4 + tokens + (tokens.length << 5) + 32) {
        require(msg.data[v5] == address(msg.data[v5]));
        MEM[v3] = msg.data[v5];
        v5 += 32;
        v3 = v3 + 32;
    }
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    require(amounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v7 = new uint256[](amounts.length);
    require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amounts.length << 5) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amounts.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v9 = v7.data;
    require(4 + amounts + (amounts.length << 5) + 32 <= msg.data.length);
    v10 = v11 = amounts.data;
    while (v10 < 4 + amounts + (amounts.length << 5) + 32) {
        MEM[v8] = msg.data[v10];
        v8 += 32;
        v10 += 32;
    }
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    require(feeAmounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v12 = new uint256[](feeAmounts.length);
    require(!((v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (feeAmounts.length << 5) + 31) < v12) | (v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (feeAmounts.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v13 = v14 = v12.data;
    require(4 + feeAmounts + (feeAmounts.length << 5) + 32 <= msg.data.length);
    v15 = v16 = feeAmounts.data;
    while (v15 < 4 + feeAmounts + (feeAmounts.length << 5) + 32) {
        MEM[v13] = msg.data[v15];
        v13 += 32;
        v15 += 32;
    }
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    require(userData.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = v17 = new bytes[](userData.length);
    require(!((v17 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31) < v17) | (v17 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + userData + userData.length + 32 <= msg.data.length);
    CALLDATACOPY(v17.data, userData.data, userData.length);
    v17[userData.length] = 0;
    require(0xba12222222228d8ba445958a75a0704d566bf2c8 == msg.sender, InvalidCaller(msg.sender));
    require(v17.data + v17.length - v17.data >= 32);
    require(MEM[v17.data] <= uint64.max);
    require(v17.data + v17.length - (v17.data + MEM[v17.data]) >= 160);
    v0 = v18 = 0x1e62();
    require(v17[MEM[v17.data]] <= uint64.max);
    require(v17.data + v17.length > v17.data + MEM[v17.data] + v17[MEM[v17.data]] + 31);
    v19 = MEM[v17.data + MEM[v17.data] + v17[MEM[v17.data]]];
    require(v19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v20 = new uint256[](v19);
    require(!((v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v19 << 5) + 31) < v20) | (v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v19 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v21 = v22 = v20.data;
    require(v17.data + MEM[v17.data] + v17[MEM[v17.data]] + (v19 << 5) + 32 <= v17.data + v17.length);
    v23 = v24 = v17.data + MEM[v17.data] + v17[MEM[v17.data]] + 32;
    while (v23 < v17.data + MEM[v17.data] + v17[MEM[v17.data]] + (v19 << 5) + 32) {
        require(MEM[v23] <= uint64.max);
        v25 = v17.data + MEM[v17.data] + v17[MEM[v17.data]] + MEM[v23];
        require(v17.data + v17.length - v25 - 32 >= 288);
        v26 = 0x1e39();
        require(MEM[v25 + 32] < 6);
        v26.word0 = MEM[v25 + 32];
        require(MEM[v25 + 64] == address(MEM[v25 + 64]));
        v26.word1 = MEM[v25 + 64];
        require(MEM[v25 + 96] <= uint64.max);
        v27 = 0x2931(v25 + MEM[v25 + 96] + 32, v17.data + v17.length);
        v26.word2 = v27;
        require(MEM[v25 + 128] == address(MEM[v25 + 128]));
        v26.word3 = MEM[v25 + 128];
        require(MEM[v25 + 160] == address(MEM[v25 + 160]));
        v26.word4 = MEM[v25 + 160];
        v26.word5 = MEM[192 + v25];
        v26.word6 = MEM[v25 + 224];
        require(MEM[v25 + (uint8.max + 1)] == uint24(MEM[v25 + (uint8.max + 1)]));
        v26.word7 = MEM[v25 + (uint8.max + 1)];
        require(MEM[v25 + 288] <= uint64.max);
        v28 = 0x29a0(v25 + MEM[v25 + 288] + 32, v17.data + v17.length);
        v26.word8 = v28;
        MEM[v21] = v26;
        v21 += 32;
        v23 += 32;
    }
    v18.word0 = v20;
    require(MEM[v17.data + MEM[v17.data] + 32] == address(MEM[v17.data + MEM[v17.data] + 32]));
    v18.word1 = MEM[v17.data + MEM[v17.data] + 32];
    v18.word2 = MEM[64 + (v17.data + MEM[v17.data])];
    require(MEM[v17.data + MEM[v17.data] + 96] == uint16(MEM[v17.data + MEM[v17.data] + 96]));
    v18.word3 = MEM[v17.data + MEM[v17.data] + 96];
    v18.word4 = MEM[128 + (v17.data + MEM[v17.data])];
    require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v29 = v2.data;
    v0 = v30 = v2[0];
    require(0 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v31 = v12.data;
    require(0 < v7.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v32 = v7.data;
    v0 = v33 = _SafeAdd(v7[0], v12[0]);
    v0 = v34 = _SafeSub(v35.length, 1);
    v0 = v36 = _receiveFlashLoan;
    v0 = v37 = 0;
    while (v0 <= v0) {
        if (!v0) {
            require(v0 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v38 = 0x1272(MEM[32 + (v0 << 5) + MEM[v0]]);
        } else {
            require(v0 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v39 = MEM[32 + (v0 << 5) + MEM[v0]];
            MEM[MEM[64]] = 0x1ed3adb000000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = 32;
            require(MEM[v39] < 6, Panic(33)); // failed convertion to enum type
            MEM[4 + MEM[64] + 32] = MEM[v39];
            MEM[4 + MEM[64] + 32 + 32] = address(MEM[v39 + 32]);
            MEM[4 + MEM[64] + 32 + 64] = 288;
            MEM[4 + MEM[64] + 32 + 288] = MEM[MEM[v39 + 64]];
            v40 = v41 = 4 + MEM[64] + 32 + 288 + 32;
            v42 = v43 = MEM[v39 + 64] + 32;
            v44 = v45 = 0;
            while (v44 < MEM[MEM[v39 + 64]]) {
                MEM[v40] = address(MEM[v42]);
                v40 += 32;
                v42 = v42 + 32;
                v44 += 1;
            }
            MEM[4 + MEM[64] + 32 + 96] = address(MEM[v39 + 96]);
            MEM[4 + MEM[64] + 32 + 128] = address(MEM[v39 + 128]);
            MEM[4 + MEM[64] + 32 + 160] = MEM[v39 + 160];
            MEM[4 + MEM[64] + 32 + 192] = MEM[v39 + 192];
            MEM[4 + MEM[64] + 32 + 224] = uint24(MEM[v39 + 224]);
            MEM[4 + MEM[64] + 32 + (uint8.max + 1)] = v40 - (4 + MEM[64] + 32);
            MEM[v40] = MEM[MEM[v39 + (uint8.max + 1)]];
            MCOPY(v40 + 32, MEM[v39 + (uint8.max + 1)] + 32, MEM[MEM[v39 + (uint8.max + 1)]]);
            MEM[v40 + MEM[MEM[v39 + (uint8.max + 1)]] + 32] = 0;
            v46 = v47, /* uint256 */ v48 = this.call(MEM[MEM[64]:MEM[64] + v26bb_0x5V0x2709V0x2bf6V0xf88V0x211 + MEM[MEM[vf90V0x211 + uint8.max + 1]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (v47) {
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                v0 = MEM[MEM[64]];
                v46 = 1;
            }
            if (!v46) {
                if (!RETURNDATASIZE()) {
                    v49 = v50 = 96;
                } else {
                    v49 = v51 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v51.data, 0, RETURNDATASIZE());
                }
                v52 = new uint256[](MEM[v49]);
                MCOPY(v52.data, v48, MEM[v49]);
                MEM[v52 + MEM[v49] + 32] = 0;
                revert(v0, v52);
            }
        }
        require(v0 + 1, Panic(17)); // arithmetic overflow or underflow
        v0 += 1;
    }
    require(v0 < MEM[MEM[v0]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v53 = MEM[128 + MEM[32 + (v0 << 5) + MEM[v0]]];
    if (address(v53) == address(0x0)) {
        v54 = v55 = this.balance;
    } else {
        v56, /* uint256 */ v54 = address(v53).balanceOf(this).gas(msg.gas);
        require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(v54 >= v0, address(v53), v0, v54);
    v57 = _SafeSub(v54, v0);
    require(v57 >= MEM[128 + v0], MinProfitNotMet(address(v53), MEM[v0 + 128], v57));
    if (!address(v53)) {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v58 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v0).gas(msg.gas);
        require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    0x144c(v0, 0xba12222222228d8ba445958a75a0704d566bf2c8, address(v0));
}

function 0x216(struct(9) varg0) private { 
    require(msg.sender == _owner, NotAuthorized(msg.sender));
    0x1257();
    v0 = 0x1272(varg0);
    MEM[0] = MEM[0];
    stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 = 1;
    return v0;
}

function 0x2587(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x25a6(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x263f(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x276(struct(9) varg0) private { 
    require(this == msg.sender, InvalidCaller(msg.sender));
    v0 = 0x1272(varg0);
    return v0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x2931(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] == address(MEM[v4]));
        MEM[v2] = MEM[v4];
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function 0x29a0(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x2c38(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x2cea(uint24 varg0, uint24 varg1) private { 
    require(varg0 - varg1 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(_uniswapV3SwapCallback) == msg.sender, InvalidCaller(msg.sender));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0, amount0Delta, amount1Delta);
    }
    0x144c(v1, msg.sender, address(data.word1));
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(_uniswapV3SwapCallback) == msg.sender, InvalidCaller(msg.sender));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0, amount0Delta, amount1Delta);
    }
    0x144c(v1, msg.sender, address(data.word1));
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(address(_uniswapV3SwapCallback) == msg.sender, InvalidCaller(msg.sender));
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0, amount0Delta, amount1Delta);
    }
    0x144c(v1, msg.sender, address(data.word1));
}

function 0x0aa9cbd1(struct(9) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 288);
    v0 = 0x1e39();
    require(varg0.word0 < 6);
    v0.word0 = varg0.word0;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    require(msg.data[4 + varg0 + 64] <= uint64.max);
    v1 = varg0.word2;
    require(varg0.word2 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new address[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(varg0.word2 + (v1.length << 5) + 32 <= msg.data.length);
    v5 = v6 = v1.data;
    while (v5 < varg0.word2 + (v1.length << 5) + 32) {
        require(msg.data[v5] == address(msg.data[v5]));
        MEM[v3] = msg.data[v5];
        v3 += 32;
        v5 += 32;
    }
    v0.word2 = v2;
    require(varg0.word3 == address(varg0.word3));
    v0.word3 = varg0.word3;
    require(varg0.word4 == address(varg0.word4));
    v0.word4 = varg0.word4;
    v0.word5 = varg0.word5;
    v0.word6 = varg0.word6;
    require(varg0.word7 == uint24(varg0.word7));
    v0.word7 = varg0.word7;
    require(msg.data[4 + varg0 + (uint8.max + 1)] <= uint64.max);
    v7 = varg0.word8;
    require(varg0.word8 + 31 < msg.data.length);
    require(v7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](v7.length);
    require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word8 + v7.length + 32 <= msg.data.length);
    CALLDATACOPY(v8.data, v7.data, v7.length);
    v8[v7.length] = 0;
    v0.word8 = v8;
    v9 = 0x216(v0);
    return v9;
}

function 0xcad(struct(5) varg0) private { 
    require(msg.sender == _owner, NotAuthorized(msg.sender));
    0x1257();
    if (msg.value) {
        v0, /* uint256 */ v1 = block.coinbase.call().value(msg.value).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            v1 = v2.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, TransferFailed(address(block.coinbase), address(0x0), msg.value));
    }
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = 160;
    MEM[32 + MEM[64] + 192] = v3.length;
    v4 = v5 = 32 + MEM[64] + 224;
    v6 = v7 = 32 + MEM[64] + (v3.length << 5) + 224;
    v8 = v9 = v3.data;
    v10 = v11 = 0;
    while (v10 < v3.length) {
        MEM[v4] = v6 - (32 + MEM[64]) - 224;
        require(MEM[MEM[v8]] < 6, Panic(33)); // failed convertion to enum type
        MEM[v6] = MEM[MEM[v8]];
        MEM[v6 + 32] = address(MEM[MEM[v8] + 32]);
        MEM[v6 + 64] = 288;
        MEM[v6 + 288] = MEM[MEM[MEM[v8] + 64]];
        v12 = v6 + 288 + 32;
        v13 = v14 = MEM[MEM[v8] + 64] + 32;
        v15 = v16 = 0;
        while (v15 < MEM[MEM[MEM[v8] + 64]]) {
            MEM[v12] = address(MEM[v13]);
            v12 += 32;
            v13 = v13 + 32;
            v15 += 1;
        }
        MEM[v6 + 96] = address(MEM[MEM[v8] + 96]);
        MEM[v6 + 128] = address(MEM[MEM[v8] + 128]);
        MEM[v6 + 160] = MEM[MEM[v8] + 160];
        MEM[v6 + 192] = MEM[MEM[v8] + 192];
        MEM[v6 + 224] = uint24(MEM[MEM[v8] + 224]);
        MEM[v6 + (uint8.max + 1)] = v12 - v6;
        MEM[v12] = MEM[MEM[MEM[v8] + (uint8.max + 1)]];
        MCOPY(v12 + 32, MEM[MEM[v8] + (uint8.max + 1)] + 32, MEM[MEM[MEM[v8] + (uint8.max + 1)]]);
        MEM[v12 + MEM[MEM[MEM[v8] + (uint8.max + 1)]] + 32] = 0;
        v6 = v12 + (MEM[MEM[MEM[v8] + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
        v8 += 32;
        v4 += 32;
        v10 += 1;
    }
    MEM[32 + MEM[64] + 64] = address(varg0.word1);
    MEM[32 + MEM[64] + 96] = varg0.word2;
    MEM[32 + MEM[64] + 128] = uint16(varg0.word3);
    MEM[32 + MEM[64] + 160] = varg0.word4;
    MEM[v6] = 1;
    CALLDATACOPY(v6 + 32, msg.data.length, 32);
    v17 = new uint256[](1);
    CALLDATACOPY(v17.data, msg.data.length, 32);
    require(0 < 1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[32 + v6] = address(varg0.word1);
    require(0 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v18 = v17.data;
    v17[0] = varg0.word2;
    MEM[MEM[64]] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
    v19 = new uint256[](1);
    v20 = v21 = 0;
    v22 = v23 = v6 + 32;
    v24 = v25 = v19.data;
    while (v20 < 1) {
        MEM[v24] = address(MEM[v22]);
        v22 += 32;
        v24 = v24 + 32;
        v20 += 1;
    }
    v26 = v27 = v24.data;
    v28 = v29 = v17.data;
    v30 = v31 = 0;
    v24 = new uint256[](v17.length);
    while (v30 < v17.length) {
        MEM[v26] = MEM[v28];
        v26 += 32;
        v28 = v28 + 32;
        v30 += 1;
    }
    v26 = new uint256[](v6 - MEM[64] - 32);
    MCOPY(v26.data, MEM[64] + 32, v6 - MEM[64] - 32);
    MEM[v26 + (v6 - MEM[64] - 32) + 32] = 0;
    require(bool(0xba12222222228d8ba445958a75a0704d566bf2c8.code.size));
    v32 = 0xba12222222228d8ba445958a75a0704d566bf2c8.flashLoan(address(this), v19, v24, v26).gas(msg.gas);
    require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x1488(varg0);
    MEM[0] = MEM[0];
    stor_9b779b17422d0df92223018b32b4d1fa46e071723d6817e2486d003becc55f00 = 1;
    return ;
}

function 0x1ed3adb0(struct(9) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 288);
    v0 = 0x1e39();
    require(varg0.word0 < 6);
    v0.word0 = varg0.word0;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    require(msg.data[4 + varg0 + 64] <= uint64.max);
    v1 = varg0.word2;
    require(varg0.word2 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new address[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(varg0.word2 + (v1.length << 5) + 32 <= msg.data.length);
    v5 = v6 = v1.data;
    while (v5 < varg0.word2 + (v1.length << 5) + 32) {
        require(msg.data[v5] == address(msg.data[v5]));
        MEM[v3] = msg.data[v5];
        v3 += 32;
        v5 += 32;
    }
    v0.word2 = v2;
    require(varg0.word3 == address(varg0.word3));
    v0.word3 = varg0.word3;
    require(varg0.word4 == address(varg0.word4));
    v0.word4 = varg0.word4;
    v0.word5 = varg0.word5;
    v0.word6 = varg0.word6;
    require(varg0.word7 == uint24(varg0.word7));
    v0.word7 = varg0.word7;
    require(msg.data[4 + varg0 + (uint8.max + 1)] <= uint64.max);
    v7 = varg0.word8;
    require(varg0.word8 + 31 < msg.data.length);
    require(v7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](v7.length);
    require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word8 + v7.length + 32 <= msg.data.length);
    CALLDATACOPY(v8.data, v7.data, v7.length);
    v8[v7.length] = 0;
    v0.word8 = v8;
    v9 = 0x276(v0);
    return v9;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x8da5cb5b > function_selector >> 224) {
        if (0xaa9cbd1 == function_selector >> 224) {
            0x0aa9cbd1();
        } else if (0x1ed3adb0 == function_selector >> 224) {
            0x1ed3adb0();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x6ff1c9bc == function_selector >> 224) {
            emergencyWithdraw(address);
        } else {
            require(0x880cdc31 == function_selector >> 224);
            updateOwner(address);
        }
    } else if (0x8da5cb5b == function_selector >> 224) {
        owner();
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else if (0xb290fb47 == function_selector >> 224) {
        0xb290fb47();
    } else if (0xd5268a92 == function_selector >> 224) {
        0xd5268a92();
    } else if (0xf04f2707 == function_selector >> 224) {
        receiveFlashLoan(address[],uint256[],uint256[],bytes);
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
