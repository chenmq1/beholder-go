// Decompiled by library.dedaub.com
// 2026.04.21 18:12 UTC
// Compiled using the solidity compiler version 0.8.28
// Warning: 66.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _destroy; // STORAGE[0x0]
uint256[] _amountsIn; // STORAGE[0x1]
uint256[] _amountsOut; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256[] array_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
uint256 stor_6; // STORAGE[0x6]



function 0x155b() private { 
    v0 = v1 = msg.sender;
    v0 = v2 = v1 == this;
    if (v1 != this) {
        v0 = v3 = 5486;
        v0 = v4 = 0x1afb(v1);
        v5 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f == address(v0);
        if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != address(v0)) {
            v5 = v6 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 == address(v0);
        }
        if (!v5) {
            v5 = v7 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 == address(v0);
        }
        if (!v5) {
            v5 = v8 = 0x5f444704bce3eb657768037bfb269b68730418a5 == address(v0);
        }
        if (!v5) {
            v5 = v9 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 == address(v0);
        }
        if (!v5) {
            v5 = v10 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 == address(v0);
        }
        if (!v5) {
            v5 = v11 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed == address(v0);
        }
        if (!v5) {
            v5 = v12 = 0x90a00d2500f975889c6a7083fc7ca99fb8909d99 == address(v0);
        }
        if (!v5) {
            v5 = v13 = 0x9fe3d5c3cab35f57d1a246f13a9b3573640711ab == address(v0);
        }
        if (!v5) {
            v5 = v14 = 0xc87e4a6819d70aa8b3a0e9039076438b99dba874 == address(v0);
        }
        if (!v5) {
        }
    }
    if (!v0) {
        v0 = v15 = 5502;
        0x1764();
        return ;
        require(msg.sender == _destroy);
    } else {
        return ;
    }
}

function 0x1764() private { 
    require(msg.sender == _destroy);
    return ;
}

