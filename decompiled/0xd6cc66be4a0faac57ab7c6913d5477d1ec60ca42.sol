// Decompiled by library.dedaub.com
// 2025.12.13 04:18 UTC
// Compiled using the solidity compiler version 0.8.27


// Data structures and variables inferred from the use of storage instructions
address _owner; // STORAGE[0x0] bytes 0 to 19
int256 _shibaswapV2SwapCallback; // TRANSIENT_STORAGE[0xaf28d9864a81dfdf71cab65f4e5d79a0cf9b083905fb8971425e6cb581b3f692]


// Events
OwnershipTransferred(address, address);

function 0x1429(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = varg0.approve(0x9995855c00494d039ab6792f18e368e530dff931, varg1).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v1) {
        v0 = !(RETURNDATASIZE() | !varg0.code.size);
    }
    require(v0, Error('APPROVE_FAILED'));
    return ;
}

function 0x1500(uint256 varg0) private { 
    v0 = varg0.approve(0x9995855c00494d039ab6792f18e368e530dff931, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v0) {
        require(!bool(RETURNDATASIZE() | !varg0.code.size), Error('APPROVE_FAILED'));
        return ;
    } else {
        require(v0, Error('APPROVE_FAILED'));
        return ;
    }
}

function 0x1569(uint256 varg0, address varg1) private { 
    v0 = varg0.approve(varg1, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v0) {
        require(!bool(RETURNDATASIZE() | !varg0.code.size), Error('APPROVE_FAILED'));
        return ;
    } else {
        require(v0, Error('APPROVE_FAILED'));
        return ;
    }
}

function 0x1641(uint256 varg0) private { 
    v0 = varg0.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, 0).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v0) {
        require(!bool(RETURNDATASIZE() | !varg0.code.size), Error('APPROVE_FAILED'));
        return ;
    } else {
        require(v0, Error('APPROVE_FAILED'));
        return ;
    }
}

function 0x16aa(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v0) {
        require(!bool(RETURNDATASIZE() | !varg0.code.size), Error('APPROVE_FAILED'));
        return ;
    } else {
        require(v0, Error('APPROVE_FAILED'));
        return ;
    }
}

function 0x176f(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function 0x195d() private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1a62(uint256 varg0, uint256 varg1, uint24 varg2, uint256 varg3, uint256 varg4) private { 
    if (address(varg0) <= address(varg1)) {
    }
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = address(varg0);
    v0.word2 = address(varg0);
    v0.word3 = varg2;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = keccak256(address(varg0), address(varg0), varg2);
    v4 = new bytes[](85);
    v4[1] = bytes20(varg3 << 96);
    v4[21] = v3;
    v4[53] = varg4;
    require(!((v4 + 128 > uint64.max) | (v4 + 128 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v4.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg3 << 96), v3, varg4));
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + data] + (4 + data + 32) >= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) + (4 + data + 32 + uint32(data.word3)) + 32, SliceOutOfBounds());
    v3 = v4 = address(data.word1) != 0x1f98431c8ad98523631ae4a59f267346ea31f984;
    if (v4) {
        v3 = v5 = address(data.word1) != 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
    }
    require(!v3, address(data.word1));
    if (data.word2 == 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54) {
    }
    require(data.word2 == 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    require(43 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]), SliceOutOfBounds());
    v6 = 0x1a62(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96, msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96, uint24(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 72), data.word1, data.word2);
    require(!(address(v6) - msg.sender), V3InvalidCaller());
    if (amount0Delta <= 0) {
        v7 = v8 = address(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96) < address(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96);
    } else {
        v7 = address(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96) < address(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96);
    }
    if (!v7) {
        if (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) < 66) {
            require(v9 <= _shibaswapV2SwapCallback, V3TooMuchRequested());
            0x1bc1(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96, msg.sender, v9);
        } else {
            require(23 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]));
            v10 = 0x1c25(v9);
            v11 = 0x176f(v10);
            require(43 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23, SliceOutOfBounds());
            v12 = address(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32) + 23] >> 96) < address(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 96);
            v13 = 0x1a62(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 96, msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32) + 23] >> 96, uint24(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 72), data.word1, data.word2);
            if (0 == v12) {
                v14 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v14 = v15 = 0x1000276a4;
            }
            MEM[MEM[64] + 32] = address(data.word1);
            MEM[MEM[64] + 32 + 32] = data.word2;
            MEM[MEM[64] + 32 + 64] = 96;
            MEM[MEM[64] + 32 + 96] = uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23;
            CALLDATACOPY(MEM[64] + 32 + 96 + 32, 23 + (4 + data + 32 + uint32(data.word3) + 32), uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23);
            MEM[MEM[64] + 32 + 96 + (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23) + 32] = 0;
            require(!((MEM[64] + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v16 = new uint256[]((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MCOPY(v16.data, MEM[64] + 32, (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MEM[v16 + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
            v17, /* uint256 */ v18, /* uint256 */ v19 = address(v13).swap(msg.sender, bool(v12), v11, address(v14), v16).gas(msg.gas);
            require(v17, MEM[64], RETURNDATASIZE());
            if (v17) {
                v20 = 64;
                if (64 > RETURNDATASIZE()) {
                    v20 = v21 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v20 - MEM[64] >= 64);
            }
        }
    } else {
        0x1bc1(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96, msg.sender, v9);
    }
}

function receive() public payable { 
}

function 0x1bc1(address varg0, uint256 varg1, uint256 varg2) private { 
    if (varg0) {
        0x3fca(varg0, varg1, varg2);
        return ;
    } else {
        0x4045(varg1, varg2);
        return ;
    }
}

function 0x1c25(uint256 varg0) private { 
    require(varg0 < int256.min);
    return varg0;
}

function 0x2177(struct(3) varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(int128(varg1) > 0, int128(varg1));
    v0 = v1 = 0;
    v2 = v3 = address(varg0.word0);
    v2 = v4 = address(varg0.word1);
    if (v1 != varg2) {
    }
    v0 = v5 = uint128(varg1);
    if (bool(address(v2))) {
        0x1429(address(v2), v5);
    }
    v6 = 0x9995855c00494d039ab6792f18e368e530dff931.call(0xf196187f00000000000000000000000000000000000000000000000000000000, v3, v4, varg0.word2, varg2, varg1, v1, varg3, varg4, this).value(v0).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (bool(address(v2))) {
        0x1500(address(v2));
        return ;
    } else {
        return ;
    }
}

function 0x22e5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    require(uint8(varg1) <= 1, uint8(varg1));
    require(varg4);
    require(varg0.code.size);
    v0, /* address */ v1 = varg0.coins(varg2).gas(msg.gas);
    require(v0);
    0x16aa(address(v1), varg0, varg4);
    if (1 != !varg1) {
    }
    v2 = varg0.setMetaGold(0x3df0212400000000000000000000000000000000000000000000000000000000, varg2, varg3, varg4, varg5).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    0x1569(address(v1), varg0);
    return ;
}

function 0x2446(address varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).withdraw(varg0, varg1, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v2 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v2 = v3 = MEM[64] + 32;
        }
        require(v2 - MEM[64] >= 32);
        return ;
    } else {
        return ;
    }
}

function 0x24fc(address varg0, uint256 varg1) private { 
    0x16aa(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), varg1);
    v0, /* uint256 */ v1 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).repay(varg0, varg1, 2, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v2 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v2 = v3 = MEM[64] + 32;
        }
        require(v2 - MEM[64] >= 32);
    }
    v4 = varg0.approve(address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), 0).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v4) {
        require(!bool(RETURNDATASIZE() | !varg0.code.size), Error('APPROVE_FAILED'));
    } else {
        require(v4, Error('APPROVE_FAILED'));
    }
    return ;
}

function 0x25d1(address varg0, uint256 varg1) private { 
    require((address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)).code.size);
    v0 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).borrow(varg0, varg1, 2, 0, this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        return ;
    } else {
        return ;
    }
}

function 0x2698(address varg0, uint256 varg1) private { 
    0x16aa(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), varg1);
    require((address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)).code.size);
    v0 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).supply(varg0, varg1, this, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
    }
    0x1569(varg0, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2));
    return ;
}

function 0x278d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (!varg3) {
        varg3 = v0 = 0x422b(varg1);
    }
    v1, v2 = 0x9424b1412450d0f8fc2255faf6046b98213b76bd.isBPool(address(varg0)).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v3 = 0;
    if (v1) {
        v4 = v5 = 32;
        if (32 > RETURNDATASIZE()) {
            v4 = v6 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v4 - MEM[64] >= 32);
        require(!0x3d44923e00000000000000000000000000000000000000000000000000000001);
    }
    require(v2, address(varg0));
    0x16aa(address(varg1), varg0, varg3);
    v7 = varg0.swapExactAmountIn(varg1, varg3, varg2, varg4, uint256.max).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    0x1569(address(varg1), varg0);
    return ;
}

function 0x2996(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    require(v0 < int256.min);
    return v0, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg0;
}

