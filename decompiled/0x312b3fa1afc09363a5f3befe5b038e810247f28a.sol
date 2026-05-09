// Decompiled by library.dedaub.com
// 2026.04.07 12:39 UTC
// Compiled using the solidity compiler version 0.8.34


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _removeOwner; // STORAGE[0x0]
uint256 _uniswapV3SwapCallback; // TRANSIENT_STORAGE[0x245960f78af92349d7dc67e27b750588061c334ba390a25c4b3ade2d4c78d029]
uint256 tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31; // TRANSIENT_STORAGE[0xc2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31]
uint256 _onMorphoFlashLoan; // TRANSIENT_STORAGE[0xd41821e56c11c72ad605ff2471cab34373a2158fd410e74281af07b61bdc38c4]
bytes32 tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f; // TRANSIENT_STORAGE[0xe85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f]
uint256 tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c; // TRANSIENT_STORAGE[0xf654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c]
uint256 tstor_fdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a; // TRANSIENT_STORAGE[0xfdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a]



function addOwner(address owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0xd89a33693bc41e7272d133111b7f0411f59cfc14)));
    _removeOwner[owner] = 1;
}

function refundAll(address[] wallets) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(wallets <= uint64.max);
    require(4 + wallets + 31 < msg.data.length);
    require(wallets.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](wallets.length);
    require(!((v0 + (32 + (wallets.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (wallets.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + wallets + (wallets.length << 5) + 32 <= msg.data.length);
    v3 = v4 = wallets.data;
    while (v3 < 4 + wallets + (wallets.length << 5) + 32) {
        require(!(msg.data[v3] - address(msg.data[v3])));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    0x1b95(v0);
    exit;
}

function refundBalance() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    if (v1) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v1).gas(msg.gas);
        require(v5, v6, RETURNDATASIZE());
        if (v5) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    }
    if (this.balance) {
        v7, /* uint256 */ v8 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14).call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v9 = v10 = new bytes[](RETURNDATASIZE());
            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
            v8 = v10.data;
            RETURNDATACOPY(v8, 0, RETURNDATASIZE());
        }
        require(v7, Error(21058));
        return ;
    } else {
        return ;
    }
}

function addOwners(address[] _owners) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_owners <= uint64.max);
    require(_owners + 35 < msg.data.length);
    require(_owners.length <= uint64.max);
    require(_owners + (_owners.length << 5) + 36 <= msg.data.length);
    require(!(msg.sender - address(0xd89a33693bc41e7272d133111b7f0411f59cfc14)));
    v0 = v1 = 0;
    while (v0 < _owners.length) {
        require(!(msg.data[_owners + (v0 << 5) + 36] - address(msg.data[_owners + (v0 << 5) + 36])));
        _removeOwner[address(msg.data[_owners + (v0 << 5) + 36])] = 1;
        v0 = v0 + 1;
    }
    exit;
}

function refund() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (this.balance) {
        v0, /* uint256 */ v1 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14).call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, Error(82));
        exit;
    } else {
        exit;
    }
}

function onMorphoFlashLoan(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.data + varg0.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = 0;
    if (!_uniswapV3SwapCallback) {
        tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31 = amount0Delta;
        tstor_fdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a = amount1Delta;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            require(_removeOwner[tx.origin], Error(20306));
            require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
            MEM[0] = tx.origin;
            require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        } else {
            require(address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin, Error(20306));
            require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
            MEM[0] = MEM[0];
            require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        }
        MEM[0] = MEM[0];
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v3 = v0.length;
            v4 = v0.data;
            require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        v5 = 0x1e84(v0.data, v0 + v0.length + 32);
        0x2022(v5);
    } else {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new bytes[](data.length);
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v6.data, data.data, data.length);
        v6[data.length] = 0;
        v7 = v8 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            v7 = v9 = _removeOwner[tx.origin];
        }
        require(v7, Error(20306));
        require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
        require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v10 = v6.length;
            v11 = v6.data;
            require(!(keccak256(v6) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        require(v6 + v6.length - v6 >= 64);
        require(!(MEM[v6.data] - bool(MEM[v6.data])));
        require(!(MEM[64 + v6] - address(MEM[64 + v6])));
        if (!MEM[v6.data]) {
            require((address(MEM[64 + v6])).code.size);
            v12, /* uint256 */ v13 = address(MEM[64 + v6]).transfer(msg.sender, amount1Delta).gas(msg.gas);
            require(v12, v13, RETURNDATASIZE());
            if (v12) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                v1 = 0;
            }
        } else {
            require((address(MEM[64 + v6])).code.size, v2, v2);
            v14, /* uint256 */ v15 = address(MEM[64 + v6]).transfer(msg.sender, amount0Delta).value(v2).gas(msg.gas);
            require(v14, v15, RETURNDATASIZE());
            if (v14) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v2, v2, v2);
            }
        }
        MEM[0] = MEM[0];
        _uniswapV3SwapCallback = v1;
    }
}

function 0x18dec20e(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _removeOwner[varg0];
}

function removeOwner(address owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0xd89a33693bc41e7272d133111b7f0411f59cfc14)));
    _removeOwner[owner] = 0;
}

function refundETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0, v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
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
    if (v1) {
        v6, /* bool */ v7 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transfer(address(0xd89a33693bc41e7272d133111b7f0411f59cfc14), v1).gas(msg.gas);
        require(v6, MEM[64], RETURNDATASIZE());
        if (v6) {
            v8 = v9 = 32;
            if (32 > RETURNDATASIZE()) {
                v8 = v10 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v8 - MEM[64] >= 32);
            require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
            exit;
        } else {
            exit;
        }
    } else {
        exit;
    }
}

function 0x1b95(uint256 varg0) private { 
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2, v3 = address(varg0[v0]).balanceOf(this).gas(msg.gas);
        require(v2, v4, RETURNDATASIZE());
        v3 = v5 = 0;
        if (v2) {
            v6 = v7 = 32;
            if (v7 > RETURNDATASIZE()) {
                v6 = v8 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v6 - MEM[64] >= 32);
        }
        if (v3) {
            require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v9 = new bytes[](68);
            MEM[v9.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v9 + 36] = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14);
            MEM[v9 + 68] = v3;
            require(!((v9 + 128 > uint64.max) | (v9 + 128 < v9)), Panic(65)); // failed memory allocation (too much memory)
            v10 = v9.length;
            v11, /* uint256 */ v4, /* uint256 */ v12 = address(varg0[v0]).transfer(address(0xd89a33693bc41e7272d133111b7f0411f59cfc14), v3).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v13 = v14 = new bytes[](RETURNDATASIZE());
                require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                v12 = v14.data;
                RETURNDATACOPY(v12, 0, RETURNDATASIZE());
            }
            require(v11, Error(21076));
        }
        v0 += 1;
    }
    return ;
}

function 0x1cef(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[varg0] - address(MEM[varg0])));
    v0.word0 = MEM[varg0];
    require(!(MEM[varg0 + 32] - address(MEM[varg0 + 32])));
    v0.word1 = MEM[varg0 + 32];
    require(!(MEM[varg0 + 64] - uint24(MEM[varg0 + 64])));
    v0.word2 = MEM[varg0 + 64];
    require(!(MEM[varg0 + 96] - int24(MEM[varg0 + 96])));
    v0.word3 = MEM[varg0 + 96];
    require(!(MEM[128 + varg0] - address(MEM[128 + varg0])));
    v0.word4 = MEM[128 + varg0];
    return v0;
}

