// Decompiled by library.dedaub.com
// 2025.12.18 23:36 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _operators; // STORAGE[0x0]
uint256 stor_6; // STORAGE[0x6]
address _disperse; // STORAGE[0x1] bytes 0 to 19
address _universalRouter; // STORAGE[0x2] bytes 0 to 19
address _poolManager; // STORAGE[0x3] bytes 0 to 19
address stor_4_0_19; // STORAGE[0x4] bytes 0 to 19
address _algebraSwapCallback; // STORAGE[0x5] bytes 0 to 19


// Events
RouterUpdated(address);
OperatorUpdated(address, bool);
Deposited(address, uint256, bool);
Withdrawn(address, uint256);

function disperseETH(address[] recipients, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(recipients <= uint64.max);
    require(4 + recipients + 31 < msg.data.length);
    require(recipients.length <= uint64.max);
    v0 = v1 = recipients.data;
    require((recipients.length << 5) + (4 + recipients) + 32 <= msg.data.length);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    require(_disperse, InvalidParams());
    require(recipients.length, InvalidParams());
    require(amount, InvalidAmount());
    v2 = _SafeMul(recipients.length, amount);
    v3, /* uint256 */ v4 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    require(v4 >= v2, InsufficientBalance());
    0x3159(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), _disperse, v2);
    require(_disperse.code.size);
    v8 = new address[](recipients.length);
    v9 = v10 = v8.data;
    v11 = v12 = 0;
    while (v11 < recipients.length) {
        require(!(msg.data[v0] - address(msg.data[v0])));
        MEM[v9] = address(msg.data[v0]);
        v9 = v9 + 32;
        v0 = v0 + 32;
        v11 = v11 + 1;
    }
    v13, /* uint256 */ v14 = _disperse.call(0x96791507, v8, amount).gas(msg.gas);
    require(v13, v14, RETURNDATASIZE());
    if (v13) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function 0xb8e32292(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    _disperse = varg0;
    emit 0x8160fa6debb3325e547859c1820366102b59a09e51c017649dfb51e19f56a842(varg0);
    return ;
}

function 0xb2c4ce52(address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11) public nonPayable { 
    require(msg.data.length - 4 >= 384);
    require(224 <= msg.data.length - 4);
    v0 = v1 = !_operators[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg8, InvalidAmount());
    v3 = _SafeAdd(varg8, varg11);
    v4, /* uint256 */ v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        v6 = v7 = 32;
        if (32 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    require(v5 >= v3, InsufficientBalance());
    require(varg1 < 8);
    if (0 == !varg1) {
        if (0 == (varg1 == 6)) {
            if (0 == (varg1 == 7)) {
                v9 = v10 = 0x36ab(varg0, varg7, varg8, varg10);
            } else {
                v9 = v11 = 0x36ab(varg0, varg7, varg8, varg10);
            }
        } else {
            require(stor_4_0_19, InvalidParams());
            require(msg.data.length - 68 >= 160);
            v12 = new struct(5);
            require(!((v12 + 160 > uint64.max) | (v12 + 160 < v12)), Panic(65)); // failed memory allocation (too much memory)
            v12.word0 = varg2;
            v12.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v12.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v12.word3 = varg5;
            v12.word4 = varg6;
            v13 = v14 = !address(v12.word0);
            v13 = v15 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(v12.word0);
            if (v15) {
            }
            require(msg.data.length - 68 >= 160);
            v16 = new struct(5);
            require(!((v16 + 160 > uint64.max) | (v16 + 160 < v16)), Panic(65)); // failed memory allocation (too much memory)
            v16.word0 = varg2;
            v16.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v16.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v16.word3 = varg5;
            v16.word4 = varg6;
            v17, v18 = 0x38b4(v16, v13, uint128(varg8), 0, varg10);
            require(msg.data.length - 68 >= 160);
            v19 = new struct(5);
            require(!((v19 + 160 > uint64.max) | (v19 + 160 < v19)), Panic(65)); // failed memory allocation (too much memory)
            v19.word0 = varg2;
            v19.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v19.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v19.word3 = varg5;
            v19.word4 = varg6;
            v20 = v21 = address(v19.word1);
            v20 = v22 = address(v19.word0);
            v23 = v22 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            if (v22 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v23 = v24 = !v22;
            }
            if (v23) {
            }
            v25, /* uint256 */ v5 = address(v20).balanceOf(varg10).gas(msg.gas);
            require(v25, MEM[64], RETURNDATASIZE());
            if (v25) {
                v26 = v27 = 32;
                if (32 > RETURNDATASIZE()) {
                    v26 = v28 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v26 - MEM[64] >= 32);
            }
            if (!v13) {
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size);
                v29 = new bytes[](v18.length);
                MCOPY(v29.data, v18.data, v18.length);
                v29[v18.length] = 0;
                v30 = new uint256[](v17.word0.length);
                v29[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v18.length] = v17.word0.length;
                v31 = v32 = v30.data;
                v33 = v34 = v30 + (v17.word0.length << 5) + 32;
                v35 = v36 = v17.data;
                v37 = v38 = 0;
                while (v37 < v17.word0.length) {
                    MEM[v31] = v33 - v30 - 32;
                    MEM[v33] = MEM[MEM[v35]];
                    MCOPY(v33 + 32, 32 + MEM[v35], MEM[MEM[v35]]);
                    MEM[32 + (MEM[MEM[v35]] + v33)] = 0;
                    v33 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v35]]) + v33 + 32;
                    v35 = v35 + 32;
                    v31 = v31 + 32;
                    v37 = v37 + 1;
                }
                v39, /* uint256 */ v40 = stor_4_0_19.execute(v29, v30, block.timestamp + 1).gas(msg.gas);
                require(v39, v40, RETURNDATASIZE());
                if (v39) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
            } else {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                v41, /* uint256 */ v42 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg8).gas(msg.gas);
                require(v41, v42, RETURNDATASIZE());
                if (v41) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size);
                v43 = new bytes[](v18.length);
                MCOPY(v43.data, v18.data, v18.length);
                v43[v18.length] = 0;
                v44 = new uint256[](v17.word0.length);
                v43[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v18.length] = v17.word0.length;
                v45 = v46 = v44.data;
                v47 = v48 = v44 + (v17.word0.length << 5) + 32;
                v49 = v50 = v17.data;
                v51 = v52 = 0;
                while (v51 < v17.word0.length) {
                    MEM[v45] = v47 - v44 - 32;
                    MEM[v47] = MEM[MEM[v49]];
                    MCOPY(v47 + 32, 32 + MEM[v49], MEM[MEM[v49]]);
                    MEM[32 + (MEM[MEM[v49]] + v47)] = 0;
                    v47 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v49]]) + v47 + 32;
                    v49 = v49 + 32;
                    v45 = v45 + 32;
                    v51 = v51 + 1;
                }
                v53, /* uint256 */ v54 = stor_4_0_19.execute(v43, v44, block.timestamp + 1).value(varg8).gas(msg.gas);
                require(v53, v54, RETURNDATASIZE());
                if (v53) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
            }
            v55, /* uint256 */ v5 = address(v20).balanceOf(varg10).gas(msg.gas);
            require(v55, MEM[64], RETURNDATASIZE());
            if (v55) {
                v56 = v57 = 32;
                if (32 > RETURNDATASIZE()) {
                    v56 = v58 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v56 - MEM[64] >= 32);
            }
            v9 = v59 = _SafeSub(v5, v5);
        }
    } else {
        0x3159(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, varg8);
        v9 = v60 = 0x3cf2(varg0, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg10);
    }
    require(v9 >= varg9, MinimumNotMet());
    0x35a6(varg11);
    require(varg1 < 8);
    if (6 == varg1) {
        require(msg.data.length - 68 >= 160);
        v61 = new struct(5);
        require(!((v61 + 160 > uint64.max) | (v61 + 160 < v61)), Panic(65)); // failed memory allocation (too much memory)
        v61.word0 = varg2;
        v61.word1 = varg3;
        require(!(varg4 - uint24(varg4)));
        v61.word2 = varg4;
        require(!(varg5 - int24(varg5)));
        v61.word3 = varg5;
        v61.word4 = varg6;
        v62 = v63 = address(v61.word1);
        v62 = v64 = address(v61.word0);
        v65 = v64 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        if (v64 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
            v65 = v66 = !v64;
        }
        if (v65) {
        }
    }
    require(!0);
    require(varg1 < 8, Panic(33)); // failed convertion to enum type
    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v62), varg8, v9, 1, varg11, varg1);
    return v9;
}

