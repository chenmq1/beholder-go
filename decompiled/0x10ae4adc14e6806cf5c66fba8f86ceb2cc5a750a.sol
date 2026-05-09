// Decompiled by library.dedaub.com
// 2025.12.10 12:48 UTC
// Compiled using the solidity compiler version 0.8.26
// Warning: 61.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _getAmountIn; // STORAGE[0x4]
mapping (address => bool) _admins; // STORAGE[0x8]
address _owner; // STORAGE[0x0] bytes 0 to 19
address _unlockCallback; // STORAGE[0x1] bytes 0 to 19
address owner_2_0_19; // STORAGE[0x2] bytes 0 to 19
address stor_9_0_19; // STORAGE[0x9] bytes 0 to 19


// Events
OwnershipTransferred(address, address);

function 0x10cd(address varg0) private { 
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    require(varg0, OwnableInvalidOwner(0));
    _owner = varg0;
    emit OwnershipTransferred(_owner, varg0);
    return ;
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    MEM[128] = 0;
    MEM[160] = 0;
    MEM[192] = 0;
    MEM[224] = 0;
    MEM[uint8.max + 1] = 0;
    MEM[288] = 0;
    MEM[320] = 0;
    MEM[352] = 0;
    require(v0.data + v0.length - v0.data >= 32);
    require(MEM[v0.data] <= uint64.max);
    require(v0.data + v0.length - (v0.data + MEM[v0.data]) >= 384);
    v1 = 0x3b53();
    require(v0[MEM[v0.data]] <= uint64.max);
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 31 < v0.data + v0.length);
    require(MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
}

