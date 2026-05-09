// Decompiled by library.dedaub.com
// 2025.12.06 22:53 UTC
// Compiled using the solidity compiler version 0.8.28





function receive() public payable { 
}

function 0x124a(uint256 varg0) private { 
    if (0 - varg0) {
        if (1 - varg0) {
            if (2 - varg0) {
                if (3 - varg0) {
                    require(!(4 - varg0), varg0);
                    return 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    return 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            } else {
                return 0xdac17f958d2ee523a2206206994597c13d831ec7;
            }
        } else {
            return 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
        }
    } else {
        return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
}

function 0x166f(uint256 varg0, address varg1) private { 
    require(0 - varg0, ZeroValue());
    MCOPY(MEM[64], MEM[64] + 32, 0);
    MEM[MEM[64]] = 0;
    v0, /* uint256 */ v1 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
    }
    require(v0, varg1, varg0);
    return ;
}

function 0x175d(uint256 varg0, uint256 varg1) private { 
    if (address(varg1) + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8) {
        if (address(varg1) + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
            if (address(varg1) + 0xffffffffffffffffffffffff94e8ab8b176f6b3bb256746ab112153b6ad8e2f1) {
                require(!(address(varg1) + 0xffffffffffffffffffffffffdd9f053a1aabd588c55bb043012083e6c43d3a67), address(varg1));
                v0 = v1 = 0x4585fe77225b41b697c938b018e2ac67ac5a20c0;
                v2 = v3 = 1;
            } else {
                v0 = v4 = 0x60594a405d53811d3bc4766596efd80fd545a270;
                v2 = v5 = 1;
            }
        } else {
            v0 = v6 = 0x11b815efb8f581194ae79006d24e0d814b7697f6;
            v2 = v7 = 0;
        }
    } else {
        v0 = 0x88e6a0c2ddd26feeb64f039a2c41296fcb3f5640;
        v2 = 1;
    }
    MEM[MEM[64] + 32] = uint248.max + 1;
    MEM[MEM[64] + 33] = uint248.max + 1;
    MEM[MEM[64] + 34] = 0x48000000000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 36] = bytes20(varg1 << 96);
    MEM[MEM[64] + 56] = bytes20(v0 << 96);
    MEM[MEM[64] + 76] = varg0;
    MEM[64] += 108;
    if (v2) {
        v8 = v9 = 0x1000276a4;
    } else {
        v8 = v10 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    if (0) {
        MEM[36 + MEM[64] + 32] = varg0;
        MEM[36 + MEM[64] + 64] = bool(v2);
        MEM[36 + MEM[64] + 96] = address(v8);
        MEM[36 + MEM[64] + 128] = 160;
        MEM[36 + MEM[64] + 160] = 76;
        MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, 76);
        MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(address(this));
        MCOPY(MEM[64], MEM[64] + 32, 292);
        MEM[MEM[64] + 292] = 0;
        v11, /* uint256 */ v12 = address(v0).call(0).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
    } else {
        MEM[36 + MEM[64] + 32] = bool(v2);
        MEM[36 + MEM[64] + 64] = varg0;
        MEM[36 + MEM[64] + 96] = address(v8);
        MEM[36 + MEM[64] + 128] = 160;
        MEM[36 + MEM[64] + 160] = 76;
        MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, 76);
        MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(address(this));
        MCOPY(MEM[64], MEM[64] + 32, 292);
        MEM[MEM[64] + 292] = 0;
        v11 = v16, /* uint256 */ v17 = address(v0).call(0).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v18 = 96;
        } else {
            v13 = v19 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
        }
    }
    if (v11) {
        require(32 + v13 + MEM[v13] - (32 + v13) >= 64);
        if (!v2) {
            v20 = v21 = 0x3bab(MEM[32 + v13]);
        } else {
            v20 = v22 = 0x3bab(MEM[32 + v13 + 32]);
        }
        return v20;
    } else {
        v23 = new uint256[](4);
        MEM[v23.data] = address(v0);
        MEM[v23 + 64] = 96;
        v24 = new uint256[](MEM[v13]);
        MCOPY(v24.data, v13 + 32, MEM[v13]);
        MEM[v24 + MEM[v13] + 32] = 0;
        revert(v23, v25, v24);
    }
}

function 0x182e(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.exttload(keccak256(varg1, varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function set_approvals() public nonPayable { 
    require(0x617eb5daaabb433f97c741c5b09a9083b88ba0d7 == msg.sender, CallerNotOwner());
    v0 = v1 = 0;
    while (1) {
        if (v0 >= 5) {
            exit;
        } else {
            v2 = 0x124a(v0);
            MEM[MEM[64] + 68] = uint256.max;
            MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v3, /* uint256 */ v4, /* uint256 */ v5 = address(v2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v6 = v7 = 96;
            } else {
                v6 = v8 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
            }
            if (v3) {
                v0 += 1;
            } else {
                v9 = new uint256[](MEM[v6]);
                MCOPY(v9.data, v5, MEM[v6]);
                MEM[v9 + MEM[v6] + 32] = 0;
                revert(address(v2), address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), uint256.max, v9);
            }
        }
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    0x392(data.length, data.data);
}

function executeOperation(address asset, uint256 amount, uint256 premium, address initiator, bytes params) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(params <= uint64.max);
    require(4 + params + 31 < msg.data.length);
    require(params.length <= uint64.max);
    require(4 + params + params.length + 32 <= msg.data.length);
    require(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2 == msg.sender, msg.sender);
    0x392(params.length, params.data);
    return True;
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    0x392(data.length, data.data);
}

function 0x45bd1057(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 480);
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg2 == address(varg2));
    require(varg6 <= uint64.max);
    require(4 + varg6 + 31 < msg.data.length);
    require(varg6.length <= uint64.max);
    require(4 + varg6 + varg6.length + 32 <= msg.data.length);
    0x517(varg6.length, varg6.data, varg5, varg4, varg3, varg2, varg1, varg0.length, varg0.data, 4);
}

function 0x283b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = new struct(2);
    v0.word0 = 96;
    v0.word1 = 96;
    require(varg1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](varg1);
    if (varg1) {
        CALLDATACOPY(v1.data, msg.data.length, varg1);
    }
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](varg0);
    if (varg0) {
        CALLDATACOPY(v2.data, msg.data.length, varg0);
    }
    CALLDATACOPY(v1.data, varg2, varg1);
    CALLDATACOPY(v2.data, varg2 + varg1, varg0);
    v0.word0 = v1;
    v0.word1 = v2;
    return v0;
}

function exec(bytes payload) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(payload <= uint64.max);
    require(4 + payload + 31 < msg.data.length);
    require(payload.length <= uint64.max);
    require(4 + payload + payload.length + 32 <= msg.data.length);
    0x52d(payload.length, payload.data);
}

