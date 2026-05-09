// Decompiled by library.dedaub.com
// 2025.12.08 09:22 UTC
// Compiled using the solidity compiler version 0.8.21


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _setV3Pool; // STORAGE[0x1]
mapping (address => bool) mapping_2; // STORAGE[0x2]
mapping (address => bool) mapping_3; // STORAGE[0x3]
mapping (address => struct_1912) _uniswapV3SwapCallback; // STORAGE[0x6]
address[] array_7; // STORAGE[0x7]
mapping (address => bool) mapping_a; // STORAGE[0xa]
mapping (address => bool) mapping_b; // STORAGE[0xb]
address _removePool; // STORAGE[0x0] bytes 0 to 19
address stor_8_0_19; // STORAGE[0x8] bytes 0 to 19
address stor_9_0_19; // STORAGE[0x9] bytes 0 to 19

struct struct_1912 { address field0; address field1; uint256 field2; bool field3; };


function 0x0232d2bc(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return mapping_a[varg0];
}

function 0x1c4cb529(address varg0, uint256 varg1, address varg2, bool varg3, address varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = v1 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v0 = v2 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v0) {
        v0 = v12 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v0) {
        v0 = v13 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v0) {
        v0 = v14 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v0) {
        v0 = v15 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v0) {
        v0 = v16 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v0) {
        v0 = mapping_2[msg.sender];
    }
    require(v0, Error(0x6f706e76));
    v17 = v18 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg4;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg4) {
        v17 = v19 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg4;
    }
    if (!v17) {
        v17 = v20 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg4;
    }
    if (!v17) {
        v17 = v21 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg4;
    }
    if (!v17) {
        v17 = v22 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg4;
    }
    if (!v17) {
        v17 = v23 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg4;
    }
    if (!v17) {
        v17 = mapping_b[varg4];
    }
    require(v17, Error(0x726e76));
    MEM[MEM[64] + 32] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = varg4;
    MEM[MEM[64] + 36 + 32] = varg3;
    MEM[MEM[64] + 36 + 64] = varg1;
    MEM[MEM[64] + 36 + 96] = varg2;
    MEM[MEM[64] + 36 + 128] = 160;
    MEM[MEM[64] + 36 + 160] = 0;
    v24 = v25 = 0;
    while (v24 < 0) {
        MEM[v24 + (MEM[64] + 36 + 160 + 32)] = MEM[v24 + (MEM[64] + 32)];
        v24 += 32;
    }
    MEM[MEM[64] + 36 + 160 + 32] = 0;
    v26, /* uint256 */ v27, /* uint256 */ v28 = varg0.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
    require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
}

function 0x224e5f60(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    stor_9_0_19 = varg0;
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
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v7));
}

function 0x23c0c09f(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_a[varg0] = varg1;
}

function 0x2a0aad11(address varg0, uint256 varg1, address varg2, address varg3, bool varg4, address varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(msg.data.length - 4 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    v18 = v19 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg5;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg5) {
        v18 = v20 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg5;
    }
    if (!v18) {
        v18 = v21 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg5;
    }
    if (!v18) {
        v18 = v22 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg5;
    }
    if (!v18) {
        v18 = v23 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg5;
    }
    if (!v18) {
        v18 = v24 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg5;
    }
    if (!v18) {
        v18 = mapping_b[varg5];
    }
    require(v18, Error(0x726e76));
    0x3b3c(varg5, v0);
}

function 0x2dc02d34(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_a[msg.sender], Error(0x6d6d6e76));
    require(stor_9_0_19, Error('cexAddr not set'));
    v0, /* uint256 */ v1 = stor_8_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg0, Error(28261));
    require(bool(stor_8_0_19.code.size));
    v2 = stor_8_0_19.withdraw(varg0).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v3 = stor_9_0_19.call().value(varg0).gas(2300 * !varg0);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4, /* uint256 */ v5 = stor_8_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v1, v5);
    require(v6 == varg0, Error(28278));
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
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function removePool(address pool_address) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    _uniswapV3SwapCallback[pool_address].field3_0_0 = 0;
}