function receive() public payable { 
    v0 = v1 = bool(msg.value);
    if (v1) {
        v0 = v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != msg.sender;
    }
    if (v0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v3, /* uint256 */ v4 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        if (v3) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        }
        emit Deposited(msg.sender, msg.value, 1);
        exit;
    } else {
        exit;
    }
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(amount <= v1, InsufficientBalance());
    0x3159(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), 0x8bdf3dae4f9817320cb0317521f56607d271fef, amount);
    emit Withdrawn(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), amount);
    return ;
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function withdrawToken(address _tokenContract, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0, /* uint256 */ v1 = _tokenContract.balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(_amount <= v1, InsufficientBalance());
    0x3159(_tokenContract, 0x8bdf3dae4f9817320cb0317521f56607d271fef, _amount);
    emit Withdrawn(_tokenContract, _amount);
    return ;
}

function 0x966f2b6e(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    v0[36] = varg2;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    return ;
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x8bdf3dae4f9817320cb0317521f56607d271fef);
}

function disperse() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _disperse;
}

function setPoolManager(address poolManager_) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    _poolManager = poolManager_;
    return ;
}

function 0x75b6ff6e() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_4_0_19;
}

function isOperator(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = _operators[account];
    if (!v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) == account;
    }
    return bool(v0);
}

function approveToRouter(address _token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    0x360e(_token);
    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
    v0, /* uint256 */ v1 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(_token, _universalRouter, uint160.max, uint48.max).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function PERMIT2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x22d473030f116ddee9f6b43ac78ba3);
}

function depositWETH(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_amount, InvalidAmount());
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = msg.sender;
    MEM[v0 + 68] = this;
    MEM[v0 + 100] = _amount;
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transferFrom(msg.sender, this, _amount).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFromFailed());
    emit Deposited(msg.sender, _amount, 0);
    return ;
}

function setUniversalRouter(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    _universalRouter = varg0;
    emit RouterUpdated(varg0);
    return ;
}

function setOperator(address operator, bool status) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    _operators[operator] = status;
    emit OperatorUpdated(operator, status);
    return ;
}