function 0x1770(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    varg2 = v0 = 0;
    while (varg2 < varg1) {
        varg2 = v1 = MEM[varg0 + 26] >> 96;
        v2 = v3 = 1;
        v4 = v5 = 0x1000276a4;
        if (varg2 > v1) {
            v2 = v6 = 0;
            v4 = v7 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        v8, /* uint256 */ v9, /* uint256 */ v10 = 0x4444c5dc75cb358380d2e3de08a90.swap(varg2, varg2, MEM[varg0] >> 232, MEM[varg0 + 3] >> 232, MEM[varg0 + 6] >> 96, v2, ~varg4 + 1, v4, 288, 0).gas(msg.gas);
        require(v8);
        if (v2) {
            varg4 = v11 = v9 >> 128;
        }
        if (!v2) {
            varg4 = v12 = 0xf3cd914c000000000000000000000000;
        }
        varg0 = varg0 + 46;
        varg2 += 1;
    }
    if (varg4 >= MEM[varg0] >> 96) {
        MEM[MEM[64] + 68] = varg4;
        if (!(varg2 - varg2)) {
        }
        v13 = 0x4444c5dc75cb358380d2e3de08a90.take(varg2, varg3, varg4 - varg4).gas(msg.gas);
        require(v13);
        return varg2, varg4;
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = 32;
        MEM[4 + MEM[64] + 32] = 21;
        MEM[4 + MEM[64] + 64] = 'amountOut < fixAmount';
    }
}

function 0x190b(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0 + varg1;
    v1 = v2 = 0;
    v1 = v3 = 96 + v0;
    v1 = v4 = MEM[v0 + 55] >> 248;
    v1 = v5 = MEM[v0 + 76] >> 96;
    while (v1 < uint8(v1)) {
        v1 = v6 = MEM[v1];
        v1 = v7 = MEM[v1 + 32] >> 96;
        if (v7 <= address(v1)) {
        }
        MEM[MEM[64] + 132] = 0;
        MEM[MEM[64] + 164] = 0x400065a8177fae27;
        if (!(v1 - v1)) {
        }
        MEM[0] = MEM[0];
        v8, /* uint256 */ v1, /* uint256 */ v1 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call(0, v1, v1, v6, v1, 1, 0xffff9a5889f795069a41a8a3, 0).gas(msg.gas);
        require(v8);
        if (v1 >= 0) {
        }
        v1 = v9 = 1 + ~v1;
        v1 = v10 = 6669;
        v1 = v11 = 52;
        v1 = _SafeAdd(v1, v11);
        if (v1 > 0) {
        }
        v1 = v1 + 1;
        require(v1 <= v1 + v1, Panic(17)); // arithmetic overflow or underflow
    }
    if (v1 >= 0) {
    }
    v1 = v12 = v1 + v1 + 32;
    v13 = v14 = ~v1 + 1;
    v1 = v15 = MEM[v1] >> 96;
    if (v14 >= v15) {
        if (!(address(MEM[v1 + v1 + 76] >> 96) - address(v1))) {
            v13 = v16 = 6823;
            v13 = v17 = _SafeSub(v14, v1);
            require(!((v1 < 0) & (v13 - v1 < v13) | (v13 - v1 > v13) & (v1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        }
        MEM[0] = MEM[0];
        v18 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.withdraw(v1, v1, v13).gas(msg.gas);
        require(v18);
        return v1, v1;
    } else {
        v19 = v20 = 4 + MEM[64];
        v1 = v21 = 2883;
        v19 = v22 = 0x53a5(v20);
        revert(Error());
        MEM[v19] = 32;
        MEM[v19 + 32] = 21;
        MEM[v19 + 64] = 'amountOut < fixAmount';
    }
}

function 0x1afb(address varg0) private { 
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f == varg0;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != varg0) {
        v0 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 == varg0;
    }
    if (!v0) {
        v0 = v2 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 == varg0;
    }
    if (!v0) {
        v0 = v3 = 0x5f444704bce3eb657768037bfb269b68730418a5 == varg0;
    }
    if (!v0) {
        v0 = v4 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 == varg0;
    }
    if (!v0) {
        v0 = v5 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 == varg0;
    }
    if (!v0) {
        v0 = v6 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed == varg0;
    }
    if (!v0) {
        v0 = v7 = 0x90a00d2500f975889c6a7083fc7ca99fb8909d99 == varg0;
    }
    if (!v0) {
        v0 = v8 = 0x9fe3d5c3cab35f57d1a246f13a9b3573640711ab == varg0;
    }
    if (!v0) {
        v0 = v9 = 0xc87e4a6819d70aa8b3a0e9039076438b99dba874 == varg0;
    }
    if (v0) {
        return v0;
    } else {
        return 0x8feaeea90d3a79c6cd3ea71d2fff2f9467fed7fa == varg0;
    }
}

function 0x0759b8a6() public nonPayable { 
    return stor_6;
}

function 0x0ab35bb0(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x155b();
    MEM[0] = MEM[0];
    v1 = v2 = 0x70a08231;
    v3 = v4 = 1318;
    v1 = v5 = this;
    v6 = v7 = 4 + MEM[64];
    v6 = v8 = 0x5350(v7, v5);
    v3 = v9 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    v10, /* uint256 */ v11 = v3.balanceOf().gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    MEM[v6] = address(v1);
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4db2(sender);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0x1afb(tx.origin);
    if (v1) {
    }
}

function amountsIn(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_amount < _amountsIn.length);
    return _amountsIn[_amount];
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0xf3a();
    v0 = new bytes[](_data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f == address(tx.origin);
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != address(tx.origin)) {
        v1 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 == address(tx.origin);
    }
    if (!v1) {
        v1 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 == address(tx.origin);
    }
    if (!v1) {
        v1 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 == address(tx.origin);
    }
    if (!v1) {
        v1 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 == address(tx.origin);
    }
    if (!v1) {
        v1 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 == address(tx.origin);
    }
    if (!v1) {
        v1 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed == address(tx.origin);
    }
    if (!v1) {
        v1 = v8 = 0x90a00d2500f975889c6a7083fc7ca99fb8909d99 == address(tx.origin);
    }
    if (!v1) {
        v1 = v9 = 0x9fe3d5c3cab35f57d1a246f13a9b3573640711ab == address(tx.origin);
    }
    if (!v1) {
        v1 = v10 = 0xc87e4a6819d70aa8b3a0e9039076438b99dba874 == address(tx.origin);
    }
    if (!v1) {
    }
}

function 0x2e6940e9(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x155b();
    MEM[0] = MEM[0];
    v1 = v2 = 0x70a08231;
    v3 = v4 = 1865;
    v1 = v5 = this;
    v6 = v7 = 4 + MEM[64];
    v6 = v8 = 0x5350(v7, v5);
    v3 = v9 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    v10, /* uint256 */ v11 = v3.balanceOf().gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    MEM[v6] = address(v1);
}

function 0x34c67085(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_3.length);
    return array_3[varg0];
}

function payCallback(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x4db2(varg1);
    MEM[0] = MEM[0];
    v0 = varg1.transfer(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, varg2).gas(msg.gas);
    require(v0);
}

function swapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4db2(_sender);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0xf3a();
    v0 = new bytes[](_data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1 = tx.origin;
}

function destroy() public nonPayable { 
    0x1764();
    selfdestruct(address(_destroy));
}

function 0x887d100f() public nonPayable { 
    return stor_5;
}

function 0x88b97778(struct(2) varg0, uint8 varg1, uint64 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    v0 = 0x4f48(varg0.word0);
    v1 = 0x4cde(v0);
    MEM[v1] = varg0.word0;
    require(4 + varg0 + (varg0.word0 << 5) + 32 <= msg.data.length);
    if (4 + varg0 + 32 >= 4 + varg0 + (varg0.word0 << 5) + 32) {
    } else {
        require(msg.data[4 + varg0 + 32] <= uint64.max);
        require(msg.data.length - varg0.word1 - 32 >= 96);
        v2 = new struct(3);
        require(!((v2 + 96 < v2) | (v2 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v3.data] == bool(msg.data[v3.data]));
        v2.word0 = msg.data[v3.data];
        require(msg.data[varg0.word1 + 64] == uint128(msg.data[varg0.word1 + 64]));
        v2.word1 = msg.data[varg0.word1 + 64];
        require(msg.data[varg0.word1 + 96] <= uint64.max);
        require(varg0.word1 + msg.data[varg0.word1 + 96] + 32 + 31 < msg.data.length);
        require(msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = 0x4cde(32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32] + 31));
        MEM[v4] = msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32];
        require(varg0.word1 + msg.data[varg0.word1 + 96] + 32 + msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32] + 32 <= msg.data.length);
        CALLDATACOPY(v4 + 32, varg0.word1 + msg.data[varg0.word1 + 96] + 32 + 32, msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32]);
        MEM[32 + (v4 + msg.data[varg0.word1 + msg.data[varg0.word1 + 96] + 32])] = 0;
        // Unknown jump to Block 0x318. Refer to 3-address code (TAC);
    }
    0x155b();
    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[4 + MEM[64]] = address(this);
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    0xf3a();
    v1 = v2 = msg.data[varg2 + 103] >> 96;
    if (!v2) {
        v1 = v3 = this;
    }
    v4 = new bytes[](varg1 - 32);
    CALLDATACOPY(v4.data, 100, varg1 - 32);
    v5, v6 = 0x1770(v4 + varg2 + 96, msg.data[varg2 + 123] >> 248, msg.data[varg2 + 144] >> 96, v1, msg.data[varg2 + 124] >> 96);
    require((msg.data[varg2 + 123] >> 248 == (msg.data[varg2 + 123] >> 248) * 46 / 46) | !0x2e, Panic(17)); // arithmetic overflow or underflow
}