function 0x3d5f976d(uint256 varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(mapping_a[msg.sender], Error(0x6d6d6e76));
    v0 = v1 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg1;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg1) {
        v0 = v2 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg1;
    }
    if (!v0) {
        v0 = v3 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg1;
    }
    if (!v0) {
        v0 = v4 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg1;
    }
    if (!v0) {
        v0 = v5 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg1;
    }
    if (!v0) {
        v0 = v6 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg1;
    }
    if (!v0) {
        v0 = mapping_b[varg1];
    }
    require(v0, Error(0x726e76));
    v7, /* uint256 */ v8 = stor_8_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 >= varg0, Error(28261));
    require(bool(stor_8_0_19.code.size));
    v9 = stor_8_0_19.withdraw(varg0).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v10 = varg1.call().value(varg0).gas(2300 * !varg0);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v11, /* uint256 */ v12 = stor_8_0_19.balanceOf(this).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v13 = _SafeSub(v8, v12);
    require(v13 == varg0, Error(28278));
}

function tixian(uint256 num) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    require(this.balance >= num, Error(28261));
    v0 = _removePool.call().value(num).gas(2300 * !num);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x3b3c(address varg0, struct(5) varg1) private { 
    v0 = new bytes[](4);
    MEM[v0.data] = 0x3850c7bd00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v0.data]);
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v1 + v3.data] = v0[v1];
        v1 += 32;
    }
    MEM[v0.length + v3.data] = 0;
    v4 = v5, /* uint256 */ v6, /* uint256 */ v7 = address(varg1.word0).slot0(v3.data).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v8 = v9 = 96;
    } else {
        v8 = v10 = new bytes[](RETURNDATASIZE());
        v6 = v10.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (v5) {
        v4 = v11 = MEM[v8] >= 32;
    }
    require(v4);
    if (varg1.word4) {
        v12 = v13 = address(MEM[v7]) >= address(varg1.word2);
    } else {
        v12 = v14 = address(MEM[v7]) <= address(varg1.word2);
    }
    require(v12, Error(0x686462));
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v15 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v15.data, msg.data.length, 0);
        v16 = v15.data;
    }
    MEM[4 + MEM[64]] = varg0;
    v17 = new bytes[](v15.length);
    v18 = v19 = 0;
    while (v18 < v15.length) {
        v17[v18] = v15[v18];
        v18 += 32;
    }
    v20 = v17.data;
    v17[v15.length] = 0;
    v21, /* uint256 */ v22, /* uint256 */ v23 = address(varg1.word0).swap(varg0, bool(varg1.word4), varg1.word1, address(varg1.word3), v17).gas(msg.gas);
    require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    return ;
}

function 0x49c36c07(address varg0, uint256 varg1, address varg2, address varg3, bool varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(msg.data.length - 4 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    0x3b3c(this, v0);
}

function 0x3d45(uint256 varg0, bytes4 varg1, address varg2) private { 
    MEM[MEM[64] + 32] = varg1 | uint224(MEM[MEM[64] + 32]);
    if (this.balance >= 0) {
        if (varg2.code.size) {
            v0 = v1 = 0;
            while (v0 < varg0 - MEM[64] - 32) {
                MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
                v0 += 32;
            }
            MEM[varg0 - MEM[64] - 32 + MEM[64]] = 0;
            v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.call(MEM[MEM[64]:MEM[64] + v3d45arg0x0 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
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

function 0x3db0(uint256 varg0, struct(8) varg1) private { 
    if (!varg1.word2) {
        0x465d(uint112(varg1.word7), varg0, uint16(varg1.word3), varg1.word1, varg1.word6, varg1.word0, uint112(varg1.word5), uint112(varg1.word4));
        return ;
    } else {
        v0, /* uint256 */ v1 = address(varg1.word6).balanceOf(this).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 >= uint112(varg1.word4), Error(0x696e73));
        0x45b8(uint112(varg1.word7), varg0, uint16(varg1.word3), varg1.word1, varg1.word6, varg1.word0, uint112(varg1.word5), uint112(varg1.word4));
        return ;
    }
}

function 0x3eff(address varg0, uint256 varg1, uint256 varg2, address varg3, address varg4, uint256 varg5, uint256 varg6) private { 
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
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg3);
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

function 0x4e2a27ed(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_2[varg0] = varg1;
}

function receive() public payable { 
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
            v5 = 0x5a17(v5);
        }
    }
}

function 0x544d058b(address varg0, bool varg1, bool varg2, uint16 varg3, uint112 varg4, uint112 varg5, address varg6, uint112 varg7, address varg8) public payable { 
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
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    v18 = v19 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg8;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg8) {
        v18 = v20 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg8;
    }
    if (!v18) {
        v18 = v21 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg8;
    }
    if (!v18) {
        v18 = v22 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg8;
    }
    if (!v18) {
        v18 = v23 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg8;
    }
    if (!v18) {
        v18 = v24 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg8;
    }
    if (!v18) {
        v18 = mapping_b[varg8];
    }
    require(v18, Error(0x726e76));
    0x3db0(varg8, v0);
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
            v5 = 0x5a17(v5);
        }
    }
}