function reactorCallback(((address,address,uint256,uint256,address,bytes),(address,uint256,uint256),(address,uint256,address)[],bytes,bytes32) resolvedOrders, [] callbackData) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(resolvedOrders <= uint64.max);
    require(msg.data.length > 4 + resolvedOrders + 31);
    require(resolvedOrders.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](resolvedOrders.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (resolvedOrders.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (resolvedOrders.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + resolvedOrders + (resolvedOrders.length << 5) + 32 <= msg.data.length);
    v3 = v4 = resolvedOrders.data;
    while (v3 < 4 + resolvedOrders + (resolvedOrders.length << 5) + 32) {
        require(msg.data[v3] <= uint64.max);
        require(msg.data.length - (4 + resolvedOrders + msg.data[v3]) - 32 >= 224);
        v5 = new struct(5);
        require(!((v5 + 160 < v5) | (v5 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[4 + resolvedOrders + msg.data[v3] + 32] <= uint64.max);
        v6 = 4 + resolvedOrders + msg.data[v3] + msg.data[4 + resolvedOrders + msg.data[v3] + 32] + 32;
        require(msg.data.length - v6 >= 192);
        v7 = new struct(6);
        require(!((v7 + 192 < v7) | (v7 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v6] == address(msg.data[v6]));
        v7.word0 = msg.data[v6];
        require(msg.data[v6 + 32] == address(msg.data[v6 + 32]));
        v7.word1 = msg.data[v6 + 32];
        v7.word2 = msg.data[64 + v6];
        v7.word3 = msg.data[v6 + 96];
        require(msg.data[v6 + 128] == address(msg.data[v6 + 128]));
        v7.word4 = msg.data[v6 + 128];
        require(msg.data[v6 + 160] <= uint64.max);
        require(v6 + msg.data[v6 + 160] + 31 < msg.data.length);
        require(msg.data[v6 + msg.data[v6 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v8 = new bytes[](msg.data[v6 + msg.data[v6 + 160]]);
        require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v6 + msg.data[v6 + 160]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v6 + msg.data[v6 + 160]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + msg.data[v6 + 160] + msg.data[v6 + msg.data[v6 + 160]] + 32 <= msg.data.length);
        CALLDATACOPY(v8.data, v6 + msg.data[v6 + 160] + 32, msg.data[v6 + msg.data[v6 + 160]]);
        v8[msg.data[v6 + msg.data[v6 + 160]]] = 0;
        v7.word5 = v8;
        v5.word0 = v7;
        require(msg.data.length - (4 + resolvedOrders + msg.data[v3] + 64) >= 96);
        v9 = 0x330b();
        require(msg.data[4 + resolvedOrders + msg.data[v3] + 64] == address(msg.data[4 + resolvedOrders + msg.data[v3] + 64]));
        v9.word0 = msg.data[4 + resolvedOrders + msg.data[v3] + 64];
        v9.word1 = msg.data[32 + (4 + resolvedOrders + msg.data[v3] + 64)];
        v9.word2 = msg.data[64 + (4 + resolvedOrders + msg.data[v3] + 64)];
        v5.word1 = v9;
        require(msg.data[4 + resolvedOrders + msg.data[v3] + 160] <= uint64.max);
        v10 = 4 + resolvedOrders + msg.data[v3] + msg.data[4 + resolvedOrders + msg.data[v3] + 160] + 32;
        require(v10 + 31 < msg.data.length);
        require(msg.data[v10] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v11 = new uint256[](msg.data[v10]);
        require(!((v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v10] << 5) + 31) < v11) | (v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v10] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v12 = v13 = v11.data;
        require(v10 + msg.data[v10] * 96 + 32 <= msg.data.length);
        v14 = v15 = v10 + 32;
        while (v14 < v10 + msg.data[v10] * 96 + 32) {
            require(msg.data.length - v14 >= 96);
            v16 = 0x330b();
            require(msg.data[v14] == address(msg.data[v14]));
            v16.word0 = msg.data[v14];
            v16.word1 = msg.data[32 + v14];
            require(msg.data[v14 + 64] == address(msg.data[v14 + 64]));
            v16.word2 = msg.data[v14 + 64];
            MEM[v12] = v16;
            v12 = v12 + 32;
            v14 += 96;
        }
        v5.word2 = v11;
        require(msg.data[4 + resolvedOrders + msg.data[v3] + 192] <= uint64.max);
        v17 = 4 + resolvedOrders + msg.data[v3] + msg.data[4 + resolvedOrders + msg.data[v3] + 192] + 32;
        require(v17 + 31 < msg.data.length);
        require(msg.data[v17] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v18 = new bytes[](msg.data[v17]);
        require(!((v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v17] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) < v18) | (v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (msg.data[v17] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v17 + msg.data[v17] + 32 <= msg.data.length);
        CALLDATACOPY(v18.data, v17 + 32, msg.data[v17]);
        v18[msg.data[v17]] = 0;
        v5.word3 = v18;
        v5.word4 = msg.data[224 + (4 + resolvedOrders + msg.data[v3])];
        MEM[v1] = v5;
        v1 += 32;
        v3 += 32;
    }
    require(callbackData <= uint64.max);
    require(4 + callbackData + 31 < msg.data.length);
    require(callbackData.length <= uint64.max);
    require(4 + callbackData + callbackData.length + 32 <= msg.data.length);
    0x392(callbackData.length, callbackData.data);
}

function dodoCall(bool isDODOBuy, uint256 baseAmount, uint256 quoteAmount, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    0x392(varg3.length, varg3.data);
}

function withdraw(address asset, uint256 amount, address to) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(0x617eb5daaabb433f97c741c5b09a9083b88ba0d7 == msg.sender, CallerNotOwner());
    if (asset) {
        MEM[MEM[64] + 68] = amount;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(to);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v0, /* uint256 */ v1, /* uint256 */ v2 = asset.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v3 = 96;
        } else {
            v3 = v4 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
        }
        if (!v0) {
            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v5, /* uint256 */ v6, /* uint256 */ v7 = asset.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v8 = v9 = 96;
            } else {
                v8 = v10 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
            }
            require(v5, asset, address(this));
            require(v7 + MEM[v8] - v7 >= 32);
            v11 = MEM[v7];
            if (0) {
                require(0 - v11, asset, address(this));
                require(v11, Panic(17)); // arithmetic overflow or underflow
                v11 = v12 = uint256.max + v11;
            }
            v13 = new uint256[](MEM[v3]);
            MCOPY(v13.data, v2, MEM[v3]);
            MEM[v13 + MEM[v3] + 32] = 0;
            revert(asset, to, amount, v11, v13);
        }
    } else {
        v14 = to.call().value(amount).gas(2300 * !amount);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, msg.sender);
    v1 = _SafeMul(20, rawData.word1 >> 248);
    require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
    require(v1 + 1 <= msg.data[4 + rawData]);
    require(msg.data[4 + rawData] <= msg.data[4 + rawData]);
    0x392(msg.data[4 + rawData] - (v1 + 1), v1 + 1 + (4 + rawData + 32));
    v2 = v3 = 0;
    while (v2 < rawData.word1 >> 248) {
        v4 = msg.data[1 + (4 + rawData + 32 + v2 * 20)] >> 96;
        v5 = 0x182e(v4, this, 0x4444c5dc75cb358380d2e3de08a90);
        if (v5 >= 0) {
            if (v5 > 0) {
                MEM[MEM[64] + 68] = v5;
                MEM[MEM[64] + 32] = 0x80f0b44c00000000000000000000000000000000000000000000000000000000 | uint224(address(v4));
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v6, /* uint256 */ v7, /* uint256 */ v8 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v9 = v10 = 96;
                } else {
                    v9 = v11 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
                }
                if (!v6) {
                    v12 = new uint256[](MEM[v9]);
                    MCOPY(v12.data, v8, MEM[v9]);
                    MEM[v12 + MEM[v9] + 32] = 0;
                    revert(address(v4), v5, v12);
                }
            }
            v2 += 1;
        } else {
            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v13, /* uint256 */ v14, /* uint256 */ v15 = address(v4).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v16 = v17 = 96;
            } else {
                v16 = v18 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
            }
            require(v13, address(v4), address(this));
            require(v15 + MEM[v16] - v15 >= 32);
            v19 = MEM[v15];
            if (0) {
                require(0 - v19, address(v4), address(this));
                require(v19, Panic(17)); // arithmetic overflow or underflow
                v19 = v20 = uint256.max + v19;
            }
            revert(address(v4), v5, v19);
        }
    }
    v21 = new uint256[](MEM[96]);
    MCOPY(v21.data, 128, MEM[96]);
    MEM[v21 + MEM[96] + 32] = 0;
    return v21;
}

function 0x330b() private { 
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0xb3313cd0(address varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = 4 + varg2 + 32 + 1;
    v3 = v4 = 0;
    while (v3 < varg2.word1 >> 248) {
        if (msg.data[v1] >> 248) {
            v5 = 3 + v1;
            require(v1 <= v5, Panic(17)); // arithmetic overflow or underflow
            if ((msg.data[v1] >> 248) - 1) {
                if ((msg.data[v1] >> 248) - 2) {
                    if ((msg.data[v1] >> 248) - 3) {
                        if ((msg.data[v1] >> 248) - 4) {
                            if ((msg.data[v1] >> 248) - 5) {
                                if ((msg.data[v1] >> 248) - 6) {
                                    if ((msg.data[v1] >> 248) - 7) {
                                        if ((msg.data[v1] >> 248) - 8) {
                                            if ((msg.data[v1] >> 248) - 9) {
                                                require(msg.data[v1] >> 248 >= 100, msg.data[v1] >> 248);
                                                require(v5 <= msg.data.length);
                                                require(msg.data.length <= msg.data.length);
                                                if ((msg.data[v1] >> 248) - 100) {
                                                    require(!((msg.data[v1] >> 248) - 200), msg.data[v1] >> 248);
                                                    require(52 <= msg.data.length - v5);
                                                    require(msg.data.length - v5 <= msg.data.length - v5);
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = address(msg.data[v5 + 32] >> 96);
                                                    MEM[36 + MEM[64] + 64] = msg.data[v5];
                                                    MEM[36 + MEM[64] + 96] = 160;
                                                    MEM[36 + MEM[64] + 160] = msg.data.length - v5 - 52;
                                                    CALLDATACOPY(36 + MEM[64] + 160 + 32, 52 + v5, msg.data.length - v5 - 52);
                                                    MEM[36 + MEM[64] + 160 + (msg.data.length - v5 - 52) + 32] = 0;
                                                    MEM[36 + MEM[64] + 128] = uint16(0);
                                                    MEM[MEM[64] + 32] = bytes4(0x42b0b77c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (36 + MEM[64] + 160 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v6 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + msg.data.length - v39b3V0x1063V0x8b1 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v7 = v8 = 96;
                                                    } else {
                                                        v7 = v9 = MEM[64];
                                                        MEM[v9] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v9 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v6) {
                                                        v10 = new uint256[](MEM[v7]);
                                                        MCOPY(v10.data, v7 + 32, MEM[v7]);
                                                        MEM[v10 + MEM[v7] + 32] = 0;
                                                        revert(msg.data[v5], v10);
                                                    }
                                                } else {
                                                    require(52 <= msg.data.length - v5);
                                                    require(msg.data.length - v5 <= msg.data.length - v5);
                                                    v11 = new uint256[](1);
                                                    CALLDATACOPY(v11.data, msg.data.length, 32);
                                                    require(0 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v12 = v11.data;
                                                    v11[0] = address(msg.data[v5 + 32] >> 96);
                                                    v13 = new uint256[](1);
                                                    CALLDATACOPY(v13.data, msg.data.length, 32);
                                                    require(0 < v13.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v14 = v13.data;
                                                    v13[0] = msg.data[v5];
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = 128;
                                                    MEM[36 + MEM[64] + 128] = v11.length;
                                                    v15 = v16 = 36 + MEM[64] + 160;
                                                    v17 = v18 = v11.data;
                                                    v19 = v20 = 0;
                                                    while (v19 < v11.length) {
                                                        MEM[v15] = address(MEM[v17]);
                                                        v17 += 32;
                                                        v15 = v15 + 32;
                                                        v19 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 64] = v15 - (36 + MEM[64]);
                                                    MEM[v15] = v13.length;
                                                    v21 = v22 = 32 + v15;
                                                    v23 = v24 = v13.data;
                                                    v25 = v26 = 0;
                                                    while (v25 < v13.length) {
                                                        MEM[v21] = MEM[v23];
                                                        v21 += 32;
                                                        v23 = v23 + 32;
                                                        v25 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 96] = v21 - (36 + MEM[64]);
                                                    MEM[v21] = msg.data.length - v5 - 52;
                                                    CALLDATACOPY(v21 + 32, 52 + v5, msg.data.length - v5 - 52);
                                                    MEM[v21 + (msg.data.length - v5 - 52) + 32] = 0;
                                                    MEM[MEM[64] + 32] = bytes4(0x5c38449e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, v21 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (v21 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v27 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + MEM[64] + v3e15_0x4V0x2d79V0x1f7eV0x11f8V0x8b1 + msg.data.length - v39b3V0x1063V0x8b1 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v28 = v29 = 96;
                                                    } else {
                                                        v28 = v30 = MEM[64];
                                                        MEM[v30] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v30 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v27) {
                                                        v31 = new uint256[](MEM[v28]);
                                                        MCOPY(v31.data, v28 + 32, MEM[v28]);
                                                        MEM[v31 + MEM[v28] + 32] = 0;
                                                        revert(msg.data[v5], v31);
                                                    }
                                                }
                                            } else {
                                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                                v32 = v33 = 0;
                                                if (msg.data[v5] >> 248) {
                                                    v34 = 0x182e(0, this, 0x4444c5dc75cb358380d2e3de08a90);
                                                    v32 = 0x3bab(v34);
                                                }
                                                v35 = new bytes[](4);
                                                MEM[v35.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v35.data]);
                                                MCOPY(MEM[64], v35.data, v35.length);
                                                MEM[MEM[64] + v35.length] = 0;
                                                v36 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(v32).gas(msg.gas);
                                                if (RETURNDATASIZE() == 0) {
                                                    v37 = v38 = 96;
                                                } else {
                                                    v37 = v39 = MEM[64];
                                                    MEM[v39] = RETURNDATASIZE();
                                                    RETURNDATACOPY(v39 + 32, 0, RETURNDATASIZE());
                                                }
                                                if (!v36) {
                                                    v40 = new uint256[](MEM[v37]);
                                                    MCOPY(v40.data, v37 + 32, MEM[v37]);
                                                    MEM[v40 + MEM[v37] + 32] = 0;
                                                    revert(v40);
                                                }
                                            }
                                        } else {
                                            require(v5 <= msg.data.length);
                                            require(msg.data.length <= msg.data.length);
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[36 + MEM[64] + 32] = msg.data.length - v5;
                                            CALLDATACOPY(36 + MEM[64] + 32 + 32, v5, msg.data.length - v5);
                                            MEM[36 + MEM[64] + 32 + (msg.data.length - v5) + 32] = 0;
                                            MEM[MEM[64] + 32] = bytes4(0x48c8949100000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 32 + (msg.data.length - v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                            MEM[MEM[64] + (36 + MEM[64] + 32 + (msg.data.length - v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                            v41 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 32 + msg.data.length - v39b3V0x1063V0x8b1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (RETURNDATASIZE() == 0) {
                                                v42 = v43 = 96;
                                            } else {
                                                v42 = v44 = MEM[64];
                                                MEM[v44] = RETURNDATASIZE();
                                                RETURNDATACOPY(v44 + 32, 0, RETURNDATASIZE());
                                            }
                                            if (!v41) {
                                                v45 = new uint256[](MEM[v42]);
                                                MCOPY(v45.data, v42 + 32, MEM[v42]);
                                                MEM[v45 + MEM[v42] + 32] = 0;
                                                revert(v45);
                                            }
                                        }
                                    } else {
                                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                        require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                        MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(msg.data[v5]);
                                        MCOPY(MEM[64], MEM[64] + 32, 36);
                                        MEM[MEM[64] + 36] = 0;
                                        v46 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v47 = 96;
                                        } else {
                                            v47 = v48 = MEM[64];
                                            MEM[v48] = RETURNDATASIZE();
                                            RETURNDATACOPY(v48 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v46) {
                                            v49 = new uint256[](MEM[v47]);
                                            MCOPY(v49.data, v47 + 32, MEM[v47]);
                                            MEM[v49 + MEM[v47] + 32] = 0;
                                            revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v49);
                                        }
                                    }
                                } else {
                                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                    require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                    MCOPY(MEM[64], MEM[64] + 32, 0);
                                    MEM[MEM[64]] = 0;
                                    v50 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v50) {
                                        v51 = new uint256[](0);
                                        revert(6, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v51);
                                    }
                                }
                            } else {
                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                v52 = v53 = 0;
                                if (1 - (msg.data[v5] >> 248)) {
                                    v54 = v55 = 2 == msg.data[v5] >> 248;
                                    if (v55) {
                                        v54 = !uint16(msg.data[v5 + 21] >> 48);
                                    }
                                    if (v54) {
                                        v52 = v56 = this.balance;
                                    }
                                } else {
                                    MEM[MEM[64] + 68] = uint256.max;
                                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v5 + 21] >> 96));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v57 = address(msg.data[v5 + 1] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v58 = v59 = 96;
                                    } else {
                                        v58 = v60 = MEM[64];
                                        MEM[v60] = RETURNDATASIZE();
                                        RETURNDATACOPY(v60 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (v57) {
                                        break;
                                    } else {
                                        v61 = new uint256[](MEM[v58]);
                                        MCOPY(v61.data, v58 + 32, MEM[v58]);
                                        MEM[v61 + MEM[v58] + 32] = 0;
                                        revert(address(msg.data[v5 + 1] >> 96), address(msg.data[v5 + 21] >> 96), uint256.max, v61);
                                    }
                                }
                                if (0 - uint16(msg.data[v5 + 21] >> 48)) {
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v62 = 0x283b(uint16(msg.data[v5 + 21] >> 64), uint16(msg.data[v5 + 21] >> 80), v5 + 47, (msg.data[v1 + 1] >> 240) + v5 - v5, v5);
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 + 47 <= uint16(msg.data[v5 + 21] >> 80) + (v5 + 47), Panic(17)); // arithmetic overflow or underflow
                                    v63 = uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47));
                                    require(uint16(msg.data[v5 + 21] >> 80) + (v5 + 47) <= v63, Panic(17)); // arithmetic overflow or underflow
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 + 47 <= uint16(msg.data[v5 + 21] >> 80) + (v5 + 47), Panic(17)); // arithmetic overflow or underflow
                                    require(uint16(msg.data[v5 + 21] >> 80) + (v5 + 47) <= uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)), Panic(17)); // arithmetic overflow or underflow
                                    v64 = uint16(msg.data[v5 + 21] >> 48) + (uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)));
                                    require(uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)) <= v64, Panic(17)); // arithmetic overflow or underflow
                                    require(v63 <= v64);
                                    require(v64 <= msg.data.length);
                                    MEM[36 + MEM[64]] = 64;
                                    MEM[36 + MEM[64] + 64] = 64;
                                    MEM[36 + MEM[64] + 64 + 64] = MEM[v62.word0];
                                    MCOPY(36 + MEM[64] + 64 + 64 + 32, v62.word0 + 32, MEM[v62.word0]);
                                    MEM[36 + MEM[64] + 64 + 64 + MEM[v62.word0] + 32] = 0;
                                    v65 = 36 + MEM[64] + 64 + 64 + (MEM[v62.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 64 + 32] = v65 - (36 + MEM[64] + 64);
                                    MEM[v65] = MEM[v62.word1];
                                    MCOPY(v65 + 32, v62.word1 + 32, MEM[v62.word1]);
                                    MEM[v65 + MEM[v62.word1] + 32] = 0;
                                    MEM[36 + MEM[64] + 32] = v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - (36 + MEM[64]);
                                    MEM[v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = v64 - v63;
                                    CALLDATACOPY(v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v63, v64 - v63);
                                    MEM[v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63) + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0xd33588400000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v66 = address(msg.data[v5 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d76V0x2a11V0x1dc4V0x1142V0x8b1 + MEM[v117a0_0x0V0x1142V0x8b1.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v39b3V0x1dadV0x1142V0x8b1 - v39b3V0x1d80V0x1142V0x8b1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v52).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v67 = 96;
                                    } else {
                                        v67 = v68 = MEM[64];
                                        MEM[v68] = RETURNDATASIZE();
                                        RETURNDATACOPY(v68 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v66) {
                                        v69 = new uint256[](MEM[v67]);
                                        MCOPY(v69.data, v67 + 32, MEM[v67]);
                                        MEM[v69 + MEM[v67] + 32] = 0;
                                        revert(5, address(msg.data[v5 + 21] >> 96), v69);
                                    }
                                } else {
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v70 = 0x283b(uint16(msg.data[v5 + 21] >> 64), uint16(msg.data[v5 + 21] >> 80), v5 + 47, (msg.data[v1 + 1] >> 240) + v5 - v5, v5);
                                    MEM[36 + MEM[64]] = 32;
                                    MEM[36 + MEM[64] + 32] = 64;
                                    MEM[36 + MEM[64] + 32 + 64] = MEM[v70.word0];
                                    MCOPY(36 + MEM[64] + 32 + 64 + 32, v70.word0 + 32, MEM[v70.word0]);
                                    MEM[36 + MEM[64] + 32 + 64 + MEM[v70.word0] + 32] = 0;
                                    v71 = 36 + MEM[64] + 32 + 64 + (MEM[v70.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 32 + 32] = v71 - (36 + MEM[64] + 32);
                                    MEM[v71] = MEM[v70.word1];
                                    MCOPY(v71 + 32, v70.word1 + 32, MEM[v70.word1]);
                                    MEM[v71 + MEM[v70.word1] + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0x3f62192e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v71 + (MEM[v70.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v71 + (MEM[v70.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v72 = address(msg.data[v5 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d64V0x28feV0x1d46V0x1142V0x8b1 + MEM[v1177a_0x0V0x1142V0x8b1.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v52).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v73 = 96;
                                    } else {
                                        v73 = v74 = MEM[64];
                                        MEM[v74] = RETURNDATASIZE();
                                        RETURNDATACOPY(v74 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v72) {
                                        v75 = new uint256[](MEM[v73]);
                                        MCOPY(v75.data, v73 + 32, MEM[v73]);
                                        MEM[v75 + MEM[v73] + 32] = 0;
                                        revert(5, address(msg.data[v5 + 21] >> 96), v75);
                                    }
                                }
                            }
                        } else {
                            require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                            require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                            require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                            v76 = v77 = this;
                            if (msg.data[v5] >> 248 == 1) {
                                v78 = v79 = v5 + 77;
                                v76 = v80 = msg.data[57 + v5] >> 96;
                            } else {
                                v78 = v81 = v5 + 57;
                            }
                            require(v78 <= uint16(msg.data[v5] >> 216) + v78, Panic(17)); // arithmetic overflow or underflow
                            require(v78 <= uint16(msg.data[v5] >> 216) + v78);
                            require(uint16(msg.data[v5] >> 216) + v78 <= msg.data.length);
                            v82 = uint16(msg.data[v5] >> 216) + v78 - v78;
                            if (uint8(msg.data[v5] >> 240)) {
                                v83 = v84 = 0x1000276a4;
                            } else {
                                v83 = v85 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            }
                            if (uint8(msg.data[v5] >> 232)) {
                                MEM[36 + MEM[64]] = address(v76);
                                MEM[36 + MEM[64] + 32] = msg.data[v5 + 25];
                                MEM[36 + MEM[64] + 64] = bool(msg.data[v5] >> 240);
                                MEM[36 + MEM[64] + 96] = address(v83);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v82;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v78, v82);
                                MEM[36 + MEM[64] + 160 + v82 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v86 = address(msg.data[v5] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x8b1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v87 = 96;
                                } else {
                                    v87 = v88 = MEM[64];
                                    MEM[v88] = RETURNDATASIZE();
                                    RETURNDATACOPY(v88 + 32, 0, RETURNDATASIZE());
                                }
                            } else {
                                MEM[36 + MEM[64]] = address(v76);
                                MEM[36 + MEM[64] + 32] = bool(msg.data[v5] >> 240);
                                MEM[36 + MEM[64] + 64] = msg.data[v5 + 25];
                                MEM[36 + MEM[64] + 96] = address(v83);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v82;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v78, v82);
                                MEM[36 + MEM[64] + 160 + v82 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v86 = v89 = address(msg.data[v5] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x8b1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v87 = v90 = 96;
                                } else {
                                    v87 = v91 = MEM[64];
                                    MEM[v91] = RETURNDATASIZE();
                                    RETURNDATACOPY(v91 + 32, 0, RETURNDATASIZE());
                                }
                            }
                            if (!v86) {
                                v92 = new uint256[](4);
                                MEM[v92.data] = address(msg.data[v5] >> 56);
                                MEM[v92 + 64] = 96;
                                v93 = new uint256[](MEM[v87]);
                                MCOPY(v93.data, v87 + 32, MEM[v87]);
                                MEM[v93 + MEM[v87] + 32] = 0;
                                revert(v92, v94, v93);
                            }
                        }
                    } else {
                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                        require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                        v95 = v96 = msg.data[v5 + 24];
                        if (0 - uint16(msg.data[v5] >> 224)) {
                            require(56 <= uint16(msg.data[v5] >> 224) + 56, Panic(17)); // arithmetic overflow or underflow
                            require(56 <= uint16(msg.data[v5] >> 224) + 56);
                            require(uint16(msg.data[v5] >> 224) + 56 <= (msg.data[v1 + 1] >> 240) + v5 - v5);
                            if (uint8(msg.data[v5] >> 240)) {
                                v95 = v97 = 0;
                            } else {
                                v95 = 0;
                            }
                            MEM[36 + MEM[64]] = v95;
                            MEM[36 + MEM[64] + 32] = v95;
                            MEM[36 + MEM[64] + 64] = address(this);
                            MEM[36 + MEM[64] + 96] = 128;
                            MEM[36 + MEM[64] + 128] = uint16(msg.data[v5] >> 224) + 56 - 56;
                            CALLDATACOPY(36 + MEM[64] + 128 + 32, 56 + v5, uint16(msg.data[v5] >> 224) + 56 - 56);
                            MEM[36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56) + 32] = 0;
                            MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                            MEM[MEM[64] + (36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                            v98 = address(msg.data[v5] >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 128 + uint16(msg.data[v39b3V0x1063V0x8b1] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v99 = 96;
                            } else {
                                v99 = v100 = MEM[64];
                                MEM[v100] = RETURNDATASIZE();
                                RETURNDATACOPY(v100 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v98) {
                                v101 = new uint256[](MEM[v99]);
                                MCOPY(v101.data, v99 + 32, MEM[v99]);
                                MEM[v101 + MEM[v99] + 32] = 0;
                                revert(3, address(msg.data[v5] >> 64), v101);
                            }
                        } else {
                            if (!(msg.data[v5] >> 248)) {
                                v102 = v103 = this;
                            } else {
                                v102 = msg.data[v5 + 56] >> 96;
                            }
                            if (uint8(msg.data[v5] >> 240)) {
                                v95 = v104 = 0;
                            } else {
                                v95 = v105 = 0;
                            }
                            MEM[MEM[64] + 68] = v95;
                            MEM[MEM[64] + 100] = address(v102);
                            MEM[MEM[64] + 132] = 128;
                            MEM[MEM[64] + 164] = 0;
                            MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v95);
                            MCOPY(MEM[64], MEM[64] + 32, 164);
                            MEM[MEM[64] + 164] = 0;
                            v106 = address(msg.data[v5] >> 64).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v107 = 96;
                            } else {
                                v107 = v108 = MEM[64];
                                MEM[v108] = RETURNDATASIZE();
                                RETURNDATACOPY(v108 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v106) {
                                v109 = new uint256[](MEM[v107]);
                                MCOPY(v109.data, v107 + 32, MEM[v107]);
                                MEM[v109 + MEM[v107] + 32] = 0;
                                revert(3, address(msg.data[v5] >> 64), v109);
                            }
                        }
                    }
                } else {
                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                    require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                    0x166f(msg.data[v5], block.coinbase);
                }
            } else {
                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                if (msg.data[v5] >> 96) {
                    MEM[MEM[64] + 68] = msg.data[v5 + 40];
                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v5 + 20] >> 96));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v110 = address(msg.data[v5] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v111 = 96;
                    } else {
                        v111 = v112 = MEM[64];
                        MEM[v112] = RETURNDATASIZE();
                        RETURNDATACOPY(v112 + 32, 0, RETURNDATASIZE());
                    }
                    if (v110) {
                        break;
                    } else {
                        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v113, /* uint256 */ v114, /* uint256 */ v115 = address(msg.data[v5] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v116 = v117 = 96;
                        } else {
                            v116 = v118 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v118.data, 0, RETURNDATASIZE());
                        }
                        require(v113, address(msg.data[v5] >> 96), address(this));
                        require(v115 + MEM[v116] - v115 >= 32);
                        v119 = MEM[v115];
                        if (0) {
                            require(0 - v119, address(msg.data[v5] >> 96), address(this));
                            require(v119, Panic(17)); // arithmetic overflow or underflow
                            v119 = v120 = uint256.max + v119;
                        }
                        v121 = new uint256[](MEM[v111]);
                        MCOPY(v121.data, v111 + 32, MEM[v111]);
                        MEM[v121 + MEM[v111] + 32] = 0;
                        revert(address(msg.data[v5] >> 96), address(msg.data[v5 + 20] >> 96), msg.data[v5 + 40], v119, v121);
                    }
                } else {
                    0x166f(msg.data[v5 + 40], msg.data[v5 + 20] >> 96);
                }
            }
            v1 = (msg.data[v1 + 1] >> 240) + v5;
            require(v5 <= v1, Panic(17)); // arithmetic overflow or underflow
            break;
        } else {
            v122 = _SafeSub(27, 4);
            require(v1 <= v122 + v1, Panic(17)); // arithmetic overflow or underflow
            require(v122 + v1 <= (msg.data[v1 + 1] >> 240) + (v122 + v1), Panic(17)); // arithmetic overflow or underflow
            require(v122 + v1 <= (msg.data[v1 + 1] >> 240) + (v122 + v1));
            require((msg.data[v1 + 1] >> 240) + (v122 + v1) <= msg.data.length);
            CALLDATACOPY(MEM[64], v122 + v1, (msg.data[v1 + 1] >> 240) + (v122 + v1) - (v122 + v1));
            MEM[(msg.data[v1 + 1] >> 240) + (v122 + v1) - (v122 + v1) + MEM[64]] = 0;
            v123 = address(msg.data[v1 + 3] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + msg.data[v39b3V0x1233V0x8b1 + 1] >> 240 + vf91_0x0V0x8b1 + v39b3V0x1233V0x8b1 - vf91_0x0V0x8b1 + v39b3V0x1233V0x8b1 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v124 = v125 = 96;
            } else {
                v124 = v126 = MEM[64];
                MEM[v126] = RETURNDATASIZE();
                RETURNDATACOPY(v126 + 32, 0, RETURNDATASIZE());
            }
            if (v123) {
                v1 = (msg.data[v1 + 1] >> 240) + (v122 + v1);
                require(v122 + v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                break;
            } else {
                v127 = new uint256[](MEM[v124]);
                MCOPY(v127.data, v124 + 32, MEM[v124]);
                MEM[v127 + MEM[v124] + 32] = 0;
                revert(address(msg.data[v1 + 3] >> 96), v127);
            }
        }
        v3 += 1;
    }
    MEM[MEM[64] + 68] = varg1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v128, /* uint256 */ v129, /* uint256 */ v130 = varg0.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v131 = 96;
    } else {
        v131 = v132 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v132.data, 0, RETURNDATASIZE());
    }
    if (v128) {
        v133 = _SafeMul(16, msg.data.length);
        require(21000 <= msg.gas + 21000, Panic(17)); // arithmetic overflow or underflow
        v134 = _SafeSub(msg.gas + 21000, msg.gas);
        require(v134 <= v133 + v134, Panic(17)); // arithmetic overflow or underflow
        revert(v133 + v134);
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v135, /* uint256 */ v136, /* uint256 */ v137 = varg0.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v138 = v139 = 96;
        } else {
            v138 = v140 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v140.data, 0, RETURNDATASIZE());
        }
        require(v135, varg0, address(this));
        require(v137 + MEM[v138] - v137 >= 32);
        v141 = MEM[v137];
        if (0) {
            require(0 - v141, varg0, address(this));
            require(v141, Panic(17)); // arithmetic overflow or underflow
            v141 = v142 = uint256.max + v141;
        }
        v143 = new uint256[](MEM[v131]);
        MCOPY(v143.data, v130, MEM[v131]);
        MEM[v143 + MEM[v131] + 32] = 0;
        revert(varg0, address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), varg1, v141, v143);
    }
}

function 0xbc157aa0(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    0x943(varg0.length, varg0.data);
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(4 + tokens + 31 < msg.data.length);
    require(tokens.length <= uint64.max);
    require(4 + tokens + (tokens.length << 5) + 32 <= msg.data.length);
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    require(amounts.length <= uint64.max);
    require(4 + amounts + (amounts.length << 5) + 32 <= msg.data.length);
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    require(feeAmounts.length <= uint64.max);
    require(4 + feeAmounts + (feeAmounts.length << 5) + 32 <= msg.data.length);
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    require(userData.length <= uint64.max);
    require(4 + userData + userData.length + 32 <= msg.data.length);
    require(0xba12222222228d8ba445958a75a0704d566bf2c8 == msg.sender, msg.sender);
    0x392(userData.length, userData.data);
    require(0 < feeAmounts.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(0 < amounts.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(amounts[0] <= feeAmounts[0] + amounts[0], Panic(17)); // arithmetic overflow or underflow
    require(0 < tokens.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(tokens.data + 32 - tokens.data >= 32);
    require(tokens[0] == address(tokens[0]));
    MEM[MEM[64] + 68] = feeAmounts[0] + amounts[0];
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xba12222222228d8ba445958a75a0704d566bf2c8));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = address(tokens[0]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = 96;
    } else {
        v3 = v4 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
    }
    if (v0) {
        exit;
    } else {
        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v5, /* uint256 */ v6, /* uint256 */ v7 = address(tokens[0]).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v8 = v9 = 96;
        } else {
            v8 = v10 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
        }
        require(v5, address(tokens[0]), address(this));
        require(v7 + MEM[v8] - v7 >= 32);
        v11 = MEM[v7];
        if (0) {
            require(0 - v11, address(tokens[0]), address(this));
            require(v11, Panic(17)); // arithmetic overflow or underflow
            v11 = v12 = uint256.max + v11;
        }
        v13 = new uint256[](MEM[v3]);
        MCOPY(v13.data, v2, MEM[v3]);
        MEM[v13 + MEM[v3] + 32] = 0;
        revert(address(tokens[0]), address(0xba12222222228d8ba445958a75a0704d566bf2c8), feeAmounts[0] + amounts[0], v11, v13);
    }
}

function 0x392(uint256 varg0, uint256 varg1) private { 
    v0 = 0xd24(tx.origin);
    require(v0);
    v1 = v2 = varg1 + 1;
    v3 = v4 = 0;
    while (v3 < msg.data[varg1] >> 248) {
        if (msg.data[v1] >> 248) {
            v5 = 3 + v1;
            require(v1 <= v5, Panic(17)); // arithmetic overflow or underflow
            if ((msg.data[v1] >> 248) - 1) {
                if ((msg.data[v1] >> 248) - 2) {
                    if ((msg.data[v1] >> 248) - 3) {
                        if ((msg.data[v1] >> 248) - 4) {
                            if ((msg.data[v1] >> 248) - 5) {
                                if ((msg.data[v1] >> 248) - 6) {
                                    if ((msg.data[v1] >> 248) - 7) {
                                        if ((msg.data[v1] >> 248) - 8) {
                                            if ((msg.data[v1] >> 248) - 9) {
                                                require(msg.data[v1] >> 248 >= 100, msg.data[v1] >> 248);
                                                require(v5 <= msg.data.length);
                                                require(msg.data.length <= msg.data.length);
                                                if ((msg.data[v1] >> 248) - 100) {
                                                    require(!((msg.data[v1] >> 248) - 200), msg.data[v1] >> 248);
                                                    require(52 <= msg.data.length - v5);
                                                    require(msg.data.length - v5 <= msg.data.length - v5);
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = address(msg.data[v5 + 32] >> 96);
                                                    MEM[36 + MEM[64] + 64] = msg.data[v5];
                                                    MEM[36 + MEM[64] + 96] = 160;
                                                    MEM[36 + MEM[64] + 160] = msg.data.length - v5 - 52;
                                                    CALLDATACOPY(36 + MEM[64] + 160 + 32, 52 + v5, msg.data.length - v5 - 52);
                                                    MEM[36 + MEM[64] + 160 + (msg.data.length - v5 - 52) + 32] = 0;
                                                    MEM[36 + MEM[64] + 128] = uint16(0);
                                                    MEM[MEM[64] + 32] = bytes4(0x42b0b77c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (36 + MEM[64] + 160 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v6 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + msg.data.length - v39b3V0x1063V0x3d1 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v7 = v8 = 96;
                                                    } else {
                                                        v7 = v9 = MEM[64];
                                                        MEM[v9] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v9 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v6) {
                                                        v10 = new uint256[](MEM[v7]);
                                                        MCOPY(v10.data, v7 + 32, MEM[v7]);
                                                        MEM[v10 + MEM[v7] + 32] = 0;
                                                        revert(msg.data[v5], v10);
                                                    }
                                                } else {
                                                    require(52 <= msg.data.length - v5);
                                                    require(msg.data.length - v5 <= msg.data.length - v5);
                                                    v11 = new uint256[](1);
                                                    CALLDATACOPY(v11.data, msg.data.length, 32);
                                                    require(0 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v12 = v11.data;
                                                    v11[0] = address(msg.data[v5 + 32] >> 96);
                                                    v13 = new uint256[](1);
                                                    CALLDATACOPY(v13.data, msg.data.length, 32);
                                                    require(0 < v13.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v14 = v13.data;
                                                    v13[0] = msg.data[v5];
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = 128;
                                                    MEM[36 + MEM[64] + 128] = v11.length;
                                                    v15 = v16 = 36 + MEM[64] + 160;
                                                    v17 = v18 = v11.data;
                                                    v19 = v20 = 0;
                                                    while (v19 < v11.length) {
                                                        MEM[v15] = address(MEM[v17]);
                                                        v17 += 32;
                                                        v15 = v15 + 32;
                                                        v19 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 64] = v15 - (36 + MEM[64]);
                                                    MEM[v15] = v13.length;
                                                    v21 = v22 = 32 + v15;
                                                    v23 = v24 = v13.data;
                                                    v25 = v26 = 0;
                                                    while (v25 < v13.length) {
                                                        MEM[v21] = MEM[v23];
                                                        v21 += 32;
                                                        v23 = v23 + 32;
                                                        v25 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 96] = v21 - (36 + MEM[64]);
                                                    MEM[v21] = msg.data.length - v5 - 52;
                                                    CALLDATACOPY(v21 + 32, 52 + v5, msg.data.length - v5 - 52);
                                                    MEM[v21 + (msg.data.length - v5 - 52) + 32] = 0;
                                                    MEM[MEM[64] + 32] = bytes4(0x5c38449e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, v21 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (v21 + (msg.data.length - v5 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v27 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + MEM[64] + v3e15_0x4V0x2d79V0x1f7eV0x11f8V0x3d1 + msg.data.length - v39b3V0x1063V0x3d1 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v28 = v29 = 96;
                                                    } else {
                                                        v28 = v30 = MEM[64];
                                                        MEM[v30] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v30 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v27) {
                                                        v31 = new uint256[](MEM[v28]);
                                                        MCOPY(v31.data, v28 + 32, MEM[v28]);
                                                        MEM[v31 + MEM[v28] + 32] = 0;
                                                        revert(msg.data[v5], v31);
                                                    }
                                                }
                                            } else {
                                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                                v32 = v33 = 0;
                                                if (msg.data[v5] >> 248) {
                                                    v34 = 0x182e(0, this, 0x4444c5dc75cb358380d2e3de08a90);
                                                    v32 = 0x3bab(v34);
                                                }
                                                v35 = new bytes[](4);
                                                MEM[v35.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v35.data]);
                                                MCOPY(MEM[64], v35.data, v35.length);
                                                MEM[MEM[64] + v35.length] = 0;
                                                v36 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(v32).gas(msg.gas);
                                                if (RETURNDATASIZE() == 0) {
                                                    v37 = v38 = 96;
                                                } else {
                                                    v37 = v39 = MEM[64];
                                                    MEM[v39] = RETURNDATASIZE();
                                                    RETURNDATACOPY(v39 + 32, 0, RETURNDATASIZE());
                                                }
                                                if (!v36) {
                                                    v40 = new uint256[](MEM[v37]);
                                                    MCOPY(v40.data, v37 + 32, MEM[v37]);
                                                    MEM[v40 + MEM[v37] + 32] = 0;
                                                    revert(v40);
                                                }
                                            }
                                        } else {
                                            require(v5 <= msg.data.length);
                                            require(msg.data.length <= msg.data.length);
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[36 + MEM[64] + 32] = msg.data.length - v5;
                                            CALLDATACOPY(36 + MEM[64] + 32 + 32, v5, msg.data.length - v5);
                                            MEM[36 + MEM[64] + 32 + (msg.data.length - v5) + 32] = 0;
                                            MEM[MEM[64] + 32] = bytes4(0x48c8949100000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 32 + (msg.data.length - v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                            MEM[MEM[64] + (36 + MEM[64] + 32 + (msg.data.length - v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                            v41 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 32 + msg.data.length - v39b3V0x1063V0x3d1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (RETURNDATASIZE() == 0) {
                                                v42 = v43 = 96;
                                            } else {
                                                v42 = v44 = MEM[64];
                                                MEM[v44] = RETURNDATASIZE();
                                                RETURNDATACOPY(v44 + 32, 0, RETURNDATASIZE());
                                            }
                                            if (!v41) {
                                                v45 = new uint256[](MEM[v42]);
                                                MCOPY(v45.data, v42 + 32, MEM[v42]);
                                                MEM[v45 + MEM[v42] + 32] = 0;
                                                revert(v45);
                                            }
                                        }
                                    } else {
                                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                        require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                        MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(msg.data[v5]);
                                        MCOPY(MEM[64], MEM[64] + 32, 36);
                                        MEM[MEM[64] + 36] = 0;
                                        v46 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v47 = 96;
                                        } else {
                                            v47 = v48 = MEM[64];
                                            MEM[v48] = RETURNDATASIZE();
                                            RETURNDATACOPY(v48 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v46) {
                                            v49 = new uint256[](MEM[v47]);
                                            MCOPY(v49.data, v47 + 32, MEM[v47]);
                                            MEM[v49 + MEM[v47] + 32] = 0;
                                            revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v49);
                                        }
                                    }
                                } else {
                                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                    require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                    MCOPY(MEM[64], MEM[64] + 32, 0);
                                    MEM[MEM[64]] = 0;
                                    v50 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v5]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v50) {
                                        v51 = new uint256[](0);
                                        revert(6, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v51);
                                    }
                                }
                            } else {
                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                                v52 = v53 = 0;
                                if (1 - (msg.data[v5] >> 248)) {
                                    v54 = v55 = 2 == msg.data[v5] >> 248;
                                    if (v55) {
                                        v54 = !uint16(msg.data[v5 + 21] >> 48);
                                    }
                                    if (v54) {
                                        v52 = v56 = this.balance;
                                    }
                                } else {
                                    MEM[MEM[64] + 68] = uint256.max;
                                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v5 + 21] >> 96));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v57 = address(msg.data[v5 + 1] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v58 = v59 = 96;
                                    } else {
                                        v58 = v60 = MEM[64];
                                        MEM[v60] = RETURNDATASIZE();
                                        RETURNDATACOPY(v60 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v57) {
                                        v61 = new uint256[](MEM[v58]);
                                        MCOPY(v61.data, v58 + 32, MEM[v58]);
                                        MEM[v61 + MEM[v58] + 32] = 0;
                                        revert(address(msg.data[v5 + 1] >> 96), address(msg.data[v5 + 21] >> 96), uint256.max, v61);
                                    }
                                }
                                if (0 - uint16(msg.data[v5 + 21] >> 48)) {
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v62 = 0x283b(uint16(msg.data[v5 + 21] >> 64), uint16(msg.data[v5 + 21] >> 80), v5 + 47, (msg.data[v1 + 1] >> 240) + v5 - v5, v5);
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 + 47 <= uint16(msg.data[v5 + 21] >> 80) + (v5 + 47), Panic(17)); // arithmetic overflow or underflow
                                    v63 = uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47));
                                    require(uint16(msg.data[v5 + 21] >> 80) + (v5 + 47) <= v63, Panic(17)); // arithmetic overflow or underflow
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v5 + 47 <= uint16(msg.data[v5 + 21] >> 80) + (v5 + 47), Panic(17)); // arithmetic overflow or underflow
                                    require(uint16(msg.data[v5 + 21] >> 80) + (v5 + 47) <= uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)), Panic(17)); // arithmetic overflow or underflow
                                    v64 = uint16(msg.data[v5 + 21] >> 48) + (uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)));
                                    require(uint16(msg.data[v5 + 21] >> 64) + (uint16(msg.data[v5 + 21] >> 80) + (v5 + 47)) <= v64, Panic(17)); // arithmetic overflow or underflow
                                    require(v63 <= v64);
                                    require(v64 <= msg.data.length);
                                    MEM[36 + MEM[64]] = 64;
                                    MEM[36 + MEM[64] + 64] = 64;
                                    MEM[36 + MEM[64] + 64 + 64] = MEM[v62.word0];
                                    MCOPY(36 + MEM[64] + 64 + 64 + 32, v62.word0 + 32, MEM[v62.word0]);
                                    MEM[36 + MEM[64] + 64 + 64 + MEM[v62.word0] + 32] = 0;
                                    v65 = 36 + MEM[64] + 64 + 64 + (MEM[v62.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 64 + 32] = v65 - (36 + MEM[64] + 64);
                                    MEM[v65] = MEM[v62.word1];
                                    MCOPY(v65 + 32, v62.word1 + 32, MEM[v62.word1]);
                                    MEM[v65 + MEM[v62.word1] + 32] = 0;
                                    MEM[36 + MEM[64] + 32] = v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - (36 + MEM[64]);
                                    MEM[v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = v64 - v63;
                                    CALLDATACOPY(v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v63, v64 - v63);
                                    MEM[v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63) + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0xd33588400000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v65 + (MEM[v62.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v64 - v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v66 = address(msg.data[v5 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d76V0x2a11V0x1dc4V0x1142V0x3d1 + MEM[v117a0_0x0V0x1142V0x3d1.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v39b3V0x1dadV0x1142V0x3d1 - v39b3V0x1d80V0x1142V0x3d1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v52).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v67 = 96;
                                    } else {
                                        v67 = v68 = MEM[64];
                                        MEM[v68] = RETURNDATASIZE();
                                        RETURNDATACOPY(v68 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v66) {
                                        v69 = new uint256[](MEM[v67]);
                                        MCOPY(v69.data, v67 + 32, MEM[v67]);
                                        MEM[v69 + MEM[v67] + 32] = 0;
                                        revert(5, address(msg.data[v5 + 21] >> 96), v69);
                                    }
                                } else {
                                    require(47 <= v5 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v70 = 0x283b(uint16(msg.data[v5 + 21] >> 64), uint16(msg.data[v5 + 21] >> 80), v5 + 47, (msg.data[v1 + 1] >> 240) + v5 - v5, v5);
                                    MEM[36 + MEM[64]] = 32;
                                    MEM[36 + MEM[64] + 32] = 64;
                                    MEM[36 + MEM[64] + 32 + 64] = MEM[v70.word0];
                                    MCOPY(36 + MEM[64] + 32 + 64 + 32, v70.word0 + 32, MEM[v70.word0]);
                                    MEM[36 + MEM[64] + 32 + 64 + MEM[v70.word0] + 32] = 0;
                                    v71 = 36 + MEM[64] + 32 + 64 + (MEM[v70.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 32 + 32] = v71 - (36 + MEM[64] + 32);
                                    MEM[v71] = MEM[v70.word1];
                                    MCOPY(v71 + 32, v70.word1 + 32, MEM[v70.word1]);
                                    MEM[v71 + MEM[v70.word1] + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0x3f62192e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v71 + (MEM[v70.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v71 + (MEM[v70.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v72 = address(msg.data[v5 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d64V0x28feV0x1d46V0x1142V0x3d1 + MEM[v1177a_0x0V0x1142V0x3d1.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v52).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v73 = 96;
                                    } else {
                                        v73 = v74 = MEM[64];
                                        MEM[v74] = RETURNDATASIZE();
                                        RETURNDATACOPY(v74 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v72) {
                                        v75 = new uint256[](MEM[v73]);
                                        MCOPY(v75.data, v73 + 32, MEM[v73]);
                                        MEM[v75 + MEM[v73] + 32] = 0;
                                        revert(5, address(msg.data[v5 + 21] >> 96), v75);
                                    }
                                }
                            }
                        } else {
                            require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                            require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                            require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                            v76 = v77 = this;
                            if (msg.data[v5] >> 248 == 1) {
                                v78 = v79 = v5 + 77;
                                v76 = v80 = msg.data[57 + v5] >> 96;
                            } else {
                                v78 = v81 = v5 + 57;
                            }
                            require(v78 <= uint16(msg.data[v5] >> 216) + v78, Panic(17)); // arithmetic overflow or underflow
                            require(v78 <= uint16(msg.data[v5] >> 216) + v78);
                            require(uint16(msg.data[v5] >> 216) + v78 <= msg.data.length);
                            v82 = uint16(msg.data[v5] >> 216) + v78 - v78;
                            if (uint8(msg.data[v5] >> 240)) {
                                v83 = v84 = 0x1000276a4;
                            } else {
                                v83 = v85 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            }
                            if (uint8(msg.data[v5] >> 232)) {
                                MEM[36 + MEM[64]] = address(v76);
                                MEM[36 + MEM[64] + 32] = msg.data[v5 + 25];
                                MEM[36 + MEM[64] + 64] = bool(msg.data[v5] >> 240);
                                MEM[36 + MEM[64] + 96] = address(v83);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v82;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v78, v82);
                                MEM[36 + MEM[64] + 160 + v82 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v86 = address(msg.data[v5] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x3d1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v87 = 96;
                                } else {
                                    v87 = v88 = MEM[64];
                                    MEM[v88] = RETURNDATASIZE();
                                    RETURNDATACOPY(v88 + 32, 0, RETURNDATASIZE());
                                }
                            } else {
                                MEM[36 + MEM[64]] = address(v76);
                                MEM[36 + MEM[64] + 32] = bool(msg.data[v5] >> 240);
                                MEM[36 + MEM[64] + 64] = msg.data[v5 + 25];
                                MEM[36 + MEM[64] + 96] = address(v83);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v82;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v78, v82);
                                MEM[36 + MEM[64] + 160 + v82 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v86 = v89 = address(msg.data[v5] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x3d1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v87 = v90 = 96;
                                } else {
                                    v87 = v91 = MEM[64];
                                    MEM[v91] = RETURNDATASIZE();
                                    RETURNDATACOPY(v91 + 32, 0, RETURNDATASIZE());
                                }
                            }
                            if (!v86) {
                                v92 = new uint256[](4);
                                MEM[v92.data] = address(msg.data[v5] >> 56);
                                MEM[v92 + 64] = 96;
                                v93 = new uint256[](MEM[v87]);
                                MCOPY(v93.data, v87 + 32, MEM[v87]);
                                MEM[v93 + MEM[v87] + 32] = 0;
                                revert(v92, v94, v93);
                            }
                        }
                    } else {
                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                        require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                        require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                        v95 = v96 = msg.data[v5 + 24];
                        if (0 - uint16(msg.data[v5] >> 224)) {
                            require(56 <= uint16(msg.data[v5] >> 224) + 56, Panic(17)); // arithmetic overflow or underflow
                            require(56 <= uint16(msg.data[v5] >> 224) + 56);
                            require(uint16(msg.data[v5] >> 224) + 56 <= (msg.data[v1 + 1] >> 240) + v5 - v5);
                            if (uint8(msg.data[v5] >> 240)) {
                                v95 = v97 = 0;
                            } else {
                                v95 = 0;
                            }
                            MEM[36 + MEM[64]] = v95;
                            MEM[36 + MEM[64] + 32] = v95;
                            MEM[36 + MEM[64] + 64] = address(this);
                            MEM[36 + MEM[64] + 96] = 128;
                            MEM[36 + MEM[64] + 128] = uint16(msg.data[v5] >> 224) + 56 - 56;
                            CALLDATACOPY(36 + MEM[64] + 128 + 32, 56 + v5, uint16(msg.data[v5] >> 224) + 56 - 56);
                            MEM[36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56) + 32] = 0;
                            MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                            MEM[MEM[64] + (36 + MEM[64] + 128 + (uint16(msg.data[v5] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                            v98 = address(msg.data[v5] >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 128 + uint16(msg.data[v39b3V0x1063V0x3d1] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v99 = 96;
                            } else {
                                v99 = v100 = MEM[64];
                                MEM[v100] = RETURNDATASIZE();
                                RETURNDATACOPY(v100 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v98) {
                                v101 = new uint256[](MEM[v99]);
                                MCOPY(v101.data, v99 + 32, MEM[v99]);
                                MEM[v101 + MEM[v99] + 32] = 0;
                                revert(3, address(msg.data[v5] >> 64), v101);
                            }
                        } else {
                            if (!(msg.data[v5] >> 248)) {
                                v102 = v103 = this;
                            } else {
                                v102 = msg.data[v5 + 56] >> 96;
                            }
                            if (uint8(msg.data[v5] >> 240)) {
                                v95 = v104 = 0;
                            } else {
                                v95 = v105 = 0;
                            }
                            MEM[MEM[64] + 68] = v95;
                            MEM[MEM[64] + 100] = address(v102);
                            MEM[MEM[64] + 132] = 128;
                            MEM[MEM[64] + 164] = 0;
                            MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v95);
                            MCOPY(MEM[64], MEM[64] + 32, 164);
                            MEM[MEM[64] + 164] = 0;
                            v106 = address(msg.data[v5] >> 64).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v107 = 96;
                            } else {
                                v107 = v108 = MEM[64];
                                MEM[v108] = RETURNDATASIZE();
                                RETURNDATACOPY(v108 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v106) {
                                v109 = new uint256[](MEM[v107]);
                                MCOPY(v109.data, v107 + 32, MEM[v107]);
                                MEM[v109 + MEM[v107] + 32] = 0;
                                revert(3, address(msg.data[v5] >> 64), v109);
                            }
                        }
                    }
                } else {
                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                    require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                    require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                    0x166f(msg.data[v5], block.coinbase);
                }
            } else {
                require(v5 <= (msg.data[v1 + 1] >> 240) + v5, Panic(17)); // arithmetic overflow or underflow
                require(v5 <= (msg.data[v1 + 1] >> 240) + v5);
                require((msg.data[v1 + 1] >> 240) + v5 <= msg.data.length);
                if (msg.data[v5] >> 96) {
                    MEM[MEM[64] + 68] = msg.data[v5 + 40];
                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v5 + 20] >> 96));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v110 = address(msg.data[v5] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v111 = 96;
                    } else {
                        v111 = v112 = MEM[64];
                        MEM[v112] = RETURNDATASIZE();
                        RETURNDATACOPY(v112 + 32, 0, RETURNDATASIZE());
                    }
                    if (!v110) {
                        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v113, /* uint256 */ v114, /* uint256 */ v115 = address(msg.data[v5] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v116 = v117 = 96;
                        } else {
                            v116 = v118 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v118.data, 0, RETURNDATASIZE());
                        }
                        require(v113, address(msg.data[v5] >> 96), address(this));
                        require(v115 + MEM[v116] - v115 >= 32);
                        v119 = MEM[v115];
                        if (0) {
                            require(0 - v119, address(msg.data[v5] >> 96), address(this));
                            require(v119, Panic(17)); // arithmetic overflow or underflow
                            v119 = v120 = uint256.max + v119;
                        }
                        v121 = new uint256[](MEM[v111]);
                        MCOPY(v121.data, v111 + 32, MEM[v111]);
                        MEM[v121 + MEM[v111] + 32] = 0;
                        revert(address(msg.data[v5] >> 96), address(msg.data[v5 + 20] >> 96), msg.data[v5 + 40], v119, v121);
                    }
                } else {
                    0x166f(msg.data[v5 + 40], msg.data[v5 + 20] >> 96);
                }
            }
            v1 = (msg.data[v1 + 1] >> 240) + v5;
            require(v5 <= v1, Panic(17)); // arithmetic overflow or underflow
        } else {
            v122 = _SafeSub(27, 4);
            require(v1 <= v122 + v1, Panic(17)); // arithmetic overflow or underflow
            require(v122 + v1 <= (msg.data[v1 + 1] >> 240) + (v122 + v1), Panic(17)); // arithmetic overflow or underflow
            require(v122 + v1 <= (msg.data[v1 + 1] >> 240) + (v122 + v1));
            require((msg.data[v1 + 1] >> 240) + (v122 + v1) <= msg.data.length);
            CALLDATACOPY(MEM[64], v122 + v1, (msg.data[v1 + 1] >> 240) + (v122 + v1) - (v122 + v1));
            MEM[(msg.data[v1 + 1] >> 240) + (v122 + v1) - (v122 + v1) + MEM[64]] = 0;
            v123 = address(msg.data[v1 + 3] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + msg.data[v39b3V0x1233V0x3d1 + 1] >> 240 + vf91_0x0V0x3d1 + v39b3V0x1233V0x3d1 - vf91_0x0V0x3d1 + v39b3V0x1233V0x3d1 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v124 = v125 = 96;
            } else {
                v124 = v126 = MEM[64];
                MEM[v126] = RETURNDATASIZE();
                RETURNDATACOPY(v126 + 32, 0, RETURNDATASIZE());
            }
            if (v123) {
                v1 = (msg.data[v1 + 1] >> 240) + (v122 + v1);
                require(v122 + v1 <= v1, Panic(17)); // arithmetic overflow or underflow
            } else {
                v127 = new uint256[](MEM[v124]);
                MCOPY(v127.data, v124 + 32, MEM[v124]);
                MEM[v127 + MEM[v124] + 32] = 0;
                revert(address(msg.data[v1 + 3] >> 96), v127);
            }
        }
        v3 += 1;
    }
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3bab(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x517(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    0x392(varg0, varg1);
    return ;
}

function 0x52d(uint256 varg0, uint256 varg1) private { 
    v0 = 0xd24(msg.sender);
    require(v0, CallerNotOperator());
    require(block.blockhash(block.number - 1) >> 224 == msg.data[varg1] >> 224);
    v1 = msg.data[varg1 + 10];
    require(42 <= varg0);
    require(varg0 <= varg0);
    v2 = v3 = 42 + varg1 + 1;
    v4 = v5 = 0;
    while (v4 < msg.data[42 + varg1] >> 248) {
        if (msg.data[v2] >> 248) {
            v6 = 3 + v2;
            require(v2 <= v6, Panic(17)); // arithmetic overflow or underflow
            if ((msg.data[v2] >> 248) - 1) {
                if ((msg.data[v2] >> 248) - 2) {
                    if ((msg.data[v2] >> 248) - 3) {
                        if ((msg.data[v2] >> 248) - 4) {
                            if ((msg.data[v2] >> 248) - 5) {
                                if ((msg.data[v2] >> 248) - 6) {
                                    if ((msg.data[v2] >> 248) - 7) {
                                        if ((msg.data[v2] >> 248) - 8) {
                                            if ((msg.data[v2] >> 248) - 9) {
                                                require(msg.data[v2] >> 248 >= 100, msg.data[v2] >> 248);
                                                require(v6 <= msg.data.length);
                                                require(msg.data.length <= msg.data.length);
                                                if ((msg.data[v2] >> 248) - 100) {
                                                    require(!((msg.data[v2] >> 248) - 200), msg.data[v2] >> 248);
                                                    require(52 <= msg.data.length - v6);
                                                    require(msg.data.length - v6 <= msg.data.length - v6);
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = address(msg.data[v6 + 32] >> 96);
                                                    MEM[36 + MEM[64] + 64] = msg.data[v6];
                                                    MEM[36 + MEM[64] + 96] = 160;
                                                    MEM[36 + MEM[64] + 160] = msg.data.length - v6 - 52;
                                                    CALLDATACOPY(36 + MEM[64] + 160 + 32, 52 + v6, msg.data.length - v6 - 52);
                                                    MEM[36 + MEM[64] + 160 + (msg.data.length - v6 - 52) + 32] = 0;
                                                    MEM[36 + MEM[64] + 128] = uint16(0);
                                                    MEM[MEM[64] + 32] = bytes4(0x42b0b77c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (msg.data.length - v6 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (36 + MEM[64] + 160 + (msg.data.length - v6 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v7 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + msg.data.length - v39b3V0x1063V0x1119b - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v8 = v9 = 96;
                                                    } else {
                                                        v8 = v10 = MEM[64];
                                                        MEM[v10] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v10 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v7) {
                                                        v11 = new uint256[](MEM[v8]);
                                                        MCOPY(v11.data, v8 + 32, MEM[v8]);
                                                        MEM[v11 + MEM[v8] + 32] = 0;
                                                        revert(msg.data[v6], v11);
                                                    }
                                                } else {
                                                    require(52 <= msg.data.length - v6);
                                                    require(msg.data.length - v6 <= msg.data.length - v6);
                                                    v12 = new uint256[](1);
                                                    CALLDATACOPY(v12.data, msg.data.length, 32);
                                                    require(0 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v13 = v12.data;
                                                    v12[0] = address(msg.data[v6 + 32] >> 96);
                                                    v14 = new uint256[](1);
                                                    CALLDATACOPY(v14.data, msg.data.length, 32);
                                                    require(0 < v14.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                    v15 = v14.data;
                                                    v14[0] = msg.data[v6];
                                                    MEM[36 + MEM[64]] = address(this);
                                                    MEM[36 + MEM[64] + 32] = 128;
                                                    MEM[36 + MEM[64] + 128] = v12.length;
                                                    v16 = v17 = 36 + MEM[64] + 160;
                                                    v18 = v19 = v12.data;
                                                    v20 = v21 = 0;
                                                    while (v20 < v12.length) {
                                                        MEM[v16] = address(MEM[v18]);
                                                        v18 += 32;
                                                        v16 = v16 + 32;
                                                        v20 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 64] = v16 - (36 + MEM[64]);
                                                    MEM[v16] = v14.length;
                                                    v22 = v23 = 32 + v16;
                                                    v24 = v25 = v14.data;
                                                    v26 = v27 = 0;
                                                    while (v26 < v14.length) {
                                                        MEM[v22] = MEM[v24];
                                                        v22 += 32;
                                                        v24 = v24 + 32;
                                                        v26 += 1;
                                                    }
                                                    MEM[36 + MEM[64] + 96] = v22 - (36 + MEM[64]);
                                                    MEM[v22] = msg.data.length - v6 - 52;
                                                    CALLDATACOPY(v22 + 32, 52 + v6, msg.data.length - v6 - 52);
                                                    MEM[v22 + (msg.data.length - v6 - 52) + 32] = 0;
                                                    MEM[MEM[64] + 32] = bytes4(0x5c38449e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                    MCOPY(MEM[64], MEM[64] + 32, v22 + (msg.data.length - v6 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                    MEM[MEM[64] + (v22 + (msg.data.length - v6 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                    v28 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + MEM[64] + v3e15_0x4V0x2d79V0x1f7eV0x11f8V0x1119b + msg.data.length - v39b3V0x1063V0x1119b - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v29 = v30 = 96;
                                                    } else {
                                                        v29 = v31 = MEM[64];
                                                        MEM[v31] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v31 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v28) {
                                                        v32 = new uint256[](MEM[v29]);
                                                        MCOPY(v32.data, v29 + 32, MEM[v29]);
                                                        MEM[v32 + MEM[v29] + 32] = 0;
                                                        revert(msg.data[v6], v32);
                                                    }
                                                }
                                            } else {
                                                require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                                                require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                                                require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                                                v33 = v34 = 0;
                                                if (msg.data[v6] >> 248) {
                                                    v35 = 0x182e(0, this, 0x4444c5dc75cb358380d2e3de08a90);
                                                    v33 = 0x3bab(v35);
                                                }
                                                v36 = new bytes[](4);
                                                MEM[v36.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v36.data]);
                                                MCOPY(MEM[64], v36.data, v36.length);
                                                MEM[MEM[64] + v36.length] = 0;
                                                v37 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(v33).gas(msg.gas);
                                                if (RETURNDATASIZE() == 0) {
                                                    v38 = v39 = 96;
                                                } else {
                                                    v38 = v40 = MEM[64];
                                                    MEM[v40] = RETURNDATASIZE();
                                                    RETURNDATACOPY(v40 + 32, 0, RETURNDATASIZE());
                                                }
                                                if (!v37) {
                                                    v41 = new uint256[](MEM[v38]);
                                                    MCOPY(v41.data, v38 + 32, MEM[v38]);
                                                    MEM[v41 + MEM[v38] + 32] = 0;
                                                    revert(v41);
                                                }
                                            }
                                        } else {
                                            require(v6 <= msg.data.length);
                                            require(msg.data.length <= msg.data.length);
                                            MEM[36 + MEM[64]] = 32;
                                            MEM[36 + MEM[64] + 32] = msg.data.length - v6;
                                            CALLDATACOPY(36 + MEM[64] + 32 + 32, v6, msg.data.length - v6);
                                            MEM[36 + MEM[64] + 32 + (msg.data.length - v6) + 32] = 0;
                                            MEM[MEM[64] + 32] = bytes4(0x48c8949100000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 32 + (msg.data.length - v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                            MEM[MEM[64] + (36 + MEM[64] + 32 + (msg.data.length - v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                            v42 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 32 + msg.data.length - v39b3V0x1063V0x1119b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (RETURNDATASIZE() == 0) {
                                                v43 = v44 = 96;
                                            } else {
                                                v43 = v45 = MEM[64];
                                                MEM[v45] = RETURNDATASIZE();
                                                RETURNDATACOPY(v45 + 32, 0, RETURNDATASIZE());
                                            }
                                            if (!v42) {
                                                v46 = new uint256[](MEM[v43]);
                                                MCOPY(v46.data, v43 + 32, MEM[v43]);
                                                MEM[v46 + MEM[v43] + 32] = 0;
                                                revert(v46);
                                            }
                                        }
                                    } else {
                                        require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                                        require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                                        require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                                        MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(msg.data[v6]);
                                        MCOPY(MEM[64], MEM[64] + 32, 36);
                                        MEM[MEM[64] + 36] = 0;
                                        v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v48 = 96;
                                        } else {
                                            v48 = v49 = MEM[64];
                                            MEM[v49] = RETURNDATASIZE();
                                            RETURNDATACOPY(v49 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v47) {
                                            v50 = new uint256[](MEM[v48]);
                                            MCOPY(v50.data, v48 + 32, MEM[v48]);
                                            MEM[v50 + MEM[v48] + 32] = 0;
                                            revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v50);
                                        }
                                    }
                                } else {
                                    require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                                    require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                                    require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                                    MCOPY(MEM[64], MEM[64] + 32, 0);
                                    MEM[MEM[64]] = 0;
                                    v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v6]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v51) {
                                        v52 = new uint256[](0);
                                        revert(6, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v52);
                                    }
                                }
                            } else {
                                require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                                require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                                require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                                v53 = v54 = 0;
                                if (1 - (msg.data[v6] >> 248)) {
                                    v55 = v56 = 2 == msg.data[v6] >> 248;
                                    if (v56) {
                                        v55 = !uint16(msg.data[v6 + 21] >> 48);
                                    }
                                    if (v55) {
                                        v53 = v57 = this.balance;
                                    }
                                } else {
                                    MEM[MEM[64] + 68] = uint256.max;
                                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v6 + 21] >> 96));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v58 = address(msg.data[v6 + 1] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v59 = v60 = 96;
                                    } else {
                                        v59 = v61 = MEM[64];
                                        MEM[v61] = RETURNDATASIZE();
                                        RETURNDATACOPY(v61 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v58) {
                                        v62 = new uint256[](MEM[v59]);
                                        MCOPY(v62.data, v59 + 32, MEM[v59]);
                                        MEM[v62 + MEM[v59] + 32] = 0;
                                        revert(address(msg.data[v6 + 1] >> 96), address(msg.data[v6 + 21] >> 96), uint256.max, v62);
                                    }
                                }
                                if (0 - uint16(msg.data[v6 + 21] >> 48)) {
                                    require(47 <= v6 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v63 = 0x283b(uint16(msg.data[v6 + 21] >> 64), uint16(msg.data[v6 + 21] >> 80), v6 + 47, (msg.data[v2 + 1] >> 240) + v6 - v6, v6);
                                    require(47 <= v6 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v6 + 47 <= uint16(msg.data[v6 + 21] >> 80) + (v6 + 47), Panic(17)); // arithmetic overflow or underflow
                                    v64 = uint16(msg.data[v6 + 21] >> 64) + (uint16(msg.data[v6 + 21] >> 80) + (v6 + 47));
                                    require(uint16(msg.data[v6 + 21] >> 80) + (v6 + 47) <= v64, Panic(17)); // arithmetic overflow or underflow
                                    require(47 <= v6 + 47, Panic(17)); // arithmetic overflow or underflow
                                    require(v6 + 47 <= uint16(msg.data[v6 + 21] >> 80) + (v6 + 47), Panic(17)); // arithmetic overflow or underflow
                                    require(uint16(msg.data[v6 + 21] >> 80) + (v6 + 47) <= uint16(msg.data[v6 + 21] >> 64) + (uint16(msg.data[v6 + 21] >> 80) + (v6 + 47)), Panic(17)); // arithmetic overflow or underflow
                                    v65 = uint16(msg.data[v6 + 21] >> 48) + (uint16(msg.data[v6 + 21] >> 64) + (uint16(msg.data[v6 + 21] >> 80) + (v6 + 47)));
                                    require(uint16(msg.data[v6 + 21] >> 64) + (uint16(msg.data[v6 + 21] >> 80) + (v6 + 47)) <= v65, Panic(17)); // arithmetic overflow or underflow
                                    require(v64 <= v65);
                                    require(v65 <= msg.data.length);
                                    MEM[36 + MEM[64]] = 64;
                                    MEM[36 + MEM[64] + 64] = 64;
                                    MEM[36 + MEM[64] + 64 + 64] = MEM[v63.word0];
                                    MCOPY(36 + MEM[64] + 64 + 64 + 32, v63.word0 + 32, MEM[v63.word0]);
                                    MEM[36 + MEM[64] + 64 + 64 + MEM[v63.word0] + 32] = 0;
                                    v66 = 36 + MEM[64] + 64 + 64 + (MEM[v63.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 64 + 32] = v66 - (36 + MEM[64] + 64);
                                    MEM[v66] = MEM[v63.word1];
                                    MCOPY(v66 + 32, v63.word1 + 32, MEM[v63.word1]);
                                    MEM[v66 + MEM[v63.word1] + 32] = 0;
                                    MEM[36 + MEM[64] + 32] = v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - (36 + MEM[64]);
                                    MEM[v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = v65 - v64;
                                    CALLDATACOPY(v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v64, v65 - v64);
                                    MEM[v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v65 - v64) + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0xd33588400000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v65 - v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v66 + (MEM[v63.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v65 - v64 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v67 = address(msg.data[v6 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d76V0x2a11V0x1dc4V0x1142V0x1119b + MEM[v117a0_0x0V0x1142V0x1119b.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v39b3V0x1dadV0x1142V0x1119b - v39b3V0x1d80V0x1142V0x1119b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v53).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v68 = 96;
                                    } else {
                                        v68 = v69 = MEM[64];
                                        MEM[v69] = RETURNDATASIZE();
                                        RETURNDATACOPY(v69 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v67) {
                                        v70 = new uint256[](MEM[v68]);
                                        MCOPY(v70.data, v68 + 32, MEM[v68]);
                                        MEM[v70 + MEM[v68] + 32] = 0;
                                        revert(5, address(msg.data[v6 + 21] >> 96), v70);
                                    }
                                } else {
                                    require(47 <= v6 + 47, Panic(17)); // arithmetic overflow or underflow
                                    v71 = 0x283b(uint16(msg.data[v6 + 21] >> 64), uint16(msg.data[v6 + 21] >> 80), v6 + 47, (msg.data[v2 + 1] >> 240) + v6 - v6, v6);
                                    MEM[36 + MEM[64]] = 32;
                                    MEM[36 + MEM[64] + 32] = 64;
                                    MEM[36 + MEM[64] + 32 + 64] = MEM[v71.word0];
                                    MCOPY(36 + MEM[64] + 32 + 64 + 32, v71.word0 + 32, MEM[v71.word0]);
                                    MEM[36 + MEM[64] + 32 + 64 + MEM[v71.word0] + 32] = 0;
                                    v72 = 36 + MEM[64] + 32 + 64 + (MEM[v71.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                    MEM[36 + MEM[64] + 32 + 32] = v72 - (36 + MEM[64] + 32);
                                    MEM[v72] = MEM[v71.word1];
                                    MCOPY(v72 + 32, v71.word1 + 32, MEM[v71.word1]);
                                    MEM[v72 + MEM[v71.word1] + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0x3f62192e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, v72 + (MEM[v71.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (v72 + (MEM[v71.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v73 = address(msg.data[v6 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d64V0x28feV0x1d46V0x1142V0x1119b + MEM[v1177a_0x0V0x1142V0x1119b.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v53).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v74 = 96;
                                    } else {
                                        v74 = v75 = MEM[64];
                                        MEM[v75] = RETURNDATASIZE();
                                        RETURNDATACOPY(v75 + 32, 0, RETURNDATASIZE());
                                    }
                                    if (!v73) {
                                        v76 = new uint256[](MEM[v74]);
                                        MCOPY(v76.data, v74 + 32, MEM[v74]);
                                        MEM[v76 + MEM[v74] + 32] = 0;
                                        revert(5, address(msg.data[v6 + 21] >> 96), v76);
                                    }
                                }
                            }
                        } else {
                            require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                            require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                            require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                            v77 = v78 = this;
                            if (msg.data[v6] >> 248 == 1) {
                                v79 = v80 = v6 + 77;
                                v77 = v81 = msg.data[57 + v6] >> 96;
                            } else {
                                v79 = v82 = v6 + 57;
                            }
                            require(v79 <= uint16(msg.data[v6] >> 216) + v79, Panic(17)); // arithmetic overflow or underflow
                            require(v79 <= uint16(msg.data[v6] >> 216) + v79);
                            require(uint16(msg.data[v6] >> 216) + v79 <= msg.data.length);
                            v83 = uint16(msg.data[v6] >> 216) + v79 - v79;
                            if (uint8(msg.data[v6] >> 240)) {
                                v84 = v85 = 0x1000276a4;
                            } else {
                                v84 = v86 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            }
                            if (uint8(msg.data[v6] >> 232)) {
                                MEM[36 + MEM[64]] = address(v77);
                                MEM[36 + MEM[64] + 32] = msg.data[v6 + 25];
                                MEM[36 + MEM[64] + 64] = bool(msg.data[v6] >> 240);
                                MEM[36 + MEM[64] + 96] = address(v84);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v83;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v79, v83);
                                MEM[36 + MEM[64] + 160 + v83 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v87 = address(msg.data[v6] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x1119b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v88 = 96;
                                } else {
                                    v88 = v89 = MEM[64];
                                    MEM[v89] = RETURNDATASIZE();
                                    RETURNDATACOPY(v89 + 32, 0, RETURNDATASIZE());
                                }
                            } else {
                                MEM[36 + MEM[64]] = address(v77);
                                MEM[36 + MEM[64] + 32] = bool(msg.data[v6] >> 240);
                                MEM[36 + MEM[64] + 64] = msg.data[v6 + 25];
                                MEM[36 + MEM[64] + 96] = address(v84);
                                MEM[36 + MEM[64] + 128] = 160;
                                MEM[36 + MEM[64] + 160] = v83;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v79, v83);
                                MEM[36 + MEM[64] + 160 + v83 + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v87 = v90 = address(msg.data[v6] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x1119b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v88 = v91 = 96;
                                } else {
                                    v88 = v92 = MEM[64];
                                    MEM[v92] = RETURNDATASIZE();
                                    RETURNDATACOPY(v92 + 32, 0, RETURNDATASIZE());
                                }
                            }
                            if (!v87) {
                                v93 = new uint256[](4);
                                MEM[v93.data] = address(msg.data[v6] >> 56);
                                MEM[v93 + 64] = 96;
                                v94 = new uint256[](MEM[v88]);
                                MCOPY(v94.data, v88 + 32, MEM[v88]);
                                MEM[v94 + MEM[v88] + 32] = 0;
                                revert(v93, v95, v94);
                            }
                        }
                    } else {
                        require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                        require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                        require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                        v96 = v97 = msg.data[v6 + 24];
                        if (0 - uint16(msg.data[v6] >> 224)) {
                            require(56 <= uint16(msg.data[v6] >> 224) + 56, Panic(17)); // arithmetic overflow or underflow
                            require(56 <= uint16(msg.data[v6] >> 224) + 56);
                            require(uint16(msg.data[v6] >> 224) + 56 <= (msg.data[v2 + 1] >> 240) + v6 - v6);
                            if (uint8(msg.data[v6] >> 240)) {
                                v96 = v98 = 0;
                            } else {
                                v96 = 0;
                            }
                            MEM[36 + MEM[64]] = v96;
                            MEM[36 + MEM[64] + 32] = v96;
                            MEM[36 + MEM[64] + 64] = address(this);
                            MEM[36 + MEM[64] + 96] = 128;
                            MEM[36 + MEM[64] + 128] = uint16(msg.data[v6] >> 224) + 56 - 56;
                            CALLDATACOPY(36 + MEM[64] + 128 + 32, 56 + v6, uint16(msg.data[v6] >> 224) + 56 - 56);
                            MEM[36 + MEM[64] + 128 + (uint16(msg.data[v6] >> 224) + 56 - 56) + 32] = 0;
                            MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                            MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 128 + (uint16(msg.data[v6] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                            MEM[MEM[64] + (36 + MEM[64] + 128 + (uint16(msg.data[v6] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                            v99 = address(msg.data[v6] >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 128 + uint16(msg.data[v39b3V0x1063V0x1119b] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v100 = 96;
                            } else {
                                v100 = v101 = MEM[64];
                                MEM[v101] = RETURNDATASIZE();
                                RETURNDATACOPY(v101 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v99) {
                                v102 = new uint256[](MEM[v100]);
                                MCOPY(v102.data, v100 + 32, MEM[v100]);
                                MEM[v102 + MEM[v100] + 32] = 0;
                                revert(3, address(msg.data[v6] >> 64), v102);
                            }
                        } else {
                            if (!(msg.data[v6] >> 248)) {
                                v103 = v104 = this;
                            } else {
                                v103 = msg.data[v6 + 56] >> 96;
                            }
                            if (uint8(msg.data[v6] >> 240)) {
                                v96 = v105 = 0;
                            } else {
                                v96 = v106 = 0;
                            }
                            MEM[MEM[64] + 68] = v96;
                            MEM[MEM[64] + 100] = address(v103);
                            MEM[MEM[64] + 132] = 128;
                            MEM[MEM[64] + 164] = 0;
                            MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v96);
                            MCOPY(MEM[64], MEM[64] + 32, 164);
                            MEM[MEM[64] + 164] = 0;
                            v107 = address(msg.data[v6] >> 64).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v108 = 96;
                            } else {
                                v108 = v109 = MEM[64];
                                MEM[v109] = RETURNDATASIZE();
                                RETURNDATACOPY(v109 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v107) {
                                v110 = new uint256[](MEM[v108]);
                                MCOPY(v110.data, v108 + 32, MEM[v108]);
                                MEM[v110 + MEM[v108] + 32] = 0;
                                revert(3, address(msg.data[v6] >> 64), v110);
                            }
                        }
                    }
                } else {
                    require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                    require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                    require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                    0x166f(msg.data[v6], block.coinbase);
                }
            } else {
                require(v6 <= (msg.data[v2 + 1] >> 240) + v6, Panic(17)); // arithmetic overflow or underflow
                require(v6 <= (msg.data[v2 + 1] >> 240) + v6);
                require((msg.data[v2 + 1] >> 240) + v6 <= msg.data.length);
                if (msg.data[v6] >> 96) {
                    MEM[MEM[64] + 68] = msg.data[v6 + 40];
                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v6 + 20] >> 96));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v111 = address(msg.data[v6] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v112 = 96;
                    } else {
                        v112 = v113 = MEM[64];
                        MEM[v113] = RETURNDATASIZE();
                        RETURNDATACOPY(v113 + 32, 0, RETURNDATASIZE());
                    }
                    if (!v111) {
                        MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                        MCOPY(MEM[64], MEM[64] + 32, 36);
                        MEM[MEM[64] + 36] = 0;
                        v114, /* uint256 */ v115, /* uint256 */ v116 = address(msg.data[v6] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v117 = v118 = 96;
                        } else {
                            v117 = v119 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v119.data, 0, RETURNDATASIZE());
                        }
                        require(v114, address(msg.data[v6] >> 96), address(this));
                        require(v116 + MEM[v117] - v116 >= 32);
                        v120 = MEM[v116];
                        if (0) {
                            require(0 - v120, address(msg.data[v6] >> 96), address(this));
                            require(v120, Panic(17)); // arithmetic overflow or underflow
                            v120 = v121 = uint256.max + v120;
                        }
                        v122 = new uint256[](MEM[v112]);
                        MCOPY(v122.data, v112 + 32, MEM[v112]);
                        MEM[v122 + MEM[v112] + 32] = 0;
                        revert(address(msg.data[v6] >> 96), address(msg.data[v6 + 20] >> 96), msg.data[v6 + 40], v120, v122);
                    }
                } else {
                    0x166f(msg.data[v6 + 40], msg.data[v6 + 20] >> 96);
                }
            }
            v2 = (msg.data[v2 + 1] >> 240) + v6;
            require(v6 <= v2, Panic(17)); // arithmetic overflow or underflow
        } else {
            v123 = _SafeSub(27, 4);
            require(v2 <= v123 + v2, Panic(17)); // arithmetic overflow or underflow
            require(v123 + v2 <= (msg.data[v2 + 1] >> 240) + (v123 + v2), Panic(17)); // arithmetic overflow or underflow
            require(v123 + v2 <= (msg.data[v2 + 1] >> 240) + (v123 + v2));
            require((msg.data[v2 + 1] >> 240) + (v123 + v2) <= msg.data.length);
            CALLDATACOPY(MEM[64], v123 + v2, (msg.data[v2 + 1] >> 240) + (v123 + v2) - (v123 + v2));
            MEM[(msg.data[v2 + 1] >> 240) + (v123 + v2) - (v123 + v2) + MEM[64]] = 0;
            v124 = address(msg.data[v2 + 3] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + msg.data[v39b3V0x1233V0x1119b + 1] >> 240 + vf91_0x0V0x1119b + v39b3V0x1233V0x1119b - vf91_0x0V0x1119b + v39b3V0x1233V0x1119b + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v125 = v126 = 96;
            } else {
                v125 = v127 = MEM[64];
                MEM[v127] = RETURNDATASIZE();
                RETURNDATACOPY(v127 + 32, 0, RETURNDATASIZE());
            }
            if (v124) {
                v2 = (msg.data[v2 + 1] >> 240) + (v123 + v2);
                require(v123 + v2 <= v2, Panic(17)); // arithmetic overflow or underflow
            } else {
                v128 = new uint256[](MEM[v125]);
                MCOPY(v128.data, v125 + 32, MEM[v125]);
                MEM[v128 + MEM[v125] + 32] = 0;
                revert(address(msg.data[v2 + 3] >> 96), v128);
            }
        }
        v4 += 1;
    }
    v129 = 0x124a(uint8(msg.data[varg1] >> 192));
    if (0 - uint16(msg.data[varg1] >> 200)) {
        v130 = _SafeMul(v1, uint16(msg.data[varg1] >> 200));
        v131 = _SafeDiv(v130, 10000);
        if (address(v129) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e) {
            v132 = _SafeSub(v1, v131);
            MEM[MEM[64] + 68] = v132;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v133, /* uint256 */ v134, /* uint256 */ v135 = address(v129).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v136 = 96;
            } else {
                v136 = v137 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v137.data, 0, RETURNDATASIZE());
            }
            if (v133) {
                v138 = 0x175d(v131, v129);
                MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(v138);
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v139, /* uint256 */ v140, /* uint256 */ v141 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v142 = 96;
                } else {
                    v142 = v143 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v143.data, 0, RETURNDATASIZE());
                }
                if (v139) {
                    v144 = 0x655(block.coinbase, 1742);
                } else {
                    v145 = new uint256[](MEM[v142]);
                    MCOPY(v145.data, v141, MEM[v142]);
                    MEM[v145 + MEM[v142] + 32] = 0;
                    revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v145);
                }
            } else {
                MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MCOPY(MEM[64], MEM[64] + 32, 36);
                MEM[MEM[64] + 36] = 0;
                v146, /* uint256 */ v147, /* uint256 */ v148 = address(v129).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v149 = v150 = 96;
                } else {
                    v149 = v151 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v151.data, 0, RETURNDATASIZE());
                }
                require(v146, address(v129), address(this));
                require(v148 + MEM[v149] - v148 >= 32);
                v152 = MEM[v148];
                if (0) {
                    require(0 - v152, address(v129), address(this));
                    require(v152, Panic(17)); // arithmetic overflow or underflow
                    v152 = v153 = uint256.max + v152;
                }
                v154 = new uint256[](MEM[v136]);
                MCOPY(v154.data, v135, MEM[v136]);
                MEM[v154 + MEM[v136] + 32] = 0;
                revert(address(v129), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), v132, v152, v154);
            }
        } else {
            MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(v1);
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v155, /* uint256 */ v156, /* uint256 */ v157 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v158 = 96;
            } else {
                v158 = v159 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v159.data, 0, RETURNDATASIZE());
            }
            if (v155) {
                v160 = 0x655(block.coinbase, 1627);
                v161 = _SafeSub(v1, v160);
                0x166f(v161, 0xa0d5a274f95decb536bbbaa922d6d0fb692a627d);
            } else {
                v162 = new uint256[](MEM[v158]);
                MCOPY(v162.data, v157, MEM[v158]);
                MEM[v162 + MEM[v158] + 32] = 0;
                revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v162);
            }
        }
        return ;
    } else {
        MEM[MEM[64] + 68] = v1;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v163, /* uint256 */ v164, /* uint256 */ v165 = address(v129).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v166 = 96;
        } else {
            v166 = v167 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v167.data, 0, RETURNDATASIZE());
        }
        if (v163) {
            return ;
        } else {
            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v168, /* uint256 */ v169, /* uint256 */ v170 = address(v129).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v171 = v172 = 96;
            } else {
                v171 = v173 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v173.data, 0, RETURNDATASIZE());
            }
            require(v168, address(v129), address(this));
            require(v170 + MEM[v171] - v170 >= 32);
            v174 = MEM[v170];
            if (0) {
                require(0 - v174, address(v129), address(this));
                require(v174, Panic(17)); // arithmetic overflow or underflow
                v174 = v175 = uint256.max + v174;
            }
            v176 = new uint256[](MEM[v166]);
            MCOPY(v176.data, v165, MEM[v166]);
            MEM[v176 + MEM[v166] + 32] = 0;
            revert(address(v129), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), v1, v174, v176);
        }
    }
}

function 0x655(address varg0, uint256 varg1) private { 
    require(0 - v0, ZeroValue());
    MCOPY(MEM[64], MEM[64] + 32, 0);
    MEM[MEM[64]] = 0;
    v1, /* uint256 */ v2 = varg0.call().value(v0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v3 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
    }
    require(v1, varg0, v0);
    return v0;
}

function 0x943(uint256 varg0, uint256 varg1) private { 
    v0 = 0xd24(msg.sender);
    require(v0, CallerNotOperator());
    require(block.blockhash(block.number - 1) >> 224 == msg.data[varg1] >> 224);
    MEM[64] += 160;
    CALLDATACOPY(MEM[64], msg.data.length, 160);
    MEM[64] += 160;
    CALLDATACOPY(MEM[64], msg.data.length, 160);
    v1 = v2 = 5;
    v3 = v4 = 0;
    while (v3 < msg.data[varg1] << 32 >> 248) {
        v5 = uint8(msg.data[varg1 + v1] >> 232);
        require(v1 + 37 <= uint16(msg.data[varg1 + v1] >> 216) + (v1 + 37), Panic(17)); // arithmetic overflow or underflow
        require(v1 + 37 <= uint16(msg.data[varg1 + v1] >> 216) + (v1 + 37));
        require(uint16(msg.data[varg1 + v1] >> 216) + (v1 + 37) <= varg0);
        v6 = v7 = v1 + 37 + varg1 + 1;
        v8 = v9 = 0;
        while (v8 < msg.data[v1 + 37 + varg1] >> 248) {
            if (msg.data[v6] >> 248) {
                v10 = 3 + v6;
                require(v6 <= v10, Panic(17)); // arithmetic overflow or underflow
                if ((msg.data[v6] >> 248) - 1) {
                    if ((msg.data[v6] >> 248) - 2) {
                        if ((msg.data[v6] >> 248) - 3) {
                            if ((msg.data[v6] >> 248) - 4) {
                                if ((msg.data[v6] >> 248) - 5) {
                                    if ((msg.data[v6] >> 248) - 6) {
                                        if ((msg.data[v6] >> 248) - 7) {
                                            if ((msg.data[v6] >> 248) - 8) {
                                                if ((msg.data[v6] >> 248) - 9) {
                                                    require(msg.data[v6] >> 248 >= 100, msg.data[v6] >> 248);
                                                    require(v10 <= msg.data.length);
                                                    require(msg.data.length <= msg.data.length);
                                                    if ((msg.data[v6] >> 248) - 100) {
                                                        require(!((msg.data[v6] >> 248) - 200), msg.data[v6] >> 248);
                                                        require(52 <= msg.data.length - v10);
                                                        require(msg.data.length - v10 <= msg.data.length - v10);
                                                        MEM[36 + MEM[64]] = address(this);
                                                        MEM[36 + MEM[64] + 32] = address(msg.data[v10 + 32] >> 96);
                                                        MEM[36 + MEM[64] + 64] = msg.data[v10];
                                                        MEM[36 + MEM[64] + 96] = 160;
                                                        MEM[36 + MEM[64] + 160] = msg.data.length - v10 - 52;
                                                        CALLDATACOPY(36 + MEM[64] + 160 + 32, 52 + v10, msg.data.length - v10 - 52);
                                                        MEM[36 + MEM[64] + 160 + (msg.data.length - v10 - 52) + 32] = 0;
                                                        MEM[36 + MEM[64] + 128] = uint16(0);
                                                        MEM[MEM[64] + 32] = bytes4(0x42b0b77c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                        MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (msg.data.length - v10 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                        MEM[MEM[64] + (36 + MEM[64] + 160 + (msg.data.length - v10 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                        v11 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + msg.data.length - v39b3V0x1063V0x1129b - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                        if (RETURNDATASIZE() == 0) {
                                                            v12 = v13 = 96;
                                                        } else {
                                                            v12 = v14 = MEM[64];
                                                            MEM[v14] = RETURNDATASIZE();
                                                            RETURNDATACOPY(v14 + 32, 0, RETURNDATASIZE());
                                                        }
                                                        if (!v11) {
                                                            v15 = new uint256[](MEM[v12]);
                                                            MCOPY(v15.data, v12 + 32, MEM[v12]);
                                                            MEM[v15 + MEM[v12] + 32] = 0;
                                                            revert(msg.data[v10], v15);
                                                        }
                                                    } else {
                                                        require(52 <= msg.data.length - v10);
                                                        require(msg.data.length - v10 <= msg.data.length - v10);
                                                        v16 = new uint256[](1);
                                                        CALLDATACOPY(v16.data, msg.data.length, 32);
                                                        require(0 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v17 = v16.data;
                                                        v16[0] = address(msg.data[v10 + 32] >> 96);
                                                        v18 = new uint256[](1);
                                                        CALLDATACOPY(v18.data, msg.data.length, 32);
                                                        require(0 < v18.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                                        v19 = v18.data;
                                                        v18[0] = msg.data[v10];
                                                        MEM[36 + MEM[64]] = address(this);
                                                        MEM[36 + MEM[64] + 32] = 128;
                                                        MEM[36 + MEM[64] + 128] = v16.length;
                                                        v20 = v21 = 36 + MEM[64] + 160;
                                                        v22 = v23 = v16.data;
                                                        v24 = v25 = 0;
                                                        while (v24 < v16.length) {
                                                            MEM[v20] = address(MEM[v22]);
                                                            v22 += 32;
                                                            v20 = v20 + 32;
                                                            v24 += 1;
                                                        }
                                                        MEM[36 + MEM[64] + 64] = v20 - (36 + MEM[64]);
                                                        MEM[v20] = v18.length;
                                                        v26 = v27 = 32 + v20;
                                                        v28 = v29 = v18.data;
                                                        v30 = v31 = 0;
                                                        while (v30 < v18.length) {
                                                            MEM[v26] = MEM[v28];
                                                            v26 += 32;
                                                            v28 = v28 + 32;
                                                            v30 += 1;
                                                        }
                                                        MEM[36 + MEM[64] + 96] = v26 - (36 + MEM[64]);
                                                        MEM[v26] = msg.data.length - v10 - 52;
                                                        CALLDATACOPY(v26 + 32, 52 + v10, msg.data.length - v10 - 52);
                                                        MEM[v26 + (msg.data.length - v10 - 52) + 32] = 0;
                                                        MEM[MEM[64] + 32] = bytes4(0x5c38449e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                        MCOPY(MEM[64], MEM[64] + 32, v26 + (msg.data.length - v10 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                        MEM[MEM[64] + (v26 + (msg.data.length - v10 - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                        v32 = address(0xba12222222228d8ba445958a75a0704d566bf2c8).call(MEM[MEM[64]:MEM[64] + MEM[64] + v3e15_0x4V0x2d79V0x1f7eV0x11f8V0x1129b + msg.data.length - v39b3V0x1063V0x1129b - 52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                        if (RETURNDATASIZE() == 0) {
                                                            v33 = v34 = 96;
                                                        } else {
                                                            v33 = v35 = MEM[64];
                                                            MEM[v35] = RETURNDATASIZE();
                                                            RETURNDATACOPY(v35 + 32, 0, RETURNDATASIZE());
                                                        }
                                                        if (!v32) {
                                                            v36 = new uint256[](MEM[v33]);
                                                            MCOPY(v36.data, v33 + 32, MEM[v33]);
                                                            MEM[v36 + MEM[v33] + 32] = 0;
                                                            revert(msg.data[v10], v36);
                                                        }
                                                    }
                                                } else {
                                                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                                                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                                                    require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                                                    v37 = v38 = 0;
                                                    if (msg.data[v10] >> 248) {
                                                        v39 = 0x182e(0, this, 0x4444c5dc75cb358380d2e3de08a90);
                                                        v37 = 0x3bab(v39);
                                                    }
                                                    v40 = new bytes[](4);
                                                    MEM[v40.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(MEM[v40.data]);
                                                    MCOPY(MEM[64], v40.data, v40.length);
                                                    MEM[MEM[64] + v40.length] = 0;
                                                    v41 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(v37).gas(msg.gas);
                                                    if (RETURNDATASIZE() == 0) {
                                                        v42 = v43 = 96;
                                                    } else {
                                                        v42 = v44 = MEM[64];
                                                        MEM[v44] = RETURNDATASIZE();
                                                        RETURNDATACOPY(v44 + 32, 0, RETURNDATASIZE());
                                                    }
                                                    if (!v41) {
                                                        v45 = new uint256[](MEM[v42]);
                                                        MCOPY(v45.data, v42 + 32, MEM[v42]);
                                                        MEM[v45 + MEM[v42] + 32] = 0;
                                                        revert(v45);
                                                    }
                                                }
                                            } else {
                                                require(v10 <= msg.data.length);
                                                require(msg.data.length <= msg.data.length);
                                                MEM[36 + MEM[64]] = 32;
                                                MEM[36 + MEM[64] + 32] = msg.data.length - v10;
                                                CALLDATACOPY(36 + MEM[64] + 32 + 32, v10, msg.data.length - v10);
                                                MEM[36 + MEM[64] + 32 + (msg.data.length - v10) + 32] = 0;
                                                MEM[MEM[64] + 32] = bytes4(0x48c8949100000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 32 + (msg.data.length - v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                                MEM[MEM[64] + (36 + MEM[64] + 32 + (msg.data.length - v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                                v46 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 32 + msg.data.length - v39b3V0x1063V0x1129b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                if (RETURNDATASIZE() == 0) {
                                                    v47 = v48 = 96;
                                                } else {
                                                    v47 = v49 = MEM[64];
                                                    MEM[v49] = RETURNDATASIZE();
                                                    RETURNDATACOPY(v49 + 32, 0, RETURNDATASIZE());
                                                }
                                                if (!v46) {
                                                    v50 = new uint256[](MEM[v47]);
                                                    MCOPY(v50.data, v47 + 32, MEM[v47]);
                                                    MEM[v50 + MEM[v47] + 32] = 0;
                                                    revert(v50);
                                                }
                                            }
                                        } else {
                                            require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                                            require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                                            require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                                            MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(msg.data[v10]);
                                            MCOPY(MEM[64], MEM[64] + 32, 36);
                                            MEM[MEM[64] + 36] = 0;
                                            v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                            if (RETURNDATASIZE() == 0) {
                                                v52 = 96;
                                            } else {
                                                v52 = v53 = MEM[64];
                                                MEM[v53] = RETURNDATASIZE();
                                                RETURNDATACOPY(v53 + 32, 0, RETURNDATASIZE());
                                            }
                                            if (!v51) {
                                                v54 = new uint256[](MEM[v52]);
                                                MCOPY(v54.data, v52 + 32, MEM[v52]);
                                                MEM[v54 + MEM[v52] + 32] = 0;
                                                revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v54);
                                            }
                                        }
                                    } else {
                                        require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                                        require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                                        require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                                        MCOPY(MEM[64], MEM[64] + 32, 0);
                                        MEM[MEM[64]] = 0;
                                        v55 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call().value(msg.data[v10]).gas(msg.gas);
                                        if (RETURNDATASIZE() != 0) {
                                            MEM[MEM[64]] = RETURNDATASIZE();
                                            RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v55) {
                                            v56 = new uint256[](0);
                                            revert(6, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v56);
                                        }
                                    }
                                } else {
                                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                                    require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                                    v57 = v58 = 0;
                                    if (1 - (msg.data[v10] >> 248)) {
                                        v59 = v60 = 2 == msg.data[v10] >> 248;
                                        if (v60) {
                                            v59 = !uint16(msg.data[v10 + 21] >> 48);
                                        }
                                        if (v59) {
                                            v57 = v61 = this.balance;
                                        }
                                    } else {
                                        MEM[MEM[64] + 68] = uint256.max;
                                        MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v10 + 21] >> 96));
                                        MCOPY(MEM[64], MEM[64] + 32, 68);
                                        MEM[MEM[64] + 68] = 0;
                                        v62 = address(msg.data[v10 + 1] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v63 = v64 = 96;
                                        } else {
                                            v63 = v65 = MEM[64];
                                            MEM[v65] = RETURNDATASIZE();
                                            RETURNDATACOPY(v65 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v62) {
                                            v66 = new uint256[](MEM[v63]);
                                            MCOPY(v66.data, v63 + 32, MEM[v63]);
                                            MEM[v66 + MEM[v63] + 32] = 0;
                                            revert(address(msg.data[v10 + 1] >> 96), address(msg.data[v10 + 21] >> 96), uint256.max, v66);
                                        }
                                    }
                                    if (0 - uint16(msg.data[v10 + 21] >> 48)) {
                                        require(47 <= v10 + 47, Panic(17)); // arithmetic overflow or underflow
                                        v67 = 0x283b(uint16(msg.data[v10 + 21] >> 64), uint16(msg.data[v10 + 21] >> 80), v10 + 47, (msg.data[v6 + 1] >> 240) + v10 - v10, v10);
                                        require(47 <= v10 + 47, Panic(17)); // arithmetic overflow or underflow
                                        require(v10 + 47 <= uint16(msg.data[v10 + 21] >> 80) + (v10 + 47), Panic(17)); // arithmetic overflow or underflow
                                        v68 = uint16(msg.data[v10 + 21] >> 64) + (uint16(msg.data[v10 + 21] >> 80) + (v10 + 47));
                                        require(uint16(msg.data[v10 + 21] >> 80) + (v10 + 47) <= v68, Panic(17)); // arithmetic overflow or underflow
                                        require(47 <= v10 + 47, Panic(17)); // arithmetic overflow or underflow
                                        require(v10 + 47 <= uint16(msg.data[v10 + 21] >> 80) + (v10 + 47), Panic(17)); // arithmetic overflow or underflow
                                        require(uint16(msg.data[v10 + 21] >> 80) + (v10 + 47) <= uint16(msg.data[v10 + 21] >> 64) + (uint16(msg.data[v10 + 21] >> 80) + (v10 + 47)), Panic(17)); // arithmetic overflow or underflow
                                        v69 = uint16(msg.data[v10 + 21] >> 48) + (uint16(msg.data[v10 + 21] >> 64) + (uint16(msg.data[v10 + 21] >> 80) + (v10 + 47)));
                                        require(uint16(msg.data[v10 + 21] >> 64) + (uint16(msg.data[v10 + 21] >> 80) + (v10 + 47)) <= v69, Panic(17)); // arithmetic overflow or underflow
                                        require(v68 <= v69);
                                        require(v69 <= msg.data.length);
                                        MEM[36 + MEM[64]] = 64;
                                        MEM[36 + MEM[64] + 64] = 64;
                                        MEM[36 + MEM[64] + 64 + 64] = MEM[v67.word0];
                                        MCOPY(36 + MEM[64] + 64 + 64 + 32, v67.word0 + 32, MEM[v67.word0]);
                                        MEM[36 + MEM[64] + 64 + 64 + MEM[v67.word0] + 32] = 0;
                                        v70 = 36 + MEM[64] + 64 + 64 + (MEM[v67.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                        MEM[36 + MEM[64] + 64 + 32] = v70 - (36 + MEM[64] + 64);
                                        MEM[v70] = MEM[v67.word1];
                                        MCOPY(v70 + 32, v67.word1 + 32, MEM[v67.word1]);
                                        MEM[v70 + MEM[v67.word1] + 32] = 0;
                                        MEM[36 + MEM[64] + 32] = v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - (36 + MEM[64]);
                                        MEM[v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = v69 - v68;
                                        CALLDATACOPY(v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v68, v69 - v68);
                                        MEM[v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v69 - v68) + 32] = 0;
                                        MEM[MEM[64] + 32] = bytes4(0xd33588400000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                        MCOPY(MEM[64], MEM[64] + 32, v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v69 - v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                        MEM[MEM[64] + (v70 + (MEM[v67.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + (v69 - v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                        v71 = address(msg.data[v10 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d76V0x2a11V0x1dc4V0x1142V0x1129b + MEM[v117a0_0x0V0x1142V0x1129b.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + v39b3V0x1dadV0x1142V0x1129b - v39b3V0x1d80V0x1142V0x1129b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v57).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v72 = 96;
                                        } else {
                                            v72 = v73 = MEM[64];
                                            MEM[v73] = RETURNDATASIZE();
                                            RETURNDATACOPY(v73 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v71) {
                                            v74 = new uint256[](MEM[v72]);
                                            MCOPY(v74.data, v72 + 32, MEM[v72]);
                                            MEM[v74 + MEM[v72] + 32] = 0;
                                            revert(5, address(msg.data[v10 + 21] >> 96), v74);
                                        }
                                    } else {
                                        require(47 <= v10 + 47, Panic(17)); // arithmetic overflow or underflow
                                        v75 = 0x283b(uint16(msg.data[v10 + 21] >> 64), uint16(msg.data[v10 + 21] >> 80), v10 + 47, (msg.data[v6 + 1] >> 240) + v10 - v10, v10);
                                        MEM[36 + MEM[64]] = 32;
                                        MEM[36 + MEM[64] + 32] = 64;
                                        MEM[36 + MEM[64] + 32 + 64] = MEM[v75.word0];
                                        MCOPY(36 + MEM[64] + 32 + 64 + 32, v75.word0 + 32, MEM[v75.word0]);
                                        MEM[36 + MEM[64] + 32 + 64 + MEM[v75.word0] + 32] = 0;
                                        v76 = 36 + MEM[64] + 32 + 64 + (MEM[v75.word0] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
                                        MEM[36 + MEM[64] + 32 + 32] = v76 - (36 + MEM[64] + 32);
                                        MEM[v76] = MEM[v75.word1];
                                        MCOPY(v76 + 32, v75.word1 + 32, MEM[v75.word1]);
                                        MEM[v76 + MEM[v75.word1] + 32] = 0;
                                        MEM[MEM[64] + 32] = bytes4(0x3f62192e00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                        MCOPY(MEM[64], MEM[64] + 32, v76 + (MEM[v75.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                        MEM[MEM[64] + (v76 + (MEM[v75.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                        v77 = address(msg.data[v10 + 21] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + v37aaV0x3d37V0x3d64V0x28feV0x1d46V0x1142V0x1129b + MEM[v1177a_0x0V0x1142V0x1129b.word1] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v57).gas(msg.gas);
                                        if (RETURNDATASIZE() == 0) {
                                            v78 = 96;
                                        } else {
                                            v78 = v79 = MEM[64];
                                            MEM[v79] = RETURNDATASIZE();
                                            RETURNDATACOPY(v79 + 32, 0, RETURNDATASIZE());
                                        }
                                        if (!v77) {
                                            v80 = new uint256[](MEM[v78]);
                                            MCOPY(v80.data, v78 + 32, MEM[v78]);
                                            MEM[v80 + MEM[v78] + 32] = 0;
                                            revert(5, address(msg.data[v10 + 21] >> 96), v80);
                                        }
                                    }
                                }
                            } else {
                                require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                                require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                                require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                                v81 = v82 = this;
                                if (msg.data[v10] >> 248 == 1) {
                                    v83 = v84 = v10 + 77;
                                    v81 = v85 = msg.data[57 + v10] >> 96;
                                } else {
                                    v83 = v86 = v10 + 57;
                                }
                                require(v83 <= uint16(msg.data[v10] >> 216) + v83, Panic(17)); // arithmetic overflow or underflow
                                require(v83 <= uint16(msg.data[v10] >> 216) + v83);
                                require(uint16(msg.data[v10] >> 216) + v83 <= msg.data.length);
                                v87 = uint16(msg.data[v10] >> 216) + v83 - v83;
                                if (uint8(msg.data[v10] >> 240)) {
                                    v88 = v89 = 0x1000276a4;
                                } else {
                                    v88 = v90 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                }
                                if (uint8(msg.data[v10] >> 232)) {
                                    MEM[36 + MEM[64]] = address(v81);
                                    MEM[36 + MEM[64] + 32] = msg.data[v10 + 25];
                                    MEM[36 + MEM[64] + 64] = bool(msg.data[v10] >> 240);
                                    MEM[36 + MEM[64] + 96] = address(v88);
                                    MEM[36 + MEM[64] + 128] = 160;
                                    MEM[36 + MEM[64] + 160] = v87;
                                    CALLDATACOPY(36 + MEM[64] + 160 + 32, v83, v87);
                                    MEM[36 + MEM[64] + 160 + v87 + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (36 + MEM[64] + 160 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v91 = address(msg.data[v10] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x1129b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v92 = 96;
                                    } else {
                                        v92 = v93 = MEM[64];
                                        MEM[v93] = RETURNDATASIZE();
                                        RETURNDATACOPY(v93 + 32, 0, RETURNDATASIZE());
                                    }
                                } else {
                                    MEM[36 + MEM[64]] = address(v81);
                                    MEM[36 + MEM[64] + 32] = bool(msg.data[v10] >> 240);
                                    MEM[36 + MEM[64] + 64] = msg.data[v10 + 25];
                                    MEM[36 + MEM[64] + 96] = address(v88);
                                    MEM[36 + MEM[64] + 128] = 160;
                                    MEM[36 + MEM[64] + 160] = v87;
                                    CALLDATACOPY(36 + MEM[64] + 160 + 32, v83, v87);
                                    MEM[36 + MEM[64] + 160 + v87 + 32] = 0;
                                    MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + (36 + MEM[64] + 160 + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                    v91 = v94 = address(msg.data[v10] >> 56).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v301cV0x1c8cV0x1118V0x1129b + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() == 0) {
                                        v92 = v95 = 96;
                                    } else {
                                        v92 = v96 = MEM[64];
                                        MEM[v96] = RETURNDATASIZE();
                                        RETURNDATACOPY(v96 + 32, 0, RETURNDATASIZE());
                                    }
                                }
                                if (!v91) {
                                    v97 = new uint256[](4);
                                    MEM[v97.data] = address(msg.data[v10] >> 56);
                                    MEM[v97 + 64] = 96;
                                    v98 = new uint256[](MEM[v92]);
                                    MCOPY(v98.data, v92 + 32, MEM[v92]);
                                    MEM[v98 + MEM[v92] + 32] = 0;
                                    revert(v97, v99, v98);
                                }
                            }
                        } else {
                            require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                            require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                            require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                            v100 = v101 = msg.data[v10 + 24];
                            if (0 - uint16(msg.data[v10] >> 224)) {
                                require(56 <= uint16(msg.data[v10] >> 224) + 56, Panic(17)); // arithmetic overflow or underflow
                                require(56 <= uint16(msg.data[v10] >> 224) + 56);
                                require(uint16(msg.data[v10] >> 224) + 56 <= (msg.data[v6 + 1] >> 240) + v10 - v10);
                                if (uint8(msg.data[v10] >> 240)) {
                                    v100 = v102 = 0;
                                } else {
                                    v100 = 0;
                                }
                                MEM[36 + MEM[64]] = v100;
                                MEM[36 + MEM[64] + 32] = v100;
                                MEM[36 + MEM[64] + 64] = address(this);
                                MEM[36 + MEM[64] + 96] = 128;
                                MEM[36 + MEM[64] + 128] = uint16(msg.data[v10] >> 224) + 56 - 56;
                                CALLDATACOPY(36 + MEM[64] + 128 + 32, 56 + v10, uint16(msg.data[v10] >> 224) + 56 - 56);
                                MEM[36 + MEM[64] + 128 + (uint16(msg.data[v10] >> 224) + 56 - 56) + 32] = 0;
                                MEM[MEM[64] + 32] = bytes4(0x22c0d9f00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 128 + (uint16(msg.data[v10] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 128 + (uint16(msg.data[v10] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v103 = address(msg.data[v10] >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 128 + uint16(msg.data[v39b3V0x1063V0x1129b] >> 224) + 56 - 56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v104 = 96;
                                } else {
                                    v104 = v105 = MEM[64];
                                    MEM[v105] = RETURNDATASIZE();
                                    RETURNDATACOPY(v105 + 32, 0, RETURNDATASIZE());
                                }
                                if (!v103) {
                                    v106 = new uint256[](MEM[v104]);
                                    MCOPY(v106.data, v104 + 32, MEM[v104]);
                                    MEM[v106 + MEM[v104] + 32] = 0;
                                    revert(3, address(msg.data[v10] >> 64), v106);
                                }
                            } else {
                                if (!(msg.data[v10] >> 248)) {
                                    v107 = v108 = this;
                                } else {
                                    v107 = msg.data[v10 + 56] >> 96;
                                }
                                if (uint8(msg.data[v10] >> 240)) {
                                    v100 = v109 = 0;
                                } else {
                                    v100 = v110 = 0;
                                }
                                MEM[MEM[64] + 68] = v100;
                                MEM[MEM[64] + 100] = address(v107);
                                MEM[MEM[64] + 132] = 128;
                                MEM[MEM[64] + 164] = 0;
                                MEM[MEM[64] + 32] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000 | uint224(v100);
                                MCOPY(MEM[64], MEM[64] + 32, 164);
                                MEM[MEM[64] + 164] = 0;
                                v111 = address(msg.data[v10] >> 64).call(MEM[MEM[64]:MEM[64] + 164], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v112 = 96;
                                } else {
                                    v112 = v113 = MEM[64];
                                    MEM[v113] = RETURNDATASIZE();
                                    RETURNDATACOPY(v113 + 32, 0, RETURNDATASIZE());
                                }
                                if (!v111) {
                                    v114 = new uint256[](MEM[v112]);
                                    MCOPY(v114.data, v112 + 32, MEM[v112]);
                                    MEM[v114 + MEM[v112] + 32] = 0;
                                    revert(3, address(msg.data[v10] >> 64), v114);
                                }
                            }
                        }
                    } else {
                        require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                        require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                        require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                        0x166f(msg.data[v10], block.coinbase);
                    }
                } else {
                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10, Panic(17)); // arithmetic overflow or underflow
                    require(v10 <= (msg.data[v6 + 1] >> 240) + v10);
                    require((msg.data[v6 + 1] >> 240) + v10 <= msg.data.length);
                    if (msg.data[v10] >> 96) {
                        MEM[MEM[64] + 68] = msg.data[v10 + 40];
                        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.data[v10 + 20] >> 96));
                        MCOPY(MEM[64], MEM[64] + 32, 68);
                        MEM[MEM[64] + 68] = 0;
                        v115 = address(msg.data[v10] >> 96).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v116 = 96;
                        } else {
                            v116 = v117 = MEM[64];
                            MEM[v117] = RETURNDATASIZE();
                            RETURNDATACOPY(v117 + 32, 0, RETURNDATASIZE());
                        }
                        if (!v115) {
                            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            MCOPY(MEM[64], MEM[64] + 32, 36);
                            MEM[MEM[64] + 36] = 0;
                            v118, /* uint256 */ v119, /* uint256 */ v120 = address(msg.data[v10] >> 96).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v121 = v122 = 96;
                            } else {
                                v121 = v123 = new bytes[](RETURNDATASIZE());
                                RETURNDATACOPY(v123.data, 0, RETURNDATASIZE());
                            }
                            require(v118, address(msg.data[v10] >> 96), address(this));
                            require(v120 + MEM[v121] - v120 >= 32);
                            v124 = MEM[v120];
                            if (0) {
                                require(0 - v124, address(msg.data[v10] >> 96), address(this));
                                require(v124, Panic(17)); // arithmetic overflow or underflow
                                v124 = v125 = uint256.max + v124;
                            }
                            v126 = new uint256[](MEM[v116]);
                            MCOPY(v126.data, v116 + 32, MEM[v116]);
                            MEM[v126 + MEM[v116] + 32] = 0;
                            revert(address(msg.data[v10] >> 96), address(msg.data[v10 + 20] >> 96), msg.data[v10 + 40], v124, v126);
                        }
                    } else {
                        0x166f(msg.data[v10 + 40], msg.data[v10 + 20] >> 96);
                    }
                }
                v6 = (msg.data[v6 + 1] >> 240) + v10;
                require(v10 <= v6, Panic(17)); // arithmetic overflow or underflow
            } else {
                v127 = _SafeSub(27, 4);
                require(v6 <= v127 + v6, Panic(17)); // arithmetic overflow or underflow
                require(v127 + v6 <= (msg.data[v6 + 1] >> 240) + (v127 + v6), Panic(17)); // arithmetic overflow or underflow
                require(v127 + v6 <= (msg.data[v6 + 1] >> 240) + (v127 + v6));
                require((msg.data[v6 + 1] >> 240) + (v127 + v6) <= msg.data.length);
                CALLDATACOPY(MEM[64], v127 + v6, (msg.data[v6 + 1] >> 240) + (v127 + v6) - (v127 + v6));
                MEM[(msg.data[v6 + 1] >> 240) + (v127 + v6) - (v127 + v6) + MEM[64]] = 0;
                v128 = address(msg.data[v6 + 3] >> 96).delegatecall(MEM[MEM[64]:MEM[64] + msg.data[v39b3V0x1233V0x1129b + 1] >> 240 + vf91_0x0V0x1129b + v39b3V0x1233V0x1129b - vf91_0x0V0x1129b + v39b3V0x1233V0x1129b + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v129 = v130 = 96;
                } else {
                    v129 = v131 = MEM[64];
                    MEM[v131] = RETURNDATASIZE();
                    RETURNDATACOPY(v131 + 32, 0, RETURNDATASIZE());
                }
                if (v128) {
                    v6 = (msg.data[v6 + 1] >> 240) + (v127 + v6);
                    require(v127 + v6 <= v6, Panic(17)); // arithmetic overflow or underflow
                } else {
                    v132 = new uint256[](MEM[v129]);
                    MCOPY(v132.data, v129 + 32, MEM[v129]);
                    MEM[v132 + MEM[v129] + 32] = 0;
                    revert(address(msg.data[v6 + 3] >> 96), v132);
                }
            }
            v8 += 1;
        }
        v133 = _SafeMul(msg.data[5 + (varg1 + v1)], msg.data[varg1 + v1] >> 240);
        v134 = _SafeDiv(v133, 10000);
        require(v5 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(MEM[(v5 << 5) + MEM[64]] <= msg.data[5 + (varg1 + v1)] + MEM[(v5 << 5) + MEM[64]], Panic(17)); // arithmetic overflow or underflow
        MEM[(v5 << 5) + MEM[64]] += msg.data[5 + (varg1 + v1)];
        require(v5 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(MEM[(v5 << 5) + MEM[64]] <= v134 + MEM[(v5 << 5) + MEM[64]], Panic(17)); // arithmetic overflow or underflow
        MEM[(v5 << 5) + MEM[64]] += v134;
        v1 = uint16(msg.data[varg1 + v1] >> 216) + (v1 + 37);
        require(v1 + 37 <= v1, Panic(17)); // arithmetic overflow or underflow
        v3 += 1;
    }
    v135 = v136 = 1;
    while (v135 < 5) {
        require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (MEM[(v135 << 5) + MEM[64]] > 0) {
            require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (MEM[(v135 << 5) + MEM[64]] <= 0) {
                v137 = 0x124a(v135);
                require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[MEM[64] + 68] = MEM[(v135 << 5) + MEM[64]];
                MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v138 = address(v137).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v139 = v140 = 96;
                } else {
                    v139 = MEM[64];
                    MEM[v139] = RETURNDATASIZE();
                    RETURNDATACOPY(v139 + 32, 0, RETURNDATASIZE());
                }
                if (!v138) {
                    MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v141, /* uint256 */ v142, /* uint256 */ v143 = address(v137).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v144 = v145 = 96;
                    } else {
                        v144 = v146 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v146.data, 0, RETURNDATASIZE());
                    }
                    require(v141, address(v137), address(this));
                    require(v143 + MEM[v144] - v143 >= 32);
                    v147 = MEM[v143];
                    if (0) {
                        require(0 - v147, address(v137), address(this));
                        require(v147, Panic(17)); // arithmetic overflow or underflow
                        v147 = v148 = uint256.max + v147;
                    }
                    v149 = new uint256[](MEM[v139]);
                    MCOPY(v149.data, v139 + 32, MEM[v139]);
                    MEM[v149 + MEM[v139] + 32] = 0;
                    revert(address(v137), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), MEM[(v135 << 5) + MEM[64]], v147, v149);
                }
            } else {
                v150 = 0x124a(v135);
                require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (address(v150) + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8) {
                    if (address(v150) + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
                        if (address(v150) + 0xffffffffffffffffffffffff94e8ab8b176f6b3bb256746ab112153b6ad8e2f1) {
                            require(!(address(v150) + 0xffffffffffffffffffffffffdd9f053a1aabd588c55bb043012083e6c43d3a67), address(v150));
                            v151 = v152 = 0x4585fe77225b41b697c938b018e2ac67ac5a20c0;
                            v153 = v154 = 1;
                        } else {
                            v151 = v155 = 0x60594a405d53811d3bc4766596efd80fd545a270;
                            v153 = v156 = 1;
                        }
                    } else {
                        v151 = v157 = 0x11b815efb8f581194ae79006d24e0d814b7697f6;
                        v153 = v158 = 0;
                    }
                } else {
                    v151 = 0x88e6a0c2ddd26feeb64f039a2c41296fcb3f5640;
                    v153 = 1;
                }
                MEM[MEM[64] + 32] = uint248.max + 1;
                MEM[MEM[64] + 33] = uint248.max + 1;
                MEM[MEM[64] + 34] = 0x48000000000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 36] = bytes20(v150 << 96);
                MEM[MEM[64] + 56] = bytes20(v151 << 96);
                MEM[MEM[64] + 76] = MEM[(v135 << 5) + MEM[64]];
                MEM[64] += 108;
                if (v153) {
                    v159 = v160 = 0x1000276a4;
                } else {
                    v159 = v161 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                if (0) {
                    MEM[36 + MEM[64]] = address(this);
                    MEM[36 + MEM[64] + 32] = MEM[(v135 << 5) + MEM[64]];
                    MEM[36 + MEM[64] + 64] = bool(v153);
                    MEM[36 + MEM[64] + 96] = address(v159);
                    MEM[36 + MEM[64] + 128] = 160;
                    MEM[36 + MEM[64] + 160] = 76;
                    MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, 76);
                    MEM[36 + MEM[64] + 160 + 76 + 32] = 0;
                    MEM[MEM[64] + 32] = bytes4(0x24b31a0c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32);
                    MEM[MEM[64] + (36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32)] = 0;
                    v162 = address(v151).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v163 = v164 = 96;
                    } else {
                        v163 = v165 = MEM[64];
                        MEM[v165] = RETURNDATASIZE();
                        RETURNDATACOPY(v165 + 32, 0, RETURNDATASIZE());
                    }
                } else {
                    MEM[36 + MEM[64]] = address(this);
                    MEM[36 + MEM[64] + 32] = bool(v153);
                    MEM[36 + MEM[64] + 64] = MEM[(v135 << 5) + MEM[64]];
                    MEM[36 + MEM[64] + 96] = address(v159);
                    MEM[36 + MEM[64] + 128] = 160;
                    MEM[36 + MEM[64] + 160] = 76;
                    MCOPY(36 + MEM[64] + 160 + 32, MEM[64] + 32, 76);
                    MEM[36 + MEM[64] + 160 + 76 + 32] = 0;
                    MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                    MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32);
                    MEM[MEM[64] + (36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32)] = 0;
                    v162 = v166 = address(v151).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + 96 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v163 = v167 = 96;
                    } else {
                        v163 = v168 = MEM[64];
                        MEM[v168] = RETURNDATASIZE();
                        RETURNDATACOPY(v168 + 32, 0, RETURNDATASIZE());
                    }
                }
                if (v162) {
                    require(32 + v163 + MEM[v163] - (32 + v163) >= 64);
                    if (!v153) {
                        v169 = v170 = 0x3bab(MEM[32 + v163]);
                    } else {
                        v169 = v171 = 0x3bab(MEM[32 + v163 + 32]);
                    }
                    require(MEM[MEM[64]] <= v169 + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                    MEM[MEM[64]] += v169;
                    require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(v135 < 5, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v172 = _SafeMul(v169, MEM[(v135 << 5) + MEM[64]]);
                    v173 = _SafeDiv(v172, MEM[(v135 << 5) + MEM[64]]);
                    require(MEM[MEM[64]] <= v173 + MEM[MEM[64]], Panic(17)); // arithmetic overflow or underflow
                    MEM[MEM[64]] += v173;
                } else {
                    v174 = new uint256[](4);
                    MEM[v174.data] = address(v151);
                    MEM[v174 + 64] = 96;
                    v175 = new uint256[](MEM[v163]);
                    MCOPY(v175.data, v163 + 32, MEM[v163]);
                    MEM[v175 + MEM[v163] + 32] = 0;
                    revert(v174, v99, v175);
                }
            }
        }
        v135 += 1;
    }
    if (!MEM[MEM[64]]) {
        v176 = 0x124a(0);
        MEM[MEM[64] + 68] = MEM[MEM[64]];
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v177, /* uint256 */ v178, /* uint256 */ v179 = address(v176).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v180 = 96;
        } else {
            v180 = v181 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v181.data, 0, RETURNDATASIZE());
        }
        if (v177) {
            return ;
        } else {
            MEM[MEM[64] + 32] = uint224(address(this)) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MCOPY(MEM[64], MEM[64] + 32, 36);
            MEM[MEM[64] + 36] = 0;
            v182, /* uint256 */ v183, /* uint256 */ v184 = address(v176).call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v185 = v186 = 96;
            } else {
                v185 = v187 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v187.data, 0, RETURNDATASIZE());
            }
            require(v182, address(v176), address(this));
            require(v184 + MEM[v185] - v184 >= 32);
            v188 = MEM[v184];
            if (0) {
                require(0 - v188, address(v176), address(this));
                require(v188, Panic(17)); // arithmetic overflow or underflow
                v188 = v189 = uint256.max + v188;
            }
            v190 = new uint256[](MEM[v180]);
            MCOPY(v190.data, v179, MEM[v180]);
            MEM[v190 + MEM[v180] + 32] = 0;
            revert(address(v176), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), MEM[MEM[64]], v188, v190);
        }
    } else {
        MEM[MEM[64] + 32] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000 | uint224(MEM[MEM[64]]);
        MCOPY(MEM[64], MEM[64] + 32, 36);
        MEM[MEM[64] + 36] = 0;
        v191, /* uint256 */ v192, /* uint256 */ v193 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v194 = 96;
        } else {
            v194 = v195 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v195.data, 0, RETURNDATASIZE());
        }
        if (v191) {
            0x166f(MEM[MEM[64]], block.coinbase);
            v196 = _SafeSub(MEM[MEM[64]], MEM[MEM[64]]);
            0x166f(v196, 0xa0d5a274f95decb536bbbaa922d6d0fb692a627d);
            return ;
        } else {
            v197 = new uint256[](MEM[v194]);
            MCOPY(v197.data, v193, MEM[v194]);
            MEM[v197 + MEM[v194] + 32] = 0;
            revert(7, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v197);
        }
    }
}

function 0xd24(address varg0) private { 
    v0 = v1 = varg0 == 0xde40b9ea63148965f9fe737f8f8b6fbc09d7c615;
    if (varg0 != 0xde40b9ea63148965f9fe737f8f8b6fbc09d7c615) {
        v0 = v2 = varg0 == 0x7f3e05ba4d7e59b6c56e5116c4facc0d88493696;
    }
    if (!v0) {
        v0 = v3 = varg0 == 0x4dfae204a53e4d10e842a7eb2e7ad4931c3abe5b;
    }
    if (!v0) {
        v0 = v4 = varg0 == 0x3cb269a4b9f8e69baa614ace858d1b815d630b1b;
    }
    if (!v0) {
        v0 = v5 = varg0 == 0xab9b67896a3f36244d3b1904a3328ab2fea1d5e7;
    }
    if (!v0) {
        v0 = v6 = varg0 == 0x932d91682423357b435172e50d9ea2dca614217f;
    }
    if (!v0) {
        v0 = v7 = varg0 == 0xf8b64b6015f6feb1fbe79bb512f1113e829ddd96;
    }
    if (!v0) {
        v0 = v8 = varg0 == 0xa509cae29c94cf76a4698859d4c6b862b920ea96;
    }
    if (!v0) {
        v0 = v9 = varg0 == 0xe999c0a515cd1679d20c0c216ceb46e981c7073a;
    }
    if (!v0) {
        v0 = v10 = varg0 == 0x7c0f8a684c42ac83ce65a59e89ef5a295932c922;
    }
    if (!v0) {
        v0 = v11 = varg0 == 0x90b1c35ac4ccf24a7596c8f80da0078f46be195b;
    }
    if (!v0) {
        v0 = v12 = varg0 == 0x80106e5297a148bc05d25a6fea8c76e4b7bdcdae;
    }
    if (!v0) {
        v0 = v13 = varg0 == 0xe556e36537fd64a5a9572961f0a5aa0f61997e68;
    }
    if (!v0) {
        v0 = v14 = varg0 == 0xcb2ed83402408d32441bfaef2167393f31e8574c;
    }
    if (!v0) {
        return 0;
    } else {
        return 1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, address varg1) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else {
        v0 = function_selector >> 224;
        if (0x7ed1f1dd > v0) {
            if (0x45bd1057 > v0) {
                if (0x1b11d0ff > v0) {
                    if (0xcb843f6 == v0) {
                        set_approvals();
                    } else if (0x10d1e85c != v0) {
                    }
                } else if (0x1b11d0ff == v0) {
                    executeOperation(address,uint256,uint256,address,bytes);
                } else if (0x23a69e75 != v0) {
                    if (0x3a1c453c != v0) {
                    }
                }
            } else if (0x60378cea > v0) {
                if (0x45bd1057 == v0) {
                    0x45bd1057();
                } else if (0x55f86501 == v0) {
                    exec(bytes);
                } else if (0x585da628 == v0) {
                    reactorCallback(((address,address,uint256,uint256,address,bytes),(address,uint256,uint256),(address,uint256,address)[],bytes,bytes32)[],bytes);
                }
            } else if (0x60378cea == v0) {
                dodoCall(bool,uint256,uint256,bytes);
            } else if (0x67ca7c91 != v0) {
                if (0x69328dec == v0) {
                    withdraw(address,uint256,address);
                }
            }
        } else if (0xbc157aa0 > v0) {
            if (0x923b8a2a > v0) {
                if (0x7ed1f1dd != v0) {
                    if (0x84800812 != v0) {
                        if (0x91dd7346 == v0) {
                            unlockCallback(bytes);
                        }
                    }
                }
            } else if (0x923b8a2a != v0) {
                if (0xa1dab4eb != v0) {
                    if (0xb3313cd0 == v0) {
                        0xb3313cd0();
                    }
                }
            }
        } else if (0xf04f2707 > v0) {
            if (0xbc157aa0 == v0) {
                0xbc157aa0();
            } else if (0xd5b99797 != v0) {
                if (0xeb2021c3 != v0) {
                }
            }
        } else if (0xf04f2707 == v0) {
            receiveFlashLoan(address[],uint256[],uint256[],bytes);
        } else if (0xfa461e33 != v0) {
            if (0xfa483e72 != v0) {
            }
        }
        swapCallback(int256,int256,bytes);
        pancakeCall(address,uint256,uint256,bytes);
    }
    require(!msg.value);
    if (msg.data.length <= 132) {
        exit;
    } else {
        v1 = v2 = msg.data.length > 164;
        if (v2) {
            v1 = v3 = this == varg1;
        }
        if (!v1) {
            require(132 <= msg.data.length);
            require(msg.data.length <= msg.data.length);
            0x392(msg.data.length - 132, 132);
        } else {
            require(164 <= msg.data.length);
            require(msg.data.length <= msg.data.length);
            0x392(msg.data.length - 164, 164);
        }
        exit;
    }
}