function PRECISION() public nonPayable { 
    return 10 ** 18;
}

function locked(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0xf3a();
    v0 = new bytes[](varg2);
    CALLDATACOPY(v0.data, 100, varg2);
    v1 = v2 = MEM[varg1 + v0 + 35] >> 96;
    if (!v2) {
        v1 = v3 = this;
    }
    v4, v5 = 0x190b(v0, varg1, v1, MEM[varg1 + v0 + 56] >> 96);
    v6 = _SafeMul(52, MEM[55 + (varg1 + v0)] >> 248);
    require(64 <= v6 + 64, Panic(17)); // arithmetic overflow or underflow
}

function MAX_WAMPL_SUPPLY() public nonPayable { 
    return 10 ** 25;
}

function 0xd30f2acd(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_4.length);
    return array_4[varg0];
}

function amountsOut(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < _amountsOut.length);
    return _amountsOut[varg0];
}

function receiveFlashLoan(address[] varg0) public nonPayable { 
    v0 = v1 = msg.data.length;
    v0 = v2 = 4;
    v0 = v3 = 0;
    v0 = v4 = 0;
    v0 = v5 = 0;
    v0 = v6 = 0;
    require(v1 - v2 >= 128);
    require(varg0 <= uint64.max);
    v0 = v7 = v2 + varg0;
    require(v1 > v7 + 31);
    v0 = v8 = varg0.length;
    v0 = v9 = 21008;
    v0 = v10 = 0x4f48(v8);
    while (1) {
        v0 = v11 = 0x4cde(v0);
        MEM[v0] = v0;
        v0 = v12 = v0 + 32;
        v0 = v13 = v0 + (v0 << 5) + 32;
        require(v13 <= v0);
        v0 = v14 = v0 + 32;
        while (v0 < v0) {
            v0 = v15 = msg.data[v0];
            v0 = v16 = 21067;
            0x4db2(v15);
            MEM[v0] = v15;
            v0 += 32;
            v0 = v0 + 32;
        }
        require(v15 == address(v15));
        v0 = v17 = msg.data[v0 + 32];
        require(v17 <= uint64.max);
        v0 = v18 = 21125;
        v0 = v0 + v17;
        v0 = v19 = 0x5165(v0, v0);
        v0 = 0;
        require(v0 + 31 < v0);
        v0 = v20 = msg.data[v0];
        v0 = v21 = 20866;
        v0 = v22 = 0x4f48(v20);
        v0 = v23 = msg.data[v0 + 64];
        require(v23 <= uint64.max);
        v0 = v24 = 21164;
        v0 = v0 + v23;
    }
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](v0.length - 32);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    0xf3a();
    require(MEM[v0 + v0.length] <= 63 + MEM[v0 + v0.length], Panic(17)); // arithmetic overflow or underflow
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0xf3a();
    MEM[0] = MEM[0];
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4cde(uint256 varg0) private { 
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31);
    return MEM[64];
}