function 0x45b8(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, address varg5, uint256 varg6, uint256 varg7) private { 
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
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg4);
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

function 0x5e9833a5(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, address varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    v0 = v1 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg6;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg6) {
        v0 = v2 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg6;
    }
    if (!v0) {
        v0 = v3 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg6;
    }
    if (!v0) {
        v0 = v4 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg6;
    }
    if (!v0) {
        v0 = v5 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg6;
    }
    if (!v0) {
        v0 = v6 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg6;
    }
    if (!v0) {
        v0 = mapping_b[varg6];
    }
    require(v0, Error(0x726e76));
    v7 = v8 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v7 = v9 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v7) {
        v7 = v10 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v11 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v12 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v7) {
        v7 = v13 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v7) {
        v7 = v14 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v7) {
        v7 = v15 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v7) {
        v7 = v16 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v7) {
        v7 = v17 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v7) {
        v7 = v18 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v7) {
        v7 = v19 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v7) {
        v7 = v20 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v7) {
        v7 = v21 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v7) {
        v7 = v22 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v7) {
        v7 = v23 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v7) {
        v7 = mapping_2[msg.sender];
    }
    require(v7, Error(0x6f706e76));
    0x3eff(varg6, 30, varg4, varg3, varg2, varg1, varg0);
}

function 0x465d(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = v1 = 0x4aef(varg0, varg2, varg3, varg6, varg7, varg4, varg5);
    v2 = 0x4c40(varg3, varg5);
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

function 0x636a6119(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_setV3Pool[msg.sender], Error('lpopna'));
    mapping_3[varg0] = varg1;
}

function 0x6cf3321c(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_a[msg.sender], Error(0x6d6d6e76));
    require(this.balance >= varg0, Error(0x776e65));
    require(bool(stor_8_0_19.code.size));
    v0 = stor_8_0_19.deposit().value(varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4aef(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, address varg5, address varg6) private { 
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
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg5);
    return v12;
}

function 0x6fbebc70(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v0 = v2 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v0) {
        v0 = v12 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v0) {
        v0 = v13 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v0) {
        v0 = v14 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v0) {
        v0 = v15 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v0) {
        v0 = v16 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v0) {
        v0 = mapping_2[msg.sender];
    }
    require(v0, Error(0x6f706e76));
    0x3eff(this, varg5, varg4, varg3, varg2, varg1, varg0);
}

function 0x4c40(uint256 varg0, address varg1) private { 
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

function 0x768ac73b(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    v0 = v1 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v0 = v2 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v0) {
        v0 = v12 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v0) {
        v0 = v13 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v0) {
        v0 = v14 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v0) {
        v0 = v15 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v0) {
        v0 = v16 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v0) {
        v0 = mapping_2[msg.sender];
    }
    require(v0, Error(0x6f706e76));
    if (varg6) {
        v17 = _SafeSub(10000, varg6);
        v18 = _SafeMul(varg0, v17);
        v19 = _SafeDiv(v18, 10000);
    }
    0x3eff(this, varg5, varg4, varg3, varg2, varg1, v19);
}