function 0x46d4c245(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11) public nonPayable { 
    require(msg.data.length - 4 >= 384);
    require(224 <= msg.data.length - 4);
    require(varg10 <= uint64.max);
    require(4 + varg10 + 31 < msg.data.length);
    v0 = v1 = varg10.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg10.data;
    require((v1 << 5) + (4 + varg10) + 32 <= msg.data.length);
    v3 = v4 = !_operators[msg.sender];
    if (v4) {
        v3 = v5 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v3, Unauthorized());
    require(v1, InvalidParams());
    require(varg8, InvalidAmount());
    require(varg9 <= 10000, InvalidParams());
    v0 = v6 = _SafeDiv(varg8, v1);
    require(v6, InvalidAmount());
    v7 = _SafeAdd(varg8, varg11);
    v8, v9 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v9 = v10 = 0;
    if (v8) {
        v11 = v12 = 32;
        if (32 > RETURNDATASIZE()) {
            v11 = v13 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v11 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v11 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v11 - MEM[64] >= 32);
    }
    require(v9 >= v7, InsufficientBalance());
    require(varg1 < 8);
    if (6 == varg1) {
        require(msg.data.length - 68 >= 160);
        v14 = new struct(5);
        require(!((v14 + 160 > uint64.max) | (v14 + 160 < v14)), Panic(65)); // failed memory allocation (too much memory)
        v14.word0 = varg2;
        require(!(varg3 - address(varg3)));
        v14.word1 = varg3;
        require(!(varg4 - uint24(varg4)));
        v14.word2 = varg4;
        require(!(varg5 - int24(varg5)));
        v14.word3 = varg5;
        v14.word4 = varg6;
        v0 = v15 = address(v14.word1);
        v0 = v16 = address(v14.word0);
        v17 = v16 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        if (v16 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
            v17 = v18 = !v16;
        }
        if (v17) {
        }
    }
    require(varg1 < 8);
    if (varg1) {
        if (varg1 - 6) {
            if (0 == (varg1 == 7)) {
                v19 = v20 = 0;
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= address(v21)) {
                    v22 = v23 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v22 = v24 = 0x1000276a4;
                }
                while (v19 < v1) {
                    _algebraSwapCallback = varg0;
                    stor_6 = v6;
                    v25 = 0x30c4(v2, v1, v19);
                    require(!(msg.data[v25] - address(msg.data[v25])));
                    v26 = new uint256[](0);
                    v27, v28, v28 = varg0.swap(address(msg.data[v25]), address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < address(v21), v6, address(v22), v26).gas(msg.gas);
                    require(v27, MEM[64], RETURNDATASIZE());
                    v28 = v29 = 0;
                    v28 = v30 = 0;
                    if (v27) {
                        v31 = v32 = 64;
                        if (v32 > RETURNDATASIZE()) {
                            v31 = v33 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31);
                        require(MEM[64] + v31 - MEM[64] >= 64);
                    }
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < address(v21)) {
                    }
                    require(v28 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v19 = v19 + (0 - v28);
                    require(v19 <= v19, Panic(17)); // arithmetic overflow or underflow
                    v19 = v19 + 1;
                }
            } else {
                v19 = v34 = 0;
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= address(v21)) {
                    v35 = v36 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v35 = v37 = 0x1000276a4;
                }
                while (v19 < v1) {
                    _algebraSwapCallback = varg0;
                    stor_6 = v6;
                    v38 = 0x30c4(v2, v1, v19);
                    require(!(msg.data[v38] - address(msg.data[v38])));
                    v39 = new uint256[](0);
                    v40, v41, v41 = varg0.swap(address(msg.data[v38]), address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < address(v21), v6, address(v35), v39).gas(msg.gas);
                    require(v40, MEM[64], RETURNDATASIZE());
                    v41 = v42 = 0;
                    v41 = v43 = 0;
                    if (v40) {
                        v44 = v45 = 64;
                        if (v45 > RETURNDATASIZE()) {
                            v44 = v46 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v44 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v44 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v44 + 31);
                        require(MEM[64] + v44 - MEM[64] >= 64);
                    }
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < address(v21)) {
                    }
                    require(v41 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v19 = v19 + (0 - v41);
                    require(v19 <= v19, Panic(17)); // arithmetic overflow or underflow
                    v19 = v19 + 1;
                }
            }
            if (varg11) {
                v47 = 0x3b8a(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg11);
                emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(address(v47), varg11);
            }
            emit 0x19ba06bd01e8939e0be6f43fac0dbfbc281e5bf60c94935f7fdda830fbe7afc1(address(v21), varg8, v19, v1);
            return v19;
        } else {
            require(stor_4_0_19, InvalidParams());
            v48 = v49 = 0;
            require(msg.data.length - 68 >= 160);
            v50 = new struct(5);
            require(!((v50 + 160 > uint64.max) | (v50 + 160 < v50)), Panic(65)); // failed memory allocation (too much memory)
            v50.word0 = varg2;
            require(!(varg3 - address(varg3)));
            v50.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v50.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v50.word3 = varg5;
            v50.word4 = varg6;
            v51 = v52 = !address(v50.word0);
            v51 = v53 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(v50.word0);
            if (v53) {
            }
            require(msg.data.length - 68 >= 160);
            v54 = new struct(5);
            require(!((v54 + 160 > uint64.max) | (v54 + 160 < v54)), Panic(65)); // failed memory allocation (too much memory)
            v54.word0 = varg2;
            require(!(varg3 - address(varg3)));
            v54.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v54.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v54.word3 = varg5;
            v54.word4 = varg6;
            v55 = v56 = address(v54.word1);
            v55 = v57 = address(v54.word0);
            v58 = v57 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            if (v57 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v58 = v59 = !v57;
            }
            if (v58) {
            }
            v60 = _SafeMul(v6, v1);
            if (v61) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                v62, /* uint256 */ v63 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v60).gas(msg.gas);
                require(v62, v63, RETURNDATASIZE());
                if (v62) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v0 = v64 = 0;
                }
            }
            v65 = v66 = 32;
            v67 = v68 = uint128(v6);
            while (v0 < v1) {
                v69 = 0x30c4(v0, v1, v0);
                require(!(msg.data[v69] - address(msg.data[v69])));
                require(msg.data.length - 68 >= 160);
                v70 = new struct(5);
                require(!((v70 + 160 > uint64.max) | (v70 + 160 < v70)), Panic(65)); // failed memory allocation (too much memory)
                v70.word0 = varg2;
                require(!(varg3 - address(varg3)));
                v70.word1 = varg3;
                require(!(varg4 - uint24(varg4)));
                v70.word2 = varg4;
                require(!(varg5 - int24(varg5)));
                v70.word3 = varg5;
                v70.word4 = varg6;
                MEM[0x60021] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[0x60022] = 0x1000000000000000000000000000000000000000000000000000000000000000;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v71 = new struct(4);
                require(!((v71 + 128 < v71) | (v71 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v71.word0 = 3;
                v72 = v73 = 0;
                while (v72 < 96) {
                    MEM[v71 + v72 + 32] = 96;
                    v72 = v72 + 32;
                }
                v74 = new struct(5);
                require(!((v74 + 160 > uint64.max) | (v74 + 160 < v74)), Panic(65)); // failed memory allocation (too much memory)
                v74.word0 = v70;
                v74.word1 = bool(v51);
                v74.word2 = v67;
                v74.word3 = 1;
                v75 = new struct(1);
                require(!((v75 + 32 < v75) | (v75 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v75.word0 = v0;
                v74.word4 = v75;
                MEM[MEM[64] + v66] = v66;
                MEM[MEM[64] + 64] = address(MEM[v74.word0]);
                MEM[MEM[64] + 96] = address(MEM[v74.word0 + v66]);
                MEM[MEM[64] + 128] = uint24(MEM[v74.word0 + 64]);
                MEM[MEM[64] + 160] = int24(MEM[v74.word0 + 96]);
                MEM[MEM[64] + 192] = address(MEM[v74.word0 + 128]);
                MEM[MEM[64] + 224] = bool(v74.word1);
                MEM[MEM[64] + (uint8.max + 1)] = uint128(v74.word2);
                MEM[MEM[64] + 288] = uint128(v74.word3);
                MEM[MEM[64] + 320] = 288;
                MEM[MEM[64] + 352] = MEM[v74.word4];
                MCOPY(MEM[64] + 352 + 32, 32 + v74.word4, MEM[v74.word4]);
                MEM[32 + (MEM[v74.word4] + (MEM[64] + 352))] = 0;
                MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v74.word4]) + (MEM[64] + 352) + 32 - MEM[64] - 32;
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v74.word4]) + (MEM[64] + 352) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v74.word4]) + (MEM[64] + 352) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v76 = v71.data;
                v71.word1 = MEM[64];
                require(v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v77 = v71.data;
                if (!v51) {
                    v78 = v79 = address(v70.word1);
                } else {
                    v78 = v80 = address(v70.word0);
                }
                v81 = new struct(3);
                v82 = v81.data;
                v81.word1 = address(v78);
                v81.word2 = v67;
                v81.word0 = 64;
                require(!((v81 + 96 < v81) | (v81 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v71.word2 = v81;
                require(1 < v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!v51) {
                    v83 = v84 = address(v70.word0);
                } else {
                    v83 = v85 = address(v70.word1);
                }
                v86 = new struct(4);
                v87 = v86.data;
                v86.word1 = address(v83);
                v86.word2 = address(msg.data[v69]);
                v86.word3 = 10000;
                v86.word0 = 96;
                require(!((v86 + 128 < v86) | (v86 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(2 < v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v71.word3 = v86;
                require(2 < v71.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v88 = new struct(2);
                require(!((v88 + 64 < v88) | (v88 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v88.word0 = 1;
                v89 = v90 = 0;
                while (v89 < 32) {
                    MEM[v88 + v89 + 32] = 96;
                    v89 = v89 + 32;
                }
                MEM[MEM[64] + v66] = 64;
                MEM[MEM[64] + 96] = v91.length;
                MCOPY(MEM[64] + 96 + 32, v91.data, v91.length);
                MEM[32 + (v91.length + (MEM[64] + 96))] = 0;
                MEM[MEM[64] + 64] = 128;
                MEM[32 + (MEM[64] + 96) + 32] = v71.word0.length;
                v92 = 32 + (MEM[64] + 96) + 32 + 32;
                v93 = v94 = 32 + (MEM[64] + 96) + 32 + 96 + 32;
                v95 = v71.data;
                v96 = 0;
                while (v96 < v71.word0.length) {
                    MEM[v92] = v93 - (32 + (MEM[64] + 96) + 32) - 32;
                    MEM[v93] = MEM[MEM[v95]];
                    MCOPY(v93 + 32, 32 + MEM[v95], MEM[MEM[v95]]);
                    MEM[32 + (MEM[MEM[v95]] + v93)] = 0;
                    v93 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v95]]) + v93 + 32;
                    v95 = v95 + 32;
                    v92 = v92 + 32;
                    v96 = v96 + 1;
                }
                MEM[MEM[64]] = v93 - MEM[64] - 32;
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v93 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v93 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(v88.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v97 = v88.data;
                v88.word1 = MEM[64];
                require(v88.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v98 = v88.data;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                v99 = 0x30c4(v0, v1, v0);
                require(!(msg.data[v99] - address(msg.data[v99])));
                MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v100, /* uint256 */ v0 = address(v55).balanceOf(address(msg.data[v99])).gas(msg.gas);
                if (!v100) {
                    RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v100) {
                        if (v66 > RETURNDATASIZE()) {
                            v65 = v101 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v65 - MEM[64] >= v66);
                    }
                    if (!v61) {
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v0, v0);
                        MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 96;
                        MEM[MEM[64] + 4 + 96] = v102.length;
                        MCOPY(MEM[64] + 4 + 96 + 32, v102.data, v102.length);
                        MEM[32 + (v102.length + (MEM[64] + 4 + 96))] = 0;
                        MEM[MEM[64] + 4 + 32] = 160;
                        MEM[32 + (MEM[64] + 4 + 96) + 32] = v88.word0.length;
                        v103 = v104 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                        v105 = v106 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                        v107 = v108 = v88.data;
                        v109 = v110 = 0;
                        while (v109 < v88.word0.length) {
                            MEM[v103] = v105 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                            MEM[v105] = MEM[MEM[v107]];
                            MCOPY(v105 + 32, 32 + MEM[v107], MEM[MEM[v107]]);
                            MEM[32 + (MEM[MEM[v107]] + v105)] = 0;
                            v105 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v107]]) + v105 + 32;
                            v107 = v107 + 32;
                            v103 = v103 + 32;
                            v109 = v109 + 1;
                        }
                        MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                        v111 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v34e7V0x35150x34eaV0x355dV0x2a10 - MEM[64]], MEM[MEM[64]:MEM[64] + v1f41arg0x1]).value(v0).gas(msg.gas);
                        if (!v111) {
                            RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v111) {
                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v0, v0, v0);
                            }
                            v112, v113, v114 = v115, v116, v67, v0, v0 = 0x2930(v1, v0, 0x15248, 10550, v0, v48, v67, v0);
                            v117 = msg.data[v112];
                            require(!(v117 - address(v117)));
                            // Unknown jump to Block 0x2936. Refer to 3-address code (TAC);
                        }
                    } else {
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v0, v0);
                        MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 96;
                        MEM[MEM[64] + 4 + 96] = v102.length;
                        MCOPY(MEM[64] + 4 + 96 + 32, v102.data, v102.length);
                        MEM[32 + (v102.length + (MEM[64] + 4 + 96))] = 0;
                        MEM[MEM[64] + 4 + 32] = 160;
                        MEM[32 + (MEM[64] + 4 + 96) + 32] = v88.word0.length;
                        v118 = v119 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                        v120 = v121 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                        v122 = v123 = v88.data;
                        v124 = v125 = 0;
                        while (v124 < v88.word0.length) {
                            MEM[v118] = v120 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                            MEM[v120] = MEM[MEM[v122]];
                            MCOPY(v120 + 32, 32 + MEM[v122], MEM[MEM[v122]]);
                            MEM[32 + (MEM[MEM[v122]] + v120)] = 0;
                            v120 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v122]]) + v120 + 32;
                            v122 = v122 + 32;
                            v118 = v118 + 32;
                            v124 = v124 + 1;
                        }
                        MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                        v126 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v34e7V0x35150x34eaV0x355dV0x28ec - MEM[64]], MEM[MEM[64]:MEM[64] + v1f41arg0x1]).value(v0).gas(msg.gas);
                        if (!v126) {
                            RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v126) {
                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v0, v0, v0);
                            }
                            v127, v128, v114 = v129, v116, v67, v0, v0 = 0x2930(v1, v0, 0x151da, 10550, v0, v48, v67, v0);
                            v117 = v130 = msg.data[v127];
                            require(!(v130 - address(v130)));
                        }
                    }
                    v131, /* uint256 */ v0 = address(v55).balanceOf(address(v117)).gas(msg.gas);
                    if (!v131) {
                        RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v131) {
                            if (v66 > RETURNDATASIZE()) {
                                v65 = v132 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v65 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v65 - MEM[64] >= v66);
                        }
                        v133 = _SafeSub(v0, v114);
                        v48 = _SafeAdd(v116, v133);
                        v0 = v0 + 1;
                    }
                }
            }
            if (v61) {
                v51 = v134 = bool(this.balance);
            }
            if (v51) {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v0, v0);
                v135, /* uint256 */ v136 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
                require(v135, v136, RETURNDATASIZE());
                if (v135) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v0, v0, v0);
                }
            }
            0x35a6(varg11);
            emit 0x19ba06bd01e8939e0be6f43fac0dbfbc281e5bf60c94935f7fdda830fbe7afc1(address(v21), varg8, v48, v1);
            return v48;
        }
    } else {
        v137 = v138 = MEM[64];
        v139 = varg0.token0().gas(msg.gas);
        require(v139, MEM[64], RETURNDATASIZE());
        if (v139) {
            v140 = v141 = 9343;
            if (32 <= RETURNDATASIZE()) {
                require(!((v138 + 32 < v138) | (v138 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v138 + 32;
                v142 = v143 = v138 + 32;
            }
        }
        if (v0 < v0) {
            v144, /* uint256 */ v0, /* uint256 */ v0, /* uint32 */ v145 = address(v0).getReserves().gas(msg.gas);
            if (!v144) {
                RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                if (v144) {
                    v146 = v147 = 96;
                    if (v147 > RETURNDATASIZE()) {
                        v146 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v146 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v146 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v146 + 31);
                    require(MEM[64] + v146 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v0 - uint112(v0)));
                    require(!(v145 - uint32(v145)));
                }
                v137 = v148 = MEM[64];
                v149 = address(v0).token0().gas(msg.gas);
                if (!v149) {
                    RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v0 = v150 = 8596;
                    if (v149) {
                        v140 = v151 = 9254;
                        v152 = v153 = 32;
                        if (v153 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x242c0x1f41. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
        } else {
            0x35a6(v0);
            emit 0x19ba06bd01e8939e0be6f43fac0dbfbc281e5bf60c94935f7fdda830fbe7afc1(address(v0), v0, v0, v0);
            return v0;
        }
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(v0)) {
            v154 = v155 = uint112(v0);
            v156 = v157 = uint112(v0);
        } else {
            v154 = v158 = uint112(v0);
            v156 = v159 = uint112(v0);
        }
        require(v0, Error('INSUFFICIENT_INPUT_AMOUNT'));
        v160 = bool(v156);
        if (v160) {
            v160 = v161 = bool(v154);
        }
        require(v160, Error('INSUFFICIENT_LIQUIDITY'));
        require(!(997 - v0 * 997 / v0), Panic(17)); // arithmetic overflow or underflow
        v162 = _SafeMul(v0 * 997, v154);
        require((1000 == v156 * 1000 / v156) | !v156, Panic(17)); // arithmetic overflow or underflow
        v163 = _SafeAdd(v156 * 1000, v0 * 997);
        v164 = _SafeDiv(v162, v163);
        if (10000 - v165 > 10000) {
            MEM[v0] = 0x4e487b7100000000000000000000000000000000000000000000000000000000;
            MEM[4] = 17;
            revert(v0, 36);
        } else {
            v166 = _SafeMul(v164, 10000 - v165);
            v167 = 0x30c4(v0, v0, v0);
            require(!(msg.data[v167] - address(msg.data[v167])));
            v168, /* uint256 */ v0 = address(v0).balanceOf(address(msg.data[v167])).gas(msg.gas);
            if (!v168) {
                RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                if (v168) {
                    v169 = v170 = 32;
                    if (v170 > RETURNDATASIZE()) {
                        v169 = v171 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v169 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v169 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v169 - MEM[64] >= 32);
                }
                0x3159(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v0, v0);
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(v0)) {
                    v172, v173, v174 = v175, v176 = v177, v178 = v179, v180, v181 = v182, v165, v0 = 0x226d(v0, v0, 0x14fe4, 8819, v0, v164, v0, v0, v166 / 10000, v165);
                    v183 = msg.data[v172];
                    require(!(v183 - address(v183)));
                    // Unknown jump to Block 0x2273. Refer to 3-address code (TAC);
                } else {
                    v184, v185, v174 = v186, v176 = v187, v178 = v188, v180, v181 = v189, v165, v0 = 0x226d(v0, v0, 0x14f9c, 8819, v164, v0, v0, v0, v166 / 10000, v165);
                    v183 = v190 = msg.data[v184];
                    require(!(v190 - address(v190)));
                }
                require((address(v0)).code.size, v0, v0);
                v191 = new uint256[](0);
                v192 = address(v0).swap(v176, v174, address(v183), v191).value(v0).gas(msg.gas);
                if (!v192) {
                    RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v192) {
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31);
                        require(!v0, v0, v0);
                    }
                    v193 = 0x30c4(v0, v0, v0);
                    require(!(msg.data[v193] - address(msg.data[v193])));
                    v194, /* uint256 */ v0 = address(v0).balanceOf(address(msg.data[v193])).gas(msg.gas);
                    if (!v194) {
                        RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v194) {
                            v195 = v196 = 32;
                            if (v196 > RETURNDATASIZE()) {
                                v195 = v197 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v195 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v195 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v195 - MEM[64] >= 32);
                        }
                        v198 = _SafeSub(v0, v178);
                        if (v198 < v181) {
                            MEM[v0] = 0x8199f5f300000000000000000000000000000000000000000000000000000000;
                            revert(v0, 4);
                        } else {
                            v0 = _SafeAdd(v180, v198);
                            v0 = v0 + 1;
                        }
                    }
                }
            }
        }
        v152 = RETURNDATASIZE();
        require(!((v137 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v152 + 31) < v137) | (v137 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v152 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v137 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v152 + 31);
        v142 = v137 + v152;
        require(v142 - v137 >= 32);
        v0 = v199 = MEM[v137];
        require(!(v199 - address(v199)));
        // Unknown jump to Block ['0x2426', '0x247f']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x214b. Refer to 3-address code (TAC);
    }
}

function 0x226d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) private { 
    require(varg1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg1 << 5) + v0, varg3, varg4, varg5, varg6, varg7, varg8, varg9, v0;
}

