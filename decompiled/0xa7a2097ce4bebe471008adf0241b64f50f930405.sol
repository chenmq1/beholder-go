// Decompiled by library.dedaub.com
// 2026.04.21 15:41 UTC
// Compiled using the solidity compiler version 0.8.28
// Warning: 73.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 owner_0; // STORAGE[0x0]
uint256[] _amountsIn; // STORAGE[0x1]
uint256[] _amountsOut; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256[] array_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
uint256 stor_6; // STORAGE[0x6]
address ___function_selector__; // TRANSIENT_STORAGE[0x0] bytes 0 to 19
address stor_7_0_19; // STORAGE[0x7] bytes 0 to 19



function 0x173b(address varg0) private { 
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
    if (!v0) {
        v0 = v10 = 0x8feaeea90d3a79c6cd3ea71d2fff2f9467fed7fa == varg0;
    }
    return v0;
}

function 0x2004() private { 
    v0 = v1 = msg.sender;
    v0 = v2 = v1 == this;
    if (v1 != this) {
        v0 = v3 = 8215;
        v0 = v4 = 0x173b(v1);
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
        v0 = v15 = 8231;
        0x3284();
        return ;
        require(msg.sender == owner_0);
    } else {
        return ;
    }
}

function 0x24a1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
    require(v0);
    return ;
}

function 0x24ce(uint256 varg0, address varg1) private { 
    if (!(varg1 + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
        if (this.balance <= varg0) {
            return ;
        } else {
            MEM[0] = MEM[0];
            require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
            v0 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
            require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    }
    return ;
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
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x2004();
    MEM[0] = MEM[0];
    v1, /* uint256 */ v2 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x537e(sender);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
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

function amountsIn(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_amount < _amountsIn.length);
    return _amountsIn[_amount];
}

function 0x3284() private { 
    require(msg.sender == owner_0);
    return ;
}

function 0x20c31c75(bytes varg0, uint256 varg1, uint256 varg2, address varg3, address varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x537e(varg3);
    0x537e(varg4);
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0x56f();
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
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x2004();
    MEM[0] = MEM[0];
    v1, /* uint256 */ v2 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
}

function 0x34c67085(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_3.length);
    return array_3[varg0];
}

function payCallback(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x537e(varg1);
    0x24ce(varg2, varg1);
    MEM[0] = MEM[0];
    0x24a1(varg2, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, varg1);
}

function swapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x537e(_sender);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0x56f();
    v0 = new bytes[](_data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1 = tx.origin;
}

function 0x887d100f() public nonPayable { 
    return stor_5;
}

function 0x88b97778(uint256 varg0, uint8 varg1, uint64 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v3] <= uint64.max);
        require(msg.data.length - (4 + varg0 + msg.data[v3]) - 32 >= 96);
        v5 = new struct(3);
        require(!((v5 + 96 < v5) | (v5 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[4 + varg0 + msg.data[v3] + 32] == bool(msg.data[4 + varg0 + msg.data[v3] + 32]));
        v5.word0 = msg.data[4 + varg0 + msg.data[v3] + 32];
        require(msg.data[4 + varg0 + msg.data[v3] + 64] == uint128(msg.data[4 + varg0 + msg.data[v3] + 64]));
        v5.word1 = msg.data[4 + varg0 + msg.data[v3] + 64];
        require(msg.data[4 + varg0 + msg.data[v3] + 96] <= uint64.max);
        v6 = 4 + varg0 + msg.data[v3] + msg.data[4 + varg0 + msg.data[v3] + 96] + 32;
        require(v6 + 31 < msg.data.length);
        require(msg.data[v6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](msg.data[v6]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6]) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v6]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + msg.data[v6] + 32 <= msg.data.length);
        CALLDATACOPY(v7.data, v6 + 32, msg.data[v6]);
        v7[msg.data[v6]] = 0;
        v5.word2 = v7;
        MEM[v1] = v5;
        v1 += 32;
        v3 += 32;
    }
    0x2004();
    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MEM[0] = MEM[0];
    MEM[4 + MEM[64]] = address(this);
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    0x56f();
    v1 = new bytes[](varg1 - 64);
    CALLDATACOPY(v1.data, 132, varg1 - 64);
    v2 = _SafeAdd(20, 20);
}

function PRECISION() public nonPayable { 
    return 10 ** 18;
}

function locked(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0x56f();
    MEM[64] = MEM[64] + 32 + varg3;
    CALLDATACOPY(MEM[64], 100, varg3 + 32);
    v0 = _SafeAdd(20, 20);
    v1 = _SafeAdd(20, 20);
    require(v1 <= 3 + v1, Panic(17)); // arithmetic overflow or underflow
}