function 0x77b03337(address varg0, uint256 varg1, address varg2, address varg3, bool varg4, address varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(msg.data.length - 4 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    v18 = v19 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg5;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg5) {
        v18 = v20 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg5;
    }
    if (!v18) {
        v18 = v21 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg5;
    }
    if (!v18) {
        v18 = v22 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg5;
    }
    if (!v18) {
        v18 = v23 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg5;
    }
    if (!v18) {
        v18 = v24 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg5;
    }
    if (!v18) {
        v18 = mapping_b[varg5];
    }
    require(v18, Error(0x726e76));
    0x3b3c(varg5, v0);
    v25 = block.coinbase.call().value(varg6).gas(2300 * !varg6);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x9ba5319b(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    v0 = v1 = varg0.length;
    require(v1 <= uint64.max);
    require(4 + varg0 + (v1 << 5) + 32 <= msg.data.length);
    require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1);
    if (v1) {
        v3 = v2.data;
        while (v0) {
            MEM[v3] = 96;
            v3 += 32;
            v0 = v0 - 1;
        }
    }
    v4 = v5 = 0;
    while (v4 < v1) {
        require(v4 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v4] < msg.data.length - varg0.data - 31);
        require(msg.data[varg0.data + varg0[v4]] <= uint64.max);
        require(32 + (varg0.data + varg0[v4]) <= msg.data.length - msg.data[varg0.data + varg0[v4]]);
        CALLDATACOPY(MEM[64], 32 + (varg0.data + varg0[v4]), msg.data[varg0.data + varg0[v4]]);
        MEM[msg.data[varg0.data + varg0[v4]] + MEM[64]] = 0;
        v6, /* uint256 */ v7 = this.delegatecall(MEM[MEM[64]:MEM[64] + msg.data[varg0.data + varg0[v2683_0x0V0x529]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v8 = v9 = 96;
        } else {
            v8 = v10 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
        }
        if (v6) {
            require(v4 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v2[v4] = v8;
            v4 = 0x5a17(v4);
        } else {
            require(MEM[v8] >= 68);
            v11 = 0x5abd(32 + (v8 + 4), 32 + (v8 + 4) + MEM[v8 + 4]);
            v12 = new bytes[](v11.length);
            v13 = v14 = 0;
            while (v13 < v11.length) {
                v12[v13] = v11[v13];
                v13 += 32;
            }
            v12[v11.length] = 0;
            revert(Error(v12));
        }
    }
    v15 = new uint256[](v2.length);
    v16 = v17 = v15.data;
    v18 = v19 = MEM[64] + (v2.length << 5) + 64;
    v20 = v21 = v2.data;
    v22 = v23 = 0;
    while (v22 < v2.length) {
        MEM[v16] = v18 - MEM[64] - 64;
        MEM[v18] = MEM[MEM[v20]];
        v24 = v25 = 0;
        while (v24 < MEM[MEM[v20]]) {
            MEM[v24 + (v18 + 32)] = MEM[v24 + (MEM[v20] + 32)];
            v24 += 32;
        }
        MEM[MEM[MEM[v20]] + (v18 + 32)] = 0;
        v18 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v20]]) + v18);
        v16 += 32;
        v20 += 32;
        v22 += 1;
    }
    return v15;
}

