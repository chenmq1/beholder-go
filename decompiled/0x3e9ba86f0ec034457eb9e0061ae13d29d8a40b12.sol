// Decompiled by library.dedaub.com
// 2025.12.16 05:56 UTC
// Compiled using the solidity compiler version 0.7.6


// Data structures and variables inferred from the use of storage instructions
uint256[] array_0; // STORAGE[0x0]
mapping (address => bool) mapping_2; // STORAGE[0x2]
mapping (address => bool) mapping_3; // STORAGE[0x3]
address owner_1_0_19; // STORAGE[0x1] bytes 0 to 19



function 0x1075(address varg0, uint256 varg1) private { 
    if (!varg1) {
        return ;
    } else {
        v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            return ;
        } else {
            v2 = new bytes[](RETURNDATASIZE());
            v1 = v2.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
            return ;
        }
    }
}

function 0x1154(bytes varg0) private { 
    require(20 >= 0, Error('toAddress_overflow'));
    require(varg0.length >= 20, Error('toAddress_outOfBounds'));
    require(23 >= 20, Error('toUint24_overflow'));
    require(varg0.length >= 23, Error('toUint24_outOfBounds'));
    require(43 >= 23, Error('toAddress_overflow'));
    require(varg0.length >= 43, Error('toAddress_outOfBounds'));
    return MEM[23 + varg0], varg0[23] >> 96, varg0[0] >> 96;
}

function 0x1185(uint8 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (varg0) {
        if (1 != varg0) {
            if (2 != varg0) {
                if (24 != varg0) {
                    if (25 != varg0) {
                        if (26 != varg0) {
                            if (22 != varg0) {
                                require(23 == varg0, Error(20038));
                                v0 = v1 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                                v0 = v2 = 0x115934131916c8b277dd010ee02de363c09d037c;
                            } else {
                                v0 = v3 = 0;
                            }
                        } else {
                            v0 = v4 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                            v0 = v5 = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
                        }
                    } else {
                        v0 = v6 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                        v0 = v7 = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9;
                    }
                } else {
                    v0 = v8 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                    v0 = v9 = 0x1097053fd2ea711dad45caccc45eff7548fcb362;
                }
            } else {
                v0 = v10 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                v0 = v11 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
            }
        } else {
            v0 = v12 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
            v0 = v13 = 0x1f98431c8ad98523631ae4a59f267346ea31f984;
        }
    } else {
        v0 = v14 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
        v0 = v15 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
    }
    v16 = keccak256(address(varg3), address(varg3), varg1);
    require(address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(v0 << 96), v16, v0)) == msg.sender, Error(69));
    return v0, v0;
}

function 0x0e23aae3(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    v10, /* uint256 */ v11 = varg0.call().value(varg1).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v12 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
    }
    require(v10, Error('Failed to send Ether'));
}

function receive() public payable { 
}

function 0x124d(uint256 varg0, address varg1, address varg2) private { 
    MEM[64] = MEM[64] + 100;
    v0 = v1 = MEM[64] + 32;
    v2 = v3 = MEM[64];
    while (v4 >= 32) {
        MEM[v2] = MEM[v0];
        v4 = v4 - 32;
        v2 += 32;
        v0 += 32;
    }
    MEM[v2] = MEM[v0] & ~((uint8.max + 1) ** (32 - v4) - 1) | MEM[v2] & (uint8.max + 1) ** (32 - v4) - 1;
    v5, /* uint256 */ v6, /* uint256 */ v7 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v8 = v9 = 96;
    } else {
        v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v5) {
        v5 = v10 = !MEM[v8];
        if (MEM[v8]) {
            require(MEM[v8] >= 32);
            v5 = v11 = MEM[32 + v8];
        }
    }
    require(v5, Error('TransferHelper::safeTransfer: transfer failed'));
    return ;
}

function 0x13a1(bytes varg0) private { 
    require(31 + (varg0.length - 23) >= varg0.length - 23, Error('slice_overflow'));
    require(23 + (varg0.length - 23) >= 23, Error('slice_overflow'));
    require(varg0.length >= 23 + (varg0.length - 23), Error('slice_outOfBounds'));
    if (bool(varg0.length - 23)) {
        v0 = v1 = MEM[64];
        v2 = v3 = v1 + (varg0.length - 23 & 0x1f) + (!(varg0.length - 23 & 0x1f) << 5);
        v4 = v5 = varg0 + (varg0.length - 23 & 0x1f) + (!(varg0.length - 23 & 0x1f) << 5) + 23;
        while (v2 < v3 + (varg0.length - 23)) {
            MEM[v2] = MEM[v4];
            v2 += 32;
            v4 += 32;
        }
        MEM[v1] = varg0.length - 23;
        MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2;
    } else {
        v0 = v6 = MEM[64];
        MEM[v6] = 0;
    }
    return v0;
}

function 0x13be(uint256 varg0, uint256 varg1, struct(2) varg2, uint256 varg3, uint256 varg4) private { 
    if (!address(varg3)) {
        varg3 = v0 = this;
    }
    v1 = varg2.word1;
    v2, v3 = v4, v3 = v5 = 0x1154(varg2.word1);
    if (address(v4) < address(v5)) {
        v6 = v7 = 0x1000276a4;
    } else {
        v6 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = uint8(varg2.word0);
    MEM[32 + MEM[64] + 64] = 64;
    MEM[32 + MEM[64] + 96] = v8.length;
    v9 = v10 = 0;
    while (v9 < v8.length) {
        MEM[v9 + (32 + MEM[64] + 96 + 32)] = v8[v9];
        v9 += 32;
    }
    if (v9 > v8.length) {
        MEM[v8.length + (32 + MEM[64] + 96 + 32)] = 0;
    }
    v11 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
    v12 = v13 = 0;
    while (v12 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[v12 + v11.data] = MEM[v12 + (MEM[64] + 32)];
        v12 += 32;
    }
    if (v12 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v11.data] = 0;
    }
    require(bool((address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(address(v3), address(v3), uint24(v2)), varg1))).code.size));
    v14, /* uint256 */ v15, /* uint256 */ v15 = address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(address(v3), address(v3), uint24(v2)), varg1)).swap(address(varg3), address(v4) < address(v5), int128(0 - varg4), address(v6), v11).gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (address(v4) < address(v5)) {
        v16 = v17 = 0 - v15;
    } else {
        v16 = 0 - v15;
    }
    require(v16 == uint128(varg4));
    return v15;
}

