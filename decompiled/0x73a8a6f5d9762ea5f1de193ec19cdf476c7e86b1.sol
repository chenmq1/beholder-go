// Decompiled by library.dedaub.com
// 2025.12.14 17:08 UTC
// Compiled using the solidity compiler version 0.8.21


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _setV3Pool; // STORAGE[0x1]
mapping (address => bool) mapping_2; // STORAGE[0x2]
mapping (address => bool) mapping_3; // STORAGE[0x3]
mapping (uint256 => bool) mapping_6; // STORAGE[0x6]
mapping (address => struct_1804) _uniswapV3SwapCallback; // STORAGE[0x8]
address[] array_9; // STORAGE[0x9]
mapping (address => bool) mapping_c; // STORAGE[0xc]
mapping (address => bool) mapping_d; // STORAGE[0xd]
address _removePool; // STORAGE[0x0] bytes 0 to 19
address stor_7_0_19; // STORAGE[0x7] bytes 0 to 19
address stor_a_0_19; // STORAGE[0xa] bytes 0 to 19
address stor_b_0_19; // STORAGE[0xb] bytes 0 to 19

struct struct_1804 { address field0; address field1; uint256 field2; bool field3; };


function 0x0232d2bc(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return mapping_c[varg0];
}

function 0x16346b6e(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    MEM[MEM[64] + 36] = varg2;
    MEM[MEM[64] + 68] = varg0;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg3);
    if (varg4) {
        v12 = v13 = 0;
    }
    if (!varg4) {
        v12 = v14 = 0;
    }
    MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000);
    MEM[MEM[64] + 36] = v12;
    MEM[MEM[64] + 36 + 32] = v12;
    MEM[MEM[64] + 36 + 64] = address(this);
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v15 = v16 = 0;
    while (v15 < 0) {
        MEM[v15 + (MEM[64] + 36 + 128 + 32)] = MEM[v15 + (MEM[64] + 32)];
        v15 += 32;
    }
    MEM[MEM[64] + 36 + 128 + 32] = 0;
    require(bool(varg2.code.size));
    v17 = varg2.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v18 = block.coinbase.call().value(varg5).gas(2300 * !varg5);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x224e5f60(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    stor_b_0_19 = varg0;
}

function 0x306e(uint256 varg0, bytes4 varg1, address varg2) private { 
    MEM[MEM[64] + 32] = varg1 | uint224(MEM[MEM[64] + 32]);
    if (this.balance >= 0) {
        if (varg2.code.size) {
            v0 = v1 = 0;
            while (v0 < varg0 - MEM[64] - 32) {
                MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
                v0 += 32;
            }
            MEM[varg0 - MEM[64] - 32 + MEM[64]] = 0;
            v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.call(MEM[MEM[64]:MEM[64] + v306earg0x0 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v6 = v7 = 96;
            } else {
                v6 = v8 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
            }
            if (!v2) {
                require(!MEM[v6], v5, MEM[v6]);
                v9 = new bytes[](v10.length);
                v11 = v12 = 0;
                while (v11 < v10.length) {
                    v9[v11] = v10[v11];
                    v11 += 32;
                }
                v9[v10.length] = 0;
                revert(Error(v9, v13, 'SafeERC20: low-level call failed'));
            } else if (!MEM[v6]) {
                return ;
            } else {
                require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
                require(MEM[32 + v6] == bool(MEM[32 + v6]));
                require(MEM[32 + v6], Error('SafeERC20: ERC20 operation did not succeed'));
                return ;
            }
        } else {
            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 4] = 32;
            revert(Error('Address: call to non-contract'));
        }
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = 32;
        revert(Error('Address: insufficient balance for call'));
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = v1 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v0 = amount1Delta > 0;
    }
    require(v0, Error(24954));
    if (data.length) {
        require(0 <= 32);
        require(32 <= data.length);
        v2 = msg.data[data.data];
        if (32 < 32) {
            v2 = v3 = uint256(v2);
        }
        if (amount0Delta > 0) {
            v4 = v5 = _SafeMul(uint256.max, amount1Delta);
        } else {
            v4 = v6 = _SafeMul(uint256.max, amount0Delta);
        }
        require(v4 >= v2, Error(0x6e6576));
    }
    if (amount0Delta > 0) {
        v7 = v8 = _uniswapV3SwapCallback[msg.sender].field0_0_19;
    } else {
        v7 = v9 = _uniswapV3SwapCallback[msg.sender].field1_0_19;
    }
    require(address(v7), Error(0x6d6e76));
    if (amount0Delta <= 0) {
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v10;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v7));
}