function 0x2930(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    require(varg1 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg1 << 5) + v0, varg3, varg4, varg5, varg6, varg7, v0;
}

function universalRouter() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _universalRouter;
}

function 0x26eb54b5(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < 8);
    require(varg0 < 8, Panic(33)); // failed convertion to enum type
    if (varg0 == 1) {
        v0 = v1 = 100;
    } else if (varg0 == 2) {
        v0 = v2 = 500;
    } else if (varg0 == 3) {
        v0 = v3 = 2500;
    } else if (varg0 == 4) {
        v0 = v4 = 3000;
    } else if (5 == varg0) {
        v0 = v5 = 10000;
    } else {
        v0 = v6 = 0;
    }
    return uint24(v0);
}

function operators(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _operators[varg0];
}

function getWETHBalance() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((128 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v3 + 31) < 128) | (128 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v3 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = 128 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v3 + 31);
        require(128 + v3 - 128 >= 32);
        v1 = v6 = MEM[128];
    }
    return v1;
}

function 0x2e59(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = msg.sender;
    v0[36] = varg1;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(msg.sender, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed());
    return ;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x30c4(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x3159(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    v0[36] = varg2;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = !v2;
    if (bool(v2)) {
        v7 = v8 = bool(MEM[v4]);
        if (v8) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v9 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed());
    return ;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x35a6(uint256 varg0) private { 
    if (varg0) {
        v0 = 0x3b8a(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, varg0);
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(address(v0), varg0);
        return ;
    } else {
        return ;
    }
}

function 0x360e(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    return ;
}

function 0x36ab(address varg0, address varg1, uint256 varg2, address varg3) private { 
    _algebraSwapCallback = varg0;
    stor_6 = varg2;
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
        v0 = v1 = 0;
        v2 = v3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v0 = v4 = 0;
        v2 = v5 = 0x1000276a4;
    }
    v6 = new uint256[](0);
    v7, /* uint256 */ v8, /* uint256 */ v8 = varg0.swap(varg3, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1, varg2, address(v2), v6).value(v0).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    v8 = v9 = 0;
    v8 = v10 = 0;
    if (v7) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v11 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 < MEM[64]) | (MEM[64] + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v11 = v12 = MEM[64] + 64;
        }
        require(v11 - MEM[64] >= 64);
    }
    _algebraSwapCallback = 0;
    stor_6 = 0;
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1) {
    }
    require(v8 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v8;
}

