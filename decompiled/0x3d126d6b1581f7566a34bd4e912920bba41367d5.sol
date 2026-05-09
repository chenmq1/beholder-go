// Decompiled by library.dedaub.com
// 2025.12.17 10:05 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => struct_1298) _getRoleAdmin; // STORAGE[0x2dd7bc7dec4dceedda775e58dd541e08a116c6c53815c0bd028192f7b626800]
mapping (address => bool) _withdrawETH; // STORAGE[0xc32d4dc01d07c436ad8a6f9a20eadd61263c71fe16f6b5956005ba3b341f51dd]
uint64 stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00] bytes 0 to 7
bool _initialize; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00] bytes 8 to 8
address _unlockCallback; // STORAGE[0x162468a4167773432f8698ed7a10337877b87465381ef8fdb8745365f36a1100] bytes 0 to 19
address _swapCallback; // STORAGE[0xc9147e3daeff8607fb9627a5944bc77f03892cccc54d9465147fac738f6c1ea4] bytes 0 to 19

struct struct_1298 { mapping (address => bool) field0; uint256 field1; };

// Events
Initialized(uint64);
RoleRevoked(bytes32, address, address);
RoleGranted(bytes32, address, address);

function receive() public payable { 
}

function 0x15c6(uint256 varg0, uint256 varg1) private { 
    require(_initialize, NotInitializing());
    require(varg1.length > 0, Error('empty owners'));
    require(varg0.length > 0, Error('empty swapImpls'));
    0x1fd6(varg1);
    0x203d(varg0);
    return ;
}

function 0x1c7d(address varg0, uint256 varg1) private { 
    if (!_getRoleAdmin[varg1].field0[varg0]) {
        return 0;
    } else {
        _getRoleAdmin[varg1].field0[varg0] = 0;
        emit RoleRevoked(varg1, varg0, msg.sender);
        return 1;
    }
}

function supportsInterface(bytes4 interfaceId) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0x7965db0b00000000000000000000000000000000000000000000000000000000 == interfaceId;
    if (0x7965db0b00000000000000000000000000000000000000000000000000000000 != interfaceId) {
        v0 = v2 = interfaceId == 0x1ffc9a700000000000000000000000000000000000000000000000000000000;
    }
    return bool(v0);
}

function 0x1d7c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg3.call(varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (!RETURNDATASIZE()) {
        v1 = v2 = !(address(varg3)).code.size;
    } else {
        v1 = 1 != MEM[0];
    }
    require(!v1, SafeERC20FailedOperation(address(varg3)));
    return ;
}

function 0x1dd0(address varg0, uint256 varg1) private { 
    if (_getRoleAdmin[varg1].field0[varg0]) {
        return 0;
    } else {
        _getRoleAdmin[varg1].field0[varg0] = 1;
        emit RoleGranted(varg1, varg0, msg.sender);
        return 1;
    }
}

function 0x1eb1(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeDiv(block.timestamp, 3600);
    require(24, Panic(18)); // division by zero
    v1 = v2 = varg1 <= v0 % 24;
    if (varg1 <= v0 % 24) {
        v1 = v3 = v0 % 24 < varg0;
    }
    return v1;
}

function 0x1fd6(uint256 varg0) private { 
    require(_initialize, NotInitializing());
    require(_initialize, NotInitializing());
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = 0x1dd0(varg0[v0], 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e);
        v0 += 1;
    }
    return ;
}

function 0x0d91f990(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    if (block.number <= varg0) {
        v0 = v1 = 0;
        while (1) {
            if (v0 >= varg1.length) {
                exit;
            } else {
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(varg1[v0] < msg.data.length - varg1.data - 95);
                require(varg1[v0] + varg1.data + 32 - (varg1[v0] + varg1.data) >= 32);
                require(msg.data[varg1[v0] + varg1.data] == address(msg.data[varg1[v0] + varg1.data]));
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(varg1[v0] < msg.data.length - varg1.data - 95);
                require(v0 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(varg1[v0] < msg.data.length - varg1.data - 95);
                require(msg.data[varg1[v0] + varg1.data + 32] < msg.data.length - (varg1[v0] + varg1.data) - 31);
                require(msg.data[varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]] <= uint64.max);
                require(32 + (varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]) <= msg.data.length - msg.data[varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]]);
                CALLDATACOPY(MEM[64], 32 + (varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]), msg.data[varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]]);
                MEM[msg.data[varg1[v0] + varg1.data + msg.data[varg1[v0] + varg1.data + 32]] + MEM[64]] = 0;
                v2, /* uint256 */ v3 = address(msg.data[varg1[v0] + varg1.data]).call(MEM[MEM[64]:MEM[64] + msg.data[varg1[v68d_0x0V0x21c] + varg1.data + msg.data[varg1[v68d_0x0V0x21c] + varg1.data + 32]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(msg.data[64 + (varg1[v0] + varg1.data)]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v4 = v5 = 96;
                } else {
                    v4 = v6 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
                }
                if (v2) {
                    v0 += 1;
                } else if (MEM[v4] >= 68) {
                    v7 = 0x3980(32 + (v4 + 4), 32 + (v4 + 4) + MEM[v4 + 4]);
                    v8 = new bytes[](v7.length);
                    v9 = v10 = 0;
                    while (v9 < v7.length) {
                        v8[v9] = v7[v9];
                        v9 += 32;
                    }
                    v8[v7.length] = 0;
                    revert(Error(v8));
                } else {
                    MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                    v11 = new bytes[](v12.length);
                    v13 = v14 = 0;
                    while (v13 < v12.length) {
                        v11[v13] = v12[v13];
                        v13 += 32;
                    }
                    v11[v12.length] = 0;
                    revert(Error(v11, v15, 0x5500000000000000000000000000000000000000000000000000000000000000));
                }
            }
        }
    } else {
        v16 = new bytes[](v17.length);
        v18 = v19 = 0;
        while (v18 < v17.length) {
            v16[v18] = v17[v18];
            v18 += 32;
        }
        v16[v17.length] = 0;
        revert(Error(v16, v15, 0x4200000000000000000000000000000000000000000000000000000000000000));
    }
}