function 0x3200(struct(5) varg0) private { 
    v0 = new bytes[](4);
    MEM[v0.data] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v0.data]);
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v1 + v3.data] = v0[v1];
        v1 += 32;
    }
    MEM[v0.length + v3.data] = 0;
    v4 = v5, /* uint256 */ v6, /* uint256 */ v7 = address(varg0.word0).slot0(v3.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v8 = v9 = 96;
    } else {
        v8 = v10 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
    }
    if (v5) {
        v4 = MEM[v8] >= 32;
    }
    require(v4);
    if (varg0.word4) {
        v11 = v12 = address(MEM[v7]) >= address(varg0.word2);
    } else {
        v11 = address(MEM[v7]) <= address(varg0.word2);
    }
    require(v11, Error(0x686462));
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v13 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v13.data, msg.data.length, 0);
        v14 = v13.data;
    }
    MEM[4 + MEM[64]] = address(this);
    v15 = new bytes[](v13.length);
    v16 = v17 = 0;
    while (v16 < v13.length) {
        v15[v16] = v13[v16];
        v16 += 32;
    }
    v18 = v15.data;
    v15[v13.length] = 0;
    v19, /* uint256 */ v20, /* uint256 */ v21 = address(varg0.word0).swap(address(this), bool(varg0.word4), varg0.word1, address(varg0.word3), v15).gas(msg.gas);
    require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    return ;
}

function 0x320a(address varg0, uint256 varg1, uint256 varg2, address varg3, address varg4, uint256 varg5, uint256 varg6) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg4.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v1);
    v4 = v6 = uint112(v2);
    v7 = _SafeSub(10000, varg1);
    v8 = _SafeMul(varg6, v7);
    if (!varg2) {
    }
    v9 = _SafeMul(10000, v4);
    v10 = _SafeAdd(v9, v8);
    if (!varg2) {
    }
    v11 = _SafeMul(v8, v4);
    v12 = v13 = _SafeDiv(v11, v10);
    require(v13 >= varg5, Error(26724));
    MEM[MEM[64] + 36] = varg4;
    MEM[MEM[64] + 68] = varg6;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg3);
    if (varg2) {
        v12 = v14 = 0;
    }
    if (!varg2) {
        v12 = v15 = 0;
    }
    MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000);
    MEM[MEM[64] + 36] = v12;
    MEM[MEM[64] + 36 + 32] = v12;
    MEM[MEM[64] + 36 + 64] = varg0;
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v16 = v17 = 0;
    while (v16 < 0) {
        MEM[v16 + (MEM[64] + 36 + 128 + 32)] = MEM[v16 + (MEM[64] + 32)];
        v16 += 32;
    }
    MEM[MEM[64] + 36 + 128 + 32] = 0;
    require(bool(varg4.code.size));
    v18 = varg4.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function receive() public payable { 
}

function 0x23c0c09f(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_c[varg0] = varg1;
}

function 0x33eb(uint256 varg0, uint256 varg1, struct(6) varg2) private { 
    v0 = new uint256[](varg2.word0);
    require(varg2.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v0.data] = varg2.word1;
    v1 = v2 = 0;
    while (v1 < v3.length) {
        MEM[v1 + (4 + MEM[64] + 416 + 32)] = v3[v1];
        v1 += 32;
    }
    MEM[v3.length + (4 + MEM[64] + 416 + 32)] = 0;
    v4, /* uint256 */ v5 = stor_7_0_19.swap(v0, address(this), False, address(this), False, varg1, varg0, v6, v6, address(varg2.word2), address(varg2.word3), varg2.word4, 192, v3.length).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return ;
}

function 0x3486(struct(8) varg0) private { 
    if (!varg0.word2) {
        0x3c0a(uint112(varg0.word7), this, uint16(varg0.word3), varg0.word1, varg0.word6, varg0.word0, uint112(varg0.word5), uint112(varg0.word4));
        return ;
    } else {
        0x3b65(uint112(varg0.word7), this, uint16(varg0.word3), varg0.word1, varg0.word6, varg0.word0, uint112(varg0.word5), uint112(varg0.word4));
        return ;
    }
}