function 0x21b41db1(bytes varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(_admins[tx.origin], Error('multiAdmin: NOT_ADMIN'));
    MEM[MEM[64]] = 0x8c810b4500000000000000000000000000000000000000000000000000000000;
    MEM[4 + MEM[64]] = varg2;
    MEM[4 + MEM[64] + 32] = varg3;
    MEM[4 + MEM[64] + 64] = 96;
    MEM[4 + MEM[64] + 96] = v0.length;
    MCOPY(4 + MEM[64] + 96 + 32, v0.data, v0.length);
    MEM[4 + MEM[64] + 96 + v0.length + 32] = 0;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    MEM[128] = 0;
    MEM[160] = 0;
    MEM[192] = 0;
    MEM[224] = 0;
    MEM[uint8.max + 1] = 0;
    MEM[288] = 0;
    MEM[320] = 0;
    MEM[352] = 0;
    require(v0.data + v0.length - v0.data >= 32);
    require(MEM[v0.data] <= uint64.max);
    require(v0.data + v0.length - (v0.data + MEM[v0.data]) >= 384);
    v1 = 0x3b53();
    require(v0[MEM[v0.data]] <= uint64.max);
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 31 < v0.data + v0.length);
    v2 = 0x3e39(MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]]);
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31);
    MEM[MEM[64]] = MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]];
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + (MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]] << 5) + 32 <= v0.data + v0.length);
    if (v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32 < v0.data + MEM[v0.data] + v0[MEM[v0.data]] + (MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]] << 5) + 32) {
        require(MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32] <= uint64.max);
        require(v0.data + v0.length - (v0.data + MEM[v0.data] + v0[MEM[v0.data]] + MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32]) - 32 >= uint8.max + 1);
        v3 = new struct(8);
        require(!((v3 + (uint8.max + 1) < v3) | (v3 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    }
}

function 0x294f6be5(uint256 varg0) public nonPayable { 
    v0 = v1 = 436;
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    v0 = v2 = varg0.length;
    require(v2 <= uint64.max);
    require(4 + varg0 + (v2 << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    require(v2, Error('addAdmins: EMPTY_LIST'));
    v3 = v5 = 0;
    while (v3 < v0) {
        v0 = v6 = 0;
        require(v3 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v7 = v8 = (v3 << 5) + v3;
        v0 = v9 = v8 + 32;
        v3 = v10 = 1595;
        v7 = v11 = 0x3d30(v8, v9);
        require(v0 - v7 >= 32);
        require(msg.data[v7] == address(msg.data[v7]));
        // Unknown jump to Block 0x1b40x207. Refer to 3-address code (TAC);
        require(!_admins[address(v7)], Error('addAdmins: ADMIN_ALREADY_SET'));
        require(address(v7), Error('addAdmins: ADDRESS_ZERO'));
        _admins[address(v7)] = 1;
        v3 += 1;
        exit;
    }
}

function 0x3eee3178(bytes varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(msg.sender == owner_2_0_19, Error('Unauthorized callback'));
    require(v0.data + v0.length - v0.data >= 64);
    require(MEM[v0.data] <= uint64.max);
    require(v0.data + MEM[v0.data] + 31 < v0.data + v0.length);
    require(v0[MEM[v0.data]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0[MEM[v0.data]]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[MEM[v0.data]]) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0[MEM[v0.data]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32 <= v0.data + v0.length);
    MCOPY(v1.data, v0.data + MEM[v0.data] + 32, v0[MEM[v0.data]]);
    v1[v0[MEM[v0.data]]] = 0;
}

function admins() public nonPayable { 
    v0 = 0x3d30(4, msg.data.length);
    return _admins[v0];
}

function getAmountOut(uint256 amountIn, uint256 reserveIn, uint256 reserveOut, uint256 swapFee) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(amountIn > 0, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = reserveIn > 0;
    if (v1) {
        v0 = v2 = reserveOut > 0;
    }
    require(v0, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(amountIn, swapFee);
    v4 = _SafeMul(v3, reserveOut);
    v5 = _SafeMul(reserveIn, _getAmountIn);
    v6 = _SafeAdd(v5, v3);
    require(v6, Panic(18)); // division by zero
}

function getAmountIn(uint256 amountOut, uint256 reserveIn, uint256 reserveOut, uint256 swapFee) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(amountOut > 0, Error('UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'));
    v0 = v1 = reserveIn > 0;
    if (v1) {
        v0 = v2 = reserveOut > 0;
    }
    require(v0, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(reserveIn, amountOut);
    v4 = _SafeMul(v3, _getAmountIn);
    v5 = _SafeSub(reserveOut, amountOut);
    v6 = _SafeMul(v5, swapFee);
    require(v6, Panic(18)); // division by zero
}

function renounceOwnership() public nonPayable { 
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    _owner = 0;
    emit OwnershipTransferred(_owner, address(0x0));
}

function updateTreasury() public nonPayable { 
    v0 = 0x3d30(4, msg.data.length);
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    require(address(v0), Error('updateTreasury: ADDRESS_ZERO'));
    stor_9_0_19 = v0;
}

function owner() public nonPayable { 
    return _owner;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    require(msg.sender == _unlockCallback, Error('Not pool manager'));
    v0 = new bytes[](rawData.length);
    CALLDATACOPY(v0.data, rawData.data, rawData.length);
    v0[rawData.length] = 0;
    MEM[128] = 0;
    MEM[160] = 0;
    MEM[192] = 0;
    MEM[224] = 0;
    MEM[uint8.max + 1] = 0;
    MEM[288] = 0;
    MEM[320] = 0;
    MEM[352] = 0;
    require(v0.data + v0.length - v0.data >= 32);
    require(MEM[v0.data] <= uint64.max);
    require(v0.data + v0.length - (v0.data + MEM[v0.data]) >= 384);
    v1 = 0x3b53();
    require(v0[MEM[v0.data]] <= uint64.max);
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 31 < v0.data + v0.length);
    v2 = 0x3e39(MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]]);
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31);
    MEM[MEM[64]] = MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]];
    require(v0.data + MEM[v0.data] + v0[MEM[v0.data]] + (MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]] << 5) + 32 <= v0.data + v0.length);
    if (v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32 < v0.data + MEM[v0.data] + v0[MEM[v0.data]] + (MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]]] << 5) + 32) {
        require(MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32] <= uint64.max);
        require(v0.data + v0.length - (v0.data + MEM[v0.data] + v0[MEM[v0.data]] + MEM[v0.data + MEM[v0.data] + v0[MEM[v0.data]] + 32]) - 32 >= uint8.max + 1);
        v3 = new struct(8);
        require(!((v3 + (uint8.max + 1) < v3) | (v3 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    }
}

function 0xb179c471() public nonPayable { 
    v0 = 0x3d30(4, msg.data.length);
    v1 = new bytes[](4);
    MEM[v1.data] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v1.data]);
    v2 = v1.length;
    v3 = v0.getReserves().gas(msg.gas);
    require(v3);
    return uint112(MEM[0]), uint112(MEM[32]);
}