function 0x10f5084e(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x152c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    0x2800(varg0, varg1, varg2);
    return ;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(36 + data + msg.data[4 + data] - (36 + data) >= 32);
    require(data.word1 <= uint64.max);
    require(36 + data + msg.data[4 + data] - (36 + data + data.word1) >= 64);
    v3 = new struct(2);
    assert(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)));
    require(msg.data[36 + data + data.word1] == uint8(msg.data[36 + data + data.word1]));
    v3.word0 = msg.data[36 + data + data.word1];
    require(msg.data[36 + data + data.word1 + 32] <= uint64.max);
    require(36 + data + data.word1 + msg.data[36 + data + data.word1 + 32] + 31 < 36 + data + msg.data[4 + data]);
    v4 = msg.data[36 + data + data.word1 + msg.data[36 + data + data.word1 + 32]];
    assert(v4 <= uint64.max);
    v5 = new bytes[](v4);
    assert(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v4 + 31)) < v5) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v4 + 31)) > uint64.max)));
    require(36 + data + data.word1 + msg.data[36 + data + data.word1 + 32] + v4 + 32 <= 36 + data + msg.data[4 + data]);
    CALLDATACOPY(v5.data, 36 + data + data.word1 + msg.data[36 + data + data.word1 + 32] + 32, v4);
    v5[v4] = 0;
    v3.word1 = v5;
    v6 = v3.word1;
    v7, v8, v9 = 0x1154(v3.word1);
    v10, v11 = 0x1185(v3.word0, uint24(v7), v8, v9);
    if (amount0Delta > 0) {
        v12 = v13 = address(v9) < address(v8);
    } else {
        v12 = address(v8) < address(v9);
    }
    if (!v12) {
        if (66 > v14.length) {
            0x124d(uint128(v15), msg.sender, v8);
        } else {
            v16 = v3.word1;
            v17 = 0x13a1(v3.word1);
            v3.word1 = v17;
            v18 = 0x13be(v11, v10, v3, msg.sender, v15);
        }
    } else {
        0x124d(uint128(v15), msg.sender, v9);
    }
}

function 0x41b7ceba(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return mapping_2[varg0];
}

function 0x42dcd991(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x7694f446(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(1 == mapping_2[msg.sender], Error('Only Executor may call this method'));
    require(varg4 >= block.timestamp, Error('UniswapV2Router: EXPIRED'));
    0xcdd(varg2, varg1, varg0.length, varg0.data);
    0x1075(block.coinbase, varg3);
}

function 0x8debf561(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(msg.sender == owner_1_0_19, Error('Only owner can call this function.'));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        assert(v0 < varg0.length);
        require((v0 << 5) + varg0.data + 32 - ((v0 << 5) + varg0.data) >= 32);
        require(varg0[v0] == address(varg0[v0]));
        mapping_2[address(varg0[v0])] = 0;
        v0 += 1;
    }
    return True;
}

function 0xba516666(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    require(bool(varg0.code.size));
    v10, /* bool */ v11 = varg0.approve(address(0x22d473030f116ddee9f6b43ac78ba3), 0).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v11 == bool(v11));
    mapping_3[varg0] = 0;
}

function 0xc58fdc59(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg1).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v11, /* uint256 */ v12 = varg0.call().value(varg1).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v13 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
    }
}

function 0xc7fdb7b0(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    0xc04(varg2, varg1, varg0);
}

function 0x2800(uint256 varg0, address varg1, address varg2) private { 
    if (this.balance >= 0) {
        v0 = v1 = 0;
        while (v0 < 68) {
            MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
            v0 += 32;
        }
        if (v0 > 68) {
            MEM[68 + MEM[64]] = 0;
        }
        v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
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
            if (v11 > v10.length) {
                v9[v10.length][32] = 0;
            }
            revert(Error(v9, v13, 'SafeERC20: low-level call failed'));
        } else {
            if (!MEM[v6]) {
                require(bool(uint32(varg2.code.size)), Error('Address: call to non-contract'));
            }
            if (MEM[v6]) {
                require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
                require(MEM[32 + v6] == bool(MEM[32 + v6]));
                require(MEM[32 + v6], Error('SafeERC20: ERC20 operation did not succeed'));
            }
            return ;
        }
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = 32;
        revert(Error('Address: insufficient balance for call'));
    }
}

function 0x2856(bytes varg0) private { 
    assert(20);
    require(varg0.length / 20 <= uint64.max);
    v0 = new uint256[](varg0.length / 20);
    if (varg0.length / 20) {
        CALLDATACOPY(v0.data, msg.data.length, varg0.length / 20 << 5);
    }
    v1 = v2 = 0;
    while (v1 < varg0.length / 20) {
        require(20 + 20 * v1 >= 20 * v1, Error('toAddress_overflow'));
        require(varg0.length >= 20 + 20 * v1, Error('toAddress_outOfBounds'));
        assert(v1 < v0.length);
        v0[v1] = address(varg0[20 * v1] >> 96);
        v1 += 1;
    }
    return v0;
}

function 0x28f9(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg1.length >= 2, Error('UniswapV2Library: INVALID_PATH'));
    require(varg1.length <= uint64.max);
    v0 = new uint256[](varg1.length);
    if (varg1.length) {
        CALLDATACOPY(v0.data, msg.data.length, varg1.length << 5);
    }
    assert(v0.length - 1 < v0.length);
    v0[v0.length - 1] = varg2;
    v1 = v2 = uint256.max + varg1.length;
    while (v1) {
        assert(v1 - 1 < varg1.length);
        assert(v1 < varg1.length);
        v3, v4 = 0x2a33(varg1[v1], varg1[v1 - 1]);
        v5 = 0x2a09(varg0, varg1[v1], varg1[v1 - 1], varg3);
        require(bool((address(v5)).code.size));
        v6, /* uint112 */ v7, /* uint112 */ v8, /* uint32 */ v9 = address(v5).getReserves().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v7 == uint112(v7));
        require(v8 == uint112(v8));
        require(v9 == uint32(v9));
        v10 = uint112(v8);
        v10 = v11 = uint112(v7);
        if (address(varg1[v1 - 1]) != address(v4)) {
        }
        assert(v1 < v0.length);
        require(v0[v1] > 0, Error('UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'));
        v12 = v13 = v10 > 0;
        if (v13) {
            v12 = v14 = v10 > 0;
        }
        require(v12, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
        assert((v10 - v0[v1]) * 997);
        assert(v1 - 1 < v0.length);
        v0[v1 - 1] = 1 + v0[v1] * v10 * 1000 / ((v10 - v0[v1]) * 997);
        v1 += uint256.max;
    }
    return v0;
}

function 0x2a09(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x2a33(varg1, varg2);
    return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg3 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), varg0);
}

function 0x2a33(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) != address(varg0), Error('UniswapV2Library: IDENTICAL_ADDRESSES'));
    if (address(varg1) >= address(varg0)) {
    }
    require(address(varg1), Error('UniswapV2Library: ZERO_ADDRESS'));
    return varg1, varg1;
}