function 0x2dc02d34(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_c[msg.sender], Error(0x6d6d6e76));
    require(stor_b_0_19, Error('cexAddr not set'));
    v0, /* uint256 */ v1 = stor_a_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg0, Error(28261));
    require(bool(stor_a_0_19.code.size));
    v2 = stor_a_0_19.withdraw(varg0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v3 = stor_b_0_19.call().value(varg0).gas(2300 * !varg0);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4, /* uint256 */ v5 = stor_a_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v1, v5);
    require(v6 == varg0, Error(28278));
}

function 0x2e7a21ce(address varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(msg.data.length - 4 >= 160);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    require(4 + (msg.data.length - 4) - 4 >= 160);
    v12 = new struct(5);
    require(!((v12 + 160 > uint64.max) | (v12 + 160 < v12)), Panic(65)); // failed memory allocation (too much memory)
    v12.word0 = varg0;
    v12.word1 = varg1;
    v12.word2 = varg2;
    v12.word3 = varg3;
    v12.word4 = varg4;
    0x3200(v12);
    v13 = block.coinbase.call().value(varg5).gas(2300 * !varg5);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x2ed3d502(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 += 32;
    }
    require(msg.sender == _removePool, Error(28535));
    v5 = v6 = 0;
    while (1) {
        if (v5 >= v0.length) {
            exit;
        } else {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            mapping_6[v0[v5]] = 1;
            v5 = 0x5006(v5);
        }
    }
}

function 0x35119755(address varg0, bool varg1, uint256 varg2, address varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    MEM[MEM[64] + 32] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = address(this);
    MEM[MEM[64] + 36 + 32] = varg1;
    MEM[MEM[64] + 36 + 64] = varg2;
    MEM[MEM[64] + 36 + 96] = varg3;
    MEM[MEM[64] + 36 + 128] = 160;
    MEM[MEM[64] + 36 + 160] = 0;
    v12 = v13 = 0;
    while (v12 < 0) {
        MEM[v12 + (MEM[64] + 36 + 160 + 32)] = MEM[v12 + (MEM[64] + 32)];
        v12 += 32;
    }
    MEM[MEM[64] + 36 + 160 + 32] = 0;
    v14, /* uint256 */ v15, /* uint256 */ v16 = varg0.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v17 = block.coinbase.call().value(varg4).gas(2300 * !varg4);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x3b65(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, address varg5, uint256 varg6, uint256 varg7) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg5.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v1);
    v4 = v6 = uint112(v2);
    v7 = _SafeSub(10000, varg0);
    v8 = _SafeSub(10000, varg2);
    v9 = _SafeMul(varg7, v8);
    v10 = _SafeMul(v9, v7);
    v11 = _SafeDiv(v10, 10000);
    if (!varg3) {
    }
    v12 = _SafeMul(10000, v4);
    v13 = _SafeAdd(v12, v11);
    if (!varg3) {
    }
    v14 = _SafeMul(v11, v4);
    v15 = _SafeDiv(v14, v13);
    require(v15 >= varg6, Error(0x6e6531));
    MEM[MEM[64] + 36] = varg5;
    MEM[MEM[64] + 68] = varg7;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg4);
    v16, /* uint256 */ v17 = varg4.balanceOf(varg5).gas(msg.gas);
    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v18, /* uint112 */ v19, /* uint112 */ v20, /* uint32 */ v21 = varg5.getReserves().gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v19 == uint112(v19));
    require(v20 == uint112(v20));
    require(v21 == uint32(v21));
    v22 = v23 = uint112(v19);
    v22 = v24 = uint112(v20);
    v25 = _SafeSub(10000, varg2);
    if (varg3) {
        v26 = v27 = _SafeSub(v17, v23);
    } else {
        v26 = v28 = _SafeSub(v17, v24);
    }
    v29 = _SafeMul(v26, v25);
    if (!varg3) {
    }
    v30 = _SafeMul(10000, v22);
    v31 = _SafeAdd(v30, v29);
    if (!varg3) {
    }
    v32 = _SafeMul(v29, v22);
    v33 = _SafeDiv(v32, v31);
    if (varg3) {
        v33 = v34 = 0;
    }
    if (!varg3) {
        v33 = v35 = 0;
    }
    v36 = new uint256[](0);
    v37 = v38 = 0;
    while (v37 < 0) {
        MEM[v37 + v36.data] = MEM[v37 + (MEM[64] + 32)];
        v37 += 32;
    }
    MEM[v36.data] = 0;
    require(bool(varg5.code.size));
    v39 = varg5.swap(v33, v33, varg1, v36).gas(msg.gas);
    require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function 0x3c0a(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = 0x409c(varg0, varg2, varg3, varg6, varg7, varg4, varg5);
    v2 = 0x41ed(varg3, varg5);
    v3, /* uint256 */ v4 = address(v2).balanceOf(varg1).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg3) {
        v0 = v5 = 0;
    }
    if (!varg3) {
        v0 = v6 = 0;
    }
    v7 = new uint256[](0);
    v8 = v9 = 0;
    while (v8 < 0) {
        MEM[v8 + v7.data] = MEM[v8 + (MEM[64] + 32)];
        v8 += 32;
    }
    MEM[v7.data] = 0;
    require(bool((address(varg5)).code.size));
    v10 = address(varg5).swap(v0, v0, varg1, v7).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v11, /* uint256 */ v12 = address(v2).balanceOf(varg1).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v13 = _SafeSub(v12, v4);
    require(v13 >= varg6, Error(0x6e6532));
    return ;
}