function setV3Pool(address pool) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_setV3Pool[msg.sender], Error('lpopna'));
    if (!_uniswapV3SwapCallback[pool].field0_0_19) {
        array_7.length = array_7.length + 1;
        MEM[0] = 7;
        array_7[array_7.length] = pool;
        MEM[MEM[64] + 128] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
        v0, /* address */ v1 = pool.staticcall(MEM[MEM[64]:MEM[64] + MEM[64] - MEM[64] + 132], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        v2, /* address */ v3 = pool.token1().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == address(v3));
        v4 = _SafeSub(array_7.length, 1);
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

function 0xb15dfe3e(address varg0, uint256 varg1, address varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(mapping_a[msg.sender], Error(0x6d6d6e76));
    v0 = v1 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg2;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg2) {
        v0 = v2 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg2;
    }
    if (!v0) {
        v0 = v3 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg2;
    }
    if (!v0) {
        v0 = v4 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg2;
    }
    if (!v0) {
        v0 = v5 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg2;
    }
    if (!v0) {
        v0 = v6 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg2;
    }
    if (!v0) {
        v0 = mapping_b[varg2];
    }
    require(v0, Error(0x726e76));
    require(varg0 - stor_8_0_19, Error(0x776e73));
    v7, /* uint256 */ v8 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 >= varg1, Error(28261));
    MEM[MEM[64] + 36] = varg2;
    MEM[MEM[64] + 68] = varg1;
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x5a17(uint256 varg0) private { 
    require(varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x5abd(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](MEM[v0]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v0] + 31) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v0] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + MEM[v0] + 32 <= varg1);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        v1[v2] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    v1[MEM[v0]] = 0;
    return v1;
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

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!((varg1 == int256.min) & (varg0 < 0)), Panic(17)); // arithmetic overflow or underflow
    require(!varg0 | (varg1 == varg1 * varg0 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0xc0818f17(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    mapping_b[varg0] = varg1;
}

function 0xce2e62ff(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v0 = v2 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v0) {
        v0 = v3 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v0) {
        v0 = v5 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v0) {
        v0 = v6 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v0) {
        v0 = v7 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v0) {
        v0 = v8 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v0) {
        v0 = v9 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v0) {
        v0 = v10 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v0) {
        v0 = v11 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v0) {
        v0 = v12 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v0) {
        v0 = v13 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v0) {
        v0 = v14 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v0) {
        v0 = v15 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v0) {
        v0 = v16 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v0) {
        v0 = mapping_2[msg.sender];
    }
    require(v0, Error(0x6f706e76));
    require(varg5 >= block.timestamp, Error(29797));
    0x3eff(this, 30, varg4, varg3, varg2, varg1, varg0);
}

function 0xcee97e9e(address varg0, bool varg1, bool varg2, uint16 varg3, uint112 varg4, uint112 varg5, address varg6, uint112 varg7, address varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
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
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    0x3db0(varg8, v0);
    v18 = block.coinbase.call().value(varg9).gas(2300 * !varg9);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xd0c88b33(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, uint256 varg5, address varg6, uint256 varg7) public nonPayable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    v0 = v1 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg6;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg6) {
        v0 = v2 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg6;
    }
    if (!v0) {
        v0 = v3 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg6;
    }
    if (!v0) {
        v0 = v4 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg6;
    }
    if (!v0) {
        v0 = v5 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg6;
    }
    if (!v0) {
        v0 = v6 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg6;
    }
    if (!v0) {
        v0 = mapping_b[varg6];
    }
    require(v0, Error(0x726e76));
    v7 = v8 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v7 = v9 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v7) {
        v7 = v10 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v11 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v12 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v7) {
        v7 = v13 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v7) {
        v7 = v14 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v7) {
        v7 = v15 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v7) {
        v7 = v16 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v7) {
        v7 = v17 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v7) {
        v7 = v18 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v7) {
        v7 = v19 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v7) {
        v7 = v20 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v7) {
        v7 = v21 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v7) {
        v7 = v22 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v7) {
        v7 = v23 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v7) {
        v7 = mapping_2[msg.sender];
    }
    require(v7, Error(0x6f706e76));
    require(varg5 >= block.timestamp, Error(29797));
    0x3eff(varg6, 30, varg4, varg3, varg2, varg1, varg0);
    v24 = block.coinbase.call().value(varg7).gas(2300 * !varg7);
    require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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
    v1 = v2 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v1 = v3 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v1) {
        v1 = v4 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v5 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v1) {
        v1 = v6 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v1) {
        v1 = v7 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v1) {
        v1 = v8 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v1) {
        v1 = v9 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v1) {
        v1 = v10 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v1) {
        v1 = v11 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v1) {
        v1 = v12 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v1) {
        v1 = v13 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v1) {
        v1 = v14 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v1) {
        v1 = v15 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v1) {
        v1 = v16 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v1) {
        v1 = v17 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v1) {
        v1 = mapping_2[msg.sender];
    }
    require(v1, Error(0x6f706e76));
    if (!v0.word2) {
        0x465d(uint112(v0.word7), this, uint16(v0.word3), v0.word1, v0.word6, v0.word0, uint112(v0.word5), uint112(v0.word4));
    } else {
        0x45b8(uint112(v0.word7), this, uint16(v0.word3), v0.word1, v0.word6, v0.word0, uint112(v0.word5), uint112(v0.word4));
    }
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
    0x3d45(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xdaf95aef(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _removePool, Error(28535));
    return mapping_b[varg0];
}

