// Decompiled by library.dedaub.com
// 2024.09.25 09:00 UTC
// Compiled using the solidity compiler version 0.8.20





function smardexSwapCallback(int256 _amount0Delta, int256 _amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (_amount0Delta <= 0) {
    }
    0x648(v0, msg.sender, address(_data.word1));
}

function 0xc514839c(address varg0, bytes varg1, uint256 varg2, uint256 varg3) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < 4 + (msg.data.length - 4));
    require(varg1.length <= uint64.max);
    require(varg1.data + varg1.length <= 4 + (msg.data.length - 4));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));
    require(varg2.length <= uint64.max);
    require(varg2.data + (varg2.length << 5) <= 4 + (msg.data.length - 4));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(varg2.length == varg3.length, Error('Mismatched Lengths'));
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg2.length);
    if (varg2.length) {
        CALLDATACOPY(v0.data, msg.data.length, varg2.length << 5);
    }
    v1 = v2 = 0;
    while (v1 < varg2.length) {
        require(v1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v1 << 5) + varg2.data + 32 - ((v1 << 5) + varg2.data) >= 32);
        require(varg2[v1] == address(varg2[v1]));
        v3, /* uint256 */ v4 = address(varg2[v1]).balanceOf(msg.sender).gas(msg.gas);
        require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0[v1] = v4;
        v1 = 0xee8(v1);
    }
    CALLDATACOPY(v5.data, varg1.data, varg1.length);
    MEM[v5.data + varg1.length] = 0;
    v6, /* uint256 */ v7 = varg0.delegatecall(v5.data).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    require(v6, Error('Execution failed'));
    v9 = v10 = 0;
    while (v9 < varg2.length) {
        require(v9 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v9 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v9 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v9 << 5) + varg2.data + 32 - ((v9 << 5) + varg2.data) >= 32);
        require(varg2[v9] == address(varg2[v9]));
        v11, /* uint256 */ v12 = address(varg2[v9]).balanceOf(msg.sender).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v13 = _SafeSub(v12, v0[v9]);
        require(v13 > varg3[v9], Error('Output too low'));
        v9 = 0xee8(v9);
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x648(v0, msg.sender, address(data.word1));
}

function swapCallback(int256 deltaQty0, int256 deltaQty1, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.word0 <= uint64.max);
    require(4 + data + 32 + data.word0 <= 4 + (msg.data.length - 4));
    if (deltaQty0 <= 0) {
    }
    0x648(v0, msg.sender, address(data.word1));
}

function cloberMarketSwapCallback(address inputToken, address varg1, uint256 inputAmount, uint256 outputAmount, bytes data) public payable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    0x648(inputAmount, msg.sender, inputToken);
}

function receive() public payable { 
}

function 0x648(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[36 + MEM[64] + 32] = varg0;
    MEM[MEM[64]] = 68;
    MEM[64] = 36 + MEM[64] + 64;
    MEM[MEM[64] + 32] = uint224(varg1) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    0x6c7(MEM[64], varg2);
    return ;
}

function 0x6c7(uint256 varg0, address varg1) private { 
    require(this.balance >= 0, AddressInsufficientBalance(address(this)));
    v0 = v1 = 0;
    while (v0 < MEM[varg0]) {
        MEM[MEM[64] + v0] = MEM[varg0 + 32 + v0];
        v0 = v0 + 32;
    }
    MEM[MEM[64] + MEM[varg0]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg1.call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v6c7arg0x0] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v9 = v10 = MEM[v6] == 0;
        if (v10) {
            v9 = varg1.code.size == 0;
        }
        require(!v9, AddressEmptyCode(varg1));
        v11 = v12 = MEM[v6] != 0;
        if (MEM[v6] != 0) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            require(MEM[32 + v6] == bool(MEM[32 + v6]));
            v11 = v13 = !MEM[32 + v6];
        }
        require(!v11, SafeERC20FailedOperation(varg1));
        return ;
    } else {
        require(MEM[v6] <= 0, v5, MEM[v6]);
        revert(FailedInnerCall());
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    if (amount0Delta <= 0) {
    }
    0x648(v0, msg.sender, address(_data.word1));
}

function solidlyV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));
    require(varg2.word0 <= uint64.max);
    require(4 + varg2 + 32 + varg2.word0 <= 4 + (msg.data.length - 4));
    if (varg0 <= 0) {
    }
    0x648(v0, msg.sender, address(varg2.word1));
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.word0 <= uint64.max);
    require(4 + _data + 32 + _data.word0 <= 4 + (msg.data.length - 4));
    0x648(amountToPay, msg.sender, address(_data.word1));
}

function 0xee8(uint256 varg0) private { 
    require(varg0 - uint256.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__() private { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0xc514839c > msg.data[0] >> 224) {
        if (0x23a69e75 == msg.data[0] >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3a1c453c == msg.data[0] >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x923b8a2a == msg.data[0] >> 224) {
            swapCallback(uint256,uint256,bytes);
        } else {
            require(0xa1dab4eb == msg.data[0] >> 224);
            smardexSwapCallback(int256,int256,bytes);
        }
    } else if (0xc514839c == msg.data[0] >> 224) {
        0xc514839c();
    } else if (0xfa461e33 == msg.data[0] >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0xfa483e72 == msg.data[0] >> 224) {
        swapCallback(int256,int256,bytes);
    } else {
        require(0xfd235fda == msg.data[0] >> 224);
        cloberMarketSwapCallback(address,address,uint256,uint256,bytes);
    }
}