function 0xfc19619c(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 416);
    v0 = v1 = !_operators[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
    require(msg.data[4 + varg0 + msg.data[varg0 + 132]], InvalidParams());
    require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
    require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
    require(!(msg.data[4 + varg0 + msg.data[varg0 + 132]] - msg.data[4 + varg0 + msg.data[varg0 + 164]]), ArrayLengthMismatch());
    require(msg.data[varg0 + 68], InvalidAmount());
    v3 = _SafeAdd(msg.data[varg0 + 68], msg.data[varg0 + 196]);
    v4, /* uint256 */ v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        v6 = v7 = 32;
        if (32 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    require(v5 >= v3, InsufficientBalance());
    while (1) {
        require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
        require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
        require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
        if (v5 >= msg.data[4 + varg0 + msg.data[varg0 + 164]]) {
            require(!(v5 - 10000), InvalidParams());
            require(msg.data[varg0 + 228] < 8);
            if (msg.data[varg0 + 228]) {
                if (msg.data[varg0 + 228] - 6) {
                    if (msg.data[varg0 + 228] - 7) {
                        require(!(varg0.length - address(varg0.length)));
                        require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                        v9 = v10 = 0x36ab(varg0.length, msg.data[varg0.data], msg.data[varg0 + 68], this);
                    } else {
                        require(!(varg0.length - address(varg0.length)));
                        require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                        v9 = v11 = 0x36ab(varg0.length, msg.data[varg0.data], msg.data[varg0 + 68], this);
                    }
                } else {
                    require(stor_4_0_19, InvalidParams());
                    require(msg.data.length - (varg0 + 260) >= 160);
                    v12 = new struct(5);
                    require(!((v12 + 160 > uint64.max) | (v12 + 160 < v12)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[varg0 + 260] - address(msg.data[varg0 + 260])));
                    v12.word0 = msg.data[varg0 + 260];
                    require(!(msg.data[varg0 + 260 + 32] - address(msg.data[varg0 + 260 + 32])));
                    v12.word1 = msg.data[varg0 + 260 + 32];
                    require(!(msg.data[varg0 + 260 + 64] - uint24(msg.data[varg0 + 260 + 64])));
                    v12.word2 = msg.data[varg0 + 260 + 64];
                    require(!(msg.data[varg0 + 260 + 96] - int24(msg.data[varg0 + 260 + 96])));
                    v12.word3 = msg.data[varg0 + 260 + 96];
                    require(!(msg.data[varg0 + 260 + 128] - address(msg.data[varg0 + 260 + 128])));
                    v12.word4 = msg.data[varg0 + 260 + 128];
                    v13 = v14 = !address(v12.word0);
                    v13 = v15 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(v12.word0);
                    if (v15) {
                    }
                    require(msg.data.length - (varg0 + 260) >= 160);
                    v16 = new struct(5);
                    require(!((v16 + 160 > uint64.max) | (v16 + 160 < v16)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[varg0 + 260] - address(msg.data[varg0 + 260])));
                    v16.word0 = msg.data[varg0 + 260];
                    require(!(msg.data[varg0 + 260 + 32] - address(msg.data[varg0 + 260 + 32])));
                    v16.word1 = msg.data[varg0 + 260 + 32];
                    require(!(msg.data[varg0 + 260 + 64] - uint24(msg.data[varg0 + 260 + 64])));
                    v16.word2 = msg.data[varg0 + 260 + 64];
                    require(!(msg.data[varg0 + 260 + 96] - int24(msg.data[varg0 + 260 + 96])));
                    v16.word3 = msg.data[varg0 + 260 + 96];
                    require(!(msg.data[varg0 + 260 + 128] - address(msg.data[varg0 + 260 + 128])));
                    v16.word4 = msg.data[varg0 + 260 + 128];
                    v17, v18 = 0x38b4(v16, v13, uint128(msg.data[varg0 + 68]), 0, this);
                    require(msg.data.length - (varg0 + 260) >= 160);
                    v19 = new struct(5);
                    require(!((v19 + 160 > uint64.max) | (v19 + 160 < v19)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[varg0 + 260] - address(msg.data[varg0 + 260])));
                    v19.word0 = msg.data[varg0 + 260];
                    require(!(msg.data[varg0 + 260 + 32] - address(msg.data[varg0 + 260 + 32])));
                    v19.word1 = msg.data[varg0 + 260 + 32];
                    require(!(msg.data[varg0 + 260 + 64] - uint24(msg.data[varg0 + 260 + 64])));
                    v19.word2 = msg.data[varg0 + 260 + 64];
                    require(!(msg.data[varg0 + 260 + 96] - int24(msg.data[varg0 + 260 + 96])));
                    v19.word3 = msg.data[varg0 + 260 + 96];
                    require(!(msg.data[varg0 + 260 + 128] - address(msg.data[varg0 + 260 + 128])));
                    v19.word4 = msg.data[varg0 + 260 + 128];
                    v20 = v21 = address(v19.word1);
                    v20 = v22 = address(v19.word0);
                    v23 = v22 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    if (v22 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                        v23 = v24 = !v22;
                    }
                    if (v23) {
                    }
                    v25, /* uint256 */ v5 = address(v20).balanceOf(this).gas(msg.gas);
                    require(v25, MEM[64], RETURNDATASIZE());
                    if (v25) {
                        v26 = v27 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v26 = v28 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v26 - MEM[64] >= 32);
                    }
                    if (!v13) {
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size);
                        v29 = new bytes[](v18.length);
                        MCOPY(v29.data, v18.data, v18.length);
                        v29[v18.length] = 0;
                        v30 = new uint256[](v17.word0.length);
                        v29[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v18.length] = v17.word0.length;
                        v31 = v32 = v30.data;
                        v33 = v34 = v30 + (v17.word0.length << 5) + 32;
                        v35 = v36 = v17.data;
                        v37 = v38 = 0;
                        while (v37 < v17.word0.length) {
                            MEM[v31] = v33 - v30 - 32;
                            MEM[v33] = MEM[MEM[v35]];
                            MCOPY(v33 + 32, 32 + MEM[v35], MEM[MEM[v35]]);
                            MEM[32 + (MEM[MEM[v35]] + v33)] = 0;
                            v33 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v35]]) + v33 + 32;
                            v35 = v35 + 32;
                            v31 = v31 + 32;
                            v37 = v37 + 1;
                        }
                        v39, /* uint256 */ v40 = stor_4_0_19.execute(v29, v30, block.timestamp + 1).gas(msg.gas);
                        require(v39, v40, RETURNDATASIZE());
                        if (v39) {
                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                        v41, /* uint256 */ v42 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 68]).gas(msg.gas);
                        require(v41, v42, RETURNDATASIZE());
                        if (v41) {
                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size);
                        v43 = new bytes[](v18.length);
                        MCOPY(v43.data, v18.data, v18.length);
                        v43[v18.length] = 0;
                        v44 = new uint256[](v17.word0.length);
                        v43[0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v18.length] = v17.word0.length;
                        v45 = v46 = v44.data;
                        v47 = v48 = v44 + (v17.word0.length << 5) + 32;
                        v49 = v50 = v17.data;
                        v51 = v52 = 0;
                        while (v51 < v17.word0.length) {
                            MEM[v45] = v47 - v44 - 32;
                            MEM[v47] = MEM[MEM[v49]];
                            MCOPY(v47 + 32, 32 + MEM[v49], MEM[MEM[v49]]);
                            MEM[32 + (MEM[MEM[v49]] + v47)] = 0;
                            v47 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v49]]) + v47 + 32;
                            v49 = v49 + 32;
                            v45 = v45 + 32;
                            v51 = v51 + 1;
                        }
                        v53, /* uint256 */ v54 = stor_4_0_19.execute(v43, v44, block.timestamp + 1).value(msg.data[varg0 + 68]).gas(msg.gas);
                        require(v53, v54, RETURNDATASIZE());
                        if (v53) {
                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                    }
                    v55, /* uint256 */ v5 = address(v20).balanceOf(this).gas(msg.gas);
                    require(v55, MEM[64], RETURNDATASIZE());
                    if (v55) {
                        v56 = v57 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v56 = v58 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v56 - MEM[64] >= 32);
                    }
                    v9 = v59 = _SafeSub(v5, v5);
                }
            } else {
                require(!(varg0.length - address(varg0.length)));
                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                v60, /* uint256 */ v5 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                require(v60, MEM[64], RETURNDATASIZE());
                if (v60) {
                    v61 = v62 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v61 = v63 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v61 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v61 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v61 - MEM[64] >= 32);
                }
                0x3159(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0.length, msg.data[varg0 + 68]);
                v64 = 0x3cf2(varg0.length, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), this);
                v65, /* uint256 */ v5 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                require(v65, MEM[64], RETURNDATASIZE());
                if (v65) {
                    v66 = v67 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v66 = v68 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v66 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v66 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v66 - MEM[64] >= 32);
                }
                v9 = v69 = _SafeSub(v5, v5);
            }
            require(v9 >= msg.data[varg0 + 100], MinimumNotMet());
            require(!0);
            if (msg.data[varg0 + 228] - 6) {
                v70 = v71 = msg.data[varg0.data];
                require(!(v71 - address(v71)));
            } else {
                require(msg.data.length - (varg0 + 260) >= 160);
                v72 = new struct(5);
                require(!((v72 + 160 > uint64.max) | (v72 + 160 < v72)), Panic(65)); // failed memory allocation (too much memory)
                require(!(msg.data[varg0 + 260] - address(msg.data[varg0 + 260])));
                v72.word0 = msg.data[varg0 + 260];
                require(!(msg.data[varg0 + 260 + 32] - address(msg.data[varg0 + 260 + 32])));
                v72.word1 = msg.data[varg0 + 260 + 32];
                require(!(msg.data[varg0 + 260 + 64] - uint24(msg.data[varg0 + 260 + 64])));
                v72.word2 = msg.data[varg0 + 260 + 64];
                require(!(msg.data[varg0 + 260 + 96] - int24(msg.data[varg0 + 260 + 96])));
                v72.word3 = msg.data[varg0 + 260 + 96];
                require(!(msg.data[varg0 + 260 + 128] - address(msg.data[varg0 + 260 + 128])));
                v72.word4 = msg.data[varg0 + 260 + 128];
                v70 = v73 = address(v72.word1);
                v70 = v74 = address(v72.word0);
                v75 = v74 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                if (v74 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    v75 = v76 = !v74;
                }
                if (v75) {
                }
            }
            while (1) {
                require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                if (v5 >= msg.data[4 + varg0 + msg.data[varg0 + 132]]) {
                    0x35a6(msg.data[varg0 + 196]);
                    require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                    require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                    require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                    require(msg.data[varg0 + 228] < 8, Panic(33)); // failed convertion to enum type
                    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v70), msg.data[varg0 + 68], v9, msg.data[4 + varg0 + msg.data[varg0 + 132]], msg.data[varg0 + 196], msg.data[varg0 + 228]);
                    return v9;
                } else {
                    require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
                    require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
                    require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
                    v77 = 0x30c4(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v5);
                    v78 = _SafeMul(v9, msg.data[v77]);
                    if (v78 / 10000) {
                        require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                        require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                        require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                        v79 = 0x30c4(32 + (4 + varg0 + msg.data[varg0 + 132]), msg.data[4 + varg0 + msg.data[varg0 + 132]], v5);
                        require(!(msg.data[v79] - address(msg.data[v79])));
                        0x3159(v70, msg.data[v79], v78 / 10000);
                    }
                    v5 = v5 + 1;
                }
            }
        } else {
            require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
            v80 = 0x30c4(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v5);
            v5 = _SafeAdd(v5, msg.data[v80]);
            v5 = v5 + 1;
        }
    }
}