function 0xdbcd0278(uint256 varg0, uint256 varg1, address varg2, address varg3, bool varg4, address varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0 = v1 = 0xa701f9db977c98f9043b20225b4322f94dbd50db == varg5;
    if (0xa701f9db977c98f9043b20225b4322f94dbd50db != varg5) {
        v0 = v2 = 0xabd69d0fac4b0851dafe100979df808eb7fb81a9 == varg5;
    }
    if (!v0) {
        v0 = v3 = 0x3b82ff2ea45595c8d0c79a2e5749b7347dd4970a == varg5;
    }
    if (!v0) {
        v0 = v4 = 0xc750359cba44ad5214f0ccd99900b99099dc92f1 == varg5;
    }
    if (!v0) {
        v0 = v5 = 0xfa87374753e528b4dea388225e5723f42a2db8bc == varg5;
    }
    if (!v0) {
        v0 = v6 = 0xe098207a163a0f8415d575cb5126ebf378f00bf == varg5;
    }
    if (!v0) {
        v0 = mapping_b[varg5];
    }
    require(v0, Error(0x726e76));
    v7 = v8 = 0x26fd09c8b44af53df38a9bad41d5abc55a1786af == msg.sender;
    if (0x26fd09c8b44af53df38a9bad41d5abc55a1786af != msg.sender) {
        v7 = v9 = 0xbbd9c433a71c21c774aa3f437d2bd5f48e5efd5f == msg.sender;
    }
    if (!v7) {
        v7 = v10 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v11 = 0x4eb8769a89b91b60a14ad1d30f2b136d9cf61b18 == msg.sender;
    }
    if (!v7) {
        v7 = v12 = 0x7cfd37e9dc8f27bb78c497f8ca2a249701832dab == msg.sender;
    }
    if (!v7) {
        v7 = v13 = 0xf4b4e6fcd0cfb6e3d70821c136b9c5aa0e0936f2 == msg.sender;
    }
    if (!v7) {
        v7 = v14 = 0xa5a376007035761a7a6b2c897759324e69f92a60 == msg.sender;
    }
    if (!v7) {
        v7 = v15 = 0xce18b6d85858a5777bbaa941db80c2e278992a83 == msg.sender;
    }
    if (!v7) {
        v7 = v16 = 0xaccdec89056df95424bf7eb1515542b00a40336 == msg.sender;
    }
    if (!v7) {
        v7 = v17 = 0xa855d1198c67839e596b9a5d7c46f8ea31cfefde == msg.sender;
    }
    if (!v7) {
        v7 = v18 = 0x562682493e4a354aad1bc6bdb1918a2e4fe34a55 == msg.sender;
    }
    if (!v7) {
        v7 = v19 = 0x4ac6268385851b23ebe22f91630d7d0f61e7b74d == msg.sender;
    }
    if (!v7) {
        v7 = v20 = 0x514bcfbaf7c84850824efbf52d79557327541bf3 == msg.sender;
    }
    if (!v7) {
        v7 = v21 = 0x2f22afe0c8fc8e098ec44f4d9c6a8f6417926fd == msg.sender;
    }
    if (!v7) {
        v7 = v22 = 0xef8f394dba03ab891b2e97333328bae4e8a57b8d == msg.sender;
    }
    if (!v7) {
        v7 = v23 = 0x52c4e9e8b2583be75362ef0a92c72de2f62f86b0 == msg.sender;
    }
    if (!v7) {
        v7 = mapping_2[msg.sender];
    }
    require(v7, Error(0x6f706e76));
    MEM[MEM[64] + 36] = varg2;
    MEM[MEM[64] + 68] = varg0;
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg3);
    if (varg4) {
        v24 = v25 = 0;
    }
    if (!varg4) {
        v24 = v26 = 0;
    }
    MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000);
    MEM[MEM[64] + 36] = v24;
    MEM[MEM[64] + 36 + 32] = v24;
    MEM[MEM[64] + 36 + 64] = varg5;
    MEM[MEM[64] + 36 + 96] = 128;
    MEM[MEM[64] + 36 + 128] = 0;
    v27 = v28 = 0;
    while (v27 < 0) {
        MEM[v27 + (MEM[64] + 36 + 128 + 32)] = MEM[v27 + (MEM[64] + 32)];
        v27 += 32;
    }
    MEM[MEM[64] + 36 + 128 + 32] = 0;
    require(bool(varg2.code.size));
    v29 = varg2.call(MEM[MEM[64]:MEM[64] + 32 + MEM[64] + 36 + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
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
                array_7.length = array_7.length + 1;
                MEM[0] = 7;
                array_7[array_7.length] = v0[v5];
                v7, /* address */ v8 = address(v0[v5]).token0().gas(msg.gas);
                require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v8 == address(v8));
                v9, /* address */ v10 = address(v0[v5]).token1().gas(msg.gas);
                require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v10 == address(v10));
                v11 = _SafeSub(array_7.length, 1);
                _uniswapV3SwapCallback[address(v0[v5])].field0_0_19 = address(v8);
                _uniswapV3SwapCallback[address(v0[v5])].field1_0_19 = address(v10);
                _uniswapV3SwapCallback[address(v0[v5])].field2 = v11;
                _uniswapV3SwapCallback[address(v0[v5])].field3_0_0 = 1;
            }
            v5 = 0x5a17(v5);
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
    0x3d45(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xe7c5f19b(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _removePool, Error(28535));
    _setV3Pool[varg0] = varg1;
}

