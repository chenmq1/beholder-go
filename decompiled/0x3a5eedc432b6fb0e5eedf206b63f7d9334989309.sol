// Decompiled by library.dedaub.com
// 2026.04.26 09:33 UTC
// Compiled using the solidity compiler version 0.8.28
// Warning: 65.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _destroy; // STORAGE[0x0]



function 0x13a6() private { 
    v0 = v1 = msg.sender;
    v0 = v2 = v1 == this;
    if (v1 != this) {
        v0 = v3 = 5049;
        v0 = v4 = 0x1afa(v1);
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
        v0 = v15 = 5065;
        0x15b9();
        return ;
        require(msg.sender == _destroy);
    } else {
        return ;
    }
}

function 0x13cc() private { 
    MEM[0] = MEM[0];
    v0, /* uint256 */ v1 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v0);
    return v1;
}

function 0x1554(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
    require(v0);
    return ;
}

function 0x1581(address varg0) private { 
    if (!varg0) {
        return !varg0;
    } else {
        return 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == varg0;
    }
}

function 0x15b9() private { 
    require(msg.sender == _destroy);
    return ;
}

function 0x15c5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
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
    0x13a6();
    v1 = 0x13cc();
    require(v1 <= this.balance + v1, Panic(17)); // arithmetic overflow or underflow
}

function 0x1760(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v1 = v10 = 6242;
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
            v13 = v16 = 6396;
            v13 = v17 = _SafeSub(v14, v1);
            require(!((v1 < 0) & (v13 - v1 < v13) | (v13 - v1 > v13) & (v1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        }
        MEM[0] = MEM[0];
        v18 = 0x000000000000000000000000e0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.withdraw(v1, v1, v13).gas(msg.gas);
        require(v18);
        return v1, v1;
    } else {
        v19 = v20 = 4 + MEM[64];
        v1 = v21 = 2373;
        v19 = v22 = 0x52a1(v20);
        revert(Error());
        MEM[v19] = 32;
        MEM[v19 + 32] = 21;
        MEM[v19 + 64] = 'amountOut < fixAmount';
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4c3b(sender);
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

function 0x1afa(address varg0) private { 
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

function 0x20c5eff5(address varg0, address varg1, uint256 varg2) public nonPayable { 
    v0 = v1 = 433;
    require(msg.data.length - 4 >= 96);
    0x4c3b(varg0);
    0x4c3b(varg1);
    0x13a6();
    require(varg1, InvalidTransferRecipient());
    v2 = 0x1581(varg0);
    if (!v2) {
        v3 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == varg0;
        if (v4) {
            v3 = v5 = this.balance >= varg2;
        }
        if (v3) {
            MEM[0] = MEM[0];
            require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
            v6 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg2).gas(msg.gas);
            require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        v0 = v7 = 1620;
        v8 = varg0.transfer(varg1, varg2).gas(msg.gas);
        require(v8);
    } else {
        v9, /* uint256 */ v10 = varg1.call().value(varg2).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v11 = new bytes[](RETURNDATASIZE());
            v10 = v11.data;
            RETURNDATACOPY(v10, 0, RETURNDATASIZE());
        }
        require(v9, EthTransferFailed());
    }
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0xd99();
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
    0x13a6();
    v1 = 0x13cc();
    require(v1 <= this.balance + v1, Panic(17)); // arithmetic overflow or underflow
}

function payCallback(uint256 varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x4c3b(varg1);
    0xd99();
    MEM[0] = MEM[0];
    0x1554(varg2, 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, varg1);
}

function swapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4c3b(_sender);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0xd99();
    v0 = new bytes[](_data.length);
    CALLDATACOPY(v0.data, _data.data, _data.length);
    v0[_data.length] = 0;
    v1 = tx.origin;
}

function destroy() public nonPayable { 
    0x15b9();
    selfdestruct(address(_destroy));
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
    0x13a6();
    MEM[0] = MEM[0];
    v8, /* uint256 */ v9 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v8);
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    0xd99();
    v1 = v2 = msg.data[varg2 + 103] >> 96;
    if (!v2) {
        v1 = v3 = this;
    }
    v4 = new bytes[](varg1 - 32);
    CALLDATACOPY(v4.data, 100, varg1 - 32);
    v5, v6 = 0x15c5(v4 + varg2 + 96, msg.data[varg2 + 123] >> 248, msg.data[varg2 + 144] >> 96, v1, msg.data[varg2 + 124] >> 96);
    require((msg.data[varg2 + 123] >> 248 == (msg.data[varg2 + 123] >> 248) * 46 / 46) | !0x2e, Panic(17)); // arithmetic overflow or underflow
}

function PRECISION() public nonPayable { 
    return 10 ** 18;
}

function locked(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0xd99();
    v0 = new bytes[](varg2);
    CALLDATACOPY(v0.data, 100, varg2);
    v1 = v2 = MEM[varg1 + v0 + 35] >> 96;
    if (!v2) {
        v1 = v3 = this;
    }
    v4, v5 = 0x1760(v0, varg1, v1, MEM[varg1 + v0 + 56] >> 96);
    v6 = _SafeMul(52, MEM[55 + (varg1 + v0)] >> 248);
    require(64 <= v6 + 64, Panic(17)); // arithmetic overflow or underflow
}

function MAX_WAMPL_SUPPLY() public nonPayable { 
    return 10 ** 25;
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
    v11 = v12 = 20674;
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
            v0 = v19 = 20733;
            0x4c3b(v18);
            MEM[v0] = v18;
            v0 += 32;
            v0 = v0 + 32;
        }
        require(v18 == address(v18));
        v0 = v20 = msg.data[v0 + 32];
        require(v20 <= uint64.max);
        v0 = v21 = 20791;
        v0 = v0 + v20;
        v0 = v22 = 0x5017(v0, v0);
        v7 = 0;
        require(v0 + 31 < v0);
        v9 = msg.data[v0];
        v11 = 20532;
        require(v9 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = 32 + (v9 << 5);
        v0 = v23 = msg.data[v0 + 64];
        require(v23 <= uint64.max);
        v0 = v24 = 20830;
        v0 = v0 + v23;
    }
}