function 0x38b4(struct(5) varg0, uint256 varg1, uint128 varg2, uint128 varg3, address varg4) private { 
    MEM[0x60021] = 0xc00000000000000000000000000000000000000000000000000000000000000;
    MEM[0x60022] = 0x1000000000000000000000000000000000000000000000000000000000000000;
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    v0 = new struct(4);
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 3;
    v1 = v2 = 0;
    while (v1 < 96) {
        MEM[v0 + v1 + 32] = 96;
        v1 = v1 + 32;
    }
    v3 = new struct(5);
    require(!((v3 + 160 > uint64.max) | (v3 + 160 < v3)), Panic(65)); // failed memory allocation (too much memory)
    v3.word0 = varg0;
    v3.word1 = bool(varg1);
    v3.word2 = varg2;
    v3.word3 = varg3;
    v4 = new struct(1);
    require(!((v4 + 32 < v4) | (v4 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4.word0 = 0;
    v3.word4 = v4;
    MEM[MEM[64] + 32] = 32;
    MEM[MEM[64] + 64] = address(MEM[v3.word0]);
    MEM[MEM[64] + 96] = address(MEM[v3.word0 + 32]);
    MEM[MEM[64] + 128] = uint24(MEM[v3.word0 + 64]);
    MEM[MEM[64] + 160] = int24(MEM[v3.word0 + 96]);
    MEM[MEM[64] + 192] = address(MEM[v3.word0 + 128]);
    MEM[MEM[64] + 224] = bool(v3.word1);
    MEM[MEM[64] + (uint8.max + 1)] = uint128(v3.word2);
    MEM[MEM[64] + 288] = uint128(v3.word3);
    MEM[MEM[64] + 320] = 288;
    MEM[MEM[64] + 352] = MEM[v3.word4];
    MCOPY(MEM[64] + 352 + 32, 32 + v3.word4, MEM[v3.word4]);
    MEM[32 + (MEM[v3.word4] + (MEM[64] + 352))] = 0;
    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3.word4]) + (MEM[64] + 352) + 32 - MEM[64] - 32;
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3.word4]) + (MEM[64] + 352) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v3.word4]) + (MEM[64] + 352) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v5 = v0.data;
    v0.word1 = MEM[64];
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v6 = v0.data;
    if (!varg1) {
        v7 = v8 = address(varg0.word1);
    } else {
        v7 = v9 = address(varg0.word0);
    }
    v10 = new struct(3);
    v11 = v10.data;
    v10.word1 = address(v7);
    v10.word2 = varg2;
    v10.word0 = 64;
    require(!((v10 + 96 < v10) | (v10 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(1 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0.word2 = v10;
    require(1 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (!varg1) {
        v12 = v13 = address(varg0.word0);
    } else {
        v12 = v14 = address(varg0.word1);
    }
    v15 = new struct(4);
    v16 = v15.data;
    v15.word1 = address(v12);
    v15.word2 = varg4;
    v15.word3 = 10000;
    v15.word0 = 96;
    require(!((v15 + 128 < v15) | (v15 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(2 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0.word3 = v15;
    require(2 < v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v17 = new struct(2);
    require(!((v17 + 64 < v17) | (v17 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v17.word0 = 1;
    v18 = v19 = 0;
    while (v18 < 32) {
        MEM[v17 + v18 + 32] = 96;
        v18 = v18 + 32;
    }
    MEM[MEM[64] + 32] = 64;
    MEM[MEM[64] + 96] = v20.length;
    MCOPY(MEM[64] + 96 + 32, v20.data, v20.length);
    MEM[32 + (v20.length + (MEM[64] + 96))] = 0;
    MEM[MEM[64] + 64] = 128;
    MEM[32 + (MEM[64] + 96) + 32] = v0.word0.length;
    v21 = 32 + (MEM[64] + 96) + 32 + 32;
    v22 = v23 = 32 + (MEM[64] + 96) + 32 + 96 + 32;
    v24 = v0.data;
    v25 = 0;
    while (v25 < v0.word0.length) {
        MEM[v21] = v22 - (32 + (MEM[64] + 96) + 32) - 32;
        MEM[v22] = MEM[MEM[v24]];
        MCOPY(v22 + 32, 32 + MEM[v24], MEM[MEM[v24]]);
        MEM[32 + (MEM[MEM[v24]] + v22)] = 0;
        v22 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v24]]) + v22 + 32;
        v24 = v24 + 32;
        v21 = v21 + 32;
        v25 = v25 + 1;
    }
    MEM[MEM[64]] = v22 - MEM[64] - 32;
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v22 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v22 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v17.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v26 = v17.data;
    v17.word1 = MEM[64];
    require(v17.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v27 = v17.data;
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    return v17, 16;
}

function 0x3b8a(address varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    if (!varg1) {
        return 0;
    } else {
        require(varg0.code.size);
        v2, /* uint256 */ v3 = varg0.withdraw(varg1).gas(msg.gas);
        require(v2, v3, RETURNDATASIZE());
        if (v2) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v0 = v4 = 0;
        }
        v5, /* uint256 */ v6 = block.coinbase.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v7 = v8 = new bytes[](RETURNDATASIZE());
            require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v6 = v8.data;
            RETURNDATACOPY(v6, 0, RETURNDATASIZE());
        }
        require(v5, fullExit());
        return block.coinbase;
    }
}

function 0x3c12(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg0, Error('INSUFFICIENT_INPUT_AMOUNT'));
    v0 = bool(varg1);
    if (v0) {
        v0 = v1 = bool(varg2);
    }
    require(v0, Error('INSUFFICIENT_LIQUIDITY'));
    require(!(997 - varg0 * 997 / varg0), Panic(17)); // arithmetic overflow or underflow
    v2 = _SafeMul(varg0 * 997, varg2);
    require((1000 == varg1 * 1000 / varg1) | !varg1, Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeAdd(varg1 * 1000, varg0 * 997);
    v4 = _SafeDiv(v2, v3);
    return v4;
}

function 0x3cf2(address varg0, address varg1, address varg2) private { 
    v0 = varg0;
    v1, /* uint112 */ v2, /* uint112 */ v3, /* uint32 */ v4 = v0.getReserves().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v5 = 0;
    v3 = v6 = 0;
    if (v1) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v7 = v8 = MEM[64] + 96;
        }
        require(v7 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - uint112(v3)));
        require(!(v4 - uint32(v4)));
    }
    v9, /* address */ v10 = v0.token0().gas(msg.gas);
    require(v9, MEM[64], RETURNDATASIZE());
    v10 = v11 = 0;
    if (v9) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v12 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v12 = v13 = MEM[64] + 32;
        }
        require(v12 - MEM[64] >= 32);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
    }
    if (varg1 != address(v10)) {
        v14 = v15 = uint112(v2);
        v16 = v17 = uint112(v3);
    } else {
        v14 = v18 = uint112(v3);
        v16 = v19 = uint112(v2);
    }
    v20, v21 = varg1.balanceOf(v0).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    v21 = v22 = 0;
    if (v20) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v23 - MEM[64] >= 32);
    }
    v26 = _SafeSub(v21, v16);
    v27 = v28 = 0x3c12(v26, v16, v14);
    if (varg1 != address(v10)) {
        v27 = v29 = 0;
    } else {
        v27 = v30 = 0;
    }
    require(v0.code.size);
    v31 = new uint256[](0);
    v32, /* uint256 */ v33 = v0.swap(v27, v27, varg2, v31).gas(msg.gas);
    require(v32, v33, RETURNDATASIZE());
    if (v32) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return v28;
    } else {
        return v28;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(!(msg.sender - _algebraSwapCallback), fullExit());
    if (amount0Delta > 0) {
    }
    if (!data.length) {
        0x2e59(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v0);
        exit;
    } else {
        require(data + data.length - data >= 32);
        require(!(msg.data[data.data] - address(msg.data[data.data])));
        0x2e59(address(msg.data[data.data]), v0);
        exit;
    }
}

function depositETH() public payable { 
    require(msg.data.length - 4 >= 0);
    require(msg.value, InvalidAmount());
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    emit Deposited(msg.sender, msg.value, 1);
    return ;
}

function 0xf4ff6ea2(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    0x360e(varg0);
    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
    v0, /* uint256 */ v1 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg0, stor_4_0_19, uint160.max, uint48.max).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function withdrawETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v2 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(amount <= v1, InsufficientBalance());
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(amount).gas(msg.gas);
    require(v5, v6, RETURNDATASIZE());
    if (v5) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    v7, /* uint256 */ v8 = 0x8bdf3dae4f9817320cb0317521f56607d271fef.call().value(amount).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = v10 = new bytes[](RETURNDATASIZE());
        require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v8 = v10.data;
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    require(v7, TransferFailed());
    emit Withdrawn(0, amount);
    return ;
}

