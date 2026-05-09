// Decompiled by library.dedaub.com
// 2026.04.13 13:55 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
address _owner; // STORAGE[0x0] bytes 0 to 19
address _withdrawToken; // STORAGE[0x1] bytes 0 to 19
bool ___activateTstore; // STORAGE[0x1] bytes 20 to 20
uint256 tstor_42616e616e61446578556e69563300001; // TRANSIENT_STORAGE[0x42616e616e61446578556e69563300001]
uint256 stor_42616e616e61446578556e69563300001; // STORAGE[0x42616e616e61446578556e69563300001]
uint256 _uniswapV3SwapCallback; // TRANSIENT_STORAGE[0x42616e616e61446578556e69563300002]
bytes32 stor_42616e616e61446578556e69563300002; // STORAGE[0x42616e616e61446578556e69563300002]


// Events
OwnershipTransferred(address, address);

function 0x1256(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x138a(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    if (RETURNDATASIZE()) {
        v3 = v4 = 1 != MEM[0];
    } else {
        v3 = v5 = !(address(varg0)).code.size;
    }
    require(!v3, SafeERC20FailedOperation(address(varg0)));
    return ;
}

function 0x143e(uint256 varg0) private { 
    if (4 == varg0) {
        if (!___activateTstore) {
            return stor_42616e616e61446578556e69563300001;
        } else {
            return tstor_42616e616e61446578556e69563300001;
        }
    } else {
        require(3 == varg0, Panic(81)); // call to a zero-initialized variable of internal function type
        return tstor_42616e616e61446578556e69563300001;
    }
}

function 0x14b2(uint256 varg0, uint256 varg1) private { 
    if (2 == varg0) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300001 = varg1;
            return ;
        } else {
            tstor_42616e616e61446578556e69563300001 = varg1;
            return ;
        }
    } else {
        require(1 == varg0, Panic(81)); // call to a zero-initialized variable of internal function type
        tstor_42616e616e61446578556e69563300001 = varg1;
        return ;
    }
}

function 0x1523(uint256 varg0, uint256 varg1) private { 
    if (2 == varg0) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300002 = varg1;
            return ;
        } else {
            _uniswapV3SwapCallback = varg1;
            return ;
        }
    } else {
        require(1 == varg0, Panic(81)); // call to a zero-initialized variable of internal function type
        _uniswapV3SwapCallback = varg1;
        return ;
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(newOwner, OwnableInvalidOwner(0));
    _owner = newOwner;
    emit OwnershipTransferred(_owner, newOwner);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = 0x143e(3);
    require(!(address(v0) - msg.sender), Error('pm: callback not from expected sender'));
    v1 = v2 = amount0Delta <= 0;
    if (v2) {
        v1 = v3 = amount1Delta <= 0;
    }
    require(!v1, Error('v3: zero liquidity'));
    if (amount0Delta > 0) {
    }
    require(!(data.length - 41), Error('Invalid data length'));
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](data.length);
    require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v4.data, data.data, data.length);
    v4[data.length] = 0;
    v5 = v4.length;
    if (4 == 3) {
        if (!___activateTstore) {
            v6 = v7 = stor_42616e616e61446578556e69563300002;
        } else {
            v6 = v8 = _uniswapV3SwapCallback;
        }
    } else {
        require(3 == 3, Panic(81)); // call to a zero-initialized variable of internal function type
        v6 = v9 = _uniswapV3SwapCallback;
    }
    require(!(keccak256(v4) - v6), Error('v3:cbdm'));
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300002 = 0;
        } else {
            _uniswapV3SwapCallback = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        _uniswapV3SwapCallback = 0;
    }
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300001 = 0;
        } else {
            tstor_42616e616e61446578556e69563300001 = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        tstor_42616e616e61446578556e69563300001 = 0;
    }
    require((byte(data[0x28], 0x0)) < 2, Panic(33)); // failed convertion to enum type
    if (!(byte(data[0x28], 0x0))) {
        0x138a(data[20] >> 96, msg.data[data.data] >> 96, v10);
    }
    if ((byte(data[0x28], 0x0)) == 1) {
        require((address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa)).code.size);
        v11, /* uint256 */ v12 = address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa).call(0xfa118ab800000000000000000000000000000000000000000000000000000000, amount0Delta, amount1Delta).gas(msg.gas);
        require(v11, v12, RETURNDATASIZE());
        if (v11) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
    }
}

