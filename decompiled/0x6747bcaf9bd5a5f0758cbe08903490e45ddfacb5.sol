// Decompiled by library.dedaub.com
// 2025.12.08 01:21 UTC
// Compiled using the solidity compiler version 0.8.17





function ramsesV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    @_universalSwapCallback_363(v0, amount1Delta, amount0Delta);
}

function sellBase(address to, address pool, bytes moreInfo) public payable { 
    require(msg.data.length - 4 >= 96);
    require(moreInfo <= uint64.max);
    require(4 + moreInfo + 31 < msg.data.length);
    require(moreInfo.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](moreInfo.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + moreInfo.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + moreInfo.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + moreInfo + moreInfo.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, moreInfo.data, moreInfo.length);
    v0[moreInfo.length] = 0;
    require(v0.data + v0.length - v0.data >= 64);
    v1 = v2 = MEM[v0.data];
    require(v2 == address(v2));
    require(v0[32][32] <= uint64.max);
    require(v0.data + v0.length > v0.data + v0[32][32] + 31);
    require(v0[v0[32][32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](v0[v0[32][32]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[v0[32][32]]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[v0[32][32]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0.data + v0[32][32] + v0[v0[32][32]] + 32 <= v0.data + v0.length);
    v4 = v5 = 0;
    while (v4 < v0[v0[32][32]]) {
        v3[v4] = MEM[v4 + (v0.data + v0[32][32] + 32)];
        v4 += 32;
    }
    v3[v0[v0[32][32]]] = 0;
    require(v3.data + v3.length - v3.data >= 64);
    require(MEM[v3.data] == address(MEM[v3.data]));
    require(v3[32][32] == address(v3[32][32]));
    v6, /* uint256 */ v7 = address(MEM[v3.data]).balanceOf(this).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (0 == address(v2)) {
        if (address(MEM[v3.data]) < address(v3[32][32])) {
            v1 = v8 = checked_add_t_uint160(1, 0x1000276a3);
        } else {
            v1 = v9 = checked_sub_t_uint160(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
        }
    }
    v10 = new bytes[](v3.length);
    v11 = v12 = 0;
    while (v11 < v3.length) {
        v10[v11] = v3[v11];
        v11 += 32;
    }
    v10[v3.length] = 0;
    v13, /* uint256 */ v14, /* uint256 */ v15 = pool.swap(to, address(MEM[v3.data]) < address(v3[32][32]), v7, address(v1), v10).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v16 = v17 = 0;
    if (!((msg.data[msg.data.length - 32] & 0x3ca20afc2ccc0000000000000000000000000000000000000000000000000000) - 0x3ca20afc2ccc0000000000000000000000000000000000000000000000000000)) {
        v16 = v18 = address(msg.data[msg.data.length - 32]);
    }
    v19, /* uint256 */ v20 = address(MEM[v3.data]).balanceOf(this).gas(msg.gas);
    require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v21 = v22 = v20 > 0;
    if (v22) {
        v21 = bool(address(v16));
    }
    if (v21) {
        @safeTransfer_1066(v20, v16, MEM[v3.data]);
    }
}

function MAX_SQRT_RATIO() public payable { 
    return address(0xfffd8963efd1fc6a506488495d951d5263988d26);
}

function WETH() public payable { 
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function MIN_SQRT_RATIO() public payable { 
    return address(0x1000276a3);
}

function @_universalSwapCallback_363(bytes varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg2 <= 0;
    if (varg2 <= 0) {
        v0 = v2 = varg1 <= 0;
    }
    require(!v0, InvalidAmount());
    require(varg0.data + varg0.length - varg0.data >= 64);
    require(MEM[varg0.data] == address(MEM[varg0.data]));
    require(varg0[32][32] == address(varg0[32][32]));
    if (varg2 > 0) {
        v3 = v4 = address(MEM[varg0.data]) < address(varg0[32][32]);
    } else {
        v3 = v5 = address(varg0[32][32]) < address(MEM[varg0.data]);
    }
    if (!v3) {
        @pay_427(varg1, msg.sender, this, varg0[32][32]);
        return ;
    } else {
        @pay_427(varg1, msg.sender, this, MEM[varg0.data]);
        return ;
    }
}

function @pay_427(uint256 varg0, uint256 varg1, address varg2, uint256 varg3) private { 
    v0 = v1 = address(varg3) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    if (v1) {
        v0 = v2 = this.balance >= varg0;
    }
    if (!v0) {
        require(!(varg2 - this));
        @safeTransfer_1066(varg0, varg1, varg3);
        return ;
    } else {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg0).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v4, /* bool */ v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transfer(address(varg1), varg0).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v5 == bool(v5));
        return ;
    }
}

function @safeTransfer_1066(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (v1) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = varg2.code.size > 0;
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
    return ;
}

function checked_sub_t_uint160(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function checked_add_t_uint160(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function fallback(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg2.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= 4 + (msg.data.length - 4));
    CALLDATACOPY(v0.data, varg2.data, varg2.length);
    v0[varg2.length] = 0;
    @_universalSwapCallback_363(v0, varg1, varg0);
    MEM[64] = MEM[64] + 32;
    MEM[MEM[64]] = 0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    require(!msg.value);
    if (msg.data.length >= 4) {
        if (0x6f7929f2 > function_selector >> 224) {
            if (0x23a69e75 != function_selector >> 224) {
                if (0x2c8958f6 != function_selector >> 224) {
                    if (0x30e6ae31 != function_selector >> 224) {
                        if (0x5bee97a3 != function_selector >> 224) {
                            if (0x654b6487 != function_selector >> 224) {
                                if (0x6d2cc304 == function_selector >> 224) {
                                    MAX_SQRT_RATIO();
                                }
                            }
                        }
                    }
                }
            }
        } else if (0xae067e0f > function_selector >> 224) {
            if (0x6f7929f2 != function_selector >> 224) {
                if (0x86cbcd52 != function_selector >> 224) {
                    if (0xad5c4648 == function_selector >> 224) {
                        WETH();
                    }
                }
            }
        } else if (0xae067e0f != function_selector >> 224) {
            if (0xdcbf3bf0 != function_selector >> 224) {
                if (0xee8847ff == function_selector >> 224) {
                    MIN_SQRT_RATIO();
                } else if (0xfa461e33 != function_selector >> 224) {
                }
            }
        }
        0x5bee97a3();
        sellBase(address,address,bytes);
    }
    fallback();
}