function 0x203d(uint256 varg0) private { 
    require(_initialize, NotInitializing());
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(address(varg0[v0]), Error('Invalid implementation'));
        v2 = _SafeAdd(0x27a7c29818a01378f2bedc8ddf9f92d28ddb97e7a6080124cb8f283ef9f38e2d, v0);
        STORAGE[v2] = varg0[v0];
        v0 += 1;
    }
    return ;
}

function removeOwner(address owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    require(msg.sender - owner, Error('Self-remove owner'));
    v0 = 0x1c7d(owner, 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e);
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    if (msg.sender == _swapCallback) {
        _swapCallback = 0;
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
        require(data.word1 == address(data.word1));
        MEM[MEM[64] + 36] = msg.sender;
        MEM[MEM[64] + 68] = data.word2;
        0x1d7c(100 + MEM[64], 0xa9059cbb, address(data.word1), address(data.word1));
        exit;
    } else {
        v1 = new bytes[](v2.length);
        v3 = v4 = 0;
        while (v3 < v2.length) {
            v1[v3] = v2[v3];
            v3 += 32;
        }
        v1[v2.length] = 0;
        revert(Error(v1, v5, 0x5000000000000000000000000000000000000000000000000000000000000000));
    }
}

function 0x24ca(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg2.approve(varg1, 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
    if (v1) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = (address(varg2)).code.size > 0;
        } else {
            v0 = v3 = 1 == MEM[0];
        }
    }
    if (v0) {
        return ;
    } else {
        MEM[MEM[64] + 36] = varg1;
        MEM[MEM[64] + 68] = 0;
        0x1d7c(100 + MEM[64], 0x95ea7b3, address(varg2), varg2);
        v4 = varg2.approve(varg1, 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
        require(v4, MEM[64], RETURNDATASIZE());
        if (!RETURNDATASIZE()) {
            v5 = v6 = !(address(varg2)).code.size;
        } else {
            v5 = v7 = 1 != MEM[0];
        }
        require(!v5, SafeERC20FailedOperation(address(varg2)));
        return ;
    }
}

function getRoleAdmin(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _getRoleAdmin[role].field1;
}

function 0x2971(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, struct(2) varg4) private { 
    v0 = v1 = bool(address(varg4.word0));
    if (address(varg4.word0)) {
        v0 = v2 = v3.length > varg3;
    }
    if (!v0) {
        return ;
    } else {
        require(varg3 < v4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        varg2 = v5 = MEM[64 + v4[varg3]];
        if (v5 > varg1) {
            if (varg2 <= v5) {
            }
            v6 = _SafeSub(v5, varg1);
            v7 = _SafeSub(varg2, varg1);
            require(varg3 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg3 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10 = _SafeSub(MEM[32 + v9[varg3]], MEM[v8[varg3]]);
            v11 = _SafeMul(v10, v7);
            v12 = _SafeDiv(v11, v6);
            require(varg3 < v13.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v14 = _SafeAdd(MEM[v13[varg3]], v12);
            v15 = _SafeSub(this.balance, varg0);
            require(v14 <= v15, Error('Bribe exceeds available ETH'));
            v16, /* uint256 */ v17 = address(varg4.word0).call().value(v14).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v18 = new bytes[](RETURNDATASIZE());
                v17 = v18.data;
                RETURNDATACOPY(v17, 0, RETURNDATASIZE());
            }
            if (v16) {
                return ;
            } else {
                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = 32;
                v19 = new bytes[](v20.length);
                v21 = v22 = 0;
                while (v21 < v20.length) {
                    v19[v21] = v20[v21];
                    v21 += 32;
                }
                v19[v20.length] = 0;
                revert(Error(v19, v23, 'Bribe failed'));
            }
        } else {
            return ;
        }
    }
}

function grantRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_getRoleAdmin[_getRoleAdmin[role].field1].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, _getRoleAdmin[role].field1));
    v0 = 0x1dd0(account, role);
}

function renounceRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == account, AccessControlBadConfirmation());
    v0 = 0x1c7d(account, role);
}

function 0x54c73f7c(uint256 varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    v0 = 0x1eb1(23, 9);
    require(v0, Error('not in upgrade window'));
    require(varg1, Error('Invalid implementation'));
    v1 = _SafeAdd(0x27a7c29818a01378f2bedc8ddf9f92d28ddb97e7a6080124cb8f283ef9f38e2d, varg0);
    STORAGE[v1] = varg1;
}