function 0x2abd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg1.length >= 2, Error('PancakeLibrary: INVALID_PATH'));
    require(varg1.length <= uint64.max);
    v0 = new uint256[](varg1.length);
    if (varg1.length) {
        CALLDATACOPY(v0.data, msg.data.length, varg1.length << 5);
    }
    assert(v0.length - 1 < v0.length);
    v0[v0.length - 1] = varg2;
    v1 = v2 = uint256.max + varg1.length;
    while (v1) {
        assert(v1 - 1 < varg1.length);
        assert(v1 < varg1.length);
        v3, v4 = 0x2c40(varg1[v1], varg1[v1 - 1]);
        v5 = 0x2bcd(varg0, varg1[v1], varg1[v1 - 1], varg3);
        v6 = 0x2bcd(varg0, varg1[v1], varg1[v1 - 1], varg3);
        require(bool((address(v6)).code.size));
        v7, /* uint112 */ v8, /* uint112 */ v9, /* uint32 */ v10 = address(v6).getReserves().gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v8 == uint112(v8));
        require(v9 == uint112(v9));
        require(v10 == uint32(v10));
        v11 = uint112(v9);
        v11 = v12 = uint112(v8);
        if (address(varg1[v1 - 1]) != address(v4)) {
        }
        assert(v1 < v0.length);
        require(v0[v1] > 0, Error('PancakeLibrary: INSUFFICIENT_OUTPUT_AMOUNT'));
        v13 = v14 = v11 > 0;
        if (v14) {
            v13 = v15 = v11 > 0;
        }
        require(v13, Error('PancakeLibrary: INSUFFICIENT_LIQUIDITY'));
        assert((v11 - v0[v1]) * 9975);
        assert(v1 - 1 < v0.length);
        v0[v1 - 1] = 1 + v0[v1] * v11 * 10000 / ((v11 - v0[v1]) * 9975);
        v1 += uint256.max;
    }
    return v0;
}

function 0x2bcd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0, v1 = 0x2c40(varg1, varg2);
    return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg3 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), varg0);
}

function 0x2c40(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) != address(varg0), Error('PancakeLibrary: IDENTICAL_ADDRESSES'));
    if (address(varg1) >= address(varg0)) {
    }
    require(address(varg1), Error('PancakeLibrary: ZERO_ADDRESS'));
    return varg1, varg1;
}

function 0x2cc3(address varg0) private { 
    if (!mapping_3[varg0]) {
        require(bool(varg0.code.size));
        v0, /* bool */ v1 = varg0.approve(address(0x22d473030f116ddee9f6b43ac78ba3), uint256.max).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == bool(v1));
        require(bool(0x22d473030f116ddee9f6b43ac78ba3.code.size));
        v2 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg0, address(0x66a9893cc07d91d95644aedd05d03f95e1dba8af), address(0xffffffffffffffffffffffffffffffffffffffff), uint48(uint48.max)).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        mapping_3[varg0] = 1;
        return ;
    } else {
        return ;
    }
}

function 0x2e2c(address varg0) private { 
    if (!varg0) {
        return this.balance;
    } else {
        require(bool(varg0.code.size));
        v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v1;
    }
}

function 0xc04(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    v2 = new uint256[](array_0.length);
    v3 = v4 = v2.data;
    if (array_0.length) {
        v5 = v6 = array_0.data;
        while (v4 + (array_0.length << 5) > v3) {
            MEM[v3] = address(STORAGE[v5]);
            v5 = v5 + 1;
            v3 += 32;
        }
    }
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        if (address(v2[v7]) != msg.sender) {
            v7 += 1;
        } else {
            v0 = v9 = 1;
            break;
        }
    }
    require(v0, Error('withdrawer only'));
    0x152c(varg0, varg1, varg2);
    return ;
}