function 0x1d6e(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x1db4(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1e64(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1e84(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(v0 + 31 < varg1);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](MEM[v0]);
    require(!((v1 + (32 + (MEM[v0] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (MEM[v0] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v1.data;
    require(v0 + (MEM[v0] << 5) + 32 <= varg1);
    v3 = v0 + 32;
    while (v3 < v0 + (MEM[v0] << 5) + 32) {
        require(MEM[v3] <= uint64.max);
        require(varg1 - (v0 + MEM[v3]) - 32 >= 64);
        v4 = new struct(2);
        require(!((v4 + 64 > uint64.max) | (v4 + 64 < v4)), Panic(65)); // failed memory allocation (too much memory)
        v4.word0 = MEM[v0 + MEM[v3] + 32];
        require(MEM[v0 + MEM[v3] + 64] <= uint64.max);
        v5 = 0x1d6e(v0 + MEM[v3] + MEM[v0 + MEM[v3] + 64] + 32, varg1);
        v4.word1 = v5;
        MEM[v2] = v4;
        v2 = v2 + 32;
        v3 = v3 + 32;
    }
    return v1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x2022(uint256 varg0) private { 
    v0 = v1 = 0;
    while (v0 < MEM[v0]) {
        require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2 = MEM[(v0 << 5) + v0 + 32];
        if (MEM[v2]) {
            if (MEM[v2] - 1) {
                if (MEM[v2] - 2) {
                    if (MEM[v2] - 3) {
                        if (MEM[v2] - 4) {
                            if (MEM[v2] - 5) {
                                if (MEM[v2] - 6) {
                                    if (MEM[v2] - 9) {
                                        if (MEM[v2] - 7) {
                                            if (MEM[v2] - 8) {
                                                if (MEM[v2] - 10) {
                                                    if (MEM[v2] - 11) {
                                                        require(!(12 - MEM[v2]), Error(0x434d44));
                                                        require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 64);
                                                        v3 = 0x3b36(MEM[32 + v2] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                                        MEM[0] = MEM[0];
                                                        if (address(v3.word1)) {
                                                            require((address(v3.word0)).code.size);
                                                            v4 = address(v3.word0).sync(address(v3.word1)).gas(msg.gas);
                                                            if (!v4) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                if (v4) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                }
                                                                require((address(v3.word1)).code.size);
                                                                v5 = address(v3.word1).transfer(address(v3.word0), tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                                if (!v5) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    if (v5) {
                                                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    }
                                                                    v6 = v7 = MEM[64];
                                                                    v8 = address(v3.word0).settle().gas(msg.gas);
                                                                    if (!v8) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        v9 = v10 = 1;
                                                                        if (!v8) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            v11 = this.balance;
                                                            if (!v11) {
                                                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                                                v12 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                                if (!v12) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else if (v12) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                }
                                                            }
                                                            v6 = v13 = MEM[64];
                                                            v14 = address(v3.word0).settle().value(tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                            if (!v14) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v9 = v15 = 1;
                                                                if (!v14) {
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 32);
                                                        require(MEM[MEM[32 + v2] + 32] <= uint64.max);
                                                        v16 = MEM[32 + v2] + MEM[MEM[32 + v2] + 32];
                                                        require(MEM[32 + v2] + MEM[MEM[32 + v2]] - v16 >= 320);
                                                        v17 = new struct(6);
                                                        require(!((v17 + 192 > uint64.max) | (v17 + 192 < v17)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(!(MEM[v16 + 32] - address(MEM[v16 + 32])));
                                                        v17.word0 = MEM[v16 + 32];
                                                        v18 = 0x1cef(v16 + 64, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                                        v17.word1 = v18;
                                                        require(!(MEM[v16 + 224] - address(MEM[v16 + 224])));
                                                        v17.word2 = MEM[v16 + 224];
                                                        v17.word3 = MEM[v16 + (uint8.max + 1)];
                                                        require(MEM[v16 + 288] <= uint64.max);
                                                        v19 = v20 = 0;
                                                        v21 = 0x1d6e(v16 + MEM[v16 + 288] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                                        v17.word4 = v21;
                                                        require(!(MEM[v16 + 320] - bool(MEM[v16 + 320])));
                                                        v17.word5 = MEM[v16 + 320];
                                                        v22 = new uint256[]((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v21.length) + (v22 + 288) + 32 - v22 - 32);
                                                        MEM[v22.data] = address(MEM[v17.word1]);
                                                        MEM[v22.data + 32] = address(MEM[v17.word1 + 32]);
                                                        MEM[v22.data + 64] = uint24(MEM[v17.word1 + 64]);
                                                        MEM[v22.data + 96] = int24(MEM[v17.word1 + 96]);
                                                        MEM[v22.data + 128] = address(MEM[128 + v17.word1]);
                                                        MEM[v22 + 192] = address(v17.word2);
                                                        MEM[v22 + 224] = v17.word3;
                                                        MEM[v22 + (uint8.max + 1)] = uint8.max + 1;
                                                        MEM[v22 + 288] = v21.length;
                                                        MCOPY(v22 + 288 + 32, v21.data, v21.length);
                                                        MEM[32 + (v21.length + (v22 + 288))] = 0;
                                                        require(!((v22 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v21.length) + (v22 + 288) + 32 - v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v22 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v21.length) + (v22 + 288) + 32 - v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v22)), Panic(65)); // failed memory allocation (too much memory)
                                                        v23 = v24 = address(v17.word0);
                                                        v25 = 0;
                                                        if (bool(!v17.word5)) {
                                                            v26 = v22.length;
                                                            v27 = v22.data;
                                                            v25 = v28 = keccak256(v22);
                                                        }
                                                        tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v25;
                                                        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                        MEM[0] = MEM[0];
                                                        _onMorphoFlashLoan = v24;
                                                        v29 = v30 = MEM[64];
                                                        MEM[v30] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                        MEM[v30 + 4] = 32;
                                                        MEM[v30 + 36] = v22.length;
                                                        MCOPY(v30 + 36 + 32, v22.data, v22.length);
                                                        MEM[32 + (v22.length + (v30 + 36))] = 0;
                                                        v31 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v22.length) + (v30 + 36) + 32;
                                                    }
                                                } else {
                                                    require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 288);
                                                    v32 = new struct(5);
                                                    require(!((v32 + 160 > uint64.max) | (v32 + 160 < v32)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(!(MEM[MEM[32 + v2] + 32] - address(MEM[MEM[32 + v2] + 32])));
                                                    v32.word0 = MEM[MEM[32 + v2] + 32];
                                                    v33 = 0x1cef(MEM[32 + v2] + 64, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                                    v32.word1 = v33;
                                                    require(!(MEM[MEM[32 + v2] + 224] - address(MEM[MEM[32 + v2] + 224])));
                                                    v32.word2 = MEM[MEM[32 + v2] + 224];
                                                    v32.word3 = MEM[MEM[32 + v2] + (uint8.max + 1)];
                                                    require(!(MEM[MEM[32 + v2] + 288] - bool(MEM[MEM[32 + v2] + 288])));
                                                    v32.word4 = MEM[MEM[32 + v2] + 288];
                                                    v23 = address(v32.word0);
                                                    if (address(MEM[MEM[32 + v2] + 224])) {
                                                        v34, v35 = address(MEM[MEM[32 + v2] + 224]).balanceOf(this).gas(msg.gas);
                                                        if (!v34) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v35 = 0;
                                                            if (v34) {
                                                                v36 = 32;
                                                                if (v36 > RETURNDATASIZE()) {
                                                                    v36 = v37 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v36 - MEM[64] >= 32);
                                                            }
                                                            v19 = v38 = 0;
                                                            require((v35 * v32.word3 / v35 == v32.word3) | !v35, Panic(17)); // arithmetic overflow or underflow
                                                            MEM[0] = MEM[0];
                                                            _uniswapV3SwapCallback = 1;
                                                            v39 = new struct(9);
                                                            v39.word1 = address(MEM[v32.word1]);
                                                            v39.word2 = address(MEM[v32.word1 + 32]);
                                                            v39.word3 = uint24(MEM[v32.word1 + 64]);
                                                            v39.word4 = int24(MEM[v32.word1 + 96]);
                                                            v39.word5 = address(MEM[128 + v32.word1]);
                                                            v39.word6 = address(v32.word2);
                                                            v39.word7 = v35 * v32.word3 / 10 ** 6;
                                                            v39.word8 = address(MEM[v32.word1]) == address(v32.word2);
                                                            v39.word0 = uint8.max + 1;
                                                            require(!((v39 + 288 > uint64.max) | (v39 + 288 < v39)), Panic(65)); // failed memory allocation (too much memory)
                                                            v40 = 0;
                                                            if (bool(!v32.word4)) {
                                                                v41 = v39.word0.length;
                                                                v42 = v39.data;
                                                                v40 = v43 = keccak256(address(MEM[v32.word1]), address(MEM[v32.word1 + 32]), uint24(MEM[v32.word1 + 64]), int24(MEM[v32.word1 + 96]), address(MEM[128 + v32.word1]), address(v32.word2), v35 * v32.word3 / 10 ** 6, address(MEM[v32.word1]) == address(v32.word2));
                                                            }
                                                            tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v40;
                                                            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                            MEM[0] = MEM[0];
                                                            _onMorphoFlashLoan = address(v32.word0);
                                                            v29 = v44 = MEM[64];
                                                            MEM[v44] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                            MEM[v44 + 4] = 32;
                                                            MEM[v44 + 36] = v39.word0.length;
                                                            MCOPY(v44 + 36 + 32, v39.data, v39.word0.length);
                                                            MEM[32 + (v39.word0.length + (v44 + 36))] = 0;
                                                            v31 = v45 = uint8.max + 1 + (v44 + 36) + 32;
                                                        }
                                                    } else {
                                                        v46, v47 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                                        if (!v46) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v47 = 0;
                                                            if (v46) {
                                                                v48 = 32;
                                                                if (v48 > RETURNDATASIZE()) {
                                                                    v48 = v49 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v48 - MEM[64] >= 32);
                                                            }
                                                            v19 = 0;
                                                            require((v47 * v32.word3 / v47 == v32.word3) | !v47, Panic(17)); // arithmetic overflow or underflow
                                                            MEM[0] = MEM[0];
                                                            _uniswapV3SwapCallback = 1;
                                                            v50 = new struct(9);
                                                            v50.word1 = address(MEM[v32.word1]);
                                                            v50.word2 = address(MEM[v32.word1 + 32]);
                                                            v50.word3 = uint24(MEM[v32.word1 + 64]);
                                                            v50.word4 = int24(MEM[v32.word1 + 96]);
                                                            v50.word5 = address(MEM[128 + v32.word1]);
                                                            v50.word6 = address(v32.word2);
                                                            v50.word7 = v47 * v32.word3 / 10 ** 6;
                                                            v50.word8 = address(MEM[v32.word1]) == address(v32.word2);
                                                            v50.word0 = uint8.max + 1;
                                                            require(!((v50 + 288 > uint64.max) | (v50 + 288 < v50)), Panic(65)); // failed memory allocation (too much memory)
                                                            v51 = 0;
                                                            if (bool(!v32.word4)) {
                                                                v52 = v50.word0.length;
                                                                v53 = v50.data;
                                                                v51 = v54 = keccak256(address(MEM[v32.word1]), address(MEM[v32.word1 + 32]), uint24(MEM[v32.word1 + 64]), int24(MEM[v32.word1 + 96]), address(MEM[128 + v32.word1]), address(v32.word2), v47 * v32.word3 / 10 ** 6, address(MEM[v32.word1]) == address(v32.word2));
                                                            }
                                                            tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v51;
                                                            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                            MEM[0] = MEM[0];
                                                            _onMorphoFlashLoan = address(v32.word0);
                                                            v29 = MEM[64];
                                                            MEM[v29] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                            MEM[v29 + 4] = 32;
                                                            MEM[v29 + 36] = v50.word0.length;
                                                            MCOPY(v29 + 36 + 32, v50.data, v50.word0.length);
                                                            MEM[32 + (v50.word0.length + (v29 + 36))] = 0;
                                                            v31 = v55 = uint8.max + 1 + (v29 + 36) + 32;
                                                        }
                                                    }
                                                }
                                                v56 = v23.call(MEM[v20220x45cac:v20220x45cac + v1760V0x45e250x2022 - v20220x45cac], MEM[v20220x45cac:v20220x45cac + v20220x363c]).value(v19).gas(msg.gas);
                                                if (!v56) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v9 = v57 = 1;
                                                    if (v56) {
                                                        RETURNDATACOPY(v29, 0, RETURNDATASIZE());
                                                        require(!((v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = v29 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        v58 = 0x3c65(v29, v29 + RETURNDATASIZE());
                                                    }
                                                }
                                            } else {
                                                require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 64);
                                                v59 = 0x3b36(MEM[32 + v2] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                                v60, /* address */ v61 = address(v59.word0).token0().gas(msg.gas);
                                                if (!v60) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v61 = v62 = 0;
                                                    if (v60) {
                                                        v63 = 32;
                                                        if (v63 > RETURNDATASIZE()) {
                                                            v63 = v64 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v63 - MEM[64] >= 32);
                                                        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                                    }
                                                    v65, /* address */ v66 = address(v59.word0).token1().gas(msg.gas);
                                                    if (!v65) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v66 = v67 = 0;
                                                        if (v65) {
                                                            v68 = 32;
                                                            if (v68 > RETURNDATASIZE()) {
                                                                v68 = v69 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (v68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + v68 - MEM[64] >= 32);
                                                            require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                        }
                                                        if (address(v59.word1) - address(v61)) {
                                                            require(!(address(v66) - address(v59.word1)), Error('V3FPB'));
                                                            MEM[0] = MEM[0];
                                                            require((address(v61)).code.size);
                                                            v70 = v71 = MEM[64];
                                                            v72 = address(v61).transfer(msg.sender, tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                            if (!v72) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v9 = v73 = 1;
                                                                if (!v72) {
                                                                }
                                                            }
                                                        } else {
                                                            require((address(v66)).code.size);
                                                            v70 = v74 = MEM[64];
                                                            v75 = address(v66).transfer(msg.sender, tstor_fdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a).gas(msg.gas);
                                                            if (!v75) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v9 = v76 = 1;
                                                                if (!v75) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            v77 = 0x3b6c(MEM[v2 + 32] + 32, MEM[v2 + 32] + MEM[MEM[v2 + 32]] + 32);
                                            v78 = v79 = address(v77.word0);
                                            v80, /* address */ v81 = v79.token0().gas(msg.gas);
                                            if (!v80) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v81 = v82 = 0;
                                                if (v80) {
                                                    v83 = 32;
                                                    if (v83 > RETURNDATASIZE()) {
                                                        v83 = v84 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v83 - MEM[64] >= 32);
                                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                                }
                                                v85, /* address */ v86 = v79.token1().gas(msg.gas);
                                                if (!v85) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v86 = v87 = 0;
                                                    if (v85) {
                                                        v88 = 32;
                                                        if (v88 > RETURNDATASIZE()) {
                                                            v88 = v89 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v88 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v88 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v88 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v88 - MEM[64] >= 32);
                                                        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                    }
                                                    v90 = 0;
                                                    if (bool(!v77.word4)) {
                                                        v90 = v91 = keccak256(MEM[v20220x3140_0x0.word3 + 32:v20220x3140_0x0.word3 + 32 + MEM[v20220x3140_0x0.word3]]);
                                                    }
                                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v90;
                                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                    MEM[0] = MEM[0];
                                                    _onMorphoFlashLoan = address(v77.word0);
                                                    if (address(v77.word1) - address(v86)) {
                                                        require(!(address(v81) - address(v77.word1)), Error(0x56334653));
                                                        v92 = v93 = 64;
                                                        v94 = v95 = 0;
                                                        v96 = v97 = MEM[v93];
                                                        MEM[v97] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                        MEM[v97 + 4] = this;
                                                        MEM[v97 + 36] = v95;
                                                        MEM[v97 + 68] = v77.word2;
                                                        MEM[v97 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                        MEM[v97 + 132] = 160;
                                                        MEM[v97 + 164] = MEM[v77.word3];
                                                        MCOPY(v97 + 164 + 32, 32 + v77.word3, MEM[v77.word3]);
                                                        MEM[32 + (MEM[v77.word3] + (v97 + 164))] = 0;
                                                        v98 = v99 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77.word3]) + (v97 + 164) + 32;
                                                    } else {
                                                        v92 = v100 = 64;
                                                        v94 = v101 = 0;
                                                        v96 = v102 = MEM[v100];
                                                        MEM[v102] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                        MEM[v102 + 4] = this;
                                                        MEM[v102 + 36] = 1;
                                                        MEM[v102 + 68] = v77.word2;
                                                        MEM[v102 + 100] = 0x1000276a4;
                                                        MEM[v102 + 132] = 160;
                                                        MEM[v102 + 164] = MEM[v77.word3];
                                                        MCOPY(v102 + 164 + 32, 32 + v77.word3, MEM[v77.word3]);
                                                        MEM[32 + (MEM[v77.word3] + (v102 + 164))] = 0;
                                                        v98 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77.word3]) + (v102 + 164) + 32;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 128);
                                        v103 = new struct(4);
                                        require(!((v103 + 128 > uint64.max) | (v103 + 128 < v103)), Panic(65)); // failed memory allocation (too much memory)
                                        require(!(MEM[MEM[32 + v2] + 32] - address(MEM[MEM[32 + v2] + 32])));
                                        v103.word0 = MEM[MEM[32 + v2] + 32];
                                        require(!(MEM[MEM[32 + v2] + 64] - address(MEM[MEM[32 + v2] + 64])));
                                        v103.word1 = MEM[MEM[32 + v2] + 64];
                                        v103.word2 = MEM[MEM[32 + v2] + 96];
                                        require(!(MEM[MEM[32 + v2] + 128] - bool(MEM[MEM[32 + v2] + 128])));
                                        v103.word3 = MEM[MEM[32 + v2] + 128];
                                        v78 = address(MEM[MEM[32 + v2] + 32]);
                                        v104, /* address */ v105 = v78.token0().gas(msg.gas);
                                        if (!v104) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v105 = v106 = 0;
                                            if (v104) {
                                                v107 = 32;
                                                if (v107 > RETURNDATASIZE()) {
                                                    v107 = v108 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (v107 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + v107 - MEM[64] >= 32);
                                                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                            }
                                            v109, /* address */ v110 = v78.token1().gas(msg.gas);
                                            if (!v109) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v110 = v111 = 0;
                                                if (v109) {
                                                    v112 = 32;
                                                    if (v112 > RETURNDATASIZE()) {
                                                        v112 = v113 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v112 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v112 - MEM[64] >= 32);
                                                    require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                }
                                                if (address(v103.word1) - address(v105)) {
                                                    require(!(address(v110) - address(v103.word1)), Error(0x563354));
                                                    v114 = v115 = 0;
                                                } else {
                                                    v114 = 1;
                                                }
                                                v116, v117 = address(v103.word1).balanceOf(this).gas(msg.gas);
                                                if (!v116) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v117 = 0;
                                                    if (v116) {
                                                        v118 = 32;
                                                        if (v118 > RETURNDATASIZE()) {
                                                            v118 = v119 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v118 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v118 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        require(MEM[64] + v118 - MEM[64] >= 32);
                                                    }
                                                    v94 = 0;
                                                    v92 = 64;
                                                    v120 = _SafeMul(v117, v103.word2);
                                                    MEM[0] = MEM[0];
                                                    _uniswapV3SwapCallback = 1;
                                                    require(!((MEM[v92] + 32 > uint64.max) | (MEM[v92] + 32 < MEM[v92])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[MEM[v92]] = v94;
                                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v94;
                                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                    MEM[0] = MEM[0];
                                                    _onMorphoFlashLoan = address(v103.word0);
                                                    if (v94 == v114) {
                                                        v121 = v122 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                    } else {
                                                        v121 = 0x1000276a4;
                                                    }
                                                    if (v94 == v114) {
                                                        v123 = v124 = new struct(3);
                                                        v125 = v124.data;
                                                        v124.word1 = v94;
                                                        v124.word2 = address(v110);
                                                        v124.word0 = v92;
                                                        require(!((v124 + 96 > uint64.max) | (v124 + 96 < v124)), Panic(65)); // failed memory allocation (too much memory)
                                                    } else {
                                                        v123 = new struct(3);
                                                        v126 = v123.data;
                                                        v123.word1 = bool(v114);
                                                        v123.word2 = address(v105);
                                                        v123.word0 = v92;
                                                        require(!((v123 + 96 > uint64.max) | (v123 + 96 < v123)), Panic(65)); // failed memory allocation (too much memory)
                                                    }
                                                    v96 = MEM[v92];
                                                    MEM[v96] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                    MEM[v96 + 4] = this;
                                                    MEM[v96 + 36] = bool(v114);
                                                    MEM[v96 + 68] = v120 / 10 ** 6;
                                                    MEM[v96 + 100] = address(v121);
                                                    MEM[v96 + 132] = 160;
                                                    MEM[v96 + 164] = MEM[v123];
                                                    MCOPY(v96 + 164 + 32, 32 + v123, MEM[v123]);
                                                    MEM[32 + (MEM[v123] + (v96 + 164))] = 0;
                                                    v98 = v127 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v123]) + (v96 + 164) + 32;
                                                }
                                            }
                                        }
                                    }
                                    v128 = v78.call(MEM[v20220x2f64:v20220x2f64 + v1760V0x31d40x2022 - v20220x2f64], MEM[v20220x2f64:v20220x2f64 + v20220x2ec3]).value(v94).gas(msg.gas);
                                    if (!v128) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v9 = v129 = 1;
                                        if (v128) {
                                            v130 = 64;
                                            if (v130 > RETURNDATASIZE()) {
                                                v130 = v131 = RETURNDATASIZE();
                                            }
                                            require(!((v96 + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v96 + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v96)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v96 + (v130 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(v96 + v130 - v96 >= 64);
                                        }
                                    }
                                } else {
                                    require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 32);
                                    require(MEM[MEM[32 + v2] + 32] <= uint64.max);
                                    v132 = MEM[32 + v2] + MEM[MEM[32 + v2] + 32];
                                    require(MEM[32 + v2] + MEM[MEM[32 + v2]] - v132 >= 160);
                                    v133 = new struct(5);
                                    require(!((v133 + 160 > uint64.max) | (v133 + 160 < v133)), Panic(65)); // failed memory allocation (too much memory)
                                    require(!(MEM[v132 + 32] - address(MEM[v132 + 32])));
                                    v133.word0 = MEM[v132 + 32];
                                    require(!(MEM[v132 + 64] - address(MEM[v132 + 64])));
                                    v133.word1 = MEM[v132 + 64];
                                    v133.word2 = MEM[v132 + 96];
                                    require(!(MEM[v132 + 128] - bool(MEM[v132 + 128])));
                                    v133.word3 = MEM[v132 + 128];
                                    require(MEM[v132 + 160] <= uint64.max);
                                    v134 = 0x1d6e(v132 + MEM[v132 + 160] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                                    v133.word4 = v134;
                                    v0 = v135 = address(v133.word0);
                                    v136 = 0;
                                    if (bool(!v133.word3)) {
                                        v137 = v134.length;
                                        v138 = v134.data;
                                        v136 = v139 = keccak256(v134);
                                    }
                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v136;
                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                    MEM[0] = MEM[0];
                                    _onMorphoFlashLoan = v135;
                                    require(v135.code.size);
                                    v140 = v141 = 0;
                                    v70 = v142 = MEM[64];
                                    MEM[v142] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                                    MEM[v142 + 4] = address(v133.word1);
                                    MEM[v142 + 36] = v133.word2;
                                    MEM[v142 + 68] = 96;
                                    MEM[v142 + 100] = v134.length;
                                    MCOPY(v142 + 100 + 32, v134.data, v134.length);
                                    MEM[32 + (v134.length + (v142 + 100))] = 0;
                                    v143 = v144 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v134.length) + (v142 + 100) + 32;
                                }
                            } else {
                                require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 160);
                                v145 = new struct(5);
                                require(!((v145 + 160 > uint64.max) | (v145 + 160 < v145)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(MEM[MEM[32 + v2] + 32] - address(MEM[MEM[32 + v2] + 32])));
                                v145.word0 = MEM[MEM[32 + v2] + 32];
                                v145.word1 = MEM[MEM[32 + v2] + 64];
                                require(!(MEM[MEM[32 + v2] + 96] - address(MEM[MEM[32 + v2] + 96])));
                                v145.word2 = MEM[MEM[32 + v2] + 96];
                                require(!(MEM[MEM[32 + v2] + 128] - uint128(MEM[MEM[32 + v2] + 128])));
                                v145.word3 = MEM[MEM[32 + v2] + 128];
                                require(!(MEM[MEM[32 + v2] + 160] - uint128(MEM[MEM[32 + v2] + 160])));
                                v145.word4 = MEM[MEM[32 + v2] + 160];
                                v146, v147 = address(MEM[MEM[32 + v2] + 96]).balanceOf(this).gas(msg.gas);
                                if (!v146) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v147 = 0;
                                    if (v146) {
                                        v148 = 32;
                                        if (v148 > RETURNDATASIZE()) {
                                            v148 = v149 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v148 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v148 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v148 - MEM[64] >= 32);
                                    }
                                    v150 = _SafeMul(v147, v145.word1);
                                    require((address(v145.word2)).code.size);
                                    v151 = address(v145.word2).approve(address(MEM[MEM[32 + v2] + 32]), v150 / 10 ** 6).gas(msg.gas);
                                    if (!v151) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v151) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        }
                                        v6 = MEM[64];
                                        v152 = address(MEM[MEM[32 + v2] + 32]).setMetaGold(uint128(v145.word3), uint128(v145.word4), v150 / 10 ** 6, 0).gas(msg.gas);
                                        if (!v152) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v9 = v153 = 1;
                                            if (!v152) {
                                            }
                                        }
                                    }
                                }
                            }
                            if (32 > RETURNDATASIZE()) {
                                require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v154 = v6 + RETURNDATASIZE();
                            } else {
                                require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v6 + 32;
                                v154 = v155 = v6 + 32;
                            }
                            require(v154 - v6 >= 32);
                        } else {
                            require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 160);
                            v156 = v157 = 0x3c11(MEM[32 + v2] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                            v0 = v158 = address(v157.word0);
                            v159, /* address */ v160 = v158.token0().gas(msg.gas);
                            if (!v159) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v160 = v161 = 0;
                                if (v159) {
                                    v162 = 32;
                                    if (v162 > RETURNDATASIZE()) {
                                        v162 = v163 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v162 - MEM[64] >= 32);
                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                }
                                v164, /* address */ v165 = v158.token1().gas(msg.gas);
                                if (!v164) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v165 = v166 = 0;
                                    if (v164) {
                                        v167 = 32;
                                        if (v167 > RETURNDATASIZE()) {
                                            v167 = v168 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v167 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v167 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v167 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v167 - MEM[64] >= 32);
                                        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                    }
                                    v0 = v169 = address(v160);
                                    if (address(v157.word1) - v169) {
                                        require(!(address(v165) - address(v157.word1)), Error('V2FTP'));
                                        v170 = v171 = 1;
                                    } else {
                                        v170 = v172 = 0;
                                    }
                                    v173 = v174 = MEM[64];
                                    v175 = v158.getReserves().gas(msg.gas);
                                    if (!v175) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v176 = v177 = 0;
                                        v176 = v178 = 0;
                                        if (v175) {
                                            v179 = v180 = 10725;
                                            if (96 <= RETURNDATASIZE()) {
                                                require(!((v174 + 96 > uint64.max) | (v174 + 96 < v174)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v174 + 96;
                                                v181 = v182 = v174 + 96;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        v183 = 0x3b6c(MEM[v2 + 32] + 32, MEM[v2 + 32] + MEM[MEM[v2 + 32]] + 32);
                        v0 = v184 = address(v183.word0);
                        v185 = 0;
                        if (bool(!v183.word4)) {
                            v185 = v186 = keccak256(MEM[v20220x2671_0x0.word3 + 32:v20220x2671_0x0.word3 + 32 + MEM[v20220x2671_0x0.word3]]);
                        }
                        tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v185;
                        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                        MEM[0] = MEM[0];
                        _onMorphoFlashLoan = v184;
                        v187, /* address */ v188 = v184.token0().gas(msg.gas);
                        if (!v187) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v188 = v189 = 0;
                            if (v187) {
                                v190 = 32;
                                if (v190 > RETURNDATASIZE()) {
                                    v190 = v191 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v190 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v190 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v190 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v190 - MEM[64] >= 32);
                                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                            }
                            v192, /* address */ v193 = v184.token1().gas(msg.gas);
                            if (!v192) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v193 = v194 = 0;
                                if (v192) {
                                    v195 = 32;
                                    if (v195 > RETURNDATASIZE()) {
                                        v195 = v196 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v195 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v195 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v195 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v195 - MEM[64] >= 32);
                                    require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                }
                                if (address(v183.word1) - address(v188)) {
                                    require(!(address(v193) - address(v183.word1)), Error(0x56324654));
                                    require(v184.code.size);
                                    v140 = v197 = 0;
                                    v70 = v198 = MEM[64];
                                    MEM[v198] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                    MEM[v198 + 4] = 0;
                                    MEM[v198 + 4 + 32] = v183.word2;
                                    MEM[v198 + 4 + 64] = address(this);
                                    MEM[v198 + 4 + 96] = 128;
                                    MEM[v198 + 4 + 128] = MEM[v183.word3];
                                    MCOPY(v198 + 4 + 128 + 32, 32 + v183.word3, MEM[v183.word3]);
                                    MEM[32 + (MEM[v183.word3] + (v198 + 4 + 128))] = 0;
                                    v143 = v199 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v183.word3]) + (v198 + 4 + 128) + 32;
                                } else {
                                    require(v184.code.size);
                                    v140 = v200 = 0;
                                    v70 = v201 = MEM[64];
                                    MEM[v201] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                    MEM[v201 + 4] = v183.word2;
                                    MEM[v201 + 4 + 32] = 0;
                                    MEM[v201 + 4 + 64] = address(this);
                                    MEM[v201 + 4 + 96] = 128;
                                    MEM[v201 + 4 + 128] = MEM[v183.word3];
                                    MCOPY(v201 + 4 + 128 + 32, 32 + v183.word3, MEM[v183.word3]);
                                    MEM[32 + (MEM[v183.word3] + (v201 + 4 + 128))] = 0;
                                    v143 = v202 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v183.word3]) + (v201 + 4 + 128) + 32;
                                }
                            }
                        }
                    }
                } else {
                    require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 160);
                    v156 = v203 = 0x3c11(MEM[32 + v2] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
                    v0 = v204 = address(v203.word0);
                    v205, /* address */ v206 = v204.token0().gas(msg.gas);
                    if (!v205) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v206 = v207 = 0;
                        if (v205) {
                            v208 = 32;
                            if (v208 > RETURNDATASIZE()) {
                                v208 = v209 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v208 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        v210, /* address */ v211 = v204.token1().gas(msg.gas);
                        if (!v210) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v211 = v212 = 0;
                            if (v210) {
                                v213 = 32;
                                if (v213 > RETURNDATASIZE()) {
                                    v213 = v214 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v213 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v213 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v213 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v213 - MEM[64] >= 32);
                                require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                            }
                            v170 = v203 + 32;
                            if (address(v203.word1) - address(v206)) {
                                require(!(address(v211) - address(v203.word1)), Error(0x563254));
                                v165 = v215 = 0;
                            } else {
                                v165 = v216 = 1;
                            }
                            v173 = MEM[64];
                            v217 = v204.getReserves().gas(msg.gas);
                            if (!v217) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v176 = v218 = 0;
                                v176 = v219 = 0;
                                if (v217) {
                                    v179 = v220 = 9613;
                                    v221 = 96;
                                    if (v221 > RETURNDATASIZE()) {
                                        // Unknown jump to Block 0x25950x2022. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                        }
                    }
                }
                if (v165) {
                }
                v222, v223 = address(MEM[v170]).balanceOf(this).gas(msg.gas);
                if (!v222) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v223 = 0;
                    if (v222) {
                        v224 = 32;
                        if (v224 > RETURNDATASIZE()) {
                            v224 = v225 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v224 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v224 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v224 - MEM[64] >= 32);
                    }
                    v226 = _SafeMul(v223, MEM[v156 + 64]);
                    v227 = 0x3d8e(v226 / 10 ** 6, MEM[v156 + 96]);
                    v228 = 0x3d8e(v227, uint112(v176));
                    v229 = 0x3d8e(uint112(v176), MEM[v156 + 128]);
                    require(v229 <= v229 + v227, Panic(17)); // arithmetic overflow or underflow
                    require(v229 + v227 >= v229, Error('ds-math-add-overflow'));
                    v230 = _SafeDiv(v228, v229 + v227);
                    require((address(MEM[v170])).code.size);
                    v231 = address(MEM[v170]).transfer(address(v0), v226 / 10 ** 6).gas(msg.gas);
                    if (!v231) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v231) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        if (!v165) {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v0.code.size);
                            v140 = v232 = 0;
                            v70 = v233 = MEM[64];
                            MEM[v233] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v233 + 4] = v230;
                            MEM[v233 + 4 + 32] = 0;
                            MEM[v233 + 4 + 64] = address(this);
                            MEM[v233 + 4 + 96] = 128;
                            MEM[v233 + 4 + 128] = 0;
                            MCOPY(v233 + 4 + 128 + 32, 32 + MEM[64], 0);
                            MEM[32 + (v233 + 4 + 128)] = 0;
                            v143 = v234 = v233 + 4 + 128 + 32;
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v0.code.size);
                            v140 = v235 = 0;
                            v70 = v236 = MEM[64];
                            MEM[v236] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v236 + 4] = 0;
                            MEM[v236 + 4 + 32] = v230;
                            MEM[v236 + 4 + 64] = address(this);
                            MEM[v236 + 4 + 96] = 128;
                            MEM[v236 + 4 + 128] = 0;
                            MCOPY(v236 + 4 + 128 + 32, 32 + MEM[64], 0);
                            MEM[32 + (v236 + 4 + 128)] = 0;
                            v143 = v236 + 4 + 128 + 32;
                        }
                    }
                }
                require(!((v173 + (v221 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v173 + (v221 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v173)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v173 + (v221 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v181 = v173 + v221;
                require(v181 - v173 >= 96);
                v176 = v237 = MEM[v173];
                require(!(v237 - uint112(v237)));
                v176 = MEM[v173 + 32];
                require(!(v176 - uint112(v176)));
                require(!(MEM[v173 + 64] - uint32(MEM[v173 + 64])));
                // Unknown jump to Block ['0x258d0x2022', '0x29e50x2022']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x28d00x2022. Refer to 3-address code (TAC);
                v221 = v238 = RETURNDATASIZE();
                // Unknown jump to Block 0x257b0x2022. Refer to 3-address code (TAC);
                if (v170) {
                }
                v239 = 0x3d8e(uint112(v176), MEM[v156 + 64]);
                v240 = 0x3d8e(v239, MEM[v156 + 128]);
                require(uint112(v176) - MEM[v156 + 64] <= uint112(v176), Panic(17)); // arithmetic overflow or underflow
                v241 = 0x3d8e(uint112(v176) - MEM[v156 + 64], MEM[v156 + 96]);
                v242 = _SafeDiv(v240, v241);
                require(v242 <= v242 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v242 + 1 >= v242, Error('ds-math-add-overflow'));
                if (!v170) {
                    v0 = v243 = address(v165);
                    require(v243.code.size);
                    v70 = v244 = MEM[64];
                    MEM[v244] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v244 + 4] = address(v0);
                    MEM[v244 + 36] = v242 + 1;
                    v140 = v245 = 0;
                    v143 = v246 = v244 + 68;
                } else {
                    require(v0.code.size);
                    v70 = v247 = MEM[64];
                    MEM[v247] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v247 + 4] = address(v0);
                    MEM[v247 + 36] = v242 + 1;
                    v140 = v248 = 0;
                    v143 = v249 = v247 + 68;
                }
            } else {
                require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 96);
                v250 = new struct(3);
                require(!((v250 + 96 > uint64.max) | (v250 + 96 < v250)), Panic(65)); // failed memory allocation (too much memory)
                require(!(MEM[MEM[32 + v2] + 32] - address(MEM[MEM[32 + v2] + 32])));
                v250.word0 = MEM[MEM[32 + v2] + 32];
                require(!(MEM[MEM[32 + v2] + 64] - address(MEM[MEM[32 + v2] + 64])));
                v250.word1 = MEM[MEM[32 + v2] + 64];
                v250.word2 = MEM[MEM[32 + v2] + 96];
                v251, v252 = address(MEM[MEM[32 + v2] + 32]).balanceOf(this).gas(msg.gas);
                if (!v251) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v252 = 0;
                    if (v251) {
                        v253 = 32;
                        if (v253 > RETURNDATASIZE()) {
                            v253 = v254 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v253 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v253 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v253 - MEM[64] >= 32);
                    }
                    v255 = _SafeMul(v252, v250.word2);
                    v0 = v256 = address(v250.word0);
                    require(v256.code.size);
                    v70 = MEM[64];
                    MEM[v70] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v70 + 4] = address(v250.word1);
                    MEM[v70 + 36] = v255 / 10 ** 6;
                    v140 = 0;
                    v143 = v257 = v70 + 68;
                }
            }
            v258 = v0.call(MEM[v20220x2212:v20220x2212 + v1760V0x3ceaV0x247e0x2022 - v20220x2212], MEM[v20220x2212:v20220x2212 + v20220x2233]).value(v140).gas(msg.gas);
            if (!v258) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v9 = v259 = 1;
                if (v258) {
                    // Unknown jump to Block 0x22570x2022. Refer to 3-address code (TAC);
                }
            }
            require(!((v70 > uint64.max) | (v70 < v70)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v70;
        } else {
            require(MEM[32 + v2] + MEM[MEM[32 + v2]] - MEM[32 + v2] >= 32);
            require(MEM[MEM[32 + v2] + 32] <= uint64.max);
            v260 = MEM[32 + v2] + MEM[MEM[32 + v2] + 32];
            require(MEM[32 + v2] + MEM[MEM[32 + v2]] - v260 >= 96);
            v261 = new struct(3);
            require(!((v261 + 96 > uint64.max) | (v261 + 96 < v261)), Panic(65)); // failed memory allocation (too much memory)
            require(!(MEM[v260 + 32] - address(MEM[v260 + 32])));
            v261.word0 = MEM[v260 + 32];
            v261.word1 = MEM[v260 + 64];
            require(MEM[v260 + 96] <= uint64.max);
            v262 = 0x1d6e(v260 + MEM[v260 + 96] + 32, MEM[32 + v2] + MEM[MEM[32 + v2]] + 32);
            v261.word2 = v262;
            if (0 == !v261.word1) {
                v263 = v264 = address(v261.word0).call(MEM[v20220x20c0_0x0.data:v20220x20c0_0x0.data + v20220x20c0_0x0.length], MEM[0:0]).value(v261.word1).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v265 = v266 = new bytes[](RETURNDATASIZE());
                    require(!((v266 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v266 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v266)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v266.data, 0, RETURNDATASIZE());
                }
            } else {
                v263 = address(v261.word0).call(MEM[v20220x20d7.data:v20220x20d7.data + v20220x20d7.length], MEM[0:0]).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v267 = v268 = new bytes[](RETURNDATASIZE());
                    require(!((v268 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v268 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v268)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v268.data, 0, RETURNDATASIZE());
                }
            }
            require(v263, Error('DPTCH'));
            v9 = 1;
        }
        v0 = v0 + v9;
    }
    return ;
}

function 0xc5ae1568(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 192);
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(varg0.length - address(varg0.length)));
    v0.word0 = varg0.length;
    v0.word1 = msg.data[varg0.data];
    v0.word2 = msg.data[varg0 + 68];
    require(!(msg.data[varg0 + 100] - bool(msg.data[varg0 + 100])));
    v0.word3 = msg.data[varg0 + 100];
    require(msg.data[varg0 + 132] <= uint64.max);
    require(varg0 + msg.data[varg0 + 132] + 4 + 31 < msg.data.length);
    require(msg.data[varg0 + msg.data[varg0 + 132] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](msg.data[varg0 + msg.data[varg0 + 132] + 4]);
    require(!((v1 + (32 + (msg.data[varg0 + msg.data[varg0 + 132] + 4] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (msg.data[varg0 + msg.data[varg0 + 132] + 4] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + msg.data[varg0 + 132] + 4 + (msg.data[varg0 + msg.data[varg0 + 132] + 4] << 5) + 32 <= msg.data.length);
    v4 = v5 = 32 + (varg0 + msg.data[varg0 + 132] + 4);
    while (v4 < varg0 + msg.data[varg0 + 132] + 4 + (msg.data[varg0 + msg.data[varg0 + 132] + 4] << 5) + 32) {
        require(!(msg.data[v4] - address(msg.data[v4])));
        MEM[v2] = msg.data[v4];
        v2 = v2 + 32;
        v4 = v4 + 32;
    }
    v0.word4 = v1;
    require(msg.data[varg0 + 164] <= uint64.max);
    require(varg0 + msg.data[varg0 + 164] + 35 < msg.data.length);
    require(msg.data[varg0 + msg.data[varg0 + 164] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](msg.data[varg0 + msg.data[varg0 + 164] + 4]);
    require(!((v6 + (32 + (msg.data[varg0 + msg.data[varg0 + 164] + 4] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (msg.data[varg0 + msg.data[varg0 + 164] + 4] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    v7 = v8 = v6.data;
    require(varg0 + msg.data[varg0 + 164] + (msg.data[varg0 + msg.data[varg0 + 164] + 4] << 5) + 4 + 32 <= msg.data.length);
    v9 = v10 = varg0 + msg.data[varg0 + 164] + 36;
    while (v9 < varg0 + msg.data[varg0 + 164] + (msg.data[varg0 + msg.data[varg0 + 164] + 4] << 5) + 4 + 32) {
        require(msg.data[v9] <= uint64.max);
        require(msg.data.length - (varg0 + msg.data[varg0 + 164] + msg.data[v9] + 4) - 32 >= 64);
        v11 = new struct(2);
        require(!((v11 + 64 > uint64.max) | (v11 + 64 < v11)), Panic(65)); // failed memory allocation (too much memory)
        v11.word0 = msg.data[varg0 + msg.data[varg0 + 164] + msg.data[v9] + 4 + 32];
        require(msg.data[varg0 + msg.data[varg0 + 164] + msg.data[v9] + 4 + 64] <= uint64.max);
        v12 = varg0 + msg.data[varg0 + 164] + msg.data[v9] + 4 + msg.data[varg0 + msg.data[varg0 + 164] + msg.data[v9] + 4 + 64] + 32;
        require(v12 + 31 < msg.data.length);
        require(msg.data[v12] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v13 = new bytes[](msg.data[v12]);
        require(!((v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v12]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
        require(v12 + 32 + msg.data[v12] <= msg.data.length);
        CALLDATACOPY(v13.data, v12 + 32, msg.data[v12]);
        v13[msg.data[v12]] = 0;
        v11.word1 = v13;
        MEM[v7] = v11;
        v7 = v7 + 32;
        v9 = v9 + 32;
    }
    v0.word5 = v6;
    v14 = v15 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == msg.sender;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != msg.sender) {
        v14 = v16 = _removeOwner[msg.sender];
    }
    require(v14, Error(20311));
    if (this.balance) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v17, /* uint256 */ v18 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
        require(v17, v18, RETURNDATASIZE());
        if (v17) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    }
    v19 = v0.word5;
    0x2022(v0.word5);
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
        v20, /* uint256 */ v21 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
        require(v20, MEM[64], RETURNDATASIZE());
        if (v20) {
            v22 = v23 = 32;
            if (32 > RETURNDATASIZE()) {
                v22 = v24 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v22 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v22 - MEM[64] >= 32);
        }
        if (v21) {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v25, /* uint256 */ v26 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v21).gas(msg.gas);
            require(v25, v26, RETURNDATASIZE());
            if (v25) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
        }
        v27 = v28 = block.coinbase;
        v27 = v29 = address(v0.word0);
        if (!v29) {
        }
        if (v0.word2) {
            v30, /* uint256 */ v31 = address(v27).call().value(v0.word2).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v32 = v33 = new bytes[](RETURNDATASIZE());
                require(!((v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v33 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v33)), Panic(65)); // failed memory allocation (too much memory)
                v31 = v33.data;
                RETURNDATACOPY(v31, 0, RETURNDATASIZE());
            }
            require(v30, Error(0x434f50));
        }
        if (v0.word1) {
            v34 = _SafeMul(this.balance, v0.word1);
            v35, /* uint256 */ v36 = address(v27).call().value(v34 / 10 ** 6).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v37 = v38 = new bytes[](RETURNDATASIZE());
                require(!((v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
                v36 = v38.data;
                RETURNDATACOPY(v36, 0, RETURNDATASIZE());
            }
            require(v35, Error(17231));
        }
    }
    if (v0.word3) {
        if (this.balance) {
            v39, /* uint256 */ v40 = tx.origin.call().value(this.balance).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v41 = v42 = new bytes[](RETURNDATASIZE());
                require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
                v40 = v42.data;
                RETURNDATACOPY(v40, 0, RETURNDATASIZE());
            }
            require(v39, Error(0x434c54));
        }
    }
    v43 = v0.word4;
    if (v43.length) {
        0x1b95(v0.word4);
        return ;
    } else {
        return ;
    }
}

function 0x3b36(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[varg0] - address(MEM[varg0])));
    v0.word0 = MEM[varg0];
    require(!(MEM[varg0 + 32] - address(MEM[varg0 + 32])));
    v0.word1 = MEM[varg0 + 32];
    return v0;
}

function 0x3b6c(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 - v0 >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[v0] - address(MEM[v0])));
    v1.word0 = MEM[v0];
    require(!(MEM[v0 + 32] - address(MEM[v0 + 32])));
    v1.word1 = MEM[v0 + 32];
    v1.word2 = MEM[v0 + 64];
    require(MEM[v0 + 96] <= uint64.max);
    v2 = 0x1d6e(v0 + MEM[v0 + 96], varg1);
    v1.word3 = v2;
    require(!(MEM[v0 + 128] - bool(MEM[v0 + 128])));
    v1.word4 = MEM[v0 + 128];
    return v1;
}

function 0x3c11(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 160);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[varg0] - address(MEM[varg0])));
    v0.word0 = MEM[varg0];
    require(!(MEM[varg0 + 32] - address(MEM[varg0 + 32])));
    v0.word1 = MEM[varg0 + 32];
    v0.word2 = MEM[varg0 + 64];
    v0.word3 = MEM[varg0 + 96];
    v0.word4 = MEM[varg0 + 128];
    return v0;
}

function 0x3c65(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = 0x1d6e(varg0 + MEM[varg0], varg1);
    return v0;
}

function 0x3d8e(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg1;
    if (bool(varg1)) {
        v0 = v4 = _SafeMul(varg0, varg1);
        v5 = _SafeDiv(v4, varg1);
        v2 = v6 = v5 == varg0;
    }
    require(v2, Error('ds-math-mul-overflow'));
    return v0;
}

function uniswapV2Call(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function DPPFlashLoanCall(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function pancakeCall(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function pancakeV3FlashCallback(uint256 fee0, uint256 fee1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function DSPFlashLoanCall(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function uniswapV3FlashCallback(uint256 fee0, uint256 fee1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function DVMFlashLoanCall(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1.data + varg1.length <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    v1 = v2 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
    if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
        v1 = v3 = _removeOwner[tx.origin];
    }
    require(v1, Error(20306));
    require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
    require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
    MEM[0] = MEM[0];
    if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
        v4 = v0.length;
        v5 = v0.data;
        require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
    }
    v6 = 0x1e84(v0.data, v0 + v0.length + 32);
    0x2022(v6);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = 96;
    require(msg.data[4 + rawData] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[4 + rawData]);
    require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + msg.data[4 + rawData] <= msg.data.length);
    CALLDATACOPY(v3.data, 4 + rawData + 32, msg.data[4 + rawData]);
    v3[msg.data[4 + rawData]] = 0;
    if (!_uniswapV3SwapCallback) {
        MEM[0] = MEM[0];
        v4 = v5 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            v4 = v6 = _removeOwner[tx.origin];
        }
        require(v4, Error(20306));
        require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
        require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v7 = v3.length;
            v8 = v3.data;
            require(!(keccak256(v3) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        require(v3 + v3.length - v3 >= uint8.max + 1);
        v9 = 0x1cef(v3.data, v3 + v3.length + 32);
        require(!(MEM[v3 + 192] - address(MEM[v3 + 192])));
        require(MEM[v3 + (uint8.max + 1)] <= uint64.max);
        v10 = 0x1d6e(32 + (MEM[v3 + (uint8.max + 1)] + v3), v3 + v3.length + 32);
        v11 = 0x1db4(MEM[v3 + 224]);
        if (address(MEM[v3 + 192]) == address(v9.word0)) {
            v12 = v13 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v12 = v14 = 0x1000276a4;
        }
        v15 = new struct(3);
        require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
        v15.word0 = address(MEM[v3 + 192]) != address(v9.word0);
        v15.word1 = v11;
        v15.word2 = address(v12);
        v16 = v17 = 32;
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v18 = new uint256[](0);
        MCOPY(v18.data, 32 + MEM[64], 0);
        MEM[v18.data] = 0;
        v19, v20 = address(_onMorphoFlashLoan).swap(address(v9.word0), address(v9.word1), uint24(v9.word2), int24(v9.word3), address(v9.word4), bool(v15.word0), v15.word1, address(v15.word2), v18).gas(msg.gas);
        if (!v19) {
            v21 = RETURNDATASIZE();
            revert(v22, v22, v22, v22, v22, v22, v22, v22, v22, 0, 0);
        } else {
            v20 = v23 = 0;
            if (v19) {
                if (v17 > RETURNDATASIZE()) {
                    v16 = v24 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v16 - MEM[64] >= v17);
            }
            if (address(MEM[v3 + 192]) == address(v9.word0)) {
                v25 = v26 = v20 >> 128;
            } else {
                v25 = v27 = int128(v20);
            }
            require((address(_onMorphoFlashLoan)).code.size);
            v28, /* uint256 */ v29 = address(_onMorphoFlashLoan).take(address(MEM[v3 + 192]), this, uint128(v25)).gas(msg.gas);
            require(v28, v29, RETURNDATASIZE());
            if (v28) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                v1 = v30 = 0;
            }
            if (!address(MEM[v3 + 192])) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v1, v1);
                v31, /* uint256 */ v32 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(uint128(v25)).gas(msg.gas);
                require(v31, v32, RETURNDATASIZE());
                if (v31) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v1, v1, v1);
                }
            }
            v1 = v33 = 4130;
            v1 = v34 = 0x458b9;
            if (0 == (address(MEM[v3 + 192]) != address(v9.word0))) {
                v35 = v36 = 0x1e64(int128(v20));
            } else {
                v35 = v37 = 0x1e64(v20 >> 128);
            }
            MEM[0] = MEM[0];
            tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31 = uint128(v35);
            require(v10 + v10.length + v17 - v10.data >= 32);
            require(MEM[v10.data] <= uint64.max);
            require(v10.data + MEM[v10.data] + 31 < v10 + v10.length + v17);
            require(v10[MEM[v10.data]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v1 = v38 = new uint256[](v10[MEM[v10.data]]);
            require(!((v38 + (32 + (v10[MEM[v10.data]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (32 + (v10[MEM[v10.data]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
            v39 = v38.data;
            require(v10.data + MEM[v10.data] + (v10[MEM[v10.data]] << 5) + 32 <= v10 + v10.length + v17);
            v40 = v10.data + MEM[v10.data] + 32;
            while (v40 < v10.data + MEM[v10.data] + (v10[MEM[v10.data]] << 5) + 32) {
                require(MEM[v40] <= uint64.max);
                require(v10 + v10.length + v17 - (v10.data + MEM[v10.data] + MEM[v40]) - 32 >= 64);
                v41 = new struct(2);
                require(!((v41 + 64 > uint64.max) | (v41 + 64 < v41)), Panic(65)); // failed memory allocation (too much memory)
                v41.word0 = MEM[v10.data + MEM[v10.data] + MEM[v40] + 32];
                require(MEM[v10.data + MEM[v10.data] + MEM[v40] + 64] <= uint64.max);
                v42 = 0x1d6e(v10.data + MEM[v10.data] + MEM[v40] + MEM[v10.data + MEM[v10.data] + MEM[v40] + 64] + 32, v10 + v10.length + v17);
                v41.word1 = v42;
                MEM[v39] = v41;
                v39 = v39 + 32;
                v40 = v40 + 32;
            }
            v1 = v43 = 0;
        }
    } else {
        v44 = v45 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            v44 = v46 = _removeOwner[tx.origin];
        }
        require(v44, Error(20306));
        require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
        require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        require(msg.data[4 + rawData] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v47 = new bytes[](msg.data[4 + rawData]);
        require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[4 + rawData]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
        require(4 + rawData + 32 + msg.data[4 + rawData] <= msg.data.length);
        CALLDATACOPY(v47.data, 4 + rawData + 32, msg.data[4 + rawData]);
        v47[msg.data[4 + rawData]] = 0;
        MEM[0] = MEM[0];
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v48 = v47.length;
            v49 = v47.data;
            require(!(keccak256(v47) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= uint8.max + 1);
        require(160 <= 4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32));
        v1 = v50 = new struct(5);
        require(!((v50 + 160 > uint64.max) | (v50 + 160 < v50)), Panic(65)); // failed memory allocation (too much memory)
        require(!(rawData.word1 - address(rawData.word1)));
        v50.word0 = rawData.word1;
        require(!(rawData.word2 - address(rawData.word2)));
        v51 = v52 = v50 + 32;
        v50.word1 = rawData.word2;
        require(!(rawData.word3 - uint24(rawData.word3)));
        v50.word2 = rawData.word3;
        require(!(rawData.word4 - int24(rawData.word4)));
        v50.word3 = rawData.word4;
        require(!(rawData.word5 - address(rawData.word5)));
        v50.word4 = rawData.word5;
        require(!(rawData.word6 - address(rawData.word6)));
        v1 = v53 = rawData.word8;
        require(!(v53 - bool(v53)));
        v54 = 0x1db4(rawData.word7);
        if (!v53) {
            v55 = v56 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            v55 = v57 = 0x1000276a4;
        }
        v58 = new struct(3);
        require(!((v58 + 96 > uint64.max) | (v58 + 96 < v58)), Panic(65)); // failed memory allocation (too much memory)
        v58.word0 = bool(v53);
        v58.word1 = v54;
        v58.word2 = address(v55);
        v1 = v59 = 32;
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v60 = new uint256[](v61);
        MCOPY(v60.data, 32 + MEM[64], v61);
        MEM[v60.data] = 0;
        v62, /* uint256 */ v1 = msg.sender.swap(address(v50.word0), address(v50.word1), uint24(v50.word2), int24(v50.word3), address(v50.word4), bool(v58.word0), v58.word1, address(v58.word2), v60).gas(msg.gas);
        if (!v62) {
            v63 = RETURNDATASIZE();
            revert(v22, v22, v22, v22, v22, v22, v22, v22, v22, v61, 0);
        } else {
            if (v62) {
                if (v59 > RETURNDATASIZE()) {
                    v1 = v64 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v1 - MEM[64] >= v59);
            }
            if (address(rawData.word6)) {
                if (!v53) {
                    v65 = v66 = address(v50.word1);
                } else {
                    v65 = v67 = address(v50.word0);
                }
                require(msg.sender.code.size);
                v68, /* uint256 */ v69 = msg.sender.sync(address(v65)).gas(msg.gas);
                require(v68, v69, RETURNDATASIZE());
                if (v68) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
                require((address(rawData.word6)).code.size);
                v70, /* uint256 */ v71 = address(rawData.word6).transfer(msg.sender, rawData.word7).gas(msg.gas);
                require(v70, v71, RETURNDATASIZE());
                if (v70) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
                v72 = v73 = MEM[64];
                v74 = msg.sender.settle().gas(msg.gas);
                require(v74, MEM[64], RETURNDATASIZE());
                if (v74) {
                    v75 = v76 = 3305;
                    if (v59 <= RETURNDATASIZE()) {
                        require(!((v73 + 32 > uint64.max) | (v73 + 32 < v73)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v73 + 32;
                        v77 = v78 = v73 + v59;
                    }
                }
            } else {
                if (!this.balance) {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                    v79, /* uint256 */ v80 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(rawData.word7).gas(msg.gas);
                    require(v79, v80, RETURNDATASIZE());
                    if (v79) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(!0);
                    }
                }
                v72 = v81 = MEM[64];
                v82 = msg.sender.settle().value(rawData.word7).gas(msg.gas);
                require(v82, MEM[64], RETURNDATASIZE());
                if (v82) {
                    v75 = v83 = 2940;
                    if (v59 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0xb830x799. Refer to 3-address code (TAC);
                    }
                }
            }
        }
    }
    if (!v1) {
        v84 = v85 = address(MEM[v1]);
    } else {
        v84 = v86 = address(MEM[v51]);
    }
    if (!v1) {
        v87 = v88 = v1 >> 128;
    } else {
        v87 = v89 = int128(v1);
    }
    if (int128(v87) > v1) {
        require(msg.sender.code.size, v1, v1);
        v90 = msg.sender.take(address(v84), this, uint128(v87)).value(v1).gas(msg.gas);
        require(v90, MEM[64], RETURNDATASIZE());
        if (v90) {
            v91 = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(!((v91 > uint64.max) | (v91 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v91;
            require(!v1, v1, v1);
        }
        if (!address(v84)) {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v1, v1);
            v92 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(uint128(v87)).gas(msg.gas);
            require(v92, MEM[64], RETURNDATASIZE());
            if (v92) {
                v93 = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(!((v93 > uint64.max) | (v93 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v93;
                require(!v1, v1, v1);
            }
        }
    }
    v94 = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(!((v94 > uint64.max) | (v94 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[0] = MEM[0];
    _uniswapV3SwapCallback = v1;
    v95 = new uint256[](v96);
    MCOPY(v95.data, 32 + MEM[64], v96);
    MEM[32 + (v96 + v95)] = 0;
    return v95;
    require(!((v72 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v72 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v72)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v72 + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v77 = v72 + v1;
    require(v77 - v72 >= 32);
    // Unknown jump to Block ['0x45c020x799', '0xb7c', '0xce9']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0xa01. Refer to 3-address code (TAC);
    // Unknown jump to Block 0xa03. Refer to 3-address code (TAC);
    v1 = v1 + v51;
    // Unknown jump to Block 0x20240x799. Refer to 3-address code (TAC);
    v1 = v97 = RETURNDATASIZE();
    // Unknown jump to Block 0xb6a0x799. Refer to 3-address code (TAC);
    if (v1 >= MEM[v1]) {
        v98 = new uint256[](v99);
        v99 = MEM[v1];
        MCOPY(v98.data, 32 + v1, v99);
        MEM[32 + (v99 + v98)] = 0;
        return v98;
    } else {
        require(v1 < MEM[v1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v100 = MEM[(v1 << 5) + v1 + 32];
        if (MEM[v100]) {
            if (MEM[v100] - 1) {
                if (MEM[v100] - 2) {
                    if (MEM[v100] - 3) {
                        if (MEM[v100] - 4) {
                            if (MEM[v100] - 5) {
                                if (MEM[v100] - 6) {
                                    if (MEM[v100] - 9) {
                                        if (MEM[v100] - 7) {
                                            if (MEM[v100] - 8) {
                                                if (MEM[v100] - 10) {
                                                    if (MEM[v100] - 11) {
                                                        require(!(12 - MEM[v100]), Error(0x434d44));
                                                        require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 64);
                                                        v101 = 0x3b36(MEM[32 + v100] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                                        MEM[0] = MEM[0];
                                                        if (address(v101.word1)) {
                                                            require((address(v101.word0)).code.size);
                                                            v102 = address(v101.word0).sync(address(v101.word1)).gas(msg.gas);
                                                            if (!v102) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                if (v102) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                }
                                                                require((address(v101.word1)).code.size);
                                                                v103 = address(v101.word1).transfer(address(v101.word0), tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                                if (!v103) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else {
                                                                    if (v103) {
                                                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    }
                                                                    v72 = v104 = MEM[64];
                                                                    v105 = address(v101.word0).settle().gas(msg.gas);
                                                                    if (!v105) {
                                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                        revert(MEM[64], RETURNDATASIZE());
                                                                    } else {
                                                                        v51 = v106 = 1;
                                                                        if (!v105) {
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        } else {
                                                            v107 = this.balance;
                                                            if (!v107) {
                                                                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                                                v108 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                                if (!v108) {
                                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                    revert(MEM[64], RETURNDATASIZE());
                                                                } else if (v108) {
                                                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                    MEM[64] = MEM[64];
                                                                }
                                                            }
                                                            v72 = v109 = MEM[64];
                                                            v110 = address(v101.word0).settle().value(tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                            if (!v110) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v51 = v111 = 1;
                                                                if (!v110) {
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 32);
                                                        require(MEM[MEM[32 + v100] + 32] <= uint64.max);
                                                        v112 = MEM[32 + v100] + MEM[MEM[32 + v100] + 32];
                                                        require(MEM[32 + v100] + MEM[MEM[32 + v100]] - v112 >= 320);
                                                        v113 = new struct(6);
                                                        require(!((v113 + 192 > uint64.max) | (v113 + 192 < v113)), Panic(65)); // failed memory allocation (too much memory)
                                                        require(!(MEM[v112 + 32] - address(MEM[v112 + 32])));
                                                        v113.word0 = MEM[v112 + 32];
                                                        v114 = 0x1cef(v112 + 64, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                                        v113.word1 = v114;
                                                        require(!(MEM[v112 + 224] - address(MEM[v112 + 224])));
                                                        v113.word2 = MEM[v112 + 224];
                                                        v113.word3 = MEM[v112 + (uint8.max + 1)];
                                                        require(MEM[v112 + 288] <= uint64.max);
                                                        v115 = v116 = 0;
                                                        v117 = 0x1d6e(v112 + MEM[v112 + 288] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                                        v113.word4 = v117;
                                                        require(!(MEM[v112 + 320] - bool(MEM[v112 + 320])));
                                                        v113.word5 = MEM[v112 + 320];
                                                        v118 = new uint256[]((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v117.length) + (v118 + 288) + 32 - v118 - 32);
                                                        MEM[v118.data] = address(MEM[v113.word1]);
                                                        MEM[v118.data + 32] = address(MEM[v113.word1 + 32]);
                                                        MEM[v118.data + 64] = uint24(MEM[v113.word1 + 64]);
                                                        MEM[v118.data + 96] = int24(MEM[v113.word1 + 96]);
                                                        MEM[v118.data + 128] = address(MEM[128 + v113.word1]);
                                                        MEM[v118 + 192] = address(v113.word2);
                                                        MEM[v118 + 224] = v113.word3;
                                                        MEM[v118 + (uint8.max + 1)] = uint8.max + 1;
                                                        MEM[v118 + 288] = v117.length;
                                                        MCOPY(v118 + 288 + 32, v117.data, v117.length);
                                                        MEM[32 + (v117.length + (v118 + 288))] = 0;
                                                        require(!((v118 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v117.length) + (v118 + 288) + 32 - v118 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v118 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v117.length) + (v118 + 288) + 32 - v118 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v118)), Panic(65)); // failed memory allocation (too much memory)
                                                        v119 = v120 = address(v113.word0);
                                                        v121 = 0;
                                                        if (bool(!v113.word5)) {
                                                            v122 = v118.length;
                                                            v123 = v118.data;
                                                            v121 = v124 = keccak256(v118);
                                                        }
                                                        tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v121;
                                                        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                        MEM[0] = MEM[0];
                                                        _onMorphoFlashLoan = v120;
                                                        v125 = v126 = MEM[64];
                                                        MEM[v126] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                        MEM[v126 + 4] = 32;
                                                        MEM[v126 + 36] = v118.length;
                                                        MCOPY(v126 + 36 + 32, v118.data, v118.length);
                                                        MEM[32 + (v118.length + (v126 + 36))] = 0;
                                                        v127 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v118.length) + (v126 + 36) + 32;
                                                    }
                                                } else {
                                                    require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 288);
                                                    v128 = new struct(5);
                                                    require(!((v128 + 160 > uint64.max) | (v128 + 160 < v128)), Panic(65)); // failed memory allocation (too much memory)
                                                    require(!(MEM[MEM[32 + v100] + 32] - address(MEM[MEM[32 + v100] + 32])));
                                                    v128.word0 = MEM[MEM[32 + v100] + 32];
                                                    v129 = 0x1cef(MEM[32 + v100] + 64, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                                    v128.word1 = v129;
                                                    require(!(MEM[MEM[32 + v100] + 224] - address(MEM[MEM[32 + v100] + 224])));
                                                    v128.word2 = MEM[MEM[32 + v100] + 224];
                                                    v128.word3 = MEM[MEM[32 + v100] + (uint8.max + 1)];
                                                    require(!(MEM[MEM[32 + v100] + 288] - bool(MEM[MEM[32 + v100] + 288])));
                                                    v128.word4 = MEM[MEM[32 + v100] + 288];
                                                    v119 = address(v128.word0);
                                                    if (address(MEM[MEM[32 + v100] + 224])) {
                                                        v130, v131 = address(MEM[MEM[32 + v100] + 224]).balanceOf(this).gas(msg.gas);
                                                        if (!v130) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v131 = 0;
                                                            if (v130) {
                                                                v132 = 32;
                                                                if (v132 > RETURNDATASIZE()) {
                                                                    v132 = v133 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v132 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v132 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v132 - MEM[64] >= 32);
                                                            }
                                                            v115 = v134 = 0;
                                                            require((v131 * v128.word3 / v131 == v128.word3) | !v131, Panic(17)); // arithmetic overflow or underflow
                                                            MEM[0] = MEM[0];
                                                            _uniswapV3SwapCallback = 1;
                                                            v135 = new struct(9);
                                                            v135.word1 = address(MEM[v128.word1]);
                                                            v135.word2 = address(MEM[v128.word1 + 32]);
                                                            v135.word3 = uint24(MEM[v128.word1 + 64]);
                                                            v135.word4 = int24(MEM[v128.word1 + 96]);
                                                            v135.word5 = address(MEM[128 + v128.word1]);
                                                            v135.word6 = address(v128.word2);
                                                            v135.word7 = v131 * v128.word3 / 10 ** 6;
                                                            v135.word8 = address(MEM[v128.word1]) == address(v128.word2);
                                                            v135.word0 = uint8.max + 1;
                                                            require(!((v135 + 288 > uint64.max) | (v135 + 288 < v135)), Panic(65)); // failed memory allocation (too much memory)
                                                            v136 = 0;
                                                            if (bool(!v128.word4)) {
                                                                v137 = v135.word0.length;
                                                                v138 = v135.data;
                                                                v136 = v139 = keccak256(address(MEM[v128.word1]), address(MEM[v128.word1 + 32]), uint24(MEM[v128.word1 + 64]), int24(MEM[v128.word1 + 96]), address(MEM[128 + v128.word1]), address(v128.word2), v131 * v128.word3 / 10 ** 6, address(MEM[v128.word1]) == address(v128.word2));
                                                            }
                                                            tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v136;
                                                            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                            MEM[0] = MEM[0];
                                                            _onMorphoFlashLoan = address(v128.word0);
                                                            v125 = v140 = MEM[64];
                                                            MEM[v140] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                            MEM[v140 + 4] = 32;
                                                            MEM[v140 + 36] = v135.word0.length;
                                                            MCOPY(v140 + 36 + 32, v135.data, v135.word0.length);
                                                            MEM[32 + (v135.word0.length + (v140 + 36))] = 0;
                                                            v127 = v141 = uint8.max + 1 + (v140 + 36) + 32;
                                                        }
                                                    } else {
                                                        v142, v143 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                                                        if (!v142) {
                                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                            revert(MEM[64], RETURNDATASIZE());
                                                        } else {
                                                            v143 = 0;
                                                            if (v142) {
                                                                v144 = 32;
                                                                if (v144 > RETURNDATASIZE()) {
                                                                    v144 = v145 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v144 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v144 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v144 - MEM[64] >= 32);
                                                            }
                                                            v115 = 0;
                                                            require((v143 * v128.word3 / v143 == v128.word3) | !v143, Panic(17)); // arithmetic overflow or underflow
                                                            MEM[0] = MEM[0];
                                                            _uniswapV3SwapCallback = 1;
                                                            v146 = new struct(9);
                                                            v146.word1 = address(MEM[v128.word1]);
                                                            v146.word2 = address(MEM[v128.word1 + 32]);
                                                            v146.word3 = uint24(MEM[v128.word1 + 64]);
                                                            v146.word4 = int24(MEM[v128.word1 + 96]);
                                                            v146.word5 = address(MEM[128 + v128.word1]);
                                                            v146.word6 = address(v128.word2);
                                                            v146.word7 = v143 * v128.word3 / 10 ** 6;
                                                            v146.word8 = address(MEM[v128.word1]) == address(v128.word2);
                                                            v146.word0 = uint8.max + 1;
                                                            require(!((v146 + 288 > uint64.max) | (v146 + 288 < v146)), Panic(65)); // failed memory allocation (too much memory)
                                                            v147 = 0;
                                                            if (bool(!v128.word4)) {
                                                                v148 = v146.word0.length;
                                                                v149 = v146.data;
                                                                v147 = v150 = keccak256(address(MEM[v128.word1]), address(MEM[v128.word1 + 32]), uint24(MEM[v128.word1 + 64]), int24(MEM[v128.word1 + 96]), address(MEM[128 + v128.word1]), address(v128.word2), v143 * v128.word3 / 10 ** 6, address(MEM[v128.word1]) == address(v128.word2));
                                                            }
                                                            tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v147;
                                                            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                            MEM[0] = MEM[0];
                                                            _onMorphoFlashLoan = address(v128.word0);
                                                            v125 = MEM[64];
                                                            MEM[v125] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                            MEM[v125 + 4] = 32;
                                                            MEM[v125 + 36] = v146.word0.length;
                                                            MCOPY(v125 + 36 + 32, v146.data, v146.word0.length);
                                                            MEM[32 + (v146.word0.length + (v125 + 36))] = 0;
                                                            v127 = v151 = uint8.max + 1 + (v125 + 36) + 32;
                                                        }
                                                    }
                                                }
                                                v152 = v119.call(MEM[v7990x45cac:v7990x45cac + v1760V0x45e250x799 - v7990x45cac], MEM[v7990x45cac:v7990x45cac + v7990x363c]).value(v115).gas(msg.gas);
                                                if (!v152) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v51 = v153 = 1;
                                                    if (v152) {
                                                        RETURNDATACOPY(v125, 0, RETURNDATASIZE());
                                                        require(!((v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v125)), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = v125 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        v154 = 0x3c65(v125, v125 + RETURNDATASIZE());
                                                    } else {
                                                        // Unknown jump to Block 0x21000x799. Refer to 3-address code (TAC);
                                                    }
                                                }
                                            } else {
                                                require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 64);
                                                v155 = 0x3b36(MEM[32 + v100] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                                v156, /* address */ v157 = address(v155.word0).token0().gas(msg.gas);
                                                if (!v156) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v157 = v158 = 0;
                                                    if (v156) {
                                                        v159 = 32;
                                                        if (v159 > RETURNDATASIZE()) {
                                                            v159 = v160 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v159 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v159 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v159 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v159 - MEM[64] >= 32);
                                                        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                                    }
                                                    v161, /* address */ v162 = address(v155.word0).token1().gas(msg.gas);
                                                    if (!v161) {
                                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                        revert(MEM[64], RETURNDATASIZE());
                                                    } else {
                                                        v162 = v163 = 0;
                                                        if (v161) {
                                                            v164 = 32;
                                                            if (v164 > RETURNDATASIZE()) {
                                                                v164 = v165 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v164 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v164 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            MEM[64] = MEM[64] + (v164 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                            require(MEM[64] + v164 - MEM[64] >= 32);
                                                            require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                        }
                                                        if (address(v155.word1) - address(v157)) {
                                                            require(!(address(v162) - address(v155.word1)), Error('V3FPB'));
                                                            MEM[0] = MEM[0];
                                                            require((address(v157)).code.size);
                                                            v166 = v167 = MEM[64];
                                                            v168 = address(v157).transfer(msg.sender, tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31).gas(msg.gas);
                                                            if (!v168) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v51 = v169 = 1;
                                                                if (!v168) {
                                                                }
                                                            }
                                                        } else {
                                                            require((address(v162)).code.size);
                                                            v166 = v170 = MEM[64];
                                                            v171 = address(v162).transfer(msg.sender, tstor_fdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a).gas(msg.gas);
                                                            if (!v171) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                revert(MEM[64], RETURNDATASIZE());
                                                            } else {
                                                                v51 = v172 = 1;
                                                                if (!v171) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            v173 = 0x3b6c(MEM[v100 + 32] + 32, MEM[v100 + 32] + MEM[MEM[v100 + 32]] + 32);
                                            v174 = v175 = address(v173.word0);
                                            v176, /* address */ v177 = v175.token0().gas(msg.gas);
                                            if (!v176) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v177 = v178 = 0;
                                                if (v176) {
                                                    v179 = 32;
                                                    if (v179 > RETURNDATASIZE()) {
                                                        v179 = v180 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v179 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v179 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v179 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v179 - MEM[64] >= 32);
                                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                                }
                                                v181, /* address */ v182 = v175.token1().gas(msg.gas);
                                                if (!v181) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v182 = v183 = 0;
                                                    if (v181) {
                                                        v184 = 32;
                                                        if (v184 > RETURNDATASIZE()) {
                                                            v184 = v185 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v184 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v184 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[64] = MEM[64] + (v184 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                        require(MEM[64] + v184 - MEM[64] >= 32);
                                                        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                    }
                                                    v186 = 0;
                                                    if (bool(!v173.word4)) {
                                                        v186 = v187 = keccak256(MEM[v7990x3140_0x0.word3 + 32:v7990x3140_0x0.word3 + 32 + MEM[v7990x3140_0x0.word3]]);
                                                    }
                                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v186;
                                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                    MEM[0] = MEM[0];
                                                    _onMorphoFlashLoan = address(v173.word0);
                                                    if (address(v173.word1) - address(v182)) {
                                                        require(!(address(v177) - address(v173.word1)), Error(0x56334653));
                                                        v188 = v189 = 64;
                                                        v190 = v191 = 0;
                                                        v192 = v193 = MEM[v189];
                                                        MEM[v193] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                        MEM[v193 + 4] = this;
                                                        MEM[v193 + 36] = v191;
                                                        MEM[v193 + 68] = v173.word2;
                                                        MEM[v193 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                        MEM[v193 + 132] = 160;
                                                        MEM[v193 + 164] = MEM[v173.word3];
                                                        MCOPY(v193 + 164 + 32, 32 + v173.word3, MEM[v173.word3]);
                                                        MEM[32 + (MEM[v173.word3] + (v193 + 164))] = 0;
                                                        v194 = v195 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v173.word3]) + (v193 + 164) + 32;
                                                    } else {
                                                        v188 = v196 = 64;
                                                        v190 = v197 = 0;
                                                        v192 = v198 = MEM[v196];
                                                        MEM[v198] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                        MEM[v198 + 4] = this;
                                                        MEM[v198 + 36] = 1;
                                                        MEM[v198 + 68] = v173.word2;
                                                        MEM[v198 + 100] = 0x1000276a4;
                                                        MEM[v198 + 132] = 160;
                                                        MEM[v198 + 164] = MEM[v173.word3];
                                                        MCOPY(v198 + 164 + 32, 32 + v173.word3, MEM[v173.word3]);
                                                        MEM[32 + (MEM[v173.word3] + (v198 + 164))] = 0;
                                                        v194 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v173.word3]) + (v198 + 164) + 32;
                                                    }
                                                }
                                            }
                                        }
                                    } else {
                                        require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 128);
                                        v199 = new struct(4);
                                        require(!((v199 + 128 > uint64.max) | (v199 + 128 < v199)), Panic(65)); // failed memory allocation (too much memory)
                                        require(!(MEM[MEM[32 + v100] + 32] - address(MEM[MEM[32 + v100] + 32])));
                                        v199.word0 = MEM[MEM[32 + v100] + 32];
                                        require(!(MEM[MEM[32 + v100] + 64] - address(MEM[MEM[32 + v100] + 64])));
                                        v199.word1 = MEM[MEM[32 + v100] + 64];
                                        v199.word2 = MEM[MEM[32 + v100] + 96];
                                        require(!(MEM[MEM[32 + v100] + 128] - bool(MEM[MEM[32 + v100] + 128])));
                                        v199.word3 = MEM[MEM[32 + v100] + 128];
                                        v174 = address(MEM[MEM[32 + v100] + 32]);
                                        v200, /* address */ v201 = v174.token0().gas(msg.gas);
                                        if (!v200) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v201 = v202 = 0;
                                            if (v200) {
                                                v203 = 32;
                                                if (v203 > RETURNDATASIZE()) {
                                                    v203 = v204 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v203 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v203 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (v203 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + v203 - MEM[64] >= 32);
                                                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                            }
                                            v205, /* address */ v206 = v174.token1().gas(msg.gas);
                                            if (!v205) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v206 = v207 = 0;
                                                if (v205) {
                                                    v208 = 32;
                                                    if (v208 > RETURNDATASIZE()) {
                                                        v208 = v209 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v208 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v208 - MEM[64] >= 32);
                                                    require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                                }
                                                if (address(v199.word1) - address(v201)) {
                                                    require(!(address(v206) - address(v199.word1)), Error(0x563354));
                                                    v210 = v211 = 0;
                                                } else {
                                                    v210 = 1;
                                                }
                                                v212, v213 = address(v199.word1).balanceOf(this).gas(msg.gas);
                                                if (!v212) {
                                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                    revert(MEM[64], RETURNDATASIZE());
                                                } else {
                                                    v213 = 0;
                                                    if (v212) {
                                                        v214 = 32;
                                                        if (v214 > RETURNDATASIZE()) {
                                                            v214 = v215 = RETURNDATASIZE();
                                                        }
                                                        require(!((MEM[64] + (v214 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v214 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                        require(MEM[64] + v214 - MEM[64] >= 32);
                                                    }
                                                    v190 = 0;
                                                    v188 = 64;
                                                    v216 = _SafeMul(v213, v199.word2);
                                                    MEM[0] = MEM[0];
                                                    _uniswapV3SwapCallback = 1;
                                                    require(!((MEM[v188] + 32 > uint64.max) | (MEM[v188] + 32 < MEM[v188])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[MEM[v188]] = v190;
                                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v190;
                                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                                    MEM[0] = MEM[0];
                                                    _onMorphoFlashLoan = address(v199.word0);
                                                    if (v190 == v210) {
                                                        v217 = v218 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                    } else {
                                                        v217 = 0x1000276a4;
                                                    }
                                                    if (v190 == v210) {
                                                        v219 = v220 = new struct(3);
                                                        v221 = v220.data;
                                                        v220.word1 = v190;
                                                        v220.word2 = address(v206);
                                                        v220.word0 = v188;
                                                        require(!((v220 + 96 > uint64.max) | (v220 + 96 < v220)), Panic(65)); // failed memory allocation (too much memory)
                                                    } else {
                                                        v219 = new struct(3);
                                                        v222 = v219.data;
                                                        v219.word1 = bool(v210);
                                                        v219.word2 = address(v201);
                                                        v219.word0 = v188;
                                                        require(!((v219 + 96 > uint64.max) | (v219 + 96 < v219)), Panic(65)); // failed memory allocation (too much memory)
                                                    }
                                                    v192 = MEM[v188];
                                                    MEM[v192] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                    MEM[v192 + 4] = this;
                                                    MEM[v192 + 36] = bool(v210);
                                                    MEM[v192 + 68] = v216 / 10 ** 6;
                                                    MEM[v192 + 100] = address(v217);
                                                    MEM[v192 + 132] = 160;
                                                    MEM[v192 + 164] = MEM[v219];
                                                    MCOPY(v192 + 164 + 32, 32 + v219, MEM[v219]);
                                                    MEM[32 + (MEM[v219] + (v192 + 164))] = 0;
                                                    v194 = v223 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v219]) + (v192 + 164) + 32;
                                                }
                                            }
                                        }
                                    }
                                    v224 = v174.call(MEM[v7990x2f64:v7990x2f64 + v1760V0x31d40x799 - v7990x2f64], MEM[v7990x2f64:v7990x2f64 + v7990x2ec3]).value(v190).gas(msg.gas);
                                    if (!v224) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v51 = v225 = 1;
                                        if (v224) {
                                            v226 = 64;
                                            if (v226 > RETURNDATASIZE()) {
                                                v226 = v227 = RETURNDATASIZE();
                                            }
                                            require(!((v192 + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v192 + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v192)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v192 + (v226 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(v192 + v226 - v192 >= 64);
                                        } else {
                                            // Unknown jump to Block 0x21000x799. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 32);
                                    require(MEM[MEM[32 + v100] + 32] <= uint64.max);
                                    v228 = MEM[32 + v100] + MEM[MEM[32 + v100] + 32];
                                    require(MEM[32 + v100] + MEM[MEM[32 + v100]] - v228 >= 160);
                                    v229 = new struct(5);
                                    require(!((v229 + 160 > uint64.max) | (v229 + 160 < v229)), Panic(65)); // failed memory allocation (too much memory)
                                    require(!(MEM[v228 + 32] - address(MEM[v228 + 32])));
                                    v229.word0 = MEM[v228 + 32];
                                    require(!(MEM[v228 + 64] - address(MEM[v228 + 64])));
                                    v229.word1 = MEM[v228 + 64];
                                    v229.word2 = MEM[v228 + 96];
                                    require(!(MEM[v228 + 128] - bool(MEM[v228 + 128])));
                                    v229.word3 = MEM[v228 + 128];
                                    require(MEM[v228 + 160] <= uint64.max);
                                    v230 = 0x1d6e(v228 + MEM[v228 + 160] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                                    v229.word4 = v230;
                                    v1 = v231 = address(v229.word0);
                                    v232 = 0;
                                    if (bool(!v229.word3)) {
                                        v233 = v230.length;
                                        v234 = v230.data;
                                        v232 = v235 = keccak256(v230);
                                    }
                                    tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v232;
                                    tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                                    MEM[0] = MEM[0];
                                    _onMorphoFlashLoan = v231;
                                    require(v231.code.size);
                                    v236 = v237 = 0;
                                    v166 = v238 = MEM[64];
                                    MEM[v238] = 0xe0232b4200000000000000000000000000000000000000000000000000000000;
                                    MEM[v238 + 4] = address(v229.word1);
                                    MEM[v238 + 36] = v229.word2;
                                    MEM[v238 + 68] = 96;
                                    MEM[v238 + 100] = v230.length;
                                    MCOPY(v238 + 100 + 32, v230.data, v230.length);
                                    MEM[32 + (v230.length + (v238 + 100))] = 0;
                                    v239 = v240 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v230.length) + (v238 + 100) + 32;
                                }
                            } else {
                                require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 160);
                                v241 = new struct(5);
                                require(!((v241 + 160 > uint64.max) | (v241 + 160 < v241)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(MEM[MEM[32 + v100] + 32] - address(MEM[MEM[32 + v100] + 32])));
                                v241.word0 = MEM[MEM[32 + v100] + 32];
                                v241.word1 = MEM[MEM[32 + v100] + 64];
                                require(!(MEM[MEM[32 + v100] + 96] - address(MEM[MEM[32 + v100] + 96])));
                                v241.word2 = MEM[MEM[32 + v100] + 96];
                                require(!(MEM[MEM[32 + v100] + 128] - uint128(MEM[MEM[32 + v100] + 128])));
                                v241.word3 = MEM[MEM[32 + v100] + 128];
                                require(!(MEM[MEM[32 + v100] + 160] - uint128(MEM[MEM[32 + v100] + 160])));
                                v241.word4 = MEM[MEM[32 + v100] + 160];
                                v242, v243 = address(MEM[MEM[32 + v100] + 96]).balanceOf(this).gas(msg.gas);
                                if (!v242) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v243 = 0;
                                    if (v242) {
                                        v244 = 32;
                                        if (v244 > RETURNDATASIZE()) {
                                            v244 = v245 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v244 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v244 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        require(MEM[64] + v244 - MEM[64] >= 32);
                                    }
                                    v246 = _SafeMul(v243, v241.word1);
                                    require((address(v241.word2)).code.size);
                                    v247 = address(v241.word2).approve(address(MEM[MEM[32 + v100] + 32]), v246 / 10 ** 6).gas(msg.gas);
                                    if (!v247) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        if (v247) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        }
                                        v72 = MEM[64];
                                        v248 = address(MEM[MEM[32 + v100] + 32]).setMetaGold(uint128(v241.word3), uint128(v241.word4), v246 / 10 ** 6, 0).gas(msg.gas);
                                        if (!v248) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v51 = v249 = 1;
                                            if (!v248) {
                                            }
                                        }
                                    }
                                }
                            }
                            v75 = v250 = 0x45c02;
                            if (32 <= RETURNDATASIZE()) {
                                require(!((v72 + 32 > uint64.max) | (v72 + 32 < v72)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v72 + 32;
                                v77 = v251 = v72 + 32;
                            }
                        } else {
                            require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 160);
                            v252 = v253 = 0x3c11(MEM[32 + v100] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                            v1 = v254 = address(v253.word0);
                            v255, /* address */ v256 = v254.token0().gas(msg.gas);
                            if (!v255) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v256 = v257 = 0;
                                if (v255) {
                                    v258 = 32;
                                    if (v258 > RETURNDATASIZE()) {
                                        v258 = v259 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v258 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v258 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v258 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v258 - MEM[64] >= 32);
                                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                                }
                                v260, /* address */ v261 = v254.token1().gas(msg.gas);
                                if (!v260) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    v261 = v262 = 0;
                                    if (v260) {
                                        v263 = 32;
                                        if (v263 > RETURNDATASIZE()) {
                                            v263 = v264 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v263 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v263 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v263 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v263 - MEM[64] >= 32);
                                        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                    }
                                    v1 = v265 = address(v256);
                                    if (address(v253.word1) - v265) {
                                        require(!(address(v261) - address(v253.word1)), Error('V2FTP'));
                                        v266 = v267 = 1;
                                    } else {
                                        v266 = v268 = 0;
                                    }
                                    v269 = v270 = MEM[64];
                                    v271 = v254.getReserves().gas(msg.gas);
                                    if (!v271) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v272 = v273 = 0;
                                        v272 = v274 = 0;
                                        if (v271) {
                                            v275 = v276 = 10725;
                                            if (96 <= RETURNDATASIZE()) {
                                                require(!((v270 + 96 > uint64.max) | (v270 + 96 < v270)), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = v270 + 96;
                                                v277 = v278 = v270 + 96;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    } else {
                        v279 = 0x3b6c(MEM[v100 + 32] + 32, MEM[v100 + 32] + MEM[MEM[v100 + 32]] + 32);
                        v1 = v280 = address(v279.word0);
                        v281 = 0;
                        if (bool(!v279.word4)) {
                            v281 = v282 = keccak256(MEM[v7990x2671_0x0.word3 + 32:v7990x2671_0x0.word3 + 32 + MEM[v7990x2671_0x0.word3]]);
                        }
                        tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f = v281;
                        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 1;
                        MEM[0] = MEM[0];
                        _onMorphoFlashLoan = v280;
                        v283, /* address */ v284 = v280.token0().gas(msg.gas);
                        if (!v283) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v284 = v285 = 0;
                            if (v283) {
                                v286 = 32;
                                if (v286 > RETURNDATASIZE()) {
                                    v286 = v287 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v286 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v286 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v286 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v286 - MEM[64] >= 32);
                                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                            }
                            v288, /* address */ v289 = v280.token1().gas(msg.gas);
                            if (!v288) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v289 = v290 = 0;
                                if (v288) {
                                    v291 = 32;
                                    if (v291 > RETURNDATASIZE()) {
                                        v291 = v292 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v291 - MEM[64] >= 32);
                                    require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                                }
                                if (address(v279.word1) - address(v284)) {
                                    require(!(address(v289) - address(v279.word1)), Error(0x56324654));
                                    require(v280.code.size);
                                    v236 = v293 = 0;
                                    v166 = v294 = MEM[64];
                                    MEM[v294] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                    MEM[v294 + 4] = 0;
                                    MEM[v294 + 4 + 32] = v279.word2;
                                    MEM[v294 + 4 + 64] = address(this);
                                    MEM[v294 + 4 + 96] = 128;
                                    MEM[v294 + 4 + 128] = MEM[v279.word3];
                                    MCOPY(v294 + 4 + 128 + 32, 32 + v279.word3, MEM[v279.word3]);
                                    MEM[32 + (MEM[v279.word3] + (v294 + 4 + 128))] = 0;
                                    v239 = v295 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v279.word3]) + (v294 + 4 + 128) + 32;
                                } else {
                                    require(v280.code.size);
                                    v236 = v296 = 0;
                                    v166 = v297 = MEM[64];
                                    MEM[v297] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                    MEM[v297 + 4] = v279.word2;
                                    MEM[v297 + 4 + 32] = 0;
                                    MEM[v297 + 4 + 64] = address(this);
                                    MEM[v297 + 4 + 96] = 128;
                                    MEM[v297 + 4 + 128] = MEM[v279.word3];
                                    MCOPY(v297 + 4 + 128 + 32, 32 + v279.word3, MEM[v279.word3]);
                                    MEM[32 + (MEM[v279.word3] + (v297 + 4 + 128))] = 0;
                                    v239 = v298 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v279.word3]) + (v297 + 4 + 128) + 32;
                                }
                            }
                        }
                    }
                } else {
                    require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 160);
                    v252 = v299 = 0x3c11(MEM[32 + v100] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
                    v1 = v300 = address(v299.word0);
                    v301, /* address */ v302 = v300.token0().gas(msg.gas);
                    if (!v301) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v302 = v303 = 0;
                        if (v301) {
                            v304 = 32;
                            if (v304 > RETURNDATASIZE()) {
                                v304 = v305 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v304 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        v306, /* address */ v307 = v300.token1().gas(msg.gas);
                        if (!v306) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v307 = v308 = 0;
                            if (v306) {
                                v309 = 32;
                                if (v309 > RETURNDATASIZE()) {
                                    v309 = v310 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v309 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v309 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (v309 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + v309 - MEM[64] >= 32);
                                require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
                            }
                            v266 = v299 + 32;
                            if (address(v299.word1) - address(v302)) {
                                require(!(address(v307) - address(v299.word1)), Error(0x563254));
                                v261 = v311 = 0;
                            } else {
                                v261 = v312 = 1;
                            }
                            v269 = MEM[64];
                            v313 = v300.getReserves().gas(msg.gas);
                            if (!v313) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v272 = v314 = 0;
                                v272 = v315 = 0;
                                if (v313) {
                                    v275 = v316 = 9613;
                                    v317 = 96;
                                    if (v317 > RETURNDATASIZE()) {
                                        // Unknown jump to Block 0x25950x799. Refer to 3-address code (TAC);
                                    }
                                }
                            }
                        }
                    }
                }
                if (v261) {
                }
                v318, v319 = address(MEM[v266]).balanceOf(this).gas(msg.gas);
                if (!v318) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v319 = 0;
                    if (v318) {
                        v320 = 32;
                        if (v320 > RETURNDATASIZE()) {
                            v320 = v321 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v320 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v320 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v320 - MEM[64] >= 32);
                    }
                    v322 = _SafeMul(v319, MEM[v252 + 64]);
                    v323 = 0x3d8e(v322 / 10 ** 6, MEM[v252 + 96]);
                    v324 = 0x3d8e(v323, uint112(v272));
                    v325 = 0x3d8e(uint112(v272), MEM[v252 + 128]);
                    require(v325 <= v325 + v323, Panic(17)); // arithmetic overflow or underflow
                    require(v325 + v323 >= v325, Error('ds-math-add-overflow'));
                    v326 = _SafeDiv(v324, v325 + v323);
                    require((address(MEM[v266])).code.size);
                    v327 = address(MEM[v266]).transfer(address(v1), v322 / 10 ** 6).gas(msg.gas);
                    if (!v327) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v327) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        if (!v261) {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v1.code.size);
                            v236 = v328 = 0;
                            v166 = v329 = MEM[64];
                            MEM[v329] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v329 + 4] = v326;
                            MEM[v329 + 4 + 32] = 0;
                            MEM[v329 + 4 + 64] = address(this);
                            MEM[v329 + 4 + 96] = 128;
                            MEM[v329 + 4 + 128] = 0;
                            MCOPY(v329 + 4 + 128 + 32, 32 + MEM[64], 0);
                            MEM[32 + (v329 + 4 + 128)] = 0;
                            v239 = v330 = v329 + 4 + 128 + 32;
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(v1.code.size);
                            v236 = v331 = 0;
                            v166 = v332 = MEM[64];
                            MEM[v332] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v332 + 4] = 0;
                            MEM[v332 + 4 + 32] = v326;
                            MEM[v332 + 4 + 64] = address(this);
                            MEM[v332 + 4 + 96] = 128;
                            MEM[v332 + 4 + 128] = 0;
                            MCOPY(v332 + 4 + 128 + 32, 32 + MEM[64], 0);
                            MEM[32 + (v332 + 4 + 128)] = 0;
                            v239 = v332 + 4 + 128 + 32;
                        }
                    }
                }
                require(!((v269 + (v317 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v269 + (v317 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v269)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v269 + (v317 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v277 = v269 + v317;
                require(v277 - v269 >= 96);
                v272 = v333 = MEM[v269];
                require(!(v333 - uint112(v333)));
                v272 = MEM[v269 + 32];
                require(!(v272 - uint112(v272)));
                require(!(MEM[v269 + 64] - uint32(MEM[v269 + 64])));
                // Unknown jump to Block ['0x258d0x799', '0x29e50x799']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x28d00x799. Refer to 3-address code (TAC);
                v317 = v334 = RETURNDATASIZE();
                // Unknown jump to Block 0x257b0x799. Refer to 3-address code (TAC);
                if (v266) {
                }
                v335 = 0x3d8e(uint112(v272), MEM[v252 + 64]);
                v336 = 0x3d8e(v335, MEM[v252 + 128]);
                require(uint112(v272) - MEM[v252 + 64] <= uint112(v272), Panic(17)); // arithmetic overflow or underflow
                v337 = 0x3d8e(uint112(v272) - MEM[v252 + 64], MEM[v252 + 96]);
                v338 = _SafeDiv(v336, v337);
                require(v338 <= v338 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v338 + 1 >= v338, Error('ds-math-add-overflow'));
                if (!v266) {
                    v1 = v339 = address(v261);
                    require(v339.code.size);
                    v166 = v340 = MEM[64];
                    MEM[v340] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v340 + 4] = address(v1);
                    MEM[v340 + 36] = v338 + 1;
                    v236 = v341 = 0;
                    v239 = v342 = v340 + 68;
                } else {
                    require(v1.code.size);
                    v166 = v343 = MEM[64];
                    MEM[v343] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v343 + 4] = address(v1);
                    MEM[v343 + 36] = v338 + 1;
                    v236 = v344 = 0;
                    v239 = v345 = v343 + 68;
                }
            } else {
                require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 96);
                v346 = new struct(3);
                require(!((v346 + 96 > uint64.max) | (v346 + 96 < v346)), Panic(65)); // failed memory allocation (too much memory)
                require(!(MEM[MEM[32 + v100] + 32] - address(MEM[MEM[32 + v100] + 32])));
                v346.word0 = MEM[MEM[32 + v100] + 32];
                require(!(MEM[MEM[32 + v100] + 64] - address(MEM[MEM[32 + v100] + 64])));
                v346.word1 = MEM[MEM[32 + v100] + 64];
                v346.word2 = MEM[MEM[32 + v100] + 96];
                v347, v348 = address(MEM[MEM[32 + v100] + 32]).balanceOf(this).gas(msg.gas);
                if (!v347) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v348 = 0;
                    if (v347) {
                        v349 = 32;
                        if (v349 > RETURNDATASIZE()) {
                            v349 = v350 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v349 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v349 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v349 - MEM[64] >= 32);
                    }
                    v351 = _SafeMul(v348, v346.word2);
                    v1 = v352 = address(v346.word0);
                    require(v352.code.size);
                    v166 = MEM[64];
                    MEM[v166] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v166 + 4] = address(v346.word1);
                    MEM[v166 + 36] = v351 / 10 ** 6;
                    v236 = 0;
                    v239 = v353 = v166 + 68;
                }
            }
            v354 = v1.call(MEM[v7990x2212:v7990x2212 + v1760V0x3ceaV0x247e0x799 - v7990x2212], MEM[v7990x2212:v7990x2212 + v7990x2233]).value(v236).gas(msg.gas);
            if (!v354) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v51 = v355 = 1;
                if (v354) {
                    // Unknown jump to Block 0x22570x799. Refer to 3-address code (TAC);
                }
            }
            require(!((v166 > uint64.max) | (v166 < v166)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v166;
        } else {
            require(MEM[32 + v100] + MEM[MEM[32 + v100]] - MEM[32 + v100] >= 32);
            require(MEM[MEM[32 + v100] + 32] <= uint64.max);
            v356 = MEM[32 + v100] + MEM[MEM[32 + v100] + 32];
            require(MEM[32 + v100] + MEM[MEM[32 + v100]] - v356 >= 96);
            v357 = new struct(3);
            require(!((v357 + 96 > uint64.max) | (v357 + 96 < v357)), Panic(65)); // failed memory allocation (too much memory)
            require(!(MEM[v356 + 32] - address(MEM[v356 + 32])));
            v357.word0 = MEM[v356 + 32];
            v357.word1 = MEM[v356 + 64];
            require(MEM[v356 + 96] <= uint64.max);
            v358 = 0x1d6e(v356 + MEM[v356 + 96] + 32, MEM[32 + v100] + MEM[MEM[32 + v100]] + 32);
            v357.word2 = v358;
            if (0 == !v357.word1) {
                v359 = v360 = address(v357.word0).call(MEM[v7990x20c0_0x0.data:v7990x20c0_0x0.data + v7990x20c0_0x0.length], MEM[0:0]).value(v357.word1).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v361 = v362 = new bytes[](RETURNDATASIZE());
                    require(!((v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v362 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v362)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v362.data, 0, RETURNDATASIZE());
                }
            } else {
                v359 = address(v357.word0).call(MEM[v7990x20d7.data:v7990x20d7.data + v7990x20d7.length], MEM[0:0]).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v363 = v364 = new bytes[](RETURNDATASIZE());
                    require(!((v364 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v364 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v364)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v364.data, 0, RETURNDATASIZE());
                }
            }
            require(v359, Error('DPTCH'));
            v51 = 1;
        }
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = v2 = 0;
    if (!_uniswapV3SwapCallback) {
        tstor_c2df9687dd368658223cab5bfca8f62d060622c206c5087c9addeb8512251d31 = amount0Delta;
        tstor_fdceb72b1c457110aff31ecf274a8f3df1e9439d9fd09b81b21193c82cd4524a = amount1Delta;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            require(_removeOwner[tx.origin], Error(20306));
            require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
            MEM[0] = tx.origin;
            require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        } else {
            require(address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin, Error(20306));
            require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
            tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
            MEM[0] = MEM[0];
            require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        }
        MEM[0] = MEM[0];
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v3 = v0.length;
            v4 = v0.data;
            require(!(keccak256(v0) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        v5 = 0x1e84(v0.data, v0 + v0.length + 32);
        0x2022(v5);
    } else {
        require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v6 = new bytes[](data.length);
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        require(data.data + data.length <= msg.data.length);
        CALLDATACOPY(v6.data, data.data, data.length);
        v6[data.length] = 0;
        v7 = v8 = address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) == tx.origin;
        if (address(0xd89a33693bc41e7272d133111b7f0411f59cfc14) != tx.origin) {
            v7 = v9 = _removeOwner[tx.origin];
        }
        require(v7, Error(20306));
        require(tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c, Error(0x4b43414c));
        tstor_f654a543eb075fbcdf21d54a4ef69ce4d4a9cedc81dfc34efcb092a2e752cf5c = 0;
        require(msg.sender == address(_onMorphoFlashLoan), Error(0x4342434c));
        if (tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f) {
            v10 = v6.length;
            v11 = v6.data;
            require(!(keccak256(v6) - tstor_e85411cceab9ea7b309abb753f29edebe8b410750b584824d618fb82d48ed04f), Error(0x4b434b));
        }
        require(v6 + v6.length - v6 >= 64);
        require(!(MEM[v6.data] - bool(MEM[v6.data])));
        require(!(MEM[64 + v6] - address(MEM[64 + v6])));
        if (!MEM[v6.data]) {
            require((address(MEM[64 + v6])).code.size);
            v12, /* uint256 */ v13 = address(MEM[64 + v6]).transfer(msg.sender, amount1Delta).gas(msg.gas);
            require(v12, v13, RETURNDATASIZE());
            if (v12) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                v1 = 0;
            }
        } else {
            require((address(MEM[64 + v6])).code.size, v2, v2);
            v14, /* uint256 */ v15 = address(MEM[64 + v6]).transfer(msg.sender, amount0Delta).value(v2).gas(msg.gas);
            require(v14, v15, RETURNDATASIZE());
            if (v14) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v2, v2, v2);
            }
        }
        MEM[0] = MEM[0];
        _uniswapV3SwapCallback = v1;
    }
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x12210e8a == function_selector >> 224) {
            refundETH();
        } else if (0x173825d9 == function_selector >> 224) {
            removeOwner(address);
        } else if (0x18dec20e == function_selector >> 224) {
            0x18dec20e();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x31f57072 == function_selector >> 224) {
            onMorphoFlashLoan(uint256,bytes);
        } else if (0x590e1ae3 == function_selector >> 224) {
            refund();
        } else if (0x6c46a2c5 == function_selector >> 224) {
            addOwners(address[]);
        } else if (0x6d2e65da == function_selector >> 224) {
            refundAll(address[]);
        } else if (0x7065cb48 == function_selector >> 224) {
            addOwner(address);
        } else if (0x7ed1f1dd == function_selector >> 224) {
            DPPFlashLoanCall(address,uint256,uint256,bytes);
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0xa1d48336 == function_selector >> 224) {
            pancakeV3FlashCallback(uint256,uint256,bytes);
        } else if (0xc5ae1568 == function_selector >> 224) {
            0xc5ae1568(function_selector >> 224);
        } else if (0xcf0deba9 == function_selector >> 224) {
            refundBalance();
        } else if (0xd5b99797 == function_selector >> 224) {
            DSPFlashLoanCall(address,uint256,uint256,bytes);
        } else if (0xe9cbafb0 == function_selector >> 224) {
            uniswapV3FlashCallback(uint256,uint256,bytes);
        } else if (0xeb2021c3 == function_selector >> 224) {
            DVMFlashLoanCall(address,uint256,uint256,bytes);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else {
            exit;
        }
    } else {
        exit;
    }
}