function 0x3a904098(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg1, Error(28261));
    MEM[MEM[64] + 36] = _removePool;
    MEM[MEM[64] + 68] = varg1;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function removePool(address pool_address) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    _uniswapV3SwapCallback[pool_address].field3_0_0 = 0;
}

function 0x3d5f976d(uint256 varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(mapping_c[msg.sender], Error(0x6d6d6e76));
    require(mapping_d[varg1], Error(0x726e76));
    v0, /* uint256 */ v1 = stor_a_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg0, Error(28261));
    require(bool(stor_a_0_19.code.size));
    v2 = stor_a_0_19.withdraw(varg0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v3 = varg1.call().value(varg0).gas(2300 * !varg0);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4, /* uint256 */ v5 = stor_a_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v1, v5);
    require(v6 == varg0, Error(28278));
}

function 0x409c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, address varg5, address varg6) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg6.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = v5 = uint112(v1);
    v4 = v6 = uint112(v2);
    v7 = _SafeSub(10000, varg1);
    v8 = _SafeMul(varg4, v7);
    if (!varg2) {
    }
    v9 = _SafeMul(10000, v4);
    v10 = _SafeAdd(v9, v8);
    if (!varg2) {
    }
    v11 = _SafeMul(v8, v4);
    v12 = _SafeDiv(v11, v10);
    v13 = _SafeSub(10000, varg0);
    v14 = _SafeMul(v12, v13);
    v15 = _SafeDiv(v14, 10000);
    require(v15 >= varg3, Error(0x6e6531));
    MEM[MEM[64] + 36] = varg6;
    MEM[MEM[64] + 68] = varg4;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg5);
    return v12;
}

function 0x41ed(uint256 varg0, address varg1) private { 
    if (varg0) {
        v0, /* address */ v1 = varg1.token1().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        return v1;
    } else {
        v2, /* address */ v3 = varg1.token0().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == address(v3));
        return v3;
    }
}

function 0x4177498c(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    0x320a(this, varg5, varg4, varg3, varg2, varg1, varg0);
    v12 = block.coinbase.call().value(varg6).gas(2300 * !varg6);
    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function tixian(uint256 num) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    require(this.balance >= num, Error(28261));
    v0 = _removePool.call().value(num).gas(2300 * !num);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x49c36c07(address varg0, uint256 varg1, address varg2, address varg3, bool varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v1 = v2 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v1 = v3 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v1) {
        v1 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v1, Error(0x6f706e76));
    0x3200(v0);
}

function 0x4e2a27ed(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_2[varg0] = varg1;
}

function 0x54441558(address[] varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(_setV3Pool[msg.sender], Error('lpopna'));
    v5 = v6 = 0;
    while (1) {
        if (v5 >= v0.length) {
            exit;
        } else {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            mapping_3[address(v0[v5])] = varg1;
            v5 = 0x5006(v5);
        }
    }
}