function 0xcdd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = 0;
    while (1) {
        if (v0 >= v0) {
            v2 = this == address(v0);
            v3 = v4 = this != address(v0);
            if (this != address(v0)) {
                v3 = v5 = bool(v0);
            }
            if (!v3) {
                return ;
            } else {
                v6 = v7 = 3897;
                v0 = v8 = v0 - 1;
                assert(v8 < v0);
            }
        } else {
            assert(v0 < v0);
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
            require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
            if (uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                if (1 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                    if (2 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                        if (24 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                            if (25 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                                if (26 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                                    if (22 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                                        require(23 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]), Error(20038));
                                        v0 = v9 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                                        v0 = v10 = 0x115934131916c8b277dd010ee02de363c09d037c;
                                    } else {
                                        v0 = v11 = 0;
                                    }
                                } else {
                                    v0 = v12 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                                    v0 = v13 = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f;
                                }
                            } else {
                                v0 = v14 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
                                v0 = v15 = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9;
                            }
                        } else {
                            v0 = v16 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                            v0 = v17 = 0x1097053fd2ea711dad45caccc45eff7548fcb362;
                        }
                    } else {
                        v0 = v18 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                        v0 = v19 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
                    }
                } else {
                    v0 = v20 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
                    v0 = v21 = 0x1f98431c8ad98523631ae4a59f267346ea31f984;
                }
            } else {
                v0 = v22 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                v0 = v23 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
            }
            assert(v0 < v0);
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
            require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
            v24 = v25 = !uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
            if (uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                v24 = v26 = 2 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
            }
            if (!v24) {
                v24 = v27 = 23 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
            }
            if (!v24) {
                assert(v0 < v0);
                require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
                require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
                require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
                v28 = v29 = 3 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
                if (3 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
                    v28 = v30 = 12 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
                }
                if (!v28) {
                    v28 = v31 = 24 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
                }
                if (!v28) {
                    v6 = v32 = 3647;
                    assert(v0 < v0);
                } else {
                    v0 = v33 = 0x1126f;
                    assert(v0 < v0);
                    require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
                    require(msg.data.length - (msg.data[v0 + (v0 << 5)] + v0) >= 160);
                    v0 = v34 = new struct(5);
                    assert(!((v34 + 160 > uint64.max) | (v34 + 160 < v34)));
                    require(msg.data[msg.data[v0 + (v0 << 5)] + v0] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
                    v34.word0 = msg.data[msg.data[v0 + (v0 << 5)] + v0];
                    require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32]));
                    v34.word1 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32];
                    require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64] == uint8(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64]));
                    v34.word2 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64];
                    require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96] == uint8(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96]));
                    v34.word3 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96];
                    require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] <= uint64.max);
                    require(msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + 31 < msg.data.length);
                    assert(msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] <= uint64.max);
                    v35 = new bytes[](msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
                    assert(!((v35 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 31)) < v35) | (v35 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 31)) > uint64.max)));
                    require(msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 32 <= msg.data.length);
                    CALLDATACOPY(v35.data, msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + 32, msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
                    v35[msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]] = 0;
                    v34.word4 = v35;
                    v36 = v34.word4;
                    v0 = v37 = 0x2856(v34.word4);
                    v0 = v38 = 0x2abd(v0, v37, uint120(v34.word1), v0);
                    assert(0 < v38.length);
                    v39 = v38.data;
                    require(v38[0] <= uint120(v34.word0), Error('PancakeV2Router: EXCESSIVE_INPUT_AMOUNT'));
                    v0 = v40 = 6879;
                    assert(0 < v37.length);
                    v41 = v37.data;
                    v42 = v43 = v37[0];
                    v44 = v45 = 6225;
                    assert(0 < v37.length);
                    v46 = v37.data;
                    v0 = v47 = v37[0];
                    assert(1 < v37.length);
                    v48 = v49 = v37[1];
                }
            } else {
                v0 = v50 = 0x1124b;
                assert(v0 < v0);
                require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
                require(msg.data.length - (msg.data[v0 + (v0 << 5)] + v0) >= 160);
                v0 = v51 = new struct(5);
                assert(!((v51 + 160 > uint64.max) | (v51 + 160 < v51)));
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
                v51.word0 = msg.data[msg.data[v0 + (v0 << 5)] + v0];
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32]));
                v51.word1 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32];
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64] == uint8(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64]));
                v51.word2 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 64];
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96] == uint8(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96]));
                v51.word3 = msg.data[msg.data[v0 + (v0 << 5)] + v0 + 96];
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] <= uint64.max);
                require(msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + 31 < msg.data.length);
                assert(msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] <= uint64.max);
                v52 = new bytes[](msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
                assert(!((v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 31)) < v52) | (v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 31)) > uint64.max)));
                require(msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] + 32 <= msg.data.length);
                CALLDATACOPY(v52.data, msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] + 32, msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
                v52[msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]] = 0;
                v51.word4 = v52;
                v53 = v51.word4;
                v0 = v54 = 0x2856(v51.word4);
                v0 = v55 = 0x28f9(v0, v54, uint120(v51.word1), v0);
                assert(0 < v55.length);
                v56 = v55.data;
                require(v55[0] <= uint120(v51.word0), Error('UniswapV2Router: EXCESSIVE_INPUT_AMOUNT'));
                v0 = v57 = 6251;
                assert(0 < v54.length);
                v58 = v54.data;
                v42 = v59 = v54[0];
                v60 = v61 = 6225;
                assert(0 < v54.length);
                v62 = v54.data;
                v0 = v63 = v54[0];
                assert(1 < v54.length);
                v64 = v65 = v54[1];
            }
        }
        require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
        require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
        require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
        v66 = v67 = 1 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
        if (1 != uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
            v66 = v68 = 25 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
        }
        if (v66) {
            // Unknown jump to Block ['0xe3f', '0xf39']. Refer to 3-address code (TAC);
        } else {
            v66 = v69 = 26 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
            // Unknown jump to Block ['0xe3f', '0xf39']. Refer to 3-address code (TAC);
        }
        if (!v66) {
            v70 = v71 = 3795;
            assert(v0 < v0);
        } else {
            assert(v0 < v0);
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
            v72 = msg.data[v0 + (v0 << 5)] + v0;
            assert(v0 < v0);
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
            require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
            require(msg.data[v72 + 128] < msg.data.length - v72 - 31);
            require(msg.data[v72 + msg.data[v72 + 128]] <= uint64.max);
            require(32 + (v72 + msg.data[v72 + 128]) <= msg.data.length - msg.data[v72 + msg.data[v72 + 128]]);
            v73 = new bytes[](msg.data[v72 + msg.data[v72 + 128]]);
            CALLDATACOPY(v73.data, 32 + (v72 + msg.data[v72 + 128]), msg.data[v72 + msg.data[v72 + 128]]);
            v73[msg.data[v72 + msg.data[v72 + 128]]] = 0;
            require(msg.data[v72 + 128] < msg.data.length - v72 - 31);
            require(msg.data[v72 + msg.data[v72 + 128]] <= uint64.max);
            require(32 + (v72 + msg.data[v72 + 128]) <= msg.data.length - msg.data[v72 + msg.data[v72 + 128]]);
            require(20 + (msg.data[v72 + msg.data[v72 + 128]] - 20) >= msg.data[v72 + msg.data[v72 + 128]] - 20, Error('toAddress_overflow'));
            require(v73.length >= 20 + (msg.data[v72 + msg.data[v72 + 128]] - 20), Error('toAddress_outOfBounds'));
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = address(this);
            require(bool((address(v73[msg.data[v72 + msg.data[v72 + 128]] - 20] >> 96)).code.size));
            v74 = address(v73[msg.data[v72 + msg.data[v72 + 128]] - 20] >> 96).staticcall(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
            if (bool(v74)) {
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v72 + 64 - (v72 + 32) >= 32);
                require(msg.data[v72 + 32] == uint120(msg.data[v72 + 32]));
                require(v72 + 128 - (v72 + 96) >= 32);
                require(msg.data[v72 + 96] == uint8(msg.data[v72 + 96]));
                if (1 != uint8(msg.data[v72 + 96])) {
                    v0 = v75 = this;
                }
                v76 = new struct(2);
                v76.word0 = uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]);
                require(msg.data[v72 + 128] < msg.data.length - v72 - 31);
                require(msg.data[v72 + msg.data[v72 + 128]] <= uint64.max);
                require(32 + (v72 + msg.data[v72 + 128]) <= msg.data.length - msg.data[v72 + msg.data[v72 + 128]]);
                v77 = new bytes[](msg.data[v72 + msg.data[v72 + 128]]);
                CALLDATACOPY(v77.data, 32 + (v72 + msg.data[v72 + 128]), msg.data[v72 + msg.data[v72 + 128]]);
                v77[msg.data[v72 + msg.data[v72 + 128]]] = 0;
                v76.word1 = v77;
                if (!address(v0)) {
                    v0 = v78 = this;
                }
                v79 = v76.word1;
                v80, v81 = v82, v81 = v83 = 0x1154(v76.word1);
                MEM[32 + MEM[64]] = address(v81);
                MEM[32 + MEM[64] + 32] = address(v81);
                MEM[32 + MEM[64] + 64] = uint24(v80);
                v84 = new uint256[](128 + MEM[64] - v84 - 32);
                v85 = v84.length;
                v86 = v84.data;
                MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                MEM[32 + MEM[64] + 1] = bytes20(v0 << 96);
                MEM[32 + MEM[64] + 21] = keccak256(v84);
                MEM[32 + MEM[64] + 53] = v0;
                v87 = new uint256[](117 + MEM[64] - v87 - 32);
                v88 = v87.length;
                v89 = v87.data;
                if (address(v82) < address(v83)) {
                    v90 = v91 = 0x1000276a4;
                } else {
                    v90 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM[32 + MEM[64]] = 32;
                MEM[32 + MEM[64] + 32] = uint8(v76.word0);
                MEM[32 + MEM[64] + 64] = 64;
                MEM[32 + MEM[64] + 96] = v92.length;
                v93 = v94 = 0;
                while (v93 < v92.length) {
                    MEM[v93 + (32 + MEM[64] + 96 + 32)] = v92[v93];
                    v93 += 32;
                }
                if (v93 > v92.length) {
                    MEM[v92.length + (32 + MEM[64] + 96 + 32)] = 0;
                }
                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = address(v0);
                MEM[4 + MEM[64] + 32] = address(v82) < address(v83);
                MEM[4 + MEM[64] + 64] = int128(0 - uint120(msg.data[v72 + 32]));
                MEM[4 + MEM[64] + 96] = address(v90);
                MEM[4 + MEM[64] + 128] = 160;
                MEM[4 + MEM[64] + 160] = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v92.length) + (32 + MEM[64] + 96)) - MEM[64] - 32;
                v95 = v96 = 0;
                while (v95 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v92.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                    MEM[v95 + (4 + MEM[64] + 160 + 32)] = MEM[v95 + (MEM[64] + 32)];
                    v95 += 32;
                }
                if (v95 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v92.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                    MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v92.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + (4 + MEM[64] + 160 + 32)] = 0;
                }
                require(bool((address(keccak256(v87))).code.size));
                v97 = address(keccak256(v87)).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v40e8V0x14490xcdd.length + 32 + MEM[64] + 96 - MEM[64] - 32 + 4 + MEM[64] + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                if (bool(v97)) {
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                    if (address(v82) < address(v83)) {
                        v98 = v99 = 0 - MEM[MEM[64] + 32];
                    } else {
                        v98 = 0 - MEM[MEM[64]];
                    }
                    require(v98 == uint128(uint120(msg.data[v72 + 32])));
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = address(this);
                    require(bool((address(v73[msg.data[v72 + msg.data[v72 + 128]] - 20] >> 96)).code.size));
                    v100 = address(v73[msg.data[v72 + msg.data[v72 + 128]] - 20] >> 96).staticcall(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                    if (bool(v100)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(v72 + 32 - v72 >= 32);
                        require(msg.data[v72] == uint120(msg.data[v72]));
                        require(MEM[MEM[64]] - MEM[MEM[64]] <= uint120(msg.data[v72]), Error('Too much requested'));
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
        require(msg.data[v0 + (v0 << 5)] + v0 + 96 - (64 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
        require(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)]));
        // Unknown jump to Block ['0xed3', '0xfcb']. Refer to 3-address code (TAC);
        if (22 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
            assert(v0 < v0);
            require(msg.data[v0 + (v0 << 5)] < msg.data.length - v0 - 159);
            v101 = new struct(5);
            v101.word0 = 0;
            v101.word1 = 0;
            v101.word2 = 0;
            v101.word3 = 0;
            v101.word4 = 0;
            require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128] < msg.data.length - (msg.data[v0 + (v0 << 5)] + v0) - 31);
            require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]] <= uint64.max);
            require(32 + (msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]) <= msg.data.length - msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
            v102 = new bytes[](msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
            CALLDATACOPY(v102.data, 32 + (msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]), msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]);
            v102[msg.data[msg.data[v0 + (v0 << 5)] + v0 + msg.data[msg.data[v0 + (v0 << 5)] + v0 + 128]]] = 0;
            require(20 >= 0, Error('toAddress_overflow'));
            require(v102.length >= 20, Error('toAddress_outOfBounds'));
            v103 = v102.data;
            v104 = v105 = v102[0] >> 96;
            require(40 >= 20, Error('toAddress_overflow'));
            require(v102.length >= 40, Error('toAddress_outOfBounds'));
            v104 = v102[20] >> 96;
            if (address(v104) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v104 = v106 = 0;
            }
            if (address(v105) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                require(msg.data[v0 + (v0 << 5)] + v0 + 32 - (msg.data[v0 + (v0 << 5)] + v0) >= 32);
                require(msg.data[msg.data[v0 + (v0 << 5)] + v0] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
                MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]);
                require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                v107 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).call(MEM[MEM[64]:MEM[64] + 36 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (bool(v107)) {
                    v104 = v108 = 0;
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
            if (address(v104) >= address(v104)) {
            }
            v101.word0 = address(v104);
            if (address(v104) >= address(v104)) {
            }
            v101.word1 = address(v104);
            require(43 >= 40, Error('toUint24_overflow'));
            require(v102.length >= 43, Error('toUint24_outOfBounds'));
            v101.word2 = uint24(MEM[43 + v102]);
            require(46 >= 43, Error('toUint24_overflow'));
            require(v102.length >= 46, Error('toUint24_outOfBounds'));
            v101.word3 = int24(MEM[46 + v102]);
            require(66 >= 46, Error('toAddress_overflow'));
            require(v102.length >= 66, Error('toAddress_outOfBounds'));
            v101.word4 = address(v102[46] >> 96);
            if (address(v104)) {
                0x2cc3(v104);
            }
            v109 = new struct(5);
            v109.word0 = v101;
            v109.word1 = address(v104) < address(v104);
            require(msg.data[v0 + (v0 << 5)] + v0 + 32 - (msg.data[v0 + (v0 << 5)] + v0) >= 32);
            require(msg.data[msg.data[v0 + (v0 << 5)] + v0] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
            v109.word2 = uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]);
            require(msg.data[v0 + (v0 << 5)] + v0 + 64 - (msg.data[v0 + (v0 << 5)] + v0 + 32) >= 32);
            require(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32]));
            v109.word3 = uint128(uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0 + 32]));
            v110 = new struct(1);
            v110.word0 = 0;
            v109.word4 = v110;
            MEM[32 + MEM[64]] = bytes1(0x1000000000000000000000000000000000000000000000000000000000000000);
            MEM[32 + MEM[64]] = bytes1(0x600000000000000000000000000000000000000000000000000000000000000);
            MEM[32 + MEM[64] + 1] = bytes1(0xc00000000000000000000000000000000000000000000000000000000000000);
            MEM[32 + MEM[64] + 2] = bytes1(0xf00000000000000000000000000000000000000000000000000000000000000);
            v111 = v112 = 3;
            v113 = v114 = 67 + MEM[64];
            while (v111) {
                MEM[v113] = 96;
                v113 += 32;
                v111 = v111 - 1;
            }
            MEM[32 + MEM[64]] = 32;
            MEM[32 + MEM[64] + 32] = address(MEM[v109.word0]);
            MEM[32 + MEM[64] + 64] = address(MEM[v109.word0 + 32]);
            MEM[32 + MEM[64] + 96] = uint24(MEM[v109.word0 + 64]);
            MEM[32 + MEM[64] + 128] = int24(MEM[v109.word0 + 96]);
            MEM[32 + MEM[64] + 160] = address(MEM[v109.word0 + 128]);
            MEM[32 + MEM[64] + 192] = bool(v109.word1);
            MEM[32 + MEM[64] + 224] = uint128(v109.word2);
            MEM[32 + MEM[64] + (uint8.max + 1)] = uint128(v109.word3);
            MEM[320 + MEM[64]] = 288;
            MEM[32 + MEM[64] + 320] = MEM[v109.word4];
            v115 = v116 = 0;
            while (v115 < MEM[v109.word4]) {
                MEM[v115 + (32 + MEM[64] + 320 + 32)] = MEM[v115 + (v109.word4 + 32)];
                v115 += 32;
            }
            if (v115 > MEM[v109.word4]) {
                MEM[MEM[v109.word4] + (32 + MEM[64] + 320 + 32)] = 0;
            }
            MEM[MEM[64]] = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v109.word4]) + (32 + MEM[64] + 320)) - MEM[64] - 32;
            MEM[64] = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v109.word4]) + (32 + MEM[64] + 320));
            assert(0 < 3);
            MEM[67 + MEM[64]] = MEM[64];
            require(msg.data[v0 + (v0 << 5)] + v0 + 32 - (msg.data[v0 + (v0 << 5)] + v0) >= 32);
            require(msg.data[msg.data[v0 + (v0 << 5)] + v0] == uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
            MEM[32 + MEM[64]] = address(v104);
            MEM[32 + MEM[64] + 32] = uint128(uint120(msg.data[msg.data[v0 + (v0 << 5)] + v0]));
            MEM[MEM[64]] = 96 + MEM[64] - MEM[64] - 32;
            MEM[64] += 96;
            assert(1 < 3);
            MEM[99 + MEM[64]] = MEM[64];
            require(32 + (msg.data[v0 + (v0 << 5)] + v0) + 32 - (32 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
            require(msg.data[32 + (msg.data[v0 + (v0 << 5)] + v0)] == uint120(msg.data[32 + (msg.data[v0 + (v0 << 5)] + v0)]));
            MEM[32 + MEM[64]] = address(v104);
            MEM[32 + MEM[64] + 32] = uint128(uint120(msg.data[32 + (msg.data[v0 + (v0 << 5)] + v0)]));
            MEM[MEM[64]] = 96 + MEM[64] - MEM[64] - 32;
            assert(2 < 3);
            MEM[99 + MEM[64] + 32] = MEM[64];
            v117 = new uint256[](v118);
            v119 = v118 = 1;
            v120 = v121 = v117.data;
            while (v119) {
                MEM[v120] = 96;
                v120 += 32;
                v119 = v119 - 1;
            }
            MEM[32 + MEM[64]] = 64;
            MEM[32 + MEM[64] + 64] = 35 + MEM[64] - MEM[64] - 32;
            v122 = v123 = 0;
            while (v122 < 35 + MEM[64] - MEM[64] - 32) {
                MEM[v122 + (32 + MEM[64] + 64 + 32)] = MEM[v122 + (MEM[64] + 32)];
                v122 += 32;
            }
            if (v122 > 35 + MEM[64] - MEM[64] - 32) {
                MEM[35 + MEM[64] - MEM[64] - 32 + (32 + MEM[64] + 64 + 32)] = 0;
            }
            MEM[32 + MEM[64] + 32] = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (35 + MEM[64] - MEM[64] - 32)) + (32 + MEM[64] + 64)) - (32 + MEM[64]);
            v124 = 0;
            MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (35 + MEM[64] - MEM[64] - 32)) + (32 + MEM[64] + 64))] = 3;
            v125 = v126 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (35 + MEM[64] - MEM[64] - 32)) + (32 + MEM[64] + 64)) + 32;
            v127 = v128 = v126 + 96;
            v129 = v130 = 35 + MEM[64] + 32;
            while (v124 < 3) {
                MEM[v125] = v127 - v126;
                MEM[v127] = MEM[MEM[v129]];
                v131 = v132 = 0;
                while (v131 < MEM[MEM[v129]]) {
                    MEM[v131 + (v127 + 32)] = MEM[v131 + (MEM[v129] + 32)];
                    v131 += 32;
                }
                if (v131 > MEM[MEM[v129]]) {
                    MEM[MEM[MEM[v129]] + (v127 + 32)] = 0;
                }
                v127 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v129]]) + v127);
                v125 += 32;
                v129 += 32;
                v124 += 1;
            }
            MEM[MEM[64]] = v127 - MEM[64] - 32;
            assert(0 < v117.length);
            v133 = v117.data;
            v117[0] = MEM[64];
            v134 = 0x2e2c(v104);
            if (!address(v104)) {
                require(msg.data[v0 + (v0 << 5)] + v0 + 32 - (msg.data[v0 + (v0 << 5)] + v0) >= 32);
                v135 = msg.data[msg.data[v0 + (v0 << 5)] + v0];
                require(v135 == uint120(v135));
            } else {
                v135 = v136 = 0;
            }
            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = 96;
            MEM[4 + MEM[64] + 96] = 33 + MEM[64] - MEM[64] - 32;
            v137 = v138 = 0;
            while (v137 < 33 + MEM[64] - MEM[64] - 32) {
                MEM[v137 + (4 + MEM[64] + 96 + 32)] = MEM[v137 + (MEM[64] + 32)];
                v137 += 32;
            }
            if (v137 > 33 + MEM[64] - MEM[64] - 32) {
                MEM[33 + MEM[64] - MEM[64] - 32 + (4 + MEM[64] + 96 + 32)] = 0;
            }
            MEM[4 + MEM[64] + 32] = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (33 + MEM[64] - MEM[64] - 32)) + (4 + MEM[64] + 96)) - (4 + MEM[64]);
            v139 = 0;
            MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (33 + MEM[64] - MEM[64] - 32)) + (4 + MEM[64] + 96))] = v117.length;
            v140 = v141 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (33 + MEM[64] - MEM[64] - 32)) + (4 + MEM[64] + 96)) + 32;
            v142 = v143 = v141 + 32;
            v144 = v145 = v117.data;
            while (v139 < v117.length) {
                MEM[v140] = v142 - v141;
                MEM[v142] = MEM[MEM[v144]];
                v146 = v147 = 0;
                while (v146 < MEM[MEM[v144]]) {
                    MEM[v146 + (v142 + 32)] = MEM[v146 + (MEM[v144] + 32)];
                    v146 += 32;
                }
                if (v146 > MEM[MEM[v144]]) {
                    MEM[MEM[MEM[v144]] + (v142 + 32)] = 0;
                }
                v142 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v144]]) + v142);
                v140 += 32;
                v144 += 32;
                v139 += 1;
            }
            MEM[4 + MEM[64] + 64] = 1000 + block.timestamp;
            require(bool(0x66a9893cc07d91d95644aedd05d03f95e1dba8af.code.size));
            v148 = 0x66a9893cc07d91d95644aedd05d03f95e1dba8af.call(MEM[MEM[64]:MEM[64] + v38a8V0x384eV0x3aa9 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(uint120(v135)).gas(msg.gas);
            if (bool(v148)) {
                v149 = 0x2e2c(v104);
                if (!address(v104)) {
                    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                    v150 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v149 - v134).gas(msg.gas);
                    if (bool(v150)) {
                        v104 = v151 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
                require(96 + (msg.data[v0 + (v0 << 5)] + v0) + 32 - (96 + (msg.data[v0 + (v0 << 5)] + v0)) >= 32);
                require(msg.data[96 + (msg.data[v0 + (v0 << 5)] + v0)] == uint8(msg.data[96 + (msg.data[v0 + (v0 << 5)] + v0)]));
                v152 = v153 = 1 == uint8(msg.data[96 + (msg.data[v0 + (v0 << 5)] + v0)]);
                if (v153) {
                    v152 = v154 = this != address(v0);
                }
                if (v152) {
                    v155 = 0x2e2c(v104);
                    0x124d(v155, v0, v104);
                }
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        if (22 == uint8(msg.data[64 + (msg.data[v0 + (v0 << 5)] + v0)])) {
            return ;
        } else {
            v0 = v156 = 0x1134f;
            v157 = v158 = 0x11375;
            v159 = v0 - 1;
            assert(v159 < v0);
            require(msg.data[v0 + (v159 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128] < msg.data.length - (msg.data[v0 + (v159 << 5)] + v0) - 31);
            require(msg.data[msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]] <= uint64.max);
            require(32 + (msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]) <= msg.data.length - msg.data[msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]]);
            v160 = v161 = new bytes[](msg.data[msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]]);
            CALLDATACOPY(v161.data, 32 + (msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]), msg.data[msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]]);
            v161[msg.data[msg.data[v0 + (v159 << 5)] + v0 + msg.data[msg.data[v0 + (v159 << 5)] + v0 + 128]]] = 0;
            v162 = v0 - 1;
            assert(v162 < v0);
            require(msg.data[v0 + (v162 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[msg.data[v0 + (v162 << 5)] + v0 + 128] < msg.data.length - (msg.data[v0 + (v162 << 5)] + v0) - 31);
            require(msg.data[msg.data[v0 + (v162 << 5)] + v0 + msg.data[msg.data[v0 + (v162 << 5)] + v0 + 128]] <= uint64.max);
            require(32 + (msg.data[v0 + (v162 << 5)] + v0 + msg.data[msg.data[v0 + (v162 << 5)] + v0 + 128]) <= msg.data.length - msg.data[msg.data[v0 + (v162 << 5)] + v0 + msg.data[msg.data[v0 + (v162 << 5)] + v0 + 128]]);
            v163 = v164 = msg.data[msg.data[v0 + (v162 << 5)] + v0 + msg.data[msg.data[v0 + (v162 << 5)] + v0 + 128]] - 20;
        }
        if (!v66) {
            v70 = v165 = 4043;
            v0 = v166 = v0 - 1;
            assert(v166 < v0);
        } else {
            v0 = v167 = 4020;
            v157 = v168 = 0x112dd;
            v169 = v0 - 1;
            assert(v169 < v0);
            require(msg.data[v0 + (v169 << 5)] < msg.data.length - v0 - 159);
            require(msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128] < msg.data.length - (msg.data[v0 + (v169 << 5)] + v0) - 31);
            require(msg.data[msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]] <= uint64.max);
            require(32 + (msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]) <= msg.data.length - msg.data[msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]]);
            v160 = v170 = new bytes[](msg.data[msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]]);
            CALLDATACOPY(v170.data, 32 + (msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]), msg.data[msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]]);
            v163 = v171 = 0;
            v170[msg.data[msg.data[v0 + (v169 << 5)] + v0 + msg.data[msg.data[v0 + (v169 << 5)] + v0 + 128]]] = v171;
        }
        require(20 + v163 >= v163, Error('toAddress_overflow'));
        require(MEM[v160] >= 20 + v163, Error('toAddress_outOfBounds'));
        v42 = MEM[32 + (v163 + v160)] >> 96;
        // Unknown jump to Block ['0x112dd', '0x11375']. Refer to 3-address code (TAC);
        v0 += 1;
        continue;
        v172 = address(v0);
        MEM[MEM[64] + 68] = v0;
        MEM[64] = MEM[64] + 100;
        v173 = MEM[64] + 32;
        MEM[v173] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(v172);
        v174 = MEM[64];
        while (v175 >= 32) {
            MEM[v174] = MEM[v173];
            v175 = v175 - 32;
            v174 += 32;
            v173 += 32;
        }
        MEM[v174] = MEM[v173] & ~((uint8.max + 1) ** (32 - v175) - 1) | MEM[v174] & (uint8.max + 1) ** (32 - v175) - 1;
        v176 = address(v42).call(MEM[MEM[64]:MEM[64] + vcdd0x1298 + vcdd0x1296 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v177 = v178 = 96;
        } else {
            v177 = MEM[64];
            MEM[64] = v177 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            MEM[v177] = RETURNDATASIZE();
            RETURNDATACOPY(v177 + 32, 0, RETURNDATASIZE());
        }
        if (v176) {
            v176 = v179 = !MEM[v177];
            if (MEM[v177]) {
                require(MEM[v177] >= 32);
                v176 = v180 = MEM[32 + v177];
            }
        }
        require(v176, Error('TransferHelper::safeTransfer: transfer failed'));
        // Unknown jump to Block ['0x1134f', '0x186b', '0x1adf', '0xfb4']. Refer to 3-address code (TAC);
        return ;
        v0 = v181 = 0;
        v0 = v182 = 0;
        return ;
        if (v0 >= MEM[v0] - 1) {
            // Unknown jump to Block 0xeff. Refer to 3-address code (TAC);
        } else {
            assert(v0 < MEM[v0]);
            v0 = v183 = MEM[32 + (v0 << 5) + v0];
            assert(1 + v0 < MEM[v0]);
            v0 = v184 = MEM[32 + (1 + v0 << 5) + v0];
            v185, v0 = v186 = 0x2a33(v184, v183);
            assert(1 + v0 < MEM[v0]);
            v0 = v187 = MEM[32 + (1 + v0 << 5) + v0];
            if (address(v183) == address(v186)) {
                v0 = v188 = 0;
            } else {
                v0 = v189 = 0;
            }
            v42 = v190 = 0;
            if (v0 < MEM[v0] - 2) {
                v60 = v191 = 6477;
                assert(2 + v0 < MEM[v0]);
                v64 = v192 = MEM[32 + (2 + v0 << 5) + v0];
            } else if (1 != uint8(MEM[96 + v0])) {
                v0 = v193 = this;
            }
        }
        v194 = 0x2a09(v0, v0, v0, v0);
        v195 = new bytes[](0);
        if (0) {
            CALLDATACOPY(v195.data, msg.data.length, 0);
            v196 = v195.data;
        }
        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = v0;
        MEM[4 + MEM[64] + 32] = v0;
        MEM[4 + MEM[64] + 64] = address(v0);
        MEM[4 + MEM[64] + 96] = 128;
        MEM[4 + MEM[64] + 128] = v195.length;
        v197 = v198 = 0;
        while (v197 < v195.length) {
            MEM[v197 + (4 + MEM[64] + 128 + 32)] = v195[v197];
            v197 += 32;
        }
        if (v197 > v195.length) {
            MEM[v195.length + (4 + MEM[64] + 128 + 32)] = 0;
        }
        require(bool((address(v194)).code.size));
        v199 = address(v194).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (bool(v199)) {
            v0 = v0 + 1;
        } else {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        }
        v200, v201 = 0x2a33(v64, v0);
        MEM[32 + MEM[64]] = bytes20(v201 << 96);
        MEM[32 + MEM[64] + 20] = bytes20(v200 << 96);
        v202 = new uint256[](72 + MEM[64] - v202 - 32);
        v203 = v202.length;
        v204 = v202.data;
        MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
        MEM[32 + MEM[64] + 1] = bytes20(v0 << 96);
        MEM[32 + MEM[64] + 21] = keccak256(v202);
        MEM[32 + MEM[64] + 53] = v0;
        v205 = new uint256[](117 + MEM[64] - v205 - 32);
        v206 = v205.length;
        v207 = v205.data;
        v0 = v208 = keccak256(v205);
        // Unknown jump to Block ['0x1851', '0x194d']. Refer to 3-address code (TAC);
        if (v0 >= MEM[v0] - 1) {
            // Unknown jump to Block 0xeff. Refer to 3-address code (TAC);
        } else {
            assert(v0 < MEM[v0]);
            v0 = v209 = MEM[32 + (v0 << 5) + v0];
            assert(1 + v0 < MEM[v0]);
            v0 = v210 = MEM[32 + (1 + v0 << 5) + v0];
            v211, v0 = v212 = 0x2c40(v210, v209);
            assert(1 + v0 < MEM[v0]);
            v0 = v213 = MEM[32 + (1 + v0 << 5) + v0];
            if (address(v209) == address(v212)) {
                v0 = v214 = 0;
            } else {
                v0 = v215 = 0;
            }
            v42 = v216 = 0;
            if (v0 < MEM[v0] - 2) {
                v44 = v217 = 7105;
                assert(2 + v0 < MEM[v0]);
                v48 = v218 = MEM[32 + (2 + v0 << 5) + v0];
            } else if (1 != uint8(MEM[96 + v0])) {
                v0 = v219 = this;
            }
        }
        v220 = 0x2bcd(v0, v0, v0, v0);
        v221 = new bytes[](0);
        if (0) {
            CALLDATACOPY(v221.data, msg.data.length, 0);
            v222 = v221.data;
        }
        MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[4 + MEM[64]] = v0;
        MEM[4 + MEM[64] + 32] = v0;
        MEM[4 + MEM[64] + 64] = address(v0);
        MEM[4 + MEM[64] + 96] = 128;
        MEM[4 + MEM[64] + 128] = v221.length;
        v223 = v224 = 0;
        while (v223 < v221.length) {
            MEM[v223 + (4 + MEM[64] + 128 + 32)] = v221[v223];
            v223 += 32;
        }
        if (v223 > v221.length) {
            MEM[v221.length + (4 + MEM[64] + 128 + 32)] = 0;
        }
        require(bool((address(v220)).code.size));
        v225 = address(v220).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (bool(v225)) {
            v0 = v0 + 1;
        } else {
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        }
        v226, v227 = 0x2c40(v48, v0);
        MEM[32 + MEM[64]] = bytes20(v227 << 96);
        MEM[32 + MEM[64] + 20] = bytes20(v226 << 96);
        v228 = new uint256[](72 + MEM[64] - v228 - 32);
        v229 = v228.length;
        v230 = v228.data;
        MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
        MEM[32 + MEM[64] + 1] = bytes20(v0 << 96);
        MEM[32 + MEM[64] + 21] = keccak256(v228);
        MEM[32 + MEM[64] + 53] = v0;
        v231 = new uint256[](117 + MEM[64] - v231 - 32);
        v232 = v231.length;
        v233 = v231.data;
        v0 = v234 = keccak256(v231);
        // Unknown jump to Block ['0x1851', '0x1bc1']. Refer to 3-address code (TAC);
        assert(0 < MEM[v0]);
        v0 = v235 = MEM[32 + v0];
    }
}