function 0xba3fe835(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _withdrawToken = varg0;
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = 0x143e(3);
    require(!(address(v0) - msg.sender), Error('pm: callback not from expected sender'));
    v1 = v2 = amount0Delta <= 0;
    if (v2) {
        v1 = v3 = amount1Delta <= 0;
    }
    require(!v1, Error('v3: zero liquidity'));
    if (amount0Delta > 0) {
    }
    require(!(data.length - 41), Error('Invalid data length'));
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](data.length);
    require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v4.data, data.data, data.length);
    v4[data.length] = 0;
    v5 = v4.length;
    if (4 == 3) {
        if (!___activateTstore) {
            v6 = v7 = stor_42616e616e61446578556e69563300002;
        } else {
            v6 = v8 = _uniswapV3SwapCallback;
        }
    } else {
        require(3 == 3, Panic(81)); // call to a zero-initialized variable of internal function type
        v6 = v9 = _uniswapV3SwapCallback;
    }
    require(!(keccak256(v4) - v6), Error('v3:cbdm'));
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300002 = 0;
        } else {
            _uniswapV3SwapCallback = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        _uniswapV3SwapCallback = 0;
    }
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300001 = 0;
        } else {
            tstor_42616e616e61446578556e69563300001 = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        tstor_42616e616e61446578556e69563300001 = 0;
    }
    require((byte(data[0x28], 0x0)) < 2, Panic(33)); // failed convertion to enum type
    if (!(byte(data[0x28], 0x0))) {
        0x138a(data[20] >> 96, msg.data[data.data] >> 96, v10);
    }
    if ((byte(data[0x28], 0x0)) == 1) {
        require((address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa)).code.size);
        v11, /* uint256 */ v12 = address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa).call(0xfa118ab800000000000000000000000000000000000000000000000000000000, amount0Delta, amount1Delta).gas(msg.gas);
        require(v11, v12, RETURNDATASIZE());
        if (v11) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
    }
}

function withdrawEth() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(msg.sender == _withdrawToken, Error('auth: fee'));
    v0, /* uint256 */ v1 = msg.sender.call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, Error('ETH_TRANSFER_FAILED'));
}

function ramsesV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = 0x143e(3);
    require(!(address(v0) - msg.sender), Error('pm: callback not from expected sender'));
    v1 = v2 = amount0Delta <= 0;
    if (v2) {
        v1 = v3 = amount1Delta <= 0;
    }
    require(!v1, Error('v3: zero liquidity'));
    if (amount0Delta > 0) {
    }
    require(!(data.length - 41), Error('Invalid data length'));
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](data.length);
    require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v4.data, data.data, data.length);
    v4[data.length] = 0;
    v5 = v4.length;
    if (4 == 3) {
        if (!___activateTstore) {
            v6 = v7 = stor_42616e616e61446578556e69563300002;
        } else {
            v6 = v8 = _uniswapV3SwapCallback;
        }
    } else {
        require(3 == 3, Panic(81)); // call to a zero-initialized variable of internal function type
        v6 = v9 = _uniswapV3SwapCallback;
    }
    require(!(keccak256(v4) - v6), Error('v3:cbdm'));
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300002 = 0;
        } else {
            _uniswapV3SwapCallback = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        _uniswapV3SwapCallback = 0;
    }
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300001 = 0;
        } else {
            tstor_42616e616e61446578556e69563300001 = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        tstor_42616e616e61446578556e69563300001 = 0;
    }
    require((byte(data[0x28], 0x0)) < 2, Panic(33)); // failed convertion to enum type
    if (!(byte(data[0x28], 0x0))) {
        0x138a(data[20] >> 96, msg.data[data.data] >> 96, v10);
    }
    if ((byte(data[0x28], 0x0)) == 1) {
        require((address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa)).code.size);
        v11, /* uint256 */ v12 = address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa).call(0xfa118ab800000000000000000000000000000000000000000000000000000000, amount0Delta, amount1Delta).gas(msg.gas);
        require(v11, v12, RETURNDATASIZE());
        if (v11) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function __activateTstore() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!msg.sender.code.size, OnlyDirectCalls());
    v0 = v1 = 1;
    if (!v1) {
        v0 = v2 = ___activateTstore;
    }
    require(!v0, TStoreAlreadyActivated());
    v3, /* uint256 */ v4 = 0x4ab7ef9727d050efcc617f369d72086a29403664.staticcall().gas(msg.gas / 10);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v6.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3, TStoreNotSupported());
    ___activateTstore = 1;
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _owner = 0;
    emit OwnershipTransferred(_owner, 0);
}