function withdrawErc20(address tokenAddress, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    v0, /* uint256 */ v1 = tokenAddress.balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(amount <= v1, Error('withdrawErc20: INSUFFICIENT BALANCE'));
    MEM[MEM[64] + 68] = amount;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = tokenAddress.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        v4 = v8.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = !MEM[v6];
        if (MEM[v6]) {
            require(v5 + MEM[v6] - v5 >= 32);
            require(MEM[v5] == bool(MEM[v5]));
        }
    }
    require(v2, Error(21574));
}

function 0x3b53() private { 
    v0 = new struct(12);
    require(!((v0 + 384 < v0) | (v0 + 384 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function withdrawEth(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    require(this.balance >= amount, Error('withdrawEth: NOT ENOUGH ETH'));
    v0, /* uint256 */ v1 = msg.sender.call().value(amount).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
    }
    require(v0, Error('withdrawEth: ETH WITHDRAWAL FAILED'));
}

function 0x3d30(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(msg.data[varg0] == address(msg.data[varg0]));
    return msg.data[varg0];
}

function 0xdad2edf2() public nonPayable { 
    v0 = 0x3d30(4, msg.data.length);
    require(msg.sender == _owner, OwnableUnauthorizedAccount(msg.sender));
    require(_admins[address(v0)], Error('removeAdmin: ADMIN_NOT_SET'));
    _admins[address(v0)] = 0;
}

function 0x3e39(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (varg0 << 5);
}

function 0x3e5b(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = 0x3e39(msg.data[varg0]);
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31);
    MEM[MEM[64]] = msg.data[varg0];
    v1 = v2 = MEM[64] + 32;
    require(varg0 + (msg.data[varg0] << 5) + 32 <= varg1);
    v3 = v4 = varg0 + 32;
    while (v3 < varg0 + (msg.data[varg0] << 5) + 32) {
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    return MEM[64];
}

function receiveFlashLoan(address[] varg0, uint256[] varg1) public nonPayable { 
    v0 = v1 = msg.data.length;
    v2 = v3 = 4;
    v2 = v4 = 0;
    require(v1 - v3 >= 128);
    require(varg0 <= uint64.max);
    require(v1 > v3 + varg0 + 31);
    v5 = 0x3e39(varg0.length);
    v0 = v6 = MEM[64];
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31);
    MEM[v6] = varg0.length;
    v7 = v8 = v6 + 32;
    require(v3 + varg0 + (varg0.length << 5) + 32 <= v1);
    v9 = v10 = varg0.data;
    while (v9 < v3 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v9] == address(msg.data[v9]));
        MEM[v7] = msg.data[v9];
        v9 += 32;
        v7 = v7 + 32;
    }
    require(varg1 <= uint64.max);
    v11 = v12 = v3 + varg1;
    v11 = v13 = 0x3e5b(v12, v1);
    require(v11 + 31 < v0);
    v14 = msg.data[v11];
    v14 = v15 = 15989;
    v14 = v16 = 0x3e39(v14);
    require(v14 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v14 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v14 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v14 + 31);
    require(msg.data[v2 + 64] <= uint64.max);
    v11 = v17 = v2 + msg.data[v2 + 64];
}

function transferOwnership() public nonPayable { 
    v0 = 0x3d30(4, msg.data.length);
    0x10cd(v0);
}