function 0x05404ac9(uint256 varg0, address varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(1 == mapping_2[msg.sender], Error('Only Executor may call this method'));
    require(varg5 >= block.timestamp, Error('UniswapV2Router: EXPIRED'));
    0xcdd(varg2, varg1, varg0.length, varg0.data);
    0x1075(varg4, varg3);
}

function 0x086160b8(address[] varg0) public nonPayable { 
    v0 = v1 = 0;
    require(msg.data.length - 4 >= 32, v1, v1);
    require(varg0 <= uint64.max, v1, v1);
    require(4 + varg0 + 31 < msg.data.length, v1, v1);
    assert(varg0.length <= uint64.max);
    v2 = new address[](varg0.length);
    assert(!((v2 + ((varg0.length << 5) + 32) < v2) | (v2 + ((varg0.length << 5) + 32) > uint64.max)));
    v3 = v4 = v2.data;
    v5 = v6 = varg0.data;
    require(msg.data.length >= 32 + (4 + varg0 + (varg0.length << 5)), v1, v1);
    while (v0 < varg0.length) {
        require(msg.data[v5] == address(msg.data[v5]));
        MEM[v3] = msg.data[v5];
        v0 += 1;
        v3 += 32;
        v5 += 32;
    }
    require(msg.sender == owner_1_0_19, Error('Only owner can call this function.'));
    v7 = v8 = 0;
    while (v7 < v2.length) {
        assert(v7 < v2.length);
        mapping_2[address(v2[v7])] = 1;
        v7 += 1;
    }
    return True;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else {
        if (0x42dcd991 > function_selector >> 224) {
            if (0x5404ac9 == function_selector >> 224) {
                0x05404ac9();
            } else if (0x86160b8 == function_selector >> 224) {
                0x086160b8();
            } else if (0xe23aae3 == function_selector >> 224) {
                0x0e23aae3();
            } else if (0x10f5084e == function_selector >> 224) {
                0x10f5084e();
            } else if (0x23a69e75 != function_selector >> 224) {
                require(0x41b7ceba == function_selector >> 224);
                0x41b7ceba();
            }
        } else if (0xba516666 > function_selector >> 224) {
            if (0x42dcd991 == function_selector >> 224) {
                0x42dcd991();
            } else if (0x7694f446 == function_selector >> 224) {
                0x7694f446();
            } else {
                require(0x8debf561 == function_selector >> 224);
                0x8debf561();
            }
        } else if (0xba516666 == function_selector >> 224) {
            0xba516666();
        } else if (0xc58fdc59 == function_selector >> 224) {
            0xc58fdc59();
        } else if (0xc7fdb7b0 == function_selector >> 224) {
            0xc7fdb7b0();
        } else {
            require(0xfa461e33 == function_selector >> 224);
        }
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