function 0x439dd1b3(struct(9) varg0, uint256 varg1, address varg2, address varg3, address varg4) public payable { 
    require(msg.data.length - 4 >= 224);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 416);
    require(msg.data.length - 36 >= 192);
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    require(varg1 & 0x800 == 2048, Error('state not set'));
    require(address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa) == msg.sender, Error(0x623a6631));
    require(!(varg0.word4 - address(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(!(varg0.word8 - bool(varg0.word8)));
    require(!(varg3 - uint16(varg3)));
    require(!(varg4 - bool(varg4)));
    v1 = new struct(7);
    require(!((v1 + 224 > uint64.max) | (v1 + 224 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = address(varg0.word4);
    v1.word1 = address(varg0.word5);
    v1.word2 = bool(varg0.word8);
    v1.word3 = 0;
    v1.word4 = 0;
    v1.word5 = uint16(varg3);
    v1.word6 = bool(varg4);
    v2 = new struct(3);
    v3 = v2.data;
    v2.word1 = bytes20(varg0.word4 << 96);
    v2.word0 = 41;
    require(!((v2 + 96 > uint64.max) | (v2 + 96 < v2)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v2.word0.length;
    0x1523(1, keccak256(bytes20(varg0.word4 << 96), bytes20(varg0.word5 << 96), 0));
    v5 = 0x143e(3);
    if (bool(v5)) {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = 32;
        revert(Error('v3: pending callback'));
    } else {
        0x14b2(1, address(v1.word0));
        require(!(varg0.word6 - address(varg0.word6)));
        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = varg2;
        v6, v7 = address(varg0.word6).balanceOf(varg2).gas(msg.gas);
        require(v6, MEM[64], RETURNDATASIZE());
        v7 = v8 = 0;
        if (v6) {
            v9 = v10 = 32;
            if (32 > RETURNDATASIZE()) {
                v9 = v11 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v9 - MEM[64] >= 32);
        }
        if (0 == v1.word2) {
            v12 = v13 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v12 = v14 = 0x1000276a4;
        }
        v15 = new bytes[](v2.word0.length);
        MCOPY(v15.data, v2.data, v2.word0.length);
        v15[v2.word0.length] = 0;
        v16, v17, v17 = address(v1.word0).swap(varg2, bool(v1.word2), varg0.word1, address(v12), v15).gas(msg.gas);
        require(v16, MEM[64], RETURNDATASIZE());
        v17 = 0;
        v17 = v18 = 0;
        if (v16) {
            v19 = 64;
            if (64 > RETURNDATASIZE()) {
                v19 = v20 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v19 - MEM[64] >= 64);
        }
        if (v1.word2) {
        }
        v1.word3 = v17;
        if (bool(!v1.word2)) {
            v21 = v22 = 0x1256(v17);
        } else {
            v21 = v23 = 0x1256(v17);
        }
        require(!(varg0.word6 - address(varg0.word6)));
        v24, v25 = address(varg0.word6).balanceOf(varg2).gas(msg.gas);
        require(v24, MEM[64], RETURNDATASIZE());
        v25 = 0;
        if (v24) {
            v26 = 32;
            if (32 > RETURNDATASIZE()) {
                v26 = v27 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v26 - MEM[64] >= 32);
        }
        v28 = _SafeSub(v25, v7);
        v1.word4 = v28;
        v29 = 0x143e(3);
        require(!bool(v29), Error('v3: callback not executed'));
        v30 = new struct(4);
        require(!((v30 + 128 > uint64.max) | (v30 + 128 < v30)), Panic(65)); // failed memory allocation (too much memory)
        v30.word0 = v1.word3;
        v30.word1 = v1.word4;
        v30.word2 = v21;
        v30.word3 = 0;
        return v30.word0, v30.word1, v30.word2, uint16(v30.word3);
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = 0x143e(3);
    require(!(address(v0) - msg.sender), Error('pm: callback not from expected sender'));
    v1 = v2 = amount0Delta <= 0;
    if (v2) {
        v1 = v3 = amount1Delta <= 0;
    }
    require(!v1, Error('v3: zero liquidity'));
    if (amount0Delta > 0) {
    }
    require(!(data.length - 41), Error('Invalid data length'));
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](data.length);
    require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v4.data, data.data, data.length);
    v4[data.length] = 0;
    v5 = v4.length;
    if (4 == 3) {
        if (!___activateTstore) {
            v6 = v7 = stor_42616e616e61446578556e69563300002;
        } else {
            v6 = v8 = _uniswapV3SwapCallback;
        }
    } else {
        require(3 == 3, Panic(81)); // call to a zero-initialized variable of internal function type
        v6 = v9 = _uniswapV3SwapCallback;
    }
    require(!(keccak256(v4) - v6), Error('v3:cbdm'));
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300002 = 0;
        } else {
            _uniswapV3SwapCallback = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        _uniswapV3SwapCallback = 0;
    }
    if (2 == 1) {
        if (!___activateTstore) {
            stor_42616e616e61446578556e69563300001 = 0;
        } else {
            tstor_42616e616e61446578556e69563300001 = 0;
        }
    } else {
        require(1 == 1, Panic(81)); // call to a zero-initialized variable of internal function type
        tstor_42616e616e61446578556e69563300001 = 0;
    }
    require((byte(data[0x28], 0x0)) < 2, Panic(33)); // failed convertion to enum type
    if (!(byte(data[0x28], 0x0))) {
        0x138a(data[20] >> 96, msg.data[data.data] >> 96, v10);
    }
    if ((byte(data[0x28], 0x0)) == 1) {
        require((address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa)).code.size);
        v11, /* uint256 */ v12 = address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa).call(0xfa118ab800000000000000000000000000000000000000000000000000000000, amount0Delta, amount1Delta).gas(msg.gas);
        require(v11, v12, RETURNDATASIZE());
        if (v11) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
    }
}

function receive() public payable { 
}

function withdrawToken(address _token, address _to) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _withdrawToken, Error('auth: fee'));
    v0, v1 = _token.balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    0x138a(_token, _to, v1);
}

function 0x32085002(struct(9) varg0, uint256 varg1, address varg2, address varg3, address varg4) public payable { 
    require(msg.data.length - 4 >= 224);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 416);
    require(msg.data.length - 36 >= 192);
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    require(varg1 & 0x1000 == 4096, Error('state not set'));
    require(address(0x734ab9de48f6bab1f2297a34d257cd757deba6aa) == msg.sender, Error(0x623a6631));
    require(!(varg0.word4 - address(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(!(varg0.word8 - bool(varg0.word8)));
    require(!(varg3 - uint16(varg3)));
    require(!(varg4 - bool(varg4)));
    v1 = new struct(7);
    require(!((v1 + 224 > uint64.max) | (v1 + 224 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = address(varg0.word4);
    v1.word1 = address(varg0.word5);
    v2 = v3 = v1 + 64;
    v1.word2 = bool(varg0.word8);
    v1.word3 = 0;
    v1.word4 = 0;
    v1.word5 = uint16(varg3);
    v1.word6 = bool(varg4);
    v4 = new struct(3);
    v5 = v4.data;
    v4.word1 = bytes20(varg0.word4 << 96);
    v4.word0 = 41;
    require(!((v4 + 96 > uint64.max) | (v4 + 96 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v4.word0.length;
    0x1523(1, keccak256(bytes20(varg0.word4 << 96), bytes20(varg0.word5 << 96), 1));
    v7 = 0x143e(3);
    if (bool(v7)) {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = 32;
        revert(Error('v3: pending callback'));
    } else {
        0x14b2(1, address(v1.word0));
        require(!(varg0.word6 - address(varg0.word6)));
        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = varg2;
        v8, v9 = address(varg0.word6).balanceOf(varg2).gas(msg.gas);
        require(v8, MEM[64], RETURNDATASIZE());
        v9 = v10 = 0;
        if (v8) {
            v11 = v12 = 32;
            if (32 > RETURNDATASIZE()) {
                v11 = v13 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v11 - MEM[64] >= 32);
        }
        v14 = v15 = 64;
        v16 = v17 = address(v1.word0);
        v18 = v19 = 0;
        v20 = 0x1256(varg0.word2);
        if (v19 == bool(v1.word2)) {
            v21 = MEM[v15];
            MEM[v21] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v21 + 4] = varg2;
            MEM[v21 + 4 + 32] = bool(v1.word2);
            MEM[v21 + 4 + 64] = v20;
            MEM[v21 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            MEM[v21 + 4 + 128] = 160;
            MEM[v21 + 4 + 160] = v4.word0.length;
            MCOPY(v21 + 4 + 192, v4.data, v4.word0.length);
            MEM[192 + (v4.word0.length + (v21 + 4))] = 0;
            v22 = 64 + (v21 + 4) + 192;
            // Unknown jump to Block 0x6480x8d6. Refer to 3-address code (TAC);
        } else {
            v21 = v23 = MEM[v15];
            MEM[v23] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v23 + 4] = varg2;
            MEM[v23 + 4 + 32] = bool(v1.word2);
            MEM[v23 + 4 + 64] = v20;
            MEM[v23 + 4 + 96] = address(0x1000276a4);
            MEM[v23 + 4 + 128] = 160;
            MEM[v23 + 4 + 160] = v4.word0.length;
            MCOPY(v23 + 4 + 192, v4.data, v4.word0.length);
            MEM[192 + (v4.word0.length + (v23 + 4))] = 0;
            v22 = v24 = 64 + (v23 + 4) + 192;
        }
        v25 = v16.call(MEM[vb1cV0xb36:vb1cV0xb36 + vb1a0x12e3V0xb36 - vb1cV0xb36], MEM[vb1cV0xb36:vb1cV0xb36 + v6480x8d6_0x6]).value(v18).gas(msg.gas);
        require(v25, MEM[64], RETURNDATASIZE());
        v26 = 0;
        v26 = v27 = 0;
        if (v25) {
            v28 = 64;
            if (64 > RETURNDATASIZE()) {
                v28 = v29 = RETURNDATASIZE();
            }
            require(!((v21 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v21 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(v21 + v28 - v21 >= 64);
            v26 = v30 = MEM[v21];
            v26 = v31 = MEM[v21 + 32];
        }
        if (MEM[v2]) {
        }
        v1.word3 = v26;
        if (bool(!MEM[v2])) {
            v32 = v33 = 0x1256(v26);
        } else {
            v32 = v34 = 0x1256(v26);
        }
        require(!(varg0.word6 - address(varg0.word6)));
        v35, v36 = address(varg0.word6).balanceOf(varg2).gas(msg.gas);
        require(v35, MEM[64], RETURNDATASIZE());
        v36 = 0;
        if (v35) {
            v37 = 32;
            if (32 > RETURNDATASIZE()) {
                v37 = v38 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v37 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v37 - MEM[64] >= 32);
        }
        v39 = _SafeSub(v36, v9);
        v1.word4 = v39;
        v40 = 0x143e(3);
        require(!bool(v40), Error('v3: callback not executed'));
        v41 = new struct(4);
        require(!((v41 + 128 > uint64.max) | (v41 + 128 < v41)), Panic(65)); // failed memory allocation (too much memory)
        v41.word0 = v1.word3;
        v41.word1 = v1.word4;
        v41.word2 = v32;
        v41.word3 = 0;
        return v41.word0, v41.word1, v41.word2, uint16(v41.word3);
    }
}

function 0x16171d39() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return True;
}

function withdrawToken(address _token, address _account, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == _withdrawToken, Error('auth: fee'));
    0x138a(_token, _account, _amount);
}

function 0xf8cdb56b(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 < 416, Error('not implemented'));
    revert();
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1e33667 == function_selector >> 224) {
            withdrawToken(address,address,uint256);
        } else if (0x16171d39 == function_selector >> 224) {
            0x16171d39();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x32085002 == function_selector >> 224) {
            0x32085002();
        } else if (0x3aeac4e1 == function_selector >> 224) {
            withdrawToken(address,address);
        } else if (0x439dd1b3 == function_selector >> 224) {
            0x439dd1b3();
        } else if (0x654b6487 == function_selector >> 224) {
            ramsesV2SwapCallback(int256,int256,bytes);
        } else if (0x715018a6 == function_selector >> 224) {
            renounceOwnership();
        } else if (0x7423eb3c == function_selector >> 224) {
            __activateTstore();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0xa0ef91df == function_selector >> 224) {
            withdrawEth();
        } else if (0xba3fe835 == function_selector >> 224) {
            0xba3fe835();
        } else if (0xf2fde38b == function_selector >> 224) {
            transferOwnership(address);
        } else if (0xf8cdb56b == function_selector >> 224) {
            0xf8cdb56b();
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