function 0xf2020020(uint256 varg0, bytes varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    0xd99();
    v0 = new bytes[](varg1.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = MEM[v0 + varg0 + 35] >> 96;
    v3 = v4 = MEM[v0 + varg0 + 56] >> 96;
    v5 = v6 = MEM[v0 + varg0 + 76] >> 96;
    v7 = v8 = 96 + (v0 + varg0);
    if (!v2) {
        v1 = v9 = this;
    }
    v5 = v10 = 0;
    while (v5 < uint8(MEM[v0 + varg0 + 55] >> 248)) {
        v5 = v11 = MEM[v7 + 40] >> 96;
        v12 = new uint256[](0);
        MEM[v12.data] = MEM[v7] >> 96;
        v13, v14, v14, v3 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v12, v14, v14, v5, v11, v3, 0, 224, 0).gas(msg.gas);
        require(v13);
        v7 += 60;
        v5 += 1;
    }
    require(v3 >= MEM[v7] >> 96, Error('amountOut < minAmountOut'));
    v15 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v5, v1, v3).gas(msg.gas);
    require(v15);
    v16 = _SafeMul(60, uint8(MEM[v0 + varg0 + 55] >> 248));
    require(84 <= v16 + 84, Panic(17)); // arithmetic overflow or underflow
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
    v1 = 0x1afa(tx.origin);
    if (v1) {
    }
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0xd99();
    MEM[0] = MEM[0];
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4c3b(address varg0) private { 
    return ;
}

function 0x5017(uint256 varg0, uint256 varg1) private { 
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

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x52a1(uint256 varg0) private { 
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

function 0xd99() private { 
    v0 = 0x1afa(tx.origin);
    if (!v0) {
        require(tx.origin == _destroy);
        return ;
    } else {
        return ;
    }
}

function 0xdb3(bytes varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
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
        v1 = v13 = 3771;
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
            v15 = v18 = 3906;
            v15 = v19 = _SafeSub(v16, v1);
            require(!((v1 < 0) & (v15 - v1 < v15) | (v15 - v1 > v15) & (v1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        }
        v20 = 0x14aa86c5d3c41765bb24e11bd701.withdraw(v1, v1, v15).gas(msg.gas);
        require(v20);
        return v1, v1;
    } else {
        v21 = v22 = 4 + MEM[64];
        v1 = v23 = 2373;
        v21 = v24 = 0x52a1(v22);
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
        exit;
    } else if (!(function_selector >> 224)) {
        require(!msg.value);
        require(msg.data.length - 4 >= 32);
        0xd99();
        v0 = new bytes[](varg3);
        CALLDATACOPY(v0.data, 100, varg3);
        v1 = v2 = MEM[varg2 + v0 + 35] >> 96;
        if (!v2) {
            v1 = v3 = this;
        }
        v4, v5 = 0xdb3(v0, varg2, v1, MEM[varg2 + v0 + 56] >> 96);
        v6 = _SafeMul(52, MEM[55 + (varg2 + v0)] >> 248);
        require(64 <= v6 + 64, Panic(17)); // arithmetic overflow or underflow
    } else if (0xab35bb0 == function_selector >> 224) {
        0x0ab35bb0();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x20c5eff5 == function_selector >> 224) {
        0x20c5eff5();
    } else {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x2e6940e9 == function_selector >> 224) {
                0x2e6940e9();
            } else if (0x3a1c453c != function_selector >> 224) {
                if (0x599d0714 == function_selector >> 224) {
                    payCallback(uint256,address);
                } else {
                    if (0x6c813d29 != function_selector >> 224) {
                        if (0x81279c7e != function_selector >> 224) {
                            if (0x83197ef0 == function_selector >> 224) {
                                destroy();
                            } else if (0x84800812 != function_selector >> 224) {
                                if (0x88b97778 == function_selector >> 224) {
                                    0x88b97778();
                                } else if (0x91dd7346 == function_selector >> 224) {
                                    unlockCallback(bytes);
                                } else if (0xa1dab4eb != function_selector >> 224) {
                                    if (0xaaf5eb68 == function_selector >> 224) {
                                        PRECISION();
                                    } else if (0xb2ff9f26 != function_selector >> 224) {
                                        if (0xb45a3c0e == function_selector >> 224) {
                                            locked(uint256);
                                        } else if (0xc3124f89 == function_selector >> 224) {
                                            MAX_WAMPL_SUPPLY();
                                        } else if (0xf04f2707 == function_selector >> 224) {
                                            receiveFlashLoan(address[],uint256[],uint256[],bytes);
                                        } else if (0xf2020020 == function_selector >> 224) {
                                            0xf2020020();
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
                    }
                    swapV2Call(address,uint256,uint256,bytes);
                }
            }
        }
        swapCallback(int256,int256,bytes);
    }
}