function 0x56d3d2eb(struct(6) varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 192);
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0.word0;
    require(varg0.word1 < 2);
    v0.word1 = varg0.word1;
    require(varg0.word2 == address(varg0.word2));
    v0.word2 = varg0.word2;
    require(varg0.word3 == address(varg0.word3));
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    require(msg.data[4 + varg0 + 160] <= uint64.max);
    v1 = varg0.word5;
    require(varg0.word5 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word5 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word5 = v2;
    v3 = v4 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v3 = v5 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v3) {
        v3 = v6 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v3) {
        v3 = v7 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v3) {
        v3 = v8 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v3) {
        v3 = v9 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v3) {
        v3 = v10 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v3) {
        v3 = v11 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v3) {
        v3 = v12 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v3) {
        v3 = v13 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v3) {
        v3 = v14 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v3) {
        v3 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v3, Error(0x6f706e76));
    0x33eb(varg2, varg1, v0);
}

function 0x5afc90f1(address[] varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(msg.sender == _removePool, Error(28535));
    v5 = v6 = 0;
    while (1) {
        if (v5 >= v0.length) {
            exit;
        } else {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            mapping_2[address(v0[v5])] = varg1;
            v5 = 0x5006(v5);
        }
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x5006(uint256 varg0) private { 
    require(varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function 0x636a6119(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_setV3Pool[msg.sender], Error('lpopna'));
    mapping_3[varg0] = varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!((varg1 == int256.min) & (varg0 < 0)), Panic(17)); // arithmetic overflow or underflow
    require(!varg0 | (varg1 == varg1 * varg0 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x6cf3321c(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_c[msg.sender], Error(0x6d6d6e76));
    require(this.balance >= varg0, Error(0x776e65));
    require(bool(stor_a_0_19.code.size));
    v0 = stor_a_0_19.deposit().value(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x6fbebc70(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    0x320a(this, varg5, varg4, varg3, varg2, varg1, varg0);
}

function 0x768ac73b(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    if (varg6) {
        v12 = _SafeSub(10000, varg6);
        v13 = _SafeMul(varg0, v12);
        v14 = _SafeDiv(v13, 10000);
    }
    0x320a(this, varg5, varg4, varg3, varg2, varg1, v14);
}

function 0x7b0bf5df(address varg0, bool varg1, bool varg2, uint16 varg3, uint112 varg4, uint112 varg5, address varg6, uint112 varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(msg.data.length - 4 >= uint8.max + 1);
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) < v0) | (v0 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v0.word5 = varg5;
    v0.word6 = varg6;
    v0.word7 = varg7;
    v1 = v2 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v1 = v3 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v1) {
        v1 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v1, Error(0x6f706e76));
    0x3486(v0);
    v13 = block.coinbase.call().value(varg8).gas(2300 * !varg8);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x8f4a0529(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    0x320a(this, 30, varg4, varg3, varg2, varg1, varg0);
    v12 = block.coinbase.call().value(varg5).gas(2300 * !varg5);
    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x920c3933(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return mapping_6[varg0];
}

function 0x988a81d9(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    MEM[MEM[64] + 36] = varg2;
    MEM[MEM[64] + 68] = varg0;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg3);
    if (varg4) {
        v12 = v13 = 0;
    }
    if (!varg4) {
        v12 = v14 = 0;
    }
    MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000);
    MEM[MEM[64] + 36] = v12;
    MEM[MEM[64] + 36 + 32] = v12;
    MEM[MEM[64] + 36 + 64] = address(this);
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v15 = v16 = 0;
    while (v15 < 0) {
        MEM[v15 + (MEM[64] + 36 + 128 + 32)] = MEM[v15 + (MEM[64] + 32)];
        v15 += 32;
    }
    MEM[MEM[64] + 36 + 128 + 32] = 0;
    require(bool(varg2.code.size));
    v17 = varg2.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x98b2e4a9(address varg0, bool varg1, uint256 varg2, address varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    MEM[MEM[64] + 32] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = address(this);
    MEM[MEM[64] + 36 + 32] = varg1;
    MEM[MEM[64] + 36 + 64] = varg2;
    MEM[MEM[64] + 36 + 96] = varg3;
    MEM[MEM[64] + 36 + 128] = 160;
    MEM[MEM[64] + 36 + 160] = 0;
    v12 = v13 = 0;
    while (v12 < 0) {
        MEM[v12 + (MEM[64] + 36 + 160 + 32)] = MEM[v12 + (MEM[64] + 32)];
        v12 += 32;
    }
    MEM[MEM[64] + 36 + 160 + 32] = 0;
    v14, /* uint256 */ v15, /* uint256 */ v16 = varg0.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
}

function setV3Pool(address pool) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_setV3Pool[msg.sender], Error('lpopna'));
    if (!_uniswapV3SwapCallback[pool].field0_0_19) {
        array_9.length = array_9.length + 1;
        MEM[0] = 9;
        array_9[array_9.length] = pool;
        MEM[MEM[64] + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
        v0, /* address */ v1 = pool.staticcall(MEM[MEM[64]:MEM[64] + MEM[64] - MEM[64] + 132], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        v2, /* address */ v3 = pool.token1().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == address(v3));
        v4 = _SafeSub(array_9.length, 1);
        _uniswapV3SwapCallback[pool].field0_0_19 = address(v1);
        _uniswapV3SwapCallback[pool].field1_0_19 = address(v3);
        _uniswapV3SwapCallback[pool].field2 = v4;
        _uniswapV3SwapCallback[pool].field3_0_0 = 1;
    }
}

function 0x9ec9ec20(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _setV3Pool[varg0];
}

function 0xa89bcb30(uint256 varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_6[varg0] = varg1;
}

function 0xb15dfe3e(address varg0, uint256 varg1, address varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(mapping_c[msg.sender], Error(0x6d6d6e76));
    require(mapping_d[varg2], Error(0x726e76));
    require(varg0 - stor_a_0_19, Error(0x776e73));
    v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg1, Error(28261));
    MEM[MEM[64] + 36] = varg2;
    MEM[MEM[64] + 68] = varg1;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xb7d4e27a(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[96 + MEM[64]] = 0;
    v0 = new struct(4);
    v0.word0 = _uniswapV3SwapCallback[varg0].field0_0_19;
    v0.word1 = _uniswapV3SwapCallback[varg0].field1_0_19;
    v0.word2 = _uniswapV3SwapCallback[varg0].field2;
    v0.word3 = _uniswapV3SwapCallback[varg0].field3_0_0;
    return address(v0.word0), address(v0.word1), v0.word2, bool(v0.word3);
}

function 0xc0818f17(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_d[varg0] = varg1;
}

function 0xce2e62ff(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    require(varg5 >= block.timestamp, Error(29797));
    0x320a(this, 30, varg4, varg3, varg2, varg1, varg0);
}

function 0xd1ee941d(address varg0, bool varg1, bool varg2, uint16 varg3, uint112 varg4, uint112 varg5, address varg6, uint112 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(msg.data.length - 4 >= uint8.max + 1);
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) < v0) | (v0 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v0.word5 = varg5;
    v0.word6 = varg6;
    v0.word7 = varg7;
    v1 = v2 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v1 = v3 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v1) {
        v1 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v1, Error(0x6f706e76));
    0x3486(v0);
}

function 0xd21d122d(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == _removePool, Error(28535));
    v0, /* uint256 */ v1 = varg0.allowance(this, varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v2 = _SafeAdd(v1, varg2);
    MEM[MEM[64] + 36] = varg1;
    MEM[MEM[64] + 68] = v2;
    0x306e(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xdaf95aef(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    return mapping_d[varg0];
}

function 0xe1c2d915(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    v0 = v1 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v0 = v2 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v0) {
        v0 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v0, Error(0x6f706e76));
    if (varg6) {
        v12 = _SafeSub(10000, varg6);
        v13 = _SafeMul(varg0, v12);
        v14 = _SafeDiv(v13, 10000);
    }
    0x320a(this, varg5, varg4, varg3, varg2, varg1, v14);
    v15 = block.coinbase.call().value(varg7).gas(2300 * !varg7);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xe3f236cb(address[] varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(_setV3Pool[msg.sender], Error('lpopna'));
    v5 = v6 = 0;
    while (1) {
        if (v5 >= v0.length) {
            exit;
        } else {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!_uniswapV3SwapCallback[address(v0[v5])].field0_0_19) {
                array_9.length = array_9.length + 1;
                MEM[0] = 9;
                array_9[array_9.length] = v0[v5];
                v7, /* address */ v8 = address(v0[v5]).token0().gas(msg.gas);
                require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v8 == address(v8));
                v9, /* address */ v10 = address(v0[v5]).token1().gas(msg.gas);
                require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v10 == address(v10));
                v11 = _SafeSub(array_9.length, 1);
                _uniswapV3SwapCallback[address(v0[v5])].field0_0_19 = address(v8);
                _uniswapV3SwapCallback[address(v0[v5])].field1_0_19 = address(v10);
                _uniswapV3SwapCallback[address(v0[v5])].field2 = v11;
                _uniswapV3SwapCallback[address(v0[v5])].field3_0_0 = 1;
            }
            v5 = 0x5006(v5);
        }
    }
}

function 0xe5f42bf8(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == _removePool, Error(28535));
    v0, /* uint256 */ v1 = varg0.allowance(this, varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg2, Error('SafeERC20: decreased allowance below zero'));
    MEM[MEM[64] + 36] = varg1;
    MEM[MEM[64] + 68] = v1 - varg2;
    0x306e(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xe7c5f19b(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    _setV3Pool[varg0] = varg1;
}

function 0xe98cbf2c(struct(6) varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 192);
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0.word0;
    require(varg0.word1 < 2);
    v0.word1 = varg0.word1;
    require(varg0.word2 == address(varg0.word2));
    v0.word2 = varg0.word2;
    require(varg0.word3 == address(varg0.word3));
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    require(msg.data[4 + varg0 + 160] <= uint64.max);
    v1 = varg0.word5;
    require(varg0.word5 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.word5 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word5 = v2;
    v3 = v4 = 0x7e89ea913ea12945a63124c548c98d73b071166f == msg.sender;
    if (0x7e89ea913ea12945a63124c548c98d73b071166f != msg.sender) {
        v3 = v5 = 0x9b2dfb8862e3f398b73206c879a1f38136f22908 == msg.sender;
    }
    if (!v3) {
        v3 = v6 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v3) {
        v3 = v7 = 0x89c8714e3348f2450a3174343ebf4cf026444b3b == msg.sender;
    }
    if (!v3) {
        v3 = v8 = 0x7692527f9f291e8bce0cbbe5732bf39654eef8e4 == msg.sender;
    }
    if (!v3) {
        v3 = v9 = 0x2a0eff97bb68298e36bea8c86852436e96af92b9 == msg.sender;
    }
    if (!v3) {
        v3 = v10 = 0xecfa4e7409917cc9b08a4b02a1b42c3515b85819 == msg.sender;
    }
    if (!v3) {
        v3 = v11 = 0x6beab36b5d783db20f9c23b5512ba496badae3e0 == msg.sender;
    }
    if (!v3) {
        v3 = v12 = 0x3beefffb30bc26d94fb4a10c9b580167ed87c1e5 == msg.sender;
    }
    if (!v3) {
        v3 = v13 = 0x5bb4f4a7bfe8ac85502f18e474a04a51cf94cac2 == msg.sender;
    }
    if (!v3) {
        v3 = v14 = 0x70c788eca94c923570737d99bedc683cb063d617 == msg.sender;
    }
    if (!v3) {
        v3 = 0xf0202ad45f7656a7b419fd0cb040d183d42196aa == msg.sender;
    }
    require(v3, Error(0x6f706e76));
    0x33eb(varg2, varg1, v0);
    v15 = block.coinbase.call().value(varg3).gas(2300 * !varg3);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xef61a6db(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(mapping_c[msg.sender], Error(0x6d6d6e76));
    require(stor_b_0_19, Error('cexAddr not set'));
    require(varg0 - stor_a_0_19, Error(0x776e73));
    v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg1, Error(28261));
    MEM[MEM[64] + 36] = stor_b_0_19;
    MEM[MEM[64] + 68] = varg1;
    0x306e(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xf1bd3ca2() public nonPayable { 
    require(msg.sender == _removePool, Error(28535));
    return stor_b_0_19;
}

function 0xf82f6043(address[] varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(varg2 <= uint64.max);
    require(msg.data.length > 4 + varg2 + 31);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](varg2.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg2.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg2.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(32 + (4 + varg2 + (varg2.length << 5)) <= msg.data.length);
    v8 = v9 = varg2.data;
    while (v8 < 32 + (4 + varg2 + (varg2.length << 5))) {
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 += 32;
    }
    require(msg.sender == _removePool, Error(28535));
    v10 = v11 = 0;
    while (1) {
        if (v10 >= v0.length) {
            exit;
        } else {
            require(v10 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v10 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v12, /* uint256 */ v13 = address(v0[v10]).allowance(this, varg1).gas(msg.gas);
            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v14 = _SafeAdd(v13, v5[v10]);
            MEM[MEM[64] + 36] = varg1;
            MEM[MEM[64] + 68] = v14;
            0x306e(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, address(v0[v10]));
            v10 = 0x5006(v10);
        }
    }
}

function 0xff744336(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return mapping_3[varg0];
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (msg.data.length) {
            exit;
        } else {
            receive();
        }
    } else {
        v0 = function_selector >> 224;
        if (0x8f4a0529 > v0) {
            if (0x4177498c > v0) {
                if (0x2e7a21ce > v0) {
                    if (0x232d2bc == v0) {
                        0x0232d2bc();
                    } else if (0x16346b6e == v0) {
                        0x16346b6e();
                    } else if (0x224e5f60 == v0) {
                        0x224e5f60();
                    } else if (0x23a69e75 != v0) {
                        if (0x23c0c09f == v0) {
                            0x23c0c09f();
                        } else if (0x2dc02d34 == v0) {
                            0x2dc02d34();
                        } else {
                            exit;
                        }
                    }
                } else if (0x2e7a21ce == v0) {
                    0x2e7a21ce();
                } else if (0x2ed3d502 == v0) {
                    0x2ed3d502();
                } else if (0x35119755 == v0) {
                    0x35119755();
                } else if (0x3a904098 == v0) {
                    0x3a904098();
                } else if (0x3b7d0946 == v0) {
                    removePool(address);
                } else if (0x3d5f976d == v0) {
                    0x3d5f976d();
                } else {
                    exit;
                }
            } else if (0x5afc90f1 > v0) {
                if (0x4177498c == v0) {
                    0x4177498c();
                } else if (0x434ffed8 == v0) {
                    tixian(uint256);
                } else if (0x49c36c07 == v0) {
                    0x49c36c07();
                } else if (0x4e2a27ed == v0) {
                    0x4e2a27ed();
                } else if (0x54441558 == v0) {
                    0x54441558();
                } else if (0x56d3d2eb == v0) {
                    0x56d3d2eb();
                } else {
                    exit;
                }
            } else if (0x5afc90f1 == v0) {
                0x5afc90f1();
            } else if (0x636a6119 == v0) {
                0x636a6119();
            } else if (0x6cf3321c == v0) {
                0x6cf3321c();
            } else if (0x6fbebc70 == v0) {
                0x6fbebc70();
            } else if (0x768ac73b == v0) {
                0x768ac73b();
            } else if (0x7b0bf5df == v0) {
                0x7b0bf5df();
            } else {
                exit;
            }
        } else if (0xd21d122d > v0) {
            if (0xa89bcb30 > v0) {
                if (0x8f4a0529 == v0) {
                    0x8f4a0529();
                } else if (0x920c3933 == v0) {
                    0x920c3933();
                } else if (0x988a81d9 == v0) {
                    0x988a81d9();
                } else if (0x98b2e4a9 == v0) {
                    0x98b2e4a9();
                } else if (0x9cb609ca == v0) {
                    setV3Pool(address);
                } else if (0x9ec9ec20 == v0) {
                    0x9ec9ec20();
                } else {
                    exit;
                }
            } else if (0xa89bcb30 == v0) {
                0xa89bcb30();
            } else if (0xb15dfe3e == v0) {
                0xb15dfe3e();
            } else if (0xb7d4e27a == v0) {
                0xb7d4e27a();
            } else if (0xc0818f17 == v0) {
                0xc0818f17();
            } else if (0xce2e62ff == v0) {
                0xce2e62ff();
            } else if (0xd1ee941d == v0) {
                0xd1ee941d();
            } else {
                exit;
            }
        } else if (0xe98cbf2c > v0) {
            if (0xd21d122d == v0) {
                0xd21d122d();
            } else if (0xdaf95aef == v0) {
                0xdaf95aef();
            } else if (0xe1c2d915 == v0) {
                0xe1c2d915();
            } else if (0xe3f236cb == v0) {
                0xe3f236cb();
            } else if (0xe5f42bf8 == v0) {
                0xe5f42bf8();
            } else if (0xe7c5f19b == v0) {
                0xe7c5f19b();
            } else {
                exit;
            }
        } else if (0xe98cbf2c == v0) {
            0xe98cbf2c();
        } else if (0xef61a6db == v0) {
            0xef61a6db();
        } else if (0xf1bd3ca2 == v0) {
            0xf1bd3ca2();
        } else if (0xf82f6043 == v0) {
            0xf82f6043();
        } else if (0xfa461e33 != v0) {
            if (0xff744336 == v0) {
                0xff744336();
            } else {
                exit;
            }
        }
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