function 0xeb8b7dee(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    stor_4_0_19 = varg0;
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).approve(varg0, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, ApproveFailed());
    0x360e(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2));
    require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
    v11, /* uint256 */ v12 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, uint160.max, uint48.max).gas(msg.gas);
    require(v11, v12, RETURNDATASIZE());
    if (v11) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _poolManager;
}

function disperseToken(address token, address[] recipients, uint256 value) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(recipients <= uint64.max);
    require(4 + recipients + 31 < msg.data.length);
    require(recipients.length <= uint64.max);
    v0 = v1 = recipients.data;
    require((recipients.length << 5) + (4 + recipients) + 32 <= msg.data.length);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    require(_disperse, InvalidParams());
    require(recipients.length, InvalidParams());
    require(value, InvalidAmount());
    v2 = _SafeMul(recipients.length, value);
    v3, /* uint256 */ v4 = token.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v5 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    require(v4 >= v2, InsufficientBalance());
    0x3159(token, _disperse, v2);
    require(_disperse.code.size);
    v8 = new address[](recipients.length);
    v9 = v10 = v8.data;
    v11 = v12 = 0;
    while (v11 < recipients.length) {
        require(!(msg.data[v0] - address(msg.data[v0])));
        MEM[v9] = address(msg.data[v0]);
        v9 = v9 + 32;
        v0 = v0 + 32;
        v11 = v11 + 1;
    }
    v13, /* uint256 */ v14 = _disperse.disperseToken(token, v8, value).gas(msg.gas);
    require(v13, v14, RETURNDATASIZE());
    if (v13) {
        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0xcbb73b == v0) {
            getWETHBalance();
        } else if (0x13e7c9d8 == v0) {
            operators(address);
        } else {
            if (0x23a69e75 != v0) {
                if (0x26eb54b5 == v0) {
                    0x26eb54b5();
                } else if (0x2c8958f6 != v0) {
                    if (0x35a9e4df == v0) {
                        universalRouter();
                    } else if (0x46d4c245 == v0) {
                        0x46d4c245(v0);
                    } else if (0x558a7297 == v0) {
                        setOperator(address,bool);
                    } else if (0x628a4b2f == v0) {
                        setUniversalRouter(address);
                    } else if (0x66dd0f24 == v0) {
                        depositWETH(uint256);
                    } else if (0x6afdd850 == v0) {
                        PERMIT2();
                    } else if (0x6c937374 == v0) {
                        approveToRouter(address);
                    } else if (0x6d70f7ae == v0) {
                        isOperator(address);
                    } else if (0x75b6ff6e == v0) {
                        0x75b6ff6e(v0);
                    } else if (0x7aef6715 == v0) {
                        setPoolManager(address);
                    } else if (0x88b6ff9c == v0) {
                        disperse();
                    } else if (0x8da5cb5b == v0) {
                        owner();
                    } else if (0x966f2b6e == v0) {
                        0x966f2b6e(v0);
                    } else if (0x9e281a98 == v0) {
                        withdrawToken(address,uint256);
                    } else if (0xad5c4648 == v0) {
                        WETH();
                    } else if (0xb2c4ce52 == v0) {
                        0xb2c4ce52(v0);
                    } else if (0xb8e32292 == v0) {
                        0xb8e32292(v0);
                    } else if (0xcf0ad4b1 == v0) {
                        disperseETH(address[],uint256);
                    } else if (0xd5eae0fa == v0) {
                        disperseToken(address,address[],uint256);
                    } else if (0xdc4c90d3 == v0) {
                        poolManager();
                    } else if (0xeb8b7dee == v0) {
                        0xeb8b7dee(v0);
                    } else if (0xf14210a6 == v0) {
                        withdrawETH(uint256);
                    } else if (0xf4ff6ea2 == v0) {
                        0xf4ff6ea2(v0);
                    } else if (0xf6326fb3 == v0) {
                        depositETH();
                    } else if (0xfa461e33 != v0) {
                        if (0xfc19619c == v0) {
                            0xfc19619c(v0);
                        } else if (!(0xfc4dd333 - v0)) {
                            withdrawWETH(uint256);
                        }
                    }
                }
            }
            algebraSwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