function 0xf4430874(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(msg.data.length - 4 >= 224);
    v0 = new struct(7);
    require(!((v0 + 224 > uint64.max) | (v0 + 224 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = varg0;
    v0.word1 = varg1;
    v0.word2 = varg2;
    v0.word3 = varg3;
    v0.word4 = varg4;
    v0.word5 = varg5;
    v0.word6 = varg6;
    require(varg7 <= uint64.max);
    require(msg.data.length - (4 + varg7) >= 32);
    v1 = new struct(1);
    require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg7.length <= uint64.max);
    require(msg.data.length > 4 + varg7 + varg7.length + 31);
    v2 = 0x3e39(msg.data[4 + varg7 + varg7.length]);
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31);
    MEM[MEM[64]] = msg.data[4 + varg7 + varg7.length];
    require(4 + varg7 + varg7.length + (msg.data[4 + varg7 + varg7.length] << 5) + 32 <= msg.data.length);
    if (4 + varg7 + varg7.length + 32 >= 4 + varg7 + varg7.length + (msg.data[4 + varg7 + varg7.length] << 5) + 32) {
        v1.word0 = MEM[64];
    } else {
        require(msg.data[4 + varg7 + varg7.length + 32] <= uint64.max);
        require(msg.data.length - (4 + varg7 + varg7.length + msg.data[4 + varg7 + varg7.length + 32]) - 32 >= 384);
    }
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (msg.data.length) {
            exit;
        } else {
            exit;
        }
    } else {
        v0 = function_selector >> 224;
        if (0x84645f79 > v0) {
            if (0x48639c9d > v0) {
                if (0x294f6be5 > v0) {
                    if (0x10d1e85c != v0) {
                        if (0x21b41db1 == v0) {
                            0x21b41db1();
                        } else if (0x23a69e75 != v0) {
                            exit;
                        }
                    }
                } else if (0x294f6be5 == v0) {
                    0x294f6be5();
                } else if (0x3a1c453c != v0) {
                    if (0x3eee3178 == v0) {
                        0x3eee3178();
                    } else if (0x429b62e5 == v0) {
                        admins(address);
                    } else {
                        exit;
                    }
                }
            } else if (0x6c813d29 > v0) {
                if (0x48639c9d != v0) {
                    if (0x52707d8c == v0) {
                        getAmountOut(uint256,uint256,uint256,uint256);
                    } else if (0x571fd012 == v0) {
                        getAmountIn(uint256,uint256,uint256,uint256);
                    } else {
                        exit;
                    }
                }
            } else if (0x6c813d29 != v0) {
                if (0x715018a6 == v0) {
                    renounceOwnership();
                } else if (0x7f51bb1f == v0) {
                    updateTreasury(address);
                } else if (0x81279c7e != v0) {
                    exit;
                }
            }
        } else if (0xc311d049 > v0) {
            if (0x91dd7346 > v0) {
                if (0x84645f79 != v0) {
                    if (0x84800812 != v0) {
                        if (0x8da5cb5b == v0) {
                            owner();
                        } else {
                            exit;
                        }
                    }
                }
            } else if (0x91dd7346 == v0) {
                unlockCallback(bytes);
            } else if (0x9a7bff79 != v0) {
                if (0xb179c471 == v0) {
                    0xb179c471();
                } else if (0xbd1f4b52 == v0) {
                    withdrawErc20(address,uint256);
                } else {
                    exit;
                }
            }
        } else if (0xf2fde38b > v0) {
            if (0xc311d049 == v0) {
                withdrawEth(uint256);
            } else if (0xdad2edf2 == v0) {
                0xdad2edf2();
            } else if (0xdf9aee68 != v0) {
                if (0xf04f2707 == v0) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else {
                    exit;
                }
            }
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xf40a74a8 != v0) {
            if (0xf4430874 == v0) {
                0xf4430874();
            } else if (0xfa461e33 != v0) {
                exit;
            }
        }
        uniswapV3SwapCallback(int256,int256,bytes);
        hook(address,uint256,uint256,bytes);
    }
}