function 0x2d3(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(!(varg0 - varg2), LengthMismatch());
    v0 = 0;
    while (v0 < v1) {
        v2 = _SafeAdd(v1, v1, v0);
        require(v0 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[v1 + (v0 << 5)] < msg.data.length - v1 - 31);
        v3 = msg.data[v1 + msg.data[v1 + (v0 << 5)]];
        require(v3 <= uint64.max);
        v4 = v5 = 32 + (v1 + msg.data[v1 + (v0 << 5)]);
        require(v5 <= msg.data.length - v3);
        v6 = msg.data[v2] >> 248 & 0x3f;
        if (v6 >= 21) {
            if (v6 - 21) {
                if (v6 - 22) {
                    if (v6 - 23) {
                        if (v6 - 24) {
                            if (v6 - 25) {
                                if (!(v6 - 26)) {
                                    v0 = v7 = 1;
                                    v8 = new struct(3);
                                    require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
                                    v8.word0 = 0;
                                    v8.word1 = 0;
                                    v8.word2 = 0;
                                    v9 = new struct(3);
                                    v9.word0 = msg.data[v5];
                                    v9.word1 = msg.data[v5 + 32];
                                    v9.word2 = msg.data[v5 + 64];
                                    0x2177(v9, msg.data[v5 + 96], msg.data[v5 + 128], msg.data[v5 + 160], msg.data[v5 + 192]);
                                }
                            } else {
                                v0 = v10 = 1;
                                0x22e5(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64], msg.data[v5 + 96], msg.data[v5 + 128], msg.data[v5 + 160]);
                                // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                            }
                        } else {
                            v0 = v11 = 1;
                            0x2446(msg.data[v5], msg.data[v5 + 32]);
                            // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                        }
                    } else {
                        v0 = v12 = 1;
                        0x24fc(msg.data[v5], msg.data[v5 + 32]);
                        // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                    }
                } else {
                    v0 = v13 = 1;
                    0x25d1(msg.data[v5], msg.data[v5 + 32]);
                    // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                }
            } else {
                v0 = v14 = 1;
                0x2698(msg.data[v5], msg.data[v5 + 32]);
            }
        } else if (v6 >= 16) {
            if (v6 - 16) {
                if (v6 - 17) {
                    if (v6 - 18) {
                        if (v6 - 19) {
                            if (!(v6 - 20)) {
                                v0 = v15 = 1;
                                0x278d(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64], msg.data[v5 + 96], msg.data[v5 + 128]);
                            }
                        } else {
                            v0 = v16 = 1;
                            v17 = msg.data[v5];
                            v18 = v19 = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
                            v20 = v21 = v5 + uint32(msg.data[v5 + 64]) + 32;
                            require(v3 + v5 >= v19 + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
                            if (!v17) {
                                require(v19 >= 20, SliceOutOfBounds());
                                v17 = v22 = 0x422b(msg.data[v21] >> 96);
                            }
                            while (1) {
                                v23, v24, v25, v26, v27, v28, v29, v4, v30 = 0x2996(66 <= v18, 0x19c3d, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62, 10670, 10684, v20, v18, v4);
                                v31, v32 = 0x4c3a(v28, v29);
                                require(43 <= v31, SliceOutOfBounds());
                                v33 = address(msg.data[v32] >> 96) < address(msg.data[v32 + 23] >> 96);
                                v34 = 0x1a62(msg.data[v32] >> 96, msg.data[v32 + 23] >> 96, uint24(msg.data[v32] >> 72), v24, v25);
                                if (0 == v33) {
                                    v35 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    v35 = v36 = 0x1000276a4;
                                }
                                MEM[MEM[64] + 32] = address(v24);
                                MEM[MEM[64] + 32 + 32] = v25;
                                MEM[MEM[64] + 32 + 64] = 96;
                                MEM[MEM[64] + 32 + 96] = v31;
                                CALLDATACOPY(MEM[64] + 32 + 96 + 32, v32, v31);
                                MEM[MEM[64] + 32 + 96 + v31 + 32] = 0;
                                require(!((MEM[64] + ((v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = address(this);
                                MEM[MEM[64] + 4 + 32] = bool(v33);
                                MEM[MEM[64] + 4 + 64] = v23;
                                MEM[MEM[64] + 4 + 96] = address(v35);
                                MEM[MEM[64] + 4 + 128] = 160;
                                MEM[MEM[64] + 4 + 160] = (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                                MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + 4 + 160 + ((v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                                v37, /* uint256 */ v38, /* uint256 */ v38 = address(v34).call(MEM[MEM[64]:MEM[64] + v19c46_0x0V0x12c10x2d3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                if (!v37) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v38 = v39 = 0;
                                    v38 = v40 = 0;
                                    if (v37) {
                                        v41 = 64;
                                        if (64 > RETURNDATASIZE()) {
                                            v41 = v42 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v41 - MEM[64] >= 64);
                                        // Unknown jump to Block 0x29ae0x292dB0x12c10x2d3. Refer to 3-address code (TAC);
                                    }
                                    if (v33) {
                                    }
                                    require(v38 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                    v17 = v43 = 0 - v38;
                                    if (!v30) {
                                        require(msg.data[32 + v4] <= v43, V3TooLittleReceived());
                                    } else {
                                        require(23 <= v29);
                                        v20 = 23 + v28;
                                        v18 = v29 - 23;
                                    }
                                }
                            }
                        }
                    } else {
                        v1 = v44 = 1;
                        v0 = v45 = 0x195b4;
                        v46 = msg.data[v5];
                        v47 = v48 = msg.data[v5 + msg.data[v5 + 64]];
                        v49 = v5 + msg.data[v5 + 64] + 32;
                        require(v48 <= v48 + (v5 + msg.data[v5 + 64] - v5) + 32, Panic(17)); // arithmetic overflow or underflow
                        require(v3 >= v48 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                        if (!v46) {
                            v50 = 0x42e8(v49, v48);
                            require(!(address(msg.data[v50]) - msg.data[v50]));
                            v46 = v51 = 0x422b(msg.data[v50]);
                        }
                        v52 = 0x42e8(v49, v48);
                        require(!(address(msg.data[v52]) - msg.data[v52]));
                        v53 = 0x42f1(v49, v48);
                        require(!(address(msg.data[v53]) - msg.data[v53]));
                        v54 = v55 = 0x4c48(0x115934131916c8b277dd010ee02de363c09d037c, 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a, msg.data[v52], msg.data[v53]);
                        v56 = 0x42e8(v49, v48);
                        require(!(address(msg.data[v56]) - msg.data[v56]));
                        0x1bc1(msg.data[v56], v55, v46);
                        v57 = 0x4310(v48);
                        v58 = 0x4300(v49, v48, v57);
                        require(!(address(msg.data[v58]) - msg.data[v58]));
                        v59 = v60 = MEM[64];
                        v61 = address(msg.data[v58]).balanceOf(this).gas(msg.gas);
                        if (v61) {
                            v54 = v62 = 0;
                            if (v61) {
                                v4 = v63 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                                v64 = v65 = 11890;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v60 + 32 > uint64.max) | (v60 + 32 < v60)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v60 + 32;
                                    v66 = v67 = v60 + 32;
                                }
                            }
                            require(v47 >= 2, V2InvalidPath());
                            v68 = 0x42e8(v49, v47);
                            require(!(address(msg.data[v68]) - msg.data[v68]));
                            v69 = 0x42f1(v49, v47);
                            require(!(address(msg.data[v69]) - msg.data[v69]));
                            v70, v71 = v72 = 0x5516(msg.data[v68], msg.data[v69]);
                            v73 = v74 = 0;
                            while (v73 < v47 - 1) {
                                v75 = 0x4300(v49, v47, v73);
                                require(!(address(msg.data[v75]) - msg.data[v75]));
                                v76 = 0x4300(v49, v47, v73 + 1);
                                require(!(address(msg.data[v76]) - msg.data[v76]));
                                v77, /* uint112 */ v78, /* uint112 */ v79, /* uint32 */ v80 = address(v54).getReserves().gas(msg.gas);
                                if (v77) {
                                    v78 = v81 = 0;
                                    v79 = v82 = 0;
                                    if (v77) {
                                        v83 = v84 = 96;
                                        if (v84 > RETURNDATASIZE()) {
                                            v83 = v85 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v83 - MEM[64] >= 96);
                                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                        require(!(v79 - uint112(v79)));
                                        require(!(v80 - uint32(v80)));
                                    }
                                    v86 = v87 = uint112(v78);
                                    v86 = v88 = uint112(v79);
                                    if (0 != (address(msg.data[v75]) == address(v71))) {
                                    }
                                    v89, v90 = address(msg.data[v75]).balanceOf(address(v54)).gas(msg.gas);
                                    if (v89) {
                                        v90 = v91 = 0;
                                        if (v89) {
                                            if (32 > RETURNDATASIZE()) {
                                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                v92 = v93 = MEM[64] + RETURNDATASIZE();
                                            } else {
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                v92 = v94 = MEM[64] + 32;
                                            }
                                            require(v92 - MEM[64] >= 32);
                                        }
                                        v95 = v96 = !v86;
                                        if (bool(v86)) {
                                            v95 = v97 = !v86;
                                        }
                                        require(!v95, InvalidReserves());
                                        if (!(v90 - v86) | (997 == (v90 - v86) * 997 / (v90 - v86))) {
                                            v98 = _SafeMul((v90 - v86) * 997, v86);
                                            if ((1000 == v86 * 1000 / v86) | v96) {
                                                if (v86 * 1000 <= v86 * 1000 + (v90 - v86) * 997) {
                                                    v99 = v100 = _SafeDiv(v98, v86 * 1000 + (v90 - v86) * 997);
                                                    if (address(msg.data[v75]) != address(v71)) {
                                                        v99 = v101 = 0;
                                                    } else {
                                                        v99 = 0;
                                                    }
                                                    if (v73 >= v47 - 2) {
                                                        v54 = v102 = this;
                                                        v71 = v103 = 0;
                                                    } else {
                                                        v104 = 0x4300(v49, v47, v73 + 2);
                                                        require(!(address(msg.data[v104]) - msg.data[v104]));
                                                        v71 = v105, v54 = v106 = 0x5686(0x115934131916c8b277dd010ee02de363c09d037c, 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a, msg.data[v76], msg.data[v104]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v54)).code.size);
                                                    v107 = new uint256[](0);
                                                    MCOPY(v107.data, MEM[64] + 32, 0);
                                                    MEM[v107.data] = 0;
                                                    v108 = address(v54).swap(v99, v99, address(v54), v107).gas(msg.gas);
                                                    if (v108) {
                                                        if (v108) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                        }
                                                        v73 = v73 + 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(Panic(17));
                                    }
                                }
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            }
                            v59 = v109 = MEM[64];
                            v110 = address(msg.data[v58]).balanceOf(this).gas(msg.gas);
                            if (v110) {
                                v54 = v111 = 0;
                                if (v110) {
                                    v64 = 11797;
                                    v47 = 32;
                                    if (v47 <= RETURNDATASIZE()) {
                                        require(!((v109 + 32 > uint64.max) | (v109 + 32 < v109)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v109 + 32;
                                        v66 = v112 = v109 + v47;
                                    }
                                }
                            }
                            require(!((v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v59)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v59 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v66 = v113 = v59 + RETURNDATASIZE();
                            require(v66 - v59 >= 32);
                            v54 = v114 = MEM[v59];
                            // Unknown jump to Block ['0x2e150x2c2bB0x12ab0x2d3', '0x2e72B0x12ab0x2d3']. Refer to 3-address code (TAC);
                            v115 = _SafeSub(v54, v54);
                            require(v115 >= msg.data[v4 + 32], V2TooLittleReceived());
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    }
                } else {
                    v0 = v116 = 1;
                    v117 = msg.data[v5];
                    v118 = v119 = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
                    v120 = v121 = v5 + uint32(msg.data[v5 + 64]) + 32;
                    require(v3 + v5 >= v119 + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
                    if (!v117) {
                        require(v119 >= 20, SliceOutOfBounds());
                        v117 = v122 = 0x422b(msg.data[v121] >> 96);
                    }
                    while (1) {
                        v123, v124, v125, v126, v127, v128, v129, v4, v130 = 0x2996(66 <= v118, 0x19c66, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2, 10670, 10941, v120, v118, v4);
                        v131, v132 = 0x4c3a(v128, v129);
                        require(43 <= v131, SliceOutOfBounds());
                        v133 = address(msg.data[v132] >> 96) < address(msg.data[v132 + 23] >> 96);
                        v134 = 0x1a62(msg.data[v132] >> 96, msg.data[v132 + 23] >> 96, uint24(msg.data[v132] >> 72), v124, v125);
                        if (0 == v133) {
                            v135 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v135 = v136 = 0x1000276a4;
                        }
                        MEM[MEM[64] + 32] = address(v124);
                        MEM[MEM[64] + 32 + 32] = v125;
                        MEM[MEM[64] + 32 + 64] = 96;
                        MEM[MEM[64] + 32 + 96] = v131;
                        CALLDATACOPY(MEM[64] + 32 + 96 + 32, v132, v131);
                        MEM[MEM[64] + 32 + 96 + v131 + 32] = 0;
                        require(!((MEM[64] + ((v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(this);
                        MEM[MEM[64] + 4 + 32] = bool(v133);
                        MEM[MEM[64] + 4 + 64] = v123;
                        MEM[MEM[64] + 4 + 96] = address(v135);
                        MEM[MEM[64] + 4 + 128] = 160;
                        MEM[MEM[64] + 4 + 160] = (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                        MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                        MEM[MEM[64] + 4 + 160 + ((v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                        v137, /* uint256 */ v138, /* uint256 */ v138 = address(v134).call(MEM[MEM[64]:MEM[64] + v19c6f_0x0V0x12950x2d3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (!v137) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v138 = v139 = 0;
                            v138 = v140 = 0;
                            if (v137) {
                                v141 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v141 = v142 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v141 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v141 - MEM[64] >= 64);
                                // Unknown jump to Block 0x29ae0x2a54B0x12950x2d3. Refer to 3-address code (TAC);
                            }
                            if (v133) {
                            }
                            require(v138 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v117 = v143 = 0 - v138;
                            if (!v130) {
                                require(msg.data[32 + v4] <= v143, V3TooLittleReceived());
                            } else {
                                require(23 <= v129);
                                v120 = 23 + v128;
                                v118 = v129 - 23;
                            }
                        }
                    }
                }
            } else {
                v1 = v144 = 1;
                v0 = v145 = 0x1956c;
                v146 = msg.data[v5];
                v147 = v148 = msg.data[v5 + msg.data[v5 + 64]];
                v149 = v5 + msg.data[v5 + 64] + 32;
                require(v148 <= v148 + (v5 + msg.data[v5 + 64] - v5) + 32, Panic(17)); // arithmetic overflow or underflow
                require(v3 >= v148 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                if (!v146) {
                    v150 = 0x42e8(v149, v148);
                    require(!(address(msg.data[v150]) - msg.data[v150]));
                    v146 = v151 = 0x422b(msg.data[v150]);
                }
                v152 = 0x42e8(v149, v148);
                require(!(address(msg.data[v152]) - msg.data[v152]));
                v153 = 0x42f1(v149, v148);
                require(!(address(msg.data[v153]) - msg.data[v153]));
                v154 = v155 = 0x4c48(0x1097053fd2ea711dad45caccc45eff7548fcb362, 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d, msg.data[v152], msg.data[v153]);
                v156 = 0x42e8(v149, v148);
                require(!(address(msg.data[v156]) - msg.data[v156]));
                0x1bc1(msg.data[v156], v155, v146);
                v157 = 0x4310(v148);
                v158 = 0x4300(v149, v148, v157);
                require(!(address(msg.data[v158]) - msg.data[v158]));
                v159 = v160 = MEM[64];
                v161 = address(msg.data[v158]).balanceOf(this).gas(msg.gas);
                if (v161) {
                    v154 = v162 = 0;
                    if (v161) {
                        v4 = v163 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                        v164 = v165 = 12309;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v160 + 32 > uint64.max) | (v160 + 32 < v160)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v160 + 32;
                            v166 = v167 = v160 + 32;
                        }
                    }
                    require(v147 >= 2, V2InvalidPath());
                    v168 = 0x42e8(v149, v147);
                    require(!(address(msg.data[v168]) - msg.data[v168]));
                    v169 = 0x42f1(v149, v147);
                    require(!(address(msg.data[v169]) - msg.data[v169]));
                    v170, v171 = v172 = 0x5516(msg.data[v168], msg.data[v169]);
                    v173 = v174 = 0;
                    while (v173 < v147 - 1) {
                        v175 = 0x4300(v149, v147, v173);
                        require(!(address(msg.data[v175]) - msg.data[v175]));
                        v176 = 0x4300(v149, v147, v173 + 1);
                        require(!(address(msg.data[v176]) - msg.data[v176]));
                        v177, /* uint112 */ v178, /* uint112 */ v179, /* uint32 */ v180 = address(v154).getReserves().gas(msg.gas);
                        if (v177) {
                            v178 = v181 = 0;
                            v179 = v182 = 0;
                            if (v177) {
                                v183 = v184 = 96;
                                if (v184 > RETURNDATASIZE()) {
                                    v183 = v185 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v183 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v183 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v183 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v183 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v179 - uint112(v179)));
                                require(!(v180 - uint32(v180)));
                            }
                            v186 = v187 = uint112(v178);
                            v186 = v188 = uint112(v179);
                            if (0 != (address(msg.data[v175]) == address(v171))) {
                            }
                            v189, v190 = address(msg.data[v175]).balanceOf(address(v154)).gas(msg.gas);
                            if (v189) {
                                v190 = v191 = 0;
                                if (v189) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        v192 = v193 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v192 = v194 = MEM[64] + 32;
                                    }
                                    require(v192 - MEM[64] >= 32);
                                }
                                v195 = v196 = !v186;
                                if (bool(v186)) {
                                    v195 = v197 = !v186;
                                }
                                require(!v195, InvalidReserves());
                                if (!(v190 - v186) | (997 == (v190 - v186) * 997 / (v190 - v186))) {
                                    v198 = _SafeMul((v190 - v186) * 997, v186);
                                    if ((1000 == v186 * 1000 / v186) | v196) {
                                        if (v186 * 1000 <= v186 * 1000 + (v190 - v186) * 997) {
                                            v199 = v200 = _SafeDiv(v198, v186 * 1000 + (v190 - v186) * 997);
                                            if (address(msg.data[v175]) != address(v171)) {
                                                v199 = v201 = 0;
                                            } else {
                                                v199 = 0;
                                            }
                                            if (v173 >= v147 - 2) {
                                                v154 = v202 = this;
                                                v171 = v203 = 0;
                                            } else {
                                                v204 = 0x4300(v149, v147, v173 + 2);
                                                require(!(address(msg.data[v204]) - msg.data[v204]));
                                                v171 = v205, v154 = v206 = 0x5686(0x1097053fd2ea711dad45caccc45eff7548fcb362, 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d, msg.data[v176], msg.data[v204]);
                                            }
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                            require((address(v154)).code.size);
                                            v207 = new uint256[](0);
                                            MCOPY(v207.data, MEM[64] + 32, 0);
                                            MEM[v207.data] = 0;
                                            v208 = address(v154).swap(v199, v199, address(v154), v207).gas(msg.gas);
                                            if (v208) {
                                                if (v208) {
                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(0 >= 0);
                                                }
                                                v173 = v173 + 1;
                                            }
                                        }
                                    }
                                }
                                revert(Panic(17));
                            }
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    }
                    v159 = v209 = MEM[64];
                    v210 = address(msg.data[v158]).balanceOf(this).gas(msg.gas);
                    if (v210) {
                        v154 = v211 = 0;
                        if (v210) {
                            v164 = 11797;
                            v147 = 32;
                            if (v147 <= RETURNDATASIZE()) {
                                require(!((v209 + 32 > uint64.max) | (v209 + 32 < v209)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v209 + 32;
                                v166 = v212 = v209 + v147;
                            }
                        }
                    }
                    require(!((v159 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v159 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v159)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v159 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v166 = v213 = v159 + RETURNDATASIZE();
                    require(v166 - v159 >= 32);
                    v154 = v214 = MEM[v159];
                    // Unknown jump to Block ['0x2e150x2e98B0x127f0x2d3', '0x3015B0x127f0x2d3']. Refer to 3-address code (TAC);
                    v215 = _SafeSub(v154, v154);
                    require(v215 >= msg.data[v4 + 32], V2TooLittleReceived());
                }
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            }
        } else if (v6 >= 12) {
            if (v6 - 12) {
                if (v6 - 13) {
                    if (v6 - 14) {
                        if (!(v6 - 15)) {
                            v0 = v216 = 1;
                            v217 = 0x345e(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64], msg.data[v5 + 96], msg.data[v5 + 128]);
                        }
                    } else {
                        v0 = v218 = 1;
                        v219 = 0x35c5(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64], msg.data[v5 + 96], msg.data[v5 + 128]);
                        // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                    }
                } else {
                    v0 = v220 = 1;
                    0x3641(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64], msg.data[v5 + 96], msg.data[v5 + 128], msg.data[v5 + 160]);
                    // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                }
            } else {
                v0 = v221 = 1;
                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                MEM[MEM[64] + 36] = v3;
                CALLDATACOPY(MEM[64] + 36 + 32, v5, v3);
                MEM[MEM[64] + 36 + v3 + 32] = 0;
                v222 = address(0x4444c5dc75cb358380d2e3de08a90).call(v223, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (!v222) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else if (v222) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v224.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v225 = new bytes[](v224.length);
                    require(!((v225 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v224.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v225 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v224.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v225)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v224.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v225.data, v224.data, v224.length);
                    v225[v224.length] = 0;
                }
            }
        } else if (v6 >= 8) {
            if (v6 - 8) {
                if (v6 - 9) {
                    if (v6 - 10) {
                        if (!(v6 - 11)) {
                            v0 = v226 = 1;
                            v227 = msg.data[v5 + msg.data[v5 + 64]];
                            if (v227 <= v227 + (v5 + msg.data[v5 + 64] - v5) + 32) {
                                require(v3 >= v227 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                                v228 = v229 = 0;
                                require(v227 >= 2, InvalidPath());
                                v230 = v231 = msg.data[v5];
                                v232 = v227 - 1;
                                if (v232 <= v227) {
                                    while (1) {
                                        revert(Panic(17));
                                        if (v232) {
                                            if (v232 - 1 <= v232) {
                                                v233 = 0x4300(v5 + msg.data[v5 + 64] + 32, v227, v232 - 1);
                                                require(!(address(msg.data[v233]) - msg.data[v233]));
                                                v234 = 0x4300(v5 + msg.data[v5 + 64] + 32, v227, v232);
                                                require(!(address(msg.data[v234]) - msg.data[v234]));
                                                v235, v236, v228 = v237 = 0x569c(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v233], msg.data[v234]);
                                                v230 = 0x578b(v230, v236, v235);
                                                if (v232) {
                                                    v232 += uint256.max;
                                                }
                                            }
                                        } else {
                                            break;
                                        }
                                    }
                                    require(v230 <= msg.data[32 + v5], V2TooMuchRequested());
                                    v238 = 0x42e8(v5 + msg.data[v5 + 64] + 32, v227);
                                    require(!(address(msg.data[v238]) - msg.data[v238]));
                                    0x1bc1(msg.data[v238], v228, v230);
                                    require(v227 >= 2, V2InvalidPath());
                                    v239 = 0x42e8(v5 + msg.data[v5 + 64] + 32, v227);
                                    require(!(address(msg.data[v239]) - msg.data[v239]));
                                    v240 = 0x42f1(v5 + msg.data[v5 + 64] + 32, v227);
                                    require(!(address(msg.data[v240]) - msg.data[v240]));
                                    v241, v242 = v243 = 0x5516(msg.data[v239], msg.data[v240]);
                                    v244 = v245 = 0;
                                    while (v244 < v227 - 1) {
                                        v246 = 0x4300(v5 + msg.data[v5 + 64] + 32, v227, v244);
                                        require(!(address(msg.data[v246]) - msg.data[v246]));
                                        v247 = 0x4300(v5 + msg.data[v5 + 64] + 32, v227, v244 + 1);
                                        require(!(address(msg.data[v247]) - msg.data[v247]));
                                        v248, /* uint112 */ v249, /* uint112 */ v250, /* uint32 */ v251 = address(v228).getReserves().gas(msg.gas);
                                        if (v248) {
                                            v249 = v252 = 0;
                                            v250 = v253 = 0;
                                            if (v248) {
                                                v254 = v255 = 96;
                                                if (v255 > RETURNDATASIZE()) {
                                                    v254 = v256 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (v254 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + v254 - MEM[64] >= 96);
                                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                                require(!(v250 - uint112(v250)));
                                                require(!(v251 - uint32(v251)));
                                            }
                                            v257 = v258 = uint112(v249);
                                            v257 = v259 = uint112(v250);
                                            if (0 != (address(msg.data[v246]) == address(v242))) {
                                            }
                                            v260, v261 = address(msg.data[v246]).balanceOf(address(v228)).gas(msg.gas);
                                            if (v260) {
                                                v261 = v262 = 0;
                                                if (v260) {
                                                    if (32 > RETURNDATASIZE()) {
                                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        v263 = v264 = MEM[64] + RETURNDATASIZE();
                                                    } else {
                                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + 32;
                                                        v263 = v265 = MEM[64] + 32;
                                                    }
                                                    require(v263 - MEM[64] >= 32);
                                                }
                                                v266 = v267 = !v257;
                                                if (bool(v257)) {
                                                    v266 = v268 = !v257;
                                                }
                                                require(!v266, InvalidReserves());
                                                if (!(v261 - v257) | (997 == (v261 - v257) * 997 / (v261 - v257))) {
                                                    v269 = _SafeMul((v261 - v257) * 997, v257);
                                                    if ((1000 == v257 * 1000 / v257) | v267) {
                                                        if (v257 * 1000 <= v257 * 1000 + (v261 - v257) * 997) {
                                                            v270 = v271 = _SafeDiv(v269, v257 * 1000 + (v261 - v257) * 997);
                                                            if (address(msg.data[v246]) != address(v242)) {
                                                                v270 = v272 = 0;
                                                            } else {
                                                                v270 = 0;
                                                            }
                                                            if (v244 >= v227 - 2) {
                                                                v228 = v273 = this;
                                                                v242 = v274 = 0;
                                                            } else {
                                                                v275 = 0x4300(v5 + msg.data[v5 + 64] + 32, v227, v244 + 2);
                                                                require(!(address(msg.data[v275]) - msg.data[v275]));
                                                                v242 = v276, v228 = v277 = 0x5686(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v247], msg.data[v275]);
                                                            }
                                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                            require((address(v228)).code.size);
                                                            v278 = new uint256[](0);
                                                            MCOPY(v278.data, MEM[64] + 32, 0);
                                                            MEM[v278.data] = 0;
                                                            v279 = address(v228).swap(v270, v270, address(v228), v278).gas(msg.gas);
                                                            if (v279) {
                                                                if (v279) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    require(0 >= 0);
                                                                }
                                                                v244 = v244 + 1;
                                                            }
                                                        }
                                                    }
                                                }
                                                revert(Panic(17));
                                            }
                                        }
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    }
                                }
                            }
                        }
                    } else {
                        v1 = v280 = 1;
                        v0 = v281 = 0x19492;
                        v282 = msg.data[v5];
                        v283 = v284 = msg.data[v5 + msg.data[v5 + 64]];
                        v285 = v5 + msg.data[v5 + 64] + 32;
                        require(v284 <= v284 + (v5 + msg.data[v5 + 64] - v5) + 32, Panic(17)); // arithmetic overflow or underflow
                        require(v3 >= v284 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                        if (!v282) {
                            v286 = 0x42e8(v285, v284);
                            require(!(address(msg.data[v286]) - msg.data[v286]));
                            v282 = v287 = 0x422b(msg.data[v286]);
                        }
                        v288 = 0x42e8(v285, v284);
                        require(!(address(msg.data[v288]) - msg.data[v288]));
                        v289 = 0x42f1(v285, v284);
                        require(!(address(msg.data[v289]) - msg.data[v289]));
                        v290 = v291 = 0x4c48(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v288], msg.data[v289]);
                        v292 = 0x42e8(v285, v284);
                        require(!(address(msg.data[v292]) - msg.data[v292]));
                        0x1bc1(msg.data[v292], v291, v282);
                        v293 = 0x4310(v284);
                        v294 = 0x4300(v285, v284, v293);
                        require(!(address(msg.data[v294]) - msg.data[v294]));
                        v295 = v296 = MEM[64];
                        v297 = address(msg.data[v294]).balanceOf(this).gas(msg.gas);
                        if (v297) {
                            v290 = v298 = 0;
                            if (v297) {
                                v4 = v299 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                                v300 = v301 = 12723;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v296 + 32 > uint64.max) | (v296 + 32 < v296)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v296 + 32;
                                    v302 = v303 = v296 + 32;
                                }
                            }
                            require(v283 >= 2, V2InvalidPath());
                            v304 = 0x42e8(v285, v283);
                            require(!(address(msg.data[v304]) - msg.data[v304]));
                            v305 = 0x42f1(v285, v283);
                            require(!(address(msg.data[v305]) - msg.data[v305]));
                            v306, v307 = v308 = 0x5516(msg.data[v304], msg.data[v305]);
                            v309 = v310 = 0;
                            while (v309 < v283 - 1) {
                                v311 = 0x4300(v285, v283, v309);
                                require(!(address(msg.data[v311]) - msg.data[v311]));
                                v312 = 0x4300(v285, v283, v309 + 1);
                                require(!(address(msg.data[v312]) - msg.data[v312]));
                                v313, /* uint112 */ v314, /* uint112 */ v315, /* uint32 */ v316 = address(v290).getReserves().gas(msg.gas);
                                if (v313) {
                                    v314 = v317 = 0;
                                    v315 = v318 = 0;
                                    if (v313) {
                                        v319 = v320 = 96;
                                        if (v320 > RETURNDATASIZE()) {
                                            v319 = v321 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v319 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v319 - MEM[64] >= 96);
                                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                        require(!(v315 - uint112(v315)));
                                        require(!(v316 - uint32(v316)));
                                    }
                                    v322 = v323 = uint112(v314);
                                    v322 = v324 = uint112(v315);
                                    if (0 != (address(msg.data[v311]) == address(v307))) {
                                    }
                                    v325, v326 = address(msg.data[v311]).balanceOf(address(v290)).gas(msg.gas);
                                    if (v325) {
                                        v326 = v327 = 0;
                                        if (v325) {
                                            if (32 > RETURNDATASIZE()) {
                                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                v328 = v329 = MEM[64] + RETURNDATASIZE();
                                            } else {
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                v328 = v330 = MEM[64] + 32;
                                            }
                                            require(v328 - MEM[64] >= 32);
                                        }
                                        v331 = v332 = !v322;
                                        if (bool(v322)) {
                                            v331 = v333 = !v322;
                                        }
                                        require(!v331, InvalidReserves());
                                        if (!(v326 - v322) | (997 == (v326 - v322) * 997 / (v326 - v322))) {
                                            v334 = _SafeMul((v326 - v322) * 997, v322);
                                            if ((1000 == v322 * 1000 / v322) | v332) {
                                                if (v322 * 1000 <= v322 * 1000 + (v326 - v322) * 997) {
                                                    v335 = v336 = _SafeDiv(v334, v322 * 1000 + (v326 - v322) * 997);
                                                    if (address(msg.data[v311]) != address(v307)) {
                                                        v335 = v337 = 0;
                                                    } else {
                                                        v335 = 0;
                                                    }
                                                    if (v309 >= v283 - 2) {
                                                        v290 = v338 = this;
                                                        v307 = v339 = 0;
                                                    } else {
                                                        v340 = 0x4300(v285, v283, v309 + 2);
                                                        require(!(address(msg.data[v340]) - msg.data[v340]));
                                                        v307 = v341, v290 = v342 = 0x5686(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v312], msg.data[v340]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v290)).code.size);
                                                    v343 = new uint256[](0);
                                                    MCOPY(v343.data, MEM[64] + 32, 0);
                                                    MEM[v343.data] = 0;
                                                    v344 = address(v290).swap(v335, v335, address(v290), v343).gas(msg.gas);
                                                    if (v344) {
                                                        if (v344) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                        }
                                                        v309 = v309 + 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(Panic(17));
                                    }
                                }
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            }
                            v295 = v345 = MEM[64];
                            v346 = address(msg.data[v294]).balanceOf(this).gas(msg.gas);
                            if (v346) {
                                v290 = v347 = 0;
                                if (v346) {
                                    v300 = 11797;
                                    v283 = 32;
                                    if (v283 <= RETURNDATASIZE()) {
                                        require(!((v345 + 32 > uint64.max) | (v345 + 32 < v345)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v345 + 32;
                                        v302 = v348 = v345 + v283;
                                    }
                                }
                            }
                            require(!((v295 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v295 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v295)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v295 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v302 = v349 = v295 + RETURNDATASIZE();
                            require(v302 - v295 >= 32);
                            v290 = v350 = MEM[v295];
                            // Unknown jump to Block ['0x2e150x3036B0x11a40x2d3', '0x31b3B0x11a40x2d3']. Refer to 3-address code (TAC);
                            v351 = _SafeSub(v290, v290);
                            require(v351 >= msg.data[v4 + 32], V2TooLittleReceived());
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    }
                } else {
                    v0 = v352 = 1;
                    require(v3 + v5 >= uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
                    _shibaswapV2SwapCallback = msg.data[v5 + 32];
                    v353 = 0x1c25(msg.data[v5]);
                    v354 = 0x176f(v353);
                    require(43 <= uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]), SliceOutOfBounds());
                    v355 = address(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32 + 23] >> 96) < address(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 96);
                    v356 = 0x1a62(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 96, msg.data[v5 + uint32(msg.data[v5 + 64]) + 32 + 23] >> 96, uint24(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 72), 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                    if (0 == v355) {
                        v357 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v357 = v358 = 0x1000276a4;
                    }
                    MEM[MEM[64] + 32] = address(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f);
                    MEM[MEM[64] + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                    MEM[MEM[64] + 32 + 64] = 96;
                    MEM[MEM[64] + 32 + 96] = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v5 + uint32(msg.data[v5 + 64]) + 32, uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]));
                    MEM[MEM[64] + 32 + 96 + uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 32] = 0;
                    require(!((MEM[64] + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = address(this);
                    MEM[MEM[64] + 4 + 32] = bool(v355);
                    MEM[MEM[64] + 4 + 64] = v354;
                    MEM[MEM[64] + 4 + 96] = address(v357);
                    MEM[MEM[64] + 4 + 128] = 160;
                    MEM[MEM[64] + 4 + 160] = (uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                    MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                    MEM[MEM[64] + 4 + 160 + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                    v359, /* uint256 */ v360, /* uint256 */ v361 = address(v356).call(MEM[MEM[64]:MEM[64] + uint32(msg.data[vfe2V0xff7V0x102c0x2d3 + uint32(msg.data[vfe2V0xff7V0x102c0x2d3 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                    if (!v359) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v360 = v362 = 0;
                        v361 = v363 = 0;
                        if (v359) {
                            v364 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v364 = v365 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v364 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v364 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v364 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v364 - MEM[64] >= 64);
                        }
                        if (!v355) {
                            v366 = v367 = 0x176f(v360);
                        } else {
                            v366 = v368 = 0x176f(v361);
                        }
                        require(!(v366 - msg.data[v5]), V3InvalidAmountOut());
                        _shibaswapV2SwapCallback = 0;
                    }
                }
            } else {
                v0 = v369 = 1;
                v370 = msg.data[v5];
                v371 = v372 = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
                v373 = v374 = v5 + uint32(msg.data[v5 + 64]) + 32;
                require(v3 + v5 >= v372 + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
                if (!v370) {
                    require(v372 >= 20, SliceOutOfBounds());
                    v370 = v375 = 0x422b(msg.data[v374] >> 96);
                }
                while (1) {
                    v376, v377, v378, v379, v380, v381, v382, v4, v383 = 0x2996(66 <= v371, 0x19c8f, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54, 10670, 11098, v373, v371, v4);
                    v384, v385 = 0x4c3a(v381, v382);
                    require(43 <= v384, SliceOutOfBounds());
                    v386 = address(msg.data[v385] >> 96) < address(msg.data[v385 + 23] >> 96);
                    v387 = 0x1a62(msg.data[v385] >> 96, msg.data[v385 + 23] >> 96, uint24(msg.data[v385] >> 72), v377, v378);
                    if (0 == v386) {
                        v388 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v388 = v389 = 0x1000276a4;
                    }
                    MEM[MEM[64] + 32] = address(v377);
                    MEM[MEM[64] + 32 + 32] = v378;
                    MEM[MEM[64] + 32 + 64] = 96;
                    MEM[MEM[64] + 32 + 96] = v384;
                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v385, v384);
                    MEM[MEM[64] + 32 + 96 + v384 + 32] = 0;
                    require(!((MEM[64] + ((v384 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v384 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = address(this);
                    MEM[MEM[64] + 4 + 32] = bool(v386);
                    MEM[MEM[64] + 4 + 64] = v376;
                    MEM[MEM[64] + 4 + 96] = address(v388);
                    MEM[MEM[64] + 4 + 128] = 160;
                    MEM[MEM[64] + 4 + 160] = (v384 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                    MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v384 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                    MEM[MEM[64] + 4 + 160 + ((v384 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                    v390, /* uint256 */ v391, /* uint256 */ v391 = address(v387).call(MEM[MEM[64]:MEM[64] + v19c98_0x0V0x11780x2d3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                    if (!v390) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v391 = v392 = 0;
                        v391 = v393 = 0;
                        if (v390) {
                            v394 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v394 = v395 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v394 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v394 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v394 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v394 - MEM[64] >= 64);
                            // Unknown jump to Block 0x29ae0x2af1B0x11780x2d3. Refer to 3-address code (TAC);
                        }
                        if (v386) {
                        }
                        require(v391 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v370 = v396 = 0 - v391;
                        if (!v383) {
                            require(msg.data[32 + v4] <= v396, V3TooLittleReceived());
                        } else {
                            require(23 <= v382);
                            v373 = 23 + v381;
                            v371 = v382 - 23;
                        }
                    }
                }
            }
        } else if (v6 >= 4) {
            if (v6 - 4) {
                if (v6 - 5) {
                    if (v6 - 6) {
                        if (!(v6 - 7)) {
                            v0 = v397 = 1;
                            0x3c8c(msg.data[v5], msg.data[v5 + 32]);
                        }
                    } else {
                        v0 = v398 = 1;
                        0x3dec(msg.data[v5], msg.data[v5 + 32]);
                        // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                    }
                } else {
                    v0 = v399 = 1;
                    v400 = msg.data[v5 + msg.data[v5 + 64]];
                    if (v400 <= v400 + (v5 + msg.data[v5 + 64] - v5) + 32) {
                        require(v3 >= v400 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                        v401 = v402 = 0;
                        require(v400 >= 2, InvalidPath());
                        v403 = v404 = msg.data[v5];
                        v405 = v400 - 1;
                        if (v405 <= v400) {
                            while (1) {
                                revert(Panic(17));
                                if (v405) {
                                    if (v405 - 1 <= v405) {
                                        v406 = 0x4300(v5 + msg.data[v5 + 64] + 32, v400, v405 - 1);
                                        require(!(address(msg.data[v406]) - msg.data[v406]));
                                        v407 = 0x4300(v5 + msg.data[v5 + 64] + 32, v400, v405);
                                        require(!(address(msg.data[v407]) - msg.data[v407]));
                                        v408, v409, v401 = v410 = 0x569c(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v406], msg.data[v407]);
                                        v403 = 0x578b(v403, v409, v408);
                                        if (v405) {
                                            v405 += uint256.max;
                                        }
                                    }
                                } else {
                                    break;
                                }
                            }
                            require(v403 <= msg.data[32 + v5], V2TooMuchRequested());
                            v411 = 0x42e8(v5 + msg.data[v5 + 64] + 32, v400);
                            require(!(address(msg.data[v411]) - msg.data[v411]));
                            0x1bc1(msg.data[v411], v401, v403);
                            require(v400 >= 2, V2InvalidPath());
                            v412 = 0x42e8(v5 + msg.data[v5 + 64] + 32, v400);
                            require(!(address(msg.data[v412]) - msg.data[v412]));
                            v413 = 0x42f1(v5 + msg.data[v5 + 64] + 32, v400);
                            require(!(address(msg.data[v413]) - msg.data[v413]));
                            v414, v415 = v416 = 0x5516(msg.data[v412], msg.data[v413]);
                            v417 = v418 = 0;
                            while (v417 < v400 - 1) {
                                v419 = 0x4300(v5 + msg.data[v5 + 64] + 32, v400, v417);
                                require(!(address(msg.data[v419]) - msg.data[v419]));
                                v420 = 0x4300(v5 + msg.data[v5 + 64] + 32, v400, v417 + 1);
                                require(!(address(msg.data[v420]) - msg.data[v420]));
                                v421, /* uint112 */ v422, /* uint112 */ v423, /* uint32 */ v424 = address(v401).getReserves().gas(msg.gas);
                                if (v421) {
                                    v422 = v425 = 0;
                                    v423 = v426 = 0;
                                    if (v421) {
                                        v427 = v428 = 96;
                                        if (v428 > RETURNDATASIZE()) {
                                            v427 = v429 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v427 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v427 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v427 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v427 - MEM[64] >= 96);
                                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                        require(!(v423 - uint112(v423)));
                                        require(!(v424 - uint32(v424)));
                                    }
                                    v430 = v431 = uint112(v422);
                                    v430 = v432 = uint112(v423);
                                    if (0 != (address(msg.data[v419]) == address(v415))) {
                                    }
                                    v433, v434 = address(msg.data[v419]).balanceOf(address(v401)).gas(msg.gas);
                                    if (v433) {
                                        v434 = v435 = 0;
                                        if (v433) {
                                            if (32 > RETURNDATASIZE()) {
                                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                v436 = v437 = MEM[64] + RETURNDATASIZE();
                                            } else {
                                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + 32;
                                                v436 = v438 = MEM[64] + 32;
                                            }
                                            require(v436 - MEM[64] >= 32);
                                        }
                                        v439 = v440 = !v430;
                                        if (bool(v430)) {
                                            v439 = v441 = !v430;
                                        }
                                        require(!v439, InvalidReserves());
                                        if (!(v434 - v430) | (997 == (v434 - v430) * 997 / (v434 - v430))) {
                                            v442 = _SafeMul((v434 - v430) * 997, v430);
                                            if ((1000 == v430 * 1000 / v430) | v440) {
                                                if (v430 * 1000 <= v430 * 1000 + (v434 - v430) * 997) {
                                                    v443 = v444 = _SafeDiv(v442, v430 * 1000 + (v434 - v430) * 997);
                                                    if (address(msg.data[v419]) != address(v415)) {
                                                        v443 = v445 = 0;
                                                    } else {
                                                        v443 = 0;
                                                    }
                                                    if (v417 >= v400 - 2) {
                                                        v401 = v446 = this;
                                                        v415 = v447 = 0;
                                                    } else {
                                                        v448 = 0x4300(v5 + msg.data[v5 + 64] + 32, v400, v417 + 2);
                                                        require(!(address(msg.data[v448]) - msg.data[v448]));
                                                        v415 = v449, v401 = v450 = 0x5686(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v420], msg.data[v448]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v401)).code.size);
                                                    v451 = new uint256[](0);
                                                    MCOPY(v451.data, MEM[64] + 32, 0);
                                                    MEM[v451.data] = 0;
                                                    v452 = address(v401).swap(v443, v443, address(v401), v451).gas(msg.gas);
                                                    if (v452) {
                                                        if (v452) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                        }
                                                        v417 = v417 + 1;
                                                    }
                                                }
                                            }
                                        }
                                        revert(Panic(17));
                                    }
                                }
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            }
                        }
                    }
                }
            } else {
                v1 = v453 = 1;
                v0 = v454 = 0x193ba;
                v455 = msg.data[v5];
                v456 = v457 = msg.data[v5 + msg.data[v5 + 64]];
                v458 = v5 + msg.data[v5 + 64] + 32;
                require(v457 <= v457 + (v5 + msg.data[v5 + 64] - v5) + 32, Panic(17)); // arithmetic overflow or underflow
                require(v3 >= v457 + (v5 + msg.data[v5 + 64] - v5) + 32, SliceOutOfBounds());
                if (!v455) {
                    v459 = 0x42e8(v458, v457);
                    require(!(address(msg.data[v459]) - msg.data[v459]));
                    v455 = v460 = 0x422b(msg.data[v459]);
                }
                v461 = 0x42e8(v458, v457);
                require(!(address(msg.data[v461]) - msg.data[v461]));
                v462 = 0x42f1(v458, v457);
                require(!(address(msg.data[v462]) - msg.data[v462]));
                v463 = v464 = 0x4c48(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v461], msg.data[v462]);
                v465 = 0x42e8(v458, v457);
                require(!(address(msg.data[v465]) - msg.data[v465]));
                0x1bc1(msg.data[v465], v464, v455);
                v466 = 0x4310(v457);
                v467 = 0x4300(v458, v457, v466);
                require(!(address(msg.data[v467]) - msg.data[v467]));
                v468 = v469 = MEM[64];
                v470 = address(msg.data[v467]).balanceOf(this).gas(msg.gas);
                if (v470) {
                    v463 = v471 = 0;
                    if (v470) {
                        v4 = v472 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                        v473 = v474 = 13137;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v469 + 32 > uint64.max) | (v469 + 32 < v469)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v469 + 32;
                            v475 = v476 = v469 + 32;
                        }
                    }
                    require(v456 >= 2, V2InvalidPath());
                    v477 = 0x42e8(v458, v456);
                    require(!(address(msg.data[v477]) - msg.data[v477]));
                    v478 = 0x42f1(v458, v456);
                    require(!(address(msg.data[v478]) - msg.data[v478]));
                    v479, v480 = v481 = 0x5516(msg.data[v477], msg.data[v478]);
                    v482 = v483 = 0;
                    while (v482 < v456 - 1) {
                        v484 = 0x4300(v458, v456, v482);
                        require(!(address(msg.data[v484]) - msg.data[v484]));
                        v485 = 0x4300(v458, v456, v482 + 1);
                        require(!(address(msg.data[v485]) - msg.data[v485]));
                        v486, /* uint112 */ v487, /* uint112 */ v488, /* uint32 */ v489 = address(v463).getReserves().gas(msg.gas);
                        if (v486) {
                            v487 = v490 = 0;
                            v488 = v491 = 0;
                            if (v486) {
                                v492 = v493 = 96;
                                if (v493 > RETURNDATASIZE()) {
                                    v492 = v494 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v492 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v492 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v492 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v492 - MEM[64] >= 96);
                                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                require(!(v488 - uint112(v488)));
                                require(!(v489 - uint32(v489)));
                            }
                            v495 = v496 = uint112(v487);
                            v495 = v497 = uint112(v488);
                            if (0 != (address(msg.data[v484]) == address(v480))) {
                            }
                            v498, v499 = address(msg.data[v484]).balanceOf(address(v463)).gas(msg.gas);
                            if (v498) {
                                v499 = v500 = 0;
                                if (v498) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        v501 = v502 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v501 = v503 = MEM[64] + 32;
                                    }
                                    require(v501 - MEM[64] >= 32);
                                }
                                v504 = v505 = !v495;
                                if (bool(v495)) {
                                    v504 = v506 = !v495;
                                }
                                require(!v504, InvalidReserves());
                                if (!(v499 - v495) | (997 == (v499 - v495) * 997 / (v499 - v495))) {
                                    v507 = _SafeMul((v499 - v495) * 997, v495);
                                    if ((1000 == v495 * 1000 / v495) | v505) {
                                        if (v495 * 1000 <= v495 * 1000 + (v499 - v495) * 997) {
                                            v508 = v509 = _SafeDiv(v507, v495 * 1000 + (v499 - v495) * 997);
                                            if (address(msg.data[v484]) != address(v480)) {
                                                v508 = v510 = 0;
                                            } else {
                                                v508 = 0;
                                            }
                                            if (v482 >= v456 - 2) {
                                                v463 = v511 = this;
                                                v480 = v512 = 0;
                                            } else {
                                                v513 = 0x4300(v458, v456, v482 + 2);
                                                require(!(address(msg.data[v513]) - msg.data[v513]));
                                                v480 = v514, v463 = v515 = 0x5686(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v485], msg.data[v513]);
                                            }
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                            require((address(v463)).code.size);
                                            v516 = new uint256[](0);
                                            MCOPY(v516.data, MEM[64] + 32, 0);
                                            MEM[v516.data] = 0;
                                            v517 = address(v463).swap(v508, v508, address(v463), v516).gas(msg.gas);
                                            if (v517) {
                                                if (v517) {
                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(0 >= 0);
                                                }
                                                v482 = v482 + 1;
                                            }
                                        }
                                    }
                                }
                                revert(Panic(17));
                            }
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    }
                    v468 = v518 = MEM[64];
                    v519 = address(msg.data[v467]).balanceOf(this).gas(msg.gas);
                    if (v519) {
                        v463 = v520 = 0;
                        if (v519) {
                            v473 = 11797;
                            v456 = 32;
                            if (v456 <= RETURNDATASIZE()) {
                                require(!((v518 + 32 > uint64.max) | (v518 + 32 < v518)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v518 + 32;
                                v475 = v521 = v518 + v456;
                            }
                        }
                    }
                    require(!((v468 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v468 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v468)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v468 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v475 = v522 = v468 + RETURNDATASIZE();
                    require(v475 - v468 >= 32);
                    v463 = v523 = MEM[v468];
                    // Unknown jump to Block ['0x2e150x31d4B0x11110x2d3', '0x3351B0x11110x2d3']. Refer to 3-address code (TAC);
                    v524 = _SafeSub(v463, v463);
                    require(v524 >= msg.data[v4 + 32], V2TooLittleReceived());
                }
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            }
        } else if (v6) {
            if (v6 - 1) {
                if (v6 - 2) {
                    if (!(v6 - 3)) {
                        v0 = v525 = 1;
                        0x1bc1(msg.data[v5], msg.data[v5 + 32], msg.data[v5 + 64]);
                    }
                } else {
                    v0 = v526 = 1;
                    0x4045(block.coinbase, msg.data[v5]);
                    // Unknown jump to Block 0x107f0x2d3. Refer to 3-address code (TAC);
                }
            } else {
                v0 = v527 = 1;
                require(v3 + v5 >= uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
                _shibaswapV2SwapCallback = msg.data[v5 + 32];
                v528 = 0x1c25(msg.data[v5]);
                v529 = 0x176f(v528);
                require(43 <= uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]), SliceOutOfBounds());
                v530 = address(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32 + 23] >> 96) < address(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 96);
                v531 = 0x1a62(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 96, msg.data[v5 + uint32(msg.data[v5 + 64]) + 32 + 23] >> 96, uint24(msg.data[v5 + uint32(msg.data[v5 + 64]) + 32] >> 72), 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                if (0 == v530) {
                    v532 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v532 = v533 = 0x1000276a4;
                }
                MEM[MEM[64] + 32] = address(0x1f98431c8ad98523631ae4a59f267346ea31f984);
                MEM[MEM[64] + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                MEM[MEM[64] + 32 + 64] = 96;
                MEM[MEM[64] + 32 + 96] = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
                CALLDATACOPY(MEM[64] + 32 + 96 + 32, v5 + uint32(msg.data[v5 + 64]) + 32, uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]));
                MEM[MEM[64] + 32 + 96 + uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 32] = 0;
                require(!((MEM[64] + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = address(this);
                MEM[MEM[64] + 4 + 32] = bool(v530);
                MEM[MEM[64] + 4 + 64] = v529;
                MEM[MEM[64] + 4 + 96] = address(v532);
                MEM[MEM[64] + 4 + 128] = 160;
                MEM[MEM[64] + 4 + 160] = (uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                MEM[MEM[64] + 4 + 160 + ((uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                v534, /* uint256 */ v535, /* uint256 */ v536 = address(v531).call(MEM[MEM[64]:MEM[64] + uint32(msg.data[vfe2V0xff7V0x102c0x2d3 + uint32(msg.data[vfe2V0xff7V0x102c0x2d3 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                if (!v534) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v535 = v537 = 0;
                    v536 = v538 = 0;
                    if (v534) {
                        v539 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v539 = v540 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v539 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v539 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v539 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v539 - MEM[64] >= 64);
                    }
                    if (!v530) {
                        v541 = v542 = 0x176f(v535);
                    } else {
                        v541 = v543 = 0x176f(v536);
                    }
                    require(!(v541 - msg.data[v5]), V3InvalidAmountOut());
                    _shibaswapV2SwapCallback = 0;
                }
            }
        } else {
            v0 = v544 = 1;
            v545 = msg.data[v5];
            v546 = v547 = uint32(msg.data[v5 + uint32(msg.data[v5 + 64])]);
            v548 = v549 = v5 + uint32(msg.data[v5 + 64]) + 32;
            require(v3 + v5 >= v547 + (v5 + uint32(msg.data[v5 + 64])) + 32, SliceOutOfBounds());
            if (!v545) {
                require(v547 >= 20, SliceOutOfBounds());
                v545 = v550 = 0x422b(msg.data[v549] >> 96);
            }
            while (1) {
                v551, v552, v553, v554, v555, v556, v557, v4, v558 = 0x2996(66 <= v546, 0x19cb8, 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54, 10670, 11255, v548, v546, v4);
                v559, v560 = 0x4c3a(v556, v557);
                require(43 <= v559, SliceOutOfBounds());
                v561 = address(msg.data[v560] >> 96) < address(msg.data[v560 + 23] >> 96);
                v562 = 0x1a62(msg.data[v560] >> 96, msg.data[v560 + 23] >> 96, uint24(msg.data[v560] >> 72), v552, v553);
                if (0 == v561) {
                    v563 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v563 = v564 = 0x1000276a4;
                }
                MEM[MEM[64] + 32] = address(v552);
                MEM[MEM[64] + 32 + 32] = v553;
                MEM[MEM[64] + 32 + 64] = 96;
                MEM[MEM[64] + 32 + 96] = v559;
                CALLDATACOPY(MEM[64] + 32 + 96 + 32, v560, v559);
                MEM[MEM[64] + 32 + 96 + v559 + 32] = 0;
                require(!((MEM[64] + ((v559 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v559 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = address(this);
                MEM[MEM[64] + 4 + 32] = bool(v561);
                MEM[MEM[64] + 4 + 64] = v551;
                MEM[MEM[64] + 4 + 96] = address(v563);
                MEM[MEM[64] + 4 + 128] = 160;
                MEM[MEM[64] + 4 + 160] = (v559 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v559 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                MEM[MEM[64] + 4 + 160 + ((v559 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                v565, /* uint256 */ v566, /* uint256 */ v566 = address(v562).call(MEM[MEM[64]:MEM[64] + v19cc1_0x0V0x10720x2d3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                if (!v565) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v566 = v567 = 0;
                    v566 = v568 = 0;
                    if (v565) {
                        v569 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v569 = v570 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v569 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v569 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v569 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v569 - MEM[64] >= 64);
                        // Unknown jump to Block 0x29ae0x2b8eB0x10720x2d3. Refer to 3-address code (TAC);
                    }
                    if (v561) {
                    }
                    require(v566 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v545 = v571 = 0 - v566;
                    if (!v558) {
                        require(msg.data[32 + v4] <= v571, V3TooLittleReceived());
                    } else {
                        require(23 <= v557);
                        v548 = 23 + v556;
                        v546 = v557 - 23;
                    }
                }
            }
        }
        revert(InvalidCommandType(v6));
        v0 += v0;
    }
    return ;
}

function 0x345e(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4) private { 
    v0 = 0x195d();
    require(2 > 1, Panic(33)); // failed convertion to enum type
    v0.word0 = 1;
    v0.word1 = varg0;
    v0.word2 = varg1;
    v0.word3 = varg2;
    v0.word4 = varg3;
    v0.word5 = varg4;
    v1 = new bytes[](196);
    MEM[v1.data] = 0x658068fe00000000000000000000000000000000000000000000000000000000;
    require(2 > v0.word0, Panic(33)); // failed convertion to enum type
    MEM[v1 + 36] = v0.word0;
    v1[36] = address(v0.word1);
    MEM[v1 + 36 + 64] = address(v0.word2);
    MEM[v1 + 36 + 96] = address(v0.word3);
    MEM[v1 + 36 + 128] = v0.word4;
    MEM[v1 + 36 + 160] = v0.word5;
    require(!((v1 + (uint8.max + 1) > uint64.max) | (v1 + (uint8.max + 1) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    MCOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v3 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v2, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v6.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = new bytes[](v6.length);
        require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v6.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v6.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v6.length + 32 <= MEM[64] + RETURNDATASIZE());
        MCOPY(v4.data, v6.data, v6.length);
        v4[v6.length] = 0;
    }
    require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
    return MEM[v4 + 32];
}

function 0x35c5(address varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4) private { 
    if (!varg3) {
        varg3 = v0 = 0x422b(varg1);
    }
    v1 = 0x195d();
    require(2 > 0, Panic(33)); // failed convertion to enum type
    v1.word0 = 0;
    v1.word1 = varg0;
    v1.word2 = address(varg1);
    v1.word3 = varg2;
    v1.word4 = varg3;
    v1.word5 = varg4;
    v2 = new bytes[](196);
    MEM[v2.data] = 0x658068fe00000000000000000000000000000000000000000000000000000000;
    require(2 > v1.word0, Panic(33)); // failed convertion to enum type
    MEM[v2 + 36] = v1.word0;
    v2[36] = address(v1.word1);
    MEM[v2 + 36 + 64] = address(v1.word2);
    MEM[v2 + 36 + 96] = address(v1.word3);
    MEM[v2 + 36 + 128] = v1.word4;
    MEM[v2 + 36 + 160] = v1.word5;
    require(!((v2 + (uint8.max + 1) > uint64.max) | (v2 + (uint8.max + 1) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](v2.length);
    MCOPY(v3.data, v2.data, v2.length);
    v3[v2.length] = 0;
    v4 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v3, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = v6 = 0;
    if (v4) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v7.length);
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v7.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v7.length + 32 <= MEM[64] + RETURNDATASIZE());
        MCOPY(v5.data, v7.data, v7.length);
        v5[v7.length] = 0;
    }
    require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
    return MEM[v5 + 32];
}

function 0x3641(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    if (!varg4) {
        require(2 > varg1, Panic(33)); // failed convertion to enum type
        if (!varg1) {
            varg4 = v0 = 0x422b(varg2);
        }
    }
    require(2 > varg1, Panic(33)); // failed convertion to enum type
    if (0 == !varg1) {
        v1 = v2, v3 = v4, v5 = v6, v7 = v8, v9 = v10, v11 = v12, v13 = v14, v15 = v16, v17 = v18, v19 = v20 = 0x3682(varg5, 13960, varg0, varg1, varg2, varg3, varg4, varg5, 452, 0, 32);
    } else {
        v1 = v21, v3 = v22, v5 = v23, v7 = v24, v9 = v25, v11 = v26, v13 = v27, v15 = v28, v17 = v29, v19 = v30 = 0x3682(varg4, 13960, varg0, varg1, varg2, varg3, varg4, varg5, 452, 0, 32);
    }
    v31 = new uint256[](v1);
    MEM[v31.data] = v3;
    v32 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v31, this, v15, this, v15, v11, block.timestamp + 900, v33, v33, v5, v7, v9, 192, v15).value(v15).gas(msg.gas);
    require(v32);
    0x1641(v19);
    return ;
}

function 0x3682(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = v1.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, varg0).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v0) {
        require(!bool(RETURNDATASIZE() | !v1.code.size), Error('APPROVE_FAILED'));
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v1;
    } else {
        require(v0, Error('APPROVE_FAILED'));
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v1;
    }
}

function 0x3c8c(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    if (v0) {
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
        require(v1 >= varg1, InsufficientETH());
        if (varg1) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
            if (v5) {
                if (v5) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (address(varg0) - this) {
                    0x4045(varg0, varg1);
                    return ;
                } else {
                    return ;
                }
            }
        } else {
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x3dec(address varg0, uint256 varg1) private { 
    require(varg1 <= this.balance, InsufficientETH());
    if (varg1) {
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg1).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        if (varg0 - this) {
            v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
            if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v2) {
                v1 = v3 = !(!0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size | RETURNDATASIZE());
            }
            require(v1, Error('TRANSFER_FAILED'));
            return ;
        } else {
            return ;
        }
    } else {
        return ;
    }
}

function 0x3fca(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v1) {
        v0 = v2 = !(RETURNDATASIZE() | !varg0.code.size);
    }
    require(v0, Error('TRANSFER_FAILED'));
    return ;
}

function 0x4045(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, Error('ETH_TRANSFER_FAILED'));
    return ;
}

function 0x40b2(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (varg0 >= 4) {
        if (varg0 - 4) {
            require(varg0 == 5, UnsupportedAction(varg0));
            require(64 <= varg2, SliceOutOfBounds());
            v0 = 0x435d(msg.data[varg1]);
            require(v0 >= msg.data[varg1 + 32], msg.data[varg1 + 32], v0);
            0x43d6(msg.data[varg1], this, v0);
            return ;
        } else {
            require(64 <= varg2, SliceOutOfBounds());
            v1 = 0x4484(msg.data[varg1]);
            require(v1 <= msg.data[varg1 + 32], msg.data[varg1 + 32], v1);
            0x4503(msg.data[varg1], this, v1);
            return ;
        }
    } else if (varg0) {
        if (varg0 - 1) {
            if (varg0 - 2) {
                require(varg0 == 3, UnsupportedAction(varg0));
                require(160 <= varg2, SliceOutOfBounds());
                v2 = msg.data[varg1] + varg1;
                require(msg.data[v2 + 32] < msg.data.length - v2 - 31);
                v3 = msg.data[v2 + msg.data[v2 + 32]];
                require(v3 <= uint64.max);
                require(32 + (v2 + msg.data[v2 + 32]) <= msg.data.length - (v3 << 5));
                v4 = v5 = 0;
                v4 = msg.data[v2 + 64];
                require(!(v4 - uint128(v4)));
                v6 = v7 = msg.data[v2];
                require(!(address(v7) - v7));
                while (v3) {
                    require(msg.data[v2 + 32] < msg.data.length - v2 - 31);
                    require(msg.data[v2 + msg.data[v2 + 32]] <= uint64.max);
                    require(32 + (v2 + msg.data[v2 + 32]) <= msg.data.length - (msg.data[v2 + msg.data[v2 + 32]] << 5));
                    require(v3 - 1 < msg.data[v2 + msg.data[v2 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require(msg.data[32 + (v2 + msg.data[v2 + 32]) + (v3 - 1 << 5)] < msg.data.length - (32 + (v2 + msg.data[v2 + 32])) - 159);
                    v8 = 32 + (v2 + msg.data[v2 + 32]) + msg.data[32 + (v2 + msg.data[v2 + 32]) + (v3 - 1 << 5)];
                    v9 = new struct(5);
                    require(!((v9 + 160 > uint64.max) | (v9 + 160 < v9)), Panic(65)); // failed memory allocation (too much memory)
                    v9.word0 = 0;
                    v9.word1 = 0;
                    v9.word2 = 0;
                    v9.word3 = 0;
                    v9.word4 = 0;
                    require(!(address(msg.data[v8]) - msg.data[v8]));
                    if (address(v6) >= address(msg.data[v8])) {
                        v10 = v11 = address(msg.data[v8]) == address(v6);
                        require(!(uint24(msg.data[v8 + 32]) - msg.data[v8 + 32]));
                        require(!(int24(msg.data[v8 + 64]) - msg.data[v8 + 64]));
                        require(!(address(msg.data[v8 + 96]) - msg.data[v8 + 96]));
                        v12 = v13 = new struct(5);
                        require(!((v13 + 160 > uint64.max) | (v13 + 160 < v13)), Panic(65)); // failed memory allocation (too much memory)
                        v13.word0 = address(msg.data[v8]);
                        v13.word1 = address(v6);
                        v13.word2 = uint24(msg.data[v8 + 32]);
                        v13.word3 = int24(msg.data[v8 + 64]);
                        v13.word4 = address(msg.data[v8 + 96]);
                    } else {
                        v10 = 1;
                        require(!(uint24(msg.data[v8 + 32]) - msg.data[v8 + 32]));
                        require(!(int24(msg.data[v8 + 64]) - msg.data[v8 + 64]));
                        require(!(address(msg.data[v8 + 96]) - msg.data[v8 + 96]));
                        v12 = new struct(5);
                        require(!((v12 + 160 > uint64.max) | (v12 + 160 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        v12.word0 = address(v6);
                        v12.word1 = address(msg.data[v8]);
                        v12.word2 = uint24(msg.data[v8 + 32]);
                        v12.word3 = int24(msg.data[v8 + 64]);
                        v12.word4 = address(msg.data[v8 + 96]);
                    }
                    require(msg.data[v8 + 128] < msg.data.length - v8 - 31);
                    require(msg.data[v8 + msg.data[v8 + 128]] <= uint64.max);
                    require(32 + (v8 + msg.data[v8 + 128]) <= msg.data.length - msg.data[v8 + msg.data[v8 + 128]]);
                    v14 = v15 = uint128(v4);
                    v16 = v17 = !v10;
                    v18 = v19 = 32;
                    if (0 == v17) {
                        v20 = new struct(3);
                        require(!((v20 + 96 > uint64.max) | (v20 + 96 < v20)), Panic(65)); // failed memory allocation (too much memory)
                        v20.word0 = bool(v17);
                        v20.word1 = v15;
                        v20.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        v21 = MEM[64];
                        MEM[v21] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                        MEM[v21 + 4] = address(MEM[v12]);
                        MEM[v21 + 4 + 32] = address(MEM[v12 + 32]);
                        MEM[v21 + 4 + 64] = uint24(MEM[v12 + 64]);
                        MEM[v21 + 4 + 96] = int24(MEM[v12 + 96]);
                        MEM[v21 + 4 + 128] = address(MEM[v12 + 128]);
                        MEM[v21 + 4 + 160] = bool(v20.word0);
                        MEM[v21 + 4 + 160 + 32] = v20.word1;
                        MEM[v21 + 4 + 160 + 64] = address(v20.word2);
                        MEM[v21 + 4 + (uint8.max + 1)] = 288;
                        MEM[v21 + 4 + 288] = msg.data[v8 + msg.data[v8 + 128]];
                        CALLDATACOPY(v21 + 4 + 288 + 32, 32 + (v8 + msg.data[v8 + 128]), msg.data[v8 + msg.data[v8 + 128]]);
                        MEM[v21 + 4 + 288 + msg.data[v8 + msg.data[v8 + 128]] + 32] = 0;
                        v22 = (msg.data[v8 + msg.data[v8 + 128]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v21 + 4 + 288) + 32;
                        // Unknown jump to Block 0x5375B0x484aB0x4157. Refer to 3-address code (TAC);
                    } else {
                        v23 = new struct(3);
                        require(!((v23 + 96 > uint64.max) | (v23 + 96 < v23)), Panic(65)); // failed memory allocation (too much memory)
                        v23.word0 = bool(v17);
                        v23.word1 = v15;
                        v23.word2 = address(0x1000276a4);
                        v21 = v24 = MEM[64];
                        MEM[v24] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                        MEM[v24 + 4] = address(MEM[v12]);
                        MEM[v24 + 4 + 32] = address(MEM[v12 + 32]);
                        MEM[v24 + 4 + 64] = uint24(MEM[v12 + 64]);
                        MEM[v24 + 4 + 96] = int24(MEM[v12 + 96]);
                        MEM[v24 + 4 + 128] = address(MEM[v12 + 128]);
                        MEM[v24 + 4 + 160] = bool(v23.word0);
                        MEM[v24 + 4 + 160 + 32] = v23.word1;
                        MEM[v24 + 4 + 160 + 64] = address(v23.word2);
                        MEM[v24 + 4 + (uint8.max + 1)] = 288;
                        MEM[v24 + 4 + 288] = msg.data[v8 + msg.data[v8 + 128]];
                        CALLDATACOPY(v24 + 4 + 288 + 32, 32 + (v8 + msg.data[v8 + 128]), msg.data[v8 + msg.data[v8 + 128]]);
                        MEM[v24 + 4 + 288 + msg.data[v8 + msg.data[v8 + 128]] + 32] = 0;
                        v22 = v25 = (msg.data[v8 + msg.data[v8 + 128]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v24 + 4 + 288) + 32;
                    }
                    v26 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v5344V0x53fbV0x484aV0x4157:v5344V0x53fbV0x484aV0x4157 + v52e70xf21V0x5258V0x53fbV0x484aV0x4157 - v5344V0x53fbV0x484aV0x4157], MEM[v5344V0x53fbV0x484aV0x4157:v5344V0x53fbV0x484aV0x4157 + v5375_0x3V0x484aV0x4157]).gas(msg.gas);
                    require(v26, MEM[64], RETURNDATASIZE());
                    v27 = v28 = 0;
                    if (v26) {
                        if (32 > RETURNDATASIZE()) {
                            require(!((v21 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v21 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v29 = v30 = v21 + RETURNDATASIZE();
                        } else {
                            require(!((v21 + 32 > uint64.max) | (v21 + 32 < v21)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v21 + 32;
                            v29 = v31 = v21 + 32;
                        }
                        require(v29 - v21 >= 32);
                        v27 = v32 = MEM[v21];
                    }
                    if (0 == (bool(v16) == 0 > v14)) {
                        v33 = v27 >> 128;
                    } else {
                        v33 = v34 = int128(v27);
                    }
                    v4 = v35 = uint128(0 - int128(v33));
                    v6 = msg.data[v8];
                    require(!(address(v6) - v6));
                    v3 = v3 - 1;
                }
                require(!(msg.data[96 + v2] - uint128(msg.data[96 + v2])));
                if (uint128(v4) > uint128(msg.data[96 + v2])) {
                    require(msg.data[96 + v2] - uint128(msg.data[96 + v2]), uint128(msg.data[96 + v2]), uint128(v4));
                    revert();
                } else {
                    return ;
                }
            } else {
                require(320 <= varg2, SliceOutOfBounds());
                v36 = msg.data[varg1] + varg1;
                require(!(msg.data[v36 + 192] - uint128(msg.data[v36 + 192])));
                v37 = v38 = msg.data[v36 + 160];
                require(!(bool(v38) - v38));
                require(msg.data[v36 + (uint8.max + 1)] < msg.data.length - v36 - 31);
                require(msg.data[v36 + msg.data[v36 + (uint8.max + 1)]] <= uint64.max);
                require(32 + (v36 + msg.data[v36 + (uint8.max + 1)]) <= msg.data.length - msg.data[v36 + msg.data[v36 + (uint8.max + 1)]]);
                v39 = v40 = uint128(msg.data[v36 + 192]);
                require(msg.data.length - v36 >= 160);
                v41 = new struct(5);
                require(!((v41 + 160 > uint64.max) | (v41 + 160 < v41)), Panic(65)); // failed memory allocation (too much memory)
                require(!(address(msg.data[v36]) - msg.data[v36]));
                v41.word0 = msg.data[v36];
                require(!(address(msg.data[v36 + 32]) - msg.data[v36 + 32]));
                v41.word1 = msg.data[v36 + 32];
                require(!(uint24(msg.data[v36 + 64]) - msg.data[v36 + 64]));
                v41.word2 = msg.data[v36 + 64];
                require(!(int24(msg.data[v36 + 96]) - msg.data[v36 + 96]));
                v41.word3 = msg.data[v36 + 96];
                require(!(address(msg.data[v36 + 128]) - msg.data[v36 + 128]));
                v41.word4 = msg.data[v36 + 128];
                v42 = v43 = 32;
                if (0 == v38) {
                    v44 = new struct(3);
                    require(!((v44 + 96 > uint64.max) | (v44 + 96 < v44)), Panic(65)); // failed memory allocation (too much memory)
                    v44.word0 = bool(v38);
                    v44.word1 = v40;
                    v44.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    v45 = MEM[64];
                    MEM[v45] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v45 + 4] = address(v41.word0);
                    MEM[v45 + 4 + 32] = address(v41.word1);
                    MEM[v45 + 4 + 64] = uint24(v41.word2);
                    MEM[v45 + 4 + 96] = int24(v41.word3);
                    MEM[v45 + 4 + 128] = address(v41.word4);
                    MEM[v45 + 4 + 160] = bool(v44.word0);
                    MEM[v45 + 4 + 160 + 32] = v44.word1;
                    MEM[v45 + 4 + 160 + 64] = address(v44.word2);
                    MEM[v45 + 4 + (uint8.max + 1)] = 288;
                    CALLDATACOPY(v45 + 4 + 288 + 32, 32 + (v36 + msg.data[v36 + (uint8.max + 1)]), msg.data[v36 + msg.data[v36 + (uint8.max + 1)]]);
                    MEM[v45 + 4 + 288 + msg.data[v36 + msg.data[v36 + (uint8.max + 1)]] + 32] = 0;
                    v46 = (msg.data[v36 + msg.data[v36 + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v45 + 4 + 288) + 32;
                    // Unknown jump to Block 0x5375B0x1ad6dB0x4107. Refer to 3-address code (TAC);
                } else {
                    v47 = new struct(3);
                    require(!((v47 + 96 > uint64.max) | (v47 + 96 < v47)), Panic(65)); // failed memory allocation (too much memory)
                    v47.word0 = bool(v38);
                    v47.word1 = v40;
                    v47.word2 = address(0x1000276a4);
                    v45 = v48 = MEM[64];
                    MEM[v48] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v48 + 4] = address(v41.word0);
                    MEM[v48 + 4 + 32] = address(v41.word1);
                    MEM[v48 + 4 + 64] = uint24(v41.word2);
                    MEM[v48 + 4 + 96] = int24(v41.word3);
                    MEM[v48 + 4 + 128] = address(v41.word4);
                    MEM[v48 + 4 + 160] = bool(v47.word0);
                    MEM[v48 + 4 + 160 + 32] = v47.word1;
                    MEM[v48 + 4 + 160 + 64] = address(v47.word2);
                    MEM[v48 + 4 + (uint8.max + 1)] = 288;
                    CALLDATACOPY(v48 + 4 + 288 + 32, 32 + (v36 + msg.data[v36 + (uint8.max + 1)]), msg.data[v36 + msg.data[v36 + (uint8.max + 1)]]);
                    MEM[v48 + 4 + 288 + msg.data[v36 + msg.data[v36 + (uint8.max + 1)]] + 32] = 0;
                    v46 = v49 = (msg.data[v36 + msg.data[v36 + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v48 + 4 + 288) + 32;
                }
                v50 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v5344V0x53fbV0x1ad6dV0x4107:v5344V0x53fbV0x1ad6dV0x4107 + v52e70xf21V0x5258V0x53fbV0x1ad6dV0x4107 - v5344V0x53fbV0x1ad6dV0x4107], MEM[v5344V0x53fbV0x1ad6dV0x4107:v5344V0x53fbV0x1ad6dV0x4107 + v5375_0x3V0x1ad6dV0x4107]).gas(msg.gas);
                if (!v50) {
                    v51 = RETURNDATASIZE();
                    revert(v52, v52, v52, v52, v52, v52, v52, v52, v52, msg.data[v36 + msg.data[v36 + (uint8.max + 1)]]);
                } else {
                    v53 = v54 = 0;
                    if (v50) {
                        if (32 > RETURNDATASIZE()) {
                            require(!((v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v55 = v56 = v45 + RETURNDATASIZE();
                        } else {
                            require(!((v45 + 32 > uint64.max) | (v45 + 32 < v45)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v45 + 32;
                            v55 = v57 = v45 + 32;
                        }
                        require(v55 - v45 >= 32);
                        v53 = v58 = MEM[v45];
                    }
                    if (0 == (bool(v37) == 0 > v39)) {
                        v59 = v53 >> 128;
                    } else {
                        v59 = v60 = int128(v53);
                    }
                    v61 = 0x176f(int128(v59));
                    require(!(msg.data[v36 + 224] - uint128(msg.data[v36 + 224])));
                    if (uint128(v61) > uint128(msg.data[v36 + 224])) {
                        require(msg.data[v36 + 224] - uint128(msg.data[v36 + 224]), uint128(msg.data[v36 + 224]), uint128(v61));
                        revert();
                    } else {
                        return ;
                    }
                }
            }
        } else {
            require(160 <= varg2, SliceOutOfBounds());
            v62 = msg.data[varg1] + varg1;
            require(msg.data[v62 + 32] < msg.data.length - v62 - 31);
            require(msg.data[v62 + msg.data[v62 + 32]] <= uint64.max);
            require(32 + (v62 + msg.data[v62 + 32]) <= msg.data.length - (msg.data[v62 + msg.data[v62 + 32]] << 5));
            v63 = v64 = 0;
            v65 = v66 = msg.data[v62];
            require(!(address(v66) - v66));
            v63 = msg.data[v62 + 64];
            require(!(v63 - uint128(v63)));
            if (!uint128(v63)) {
                v67 = 0x545e(v66);
                v63 = v68 = uint128(v67);
            }
            v69 = 0;
            while (v69 < msg.data[v62 + msg.data[v62 + 32]]) {
                require(msg.data[v62 + 32] < msg.data.length - v62 - 31);
                require(msg.data[v62 + msg.data[v62 + 32]] <= uint64.max);
                require(32 + (v62 + msg.data[v62 + 32]) <= msg.data.length - (msg.data[v62 + msg.data[v62 + 32]] << 5));
                require(v69 < msg.data[v62 + msg.data[v62 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(msg.data[32 + (v62 + msg.data[v62 + 32]) + (v69 << 5)] < msg.data.length - (32 + (v62 + msg.data[v62 + 32])) - 159);
                v70 = 32 + (v62 + msg.data[v62 + 32]) + msg.data[32 + (v62 + msg.data[v62 + 32]) + (v69 << 5)];
                v71 = new struct(5);
                require(!((v71 + 160 > uint64.max) | (v71 + 160 < v71)), Panic(65)); // failed memory allocation (too much memory)
                v71.word0 = 0;
                v71.word1 = 0;
                v71.word2 = 0;
                v71.word3 = 0;
                v71.word4 = 0;
                require(!(address(msg.data[v70]) - msg.data[v70]));
                if (address(v65) >= address(msg.data[v70])) {
                    v72 = v73 = address(msg.data[v70]) == address(v65);
                    require(!(uint24(msg.data[v70 + 32]) - msg.data[v70 + 32]));
                    require(!(int24(msg.data[v70 + 64]) - msg.data[v70 + 64]));
                    require(!(address(msg.data[v70 + 96]) - msg.data[v70 + 96]));
                    v74 = v75 = new struct(5);
                    require(!((v75 + 160 > uint64.max) | (v75 + 160 < v75)), Panic(65)); // failed memory allocation (too much memory)
                    v75.word0 = address(msg.data[v70]);
                    v75.word1 = address(v65);
                    v75.word2 = uint24(msg.data[v70 + 32]);
                    v75.word3 = int24(msg.data[v70 + 64]);
                    v75.word4 = address(msg.data[v70 + 96]);
                } else {
                    v72 = 1;
                    require(!(uint24(msg.data[v70 + 32]) - msg.data[v70 + 32]));
                    require(!(int24(msg.data[v70 + 64]) - msg.data[v70 + 64]));
                    require(!(address(msg.data[v70 + 96]) - msg.data[v70 + 96]));
                    v74 = new struct(5);
                    require(!((v74 + 160 > uint64.max) | (v74 + 160 < v74)), Panic(65)); // failed memory allocation (too much memory)
                    v74.word0 = address(v65);
                    v74.word1 = address(msg.data[v70]);
                    v74.word2 = uint24(msg.data[v70 + 32]);
                    v74.word3 = int24(msg.data[v70 + 64]);
                    v74.word4 = address(msg.data[v70 + 96]);
                }
                require(msg.data[v70 + 128] < msg.data.length - v70 - 31);
                require(msg.data[v70 + msg.data[v70 + 128]] <= uint64.max);
                require(32 + (v70 + msg.data[v70 + 128]) <= msg.data.length - msg.data[v70 + msg.data[v70 + 128]]);
                v76 = v77 = 0 - uint128(v63);
                v78 = v79 = 32;
                if (0 == v80) {
                    v81 = new struct(3);
                    require(!((v81 + 96 > uint64.max) | (v81 + 96 < v81)), Panic(65)); // failed memory allocation (too much memory)
                    v81.word0 = bool(v80);
                    v81.word1 = v77;
                    v81.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    v82 = MEM[64];
                    MEM[v82] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v82 + 4] = address(MEM[v74]);
                    MEM[v82 + 4 + 32] = address(MEM[v74 + 32]);
                    MEM[v82 + 4 + 64] = uint24(MEM[v74 + 64]);
                    MEM[v82 + 4 + 96] = int24(MEM[v74 + 96]);
                    MEM[v82 + 4 + 128] = address(MEM[v74 + 128]);
                    MEM[v82 + 4 + 160] = bool(v81.word0);
                    MEM[v82 + 4 + 160 + 32] = v81.word1;
                    MEM[v82 + 4 + 160 + 64] = address(v81.word2);
                    MEM[v82 + 4 + (uint8.max + 1)] = 288;
                    MEM[v82 + 4 + 288] = msg.data[v70 + msg.data[v70 + 128]];
                    CALLDATACOPY(v82 + 4 + 288 + 32, 32 + (v70 + msg.data[v70 + 128]), msg.data[v70 + msg.data[v70 + 128]]);
                    MEM[v82 + 4 + 288 + msg.data[v70 + msg.data[v70 + 128]] + 32] = 0;
                    v83 = (msg.data[v70 + msg.data[v70 + 128]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v82 + 4 + 288) + 32;
                    // Unknown jump to Block 0x5375B0x4b2eB0x40ec. Refer to 3-address code (TAC);
                } else {
                    v84 = new struct(3);
                    require(!((v84 + 96 > uint64.max) | (v84 + 96 < v84)), Panic(65)); // failed memory allocation (too much memory)
                    v84.word0 = bool(v80);
                    v84.word1 = v77;
                    v84.word2 = address(0x1000276a4);
                    v82 = v85 = MEM[64];
                    MEM[v85] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v85 + 4] = address(MEM[v74]);
                    MEM[v85 + 4 + 32] = address(MEM[v74 + 32]);
                    MEM[v85 + 4 + 64] = uint24(MEM[v74 + 64]);
                    MEM[v85 + 4 + 96] = int24(MEM[v74 + 96]);
                    MEM[v85 + 4 + 128] = address(MEM[v74 + 128]);
                    MEM[v85 + 4 + 160] = bool(v84.word0);
                    MEM[v85 + 4 + 160 + 32] = v84.word1;
                    MEM[v85 + 4 + 160 + 64] = address(v84.word2);
                    MEM[v85 + 4 + (uint8.max + 1)] = 288;
                    MEM[v85 + 4 + 288] = msg.data[v70 + msg.data[v70 + 128]];
                    CALLDATACOPY(v85 + 4 + 288 + 32, 32 + (v70 + msg.data[v70 + 128]), msg.data[v70 + msg.data[v70 + 128]]);
                    MEM[v85 + 4 + 288 + msg.data[v70 + msg.data[v70 + 128]] + 32] = 0;
                    v83 = v86 = (msg.data[v70 + msg.data[v70 + 128]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v85 + 4 + 288) + 32;
                }
                v87 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v5344V0x53fbV0x4b2eV0x40ec:v5344V0x53fbV0x4b2eV0x40ec + v52e70xf21V0x5258V0x53fbV0x4b2eV0x40ec - v5344V0x53fbV0x4b2eV0x40ec], MEM[v5344V0x53fbV0x4b2eV0x40ec:v5344V0x53fbV0x4b2eV0x40ec + v5375_0x3V0x4b2eV0x40ec]).gas(msg.gas);
                require(v87, MEM[64], RETURNDATASIZE());
                v88 = v89 = 0;
                if (v87) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((v82 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v82 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v82)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v82 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v90 = v91 = v82 + RETURNDATASIZE();
                    } else {
                        require(!((v82 + 32 > uint64.max) | (v82 + 32 < v82)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v82 + 32;
                        v90 = v92 = v82 + 32;
                    }
                    require(v90 - v82 >= 32);
                    v88 = v93 = MEM[v82];
                }
                if (0 == (bool(v72) == 0 > v76)) {
                    v94 = v88 >> 128;
                } else {
                    v94 = v95 = int128(v88);
                }
                v63 = v96 = uint128(v94);
                v65 = msg.data[v70];
                require(!(address(v65) - v65));
                v69 = v69 + 1;
            }
            require(!(msg.data[96 + v62] - uint128(msg.data[96 + v62])));
            if (uint128(v63) < uint128(msg.data[96 + v62])) {
                require(msg.data[96 + v62] - uint128(msg.data[96 + v62]), uint128(msg.data[96 + v62]), uint128(v63));
                revert();
            } else {
                return ;
            }
        }
    } else {
        require(320 <= varg2, SliceOutOfBounds());
        v97 = msg.data[varg1] + varg1;
        v98 = msg.data[v97 + 192];
        require(!(v98 - uint128(v98)));
        if (!uint128(v98)) {
            require(!(bool(msg.data[v97 + 160]) - msg.data[v97 + 160]));
            if (!msg.data[v97 + 160]) {
                require(!(address(msg.data[v97 + 32]) - msg.data[v97 + 32]));
                v99 = 0x545e(msg.data[v97 + 32]);
                v98 = v100 = uint128(v99);
            } else {
                require(!(address(msg.data[v97]) - msg.data[v97]));
                v101 = 0x545e(msg.data[v97]);
                v98 = v102 = uint128(v101);
            }
        }
        v103 = v104 = msg.data[v97 + 160];
        require(!(bool(v104) - v104));
        v105 = v106 = 0x176f(uint128(v98));
        require(msg.data[v97 + (uint8.max + 1)] < msg.data.length - v97 - 31);
        require(msg.data[v97 + msg.data[v97 + (uint8.max + 1)]] <= uint64.max);
        require(32 + (v97 + msg.data[v97 + (uint8.max + 1)]) <= msg.data.length - msg.data[v97 + msg.data[v97 + (uint8.max + 1)]]);
        require(msg.data.length - v97 >= 160);
        v107 = new struct(5);
        require(!((v107 + 160 > uint64.max) | (v107 + 160 < v107)), Panic(65)); // failed memory allocation (too much memory)
        require(!(address(msg.data[v97]) - msg.data[v97]));
        v107.word0 = msg.data[v97];
        require(!(address(msg.data[v97 + 32]) - msg.data[v97 + 32]));
        v107.word1 = msg.data[v97 + 32];
        require(!(uint24(msg.data[v97 + 64]) - msg.data[v97 + 64]));
        v107.word2 = msg.data[v97 + 64];
        require(!(int24(msg.data[v97 + 96]) - msg.data[v97 + 96]));
        v107.word3 = msg.data[v97 + 96];
        require(!(address(msg.data[v97 + 128]) - msg.data[v97 + 128]));
        v107.word4 = msg.data[v97 + 128];
        v108 = v109 = 32;
        if (0 == v104) {
            v110 = new struct(3);
            require(!((v110 + 96 > uint64.max) | (v110 + 96 < v110)), Panic(65)); // failed memory allocation (too much memory)
            v110.word0 = bool(v104);
            v110.word1 = v106;
            v110.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            v111 = MEM[64];
            MEM[v111] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[v111 + 4] = address(v107.word0);
            MEM[v111 + 4 + 32] = address(v107.word1);
            MEM[v111 + 4 + 64] = uint24(v107.word2);
            MEM[v111 + 4 + 96] = int24(v107.word3);
            MEM[v111 + 4 + 128] = address(v107.word4);
            MEM[v111 + 4 + 160] = bool(v110.word0);
            MEM[v111 + 4 + 160 + 32] = v110.word1;
            MEM[v111 + 4 + 160 + 64] = address(v110.word2);
            MEM[v111 + 4 + (uint8.max + 1)] = 288;
            CALLDATACOPY(v111 + 4 + 288 + 32, 32 + (v97 + msg.data[v97 + (uint8.max + 1)]), msg.data[v97 + msg.data[v97 + (uint8.max + 1)]]);
            MEM[v111 + 4 + 288 + msg.data[v97 + msg.data[v97 + (uint8.max + 1)]] + 32] = 0;
            v112 = (msg.data[v97 + msg.data[v97 + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v111 + 4 + 288) + 32;
            // Unknown jump to Block 0x5375B0x1ae80B0x40d1. Refer to 3-address code (TAC);
        } else {
            v113 = new struct(3);
            require(!((v113 + 96 > uint64.max) | (v113 + 96 < v113)), Panic(65)); // failed memory allocation (too much memory)
            v113.word0 = bool(v104);
            v113.word1 = v106;
            v113.word2 = address(0x1000276a4);
            v111 = v114 = MEM[64];
            MEM[v114] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[v114 + 4] = address(v107.word0);
            MEM[v114 + 4 + 32] = address(v107.word1);
            MEM[v114 + 4 + 64] = uint24(v107.word2);
            MEM[v114 + 4 + 96] = int24(v107.word3);
            MEM[v114 + 4 + 128] = address(v107.word4);
            MEM[v114 + 4 + 160] = bool(v113.word0);
            MEM[v114 + 4 + 160 + 32] = v113.word1;
            MEM[v114 + 4 + 160 + 64] = address(v113.word2);
            MEM[v114 + 4 + (uint8.max + 1)] = 288;
            CALLDATACOPY(v114 + 4 + 288 + 32, 32 + (v97 + msg.data[v97 + (uint8.max + 1)]), msg.data[v97 + msg.data[v97 + (uint8.max + 1)]]);
            MEM[v114 + 4 + 288 + msg.data[v97 + msg.data[v97 + (uint8.max + 1)]] + 32] = 0;
            v112 = v115 = (msg.data[v97 + msg.data[v97 + (uint8.max + 1)]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v114 + 4 + 288) + 32;
        }
        v116 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[v5344V0x53fbV0x1ae80V0x40d1:v5344V0x53fbV0x1ae80V0x40d1 + v52e70xf21V0x5258V0x53fbV0x1ae80V0x40d1 - v5344V0x53fbV0x1ae80V0x40d1], MEM[v5344V0x53fbV0x1ae80V0x40d1:v5344V0x53fbV0x1ae80V0x40d1 + v5375_0x3V0x1ae80V0x40d1]).gas(msg.gas);
        if (!v116) {
            v117 = RETURNDATASIZE();
            revert(v52, v52, v52, v52, v52, v52, v52, v52, v52, msg.data[v97 + msg.data[v97 + (uint8.max + 1)]]);
        } else {
            v118 = v119 = 0;
            if (v116) {
                if (32 > RETURNDATASIZE()) {
                    require(!((v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v111)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v111 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v120 = v121 = v111 + RETURNDATASIZE();
                } else {
                    require(!((v111 + 32 > uint64.max) | (v111 + 32 < v111)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v111 + 32;
                    v120 = v122 = v111 + 32;
                }
                require(v120 - v111 >= 32);
                v118 = v123 = MEM[v111];
            }
            if (0 == (bool(v103) == 0 > v105)) {
                v124 = v118 >> 128;
            } else {
                v124 = v125 = int128(v118);
            }
            require(!(msg.data[v97 + 224] - uint128(msg.data[v97 + 224])));
            if (uint128(v124) < uint128(msg.data[v97 + 224])) {
                require(msg.data[v97 + 224] - uint128(msg.data[v97 + 224]), uint128(msg.data[v97 + 224]), uint128(v124));
                revert();
            } else {
                return ;
            }
        }
    }
}

function 0x422b(uint256 varg0) private { 
    v0 = v1 = 0;
    if (!varg0) {
        v0 = v2 = this.balance;
    }
    if (bool(varg0)) {
        v3, v0 = varg0.balanceOf(this).gas(msg.gas);
        require(!((RETURNDATASIZE() < 32) | !v3));
    }
    require(v0, ZeroTokenBalance(varg0));
    return v0;
}

function 0x42e8(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0;
}

function 0x42f1(uint256 varg0, uint256 varg1) private { 
    require(1 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 32 + varg0;
}

function 0x4300(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x4310(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x435d(uint256 varg0) private { 
    v0 = 0x5019(0x4444c5dc75cb358380d2e3de08a90, this, varg0);
    require(v0 >= 0, DeltaNotPositive(address(varg0)));
    return v0;
}

function 0x43d6(address varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v0 = address(0x4444c5dc75cb358380d2e3de08a90).take(varg0, varg1, varg2).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
            return ;
        } else {
            return ;
        }
    }
}

function 0x4484(uint256 varg0) private { 
    v0 = 0x5019(0x4444c5dc75cb358380d2e3de08a90, this, varg0);
    require(v0 <= 0, DeltaNotNegative(address(varg0)));
    v1 = 0x176f(v0);
    return v1;
}

function 0x4503(address varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v0 = address(0x4444c5dc75cb358380d2e3de08a90).sync(varg0).gas(msg.gas);
        if (v0) {
            if (v0) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            if (varg0) {
                if (this == varg1) {
                    0x1bc1(varg0, address(0x4444c5dc75cb358380d2e3de08a90), varg2);
                }
                v1 = v2 = MEM[64];
                v3 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                if (v3) {
                    if (!v3) {
                        return ;
                    }
                }
            } else {
                v1 = v4 = MEM[64];
                v5 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(varg2).gas(msg.gas);
                if (v5) {
                    if (!v5) {
                        return ;
                    }
                }
            }
            if (32 > RETURNDATASIZE()) {
                require(!((v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v6 = v1 + RETURNDATASIZE();
            } else {
                require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v1 + 32;
                v6 = v7 = v1 + 32;
            }
            require(v6 - v1 >= 32);
            return ;
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function 0x4c3a(uint256 varg0, uint256 varg1) private { 
    require(43 <= varg1);
    return 43, varg0;
}

function 0x4c48(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x5516(varg2, varg3);
    v2 = 0x554e(varg0, varg1, v1, v0);
    return v2;
}

function 0x5019(address varg0, address varg1, address varg2) private { 
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

function 0x5419(uint128 varg0) private { 
    return varg0;
}

function 0x545e(address varg0) private { 
    if (varg0) {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v2 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v2 = v3 = MEM[64] + 32;
            }
            require(v2 - MEM[64] >= 32);
            return v1;
        } else {
            return 0;
        }
    } else {
        return this.balance;
    }
}

function 0x54f7(uint256 varg0) private { 
    require(int128(varg0) >= 0, SafeCastOverflow());
    return uint128(varg0);
}

function 0x5516(uint256 varg0, uint256 varg1) private { 
    if (0 == address(varg0) < address(varg1)) {
        return varg0, varg1;
    } else {
        return varg1, varg0;
    }
}

function 0x554e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = new struct(3);
    v1 = v0.data;
    v0.word1 = bytes20(varg2 << 96);
    v0.word0 = 40;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v0.word0.length;
    v3 = new bytes[](85);
    v3[1] = bytes20(varg0 << 96);
    v3[21] = keccak256(bytes20(varg2 << 96), bytes20(varg3 << 96));
    v3[53] = varg1;
    require(!((v3 + 128 > uint64.max) | (v3 + 128 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.length;
    return address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(varg2 << 96), bytes20(varg3 << 96)), varg1));
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x5686(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x5516(varg2, varg3);
    v2 = 0x554e(varg0, varg1, v1, v0);
    return v1, v2;
}

function 0x569c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x5516(varg2, varg3);
    v2 = 0x554e(varg0, varg1, v1, v0);
    v3, /* uint112 */ v4, /* uint112 */ v5, /* uint32 */ v6 = address(v2).getReserves().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v7 = 0;
    v5 = v8 = 0;
    if (v3) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v9 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v9 = v10 = MEM[64] + 96;
        }
        require(v9 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(v6 - uint32(v6)));
    }
    if (0 == (address(varg2) == address(v1))) {
        return uint112(v4), uint112(v5), v2;
    } else {
        return uint112(v5), uint112(v4), v2;
    }
}

function 0x578b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = !varg1;
    if (bool(varg1)) {
        v0 = v2 = !varg2;
    }
    require(!v0, InvalidReserves());
    v3 = _SafeMul(varg1, varg0);
    if (!v3 | (1000 == v3 * 1000 / v3)) {
        v4 = varg2 - varg0;
        if (v4 <= varg2) {
            if ((varg2 == varg0) | (997 == v4 * 997 / v4)) {
                v5 = _SafeDiv(v3 * 1000, v4 * 997);
                if (v5 <= v5 + 1) {
                    return v5 + 1;
                }
            }
        }
    }
    revert(Panic(17));
}

function ShibaswapV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + _data] + (4 + _data + 32) >= uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) + (4 + _data + 32 + uint32(_data.word3)) + 32, SliceOutOfBounds());
    require(!(address(_data.word1) - 0xd9ce49caf7299daf18fffcb2b84a44fd33412509), address(_data.word1));
    require(!(_data.word2 - 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62));
    require(43 <= uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]), SliceOutOfBounds());
    v3 = 0x1a62(msg.data[4 + _data + 32 + uint32(_data.word3) + 32] >> 96, msg.data[4 + _data + 32 + uint32(_data.word3) + 32 + 23] >> 96, uint24(msg.data[4 + _data + 32 + uint32(_data.word3) + 32] >> 72), _data.word1, _data.word2);
    require(!(address(v3) - msg.sender), V3InvalidCaller());
    if (amount0Delta <= 0) {
        v4 = v5 = address(msg.data[4 + _data + 32 + uint32(_data.word3) + 32 + 23] >> 96) < address(msg.data[4 + _data + 32 + uint32(_data.word3) + 32] >> 96);
    } else {
        v4 = address(msg.data[4 + _data + 32 + uint32(_data.word3) + 32] >> 96) < address(msg.data[4 + _data + 32 + uint32(_data.word3) + 32 + 23] >> 96);
    }
    if (!v4) {
        if (uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) < 66) {
            require(v6 <= _shibaswapV2SwapCallback, V3TooMuchRequested());
            0x1bc1(msg.data[4 + _data + 32 + uint32(_data.word3) + 32 + 23] >> 96, msg.sender, v6);
        } else {
            require(23 <= uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]));
            v7 = 0x1c25(v6);
            v8 = 0x176f(v7);
            require(43 <= uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23, SliceOutOfBounds());
            v9 = address(msg.data[23 + (4 + _data + 32 + uint32(_data.word3) + 32) + 23] >> 96) < address(msg.data[23 + (4 + _data + 32 + uint32(_data.word3) + 32)] >> 96);
            v10 = 0x1a62(msg.data[23 + (4 + _data + 32 + uint32(_data.word3) + 32)] >> 96, msg.data[23 + (4 + _data + 32 + uint32(_data.word3) + 32) + 23] >> 96, uint24(msg.data[23 + (4 + _data + 32 + uint32(_data.word3) + 32)] >> 72), _data.word1, _data.word2);
            if (0 == v9) {
                v11 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v11 = v12 = 0x1000276a4;
            }
            MEM[MEM[64] + 32] = address(_data.word1);
            MEM[MEM[64] + 32 + 32] = _data.word2;
            MEM[MEM[64] + 32 + 64] = 96;
            MEM[MEM[64] + 32 + 96] = uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23;
            CALLDATACOPY(MEM[64] + 32 + 96 + 32, 23 + (4 + _data + 32 + uint32(_data.word3) + 32), uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23);
            MEM[MEM[64] + 32 + 96 + (uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23) + 32] = 0;
            require(!((MEM[64] + ((uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v13 = new uint256[]((uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MCOPY(v13.data, MEM[64] + 32, (uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MEM[v13 + ((uint32(msg.data[4 + _data + 32 + uint32(_data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
            v14, /* uint256 */ v15, /* uint256 */ v16 = address(v10).swap(msg.sender, bool(v9), v8, address(v11), v13).gas(msg.gas);
            require(v14, MEM[64], RETURNDATASIZE());
            if (v14) {
                v17 = 64;
                if (64 > RETURNDATASIZE()) {
                    v17 = v18 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v17 - MEM[64] >= 64);
            }
        }
    } else {
        0x1bc1(msg.data[4 + _data + 32 + uint32(_data.word3) + 32] >> 96, msg.sender, v6);
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, Error('UNAUTHORIZED'));
    _owner = newOwner;
    emit OwnershipTransferred(msg.sender, newOwner);
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x4444c5dc75cb358380d2e3de08a90);
}

function msgSender() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return this;
}

function 0xd096523d(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    v0 = v1 = varg0.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg0.data;
    require(4 + varg0 + v1 + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(varg1 + 35 < msg.data.length);
    v0 = v3 = varg1.length;
    require(v3 <= uint64.max);
    require(varg1 + (v3 << 5) + 36 <= msg.data.length);
    v0 = v4 = varg1.data;
    v0 = v5 = 0x192e6;
    require(msg.sender == _owner, Error('UNAUTHORIZED'));
    require(block.timestamp <= varg2, TransactionDeadlinePassed());
    require(!(v3 - v1), LengthMismatch());
    v6 = v7 = 0;
    while (1) {
        if (v6 < v0) {
            v8 = _SafeAdd(v0, v0, v6);
            require(v6 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[v0 + (v6 << 5)] < msg.data.length - v0 - 31);
            v9 = msg.data[v0 + msg.data[v0 + (v6 << 5)]];
            require(v9 <= uint64.max);
            v10 = v11 = 32 + (v0 + msg.data[v0 + (v6 << 5)]);
            require(v11 <= msg.data.length - v9);
            v12 = msg.data[v8] >> 248 & 0x3f;
            if (v12 >= 21) {
                if (v12 - 21) {
                    if (v12 - 22) {
                        if (v12 - 23) {
                            if (v12 - 24) {
                                if (v12 - 25) {
                                    if (!(v12 - 26)) {
                                        v6 = v13 = 1;
                                        v14 = new struct(3);
                                        require(!((v14 + 96 > uint64.max) | (v14 + 96 < v14)), Panic(65)); // failed memory allocation (too much memory)
                                        v14.word0 = 0;
                                        v14.word1 = 0;
                                        v14.word2 = 0;
                                        v15 = new struct(3);
                                        v15.word0 = msg.data[v11];
                                        v15.word1 = msg.data[v11 + 32];
                                        v15.word2 = msg.data[v11 + 64];
                                        0x2177(v15, msg.data[v11 + 96], msg.data[v11 + 128], msg.data[v11 + 160], msg.data[v11 + 192]);
                                    }
                                } else {
                                    v6 = v16 = 1;
                                    0x22e5(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64], msg.data[v11 + 96], msg.data[v11 + 128], msg.data[v11 + 160]);
                                    // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                                }
                            } else {
                                v6 = v17 = 1;
                                0x2446(msg.data[v11], msg.data[v11 + 32]);
                                // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                            }
                        } else {
                            v6 = v18 = 1;
                            0x24fc(msg.data[v11], msg.data[v11 + 32]);
                            // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                        }
                    } else {
                        v6 = v19 = 1;
                        0x25d1(msg.data[v11], msg.data[v11 + 32]);
                        // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                    }
                } else {
                    v6 = v20 = 1;
                    0x2698(msg.data[v11], msg.data[v11 + 32]);
                }
            } else if (v12 >= 16) {
                if (v12 - 16) {
                    if (v12 - 17) {
                        if (v12 - 18) {
                            if (v12 - 19) {
                                if (!(v12 - 20)) {
                                    v6 = v21 = 1;
                                    0x278d(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64], msg.data[v11 + 96], msg.data[v11 + 128]);
                                }
                            } else {
                                v6 = v22 = 1;
                                v23 = msg.data[v11];
                                v24 = v25 = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                                v26 = v27 = v11 + uint32(msg.data[v11 + 64]) + 32;
                                require(v9 + v11 >= v25 + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                                if (!v23) {
                                    require(v25 >= 20, SliceOutOfBounds());
                                    v23 = v28 = 0x422b(msg.data[v27] >> 96);
                                }
                                while (1) {
                                    v29, v30, v31, v32, v33, v34, v35, v10, v36 = 0x2996(66 <= v24, 0x19c3d, 0xd9ce49caf7299daf18fffcb2b84a44fd33412509, 0xc8dfcfe47b964d533bd0b6fab7c059ee742526851cc16a888cedeabd46ba7d62, 10670, 10684, v26, v24, v10);
                                    v37, v38 = 0x4c3a(v34, v35);
                                    require(43 <= v37, SliceOutOfBounds());
                                    v39 = address(msg.data[v38] >> 96) < address(msg.data[v38 + 23] >> 96);
                                    v40 = 0x1a62(msg.data[v38] >> 96, msg.data[v38 + 23] >> 96, uint24(msg.data[v38] >> 72), v30, v31);
                                    if (0 == v39) {
                                        v41 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                    } else {
                                        v41 = v42 = 0x1000276a4;
                                    }
                                    MEM[MEM[64] + 32] = address(v30);
                                    MEM[MEM[64] + 32 + 32] = v31;
                                    MEM[MEM[64] + 32 + 64] = 96;
                                    MEM[MEM[64] + 32 + 96] = v37;
                                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v38, v37);
                                    MEM[MEM[64] + 32 + 96 + v37 + 32] = 0;
                                    require(!((MEM[64] + ((v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = address(this);
                                    MEM[MEM[64] + 4 + 32] = bool(v39);
                                    MEM[MEM[64] + 4 + 64] = v29;
                                    MEM[MEM[64] + 4 + 96] = address(v41);
                                    MEM[MEM[64] + 4 + 128] = 160;
                                    MEM[MEM[64] + 4 + 160] = (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                                    MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                                    MEM[MEM[64] + 4 + 160 + ((v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                                    v43, /* uint256 */ v44, /* uint256 */ v44 = address(v40).call(MEM[MEM[64]:MEM[64] + v19c46_0x0V0x12c10x1005V0xf58V0xb2e + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                    if (!v43) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v44 = v45 = 0;
                                        v44 = v46 = 0;
                                        if (v43) {
                                            v47 = 64;
                                            if (64 > RETURNDATASIZE()) {
                                                v47 = v48 = RETURNDATASIZE();
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!((MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v47 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v47 - MEM[64] >= 64);
                                            // Unknown jump to Block 0x29ae0x292dB0x12c10x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                                        } else {
                                            break;
                                        }
                                        if (!v39) {
                                            break;
                                        }
                                        require(v44 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                        v23 = v49 = 0 - v44;
                                        if (!v36) {
                                            require(msg.data[32 + v10] <= v49, V3TooLittleReceived());
                                        } else {
                                            require(23 <= v35);
                                            v26 = 23 + v34;
                                            v24 = v35 - 23;
                                        }
                                    }
                                }
                            }
                        } else {
                            v0 = v50 = 1;
                            v6 = v51 = 0x195b4;
                            v52 = msg.data[v11];
                            v53 = v54 = msg.data[v11 + msg.data[v11 + 64]];
                            v55 = v11 + msg.data[v11 + 64] + 32;
                            require(v54 <= v54 + (v11 + msg.data[v11 + 64] - v11) + 32, Panic(17)); // arithmetic overflow or underflow
                            require(v9 >= v54 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                            if (!v52) {
                                v56 = 0x42e8(v55, v54);
                                require(!(address(msg.data[v56]) - msg.data[v56]));
                                v52 = v57 = 0x422b(msg.data[v56]);
                            }
                            v58 = 0x42e8(v55, v54);
                            require(!(address(msg.data[v58]) - msg.data[v58]));
                            v59 = 0x42f1(v55, v54);
                            require(!(address(msg.data[v59]) - msg.data[v59]));
                            v60 = v61 = 0x4c48(0x115934131916c8b277dd010ee02de363c09d037c, 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a, msg.data[v58], msg.data[v59]);
                            v62 = 0x42e8(v55, v54);
                            require(!(address(msg.data[v62]) - msg.data[v62]));
                            0x1bc1(msg.data[v62], v61, v52);
                            v63 = 0x4310(v54);
                            v64 = 0x4300(v55, v54, v63);
                            require(!(address(msg.data[v64]) - msg.data[v64]));
                            v65 = v66 = MEM[64];
                            v67 = address(msg.data[v64]).balanceOf(this).gas(msg.gas);
                            if (v67) {
                                v60 = v68 = 0;
                                if (v67) {
                                    v10 = v69 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                                    v70 = v71 = 11890;
                                    if (32 <= RETURNDATASIZE()) {
                                        require(!((v66 + 32 > uint64.max) | (v66 + 32 < v66)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v66 + 32;
                                        v72 = v73 = v66 + 32;
                                    }
                                }
                                require(v53 >= 2, V2InvalidPath());
                                v74 = 0x42e8(v55, v53);
                                require(!(address(msg.data[v74]) - msg.data[v74]));
                                v75 = 0x42f1(v55, v53);
                                require(!(address(msg.data[v75]) - msg.data[v75]));
                                v76, v77 = v78 = 0x5516(msg.data[v74], msg.data[v75]);
                                v79 = v80 = 0;
                                while (v79 < v53 - 1) {
                                    v81 = 0x4300(v55, v53, v79);
                                    require(!(address(msg.data[v81]) - msg.data[v81]));
                                    v82 = 0x4300(v55, v53, v79 + 1);
                                    require(!(address(msg.data[v82]) - msg.data[v82]));
                                    v83, /* uint112 */ v84, /* uint112 */ v85, /* uint32 */ v86 = address(v60).getReserves().gas(msg.gas);
                                    if (!v83) {
                                        break;
                                    } else {
                                        v84 = v87 = 0;
                                        v85 = v88 = 0;
                                        if (v83) {
                                            v89 = v90 = 96;
                                            if (v90 > RETURNDATASIZE()) {
                                                v89 = v91 = RETURNDATASIZE();
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!((MEM[64] + (v89 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v89 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v89 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v89 - MEM[64] >= 96);
                                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                            require(!(v85 - uint112(v85)));
                                            require(!(v86 - uint32(v86)));
                                            break;
                                        } else {
                                            break;
                                        }
                                        v92 = v93 = uint112(v84);
                                        v92 = v94 = uint112(v85);
                                        if (0 == (address(msg.data[v81]) == address(v77))) {
                                            break;
                                        }
                                        v95, v96 = address(msg.data[v81]).balanceOf(address(v60)).gas(msg.gas);
                                        if (!v95) {
                                            break;
                                        } else {
                                            v96 = v97 = 0;
                                            if (v95) {
                                                if (32 > RETURNDATASIZE()) {
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    v98 = v99 = MEM[64] + RETURNDATASIZE();
                                                } else {
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + 32;
                                                    v98 = v100 = MEM[64] + 32;
                                                }
                                                require(v98 - MEM[64] >= 32);
                                                break;
                                            } else {
                                                break;
                                            }
                                            v101 = v102 = !v92;
                                            if (bool(v92)) {
                                                v101 = v103 = !v92;
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!v101, InvalidReserves());
                                            if (!(!(v96 - v92) | (997 == (v96 - v92) * 997 / (v96 - v92)))) {
                                                break;
                                            } else {
                                                v104 = _SafeMul((v96 - v92) * 997, v92);
                                                if (!((1000 == v92 * 1000 / v92) | v102)) {
                                                    break;
                                                } else if (v92 * 1000 > v92 * 1000 + (v96 - v92) * 997) {
                                                    break;
                                                } else {
                                                    v105 = v106 = _SafeDiv(v104, v92 * 1000 + (v96 - v92) * 997);
                                                    if (address(msg.data[v81]) != address(v77)) {
                                                        v105 = v107 = 0;
                                                    } else {
                                                        v105 = 0;
                                                    }
                                                    if (v79 >= v53 - 2) {
                                                        v60 = v108 = this;
                                                        v77 = v109 = 0;
                                                    } else {
                                                        v110 = 0x4300(v55, v53, v79 + 2);
                                                        require(!(address(msg.data[v110]) - msg.data[v110]));
                                                        v77 = v111, v60 = v112 = 0x5686(0x115934131916c8b277dd010ee02de363c09d037c, 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a, msg.data[v82], msg.data[v110]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v60)).code.size);
                                                    v113 = new uint256[](0);
                                                    MCOPY(v113.data, MEM[64] + 32, 0);
                                                    MEM[v113.data] = 0;
                                                    v114 = address(v60).swap(v105, v105, address(v60), v113).gas(msg.gas);
                                                    if (v114) {
                                                        if (v114) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                            break;
                                                        }
                                                        v79 = v79 + 1;
                                                    }
                                                }
                                            }
                                            revert(Panic(17));
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                }
                                v65 = v115 = MEM[64];
                                v116 = address(msg.data[v64]).balanceOf(this).gas(msg.gas);
                                if (v116) {
                                    v60 = v117 = 0;
                                    if (v116) {
                                        v70 = 11797;
                                        v53 = 32;
                                        if (v53 <= RETURNDATASIZE()) {
                                            require(!((v115 + 32 > uint64.max) | (v115 + 32 < v115)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v115 + 32;
                                            v72 = v118 = v115 + v53;
                                        }
                                    }
                                }
                                require(!((v65 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v65 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v65)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v65 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v72 = v119 = v65 + RETURNDATASIZE();
                                require(v72 - v65 >= 32);
                                v60 = v120 = MEM[v65];
                                // Unknown jump to Block ['0x2e150x2c2bB0x12ab0x1005B0xf58B0xb2e', '0x2e72B0x12ab0x1005B0xf58B0xb2e']. Refer to 3-address code (TAC);
                                v121 = _SafeSub(v60, v60);
                                require(v121 >= msg.data[v10 + 32], V2TooLittleReceived());
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        v6 = v122 = 1;
                        v123 = msg.data[v11];
                        v124 = v125 = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                        v126 = v127 = v11 + uint32(msg.data[v11 + 64]) + 32;
                        require(v9 + v11 >= v125 + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                        if (!v123) {
                            require(v125 >= 20, SliceOutOfBounds());
                            v123 = v128 = 0x422b(msg.data[v127] >> 96);
                        }
                        while (1) {
                            v129, v130, v131, v132, v133, v134, v135, v10, v136 = 0x2996(66 <= v124, 0x19c66, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2, 10670, 10941, v126, v124, v10);
                            v137, v138 = 0x4c3a(v134, v135);
                            require(43 <= v137, SliceOutOfBounds());
                            v139 = address(msg.data[v138] >> 96) < address(msg.data[v138 + 23] >> 96);
                            v140 = 0x1a62(msg.data[v138] >> 96, msg.data[v138 + 23] >> 96, uint24(msg.data[v138] >> 72), v130, v131);
                            if (0 == v139) {
                                v141 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            } else {
                                v141 = v142 = 0x1000276a4;
                            }
                            MEM[MEM[64] + 32] = address(v130);
                            MEM[MEM[64] + 32 + 32] = v131;
                            MEM[MEM[64] + 32 + 64] = 96;
                            MEM[MEM[64] + 32 + 96] = v137;
                            CALLDATACOPY(MEM[64] + 32 + 96 + 32, v138, v137);
                            MEM[MEM[64] + 32 + 96 + v137 + 32] = 0;
                            require(!((MEM[64] + ((v137 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v137 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = address(this);
                            MEM[MEM[64] + 4 + 32] = bool(v139);
                            MEM[MEM[64] + 4 + 64] = v129;
                            MEM[MEM[64] + 4 + 96] = address(v141);
                            MEM[MEM[64] + 4 + 128] = 160;
                            MEM[MEM[64] + 4 + 160] = (v137 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                            MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v137 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                            MEM[MEM[64] + 4 + 160 + ((v137 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                            v143, /* uint256 */ v144, /* uint256 */ v144 = address(v140).call(MEM[MEM[64]:MEM[64] + v19c6f_0x0V0x12950x1005V0xf58V0xb2e + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                            if (!v143) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v144 = v145 = 0;
                                v144 = v146 = 0;
                                if (v143) {
                                    v147 = 64;
                                    if (64 > RETURNDATASIZE()) {
                                        v147 = v148 = RETURNDATASIZE();
                                        break;
                                    } else {
                                        break;
                                    }
                                    require(!((MEM[64] + (v147 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v147 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v147 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v147 - MEM[64] >= 64);
                                    // Unknown jump to Block 0x29ae0x2a54B0x12950x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                                } else {
                                    break;
                                }
                                if (!v139) {
                                    break;
                                }
                                require(v144 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                v123 = v149 = 0 - v144;
                                if (!v136) {
                                    require(msg.data[32 + v10] <= v149, V3TooLittleReceived());
                                } else {
                                    require(23 <= v135);
                                    v126 = 23 + v134;
                                    v124 = v135 - 23;
                                }
                            }
                        }
                    }
                } else {
                    v0 = v150 = 1;
                    v6 = v151 = 0x1956c;
                    v152 = msg.data[v11];
                    v153 = v154 = msg.data[v11 + msg.data[v11 + 64]];
                    v155 = v11 + msg.data[v11 + 64] + 32;
                    require(v154 <= v154 + (v11 + msg.data[v11 + 64] - v11) + 32, Panic(17)); // arithmetic overflow or underflow
                    require(v9 >= v154 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                    if (!v152) {
                        v156 = 0x42e8(v155, v154);
                        require(!(address(msg.data[v156]) - msg.data[v156]));
                        v152 = v157 = 0x422b(msg.data[v156]);
                    }
                    v158 = 0x42e8(v155, v154);
                    require(!(address(msg.data[v158]) - msg.data[v158]));
                    v159 = 0x42f1(v155, v154);
                    require(!(address(msg.data[v159]) - msg.data[v159]));
                    v160 = v161 = 0x4c48(0x1097053fd2ea711dad45caccc45eff7548fcb362, 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d, msg.data[v158], msg.data[v159]);
                    v162 = 0x42e8(v155, v154);
                    require(!(address(msg.data[v162]) - msg.data[v162]));
                    0x1bc1(msg.data[v162], v161, v152);
                    v163 = 0x4310(v154);
                    v164 = 0x4300(v155, v154, v163);
                    require(!(address(msg.data[v164]) - msg.data[v164]));
                    v165 = v166 = MEM[64];
                    v167 = address(msg.data[v164]).balanceOf(this).gas(msg.gas);
                    if (v167) {
                        v160 = v168 = 0;
                        if (v167) {
                            v10 = v169 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                            v170 = v171 = 12309;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v166 + 32 > uint64.max) | (v166 + 32 < v166)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v166 + 32;
                                v172 = v173 = v166 + 32;
                            }
                        }
                        require(v153 >= 2, V2InvalidPath());
                        v174 = 0x42e8(v155, v153);
                        require(!(address(msg.data[v174]) - msg.data[v174]));
                        v175 = 0x42f1(v155, v153);
                        require(!(address(msg.data[v175]) - msg.data[v175]));
                        v176, v177 = v178 = 0x5516(msg.data[v174], msg.data[v175]);
                        v179 = v180 = 0;
                        while (v179 < v153 - 1) {
                            v181 = 0x4300(v155, v153, v179);
                            require(!(address(msg.data[v181]) - msg.data[v181]));
                            v182 = 0x4300(v155, v153, v179 + 1);
                            require(!(address(msg.data[v182]) - msg.data[v182]));
                            v183, /* uint112 */ v184, /* uint112 */ v185, /* uint32 */ v186 = address(v160).getReserves().gas(msg.gas);
                            if (!v183) {
                                break;
                            } else {
                                v184 = v187 = 0;
                                v185 = v188 = 0;
                                if (v183) {
                                    v189 = v190 = 96;
                                    if (v190 > RETURNDATASIZE()) {
                                        v189 = v191 = RETURNDATASIZE();
                                        break;
                                    } else {
                                        break;
                                    }
                                    require(!((MEM[64] + (v189 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v189 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v189 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v189 - MEM[64] >= 96);
                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                    require(!(v185 - uint112(v185)));
                                    require(!(v186 - uint32(v186)));
                                    break;
                                } else {
                                    break;
                                }
                                v192 = v193 = uint112(v184);
                                v192 = v194 = uint112(v185);
                                if (0 == (address(msg.data[v181]) == address(v177))) {
                                    break;
                                }
                                v195, v196 = address(msg.data[v181]).balanceOf(address(v160)).gas(msg.gas);
                                if (!v195) {
                                    break;
                                } else {
                                    v196 = v197 = 0;
                                    if (v195) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v198 = v199 = MEM[64] + RETURNDATASIZE();
                                        } else {
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + 32;
                                            v198 = v200 = MEM[64] + 32;
                                        }
                                        require(v198 - MEM[64] >= 32);
                                        break;
                                    } else {
                                        break;
                                    }
                                    v201 = v202 = !v192;
                                    if (bool(v192)) {
                                        v201 = v203 = !v192;
                                        break;
                                    } else {
                                        break;
                                    }
                                    require(!v201, InvalidReserves());
                                    if (!(!(v196 - v192) | (997 == (v196 - v192) * 997 / (v196 - v192)))) {
                                        break;
                                    } else {
                                        v204 = _SafeMul((v196 - v192) * 997, v192);
                                        if (!((1000 == v192 * 1000 / v192) | v202)) {
                                            break;
                                        } else if (v192 * 1000 > v192 * 1000 + (v196 - v192) * 997) {
                                            break;
                                        } else {
                                            v205 = v206 = _SafeDiv(v204, v192 * 1000 + (v196 - v192) * 997);
                                            if (address(msg.data[v181]) != address(v177)) {
                                                v205 = v207 = 0;
                                            } else {
                                                v205 = 0;
                                            }
                                            if (v179 >= v153 - 2) {
                                                v160 = v208 = this;
                                                v177 = v209 = 0;
                                            } else {
                                                v210 = 0x4300(v155, v153, v179 + 2);
                                                require(!(address(msg.data[v210]) - msg.data[v210]));
                                                v177 = v211, v160 = v212 = 0x5686(0x1097053fd2ea711dad45caccc45eff7548fcb362, 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d, msg.data[v182], msg.data[v210]);
                                            }
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                            require((address(v160)).code.size);
                                            v213 = new uint256[](0);
                                            MCOPY(v213.data, MEM[64] + 32, 0);
                                            MEM[v213.data] = 0;
                                            v214 = address(v160).swap(v205, v205, address(v160), v213).gas(msg.gas);
                                            if (v214) {
                                                if (v214) {
                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(0 >= 0);
                                                    break;
                                                }
                                                v179 = v179 + 1;
                                            }
                                        }
                                    }
                                    revert(Panic(17));
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                        v165 = v215 = MEM[64];
                        v216 = address(msg.data[v164]).balanceOf(this).gas(msg.gas);
                        if (v216) {
                            v160 = v217 = 0;
                            if (v216) {
                                v170 = 11797;
                                v153 = 32;
                                if (v153 <= RETURNDATASIZE()) {
                                    require(!((v215 + 32 > uint64.max) | (v215 + 32 < v215)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v215 + 32;
                                    v172 = v218 = v215 + v153;
                                }
                            }
                        }
                        require(!((v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v165)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v165 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v172 = v219 = v165 + RETURNDATASIZE();
                        require(v172 - v165 >= 32);
                        v160 = v220 = MEM[v165];
                        // Unknown jump to Block ['0x2e150x2e98B0x127f0x1005B0xf58B0xb2e', '0x3015B0x127f0x1005B0xf58B0xb2e']. Refer to 3-address code (TAC);
                        v221 = _SafeSub(v160, v160);
                        require(v221 >= msg.data[v10 + 32], V2TooLittleReceived());
                    }
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                }
            } else if (v12 >= 12) {
                if (v12 - 12) {
                    if (v12 - 13) {
                        if (v12 - 14) {
                            if (!(v12 - 15)) {
                                v6 = v222 = 1;
                                v223 = 0x345e(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64], msg.data[v11 + 96], msg.data[v11 + 128]);
                            }
                        } else {
                            v6 = v224 = 1;
                            v225 = 0x35c5(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64], msg.data[v11 + 96], msg.data[v11 + 128]);
                            // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                        }
                    } else {
                        v6 = v226 = 1;
                        0x3641(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64], msg.data[v11 + 96], msg.data[v11 + 128], msg.data[v11 + 160]);
                        // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                    }
                } else {
                    v6 = v227 = 1;
                    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = 32;
                    MEM[MEM[64] + 36] = v9;
                    CALLDATACOPY(MEM[64] + 36 + 32, v11, v9);
                    MEM[MEM[64] + 36 + v9 + 32] = 0;
                    v228 = address(0x4444c5dc75cb358380d2e3de08a90).call(v229, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                    if (!v228) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v228) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v230.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v231 = new bytes[](v230.length);
                        require(!((v231 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v230.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v231 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v230.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v231)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v230.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v231.data, v230.data, v230.length);
                        v231[v230.length] = 0;
                    }
                }
            } else if (v12 >= 8) {
                if (v12 - 8) {
                    if (v12 - 9) {
                        if (v12 - 10) {
                            if (!(v12 - 11)) {
                                v6 = v232 = 1;
                                v233 = msg.data[v11 + msg.data[v11 + 64]];
                                if (v233 <= v233 + (v11 + msg.data[v11 + 64] - v11) + 32) {
                                    require(v9 >= v233 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                                    v234 = v235 = 0;
                                    require(v233 >= 2, InvalidPath());
                                    v236 = v237 = msg.data[v11];
                                    v238 = v233 - 1;
                                    if (v238 <= v233) {
                                        while (v238) {
                                            if (v238 - 1 > v238) {
                                                break;
                                            } else {
                                                v239 = 0x4300(v11 + msg.data[v11 + 64] + 32, v233, v238 - 1);
                                                require(!(address(msg.data[v239]) - msg.data[v239]));
                                                v240 = 0x4300(v11 + msg.data[v11 + 64] + 32, v233, v238);
                                                require(!(address(msg.data[v240]) - msg.data[v240]));
                                                v241, v242, v234 = v243 = 0x569c(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v239], msg.data[v240]);
                                                v236 = 0x578b(v236, v242, v241);
                                                if (!v238) {
                                                    break;
                                                } else {
                                                    v238 += uint256.max;
                                                }
                                            }
                                        }
                                        require(v236 <= msg.data[32 + v11], V2TooMuchRequested());
                                        v244 = 0x42e8(v11 + msg.data[v11 + 64] + 32, v233);
                                        require(!(address(msg.data[v244]) - msg.data[v244]));
                                        0x1bc1(msg.data[v244], v234, v236);
                                        require(v233 >= 2, V2InvalidPath());
                                        v245 = 0x42e8(v11 + msg.data[v11 + 64] + 32, v233);
                                        require(!(address(msg.data[v245]) - msg.data[v245]));
                                        v246 = 0x42f1(v11 + msg.data[v11 + 64] + 32, v233);
                                        require(!(address(msg.data[v246]) - msg.data[v246]));
                                        v247, v248 = v249 = 0x5516(msg.data[v245], msg.data[v246]);
                                        v250 = v251 = 0;
                                        while (v250 < v233 - 1) {
                                            v252 = 0x4300(v11 + msg.data[v11 + 64] + 32, v233, v250);
                                            require(!(address(msg.data[v252]) - msg.data[v252]));
                                            v253 = 0x4300(v11 + msg.data[v11 + 64] + 32, v233, v250 + 1);
                                            require(!(address(msg.data[v253]) - msg.data[v253]));
                                            v254, /* uint112 */ v255, /* uint112 */ v256, /* uint32 */ v257 = address(v234).getReserves().gas(msg.gas);
                                            if (!v254) {
                                                break;
                                            } else {
                                                v255 = v258 = 0;
                                                v256 = v259 = 0;
                                                if (v254) {
                                                    v260 = v261 = 96;
                                                    if (v261 > RETURNDATASIZE()) {
                                                        v260 = v262 = RETURNDATASIZE();
                                                        break;
                                                    } else {
                                                        break;
                                                    }
                                                    require(!((MEM[64] + (v260 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v260 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v260 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v260 - MEM[64] >= 96);
                                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                                    require(!(v256 - uint112(v256)));
                                                    require(!(v257 - uint32(v257)));
                                                    break;
                                                } else {
                                                    break;
                                                }
                                                v263 = v264 = uint112(v255);
                                                v263 = v265 = uint112(v256);
                                                if (0 == (address(msg.data[v252]) == address(v248))) {
                                                    break;
                                                }
                                                v266, v267 = address(msg.data[v252]).balanceOf(address(v234)).gas(msg.gas);
                                                if (!v266) {
                                                    break;
                                                } else {
                                                    v267 = v268 = 0;
                                                    if (v266) {
                                                        if (32 > RETURNDATASIZE()) {
                                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            v269 = v270 = MEM[64] + RETURNDATASIZE();
                                                        } else {
                                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + 32;
                                                            v269 = v271 = MEM[64] + 32;
                                                        }
                                                        require(v269 - MEM[64] >= 32);
                                                        break;
                                                    } else {
                                                        break;
                                                    }
                                                    v272 = v273 = !v263;
                                                    if (bool(v263)) {
                                                        v272 = v274 = !v263;
                                                        break;
                                                    } else {
                                                        break;
                                                    }
                                                    require(!v272, InvalidReserves());
                                                    if (!(!(v267 - v263) | (997 == (v267 - v263) * 997 / (v267 - v263)))) {
                                                        break;
                                                    } else {
                                                        v275 = _SafeMul((v267 - v263) * 997, v263);
                                                        if (!((1000 == v263 * 1000 / v263) | v273)) {
                                                            break;
                                                        } else if (v263 * 1000 > v263 * 1000 + (v267 - v263) * 997) {
                                                            break;
                                                        } else {
                                                            v276 = v277 = _SafeDiv(v275, v263 * 1000 + (v267 - v263) * 997);
                                                            if (address(msg.data[v252]) != address(v248)) {
                                                                v276 = v278 = 0;
                                                            } else {
                                                                v276 = 0;
                                                            }
                                                            if (v250 >= v233 - 2) {
                                                                v234 = v279 = this;
                                                                v248 = v280 = 0;
                                                            } else {
                                                                v281 = 0x4300(v11 + msg.data[v11 + 64] + 32, v233, v250 + 2);
                                                                require(!(address(msg.data[v281]) - msg.data[v281]));
                                                                v248 = v282, v234 = v283 = 0x5686(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v253], msg.data[v281]);
                                                            }
                                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                            require((address(v234)).code.size);
                                                            v284 = new uint256[](0);
                                                            MCOPY(v284.data, MEM[64] + 32, 0);
                                                            MEM[v284.data] = 0;
                                                            v285 = address(v234).swap(v276, v276, address(v234), v284).gas(msg.gas);
                                                            if (v285) {
                                                                if (v285) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                    require(0 >= 0);
                                                                    break;
                                                                }
                                                                v250 = v250 + 1;
                                                            }
                                                        }
                                                    }
                                                    revert(Panic(17));
                                                }
                                            }
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        }
                                    }
                                }
                                revert(Panic(17));
                            }
                        } else {
                            v0 = v286 = 1;
                            v6 = v287 = 0x19492;
                            v288 = msg.data[v11];
                            v289 = v290 = msg.data[v11 + msg.data[v11 + 64]];
                            v291 = v11 + msg.data[v11 + 64] + 32;
                            require(v290 <= v290 + (v11 + msg.data[v11 + 64] - v11) + 32, Panic(17)); // arithmetic overflow or underflow
                            require(v9 >= v290 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                            if (!v288) {
                                v292 = 0x42e8(v291, v290);
                                require(!(address(msg.data[v292]) - msg.data[v292]));
                                v288 = v293 = 0x422b(msg.data[v292]);
                            }
                            v294 = 0x42e8(v291, v290);
                            require(!(address(msg.data[v294]) - msg.data[v294]));
                            v295 = 0x42f1(v291, v290);
                            require(!(address(msg.data[v295]) - msg.data[v295]));
                            v296 = v297 = 0x4c48(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v294], msg.data[v295]);
                            v298 = 0x42e8(v291, v290);
                            require(!(address(msg.data[v298]) - msg.data[v298]));
                            0x1bc1(msg.data[v298], v297, v288);
                            v299 = 0x4310(v290);
                            v300 = 0x4300(v291, v290, v299);
                            require(!(address(msg.data[v300]) - msg.data[v300]));
                            v301 = v302 = MEM[64];
                            v303 = address(msg.data[v300]).balanceOf(this).gas(msg.gas);
                            if (v303) {
                                v296 = v304 = 0;
                                if (v303) {
                                    v10 = v305 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                                    v306 = v307 = 12723;
                                    if (32 <= RETURNDATASIZE()) {
                                        require(!((v302 + 32 > uint64.max) | (v302 + 32 < v302)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = v302 + 32;
                                        v308 = v309 = v302 + 32;
                                    }
                                }
                                require(v289 >= 2, V2InvalidPath());
                                v310 = 0x42e8(v291, v289);
                                require(!(address(msg.data[v310]) - msg.data[v310]));
                                v311 = 0x42f1(v291, v289);
                                require(!(address(msg.data[v311]) - msg.data[v311]));
                                v312, v313 = v314 = 0x5516(msg.data[v310], msg.data[v311]);
                                v315 = v316 = 0;
                                while (v315 < v289 - 1) {
                                    v317 = 0x4300(v291, v289, v315);
                                    require(!(address(msg.data[v317]) - msg.data[v317]));
                                    v318 = 0x4300(v291, v289, v315 + 1);
                                    require(!(address(msg.data[v318]) - msg.data[v318]));
                                    v319, /* uint112 */ v320, /* uint112 */ v321, /* uint32 */ v322 = address(v296).getReserves().gas(msg.gas);
                                    if (!v319) {
                                        break;
                                    } else {
                                        v320 = v323 = 0;
                                        v321 = v324 = 0;
                                        if (v319) {
                                            v325 = v326 = 96;
                                            if (v326 > RETURNDATASIZE()) {
                                                v325 = v327 = RETURNDATASIZE();
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!((MEM[64] + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v325 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v325 - MEM[64] >= 96);
                                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                            require(!(v321 - uint112(v321)));
                                            require(!(v322 - uint32(v322)));
                                            break;
                                        } else {
                                            break;
                                        }
                                        v328 = v329 = uint112(v320);
                                        v328 = v330 = uint112(v321);
                                        if (0 == (address(msg.data[v317]) == address(v313))) {
                                            break;
                                        }
                                        v331, v332 = address(msg.data[v317]).balanceOf(address(v296)).gas(msg.gas);
                                        if (!v331) {
                                            break;
                                        } else {
                                            v332 = v333 = 0;
                                            if (v331) {
                                                if (32 > RETURNDATASIZE()) {
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    v334 = v335 = MEM[64] + RETURNDATASIZE();
                                                } else {
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + 32;
                                                    v334 = v336 = MEM[64] + 32;
                                                }
                                                require(v334 - MEM[64] >= 32);
                                                break;
                                            } else {
                                                break;
                                            }
                                            v337 = v338 = !v328;
                                            if (bool(v328)) {
                                                v337 = v339 = !v328;
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!v337, InvalidReserves());
                                            if (!(!(v332 - v328) | (997 == (v332 - v328) * 997 / (v332 - v328)))) {
                                                break;
                                            } else {
                                                v340 = _SafeMul((v332 - v328) * 997, v328);
                                                if (!((1000 == v328 * 1000 / v328) | v338)) {
                                                    break;
                                                } else if (v328 * 1000 > v328 * 1000 + (v332 - v328) * 997) {
                                                    break;
                                                } else {
                                                    v341 = v342 = _SafeDiv(v340, v328 * 1000 + (v332 - v328) * 997);
                                                    if (address(msg.data[v317]) != address(v313)) {
                                                        v341 = v343 = 0;
                                                    } else {
                                                        v341 = 0;
                                                    }
                                                    if (v315 >= v289 - 2) {
                                                        v296 = v344 = this;
                                                        v313 = v345 = 0;
                                                    } else {
                                                        v346 = 0x4300(v291, v289, v315 + 2);
                                                        require(!(address(msg.data[v346]) - msg.data[v346]));
                                                        v313 = v347, v296 = v348 = 0x5686(0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac, 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303, msg.data[v318], msg.data[v346]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v296)).code.size);
                                                    v349 = new uint256[](0);
                                                    MCOPY(v349.data, MEM[64] + 32, 0);
                                                    MEM[v349.data] = 0;
                                                    v350 = address(v296).swap(v341, v341, address(v296), v349).gas(msg.gas);
                                                    if (v350) {
                                                        if (v350) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                            break;
                                                        }
                                                        v315 = v315 + 1;
                                                    }
                                                }
                                            }
                                            revert(Panic(17));
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                }
                                v301 = v351 = MEM[64];
                                v352 = address(msg.data[v300]).balanceOf(this).gas(msg.gas);
                                if (v352) {
                                    v296 = v353 = 0;
                                    if (v352) {
                                        v306 = 11797;
                                        v289 = 32;
                                        if (v289 <= RETURNDATASIZE()) {
                                            require(!((v351 + 32 > uint64.max) | (v351 + 32 < v351)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v351 + 32;
                                            v308 = v354 = v351 + v289;
                                        }
                                    }
                                }
                                require(!((v301 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v301 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v301)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v301 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v308 = v355 = v301 + RETURNDATASIZE();
                                require(v308 - v301 >= 32);
                                v296 = v356 = MEM[v301];
                                // Unknown jump to Block ['0x2e150x3036B0x11a40x1005B0xf58B0xb2e', '0x31b3B0x11a40x1005B0xf58B0xb2e']. Refer to 3-address code (TAC);
                                v357 = _SafeSub(v296, v296);
                                require(v357 >= msg.data[v10 + 32], V2TooLittleReceived());
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    } else {
                        v6 = v358 = 1;
                        require(v9 + v11 >= uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                        _shibaswapV2SwapCallback = msg.data[v11 + 32];
                        v359 = 0x1c25(msg.data[v11]);
                        v360 = 0x176f(v359);
                        require(43 <= uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]), SliceOutOfBounds());
                        v361 = address(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32 + 23] >> 96) < address(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 96);
                        v362 = 0x1a62(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 96, msg.data[v11 + uint32(msg.data[v11 + 64]) + 32 + 23] >> 96, uint24(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 72), 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                        if (0 == v361) {
                            v363 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v363 = v364 = 0x1000276a4;
                        }
                        MEM[MEM[64] + 32] = address(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f);
                        MEM[MEM[64] + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                        MEM[MEM[64] + 32 + 64] = 96;
                        MEM[MEM[64] + 32 + 96] = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                        CALLDATACOPY(MEM[64] + 32 + 96 + 32, v11 + uint32(msg.data[v11 + 64]) + 32, uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]));
                        MEM[MEM[64] + 32 + 96 + uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 32] = 0;
                        require(!((MEM[64] + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(this);
                        MEM[MEM[64] + 4 + 32] = bool(v361);
                        MEM[MEM[64] + 4 + 64] = v360;
                        MEM[MEM[64] + 4 + 96] = address(v363);
                        MEM[MEM[64] + 4 + 128] = 160;
                        MEM[MEM[64] + 4 + 160] = (uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                        MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                        MEM[MEM[64] + 4 + 160 + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                        v365, /* uint256 */ v366, /* uint256 */ v367 = address(v362).call(MEM[MEM[64]:MEM[64] + uint32(msg.data[vfe2V0xff7V0x102c0x1005V0xf58V0xb2e + uint32(msg.data[vfe2V0xff7V0x102c0x1005V0xf58V0xb2e + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (!v365) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v366 = v368 = 0;
                            v367 = v369 = 0;
                            if (v365) {
                                v370 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v370 = v371 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v370 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v370 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v370 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v370 - MEM[64] >= 64);
                            }
                            if (!v361) {
                                v372 = v373 = 0x176f(v366);
                            } else {
                                v372 = v374 = 0x176f(v367);
                            }
                            require(!(v372 - msg.data[v11]), V3InvalidAmountOut());
                            _shibaswapV2SwapCallback = 0;
                        }
                    }
                } else {
                    v6 = v375 = 1;
                    v376 = msg.data[v11];
                    v377 = v378 = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                    v379 = v380 = v11 + uint32(msg.data[v11 + 64]) + 32;
                    require(v9 + v11 >= v378 + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                    if (!v376) {
                        require(v378 >= 20, SliceOutOfBounds());
                        v376 = v381 = 0x422b(msg.data[v380] >> 96);
                    }
                    while (1) {
                        v382, v383, v384, v385, v386, v387, v388, v10, v389 = 0x2996(66 <= v377, 0x19c8f, 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54, 10670, 11098, v379, v377, v10);
                        v390, v391 = 0x4c3a(v387, v388);
                        require(43 <= v390, SliceOutOfBounds());
                        v392 = address(msg.data[v391] >> 96) < address(msg.data[v391 + 23] >> 96);
                        v393 = 0x1a62(msg.data[v391] >> 96, msg.data[v391 + 23] >> 96, uint24(msg.data[v391] >> 72), v383, v384);
                        if (0 == v392) {
                            v394 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v394 = v395 = 0x1000276a4;
                        }
                        MEM[MEM[64] + 32] = address(v383);
                        MEM[MEM[64] + 32 + 32] = v384;
                        MEM[MEM[64] + 32 + 64] = 96;
                        MEM[MEM[64] + 32 + 96] = v390;
                        CALLDATACOPY(MEM[64] + 32 + 96 + 32, v391, v390);
                        MEM[MEM[64] + 32 + 96 + v390 + 32] = 0;
                        require(!((MEM[64] + ((v390 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v390 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = address(this);
                        MEM[MEM[64] + 4 + 32] = bool(v392);
                        MEM[MEM[64] + 4 + 64] = v382;
                        MEM[MEM[64] + 4 + 96] = address(v394);
                        MEM[MEM[64] + 4 + 128] = 160;
                        MEM[MEM[64] + 4 + 160] = (v390 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                        MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v390 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                        MEM[MEM[64] + 4 + 160 + ((v390 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                        v396, /* uint256 */ v397, /* uint256 */ v397 = address(v393).call(MEM[MEM[64]:MEM[64] + v19c98_0x0V0x11780x1005V0xf58V0xb2e + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (!v396) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v397 = v398 = 0;
                            v397 = v399 = 0;
                            if (v396) {
                                v400 = 64;
                                if (64 > RETURNDATASIZE()) {
                                    v400 = v401 = RETURNDATASIZE();
                                    break;
                                } else {
                                    break;
                                }
                                require(!((MEM[64] + (v400 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v400 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v400 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v400 - MEM[64] >= 64);
                                // Unknown jump to Block 0x29ae0x2af1B0x11780x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                            } else {
                                break;
                            }
                            if (!v392) {
                                break;
                            }
                            require(v397 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            v376 = v402 = 0 - v397;
                            if (!v389) {
                                require(msg.data[32 + v10] <= v402, V3TooLittleReceived());
                            } else {
                                require(23 <= v388);
                                v379 = 23 + v387;
                                v377 = v388 - 23;
                            }
                        }
                    }
                }
            } else if (v12 >= 4) {
                if (v12 - 4) {
                    if (v12 - 5) {
                        if (v12 - 6) {
                            if (!(v12 - 7)) {
                                v6 = v403 = 1;
                                0x3c8c(msg.data[v11], msg.data[v11 + 32]);
                            }
                        } else {
                            v6 = v404 = 1;
                            0x3dec(msg.data[v11], msg.data[v11 + 32]);
                            // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                        }
                    } else {
                        v6 = v405 = 1;
                        v406 = msg.data[v11 + msg.data[v11 + 64]];
                        if (v406 <= v406 + (v11 + msg.data[v11 + 64] - v11) + 32) {
                            require(v9 >= v406 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                            v407 = v408 = 0;
                            require(v406 >= 2, InvalidPath());
                            v409 = v410 = msg.data[v11];
                            v411 = v406 - 1;
                            if (v411 <= v406) {
                                while (v411) {
                                    if (v411 - 1 > v411) {
                                        break;
                                    } else {
                                        v412 = 0x4300(v11 + msg.data[v11 + 64] + 32, v406, v411 - 1);
                                        require(!(address(msg.data[v412]) - msg.data[v412]));
                                        v413 = 0x4300(v11 + msg.data[v11 + 64] + 32, v406, v411);
                                        require(!(address(msg.data[v413]) - msg.data[v413]));
                                        v414, v415, v407 = v416 = 0x569c(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v412], msg.data[v413]);
                                        v409 = 0x578b(v409, v415, v414);
                                        if (!v411) {
                                            break;
                                        } else {
                                            v411 += uint256.max;
                                        }
                                    }
                                }
                                require(v409 <= msg.data[32 + v11], V2TooMuchRequested());
                                v417 = 0x42e8(v11 + msg.data[v11 + 64] + 32, v406);
                                require(!(address(msg.data[v417]) - msg.data[v417]));
                                0x1bc1(msg.data[v417], v407, v409);
                                require(v406 >= 2, V2InvalidPath());
                                v418 = 0x42e8(v11 + msg.data[v11 + 64] + 32, v406);
                                require(!(address(msg.data[v418]) - msg.data[v418]));
                                v419 = 0x42f1(v11 + msg.data[v11 + 64] + 32, v406);
                                require(!(address(msg.data[v419]) - msg.data[v419]));
                                v420, v421 = v422 = 0x5516(msg.data[v418], msg.data[v419]);
                                v423 = v424 = 0;
                                while (v423 < v406 - 1) {
                                    v425 = 0x4300(v11 + msg.data[v11 + 64] + 32, v406, v423);
                                    require(!(address(msg.data[v425]) - msg.data[v425]));
                                    v426 = 0x4300(v11 + msg.data[v11 + 64] + 32, v406, v423 + 1);
                                    require(!(address(msg.data[v426]) - msg.data[v426]));
                                    v427, /* uint112 */ v428, /* uint112 */ v429, /* uint32 */ v430 = address(v407).getReserves().gas(msg.gas);
                                    if (!v427) {
                                        break;
                                    } else {
                                        v428 = v431 = 0;
                                        v429 = v432 = 0;
                                        if (v427) {
                                            v433 = v434 = 96;
                                            if (v434 > RETURNDATASIZE()) {
                                                v433 = v435 = RETURNDATASIZE();
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!((MEM[64] + (v433 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v433 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v433 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v433 - MEM[64] >= 96);
                                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                            require(!(v429 - uint112(v429)));
                                            require(!(v430 - uint32(v430)));
                                            break;
                                        } else {
                                            break;
                                        }
                                        v436 = v437 = uint112(v428);
                                        v436 = v438 = uint112(v429);
                                        if (0 == (address(msg.data[v425]) == address(v421))) {
                                            break;
                                        }
                                        v439, v440 = address(msg.data[v425]).balanceOf(address(v407)).gas(msg.gas);
                                        if (!v439) {
                                            break;
                                        } else {
                                            v440 = v441 = 0;
                                            if (v439) {
                                                if (32 > RETURNDATASIZE()) {
                                                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    v442 = v443 = MEM[64] + RETURNDATASIZE();
                                                } else {
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + 32;
                                                    v442 = v444 = MEM[64] + 32;
                                                }
                                                require(v442 - MEM[64] >= 32);
                                                break;
                                            } else {
                                                break;
                                            }
                                            v445 = v446 = !v436;
                                            if (bool(v436)) {
                                                v445 = v447 = !v436;
                                                break;
                                            } else {
                                                break;
                                            }
                                            require(!v445, InvalidReserves());
                                            if (!(!(v440 - v436) | (997 == (v440 - v436) * 997 / (v440 - v436)))) {
                                                break;
                                            } else {
                                                v448 = _SafeMul((v440 - v436) * 997, v436);
                                                if (!((1000 == v436 * 1000 / v436) | v446)) {
                                                    break;
                                                } else if (v436 * 1000 > v436 * 1000 + (v440 - v436) * 997) {
                                                    break;
                                                } else {
                                                    v449 = v450 = _SafeDiv(v448, v436 * 1000 + (v440 - v436) * 997);
                                                    if (address(msg.data[v425]) != address(v421)) {
                                                        v449 = v451 = 0;
                                                    } else {
                                                        v449 = 0;
                                                    }
                                                    if (v423 >= v406 - 2) {
                                                        v407 = v452 = this;
                                                        v421 = v453 = 0;
                                                    } else {
                                                        v454 = 0x4300(v11 + msg.data[v11 + 64] + 32, v406, v423 + 2);
                                                        require(!(address(msg.data[v454]) - msg.data[v454]));
                                                        v421 = v455, v407 = v456 = 0x5686(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v426], msg.data[v454]);
                                                    }
                                                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                                    require((address(v407)).code.size);
                                                    v457 = new uint256[](0);
                                                    MCOPY(v457.data, MEM[64] + 32, 0);
                                                    MEM[v457.data] = 0;
                                                    v458 = address(v407).swap(v449, v449, address(v407), v457).gas(msg.gas);
                                                    if (v458) {
                                                        if (v458) {
                                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64];
                                                            require(0 >= 0);
                                                            break;
                                                        }
                                                        v423 = v423 + 1;
                                                    }
                                                }
                                            }
                                            revert(Panic(17));
                                        }
                                    }
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                }
                            }
                        }
                        revert(Panic(17));
                    }
                } else {
                    v0 = v459 = 1;
                    v6 = v460 = 0x193ba;
                    v461 = msg.data[v11];
                    v462 = v463 = msg.data[v11 + msg.data[v11 + 64]];
                    v464 = v11 + msg.data[v11 + 64] + 32;
                    require(v463 <= v463 + (v11 + msg.data[v11 + 64] - v11) + 32, Panic(17)); // arithmetic overflow or underflow
                    require(v9 >= v463 + (v11 + msg.data[v11 + 64] - v11) + 32, SliceOutOfBounds());
                    if (!v461) {
                        v465 = 0x42e8(v464, v463);
                        require(!(address(msg.data[v465]) - msg.data[v465]));
                        v461 = v466 = 0x422b(msg.data[v465]);
                    }
                    v467 = 0x42e8(v464, v463);
                    require(!(address(msg.data[v467]) - msg.data[v467]));
                    v468 = 0x42f1(v464, v463);
                    require(!(address(msg.data[v468]) - msg.data[v468]));
                    v469 = v470 = 0x4c48(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v467], msg.data[v468]);
                    v471 = 0x42e8(v464, v463);
                    require(!(address(msg.data[v471]) - msg.data[v471]));
                    0x1bc1(msg.data[v471], v470, v461);
                    v472 = 0x4310(v463);
                    v473 = 0x4300(v464, v463, v472);
                    require(!(address(msg.data[v473]) - msg.data[v473]));
                    v474 = v475 = MEM[64];
                    v476 = address(msg.data[v473]).balanceOf(this).gas(msg.gas);
                    if (v476) {
                        v469 = v477 = 0;
                        if (v476) {
                            v10 = v478 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                            v479 = v480 = 13137;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v475 + 32 > uint64.max) | (v475 + 32 < v475)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v475 + 32;
                                v481 = v482 = v475 + 32;
                            }
                        }
                        require(v462 >= 2, V2InvalidPath());
                        v483 = 0x42e8(v464, v462);
                        require(!(address(msg.data[v483]) - msg.data[v483]));
                        v484 = 0x42f1(v464, v462);
                        require(!(address(msg.data[v484]) - msg.data[v484]));
                        v485, v486 = v487 = 0x5516(msg.data[v483], msg.data[v484]);
                        v488 = v489 = 0;
                        while (v488 < v462 - 1) {
                            v490 = 0x4300(v464, v462, v488);
                            require(!(address(msg.data[v490]) - msg.data[v490]));
                            v491 = 0x4300(v464, v462, v488 + 1);
                            require(!(address(msg.data[v491]) - msg.data[v491]));
                            v492, /* uint112 */ v493, /* uint112 */ v494, /* uint32 */ v495 = address(v469).getReserves().gas(msg.gas);
                            if (!v492) {
                                break;
                            } else {
                                v493 = v496 = 0;
                                v494 = v497 = 0;
                                if (v492) {
                                    v498 = v499 = 96;
                                    if (v499 > RETURNDATASIZE()) {
                                        v498 = v500 = RETURNDATASIZE();
                                        break;
                                    } else {
                                        break;
                                    }
                                    require(!((MEM[64] + (v498 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v498 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v498 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v498 - MEM[64] >= 96);
                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                    require(!(v494 - uint112(v494)));
                                    require(!(v495 - uint32(v495)));
                                    break;
                                } else {
                                    break;
                                }
                                v501 = v502 = uint112(v493);
                                v501 = v503 = uint112(v494);
                                if (0 == (address(msg.data[v490]) == address(v486))) {
                                    break;
                                }
                                v504, v505 = address(msg.data[v490]).balanceOf(address(v469)).gas(msg.gas);
                                if (!v504) {
                                    break;
                                } else {
                                    v505 = v506 = 0;
                                    if (v504) {
                                        if (32 > RETURNDATASIZE()) {
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            v507 = v508 = MEM[64] + RETURNDATASIZE();
                                        } else {
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + 32;
                                            v507 = v509 = MEM[64] + 32;
                                        }
                                        require(v507 - MEM[64] >= 32);
                                        break;
                                    } else {
                                        break;
                                    }
                                    v510 = v511 = !v501;
                                    if (bool(v501)) {
                                        v510 = v512 = !v501;
                                        break;
                                    } else {
                                        break;
                                    }
                                    require(!v510, InvalidReserves());
                                    if (!(!(v505 - v501) | (997 == (v505 - v501) * 997 / (v505 - v501)))) {
                                        break;
                                    } else {
                                        v513 = _SafeMul((v505 - v501) * 997, v501);
                                        if (!((1000 == v501 * 1000 / v501) | v511)) {
                                            break;
                                        } else if (v501 * 1000 > v501 * 1000 + (v505 - v501) * 997) {
                                            break;
                                        } else {
                                            v514 = v515 = _SafeDiv(v513, v501 * 1000 + (v505 - v501) * 997);
                                            if (address(msg.data[v490]) != address(v486)) {
                                                v514 = v516 = 0;
                                            } else {
                                                v514 = 0;
                                            }
                                            if (v488 >= v462 - 2) {
                                                v469 = v517 = this;
                                                v486 = v518 = 0;
                                            } else {
                                                v519 = 0x4300(v464, v462, v488 + 2);
                                                require(!(address(msg.data[v519]) - msg.data[v519]));
                                                v486 = v520, v469 = v521 = 0x5686(0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f, 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f, msg.data[v491], msg.data[v519]);
                                            }
                                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                                            require((address(v469)).code.size);
                                            v522 = new uint256[](0);
                                            MCOPY(v522.data, MEM[64] + 32, 0);
                                            MEM[v522.data] = 0;
                                            v523 = address(v469).swap(v514, v514, address(v469), v522).gas(msg.gas);
                                            if (v523) {
                                                if (v523) {
                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64];
                                                    require(0 >= 0);
                                                    break;
                                                }
                                                v488 = v488 + 1;
                                            }
                                        }
                                    }
                                    revert(Panic(17));
                                }
                            }
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                        v474 = v524 = MEM[64];
                        v525 = address(msg.data[v473]).balanceOf(this).gas(msg.gas);
                        if (v525) {
                            v469 = v526 = 0;
                            if (v525) {
                                v479 = 11797;
                                v462 = 32;
                                if (v462 <= RETURNDATASIZE()) {
                                    require(!((v524 + 32 > uint64.max) | (v524 + 32 < v524)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v524 + 32;
                                    v481 = v527 = v524 + v462;
                                }
                            }
                        }
                        require(!((v474 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v474 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v474)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v474 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v481 = v528 = v474 + RETURNDATASIZE();
                        require(v481 - v474 >= 32);
                        v469 = v529 = MEM[v474];
                        // Unknown jump to Block ['0x2e150x31d4B0x11110x1005B0xf58B0xb2e', '0x3351B0x11110x1005B0xf58B0xb2e']. Refer to 3-address code (TAC);
                        v530 = _SafeSub(v469, v469);
                        require(v530 >= msg.data[v10 + 32], V2TooLittleReceived());
                    }
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                }
            } else if (v12) {
                if (v12 - 1) {
                    if (v12 - 2) {
                        if (!(v12 - 3)) {
                            v6 = v531 = 1;
                            0x1bc1(msg.data[v11], msg.data[v11 + 32], msg.data[v11 + 64]);
                        }
                    } else {
                        v6 = v532 = 1;
                        0x4045(block.coinbase, msg.data[v11]);
                        // Unknown jump to Block 0x107f0x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                    }
                } else {
                    v6 = v533 = 1;
                    require(v9 + v11 >= uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                    _shibaswapV2SwapCallback = msg.data[v11 + 32];
                    v534 = 0x1c25(msg.data[v11]);
                    v535 = 0x176f(v534);
                    require(43 <= uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]), SliceOutOfBounds());
                    v536 = address(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32 + 23] >> 96) < address(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 96);
                    v537 = 0x1a62(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 96, msg.data[v11 + uint32(msg.data[v11 + 64]) + 32 + 23] >> 96, uint24(msg.data[v11 + uint32(msg.data[v11 + 64]) + 32] >> 72), 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
                    if (0 == v536) {
                        v538 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v538 = v539 = 0x1000276a4;
                    }
                    MEM[MEM[64] + 32] = address(0x1f98431c8ad98523631ae4a59f267346ea31f984);
                    MEM[MEM[64] + 32 + 32] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                    MEM[MEM[64] + 32 + 64] = 96;
                    MEM[MEM[64] + 32 + 96] = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v11 + uint32(msg.data[v11 + 64]) + 32, uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]));
                    MEM[MEM[64] + 32 + 96 + uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 32] = 0;
                    require(!((MEM[64] + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = address(this);
                    MEM[MEM[64] + 4 + 32] = bool(v536);
                    MEM[MEM[64] + 4 + 64] = v535;
                    MEM[MEM[64] + 4 + 96] = address(v538);
                    MEM[MEM[64] + 4 + 128] = 160;
                    MEM[MEM[64] + 4 + 160] = (uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                    MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                    MEM[MEM[64] + 4 + 160 + ((uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                    v540, /* uint256 */ v541, /* uint256 */ v542 = address(v537).call(MEM[MEM[64]:MEM[64] + uint32(msg.data[vfe2V0xff7V0x102c0x1005V0xf58V0xb2e + uint32(msg.data[vfe2V0xff7V0x102c0x1005V0xf58V0xb2e + 64])]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                    if (!v540) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v541 = v543 = 0;
                        v542 = v544 = 0;
                        if (v540) {
                            v545 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v545 = v546 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v545 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v545 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v545 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v545 - MEM[64] >= 64);
                        }
                        if (!v536) {
                            v547 = v548 = 0x176f(v541);
                        } else {
                            v547 = v549 = 0x176f(v542);
                        }
                        require(!(v547 - msg.data[v11]), V3InvalidAmountOut());
                        _shibaswapV2SwapCallback = 0;
                    }
                }
            } else {
                v6 = v550 = 1;
                v551 = msg.data[v11];
                v552 = v553 = uint32(msg.data[v11 + uint32(msg.data[v11 + 64])]);
                v554 = v555 = v11 + uint32(msg.data[v11 + 64]) + 32;
                require(v9 + v11 >= v553 + (v11 + uint32(msg.data[v11 + 64])) + 32, SliceOutOfBounds());
                if (!v551) {
                    require(v553 >= 20, SliceOutOfBounds());
                    v551 = v556 = 0x422b(msg.data[v555] >> 96);
                }
                while (1) {
                    v557, v558, v559, v560, v561, v562, v563, v10, v564 = 0x2996(66 <= v552, 0x19cb8, 0x1f98431c8ad98523631ae4a59f267346ea31f984, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54, 10670, 11255, v554, v552, v10);
                    v565, v566 = 0x4c3a(v562, v563);
                    require(43 <= v565, SliceOutOfBounds());
                    v567 = address(msg.data[v566] >> 96) < address(msg.data[v566 + 23] >> 96);
                    v568 = 0x1a62(msg.data[v566] >> 96, msg.data[v566 + 23] >> 96, uint24(msg.data[v566] >> 72), v558, v559);
                    if (0 == v567) {
                        v569 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v569 = v570 = 0x1000276a4;
                    }
                    MEM[MEM[64] + 32] = address(v558);
                    MEM[MEM[64] + 32 + 32] = v559;
                    MEM[MEM[64] + 32 + 64] = 96;
                    MEM[MEM[64] + 32 + 96] = v565;
                    CALLDATACOPY(MEM[64] + 32 + 96 + 32, v566, v565);
                    MEM[MEM[64] + 32 + 96 + v565 + 32] = 0;
                    require(!((MEM[64] + ((v565 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((v565 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[MEM[64] + 4] = address(this);
                    MEM[MEM[64] + 4 + 32] = bool(v567);
                    MEM[MEM[64] + 4 + 64] = v557;
                    MEM[MEM[64] + 4 + 96] = address(v569);
                    MEM[MEM[64] + 4 + 128] = 160;
                    MEM[MEM[64] + 4 + 160] = (v565 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32;
                    MCOPY(MEM[64] + 4 + 160 + 32, MEM[64] + 32, (v565 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
                    MEM[MEM[64] + 4 + 160 + ((v565 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
                    v571, /* uint256 */ v572, /* uint256 */ v572 = address(v568).call(MEM[MEM[64]:MEM[64] + v19cc1_0x0V0x10720x1005V0xf58V0xb2e + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 32 + 96 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                    if (!v571) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v572 = v573 = 0;
                        v572 = v574 = 0;
                        if (v571) {
                            v575 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v575 = v576 = RETURNDATASIZE();
                                break;
                            } else {
                                break;
                            }
                            require(!((MEM[64] + (v575 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v575 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v575 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v575 - MEM[64] >= 64);
                            // Unknown jump to Block 0x29ae0x2b8eB0x10720x1005B0xf58B0xb2e. Refer to 3-address code (TAC);
                        } else {
                            break;
                        }
                        if (!v567) {
                            break;
                        }
                        require(v572 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v551 = v577 = 0 - v572;
                        if (!v564) {
                            require(msg.data[32 + v10] <= v577, V3TooLittleReceived());
                        } else {
                            require(23 <= v563);
                            v554 = 23 + v562;
                            v552 = v563 - 23;
                        }
                    }
                }
            }
            revert(InvalidCommandType(v12));
            v6 += v6;
        } else {
            exit;
        }
    }
}

function 0xa16aa1d1(uint256 varg0, uint256 varg1, uint256 varg2, bytes varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    require(msg.sender == _owner, Error('UNAUTHORIZED'));
    require(block.timestamp <= varg2, TransactionDeadlinePassed());
    require((address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)).code.size);
    v0 = new bytes[](varg3.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    v1 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).flashLoanSimple(this, address(varg0), varg1, v0, 0).gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        exit;
    } else {
        exit;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), NotPoolManager());
    v1 = v2 = rawData.word2 ^ (uint32(rawData.word3) + 31 & 0xffffffe0) + 96 | rawData.word1 ^ 0x40;
    v3 = v4 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96] << 5 & 0x1fffffffe0;
    v5 = v6 = 0;
    while (v5 < v4) {
        v1 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] ^ v3 | v1;
        v3 = (msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] + 128] + 31 & 0xffffffe0) + v3 + 32;
        v5 = v5 + 32;
    }
    require(!((msg.data[4 + rawData] + (4 + rawData + 32) < 4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v3 + 128) | v1), SliceOutOfBounds());
    require(!(uint32(rawData.word3) - uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96])), InputLengthMismatch());
    v7 = v8 = 0;
    while (v7 < uint32(rawData.word3)) {
        v9 = _SafeAdd(4 + rawData + 32 + 96, uint32(rawData.word3), v7);
        require(v7 < uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96]), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)] < msg.data.length - (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128) - 31);
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]] <= uint64.max);
        require(32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]) <= msg.data.length - msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]]);
        0x40b2(msg.data[v9] >> 248, 32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]), msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + (v7 << 5)]]);
        v7 = v7 + 1;
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](0);
    MCOPY(v10.data, MEM[64] + 32, 0);
    MEM[v10.data] = 0;
    return v10;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function POOL() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2);
}

function 0x658068fe(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(!(msg.sender - 0xba1333333333a1ba1108e8412f11850a5c319ba9), msg.sender);
    require(varg0 < 2);
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(!(address(varg3) - varg3));
    v0 = new struct(1);
    require(!((v0 + 32 > uint64.max) | (v0 + 32 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    CALLDATACOPY(v0 + 32, msg.data.length, 0);
    v1 = new struct(7);
    require(!((v1 + uint8(-32) > uint64.max) | (v1 + uint8(-32) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(2 > varg0, Panic(33)); // failed convertion to enum type
    v1.word0 = varg0;
    v1.word1 = address(varg1);
    v1.word2 = address(varg2);
    v1.word3 = address(varg3);
    v1.word4 = varg4;
    v1.word5 = varg5;
    v1.word6 = v0;
    require(2 > v1.word0, Panic(33)); // failed convertion to enum type
    v2 = new uint256[](v1.word0);
    MEM[v2.data] = address(v1.word1);
    MCOPY(MEM[64] + 4 + (uint8.max + 1) + 32, v1.word6 + 32, MEM[v1.word6]);
    MEM[MEM[64] + 4 + (uint8.max + 1) + MEM[v1.word6] + 32] = 0;
    v3, /* uint256 */ v4, /* uint256 */ v5, /* uint256 */ v6 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v2, v7, v7, address(v1.word2), address(v1.word3), v1.word4, v1.word5, 224, MEM[v1.word6]).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v8 = 0;
    v5 = v9 = 0;
    v6 = v10 = 0;
    if (v3) {
        v11 = v12 = 96;
        if (96 > RETURNDATASIZE()) {
            v11 = v13 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v11 - MEM[64] >= 96);
    }
    if (v5) {
        require(!(address(varg2) - varg2));
        if (address(varg2)) {
            0x3fca(address(varg2), 0xba1333333333a1ba1108e8412f11850a5c319ba9, v5);
        } else {
            0x4045(0xba1333333333a1ba1108e8412f11850a5c319ba9, v5);
        }
        require(!(address(varg2) - varg2));
        v14, /* uint256 */ v15 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(address(varg2), v5).gas(msg.gas);
        if (v14) {
            if (v14) {
                v16 = v17 = 32;
                if (32 > RETURNDATASIZE()) {
                    v16 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v16 - MEM[64] >= 32);
            }
        }
    }
    require(!(address(varg3) - varg3));
    require(0xba1333333333a1ba1108e8412f11850a5c319ba9.code.size);
    v18 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(address(varg3), this, v6).gas(msg.gas);
    if (v18) {
        if (v18) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        return v4;
    }
    revert(MEM[64], RETURNDATASIZE());
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = amount0Delta <= 0;
    if (v1) {
        v1 = v2 = amount1Delta <= 0;
    }
    require(!v1, V3InvalidSwap());
    require(msg.data[4 + data] + (4 + data + 32) >= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) + (4 + data + 32 + uint32(data.word3)) + 32, SliceOutOfBounds());
    require(!(address(data.word1) - 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9), address(data.word1));
    require(!(data.word2 - 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
    require(43 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]), SliceOutOfBounds());
    v3 = 0x1a62(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96, msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96, uint24(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 72), data.word1, data.word2);
    require(!(address(v3) - msg.sender), V3InvalidCaller());
    if (amount0Delta <= 0) {
        v4 = v5 = address(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96) < address(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96);
    } else {
        v4 = address(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96) < address(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96);
    }
    if (!v4) {
        if (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) < 66) {
            require(v6 <= _shibaswapV2SwapCallback, V3TooMuchRequested());
            0x1bc1(msg.data[4 + data + 32 + uint32(data.word3) + 32 + 23] >> 96, msg.sender, v6);
        } else {
            require(23 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]));
            v7 = 0x1c25(v6);
            v8 = 0x176f(v7);
            require(43 <= uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23, SliceOutOfBounds());
            v9 = address(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32) + 23] >> 96) < address(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 96);
            v10 = 0x1a62(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 96, msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32) + 23] >> 96, uint24(msg.data[23 + (4 + data + 32 + uint32(data.word3) + 32)] >> 72), data.word1, data.word2);
            if (0 == v9) {
                v11 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v11 = v12 = 0x1000276a4;
            }
            MEM[MEM[64] + 32] = address(data.word1);
            MEM[MEM[64] + 32 + 32] = data.word2;
            MEM[MEM[64] + 32 + 64] = 96;
            MEM[MEM[64] + 32 + 96] = uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23;
            CALLDATACOPY(MEM[64] + 32 + 96 + 32, 23 + (4 + data + 32 + uint32(data.word3) + 32), uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23);
            MEM[MEM[64] + 32 + 96 + (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23) + 32] = 0;
            require(!((MEM[64] + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v13 = new uint256[]((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MCOPY(v13.data, MEM[64] + 32, (uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32);
            MEM[v13 + ((uint32(msg.data[4 + data + 32 + uint32(data.word3)]) - 23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + 96) + 32 - MEM[64] - 32) + 32] = 0;
            v14, /* uint256 */ v15, /* uint256 */ v16 = address(v10).swap(msg.sender, bool(v9), v8, address(v11), v13).gas(msg.gas);
            require(v14, MEM[64], RETURNDATASIZE());
            if (v14) {
                v17 = 64;
                if (64 > RETURNDATASIZE()) {
                    v17 = v18 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v17 - MEM[64] >= 64);
            }
        }
    } else {
        0x1bc1(msg.data[4 + data + 32 + uint32(data.word3) + 32] >> 96, msg.sender, v6);
    }
}

function executeOperation(address asset, uint256 amount, uint256 premium, address initiator, bytes params) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(params <= uint64.max);
    require(4 + params + 31 < msg.data.length);
    require(msg.data[4 + params] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(initiator - this), InvalidInitiator(initiator));
    require(!(msg.sender - address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2)), UnAuthorized(msg.sender));
    0x2d3(msg.data[params.word2 + (4 + params + 32)], params.word2 + (4 + params + 32) + 32, msg.data[4 + params + 32 + params.word1], 4 + params + 32 + params.word1 + 32);
    v1 = _SafeAdd(amount, premium);
    0x16aa(asset, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), v1);
    return 1;
}

function _SafeAdd(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0 + varg2;
}

function ADDRESSES_PROVIDER() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x2f39d218133afab8f2b819b1066c7e434ad94e9e);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x542975c == function_selector >> 224) {
            ADDRESSES_PROVIDER();
        } else if (0x1b11d0ff == function_selector >> 224) {
            executeOperation(address,uint256,uint256,address,bytes);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x658068fe == function_selector >> 224) {
            0x658068fe();
        } else if (0x7535d246 == function_selector >> 224) {
            POOL();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0xa16aa1d1 == function_selector >> 224) {
            0xa16aa1d1();
        } else if (0xd096523d == function_selector >> 224) {
            0xd096523d();
        } else if (0xd737d0c7 == function_selector >> 224) {
            msgSender();
        } else if (0xdc4c90d3 == function_selector >> 224) {
            poolManager();
        } else if (0xf2fde38b == function_selector >> 224) {
            transferOwnership(address);
        } else if (0xf40a74a8 == function_selector >> 224) {
            ShibaswapV2SwapCallback(int256,int256,bytes);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