function 0x3033() private { 
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function addOwner(address owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    v0 = 0x1dd0(owner, 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e);
}

function initialize(address[] _bAssets, address[] _pTokens) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_bAssets <= uint64.max);
    require(4 + _bAssets + 31 < msg.data.length);
    require(_bAssets.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](_bAssets.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_bAssets.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_bAssets.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + _bAssets + (_bAssets.length << 5) + 32 <= msg.data.length);
    v3 = v4 = _bAssets.data;
    while (v3 < 4 + _bAssets + (_bAssets.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(_pTokens <= uint64.max);
    require(4 + _pTokens + 31 < msg.data.length);
    require(_pTokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new address[](_pTokens.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_pTokens.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_pTokens.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + _pTokens + (_pTokens.length << 5) + 32 <= msg.data.length);
    v8 = v9 = _pTokens.data;
    while (v8 < 4 + _pTokens + (_pTokens.length << 5) + 32) {
        require(msg.data[v8] == address(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v6 += 32;
        v8 += 32;
    }
    v10 = _initialize;
    v11 = v12 = !v10;
    v11 = v13 = !stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7;
    v14 = v15 = 1 == stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7;
    if (v15) {
        v14 = v16 = !this.code.size;
    }
    v17 = v18 = !v11;
    if (!bool(v11)) {
        v17 = !v14;
    }
    require(!v17, InvalidInitialization());
    stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7 = 1;
    if (!_initialize) {
        _initialize = 1;
    }
    0x15c6(v5, v0);
    if (!_initialize) {
        _initialize = 0;
        emit Initialized(1);
    }
}

function 0x3430(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    return varg0;
}

function hasRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    return _getRoleAdmin[role].field0[account];
}

function 0x37ce(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3980(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 > v0 + 31);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](MEM[v0]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0]) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v0]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + MEM[v0] + 32 <= varg1);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        v1[v2] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    v1[MEM[v0]] = 0;
    return v1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x3a4f(uint32 varg0, uint32 varg1) private { 
    require(varg1 + varg0 <= uint32.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 - varg1;
    require(!((varg1 < 0) & (v0 < varg0) | (v0 > varg0) & (varg1 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = _unlockCallback == msg.sender;
    if (v2) {
        v1 = bool(_unlockCallback);
    }
    require(v1, Error('Only PoolManager'));
    _unlockCallback = 0;
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 352);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    v3 = new struct(5);
    require(!((v3 + 160 < v3) | (v3 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData.word1 == address(rawData.word1));
    v3.word0 = rawData.word1;
    require(rawData.word2 == address(rawData.word2));
    v3.word1 = rawData.word2;
    require(rawData.word3 == uint24(rawData.word3));
    v3.word2 = rawData.word3;
    require(rawData.word4 == int24(rawData.word4));
    v3.word3 = rawData.word4;
    require(rawData.word5 == address(rawData.word5));
    v3.word4 = rawData.word5;
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + 160) >= 96);
    v4 = 0x3033();
    require(rawData.word6 == bool(rawData.word6));
    v4.word0 = rawData.word6;
    v4.word1 = rawData.word7;
    require(rawData.word8 == address(rawData.word8));
    v4.word2 = rawData.word8;
    require(rawData.word9 == address(rawData.word9));
    require(rawData.word10 == address(rawData.word10));
    require(rawData.word11 == bool(rawData.word11));
    if (!v4.word0) {
        require(address(v3.word1) == address(rawData.word9), Error('tokenIn mismatch'));
    } else {
        require(address(v3.word0) == address(rawData.word9), Error('tokenIn mismatch'));
    }
    v5 = new uint256[](0);
    v6, v7 = msg.sender.swap(address(v3.word0), address(v3.word1), uint24(v3.word2), int24(v3.word3), address(v3.word4), bool(v4.word0), v4.word1, address(v4.word2), v5).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!v4.word0) {
        require(int128(v7 >> 128) >= 0, Error('Unexpected delta0 sign'));
        require(int128(v7) <= 0, Error('Unexpected delta1 sign'));
        v8 = 0x37ce(v7);
        if (!rawData.word11) {
            require(bool(msg.sender.code.size));
            v9 = msg.sender.sync(address(v3.word1)).gas(msg.gas);
            require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[MEM[64] + 36] = msg.sender;
            MEM[MEM[64] + 68] = uint128(v8);
            0x1d7c(100 + MEM[64], 0xa9059cbb, address(rawData.word9), address(rawData.word9));
            v10, /* uint256 */ v11 = msg.sender.settle().gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            require(bool(msg.sender.code.size));
            v12 = msg.sender.sync(address(v3.word1)).gas(msg.gas);
            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v13, /* uint256 */ v14 = msg.sender.settle().value(uint128(v8)).gas(msg.gas);
            require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        v15 = uint128(v7 >> 128);
        v16 = v17 = msg.sender;
    } else {
        require(int128(v7 >> 128) <= 0, Error('Unexpected delta0 sign'));
        require(int128(v7) >= 0, Error('Unexpected delta1 sign'));
        v18 = 0x37ce(v7 >> 128);
        if (!rawData.word11) {
            require(bool(msg.sender.code.size));
            v19 = msg.sender.sync(address(v3.word0)).gas(msg.gas);
            require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[MEM[64] + 36] = msg.sender;
            MEM[MEM[64] + 68] = uint128(v18);
            0x1d7c(100 + MEM[64], 0xa9059cbb, address(rawData.word9), address(rawData.word9));
            v20, /* uint256 */ v21 = msg.sender.settle().gas(msg.gas);
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        } else {
            require(bool(msg.sender.code.size));
            v22 = msg.sender.sync(address(v3.word0)).gas(msg.gas);
            require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v23, /* uint256 */ v24 = msg.sender.settle().value(uint128(v18)).gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        }
        v15 = v25 = uint128(v7);
        v16 = v26 = msg.sender;
    }
    require(bool(v16.code.size));
    v27 = v16.take(0xb0d9c0900000000000000000000000000000000000000000000000000000000, address(v3.word1), address(v3.word0), address(rawData.word10), address(rawData.word10), v25, v15, v28, address(rawData.word10), address(rawData.word10)).gas(msg.gas);
    require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v29 = new uint256[](32);
    v30 = v31 = 0;
    while (v30 < 32) {
        MEM[v30 + v29.data] = MEM[v30 + (MEM[64] + 32)];
        v30 += 32;
    }
    MEM[32 + v29.data] = 0;
    return v29, v28, v15;
}

function DEFAULT_ADMIN_ROLE() public nonPayable { 
    return 0;
}

function 0xced0a2d1(address[] varg0, address[] varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new address[](varg1.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    v8 = v9 = varg1.data;
    while (1) {
        if (v8 >= 4 + varg1 + (varg1.length << 5) + 32) {
            0x15c6(v5, v0);
            exit;
        } else {
            require(msg.data[v8] == address(msg.data[v8]));
            MEM[v6] = msg.data[v8];
            v6 += 32;
            v8 += 32;
        }
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x3fba(uint8 varg0, uint8 varg1) private { 
    require(varg1 + varg0 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function revokeRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_getRoleAdmin[_getRoleAdmin[role].field1].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, _getRoleAdmin[role].field1));
    v0 = 0x1c7d(account, role);
}

function 0xddaf1428(uint256 varg0, uint256 varg1, struct(7) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(msg.data.length - (4 + varg2) >= 224);
    v0 = new struct(7);
    require(!((v0 + 224 < v0) | (v0 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.word0 == address(varg2.word0));
    v0.word0 = varg2.word0;
    require(msg.data[4 + varg2 + 32] <= uint64.max);
    v1 = varg2.word1;
    require(varg2.word1 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1.length) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.word1 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word1 = v2;
    v0.word2 = varg2.word2;
    require(varg2.word3 == address(varg2.word3));
    v0.word3 = varg2.word3;
    require(varg2.word4 == address(varg2.word4));
    v0.word4 = varg2.word4;
    require(varg2.word5 == uint32(varg2.word5));
    v0.word5 = varg2.word5;
    require(varg2.word6 == bool(varg2.word6));
    v0.word6 = varg2.word6;
    require(_withdrawETH[msg.sender], Error('Only owner'));
    v3, /* uint256 */ v4 = address(v0.word4).balanceOf(this).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v4 >= varg0) {
        if (uint32(v0.word5) != uint32.max) {
            MEM[32 + MEM[64]] = v4;
            v5 = v6 = 0;
            while (uint32(v5) < 32) {
                require(uint32(v5) < 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v7 = v0.word1;
                v8 = 0x3a4f(v0.word5, v5);
                require(uint32(v8) < v7.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[32 + uint32(v8) + v0.word1] = (byte(bytes1(MEM[32 + uint32(v5) + MEM[64]] >> 248 << 248), 0x0)) & 0xFF;
                v5 += 1;
            }
        }
        if (v0.word6) {
            0x24ca(v4, v0.word3, address(v0.word4));
        }
        v9 = v10 = 0;
        while (v9 < v11.length) {
            MEM[v9 + v12.data] = v11[v9];
            v9 += 32;
        }
        MEM[v11.length + v12.data] = 0;
        v13, /* uint256 */ v14 = address(v0.word0).call(v12.data).value(v0.word2).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v15 = v16 = 96;
        } else {
            v15 = v17 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
        }
        if (v13) {
            exit;
        } else if (MEM[v15] >= 68) {
            v18 = 0x3980(32 + (v15 + 4), 32 + (v15 + 4) + MEM[v15 + 4]);
            v19 = new bytes[](v18.length);
            v20 = v21 = 0;
            while (v20 < v18.length) {
                v19[v20] = v18[v20];
                v20 += 32;
            }
            v19[v18.length] = 0;
            revert(Error(v19));
        } else {
            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
            v22 = new bytes[](v23.length);
            v24 = v25 = 0;
            while (v24 < v23.length) {
                v22[v24] = v23[v24];
                v24 += 32;
            }
            v22[v23.length] = 0;
            revert(Error(v22, v26, 0x5500000000000000000000000000000000000000000000000000000000000000));
        }
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        v27 = new bytes[](v28.length);
        v29 = v30 = 0;
        while (v29 < v28.length) {
            v27[v29] = v28[v29];
            v29 += 32;
        }
        v27[v28.length] = 0;
        revert(Error(v27, v26, 0x4252000000000000000000000000000000000000000000000000000000000000));
    }
}

function 0xe3f33a5e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    v0 = 0x3430(4 + varg1, msg.data.length);
    require(varg2 <= uint64.max);
    v1 = 0x3430(4 + varg2, msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + (varg3.length << 5) + 32 <= msg.data.length);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    if (block.number <= varg0) {
        require(msg.data[v1] < msg.data.length - v1 - 31);
        require(msg.data[v1 + msg.data[v1]] <= uint64.max);
        v2 = 32 + (v1 + msg.data[v1]);
        require(v2 <= msg.data.length - (msg.data[v1 + msg.data[v1]] << 5));
        require(msg.data[v1 + 32] < msg.data.length - v1 - 31);
        require(msg.data[v1 + msg.data[v1 + 32]] <= uint64.max);
        require(32 + (v1 + msg.data[v1 + 32]) <= msg.data.length - (msg.data[v1 + msg.data[v1 + 32]] << 5));
        v3 = _SafeSub(msg.data[v1 + msg.data[v1 + 32]], 1);
        v4 = new uint256[](msg.data[v1 + msg.data[v1]]);
        v5 = v6 = 0;
        v7 = v8 = v4.data;
        v9 = v10 = 96 + (4 + MEM[64] + (msg.data[v1 + msg.data[v1]] << 5));
        while (v5 < msg.data[v1 + msg.data[v1]]) {
            MEM[v7] = v9 - (4 + MEM[64]) - 96;
            require(msg.data[v2] < msg.data.length - v2 - 127);
            require(msg.data[v2 + msg.data[v2]] == address(msg.data[v2 + msg.data[v2]]));
            MEM[v9] = address(msg.data[v2 + msg.data[v2]]);
            require(msg.data[32 + (v2 + msg.data[v2])] < msg.data.length - (v2 + msg.data[v2]) - 31);
            v11 = msg.data[v2 + msg.data[v2] + msg.data[32 + (v2 + msg.data[v2])]];
            require(v11 <= uint64.max);
            require(v2 + msg.data[v2] + msg.data[32 + (v2 + msg.data[v2])] + 32 <= msg.data.length - v11);
            MEM[v9 + 32] = 128;
            MEM[v9 + 128] = v11;
            CALLDATACOPY(v9 + 128 + 32, v2 + msg.data[v2] + msg.data[32 + (v2 + msg.data[v2])] + 32, v11);
            MEM[v9 + 128 + v11 + 32] = 0;
            require(msg.data[v2 + msg.data[v2] + 64] < msg.data.length - (v2 + msg.data[v2]) - 31);
            require(msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]] <= uint64.max);
            require(v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64] + 32 <= msg.data.length - (msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]] << 5));
            MEM[v9 + 64] = v9 + 128 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - v9;
            MEM[v9 + 128 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]];
            require(msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]] <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            CALLDATACOPY(v9 + 128 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 32, v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64] + 32, msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]] << 5);
            v9 = 32 + ((msg.data[v2 + msg.data[v2] + msg.data[v2 + msg.data[v2] + 64]] << 5) + (v9 + 128 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32));
            require(msg.data[v2 + msg.data[v2] + 96] == uint8(msg.data[v2 + msg.data[v2] + 96]));
            MEM[96 + v9] = uint8(msg.data[v2 + msg.data[v2] + 96]);
            v7 += 32;
            v2 += 32;
            v5 += 1;
        }
        v12, /* uint256 */ v13 = 0x7e2d0c9f25015b5d2b9d71345557560aa3911072.delegatecall(uint32(0x38deb09), v4, v3).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v13 >= 0) {
            require(msg.data[v1 + 32] < msg.data.length - v1 - 31);
            require(msg.data[v1 + msg.data[v1 + 32]] <= uint64.max);
            require(32 + (v1 + msg.data[v1 + 32]) <= msg.data.length - (msg.data[v1 + msg.data[v1 + 32]] << 5));
            require(v13 < msg.data[v1 + msg.data[v1 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[32 + (v1 + msg.data[v1 + 32]) + (v13 << 5)] < msg.data.length - (32 + (v1 + msg.data[v1 + 32])) - 95);
            v14 = msg.data[32 + (v1 + msg.data[v1 + 32]) + (v13 << 5)] + (32 + (v1 + msg.data[v1 + 32]));
            require(msg.data.length - v14 >= 96);
            v15 = 0x3033();
            v15.word0 = msg.data[v14];
            v15.word1 = msg.data[v14 + 32];
            require(msg.data[v14 + 64] <= uint64.max);
            require(msg.data.length - (v14 + msg.data[v14 + 64]) >= 128);
            v16 = new struct(4);
            require(!((v16 + 128 < v16) | (v16 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(msg.data[v14 + msg.data[v14 + 64]] == address(msg.data[v14 + msg.data[v14 + 64]]));
            v16.word0 = msg.data[v14 + msg.data[v14 + 64]];
            require(msg.data[32 + (v14 + msg.data[v14 + 64])] <= uint64.max);
            require(v14 + msg.data[v14 + 64] + msg.data[32 + (v14 + msg.data[v14 + 64])] + 31 < msg.data.length);
            v17 = msg.data[v14 + msg.data[v14 + 64] + msg.data[32 + (v14 + msg.data[v14 + 64])]];
            require(v17 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new uint256[](v17);
            require(!((v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v17 << 5) + 31) < v18) | (v18 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v17 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v19 = v20 = v18.data;
            require(32 + (v14 + msg.data[v14 + 64] + msg.data[32 + (v14 + msg.data[v14 + 64])] + 96 * v17) <= msg.data.length);
            v21 = v22 = 32 + (v14 + msg.data[v14 + 64] + msg.data[32 + (v14 + msg.data[v14 + 64])]);
            while (v21 < 32 + (v14 + msg.data[v14 + 64] + msg.data[32 + (v14 + msg.data[v14 + 64])] + 96 * v17)) {
                require(msg.data.length - v21 >= 96);
                v23 = 0x3033();
                require(msg.data[v21] == address(msg.data[v21]));
                v23.word0 = msg.data[v21];
                require(msg.data[32 + v21] == uint24(msg.data[32 + v21]));
                v23.word1 = msg.data[32 + v21];
                require(msg.data[v21 + 64] == uint24(msg.data[v21 + 64]));
                v23.word2 = msg.data[v21 + 64];
                MEM[v19] = v23;
                v21 += 96;
                v19 += 32;
            }
            v16.word1 = v18;
            require(msg.data[v14 + msg.data[v14 + 64] + 64] <= uint64.max);
            v24 = v14 + msg.data[v14 + 64] + msg.data[v14 + msg.data[v14 + 64] + 64];
            require(v24 + 31 < msg.data.length);
            require(msg.data[v24] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v25 = new uint256[](msg.data[v24]);
            require(!((v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v24] << 5) + 31) < v25) | (v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v24] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v26 = v27 = v25.data;
            require(32 + (v24 + (msg.data[v24] << 5)) <= msg.data.length);
            v28 = v29 = v24 + 32;
            while (v28 < 32 + (v24 + (msg.data[v24] << 5))) {
                require(msg.data[v28] <= uint64.max);
                require(msg.data.length - (v24 + msg.data[v28]) - 32 >= 288);
                v30 = new struct(9);
                require(!((v30 + 288 < v30) | (v30 + 288 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(msg.data[v24 + msg.data[v28] + 32] == address(msg.data[v24 + msg.data[v28] + 32]));
                v30.word0 = msg.data[v24 + msg.data[v28] + 32];
                require(msg.data[v24 + msg.data[v28] + 64] == uint24(msg.data[v24 + msg.data[v28] + 64]));
                v30.word1 = msg.data[v24 + msg.data[v28] + 64];
                require(msg.data[v24 + msg.data[v28] + 96] == uint8(msg.data[v24 + msg.data[v28] + 96]));
                v30.word2 = msg.data[v24 + msg.data[v28] + 96];
                require(msg.data[v24 + msg.data[v28] + 128] == uint8(msg.data[v24 + msg.data[v28] + 128]));
                v30.word3 = msg.data[v24 + msg.data[v28] + 128];
                require(msg.data[160 + (v24 + msg.data[v28])] == uint8(msg.data[160 + (v24 + msg.data[v28])]));
                v30.word4 = msg.data[160 + (v24 + msg.data[v28])];
                require(msg.data[v24 + msg.data[v28] + 192] == bool(msg.data[v24 + msg.data[v28] + 192]));
                v30.word5 = msg.data[v24 + msg.data[v28] + 192];
                require(msg.data[224 + (v24 + msg.data[v28])] <= uint64.max);
                require(v24 + msg.data[v28] + msg.data[224 + (v24 + msg.data[v28])] + 32 + 31 < msg.data.length);
                v31 = msg.data[v24 + msg.data[v28] + msg.data[224 + (v24 + msg.data[v28])] + 32];
                require(v31 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v32 = new bytes[](v31);
                require(!((v32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v31) + 31) < v32) | (v32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(v24 + msg.data[v28] + msg.data[224 + (v24 + msg.data[v28])] + 32 + v31 + 32 <= msg.data.length);
                CALLDATACOPY(v32.data, v24 + msg.data[v28] + msg.data[224 + (v24 + msg.data[v28])] + 32 + 32, v31);
                v32[v31] = 0;
                v30.word6 = v32;
                require(msg.data[v24 + msg.data[v28] + (uint8.max + 1)] == bool(msg.data[v24 + msg.data[v28] + (uint8.max + 1)]));
                v30.word7 = msg.data[v24 + msg.data[v28] + (uint8.max + 1)];
                v30.word8 = msg.data[v24 + msg.data[v28] + 288];
                MEM[v26] = v30;
                v26 += 32;
                v28 += 32;
            }
            v16.word2 = v25;
            require(msg.data[v14 + msg.data[v14 + 64] + 96] < 2);
            v16.word3 = msg.data[v14 + msg.data[v14 + 64] + 96];
            v15.word2 = v16;
            if (!address(MEM[v15.word2])) {
                MEM[v15.word2] = this;
            }
            require(MEM[MEM[32 + v15.word2]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v33 = new uint256[](MEM[MEM[32 + v15.word2]]);
            if (MEM[MEM[32 + v15.word2]]) {
                CALLDATACOPY(v33.data, msg.data.length, MEM[MEM[32 + v15.word2]] << 5);
            }
            require(0 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v34 = v33.data;
            v33[0] = v15.word0;
            v35 = v36 = 0;
            v37 = v38 = 0;
            while (v37 < MEM[MEM[64 + v15.word2]]) {
                require(v37 < MEM[MEM[64 + v15.word2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v39 = MEM[32 + (v37 << 5) + MEM[64 + v15.word2]];
                v40 = v41 = 0 == v37;
                if (0 != v37) {
                    v42 = _SafeSub(v37, 1);
                    require(v42 < MEM[MEM[v15.word2 + 64]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v40 = uint8(MEM[64 + v39]) != uint8(MEM[64 + MEM[32 + (v42 << 5) + MEM[v15.word2 + 64]]]);
                }
                if (v40) {
                    require(uint8(MEM[64 + v39]) < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v35 = v43 = v33[uint8(MEM[64 + v39])];
                    require(uint8(MEM[64 + v39]) < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v33[uint8(MEM[64 + v39])] = 0;
                }
                v44 = _SafeAdd(1, v37);
                v45 = v46 = v44 < MEM[MEM[v15.word2 + 64]];
                if (v46) {
                    v47 = _SafeAdd(1, v37);
                    require(v47 < MEM[MEM[v15.word2 + 64]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v45 = v48 = uint8(MEM[64 + v39]) == uint8(MEM[64 + MEM[32 + (v47 << 5) + MEM[v15.word2 + 64]]]);
                }
                if (True - bool(MEM[224 + v39])) {
                    if (!MEM[v39 + (uint8.max + 1)]) {
                        if (v45) {
                            v49 = _SafeMul(v35, uint24(MEM[32 + v39]));
                            v35 = _SafeDiv(v49, 10 ** 6);
                        }
                    } else {
                        v35 = MEM[v39 + (uint8.max + 1)];
                        // Unknown jump to Block 0x2797B0x1906B0x46e. Refer to 3-address code (TAC);
                    }
                } else {
                    v50 = _SafeMul(v35, uint24(MEM[32 + v39]));
                    v35 = _SafeDiv(v50, 10 ** 6);
                }
                require(uint8(MEM[64 + v39]) < MEM[MEM[32 + v15.word2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v51 = _SafeMul(v35, uint24(MEM[64 + MEM[32 + (uint8(MEM[64 + v39]) << 5) + MEM[32 + v15.word2]]]));
                v52 = _SafeDiv(v51, 10 ** 6);
                v53 = _SafeSub(v35, v52);
                v54 = 0x3fba(1, MEM[96 + v39]);
                if (uint8(v54) == MEM[MEM[32 + v15.word2]]) {
                    v55 = v56 = MEM[v15.word2];
                } else {
                    v55 = v57 = this;
                }
                require(uint8(MEM[64 + v39]) < MEM[MEM[32 + v15.word2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(uint8(MEM[96 + v39]) < MEM[MEM[32 + v15.word2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v58 = v59 = uint8(MEM[128 + v39]) < 9;
                if (uint8(MEM[128 + v39]) >= 9) {
                    v58 = v60 = 14 == uint8(MEM[128 + v39]);
                }
                if (!v58) {
                    v58 = 15 == uint8(MEM[128 + v39]);
                }
                if (!v58) {
                    v61 = _SafeAdd(0x27a7c29818a01378f2bedc8ddf9f92d28ddb97e7a6080124cb8f283ef9f38e2d, 1);
                    v62 = STORAGE[v61];
                } else {
                    v63 = _SafeAdd(0x27a7c29818a01378f2bedc8ddf9f92d28ddb97e7a6080124cb8f283ef9f38e2d, 0);
                    v62 = v64 = STORAGE[v63];
                }
                require(address(v62), Error('Swap implementation not set'));
                MEM[36 + MEM[64] + 32] = v35;
                MEM[36 + MEM[64] + 64] = v53;
                MEM[36 + MEM[64] + 96] = address(v55);
                MEM[36 + MEM[64] + 128] = address(MEM[MEM[32 + (uint8(MEM[64 + v39]) << 5) + MEM[32 + v15.word2]]]);
                MEM[36 + MEM[64] + 128 + 32] = uint24(MEM[MEM[32 + (uint8(MEM[64 + v39]) << 5) + MEM[32 + v15.word2]] + 32]);
                MEM[36 + MEM[64] + 128 + 64] = uint24(MEM[64 + MEM[32 + (uint8(MEM[64 + v39]) << 5) + MEM[32 + v15.word2]]]);
                MEM[36 + MEM[64] + 224] = address(MEM[MEM[32 + (uint8(MEM[96 + v39]) << 5) + MEM[32 + v15.word2]]]);
                MEM[36 + MEM[64] + (uint8.max + 1)] = uint24(MEM[MEM[32 + (uint8(MEM[96 + v39]) << 5) + MEM[32 + v15.word2]] + 32]);
                MEM[36 + MEM[64] + 288] = uint24(MEM[MEM[32 + (uint8(MEM[96 + v39]) << 5) + MEM[32 + v15.word2]] + 64]);
                MEM[356 + MEM[64]] = 320;
                MEM[36 + MEM[64] + 352] = address(MEM[v39]);
                MEM[36 + MEM[64] + 384] = uint24(MEM[v39 + 32]);
                MEM[36 + MEM[64] + 416] = uint8(MEM[v39 + 64]);
                MEM[36 + MEM[64] + 448] = uint8(MEM[v39 + 96]);
                MEM[36 + MEM[64] + 480] = uint8(MEM[v39 + 128]);
                MEM[36 + MEM[64] + 512] = bool(MEM[v39 + 160]);
                MEM[36 + MEM[64] + 544] = 288;
                MEM[36 + MEM[64] + 640] = MEM[MEM[v39 + 192]];
                v65 = v66 = 0;
                while (v65 < MEM[MEM[v39 + 192]]) {
                    MEM[v65 + (36 + MEM[64] + 640 + 32)] = MEM[v65 + (MEM[v39 + 192] + 32)];
                    v65 += 32;
                }
                MEM[MEM[MEM[v39 + 192]] + (36 + MEM[64] + 640 + 32)] = 0;
                MEM[36 + MEM[64] + 576] = bool(MEM[v39 + 224]);
                MEM[36 + MEM[64] + 608] = MEM[v39 + (uint8.max + 1)];
                MEM[MEM[64] + 32] = bytes4(0x237974fa00000000000000000000000000000000000000000000000000000000) | uint224(32);
                v67 = v68 = 0;
                while (v67 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v39 + 192]]) + (36 + MEM[64] + 640)) - MEM[64] - 32) {
                    MEM[v67 + MEM[64]] = MEM[v67 + (MEM[64] + 32)];
                    v67 += 32;
                }
                MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v39 + 192]]) + (36 + MEM[64] + 640)) - MEM[64] - 32 + MEM[64]] = 0;
                v69, /* uint256 */ v70, /* uint256 */ v71, /* uint256 */ v72 = address(v62).delegatecall(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v2636V0x1906V0x46e + 192]] + 36 + MEM[64] + 640 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v73 = v74 = 96;
                } else {
                    v73 = v75 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v75.data, 0, RETURNDATASIZE());
                }
                if (v69) {
                    require(v71 + MEM[v73] - v71 >= 32);
                    if (uint8(MEM[64 + v39]) - uint8(MEM[96 + v39])) {
                        v35 = _SafeSub(v35, v35);
                        require(uint8(MEM[96 + v39]) < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v76 = _SafeAdd(v33[uint8(MEM[96 + v39])], MEM[v71]);
                        v33[uint8(MEM[96 + v39])] = v76;
                    } else {
                        v35 = _SafeAdd(v35, MEM[v71]);
                    }
                    v37 = v37 + 1;
                } else {
                    require(!MEM[v73], v72, MEM[v73]);
                    MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                    v77 = new bytes[](v78.length);
                    v79 = v80 = 0;
                    while (v79 < v78.length) {
                        v77[v79] = v78[v79];
                        v79 += 32;
                    }
                    v77[v78.length] = 0;
                    revert(Error(v77, v81, 0x5000000000000000000000000000000000000000000000000000000000000000));
                }
            }
            require(MEM[96 + v15.word2] <= 1, Panic(33)); // failed convertion to enum type
            if (MEM[96 + v15.word2] == 0) {
                v82 = v83 = _SafeSub(MEM[MEM[32 + v15.word2]], 1);
            } else {
                v82 = v84 = 0;
            }
            require(v82 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (v33[v82] >= v15.word1) {
                require(msg.data.length - v0 >= 64);
                v85 = new struct(2);
                require(!((v85 + 64 < v85) | (v85 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(msg.data[v0] == address(msg.data[v0]));
                v85.word0 = msg.data[v0];
                require(msg.data[32 + v0] <= uint64.max);
                require(v0 + msg.data[32 + v0] + 31 < msg.data.length);
                require(msg.data[v0 + msg.data[32 + v0]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v86 = new uint256[](msg.data[v0 + msg.data[32 + v0]]);
                require(!((v86 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[32 + v0]] << 5) + 31) < v86) | (v86 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[32 + v0]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v87 = v88 = v86.data;
                require(32 + (v0 + msg.data[32 + v0] + 96 * msg.data[v0 + msg.data[32 + v0]]) <= msg.data.length);
                v89 = v90 = 32 + (v0 + msg.data[32 + v0]);
                while (v89 < 32 + (v0 + msg.data[32 + v0] + 96 * msg.data[v0 + msg.data[32 + v0]])) {
                    require(msg.data.length - v89 >= 96);
                    v91 = 0x3033();
                    v91.word0 = msg.data[v89];
                    v91.word1 = msg.data[v89 + 32];
                    v91.word2 = msg.data[v89 + 64];
                    MEM[v87] = v91;
                    v89 += 96;
                    v87 += 32;
                }
                v85.word1 = v86;
                require(msg.data[v1 + 32] < msg.data.length - v1 - 31);
                require(msg.data[v1 + msg.data[v1 + 32]] <= uint64.max);
                require(32 + (v1 + msg.data[v1 + 32]) <= msg.data.length - (msg.data[v1 + msg.data[v1 + 32]] << 5));
                require(v13 < msg.data[v1 + msg.data[v1 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(msg.data[32 + (v1 + msg.data[v1 + 32]) + (v13 << 5)] < msg.data.length - (32 + (v1 + msg.data[v1 + 32])) - 95);
                0x2971(0, msg.data[32 + (msg.data[32 + (v1 + msg.data[v1 + 32]) + (v13 << 5)] + (32 + (v1 + msg.data[v1 + 32])))], v33[v82], v13, v85);
                v92 = v93 = v13 < varg3.length;
                if (v93) {
                    require(v13 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require((?)[v13] < msg.data.length - varg3.data - 223);
                    require((?)[v13] + varg3.data + 32 - ((?)[v13] + varg3.data) >= 32);
                    require(msg.data[(?)[v13] + varg3.data] == address(msg.data[(?)[v13] + varg3.data]));
                    v92 = address(msg.data[(?)[v13] + varg3.data]) != 0;
                }
                if (v92) {
                    require(v13 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require((?)[v13] < msg.data.length - varg3.data - 223);
                    require(msg.data.length - ((?)[v13] + varg3.data) >= 224);
                    v94 = new struct(7);
                    require(!((v94 + 224 < v94) | (v94 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data[(?)[v13] + varg3.data] == address(msg.data[(?)[v13] + varg3.data]));
                    v94.word0 = msg.data[(?)[v13] + varg3.data];
                    require(msg.data[(?)[v13] + varg3.data + 32] <= uint64.max);
                    require((?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32] + 31 < msg.data.length);
                    require(msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v95 = new bytes[](msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]]);
                    require(!((v95 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]]) + 31) < v95) | (v95 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require((?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32] + msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]] + 32 <= msg.data.length);
                    CALLDATACOPY(v95.data, (?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32] + 32, msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]]);
                    v95[msg.data[(?)[v13] + varg3.data + msg.data[(?)[v13] + varg3.data + 32]]] = 0;
                    v94.word1 = v95;
                    v94.word2 = msg.data[(?)[v13] + varg3.data + 64];
                    require(msg.data[(?)[v13] + varg3.data + 96] == address(msg.data[(?)[v13] + varg3.data + 96]));
                    v94.word3 = msg.data[(?)[v13] + varg3.data + 96];
                    require(msg.data[(?)[v13] + varg3.data + 128] == address(msg.data[(?)[v13] + varg3.data + 128]));
                    v94.word4 = msg.data[(?)[v13] + varg3.data + 128];
                    require(msg.data[(?)[v13] + varg3.data + 160] == uint32(msg.data[(?)[v13] + varg3.data + 160]));
                    v94.word5 = msg.data[(?)[v13] + varg3.data + 160];
                    require(msg.data[(?)[v13] + varg3.data + 192] == bool(msg.data[(?)[v13] + varg3.data + 192]));
                    v94.word6 = msg.data[(?)[v13] + varg3.data + 192];
                    if (uint32(v94.word5) != uint32.max) {
                        MEM[32 + MEM[64]] = v33[v82];
                        v96 = v97 = 0;
                        while (uint32(v96) < 32) {
                            require(uint32(v96) < 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v98 = v94.word1;
                            v99 = 0x3a4f(v94.word5, v96);
                            require(uint32(v99) < v98.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            MEM8[32 + uint32(v99) + v94.word1] = (byte(bytes1(MEM[32 + uint32(v96) + MEM[64]] >> 248 << 248), 0x0)) & 0xFF;
                            v96 += 1;
                        }
                    }
                    if (v94.word6) {
                        0x24ca(v33[v82], v94.word3, address(v94.word4));
                    }
                    v100 = v101 = 0;
                    while (v100 < v102.length) {
                        MEM[v100 + v103.data] = v102[v100];
                        v100 += 32;
                    }
                    MEM[v102.length + v103.data] = 0;
                    v104, /* uint256 */ v105 = address(v94.word0).call(v103.data).value(v94.word2).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v106 = v107 = 96;
                    } else {
                        v106 = v108 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v108.data, 0, RETURNDATASIZE());
                    }
                    if (!v104) {
                        if (MEM[v106] >= 68) {
                            v109 = 0x3980(32 + (v106 + 4), 32 + (v106 + 4) + MEM[v106 + 4]);
                            v110 = new bytes[](v109.length);
                            v111 = v112 = 0;
                            while (v111 < v109.length) {
                                v110[v111] = v109[v111];
                                v111 += 32;
                            }
                            v110[v109.length] = 0;
                            revert(Error(v110));
                        } else {
                            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                            v113 = new bytes[](v114.length);
                            v115 = v116 = 0;
                            while (v115 < v114.length) {
                                v113[v115] = v114[v115];
                                v115 += 32;
                            }
                            v113[v114.length] = 0;
                            revert(Error(v113, v81, 0x5500000000000000000000000000000000000000000000000000000000000000));
                        }
                    }
                }
                return v33[v82], v13;
            } else {
                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
                v117 = new bytes[](v118.length);
                v119 = v120 = 0;
                while (v119 < v118.length) {
                    v117[v119] = v118[v119];
                    v119 += 32;
                }
                v117[v118.length] = 0;
                revert(Error(v117, v81, 0x4100000000000000000000000000000000000000000000000000000000000000));
            }
        } else {
            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
            v121 = new bytes[](v122.length);
            v123 = v124 = 0;
            while (v123 < v122.length) {
                v121[v123] = v122[v123];
                v123 += 32;
            }
            v121[v122.length] = 0;
            revert(Error(v121, v81, 0x4300000000000000000000000000000000000000000000000000000000000000));
        }
    } else {
        v125 = new bytes[](v126.length);
        v127 = v128 = 0;
        while (v127 < v126.length) {
            v125[v127] = v126[v127];
            v127 += 32;
        }
        v125[v126.length] = 0;
        revert(Error(v125, v81, 0x4200000000000000000000000000000000000000000000000000000000000000));
    }
}

function OWNER_ROLE() public nonPayable { 
    return 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e;
}

function withdrawETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    v0 = msg.sender.call().value(amount).gas(2300 * !amount);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    v0 = 0x1dd0(newOwner, 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e);
    v1 = 0x1c7d(msg.sender, 0xb19546dff01e856fb3f010c267a7b1c60363cf8a4664e21cc89c26224620214e);
}

function withdraw(address _token, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_withdrawETH[msg.sender], Error('Only owner'));
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = _amount;
    0x1d7c(100 + MEM[64], 0xa9059cbb, _token, _token);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else {
        v0 = function_selector >> 224;
        if (0x91dd7346 > v0) {
            if (0x2f2ff15d > v0) {
                if (0x18780684 > v0) {
                    if (0x1ffc9a7 == v0) {
                        supportsInterface(bytes4);
                    } else if (0xd91f990 == v0) {
                        0x0d91f990();
                    } else if (0x173825d9 == v0) {
                        removeOwner(address);
                    }
                } else if (0x18780684 != v0) {
                    if (0x23a69e75 != v0) {
                        if (0x248a9ca3 == v0) {
                            getRoleAdmin(bytes32);
                        } else if (0x2c8958f6 != v0) {
                        }
                    }
                }
            } else if (0x654b6487 > v0) {
                if (0x2f2ff15d == v0) {
                    grantRole(bytes32,address);
                } else if (0x36568abe == v0) {
                    renounceRole(bytes32,address);
                } else if (0x54c73f7c == v0) {
                    0x54c73f7c();
                }
            } else if (0x654b6487 != v0) {
                if (0x7065cb48 == v0) {
                    addOwner(address);
                } else if (0x73cf25f8 == v0) {
                    initialize(address[],address[]);
                } else if (0x91d14854 == v0) {
                    hasRole(bytes32,address);
                }
            }
        } else if (0xe3f33a5e > v0) {
            if (0xced0a2d1 > v0) {
                if (0x91dd7346 == v0) {
                    unlockCallback(bytes);
                } else if (0xa1dab4eb != v0) {
                    if (0xa217fddf == v0) {
                        DEFAULT_ADMIN_ROLE();
                    }
                }
            } else if (0xced0a2d1 == v0) {
                0xced0a2d1();
            } else if (0xd3e1c284 != v0) {
                if (0xd547741f == v0) {
                    revokeRole(bytes32,address);
                } else if (0xddaf1428 == v0) {
                    0xddaf1428();
                }
            }
        } else if (0xf2fde38b > v0) {
            if (0xe3f33a5e == v0) {
                0xe3f33a5e();
            } else if (0xe58378bb == v0) {
                OWNER_ROLE();
            } else if (0xf14210a6 == v0) {
                withdrawETH(uint256);
            }
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xf3fef3a3 == v0) {
            withdraw(address,uint256);
        } else if (0xfa461e33 != v0) {
            if (0xfa483e72 != v0) {
            }
        }
        swapCallback(int256,int256,bytes);
    }
    require(!msg.value);
}