function 0xc3f26331(uint8 varg0, uint256 varg1, address varg2, bytes varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    0x537e(varg2);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg3.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    v1 = tx.origin;
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

function 0xe6aac244(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0x537e(varg0);
    0x2004();
    stor_7_0_19 = varg0;
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
    v7 = v8 = v2 + varg0;
    require(v1 > v8 + 31);
    v9 = v10 = varg0.length;
    v11 = v12 = 22711;
    require(v10 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v13 = v14 = 32 + (v10 << 5);
    while (1) {
        v0 = MEM[64];
        require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v13 + 31);
        MEM[v0] = v9;
        v0 = v15 = v0 + 32;
        v0 = v16 = v7 + (v9 << 5) + 32;
        require(v16 <= v0);
        v0 = v17 = v7 + 32;
        while (v0 < v0) {
            v0 = v18 = msg.data[v0];
            v0 = v19 = 22770;
            0x537e(v18);
            MEM[v0] = v18;
            v0 += 32;
            v0 = v0 + 32;
        }
        require(v18 == address(v18));
        v0 = v20 = msg.data[v0 + 32];
        require(v20 <= uint64.max);
        v0 = v21 = 22828;
        v0 = v0 + v20;
        v0 = v22 = 0x580c(v0, v0);
        v7 = 0;
        require(v0 + 31 < v0);
        v9 = msg.data[v0];
        v11 = 22569;
        require(v9 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = 32 + (v9 << 5);
        v0 = v23 = msg.data[v0 + 64];
        require(v23 <= uint64.max);
        v0 = v24 = 22867;
        v0 = v0 + v23;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0x173b(tx.origin);
    if (v1) {
    }
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0x56f();
    MEM[0] = MEM[0];
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x537e(address varg0) private { 
    return ;
}

function 0xfdb28658(uint256 varg0, address varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    0x537e(varg1);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    0x56f();
    v0 = new bytes[](varg2.length);
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
}

function 0x56f() private { 
    v0 = 0x173b(tx.origin);
    if (!v0) {
        require(tx.origin == owner_0);
        return ;
    } else {
        return ;
    }
}

function 0x580c(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    require(msg.data[varg0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](msg.data[varg0]);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[varg0] << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[varg0] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(varg0 + (msg.data[varg0] << 5) + 32 <= varg1);
    v3 = v4 = varg0 + 32;
    while (v3 < varg0 + (msg.data[varg0] << 5) + 32) {
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    return v0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            v0 = msg.sender;
            v1 = msg.value;
        }
    } else {
        v2 = function_selector >> 224;
        if (!v2) {
            require(!msg.value);
            require(msg.data.length - 4 >= 32);
            0x56f();
            MEM[64] = MEM[64] + 32 + varg4;
            CALLDATACOPY(MEM[64], 100, varg4 + 32);
            v3 = _SafeAdd(20, 20);
            v4 = _SafeAdd(20, 20);
            require(v4 <= 3 + v4, Panic(17)); // arithmetic overflow or underflow
        } else if (0x759b8a6 == v2) {
            0x0759b8a6();
        } else if (0xab35bb0 == v2) {
            0x0ab35bb0();
        } else if (0x10d1e85c == v2) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x11605135 == v2) {
            amountsIn(uint256);
        } else if (0x20c31c75 == v2) {
            0x20c31c75();
        } else {
            if (0x23a69e75 != v2) {
                if (0x2e6940e9 == v2) {
                    0x2e6940e9();
                } else if (0x34c67085 == v2) {
                    0x34c67085();
                } else if (0x3a1c453c != v2) {
                    if (0x599d0714 == v2) {
                        payCallback(uint256,address);
                    } else {
                        if (0x6c813d29 != v2) {
                            if (0x81279c7e != v2) {
                                if (0x84800812 != v2) {
                                    if (0x887d100f == v2) {
                                        0x887d100f();
                                    } else if (0x88b97778 == v2) {
                                        0x88b97778();
                                    } else if (0x91dd7346 == v2) {
                                        unlockCallback(bytes);
                                    } else if (0xa1dab4eb != v2) {
                                        if (0xaaf5eb68 == v2) {
                                            PRECISION();
                                        } else if (0xb2ff9f26 != v2) {
                                            if (0xb45a3c0e == v2) {
                                                locked(uint256);
                                            } else if (0xc3f26331 == v2) {
                                                0xc3f26331();
                                            } else if (0xd30f2acd == v2) {
                                                0xd30f2acd();
                                            } else if (0xe49a0354 == v2) {
                                                amountsOut(uint256);
                                            } else if (0xe6aac244 == v2) {
                                                0xe6aac244();
                                            } else if (0xf04f2707 == v2) {
                                                receiveFlashLoan(address[],uint256[],uint256[],bytes);
                                            } else if (0xf40a74a8 != v2) {
                                                if (0xfa461e33 == v2) {
                                                    uniswapV3SwapCallback(int256,int256,bytes);
                                                } else if (0xfa483e72 != v2) {
                                                    if (0xfc4dd333 == v2) {
                                                        withdrawWETH(uint256);
                                                    } else if (0xfdb28658 == v2) {
                                                        0xfdb28658();
                                                    }
                                                }
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
    require(!msg.value);
    0x56f();
    CALLDATACOPY(MEM[64], 0, msg.data.length);
    MEM[msg.data.length + MEM[64]] = 0;
    v5, /* uint256 */ v6, /* uint256 */ v7 = ___function_selector__.delegatecall(MEM[MEM[64]:MEM[64] + msg.data.length + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v8 = v9 = 96;
    } else {
        v8 = v10 = new bytes[](RETURNDATASIZE());
        v6 = v10.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    require(v5, Error('Delegatecall failed'));
    return MEM[v270:v270 + MEM[v269_0x0]];
}