function 0xef61a6db(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(mapping_a[msg.sender], Error(0x6d6d6e76));
    require(stor_9_0_19, Error('cexAddr not set'));
    require(varg0 - stor_8_0_19, Error(0x776e73));
    v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg1, Error(28261));
    MEM[MEM[64] + 36] = stor_9_0_19;
    MEM[MEM[64] + 68] = varg1;
    0x3d45(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, varg0);
}

function 0xf1bd3ca2() public nonPayable { 
    require(msg.sender == _removePool, Error(28535));
    return stor_9_0_19;
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
            0x3d45(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, address(v0[v10]));
            v10 = 0x5a17(v10);
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
        if (0x77b03337 > v0) {
            if (0x434ffed8 > v0) {
                if (0x2a0aad11 > v0) {
                    if (0x232d2bc == v0) {
                        0x0232d2bc();
                    } else if (0x1c4cb529 == v0) {
                        0x1c4cb529();
                    } else if (0x224e5f60 == v0) {
                        0x224e5f60();
                    } else if (0x23a69e75 != v0) {
                        if (0x23c0c09f == v0) {
                            0x23c0c09f();
                        } else {
                            exit;
                        }
                    }
                } else if (0x2a0aad11 == v0) {
                    0x2a0aad11();
                } else if (0x2dc02d34 == v0) {
                    0x2dc02d34();
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
                if (0x434ffed8 == v0) {
                    tixian(uint256);
                } else if (0x49c36c07 == v0) {
                    0x49c36c07();
                } else if (0x4e2a27ed == v0) {
                    0x4e2a27ed();
                } else if (0x54441558 == v0) {
                    0x54441558();
                } else if (0x544d058b == v0) {
                    0x544d058b();
                } else {
                    exit;
                }
            } else if (0x5afc90f1 == v0) {
                0x5afc90f1();
            } else if (0x5e9833a5 == v0) {
                0x5e9833a5();
            } else if (0x636a6119 == v0) {
                0x636a6119();
            } else if (0x6cf3321c == v0) {
                0x6cf3321c();
            } else if (0x6fbebc70 == v0) {
                0x6fbebc70();
            } else if (0x768ac73b == v0) {
                0x768ac73b();
            } else {
                exit;
            }
        } else if (0xd21d122d > v0) {
            if (0xb7d4e27a > v0) {
                if (0x77b03337 == v0) {
                    0x77b03337();
                } else if (0x9ba5319b == v0) {
                    0x9ba5319b();
                } else if (0x9cb609ca == v0) {
                    setV3Pool(address);
                } else if (0x9ec9ec20 == v0) {
                    0x9ec9ec20();
                } else if (0xb15dfe3e == v0) {
                    0xb15dfe3e();
                } else {
                    exit;
                }
            } else if (0xb7d4e27a == v0) {
                0xb7d4e27a();
            } else if (0xc0818f17 == v0) {
                0xc0818f17();
            } else if (0xce2e62ff == v0) {
                0xce2e62ff();
            } else if (0xcee97e9e == v0) {
                0xcee97e9e();
            } else if (0xd0c88b33 == v0) {
                0xd0c88b33();
            } else if (0xd1ee941d == v0) {
                0xd1ee941d();
            } else {
                exit;
            }
        } else if (0xe7c5f19b > v0) {
            if (0xd21d122d == v0) {
                0xd21d122d();
            } else if (0xdaf95aef == v0) {
                0xdaf95aef();
            } else if (0xdbcd0278 == v0) {
                0xdbcd0278();
            } else if (0xe3f236cb == v0) {
                0xe3f236cb();
            } else if (0xe5f42bf8 == v0) {
                0xe5f42bf8();
            } else {
                exit;
            }
        } else if (0xe7c5f19b == v0) {
            0xe7c5f19b();
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