function 0x4db2(address varg0) private { 
    return ;
}

function 0x4f48(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (varg0 << 5);
}

function 0x5165(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = 0x4f48(msg.data[varg0]);
    v1 = 0x4cde(v0);
    MEM[v1] = msg.data[varg0];
    v2 = v3 = v1 + 32;
    require(varg0 + (msg.data[varg0] << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (msg.data[varg0] << 5) + 32) {
        MEM[v2] = msg.data[v4];
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x5350(uint256 varg0, address varg1) private { 
    MEM[varg0] = varg1;
    return 32 + varg0;
}

function 0x53a5(uint256 varg0) private { 
    MEM[varg0] = 32;
    MEM[varg0 + 32] = 21;
    MEM[varg0 + 64] = 'amountOut < fixAmount';
    return 96 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 - varg1;
    require(!((varg1 < 0) & (v0 < varg0) | (v0 > varg0) & (varg1 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0xf3a() private { 
    v0 = 0x1afb(tx.origin);
    if (!v0) {
        require(tx.origin == _destroy);
        return ;
    } else {
        return ;
    }
}

function 0xf54(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg0 + varg1;
    v1 = v2 = 0;
    v1 = v3 = 96 + v0;
    v1 = v4 = MEM[v0 + 55] >> 248;
    v1 = v5 = MEM[v0 + 76] >> 96;
    while (v1 < uint8(v1)) {
        v1 = v6 = MEM[v1];
        v1 = v7 = MEM[v1 + 32] >> 96;
        if (v7 <= address(v1)) {
        }
        MEM[MEM[64] + 100] = 0;
        MEM[MEM[64] + 96] = v1;
        MEM[MEM[64] + 80] = 0x400065a8177fae27;
        if (!(v1 - v1)) {
        }
        v8, v9 = 0x14aa86c5d3c41765bb24e11bd701.call(0, v1, v1, v6, 0x80000000, 0xffff9a5889f795069a41a8a3, v1).gas(msg.gas);
        require(v8);
        v1 = v10 = 0;
        v1 = v11 = int128(v9);
        if (v10 >= 0) {
        }
        v1 = v12 = 1 + ~v1;
        v1 = v13 = 4188;
        v1 = v14 = 52;
        v1 = _SafeAdd(v1, v14);
        v1 = v1 + 1;
        require(v1 <= v1 + v1, Panic(17)); // arithmetic overflow or underflow
    }
    if (v1 > 0) {
    }
    if (v1 >= 0) {
    }
    v15 = v16 = 1 + ~v1;
    v1 = v17 = MEM[v1] >> 96;
    if (v16 >= v17) {
        if (!(address(v1) - address(v1))) {
            v15 = v18 = 4323;
            v15 = v19 = _SafeSub(v16, v1);
            require(!((v1 < 0) & (v15 - v1 < v15) | (v15 - v1 > v15) & (v1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        }
        v20 = 0x14aa86c5d3c41765bb24e11bd701.withdraw(v1, v1, v15).gas(msg.gas);
        require(v20);
        return v1, v1;
    } else {
        v21 = v22 = 4 + MEM[64];
        v1 = v23 = 2883;
        v21 = v24 = 0x53a5(v22);
        revert(Error(v25, v1, v6));
        MEM[v21] = 32;
        MEM[v21 + 32] = 21;
        MEM[v21 + 64] = 'amountOut < fixAmount';
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        v0 = msg.sender;
        v1 = msg.value;
    } else if (!(function_selector >> 224)) {
        require(!msg.value);
        require(msg.data.length - 4 >= 32);
        0xf3a();
        v2 = new bytes[](varg3);
        CALLDATACOPY(v2.data, 100, varg3);
        v3 = v4 = MEM[varg2 + v2 + 35] >> 96;
        if (!v4) {
            v3 = v5 = this;
        }
        v6, v7 = 0xf54(v2, varg2, v3, MEM[varg2 + v2 + 56] >> 96);
        v8 = _SafeMul(52, MEM[55 + (varg2 + v2)] >> 248);
        require(64 <= v8 + 64, Panic(17)); // arithmetic overflow or underflow
    } else if (0x759b8a6 == function_selector >> 224) {
        0x0759b8a6();
    } else if (0xab35bb0 == function_selector >> 224) {
        0x0ab35bb0();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x11605135 == function_selector >> 224) {
        amountsIn(uint256);
    } else {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x2e6940e9 == function_selector >> 224) {
                0x2e6940e9();
            } else if (0x34c67085 == function_selector >> 224) {
                0x34c67085();
            } else if (0x3a1c453c != function_selector >> 224) {
                if (0x599d0714 == function_selector >> 224) {
                    payCallback(uint256,address);
                } else {
                    if (0x6c813d29 != function_selector >> 224) {
                        if (0x81279c7e != function_selector >> 224) {
                            if (0x83197ef0 == function_selector >> 224) {
                                destroy();
                            } else if (0x84800812 != function_selector >> 224) {
                                if (0x887d100f == function_selector >> 224) {
                                    0x887d100f();
                                } else if (0x88b97778 == function_selector >> 224) {
                                    0x88b97778();
                                } else if (0x91dd7346 == function_selector >> 224) {
                                    unlockCallback(bytes);
                                } else if (0xaaf5eb68 == function_selector >> 224) {
                                    PRECISION();
                                } else if (0xb2ff9f26 != function_selector >> 224) {
                                    if (0xb45a3c0e == function_selector >> 224) {
                                        locked(uint256);
                                    } else if (0xc3124f89 == function_selector >> 224) {
                                        MAX_WAMPL_SUPPLY();
                                    } else if (0xd30f2acd == function_selector >> 224) {
                                        0xd30f2acd();
                                    } else if (0xe49a0354 == function_selector >> 224) {
                                        amountsOut(uint256);
                                    } else if (0xf04f2707 == function_selector >> 224) {
                                        receiveFlashLoan(address[],uint256[],uint256[],bytes);
                                    } else if (0xf40a74a8 != function_selector >> 224) {
                                        if (0xfa461e33 == function_selector >> 224) {
                                            uniswapV3SwapCallback(int256,int256,bytes);
                                        } else if (0xfa483e72 != function_selector >> 224) {
                                            require(0xfc4dd333 == function_selector >> 224);
                                            withdrawWETH(uint256);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    swapV2Call(address,uint256,uint256,bytes);
                }
            }
        }
        swapCallback(int256,int256,bytes);
    }
}
