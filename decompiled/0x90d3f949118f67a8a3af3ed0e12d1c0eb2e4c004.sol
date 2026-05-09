// Decompiled by library.dedaub.com
// 2025.12.18 05:42 UTC
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
Deposited(address, uint256, bool);
Withdrawn(address, uint256);
RouterUpdated(address);
OperatorUpdated(address, bool);

function 0xeb8b7dee(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    stor_4_0_19 = varg0;
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).approve(varg0, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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
    0x4f82(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2));
    require(0x22d473030f116ddee9f6b43ac78ba3.code.size);
    v11, /* uint256 */ v12 = 0x22d473030f116ddee9f6b43ac78ba3.approve(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, uint160.max, uint48.max).gas(msg.gas);
    require(v11, v12, RETURNDATASIZE());
    if (v11) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    require(v4 >= v2, InsufficientBalance());
    0x4ee8(token, _disperse, v2);
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
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

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
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    require(v4 >= v2, InsufficientBalance());
    0x4ee8(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), _disperse, v2);
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
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
    v0 = v1 = varg10;
    require(!(varg10 - v1));
    v2 = v3 = !_operators[msg.sender];
    if (v3) {
        v2 = v4 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v2, Unauthorized());
    require(varg8, InvalidAmount());
    v5 = _SafeAdd(varg8, varg11);
    v6, /* uint256 */ v7 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        v8 = v9 = 32;
        if (32 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 32);
    }
    require(v7 >= v5, InsufficientBalance());
    require(varg1 < 8);
    if (0 == !varg1) {
        if (0 == (varg1 == 6)) {
            if (0 == (varg1 == 7)) {
                v11 = v12 = 0x50c6(varg0, varg7, varg8, varg10);
            } else {
                v11 = v13 = 0x50c6(varg0, varg7, varg8, varg10);
            }
        } else {
            require(stor_4_0_19, InvalidParams());
            v14 = v15 = varg2 != varg2;
            require(!v15);
            v16 = v17 = varg2 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            if (varg2 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v16 = v18 = !varg2;
            }
            MEM[0x60021] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[0x60022] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v19 = new struct(4);
            require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
            v19.word0 = 3;
            v20 = v21 = 0;
            while (v20 < 96) {
                MEM[v19 + v20 + 32] = 96;
                v20 = v20 + 32;
            }
            v22 = new struct(5);
            require(!((v22 + 160 > uint64.max) | (v22 + 160 < v22)), Panic(65)); // failed memory allocation (too much memory)
            require(msg.data.length - 68 >= 160);
            v23 = new struct(5);
            require(!((v23 + 160 > uint64.max) | (v23 + 160 < v23)), Panic(65)); // failed memory allocation (too much memory)
            v23.word0 = varg2;
            v23.word1 = varg3;
            require(!(varg4 - uint24(varg4)));
            v23.word2 = varg4;
            require(!(varg5 - int24(varg5)));
            v23.word3 = varg5;
            v23.word4 = varg6;
            v22.word0 = v23;
            v22.word1 = bool(v16);
            v22.word2 = uint128(varg8);
            v22.word3 = 0;
            v24 = v25 = 32;
            v26 = new struct(1);
            require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
            v26.word0 = 0;
            v22.word4 = v26;
            MEM[MEM[64] + v25] = v25;
            MEM[MEM[64] + 64] = address(MEM[v22.word0]);
            MEM[MEM[64] + 64 + 32] = address(MEM[v22.word0 + 32]);
            MEM[MEM[64] + 64 + 64] = uint24(MEM[v22.word0 + 64]);
            MEM[MEM[64] + 64 + 96] = int24(MEM[v22.word0 + 96]);
            MEM[MEM[64] + 64 + 128] = address(MEM[128 + v22.word0]);
            MEM[MEM[64] + 64 + 160] = bool(v22.word1);
            MEM[MEM[64] + 64 + 192] = uint128(v22.word2);
            MEM[MEM[64] + 64 + 224] = uint128(v22.word3);
            MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
            MEM[MEM[64] + 64 + 288] = MEM[v22.word4];
            MCOPY(MEM[64] + 64 + 288 + 32, 32 + v22.word4, MEM[v22.word4]);
            MEM[32 + (MEM[v22.word4] + (MEM[64] + 64 + 288))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v27 = v19.data;
            v19.word1 = MEM[64];
            require(v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v28 = v19.data;
            if (!v16) {
                v29 = new struct(3);
                v29.word1 = varg3;
                v29.word2 = varg8;
                v29.word0 = 64;
                require(!((v29 + 96 > uint64.max) | (v29 + 96 < v29)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v30 = 64 + v19;
            } else {
                v14 = v31 = 0;
                v29 = v32 = new struct(3);
                v32.word1 = varg2;
                v32.word2 = varg8;
                v32.word0 = 64;
                require(!((v32 + 96 > uint64.max) | (v32 + 96 < v32)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v30 = v33 = 64 + v19;
            }
            MEM[v30] = v29;
            require(1 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v16) {
                require(!v14);
            } else {
            }
            v34 = new struct(3);
            v35 = v34.data;
            v34.word1 = address(v36);
            v34.word2 = 0;
            v34.word0 = 64;
            require(!((v34 + 96 > uint64.max) | (v34 + 96 < v34)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[96 + v19] = v34;
            require(2 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v37 = new struct(2);
            require(!((v37 + 64 > uint64.max) | (v37 + 64 < v37)), Panic(65)); // failed memory allocation (too much memory)
            v37.word0 = 1;
            v38 = v39 = 0;
            while (v38 < 32) {
                MEM[v37 + v38 + 32] = 96;
                v38 = v38 + 32;
            }
            MEM[MEM[64] + v24] = 64;
            MEM[MEM[64] + v24 + 64] = v40.length;
            MCOPY(MEM[64] + v24 + 64 + 32, v40.data, v40.length);
            MEM[32 + (v40.length + (MEM[64] + v24 + 64))] = 0;
            MEM[MEM[64] + v24 + 32] = 128;
            MEM[32 + (MEM[64] + v24 + 64) + 32] = MEM[v19];
            v41 = 32 + (MEM[64] + v24 + 64) + 32 + 32;
            v42 = v43 = 32 + (MEM[64] + v24 + 64) + 32 + (MEM[v19] << 5) + 32;
            v44 = v19 + 32;
            v45 = 0;
            while (v45 < MEM[v19]) {
                MEM[v41] = v42 - (32 + (MEM[64] + v24 + 64) + 32) - 32;
                MEM[v42] = MEM[MEM[v44]];
                MCOPY(v42 + 32, 32 + MEM[v44], MEM[MEM[v44]]);
                MEM[32 + (MEM[MEM[v44]] + v42)] = 0;
                v42 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v44]]) + v42 + 32;
                v44 = v44 + 32;
                v41 = v41 + 32;
                v45 = v45 + 1;
            }
            MEM[MEM[64]] = v42 - MEM[64] - 32;
            require(!((MEM[64] + (v42 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v42 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v37.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v46 = v37.data;
            v37.word1 = MEM[64];
            require(v37.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v47 = v37.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            v48 = v49 = varg2;
            v48 = v50 = varg3;
            v51 = v52 = v49 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            if (v49 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                v51 = v53 = !v49;
            }
            if (v51) {
            }
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v54, /* uint256 */ v7 = address(v48).balanceOf(v0).gas(msg.gas);
            require(v54, MEM[64], RETURNDATASIZE());
            if (v54) {
                if (v24 > RETURNDATASIZE()) {
                    v24 = v55 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v24 - MEM[64] >= v24);
            }
            if (varg2) {
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size);
                v56 = new bytes[](v57.length);
                MCOPY(v56.data, v57.data, v57.length);
                v56[v57.length] = 0;
                v58 = v56.data;
                v59 = new uint256[](v37.word0.length);
                v56[32][32] = v37.word0.length;
                v60 = v59.data;
                v61 = v62 = v59.data + 32;
                v63 = v37.data;
                v64 = 0;
                while (v64 < v37.word0.length) {
                    MEM[v60] = v61 - v59 - 32;
                    MEM[v61] = MEM[MEM[v63]];
                    MCOPY(v61 + 32, 32 + MEM[v63], MEM[MEM[v63]]);
                    MEM[32 + (MEM[MEM[v63]] + v61)] = 0;
                    v61 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v63]]) + v61 + 32;
                    v63 = v63 + 32;
                    v60 = v60 + 32;
                    v64 = v64 + 1;
                }
                v65, /* uint256 */ v66 = stor_4_0_19.execute(v56, v59, block.timestamp + 1).gas(msg.gas);
                require(v65, v66, RETURNDATASIZE());
                if (v65) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
            } else {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                v67, /* uint256 */ v68 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg8).gas(msg.gas);
                require(v67, v68, RETURNDATASIZE());
                if (v67) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size);
                v69 = new bytes[](v57.length);
                MCOPY(v69.data, v57.data, v57.length);
                v69[v57.length] = 0;
                v70 = v69.data;
                v71 = new uint256[](v37.word0.length);
                v69[32][32] = v37.word0.length;
                v72 = v71.data;
                v73 = v74 = v71.data + 32;
                v75 = v37.data;
                v76 = 0;
                while (v76 < v37.word0.length) {
                    MEM[v72] = v73 - v71 - 32;
                    MEM[v73] = MEM[MEM[v75]];
                    MCOPY(v73 + 32, 32 + MEM[v75], MEM[MEM[v75]]);
                    MEM[32 + (MEM[MEM[v75]] + v73)] = 0;
                    v73 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v75]]) + v73 + 32;
                    v75 = v75 + 32;
                    v72 = v72 + 32;
                    v76 = v76 + 1;
                }
                v77, /* uint256 */ v78 = stor_4_0_19.execute(v69, v71, block.timestamp + 1).value(varg8).gas(msg.gas);
                require(v77, v78, RETURNDATASIZE());
                if (v77) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
            }
            v79, /* uint256 */ v7 = address(v48).balanceOf(v0).gas(msg.gas);
            require(v79, MEM[64], RETURNDATASIZE());
            if (v79) {
                if (v24 > RETURNDATASIZE()) {
                    v24 = v80 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v24 - MEM[64] >= v24);
            }
            v11 = v81 = _SafeSub(v7, v7);
        }
    } else {
        0x4ee8(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, varg8);
        v11 = v82 = 0x5642(varg0, varg10);
    }
    require(v11 >= varg9, MinimumNotMet());
    if (varg11) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v83, /* uint256 */ v84 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg11).gas(msg.gas);
        require(v83, v84, RETURNDATASIZE());
        if (v83) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        v85, /* uint256 */ v86 = block.coinbase.call().value(varg11).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v87 = v88 = new bytes[](RETURNDATASIZE());
            require(!((v88 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v88 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v88)), Panic(65)); // failed memory allocation (too much memory)
            v86 = v88.data;
            RETURNDATACOPY(v86, 0, RETURNDATASIZE());
        }
        require(v85, fullExit());
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg11);
    }
    require(varg1 < 8);
    if (6 == varg1) {
        v89 = v90 = varg2;
        v89 = v91 = varg3;
        v92 = v93 = v90 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        if (v90 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
            v92 = v94 = !v90;
        }
        if (v92) {
        }
    }
    require(!0);
    require(varg1 < 8, Panic(33)); // failed convertion to enum type
    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v89), varg8, v11, 1, varg11, varg1);
    return v11;
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function 0x9ef912f2(address varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11) public nonPayable { 
    require(msg.data.length - 4 >= 384);
    require(224 <= msg.data.length - 4);
    require(varg10 <= uint64.max);
    require(4 + varg10 + 31 < msg.data.length);
    require(varg10.length <= uint64.max);
    require((varg10.length << 5) + (4 + varg10) + 32 <= msg.data.length);
    v0 = v1 = !_operators[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg10.length, InvalidParams());
    require(varg8, InvalidAmount());
    v3 = v4 = varg1 >= 8;
    while (v3 < varg10.length) {
        v5 = 0x3b1d(varg10.data, varg10.length, v3);
        require(!(msg.data[v5] - address(msg.data[v5])));
        require(!v3);
        if (0 == !varg1) {
            if (0 == (varg1 == 6)) {
                if (0 == (varg1 == 7)) {
                    v6 = v7 = 0x5524(varg0, varg7, varg8, msg.data[v5]);
                } else {
                    v6 = v8 = 0x5524(varg0, varg7, varg8, msg.data[v5]);
                }
                v3 = v3 + v6;
                require(v3 <= v3, Panic(17)); // arithmetic overflow or underflow
            } else {
                v9 = v10 = stor_4_0_19;
                require(v10, InvalidParams());
                v11 = v12 = varg2 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                if (varg2 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    v11 = v13 = !varg2;
                }
                v14 = v15 = 0x80000;
                MEM[v15 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[v15 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                require(!((v15 + 64 > uint64.max) | (v15 + 64 < v15)), Panic(65)); // failed memory allocation (too much memory)
                v16 = new struct(4);
                require(!((v16 + 128 > uint64.max) | (v16 + 128 < v16)), Panic(65)); // failed memory allocation (too much memory)
                v16.word0 = 3;
                v17 = v18 = 0;
                while (v17 < 96) {
                    MEM[v16 + v17 + 32] = 96;
                    v17 = v17 + 32;
                }
                v19, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                if (!v19) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v19) {
                        v20 = v21 = 32;
                        if (v21 > RETURNDATASIZE()) {
                            v20 = v22 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v20 - MEM[64] >= 32);
                    }
                    v23 = new struct(5);
                    require(!((v23 + 160 > uint64.max) | (v23 + 160 < v23)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - 68 >= 160);
                    v24 = new struct(5);
                    require(!((v24 + 160 > uint64.max) | (v24 + 160 < v24)), Panic(65)); // failed memory allocation (too much memory)
                    v24.word0 = varg2;
                    v24.word1 = varg3;
                    require(!(varg4 - uint24(varg4)));
                    v24.word2 = varg4;
                    require(!(varg5 - int24(varg5)));
                    v24.word3 = varg5;
                    v24.word4 = varg6;
                    v23.word0 = v24;
                    v23.word1 = bool(v11);
                    v23.word2 = uint128(varg8);
                    v23.word3 = uint128(v3);
                    v25 = v26 = 32;
                    v27 = new struct(1);
                    require(!((v27 + 32 > uint64.max) | (v27 + 32 < v27)), Panic(65)); // failed memory allocation (too much memory)
                    v27.word0 = 0;
                    v23.word4 = v27;
                    MEM[MEM[64] + v26] = v26;
                    MEM[MEM[64] + 64] = address(MEM[v23.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v23.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v23.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v23.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v23.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v23.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v23.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v23.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v23.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v23.word4, MEM[v23.word4]);
                    MEM[32 + (MEM[v23.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v23.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v23.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v23.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v16.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v28 = v16.data;
                    v16.word1 = MEM[64];
                    require(v16.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v29 = v16.data;
                    if (!v11) {
                        v30 = new struct(3);
                        v30.word1 = varg3;
                        v30.word2 = v3;
                        v30.word0 = 64;
                        require(!((v30 + 96 > uint64.max) | (v30 + 96 < v30)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v16.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v31 = 64 + v16;
                    } else {
                        v30 = v32 = new struct(3);
                        v32.word1 = varg2;
                        v32.word2 = v3;
                        v32.word0 = 64;
                        require(!((v32 + 96 > uint64.max) | (v32 + 96 < v32)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v16.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v31 = v33 = 64 + v16;
                    }
                    MEM[v31] = v30;
                    require(1 < MEM[v16], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v11) {
                        v34 = new struct(3);
                        v34.word1 = varg2;
                        v34.word2 = varg8;
                        v34.word0 = 64;
                        require(!((v34 + 96 > uint64.max) | (v34 + 96 < v34)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < MEM[v35], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v36 = 96 + v35;
                    } else {
                        v34 = v37 = new struct(3);
                        v37.word1 = varg3;
                        v37.word2 = varg8;
                        v37.word0 = 64;
                        require(!((v37 + 96 > uint64.max) | (v37 + 96 < v37)), Panic(65)); // failed memory allocation (too much memory)
                        require(2 < MEM[v16], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v36 = v38 = 96 + v16;
                    }
                    MEM[v36] = v34;
                    require(2 < MEM[v16], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v39 = new struct(2);
                    require(!((v39 + 64 > uint64.max) | (v39 + 64 < v39)), Panic(65)); // failed memory allocation (too much memory)
                    v39.word0 = 1;
                    v40 = v41 = 0;
                    while (v40 < 32) {
                        MEM[v39 + v40 + 32] = 96;
                        v40 = v40 + 32;
                    }
                    MEM[MEM[64] + v25] = 64;
                    MEM[MEM[64] + v25 + 64] = MEM[v14];
                    MCOPY(MEM[64] + v25 + 64 + 32, 32 + v14, MEM[v14]);
                    MEM[32 + (MEM[v14] + (MEM[64] + v25 + 64))] = 0;
                    v42 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v14]) + (MEM[64] + v25 + 64) + 32;
                    MEM[MEM[64] + v25 + 32] = v42 - (MEM[64] + v25);
                    MEM[v42] = MEM[v16];
                    v43 = v42 + 32;
                    v44 = v45 = v42 + (MEM[v16] << 5) + 32;
                    v46 = v16 + 32;
                    v47 = 0;
                    while (v47 < MEM[v16]) {
                        MEM[v43] = v44 - v42 - 32;
                        MEM[v44] = MEM[MEM[v46]];
                        MCOPY(v44 + 32, 32 + MEM[v46], MEM[MEM[v46]]);
                        MEM[32 + (MEM[MEM[v46]] + v44)] = 0;
                        v44 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v46]]) + v44 + 32;
                        v46 = v46 + 32;
                        v43 = v43 + 32;
                        v47 = v47 + 1;
                    }
                    MEM[MEM[64]] = v44 - MEM[64] - 32;
                    require(!((MEM[64] + (v44 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v44 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v39.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v48 = v39.data;
                    v39.word1 = MEM[64];
                    require(v39.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v49 = v39.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    v50, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                    if (!v50) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v50) {
                            if (v25 > RETURNDATASIZE()) {
                                v25 = v51 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v25 - MEM[64] >= v25);
                        }
                        if (varg2) {
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(v9.code.size);
                            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 96;
                            MEM[MEM[64] + 4 + 96] = v52.length;
                            MCOPY(MEM[64] + 4 + 96 + 32, v52.data, v52.length);
                            MEM[32 + (v52.length + (MEM[64] + 4 + 96))] = 0;
                            MEM[MEM[64] + 4 + 32] = 160;
                            MEM[32 + (MEM[64] + 4 + 96) + 32] = v39.word0.length;
                            v53 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                            v54 = v55 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                            v56 = v39.data;
                            v57 = 0;
                            while (v57 < v39.word0.length) {
                                MEM[v53] = v54 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                MEM[v54] = MEM[MEM[v56]];
                                MCOPY(v54 + 32, 32 + MEM[v56], MEM[MEM[v56]]);
                                MEM[32 + (MEM[MEM[v56]] + v54)] = 0;
                                v54 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v56]]) + v54 + 32;
                                v56 = v56 + 32;
                                v53 = v53 + 32;
                                v57 = v57 + 1;
                            }
                            MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                            v58 = v9.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x27c9 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!v58) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v58) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!0);
                            }
                        } else {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                            v59 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v3).gas(msg.gas);
                            if (!v59) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v59) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!0);
                                }
                                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                                require(stor_4_0_19.code.size);
                                MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                                MEM[MEM[64] + 4] = 96;
                                MEM[MEM[64] + 4 + 96] = v52.length;
                                MCOPY(MEM[64] + 4 + 96 + 32, v52.data, v52.length);
                                MEM[32 + (v52.length + (MEM[64] + 4 + 96))] = 0;
                                MEM[MEM[64] + 4 + 32] = 160;
                                MEM[32 + (MEM[64] + 4 + 96) + 32] = v39.word0.length;
                                v60 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                                v61 = v62 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                                v63 = v39.data;
                                v64 = 0;
                                while (v64 < v39.word0.length) {
                                    MEM[v60] = v61 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                    MEM[v61] = MEM[MEM[v63]];
                                    MCOPY(v61 + 32, 32 + MEM[v63], MEM[MEM[v63]]);
                                    MEM[32 + (MEM[MEM[v63]] + v61)] = 0;
                                    v61 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v63]]) + v61 + 32;
                                    v63 = v63 + 32;
                                    v60 = v60 + 32;
                                    v64 = v64 + 1;
                                }
                                MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                                v65 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x2613 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v3).gas(msg.gas);
                                if (!v65) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v65) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!0);
                                    }
                                    v66 = this.balance;
                                    if (v66) {
                                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                                        v67 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v66).gas(msg.gas);
                                        if (!v67) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else if (v67) {
                                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(!0);
                                        }
                                    }
                                }
                            }
                        }
                        v68, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
                        if (!v68) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v68) {
                                if (v25 > RETURNDATASIZE()) {
                                    v25 = v69 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v25 - MEM[64] >= v25);
                            }
                            v70 = _SafeSub(v3, v3);
                            v3 = _SafeAdd(v3, v70);
                        }
                    }
                }
            }
        } else {
            v71, /* uint256 */ v3 = varg0.token0().gas(msg.gas);
            if (!v71) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                if (v71) {
                    v72 = v73 = 32;
                    if (v73 > RETURNDATASIZE()) {
                        v72 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v72 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v72 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v72 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v72 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                v74, /* uint256 */ v3, /* uint256 */ v3, /* uint32 */ v75 = varg0.getReserves().gas(msg.gas);
                if (!v74) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v74) {
                        v76 = v77 = 96;
                        if (v77 > RETURNDATASIZE()) {
                            v76 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v76 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v76 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v76 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v76 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v3 - uint112(v3)));
                        require(!(v75 - uint32(v75)));
                    }
                    if (address(v3) - address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                        v78 = v79 = uint112(v3);
                        v80 = uint112(v3) * varg8;
                        require((v80 / uint112(v3) == varg8) | !uint112(v3), Panic(17)); // arithmetic overflow or underflow
                    } else {
                        v78 = v81 = uint112(v3);
                        v80 = v82 = uint112(v3) * varg8;
                        require((v82 / uint112(v3) == varg8) | !uint112(v3), Panic(17)); // arithmetic overflow or underflow
                    }
                    require(!v80 | (1000 == v80 * 1000 / v80), Panic(17)); // arithmetic overflow or underflow
                    v83 = _SafeSub(v78, varg8);
                    require(!v83 | (997 == v83 * 997 / v83), Panic(17)); // arithmetic overflow or underflow
                    v84 = _SafeDiv(v80 * 1000, v83 * 997);
                    require(v84 <= v84 + 1, Panic(17)); // arithmetic overflow or underflow
                    v85, /* uint256 */ v3 = varg7.balanceOf(address(msg.data[v5])).gas(msg.gas);
                    if (!v85) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v85) {
                            v86 = v87 = 32;
                            if (v87 > RETURNDATASIZE()) {
                                v86 = v88 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v86 - MEM[64] >= 32);
                        }
                        0x4ee8(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0, v84 + 1);
                        v89 = 0x5642(varg0, msg.data[v5]);
                        v90, /* uint256 */ v3 = varg7.balanceOf(address(msg.data[v5])).gas(msg.gas);
                        if (!v90) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v90) {
                                v91 = v92 = 32;
                                if (v92 > RETURNDATASIZE()) {
                                    v91 = v93 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v91 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v91 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v91 - MEM[64] >= 32);
                            }
                            v94 = _SafeSub(v3, v3);
                            require(v94 >= varg8, MinimumNotMet());
                            v3 = _SafeAdd(v3, v84 + 1);
                        }
                    }
                }
            }
        }
        require(v3 <= varg9, SlippageExceeded());
        v3 = _SafeAdd(v3, varg8);
        v3 = v3 + 1;
    }
    if (varg11) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v95, /* uint256 */ v96 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg11).gas(msg.gas);
        require(v95, v96, RETURNDATASIZE());
        if (v95) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        v97, /* uint256 */ v98 = block.coinbase.call().value(varg11).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v99 = v100 = new bytes[](RETURNDATASIZE());
            require(!((v100 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v100 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v100)), Panic(65)); // failed memory allocation (too much memory)
            v98 = v100.data;
            RETURNDATACOPY(v98, 0, RETURNDATASIZE());
        }
        require(v97, fullExit());
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg11);
    }
    require(varg1 < 8);
    if (6 == varg1) {
        v101 = v102 = varg2;
        v101 = v103 = varg3;
        v104 = v105 = v102 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        if (v102 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
            v104 = v106 = !v102;
        }
        if (v104) {
        }
    }
    require(!v3);
    require(varg1 < 8, Panic(33)); // failed convertion to enum type
    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v101), v3, v3, varg10.length, varg11, varg1);
    return v3;
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
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(amount <= v1, InsufficientBalance());
    0x4ee8(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), 0x8bdf3dae4f9817320cb0317521f56607d271fef, amount);
    emit Withdrawn(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), amount);
    return ;
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
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(_amount <= v1, InsufficientBalance());
    0x4ee8(_tokenContract, 0x8bdf3dae4f9817320cb0317521f56607d271fef, _amount);
    emit Withdrawn(_tokenContract, _amount);
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
    0x4f82(_token);
    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
    v0, /* uint256 */ v1 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(_token, _universalRouter, uint160.max, uint48.max).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transferFrom(msg.sender, this, _amount).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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

function 0x470086d5(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, uint24 varg13, int24 varg14, address varg15, address varg16, address varg17) public nonPayable { 
    require(msg.data.length - 4 >= 576);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    require(varg16 <= uint64.max);
    require(4 + varg16 + 31 < msg.data.length);
    require(varg16.length <= uint64.max);
    require((varg16.length << 5) + (4 + varg16) + 32 <= msg.data.length);
    v0 = v1 = !_operators[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg16.length, InvalidParams());
    require(varg14, InvalidAmount());
    while (v3 < varg16.length) {
        v4 = _SafeSub(varg15, varg17);
        v5 = v6 = _SafeDiv(v4, varg16.length);
        v7 = v8 = 0;
        require(varg1 < 8);
        if (varg1) {
            if (varg1 - 6) {
                if (7 != varg1) {
                    v9 = v10 = varg0;
                    require(!(varg0 - v10));
                    require(!(varg3 - address(varg3)));
                    v11 = v12 = 0;
                    v13 = v14 = 64;
                    v15 = v16 = varg2 < address(varg3);
                    _algebraSwapCallback = varg0;
                    stor_6 = v6;
                    if (v12 == v16) {
                        v17 = new struct(2);
                        v18 = v17.data;
                        v17.word1 = varg2;
                        v17.word0 = 32;
                        require(!((v17 + 64 > uint64.max) | (v17 + 64 < v17)), Panic(65)); // failed memory allocation (too much memory)
                        v19 = MEM[v14];
                        MEM[v19] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v19 + 4] = address(this);
                        MEM[v19 + 4 + 32] = bool(v16);
                        MEM[v19 + 4 + 64] = v6;
                        MEM[v19 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v19 + 4 + 128] = 160;
                        MEM[v19 + 4 + 160] = v17.word0.length;
                        MCOPY(v19 + 4 + 160 + 32, v17.data, v17.word0.length);
                        MEM[32 + (v17.word0.length + (v19 + 4 + 160))] = 0;
                        v20 = 32 + (v19 + 4 + 160) + 32;
                    } else {
                        v21 = new struct(2);
                        v22 = v21.data;
                        v21.word1 = varg2;
                        v21.word0 = 32;
                        require(!((v21 + 64 > uint64.max) | (v21 + 64 < v21)), Panic(65)); // failed memory allocation (too much memory)
                        v19 = v23 = MEM[v14];
                        MEM[v23] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v23 + 4] = address(this);
                        MEM[v23 + 4 + 32] = bool(v16);
                        MEM[v23 + 4 + 64] = v6;
                        MEM[v23 + 4 + 96] = address(0x1000276a4);
                        MEM[v23 + 4 + 128] = 160;
                        MEM[v23 + 4 + 160] = v21.word0.length;
                        MCOPY(v23 + 4 + 160 + 32, v21.data, v21.word0.length);
                        MEM[32 + (v21.word0.length + (v23 + 4 + 160))] = 0;
                        v20 = v24 = 32 + (v23 + 4 + 160) + 32;
                    }
                    v25 = v9.call(MEM[v1e327V0x480b0x3d36V0x30a4:v1e327V0x480b0x3d36V0x30a4 + v52cdV0x54a10x4663V0x480b0x3d36V0x30a4 - v1e327V0x480b0x3d36V0x30a4], MEM[v1e327V0x480b0x3d36V0x30a4:v1e327V0x480b0x3d36V0x30a4 + v47b00x3d36_0x6V0x30a4]).value(v11).gas(msg.gas);
                    if (!v25) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v26 = v27 = 0x1e3e4;
                        v28 = v29 = 0;
                        v28 = v30 = 0;
                        if (v25) {
                            v31 = v32 = 18436;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v19 + 64 > uint64.max) | (v19 + 64 < v19)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v19 + 64;
                                v33 = v34 = v19 + 64;
                            }
                        }
                    }
                } else {
                    v35 = v36 = varg0;
                    require(!(varg0 - v36));
                    require(!(varg3 - address(varg3)));
                    _algebraSwapCallback = varg0;
                    v15 = v37 = varg2 < address(varg3);
                    v38 = v39 = 64;
                    v40 = v41 = 0;
                    if (varg2 >= address(varg3)) {
                        v42 = new struct(2);
                        v43 = v42.data;
                        v42.word1 = varg2;
                        v42.word0 = 32;
                        require(!((v42 + 64 > uint64.max) | (v42 + 64 < v42)), Panic(65)); // failed memory allocation (too much memory)
                        v19 = v44 = MEM[v39];
                        MEM[v44] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v44 + 4] = address(this);
                        MEM[v44 + 4 + 32] = bool(v37);
                        MEM[v44 + 4 + 64] = v6;
                        MEM[v44 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v44 + 4 + 128] = 160;
                        MEM[v44 + 4 + 160] = v42.word0.length;
                        MCOPY(v44 + 4 + 160 + 32, v42.data, v42.word0.length);
                        MEM[32 + (v42.word0.length + (v44 + 4 + 160))] = 0;
                        v45 = 32 + (v44 + 4 + 160) + 32;
                    } else {
                        v46 = new struct(2);
                        v47 = v46.data;
                        v46.word1 = varg2;
                        v46.word0 = 32;
                        require(!((v46 + 64 > uint64.max) | (v46 + 64 < v46)), Panic(65)); // failed memory allocation (too much memory)
                        v19 = v48 = MEM[v39];
                        MEM[v48] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v48 + 4] = address(this);
                        MEM[v48 + 4 + 32] = bool(v37);
                        MEM[v48 + 4 + 64] = v6;
                        MEM[v48 + 4 + 96] = address(0x1000276a4);
                        MEM[v48 + 4 + 128] = 160;
                        MEM[v48 + 4 + 160] = v46.word0.length;
                        MCOPY(v48 + 4 + 160 + 32, v46.data, v46.word0.length);
                        MEM[32 + (v46.word0.length + (v48 + 4 + 160))] = 0;
                        v45 = v49 = 32 + (v48 + 4 + 160) + 32;
                        // Unknown jump to Block 0x46950x3d36B0x30a4. Refer to 3-address code (TAC);
                    }
                    v50 = v35.call(MEM[v1e327V0x480b0x3d36V0x30a4:v1e327V0x480b0x3d36V0x30a4 + v52cdV0x54a10x4663V0x47030x3d36V0x30a4 - v1e327V0x480b0x3d36V0x30a4], MEM[v1e327V0x480b0x3d36V0x30a4:v1e327V0x480b0x3d36V0x30a4 + v46950x3d36_0x6V0x30a4]).value(v40).gas(msg.gas);
                    if (!v50) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v26 = v51 = 0x1e360;
                        v28 = v52 = 0;
                        v28 = v53 = 0;
                        if (v50) {
                            v31 = 18165;
                            v54 = 64;
                            if (64 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x46fc0x3d36B0x30a4. Refer to 3-address code (TAC);
                            }
                        }
                    }
                }
                _algebraSwapCallback = 0;
                if (v15) {
                }
                require(v28 != int256.min, Panic(17)); // arithmetic overflow or underflow
                v55 = v56 = 0 - v28;
                // Unknown jump to Block ['0x1e3600x3d36B0x30a4', '0x1e3e40x3d36B0x30a4']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x50b60x3d36B0x30a4. Refer to 3-address code (TAC);
                require(!((v19 + (v54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + (v54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v19 + (v54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v33 = v57 = v19 + v54;
                require(v33 - v19 >= 64);
                v28 = v58 = MEM[v19];
                v28 = v59 = MEM[v19 + 32];
                // Unknown jump to Block ['0x46f50x3d36B0x30a4', '0x48040x3d36B0x30a4']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x47c80x3d36B0x30a4. Refer to 3-address code (TAC);
                v54 = v60 = RETURNDATASIZE();
                // Unknown jump to Block 0x46e30x3d36B0x30a4. Refer to 3-address code (TAC);
                _algebraSwapCallback = 0;
                stor_6 = 0;
                if (v15) {
                }
            } else {
                v61 = new struct(5);
                require(!((v61 + 160 > uint64.max) | (v61 + 160 < v61)), Panic(65)); // failed memory allocation (too much memory)
                v61.word0 = 0;
                v61.word1 = 0;
                v61.word2 = 0;
                v61.word3 = 0;
                v61.word4 = 0;
                v62 = v63 = varg2 != varg2;
                require(!v63);
                require(varg3 == address(varg3));
                if (varg2 >= address(varg3)) {
                    v62 = v64 = 0;
                } else {
                    require(!v63);
                    require(varg3 == address(varg3));
                }
                require(!(varg4 - uint24(varg4)));
                require(!(varg5 - int24(varg5)));
                v65 = v66 = new struct(5);
                require(!((v66 + 160 > uint64.max) | (v66 + 160 < v66)), Panic(65)); // failed memory allocation (too much memory)
                v66.word0 = address(v67);
                v68 = v69 = v66 + 32;
                v66.word1 = address(v67);
                v66.word2 = uint24(varg4);
                v66.word3 = int24(varg5);
                v66.word4 = varg6;
                require(!v62);
                v70 = v71 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg2;
                v70 = v72 = !address(v67);
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg2) {
                }
                if (!v70) {
                    0x501f(varg2, v6);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v73 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg2, stor_4_0_19, address(v6), uint48(block.timestamp + 60)).gas(msg.gas);
                    if (!v73) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v73) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v7 = v74 = 0;
                    }
                }
                if (bool(address(v67))) {
                    v70 = v75 = address(v67) == varg2;
                }
                v76 = 0x60000;
                MEM[v76 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[v76 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                require(!((v76 + 64 > uint64.max) | (v76 + 64 < v76)), Panic(65)); // failed memory allocation (too much memory)
                v77 = new struct(4);
                require(!((v77 + 128 > uint64.max) | (v77 + 128 < v77)), Panic(65)); // failed memory allocation (too much memory)
                v77.word0 = 3;
                v78 = v79 = 0;
                while (v78 < 96) {
                    MEM[v77 + v78 + 32] = 96;
                    v78 = v78 + 32;
                }
                v80 = new struct(5);
                require(!((v80 + 160 > uint64.max) | (v80 + 160 < v80)), Panic(65)); // failed memory allocation (too much memory)
                v80.word0 = v66;
                v80.word1 = bool(v70);
                v80.word2 = uint128(v6);
                v80.word3 = 1;
                v81 = 32;
                v82 = new struct(1);
                require(!((v82 + 32 > uint64.max) | (v82 + 32 < v82)), Panic(65)); // failed memory allocation (too much memory)
                v82.word0 = v7;
                v80.word4 = v82;
                MEM[MEM[64] + v81] = v81;
                MEM[MEM[64] + 64] = address(MEM[v80.word0]);
                MEM[MEM[64] + 64 + 32] = address(MEM[v80.word0 + 32]);
                MEM[MEM[64] + 64 + 64] = uint24(MEM[v80.word0 + 64]);
                MEM[MEM[64] + 64 + 96] = int24(MEM[v80.word0 + 96]);
                MEM[MEM[64] + 64 + 128] = address(MEM[128 + v80.word0]);
                MEM[MEM[64] + 64 + 160] = bool(v80.word1);
                MEM[MEM[64] + 64 + 192] = uint128(v80.word2);
                MEM[MEM[64] + 64 + 224] = uint128(v80.word3);
                MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                MEM[MEM[64] + 64 + 288] = MEM[v80.word4];
                MCOPY(MEM[64] + 64 + 288 + 32, 32 + v80.word4, MEM[v80.word4]);
                MEM[32 + (MEM[v80.word4] + (MEM[64] + 64 + 288))] = 0;
                MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v80.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v80.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v80.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v77.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v83 = v77.data;
                v77.word1 = MEM[64];
                require(v77.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v84 = v77.data;
                if (!v70) {
                    v85 = new struct(3);
                    v85.word1 = address(v66.word1);
                    v85.word2 = v6;
                    v85.word0 = 64;
                    require(!((v85 + 96 > uint64.max) | (v85 + 96 < v85)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v77.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v86 = 64 + v77;
                } else {
                    v85 = v87 = new struct(3);
                    v87.word1 = address(v66.word0);
                    v87.word2 = v6;
                    v87.word0 = 64;
                    require(!((v87 + 96 > uint64.max) | (v87 + 96 < v87)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v77.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v86 = v88 = 64 + v77;
                }
                MEM[v86] = v85;
                require(1 < MEM[v77], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!v70) {
                    v89 = v90 = address(MEM[v65]);
                } else {
                    v89 = address(MEM[v68]);
                }
                v91 = new struct(3);
                v92 = v91.data;
                v91.word1 = address(v89);
                v91.word2 = 1;
                v91.word0 = 64;
                require(!((v91 + 96 > uint64.max) | (v91 + 96 < v91)), Panic(65)); // failed memory allocation (too much memory)
                require(2 < MEM[v77], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[96 + v77] = v91;
                require(2 < MEM[v77], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v93 = new struct(2);
                require(!((v93 + 64 > uint64.max) | (v93 + 64 < v93)), Panic(65)); // failed memory allocation (too much memory)
                v93.word0 = 1;
                v94 = v95 = 0;
                while (v94 < 32) {
                    MEM[v93 + v94 + 32] = 96;
                    v94 = v94 + 32;
                }
                MEM[MEM[64] + v81] = 64;
                MEM[MEM[64] + v81 + 64] = MEM[v76];
                MCOPY(MEM[64] + v81 + 64 + 32, 32 + v76, MEM[v76]);
                MEM[32 + (MEM[v76] + (MEM[64] + v81 + 64))] = 0;
                MEM[MEM[64] + v81 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v81 + 64) + 32 - (MEM[64] + v81);
                MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v81 + 64) + 32] = MEM[v77];
                v96 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v81 + 64) + 32 + 32;
                v97 = v98 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v81 + 64) + 32 + (MEM[v77] << 5) + 32;
                v99 = v77 + 32;
                v100 = 0;
                while (v100 < MEM[v77]) {
                    MEM[v96] = v97 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v76]) + (MEM[64] + v81 + 64) + 32) - 32;
                    MEM[v97] = MEM[MEM[v99]];
                    MCOPY(v97 + 32, 32 + MEM[v99], MEM[MEM[v99]]);
                    MEM[32 + (MEM[MEM[v99]] + v97)] = 0;
                    v97 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v99]]) + v97 + 32;
                    v99 = v99 + 32;
                    v96 = v96 + 32;
                    v100 = v100 + 1;
                }
                MEM[MEM[64]] = v97 - MEM[64] - 32;
                require(!((MEM[64] + (v97 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v97 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v93.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v101 = v93.data;
                v93.word1 = MEM[64];
                require(v93.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v102 = v93.data;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                if (!v70) {
                    v103 = v104 = address(MEM[v65]);
                } else {
                    v103 = address(MEM[v68]);
                }
                v105, /* uint112 */ v7 = address(v103).balanceOf(address(this)).gas(msg.gas);
                if (!v105) {
                    RETURNDATACOPY(MEM[64], v7, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v105) {
                        if (v81 > RETURNDATASIZE()) {
                            v81 = v106 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v81 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v81 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v81 - MEM[64] >= v81);
                    }
                    if (!v70) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v7, v7);
                        MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 96;
                        MEM[MEM[64] + 4 + 96] = v107.length;
                        MCOPY(MEM[64] + 4 + 96 + 32, v107.data, v107.length);
                        MEM[32 + (v107.length + (MEM[64] + 4 + 96))] = 0;
                        MEM[MEM[64] + 4 + 32] = 160;
                        MEM[32 + (MEM[64] + 4 + 96) + 32] = v93.word0.length;
                        v108 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                        v109 = v110 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                        v111 = v93.data;
                        v112 = 0;
                        while (v112 < v93.word0.length) {
                            MEM[v108] = v109 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                            MEM[v109] = MEM[MEM[v111]];
                            MCOPY(v109 + 32, 32 + MEM[v111], MEM[MEM[v111]]);
                            MEM[32 + (MEM[MEM[v111]] + v109)] = 0;
                            v109 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v111]]) + v109 + 32;
                            v111 = v111 + 32;
                            v108 = v108 + 32;
                            v112 = v112 + 1;
                        }
                        MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                        v113 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x44360x3d36V0x30a4 - MEM[64]], MEM[MEM[64]:MEM[64] + v54dbV0x55020x3d36V0x30a4]).value(v7).gas(msg.gas);
                        if (!v113) {
                            RETURNDATACOPY(MEM[64], v7, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v113) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v7, v7, v7);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v7, v7);
                        v114 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v5).value(v7).gas(msg.gas);
                        if (!v114) {
                            RETURNDATACOPY(MEM[64], v7, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v114) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v7, v7, v7);
                            }
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v7, v7);
                            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 96;
                            MEM[MEM[64] + 4 + 96] = v107.length;
                            MCOPY(MEM[64] + 4 + 96 + 32, v107.data, v107.length);
                            MEM[32 + (v107.length + (MEM[64] + 4 + 96))] = 0;
                            MEM[MEM[64] + 4 + 32] = 160;
                            MEM[32 + (MEM[64] + 4 + 96) + 32] = v93.word0.length;
                            v115 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                            v116 = v117 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                            v118 = v93.data;
                            v119 = 0;
                            while (v119 < v93.word0.length) {
                                MEM[v115] = v116 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                MEM[v116] = MEM[MEM[v118]];
                                MCOPY(v116 + 32, 32 + MEM[v118], MEM[MEM[v118]]);
                                MEM[32 + (MEM[MEM[v118]] + v116)] = 0;
                                v116 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v118]]) + v116 + 32;
                                v118 = v118 + 32;
                                v115 = v115 + 32;
                                v119 = v119 + 1;
                            }
                            MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                            v120 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x43410x3d36V0x30a4 - MEM[64]], MEM[MEM[64]:MEM[64] + v54dbV0x55020x3d36V0x30a4]).value(v5).gas(msg.gas);
                            if (!v120) {
                                RETURNDATACOPY(MEM[64], v7, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v120) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v7, v7, v7);
                            }
                        }
                    }
                    v121, /* uint112 */ v7 = address(v103).balanceOf(address(this)).gas(msg.gas);
                    if (!v121) {
                        RETURNDATACOPY(MEM[64], v7, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v121) {
                            if (v81 > RETURNDATASIZE()) {
                                v81 = v122 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v81 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v81 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v81 - MEM[64] >= v81);
                        }
                        v55 = v123 = _SafeSub(v7, v7);
                    }
                }
            }
        } else {
            require(!(varg3 - address(varg3)), v8, v8);
            v124, /* uint112 */ v7 = address(varg3).balanceOf(address(this)).gas(msg.gas);
            if (!v124) {
                RETURNDATACOPY(MEM[64], v8, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                if (v124) {
                    v125 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v125 = v126 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v125 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v125 - MEM[64] >= 32);
                }
                0x4ee8(varg2, varg0, v6);
                v127, /* uint112 */ v7, /* uint112 */ v7, /* uint32 */ v128 = varg0.getReserves().gas(msg.gas);
                if (!v127) {
                    RETURNDATACOPY(MEM[64], v8, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v127) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v129 = v130 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v129 = v131 = MEM[64] + 96;
                        }
                        require(v129 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v7 - uint112(v7)));
                        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                    }
                    v132, /* uint112 */ v7 = varg0.token0().gas(msg.gas);
                    if (!v132) {
                        RETURNDATACOPY(MEM[64], v8, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v132) {
                            if (32 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v133 = v134 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 32;
                                v133 = v135 = MEM[64] + 32;
                            }
                            require(v133 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        if (address(v7) != varg2) {
                            v136 = uint112(v7);
                            v137 = uint112(v7);
                        } else {
                            v136 = v138 = uint112(v7);
                            v137 = v139 = uint112(v7);
                        }
                        require(v6, Error('INSUFFICIENT_INPUT_AMOUNT'));
                        v140 = bool(v136);
                        if (v140) {
                            v140 = v141 = bool(v137);
                        }
                        require(v140, Error('INSUFFICIENT_LIQUIDITY'));
                        require(!(997 - v6 * 997 / v6), Panic(17)); // arithmetic overflow or underflow
                        v142 = _SafeMul(v6 * 997, v137);
                        require((1000 == v136 * 1000 / v136) | !v136, Panic(17)); // arithmetic overflow or underflow
                        v143 = _SafeAdd(v136 * 1000, v6 * 997);
                        v7 = v144 = _SafeDiv(v142, v143);
                        if (address(v7) == varg2) {
                        }
                        require(varg0.code.size, v8, v8);
                        v145 = varg0.swap(v7, v7, address(this), 128, 0).value(v8).gas(msg.gas);
                        if (!v145) {
                            RETURNDATACOPY(MEM[64], v8, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v145) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v8, v8, v8);
                            }
                            v146, /* uint112 */ v7 = address(varg3).balanceOf(address(this)).gas(msg.gas);
                            if (!v146) {
                                RETURNDATACOPY(MEM[64], v8, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v146) {
                                    v147 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v147 = v148 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v147 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v147 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v147 - MEM[64] >= 32);
                                }
                                v55 = v149 = _SafeSub(v7, v7);
                            }
                        }
                    }
                }
            }
        }
        require(v55, SwapFailed());
        v150 = 0x3b1d(varg16.data, varg16.length, v3);
        require(!(msg.data[v150] - address(msg.data[v150])));
        v151 = v152 = 0;
        require(varg8 < 8);
        if (varg8) {
            if (varg8 - 6) {
                if (7 != varg8) {
                    v153 = v154 = varg7;
                    require(!(varg7 - v154));
                    v155 = v156 = 0;
                    v157 = v158 = 64;
                    v159 = v160 = varg9 < varg10;
                    _algebraSwapCallback = varg7;
                    stor_6 = v55;
                    if (v156 == v160) {
                        v161 = new struct(2);
                        v162 = v161.data;
                        v161.word1 = varg9;
                        v161.word0 = 32;
                        require(!((v161 + 64 > uint64.max) | (v161 + 64 < v161)), Panic(65)); // failed memory allocation (too much memory)
                        v163 = MEM[v158];
                        MEM[v163] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v163 + 4] = address(msg.data[v150]);
                        MEM[v163 + 4 + 32] = bool(v160);
                        MEM[v163 + 4 + 64] = v55;
                        MEM[v163 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v163 + 4 + 128] = 160;
                        MEM[v163 + 4 + 160] = v161.word0.length;
                        MCOPY(v163 + 4 + 160 + 32, v161.data, v161.word0.length);
                        MEM[32 + (v161.word0.length + (v163 + 4 + 160))] = 0;
                        v164 = 32 + (v163 + 4 + 160) + 32;
                    } else {
                        v165 = new struct(2);
                        v166 = v165.data;
                        v165.word1 = varg9;
                        v165.word0 = 32;
                        require(!((v165 + 64 > uint64.max) | (v165 + 64 < v165)), Panic(65)); // failed memory allocation (too much memory)
                        v163 = v167 = MEM[v158];
                        MEM[v167] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v167 + 4] = address(msg.data[v150]);
                        MEM[v167 + 4 + 32] = bool(v160);
                        MEM[v167 + 4 + 64] = v55;
                        MEM[v167 + 4 + 96] = address(0x1000276a4);
                        MEM[v167 + 4 + 128] = 160;
                        MEM[v167 + 4 + 160] = v165.word0.length;
                        MCOPY(v167 + 4 + 160 + 32, v165.data, v165.word0.length);
                        MEM[32 + (v165.word0.length + (v167 + 4 + 160))] = 0;
                        v164 = v168 = 32 + (v167 + 4 + 160) + 32;
                    }
                    v169 = v153.call(MEM[v1e327V0x480b0x4829V0x30ca:v1e327V0x480b0x4829V0x30ca + v52cdV0x54a10x4663V0x480b0x4829V0x30ca - v1e327V0x480b0x4829V0x30ca], MEM[v1e327V0x480b0x4829V0x30ca:v1e327V0x480b0x4829V0x30ca + v47b00x4829_0x6V0x30ca]).value(v155).gas(msg.gas);
                    if (!v169) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v170 = v171 = 0x1e3e4;
                        v172 = v173 = 0;
                        v172 = v174 = 0;
                        if (v169) {
                            v175 = v176 = 18436;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v163 + 64 > uint64.max) | (v163 + 64 < v163)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v163 + 64;
                                v177 = v178 = v163 + 64;
                            }
                        }
                    }
                } else {
                    v179 = v180 = varg7;
                    require(!(varg7 - v180));
                    _algebraSwapCallback = varg7;
                    v159 = v181 = varg9 < varg10;
                    v182 = v183 = 64;
                    v184 = v185 = 0;
                    if (varg9 >= varg10) {
                        v186 = new struct(2);
                        v187 = v186.data;
                        v186.word1 = varg9;
                        v186.word0 = 32;
                        require(!((v186 + 64 > uint64.max) | (v186 + 64 < v186)), Panic(65)); // failed memory allocation (too much memory)
                        v163 = v188 = MEM[v183];
                        MEM[v188] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v188 + 4] = address(msg.data[v150]);
                        MEM[v188 + 4 + 32] = bool(v181);
                        MEM[v188 + 4 + 64] = v55;
                        MEM[v188 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                        MEM[v188 + 4 + 128] = 160;
                        MEM[v188 + 4 + 160] = v186.word0.length;
                        MCOPY(v188 + 4 + 160 + 32, v186.data, v186.word0.length);
                        MEM[32 + (v186.word0.length + (v188 + 4 + 160))] = 0;
                        v189 = 32 + (v188 + 4 + 160) + 32;
                    } else {
                        v190 = new struct(2);
                        v191 = v190.data;
                        v190.word1 = varg9;
                        v190.word0 = 32;
                        require(!((v190 + 64 > uint64.max) | (v190 + 64 < v190)), Panic(65)); // failed memory allocation (too much memory)
                        v163 = v192 = MEM[v183];
                        MEM[v192] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v192 + 4] = address(msg.data[v150]);
                        MEM[v192 + 4 + 32] = bool(v181);
                        MEM[v192 + 4 + 64] = v55;
                        MEM[v192 + 4 + 96] = address(0x1000276a4);
                        MEM[v192 + 4 + 128] = 160;
                        MEM[v192 + 4 + 160] = v190.word0.length;
                        MCOPY(v192 + 4 + 160 + 32, v190.data, v190.word0.length);
                        MEM[32 + (v190.word0.length + (v192 + 4 + 160))] = 0;
                        v189 = v193 = 32 + (v192 + 4 + 160) + 32;
                    }
                    v194 = v179.call(MEM[v1e327V0x480b0x4829V0x30ca:v1e327V0x480b0x4829V0x30ca + v52cdV0x54a10x4663V0x47030x4829V0x30ca - v1e327V0x480b0x4829V0x30ca], MEM[v1e327V0x480b0x4829V0x30ca:v1e327V0x480b0x4829V0x30ca + v46950x4829_0x6V0x30ca]).value(v184).gas(msg.gas);
                    if (!v194) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v170 = v195 = 0x1e360;
                        v172 = v196 = 0;
                        v172 = v197 = 0;
                        if (v194) {
                            v175 = 18165;
                            v198 = 64;
                            if (64 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x46fc0x4829B0x30ca. Refer to 3-address code (TAC);
                            }
                        }
                    }
                }
                _algebraSwapCallback = 0;
                if (v159) {
                }
                require(v172 != int256.min, Panic(17)); // arithmetic overflow or underflow
                v199 = v200 = 0 - v172;
                // Unknown jump to Block ['0x1e3600x4829B0x30ca', '0x1e3e40x4829B0x30ca']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x50b60x4829B0x30ca. Refer to 3-address code (TAC);
                require(!((v163 + (v198 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v163 + (v198 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v163)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v163 + (v198 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v177 = v201 = v163 + v198;
                require(v177 - v163 >= 64);
                v172 = v202 = MEM[v163];
                v172 = v203 = MEM[v163 + 32];
                // Unknown jump to Block ['0x46f50x4829B0x30ca', '0x48040x4829B0x30ca']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x47c80x4829B0x30ca. Refer to 3-address code (TAC);
                v198 = v204 = RETURNDATASIZE();
                // Unknown jump to Block 0x46e30x4829B0x30ca. Refer to 3-address code (TAC);
                _algebraSwapCallback = 0;
                stor_6 = 0;
                if (v159) {
                }
            } else {
                v205 = new struct(5);
                require(!((v205 + 160 > uint64.max) | (v205 + 160 < v205)), Panic(65)); // failed memory allocation (too much memory)
                v205.word0 = 0;
                v205.word1 = 0;
                v205.word2 = 0;
                v205.word3 = 0;
                v205.word4 = 0;
                v206 = v207 = varg9 != varg9;
                require(!v207);
                if (varg9 >= varg10) {
                    v206 = v208 = 0;
                } else {
                    require(!v207);
                }
                require(!(varg11 - uint24(varg11)));
                require(!(varg12 - int24(varg12)));
                require(!(varg13 - address(varg13)));
                v209 = v210 = new struct(5);
                require(!((v210 + 160 > uint64.max) | (v210 + 160 < v210)), Panic(65)); // failed memory allocation (too much memory)
                v210.word0 = address(v211);
                v212 = v213 = v210 + 32;
                v210.word1 = address(v211);
                v210.word2 = uint24(varg11);
                v210.word3 = int24(varg12);
                v210.word4 = address(varg13);
                require(!v206);
                v214 = v215 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg9;
                v214 = v216 = !address(v211);
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg9) {
                }
                if (!v214) {
                    0x501f(varg9, v55);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v217 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg9, stor_4_0_19, address(v55), uint48(block.timestamp + 60)).gas(msg.gas);
                    if (!v217) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v217) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v151 = v218 = 0;
                    }
                }
                if (bool(address(v211))) {
                    v214 = v219 = address(v211) == varg9;
                }
                v220 = 0x60000;
                MEM[v220 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                MEM[v220 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                require(!((v220 + 64 > uint64.max) | (v220 + 64 < v220)), Panic(65)); // failed memory allocation (too much memory)
                v221 = new struct(4);
                require(!((v221 + 128 > uint64.max) | (v221 + 128 < v221)), Panic(65)); // failed memory allocation (too much memory)
                v221.word0 = 3;
                v222 = v223 = 0;
                while (v222 < 96) {
                    MEM[v221 + v222 + 32] = 96;
                    v222 = v222 + 32;
                }
                v224 = new struct(5);
                require(!((v224 + 160 > uint64.max) | (v224 + 160 < v224)), Panic(65)); // failed memory allocation (too much memory)
                v224.word0 = v210;
                v224.word1 = bool(v214);
                v224.word2 = uint128(v55);
                v224.word3 = 1;
                v225 = 32;
                v226 = new struct(1);
                require(!((v226 + 32 > uint64.max) | (v226 + 32 < v226)), Panic(65)); // failed memory allocation (too much memory)
                v226.word0 = v151;
                v224.word4 = v226;
                MEM[MEM[64] + v225] = v225;
                MEM[MEM[64] + 64] = address(MEM[v224.word0]);
                MEM[MEM[64] + 64 + 32] = address(MEM[v224.word0 + 32]);
                MEM[MEM[64] + 64 + 64] = uint24(MEM[v224.word0 + 64]);
                MEM[MEM[64] + 64 + 96] = int24(MEM[v224.word0 + 96]);
                MEM[MEM[64] + 64 + 128] = address(MEM[128 + v224.word0]);
                MEM[MEM[64] + 64 + 160] = bool(v224.word1);
                MEM[MEM[64] + 64 + 192] = uint128(v224.word2);
                MEM[MEM[64] + 64 + 224] = uint128(v224.word3);
                MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                MEM[MEM[64] + 64 + 288] = MEM[v224.word4];
                MCOPY(MEM[64] + 64 + 288 + 32, 32 + v224.word4, MEM[v224.word4]);
                MEM[32 + (MEM[v224.word4] + (MEM[64] + 64 + 288))] = 0;
                MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v224.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v224.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v224.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v221.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v227 = v221.data;
                v221.word1 = MEM[64];
                require(v221.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v228 = v221.data;
                if (!v214) {
                    v229 = new struct(3);
                    v229.word1 = address(v210.word1);
                    v229.word2 = v55;
                    v229.word0 = 64;
                    require(!((v229 + 96 > uint64.max) | (v229 + 96 < v229)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v221.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v230 = 64 + v221;
                } else {
                    v229 = v231 = new struct(3);
                    v231.word1 = address(v210.word0);
                    v231.word2 = v55;
                    v231.word0 = 64;
                    require(!((v231 + 96 > uint64.max) | (v231 + 96 < v231)), Panic(65)); // failed memory allocation (too much memory)
                    require(1 < v221.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v230 = v232 = 64 + v221;
                }
                MEM[v230] = v229;
                require(1 < MEM[v221], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (!v214) {
                    v233 = v234 = address(MEM[v209]);
                } else {
                    v233 = address(MEM[v212]);
                }
                v235 = new struct(3);
                v236 = v235.data;
                v235.word1 = address(v233);
                v235.word2 = 1;
                v235.word0 = 64;
                require(!((v235 + 96 > uint64.max) | (v235 + 96 < v235)), Panic(65)); // failed memory allocation (too much memory)
                require(2 < MEM[v221], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[96 + v221] = v235;
                require(2 < MEM[v221], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v237 = new struct(2);
                require(!((v237 + 64 > uint64.max) | (v237 + 64 < v237)), Panic(65)); // failed memory allocation (too much memory)
                v237.word0 = 1;
                v238 = v239 = 0;
                while (v238 < 32) {
                    MEM[v237 + v238 + 32] = 96;
                    v238 = v238 + 32;
                }
                MEM[MEM[64] + v225] = 64;
                MEM[MEM[64] + v225 + 64] = MEM[v220];
                MCOPY(MEM[64] + v225 + 64 + 32, 32 + v220, MEM[v220]);
                MEM[32 + (MEM[v220] + (MEM[64] + v225 + 64))] = 0;
                MEM[MEM[64] + v225 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v220]) + (MEM[64] + v225 + 64) + 32 - (MEM[64] + v225);
                MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v220]) + (MEM[64] + v225 + 64) + 32] = MEM[v221];
                v240 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v220]) + (MEM[64] + v225 + 64) + 32 + 32;
                v241 = v242 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v220]) + (MEM[64] + v225 + 64) + 32 + (MEM[v221] << 5) + 32;
                v243 = v221 + 32;
                v244 = 0;
                while (v244 < MEM[v221]) {
                    MEM[v240] = v241 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v220]) + (MEM[64] + v225 + 64) + 32) - 32;
                    MEM[v241] = MEM[MEM[v243]];
                    MCOPY(v241 + 32, 32 + MEM[v243], MEM[MEM[v243]]);
                    MEM[32 + (MEM[MEM[v243]] + v241)] = 0;
                    v241 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v243]]) + v241 + 32;
                    v243 = v243 + 32;
                    v240 = v240 + 32;
                    v244 = v244 + 1;
                }
                MEM[MEM[64]] = v241 - MEM[64] - 32;
                require(!((MEM[64] + (v241 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v241 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(v237.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v245 = v237.data;
                v237.word1 = MEM[64];
                require(v237.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v246 = v237.data;
                require(!0, Panic(65)); // failed memory allocation (too much memory)
                if (!v214) {
                    v247 = v248 = address(MEM[v209]);
                } else {
                    v247 = address(MEM[v212]);
                }
                v249, /* uint112 */ v151 = address(v247).balanceOf(address(msg.data[v150])).gas(msg.gas);
                if (!v249) {
                    RETURNDATACOPY(MEM[64], v151, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v249) {
                        if (v225 > RETURNDATASIZE()) {
                            v225 = v250 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v225 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v225 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v225 - MEM[64] >= v225);
                    }
                    if (!v214) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v151, v151);
                        MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                        MEM[MEM[64] + 4] = 96;
                        MEM[MEM[64] + 4 + 96] = v251.length;
                        MCOPY(MEM[64] + 4 + 96 + 32, v251.data, v251.length);
                        MEM[32 + (v251.length + (MEM[64] + 4 + 96))] = 0;
                        MEM[MEM[64] + 4 + 32] = 160;
                        MEM[32 + (MEM[64] + 4 + 96) + 32] = v237.word0.length;
                        v252 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                        v253 = v254 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                        v255 = v237.data;
                        v256 = 0;
                        while (v256 < v237.word0.length) {
                            MEM[v252] = v253 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                            MEM[v253] = MEM[MEM[v255]];
                            MCOPY(v253 + 32, 32 + MEM[v255], MEM[MEM[v255]]);
                            MEM[32 + (MEM[MEM[v255]] + v253)] = 0;
                            v253 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v255]]) + v253 + 32;
                            v255 = v255 + 32;
                            v252 = v252 + 32;
                            v256 = v256 + 1;
                        }
                        MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                        v257 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x44360x4829V0x30ca - MEM[64]], MEM[MEM[64]:MEM[64] + v54dbV0x55020x4829V0x30ca]).value(v151).gas(msg.gas);
                        if (!v257) {
                            RETURNDATACOPY(MEM[64], v151, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else if (v257) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v151, v151, v151);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v151, v151);
                        v258 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v55).value(v151).gas(msg.gas);
                        if (!v258) {
                            RETURNDATACOPY(MEM[64], v151, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v258) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v151, v151, v151);
                            }
                            require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                            require(stor_4_0_19.code.size, v151, v151);
                            MEM[MEM[64]] = 0x3593564c00000000000000000000000000000000000000000000000000000000;
                            MEM[MEM[64] + 4] = 96;
                            MEM[MEM[64] + 4 + 96] = v251.length;
                            MCOPY(MEM[64] + 4 + 96 + 32, v251.data, v251.length);
                            MEM[32 + (v251.length + (MEM[64] + 4 + 96))] = 0;
                            MEM[MEM[64] + 4 + 32] = 160;
                            MEM[32 + (MEM[64] + 4 + 96) + 32] = v237.word0.length;
                            v259 = 32 + (MEM[64] + 4 + 96) + 32 + 32;
                            v260 = v261 = 32 + (MEM[64] + 4 + 96) + 32 + 32 + 32;
                            v262 = v237.data;
                            v263 = 0;
                            while (v263 < v237.word0.length) {
                                MEM[v259] = v260 - (32 + (MEM[64] + 4 + 96) + 32) - 32;
                                MEM[v260] = MEM[MEM[v262]];
                                MCOPY(v260 + 32, 32 + MEM[v262], MEM[MEM[v262]]);
                                MEM[32 + (MEM[MEM[v262]] + v260)] = 0;
                                v260 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v262]]) + v260 + 32;
                                v262 = v262 + 32;
                                v259 = v259 + 32;
                                v263 = v263 + 1;
                            }
                            MEM[MEM[64] + 4 + 64] = block.timestamp + 1;
                            v264 = stor_4_0_19.call(MEM[MEM[64]:MEM[64] + v52cdV0x53aeV0x541bV0x43410x4829V0x30ca - MEM[64]], MEM[MEM[64]:MEM[64] + v54dbV0x55020x4829V0x30ca]).value(v55).gas(msg.gas);
                            if (!v264) {
                                RETURNDATACOPY(MEM[64], v151, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v264) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v151, v151, v151);
                            }
                        }
                    }
                    v265, /* uint112 */ v151 = address(v247).balanceOf(address(msg.data[v150])).gas(msg.gas);
                    if (!v265) {
                        RETURNDATACOPY(MEM[64], v151, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v265) {
                            if (v225 > RETURNDATASIZE()) {
                                v225 = v266 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v225 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v225 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v225 - MEM[64] >= v225);
                        }
                        v199 = v267 = _SafeSub(v151, v151);
                    }
                }
            }
        } else {
            v268, /* uint112 */ v151 = varg10.balanceOf(address(msg.data[v150])).gas(msg.gas);
            if (!v268) {
                RETURNDATACOPY(MEM[64], v152, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                if (v268) {
                    v269 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v269 = v270 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v269 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v269 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v269 - MEM[64] >= 32);
                    0x4ee8(varg9, varg7, v55);
                } else {
                    0x4ee8(varg9, varg7, v55);
                }
                v271, /* uint112 */ v151, /* uint112 */ v151, /* uint32 */ v272 = varg7.getReserves().gas(msg.gas);
                if (!v271) {
                    RETURNDATACOPY(MEM[64], v152, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v271) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v273 = v274 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v273 = v275 = MEM[64] + 96;
                        }
                        require(v273 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v151 - uint112(v151)));
                        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
                    }
                    v276, /* uint112 */ v151 = varg7.token0().gas(msg.gas);
                    if (!v276) {
                        RETURNDATACOPY(MEM[64], v152, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v276) {
                            if (32 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v277 = v278 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 32;
                                v277 = v279 = MEM[64] + 32;
                            }
                            require(v277 - MEM[64] >= 32);
                            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        }
                        if (address(v151) != varg9) {
                            v280 = uint112(v151);
                            v281 = uint112(v151);
                        } else {
                            v280 = v282 = uint112(v151);
                            v281 = v283 = uint112(v151);
                        }
                        require(v55, Error('INSUFFICIENT_INPUT_AMOUNT'));
                        v284 = bool(v280);
                        if (v284) {
                            v284 = v285 = bool(v281);
                        }
                        require(v284, Error('INSUFFICIENT_LIQUIDITY'));
                        require(!(997 - v55 * 997 / v55), Panic(17)); // arithmetic overflow or underflow
                        v286 = _SafeMul(v55 * 997, v281);
                        require((1000 == v280 * 1000 / v280) | !v280, Panic(17)); // arithmetic overflow or underflow
                        v287 = _SafeAdd(v280 * 1000, v55 * 997);
                        v151 = v288 = _SafeDiv(v286, v287);
                        if (address(v151) == varg9) {
                        }
                        require(varg7.code.size, v152, v152);
                        v289 = varg7.swap(v151, v151, address(msg.data[v150]), 128, 0).value(v152).gas(msg.gas);
                        if (!v289) {
                            RETURNDATACOPY(MEM[64], v152, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v289) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(!v152, v152, v152);
                            }
                            v290, /* uint112 */ v151 = varg10.balanceOf(address(msg.data[v150])).gas(msg.gas);
                            if (!v290) {
                                RETURNDATACOPY(MEM[64], v152, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v290) {
                                    v291 = 32;
                                    if (32 > RETURNDATASIZE()) {
                                        v291 = v292 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v291 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    require(MEM[64] + v291 - MEM[64] >= 32);
                                }
                                v199 = v293 = _SafeSub(v151, v151);
                            }
                        }
                    }
                }
            }
        }
        v3 = _SafeAdd(v3, v6);
        require(v3 <= varg15, SlippageExceeded());
        v3 = _SafeAdd(v3, v199);
        v3 = v3 + 1;
    }
    if (varg17) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v294, /* uint256 */ v295 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg17).gas(msg.gas);
        require(v294, v295, RETURNDATASIZE());
        if (v294) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        v296, /* uint256 */ v297 = block.coinbase.call().value(varg17).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v298 = v299 = new bytes[](RETURNDATASIZE());
            require(!((v299 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v299 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v299)), Panic(65)); // failed memory allocation (too much memory)
            v297 = v299.data;
            RETURNDATACOPY(v297, 0, RETURNDATASIZE());
        }
        require(v296, fullExit());
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg17);
    }
    require(!(varg3 - address(varg3)));
    emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(varg10, address(varg3), v3, 0, v3, varg16.length, varg17);
    return v3;
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

function 0x238c6060(address varg0, address varg1, address varg2, uint256 varg3, address varg4, address varg5, address varg6, address varg7, address varg8, address varg9, address varg10, address varg11, address varg12, uint24 varg13, int24 varg14, address varg15, address varg16, address varg17) public nonPayable { 
    require(msg.data.length - 4 >= 576);
    require(224 <= msg.data.length - 4);
    require(msg.data.length - 228 >= 224);
    v0 = v1 = !_operators[msg.sender];
    if (v1) {
        v0 = v2 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v0, Unauthorized());
    require(varg14, InvalidAmount());
    v3 = _SafeAdd(varg14, varg17);
    v4, /* uint256 */ v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (v4) {
        v6 = v7 = 32;
        if (32 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    require(v5 >= v3, InsufficientBalance());
    v9 = v10 = 0;
    require(varg1 < 8);
    if (varg1) {
        if (varg1 - 6) {
            if (7 != varg1) {
                v11 = v12 = varg0;
                require(!(varg0 - v12));
                require(!(varg3 - address(varg3)));
                v13 = v14 = 0;
                v15 = v16 = 64;
                v17 = v18 = varg2 < address(varg3);
                _algebraSwapCallback = varg0;
                stor_6 = varg14;
                if (v14 == v18) {
                    v19 = new struct(2);
                    v20 = v19.data;
                    v19.word1 = varg2;
                    v19.word0 = 32;
                    require(!((v19 + 64 > uint64.max) | (v19 + 64 < v19)), Panic(65)); // failed memory allocation (too much memory)
                    v21 = MEM[v16];
                    MEM[v21] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v21 + 4] = address(this);
                    MEM[v21 + 4 + 32] = bool(v18);
                    MEM[v21 + 4 + 64] = varg14;
                    MEM[v21 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v21 + 4 + 128] = 160;
                    MEM[v21 + 4 + 160] = v19.word0.length;
                    MCOPY(v21 + 4 + 160 + 32, v19.data, v19.word0.length);
                    MEM[32 + (v19.word0.length + (v21 + 4 + 160))] = 0;
                    v22 = 32 + (v21 + 4 + 160) + 32;
                } else {
                    v23 = new struct(2);
                    v24 = v23.data;
                    v23.word1 = varg2;
                    v23.word0 = 32;
                    require(!((v23 + 64 > uint64.max) | (v23 + 64 < v23)), Panic(65)); // failed memory allocation (too much memory)
                    v21 = v25 = MEM[v16];
                    MEM[v25] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v25 + 4] = address(this);
                    MEM[v25 + 4 + 32] = bool(v18);
                    MEM[v25 + 4 + 64] = varg14;
                    MEM[v25 + 4 + 96] = address(0x1000276a4);
                    MEM[v25 + 4 + 128] = 160;
                    MEM[v25 + 4 + 160] = v23.word0.length;
                    MCOPY(v25 + 4 + 160 + 32, v23.data, v23.word0.length);
                    MEM[32 + (v23.word0.length + (v25 + 4 + 160))] = 0;
                    v22 = v26 = 32 + (v25 + 4 + 160) + 32;
                }
                v27 = v11.call(MEM[v1e327V0x480b0x3d36V0x329d:v1e327V0x480b0x3d36V0x329d + v52cdV0x54a10x4663V0x480b0x3d36V0x329d - v1e327V0x480b0x3d36V0x329d], MEM[v1e327V0x480b0x3d36V0x329d:v1e327V0x480b0x3d36V0x329d + v47b00x3d36_0x6V0x329d]).value(v13).gas(msg.gas);
                require(v27, MEM[64], RETURNDATASIZE());
                v28 = v29 = 0x1e3e4;
                v30 = v31 = 0;
                v30 = v32 = 0;
                if (v27) {
                    v33 = v34 = 18436;
                    if (64 <= RETURNDATASIZE()) {
                        require(!((v21 + 64 > uint64.max) | (v21 + 64 < v21)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v21 + 64;
                        v35 = v36 = v21 + 64;
                    }
                }
            } else {
                v37 = v38 = varg0;
                require(!(varg0 - v38));
                require(!(varg3 - address(varg3)));
                _algebraSwapCallback = varg0;
                v17 = v39 = varg2 < address(varg3);
                v40 = v41 = 64;
                v42 = v43 = 0;
                if (varg2 >= address(varg3)) {
                    v44 = new struct(2);
                    v45 = v44.data;
                    v44.word1 = varg2;
                    v44.word0 = 32;
                    require(!((v44 + 64 > uint64.max) | (v44 + 64 < v44)), Panic(65)); // failed memory allocation (too much memory)
                    v21 = v46 = MEM[v41];
                    MEM[v46] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v46 + 4] = address(this);
                    MEM[v46 + 4 + 32] = bool(v39);
                    MEM[v46 + 4 + 64] = varg14;
                    MEM[v46 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v46 + 4 + 128] = 160;
                    MEM[v46 + 4 + 160] = v44.word0.length;
                    MCOPY(v46 + 4 + 160 + 32, v44.data, v44.word0.length);
                    MEM[32 + (v44.word0.length + (v46 + 4 + 160))] = 0;
                    v47 = 32 + (v46 + 4 + 160) + 32;
                } else {
                    v48 = new struct(2);
                    v49 = v48.data;
                    v48.word1 = varg2;
                    v48.word0 = 32;
                    require(!((v48 + 64 > uint64.max) | (v48 + 64 < v48)), Panic(65)); // failed memory allocation (too much memory)
                    v21 = v50 = MEM[v41];
                    MEM[v50] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v50 + 4] = address(this);
                    MEM[v50 + 4 + 32] = bool(v39);
                    MEM[v50 + 4 + 64] = varg14;
                    MEM[v50 + 4 + 96] = address(0x1000276a4);
                    MEM[v50 + 4 + 128] = 160;
                    MEM[v50 + 4 + 160] = v48.word0.length;
                    MCOPY(v50 + 4 + 160 + 32, v48.data, v48.word0.length);
                    MEM[32 + (v48.word0.length + (v50 + 4 + 160))] = 0;
                    v47 = v51 = 32 + (v50 + 4 + 160) + 32;
                    // Unknown jump to Block 0x46950x3d36B0x329d. Refer to 3-address code (TAC);
                }
                v52 = v37.call(MEM[v1e327V0x480b0x3d36V0x329d:v1e327V0x480b0x3d36V0x329d + v52cdV0x54a10x4663V0x47030x3d36V0x329d - v1e327V0x480b0x3d36V0x329d], MEM[v1e327V0x480b0x3d36V0x329d:v1e327V0x480b0x3d36V0x329d + v46950x3d36_0x6V0x329d]).value(v42).gas(msg.gas);
                require(v52, MEM[64], RETURNDATASIZE());
                v28 = v53 = 0x1e360;
                v30 = v54 = 0;
                v30 = v55 = 0;
                if (v52) {
                    v33 = 18165;
                    v56 = 64;
                    if (64 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x46fc0x3d36B0x329d. Refer to 3-address code (TAC);
                    }
                }
            }
            _algebraSwapCallback = 0;
            if (v17) {
            }
            require(v30 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v57 = v58 = 0 - v30;
            // Unknown jump to Block ['0x1e3600x3d36B0x329d', '0x1e3e40x3d36B0x329d']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x50b60x3d36B0x329d. Refer to 3-address code (TAC);
            require(!((v21 + (v56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (v56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v21 + (v56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v35 = v59 = v21 + v56;
            require(v35 - v21 >= 64);
            v30 = v60 = MEM[v21];
            v30 = v61 = MEM[v21 + 32];
            // Unknown jump to Block ['0x46f50x3d36B0x329d', '0x48040x3d36B0x329d']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x47c80x3d36B0x329d. Refer to 3-address code (TAC);
            v56 = v62 = RETURNDATASIZE();
            // Unknown jump to Block 0x46e30x3d36B0x329d. Refer to 3-address code (TAC);
            _algebraSwapCallback = 0;
            stor_6 = 0;
            if (v17) {
            }
        } else {
            v63 = new struct(5);
            require(!((v63 + 160 > uint64.max) | (v63 + 160 < v63)), Panic(65)); // failed memory allocation (too much memory)
            v63.word0 = 0;
            v63.word1 = 0;
            v63.word2 = 0;
            v63.word3 = 0;
            v63.word4 = 0;
            v64 = v65 = varg2 != varg2;
            require(!v65);
            require(varg3 == address(varg3));
            if (varg2 >= address(varg3)) {
                v64 = v66 = 0;
            } else {
                require(!v65);
                require(varg3 == address(varg3));
            }
            require(!(varg4 - uint24(varg4)));
            require(!(varg5 - int24(varg5)));
            v67 = v68 = new struct(5);
            require(!((v68 + 160 > uint64.max) | (v68 + 160 < v68)), Panic(65)); // failed memory allocation (too much memory)
            v68.word0 = address(v69);
            v70 = v71 = v68 + 32;
            v68.word1 = address(v69);
            v68.word2 = uint24(varg4);
            v68.word3 = int24(varg5);
            v68.word4 = varg6;
            require(!v64);
            v72 = v73 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg2;
            v72 = v74 = !address(v69);
            if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg2) {
            }
            if (!v72) {
                0x501f(varg2, varg14);
                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                v75, /* uint256 */ v76 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg2, stor_4_0_19, address(varg14), uint48(block.timestamp + 60)).gas(msg.gas);
                require(v75, v76, RETURNDATASIZE());
                if (v75) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v9 = v77 = 0;
                }
            }
            if (bool(address(v69))) {
                v72 = v78 = address(v69) == varg2;
            }
            v79 = 0x60000;
            MEM[v79 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v79 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!((v79 + 64 > uint64.max) | (v79 + 64 < v79)), Panic(65)); // failed memory allocation (too much memory)
            v80 = new struct(4);
            require(!((v80 + 128 > uint64.max) | (v80 + 128 < v80)), Panic(65)); // failed memory allocation (too much memory)
            v80.word0 = 3;
            v81 = v82 = 0;
            while (v81 < 96) {
                MEM[v80 + v81 + 32] = 96;
                v81 = v81 + 32;
            }
            v83 = new struct(5);
            require(!((v83 + 160 > uint64.max) | (v83 + 160 < v83)), Panic(65)); // failed memory allocation (too much memory)
            v83.word0 = v68;
            v83.word1 = bool(v72);
            v83.word2 = uint128(varg14);
            v83.word3 = 1;
            v84 = 32;
            v85 = new struct(1);
            require(!((v85 + 32 > uint64.max) | (v85 + 32 < v85)), Panic(65)); // failed memory allocation (too much memory)
            v85.word0 = v9;
            v83.word4 = v85;
            MEM[MEM[64] + v84] = v84;
            MEM[MEM[64] + 64] = address(MEM[v83.word0]);
            MEM[MEM[64] + 64 + 32] = address(MEM[v83.word0 + 32]);
            MEM[MEM[64] + 64 + 64] = uint24(MEM[v83.word0 + 64]);
            MEM[MEM[64] + 64 + 96] = int24(MEM[v83.word0 + 96]);
            MEM[MEM[64] + 64 + 128] = address(MEM[128 + v83.word0]);
            MEM[MEM[64] + 64 + 160] = bool(v83.word1);
            MEM[MEM[64] + 64 + 192] = uint128(v83.word2);
            MEM[MEM[64] + 64 + 224] = uint128(v83.word3);
            MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
            MEM[MEM[64] + 64 + 288] = MEM[v83.word4];
            MCOPY(MEM[64] + 64 + 288 + 32, 32 + v83.word4, MEM[v83.word4]);
            MEM[32 + (MEM[v83.word4] + (MEM[64] + 64 + 288))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v83.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v86 = v80.data;
            v80.word1 = MEM[64];
            require(v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v87 = v80.data;
            if (!v72) {
                v88 = new struct(3);
                v88.word1 = address(v68.word1);
                v88.word2 = varg14;
                v88.word0 = 64;
                require(!((v88 + 96 > uint64.max) | (v88 + 96 < v88)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v89 = 64 + v80;
            } else {
                v88 = v90 = new struct(3);
                v90.word1 = address(v68.word0);
                v90.word2 = varg14;
                v90.word0 = 64;
                require(!((v90 + 96 > uint64.max) | (v90 + 96 < v90)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v80.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v89 = v91 = 64 + v80;
            }
            MEM[v89] = v88;
            require(1 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v72) {
                v92 = v93 = address(MEM[v67]);
            } else {
                v92 = address(MEM[v70]);
            }
            v94 = new struct(3);
            v95 = v94.data;
            v94.word1 = address(v92);
            v94.word2 = 1;
            v94.word0 = 64;
            require(!((v94 + 96 > uint64.max) | (v94 + 96 < v94)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[96 + v80] = v94;
            require(2 < MEM[v80], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v96 = new struct(2);
            require(!((v96 + 64 > uint64.max) | (v96 + 64 < v96)), Panic(65)); // failed memory allocation (too much memory)
            v96.word0 = 1;
            v97 = v98 = 0;
            while (v97 < 32) {
                MEM[v96 + v97 + 32] = 96;
                v97 = v97 + 32;
            }
            MEM[MEM[64] + v84] = 64;
            MEM[MEM[64] + v84 + 64] = MEM[v79];
            MCOPY(MEM[64] + v84 + 64 + 32, 32 + v79, MEM[v79]);
            MEM[32 + (MEM[v79] + (MEM[64] + v84 + 64))] = 0;
            MEM[MEM[64] + v84 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 - (MEM[64] + v84);
            MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32] = MEM[v80];
            v99 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 + 32;
            v100 = v101 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32 + (MEM[v80] << 5) + 32;
            v102 = v80 + 32;
            v103 = 0;
            while (v103 < MEM[v80]) {
                MEM[v99] = v100 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v79]) + (MEM[64] + v84 + 64) + 32) - 32;
                MEM[v100] = MEM[MEM[v102]];
                MCOPY(v100 + 32, 32 + MEM[v102], MEM[MEM[v102]]);
                MEM[32 + (MEM[MEM[v102]] + v100)] = 0;
                v100 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v102]]) + v100 + 32;
                v102 = v102 + 32;
                v99 = v99 + 32;
                v103 = v103 + 1;
            }
            MEM[MEM[64]] = v100 - MEM[64] - 32;
            require(!((MEM[64] + (v100 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v100 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v96.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v104 = v96.data;
            v96.word1 = MEM[64];
            require(v96.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v105 = v96.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (!v72) {
                v106 = v107 = address(MEM[v67]);
            } else {
                v106 = address(MEM[v70]);
            }
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v108, /* uint112 */ v9 = address(v106).balanceOf(address(this)).gas(msg.gas);
            require(v108, MEM[64], RETURNDATASIZE());
            if (v108) {
                if (v84 > RETURNDATASIZE()) {
                    v84 = v109 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v84 - MEM[64] >= v84);
            }
            if (!v72) {
                require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size, v9, v9);
                v110 = new bytes[](v111.length);
                MCOPY(v110.data, v111.data, v111.length);
                v110[v111.length] = 0;
                v112 = v110.data;
                v113 = new uint256[](v96.word0.length);
                v110[32][32] = v96.word0.length;
                v114 = v113.data;
                v115 = v116 = v113.data + 32;
                v117 = v96.data;
                v118 = 0;
                while (v118 < v96.word0.length) {
                    MEM[v114] = v115 - v113 - 32;
                    MEM[v115] = MEM[MEM[v117]];
                    MCOPY(v115 + 32, 32 + MEM[v117], MEM[MEM[v117]]);
                    MEM[32 + (MEM[MEM[v117]] + v115)] = 0;
                    v115 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v117]]) + v115 + 32;
                    v117 = v117 + 32;
                    v114 = v114 + 32;
                    v118 = v118 + 1;
                }
                v119, /* uint256 */ v120 = stor_4_0_19.execute(v110, v113, block.timestamp + 1).value(v9).gas(msg.gas);
                require(v119, v120, RETURNDATASIZE());
                if (v119) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v9, v9, v9);
                }
            } else {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v9, v9);
                v121, /* uint256 */ v122 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v123).value(v9).gas(msg.gas);
                require(v121, v122, RETURNDATASIZE());
                if (v121) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v9, v9, v9);
                }
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size, v9, v9);
                v124 = new bytes[](v111.length);
                MCOPY(v124.data, v111.data, v111.length);
                v124[v111.length] = 0;
                v125 = v124.data;
                v126 = new uint256[](v96.word0.length);
                v124[32][32] = v96.word0.length;
                v127 = v126.data;
                v128 = v129 = v126.data + 32;
                v130 = v96.data;
                v131 = 0;
                while (v131 < v96.word0.length) {
                    MEM[v127] = v128 - v126 - 32;
                    MEM[v128] = MEM[MEM[v130]];
                    MCOPY(v128 + 32, 32 + MEM[v130], MEM[MEM[v130]]);
                    MEM[32 + (MEM[MEM[v130]] + v128)] = 0;
                    v128 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v130]]) + v128 + 32;
                    v130 = v130 + 32;
                    v127 = v127 + 32;
                    v131 = v131 + 1;
                }
                v132, /* uint256 */ v133 = stor_4_0_19.execute(v124, v126, block.timestamp + 1).value(v123).gas(msg.gas);
                require(v132, v133, RETURNDATASIZE());
                if (v132) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v9, v9, v9);
                }
            }
            v134, /* uint112 */ v9 = address(v106).balanceOf(address(this)).gas(msg.gas);
            require(v134, MEM[64], RETURNDATASIZE());
            if (v134) {
                if (v84 > RETURNDATASIZE()) {
                    v84 = v135 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v84 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v84 - MEM[64] >= v84);
            }
            v57 = v136 = _SafeSub(v9, v9);
        }
    } else {
        require(!(varg3 - address(varg3)), v10, v10);
        v137, /* uint112 */ v9 = address(varg3).balanceOf(address(this)).gas(msg.gas);
        require(v137, MEM[64], RETURNDATASIZE());
        if (v137) {
            v138 = 32;
            if (32 > RETURNDATASIZE()) {
                v138 = v139 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v138 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v138 - MEM[64] >= 32);
        }
        0x4ee8(varg2, varg0, varg14);
        v140, /* uint112 */ v9, /* uint112 */ v9, /* uint32 */ v141 = varg0.getReserves().gas(msg.gas);
        require(v140, MEM[64], RETURNDATASIZE());
        if (v140) {
            if (96 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v142 = v143 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 96;
                v142 = v144 = MEM[64] + 96;
            }
            require(v142 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v9 - uint112(v9)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v145, /* uint112 */ v9 = varg0.token0().gas(msg.gas);
        require(v145, MEM[64], RETURNDATASIZE());
        if (v145) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v146 = v147 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v146 = v148 = MEM[64] + 32;
            }
            require(v146 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v9) != varg2) {
            v149 = uint112(v9);
            v150 = uint112(v9);
        } else {
            v149 = v151 = uint112(v9);
            v150 = v152 = uint112(v9);
        }
        require(varg14, Error('INSUFFICIENT_INPUT_AMOUNT'));
        v153 = bool(v149);
        if (v153) {
            v153 = v154 = bool(v150);
        }
        require(v153, Error('INSUFFICIENT_LIQUIDITY'));
        require(!(997 - varg14 * 997 / varg14), Panic(17)); // arithmetic overflow or underflow
        v155 = _SafeMul(varg14 * 997, v150);
        require((1000 == v149 * 1000 / v149) | !v149, Panic(17)); // arithmetic overflow or underflow
        v156 = _SafeAdd(v149 * 1000, varg14 * 997);
        v9 = v157 = _SafeDiv(v155, v156);
        if (address(v9) == varg2) {
        }
        require(varg0.code.size, v10, v10);
        v158, /* uint256 */ v159 = varg0.swap(v9, v9, address(this), 128, 0).value(v10).gas(msg.gas);
        require(v158, v159, RETURNDATASIZE());
        if (v158) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v10, v10, v10);
        }
        v160, /* uint112 */ v9 = address(varg3).balanceOf(address(this)).gas(msg.gas);
        require(v160, MEM[64], RETURNDATASIZE());
        if (v160) {
            v161 = 32;
            if (32 > RETURNDATASIZE()) {
                v161 = v162 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v161 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v161 - MEM[64] >= 32);
        }
        v57 = v163 = _SafeSub(v9, v9);
    }
    require(v57, SwapFailed());
    v164 = v165 = 0;
    require(varg8 < 8);
    if (varg8) {
        if (varg8 - 6) {
            if (7 != varg8) {
                v166 = v167 = varg7;
                require(!(varg7 - v167));
                v168 = v169 = 0;
                v170 = v171 = 64;
                v172 = v173 = varg9 < varg10;
                _algebraSwapCallback = varg7;
                stor_6 = v57;
                if (v169 == v173) {
                    v174 = new struct(2);
                    v175 = v174.data;
                    v174.word1 = varg9;
                    v174.word0 = 32;
                    require(!((v174 + 64 > uint64.max) | (v174 + 64 < v174)), Panic(65)); // failed memory allocation (too much memory)
                    v176 = MEM[v171];
                    MEM[v176] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v176 + 4] = varg16;
                    MEM[v176 + 4 + 32] = bool(v173);
                    MEM[v176 + 4 + 64] = v57;
                    MEM[v176 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v176 + 4 + 128] = 160;
                    MEM[v176 + 4 + 160] = v174.word0.length;
                    MCOPY(v176 + 4 + 160 + 32, v174.data, v174.word0.length);
                    MEM[32 + (v174.word0.length + (v176 + 4 + 160))] = 0;
                    v177 = 32 + (v176 + 4 + 160) + 32;
                } else {
                    v178 = new struct(2);
                    v179 = v178.data;
                    v178.word1 = varg9;
                    v178.word0 = 32;
                    require(!((v178 + 64 > uint64.max) | (v178 + 64 < v178)), Panic(65)); // failed memory allocation (too much memory)
                    v176 = v180 = MEM[v171];
                    MEM[v180] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v180 + 4] = varg16;
                    MEM[v180 + 4 + 32] = bool(v173);
                    MEM[v180 + 4 + 64] = v57;
                    MEM[v180 + 4 + 96] = address(0x1000276a4);
                    MEM[v180 + 4 + 128] = 160;
                    MEM[v180 + 4 + 160] = v178.word0.length;
                    MCOPY(v180 + 4 + 160 + 32, v178.data, v178.word0.length);
                    MEM[32 + (v178.word0.length + (v180 + 4 + 160))] = 0;
                    v177 = v181 = 32 + (v180 + 4 + 160) + 32;
                }
                v182 = v166.call(MEM[v1e327V0x480b0x4829V0x32ae:v1e327V0x480b0x4829V0x32ae + v52cdV0x54a10x4663V0x480b0x4829V0x32ae - v1e327V0x480b0x4829V0x32ae], MEM[v1e327V0x480b0x4829V0x32ae:v1e327V0x480b0x4829V0x32ae + v47b00x4829_0x6V0x32ae]).value(v168).gas(msg.gas);
                require(v182, MEM[64], RETURNDATASIZE());
                v183 = v184 = 0x1e3e4;
                v185 = v186 = 0;
                v185 = v187 = 0;
                if (v182) {
                    v188 = v189 = 18436;
                    if (64 <= RETURNDATASIZE()) {
                        require(!((v176 + 64 > uint64.max) | (v176 + 64 < v176)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v176 + 64;
                        v190 = v191 = v176 + 64;
                    }
                }
            } else {
                v192 = v193 = varg7;
                require(!(varg7 - v193));
                _algebraSwapCallback = varg7;
                v172 = v194 = varg9 < varg10;
                v195 = v196 = 64;
                v197 = v198 = 0;
                if (varg9 >= varg10) {
                    v199 = new struct(2);
                    v200 = v199.data;
                    v199.word1 = varg9;
                    v199.word0 = 32;
                    require(!((v199 + 64 > uint64.max) | (v199 + 64 < v199)), Panic(65)); // failed memory allocation (too much memory)
                    v176 = v201 = MEM[v196];
                    MEM[v201] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v201 + 4] = varg16;
                    MEM[v201 + 4 + 32] = bool(v194);
                    MEM[v201 + 4 + 64] = v57;
                    MEM[v201 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    MEM[v201 + 4 + 128] = 160;
                    MEM[v201 + 4 + 160] = v199.word0.length;
                    MCOPY(v201 + 4 + 160 + 32, v199.data, v199.word0.length);
                    MEM[32 + (v199.word0.length + (v201 + 4 + 160))] = 0;
                    v202 = 32 + (v201 + 4 + 160) + 32;
                } else {
                    v203 = new struct(2);
                    v204 = v203.data;
                    v203.word1 = varg9;
                    v203.word0 = 32;
                    require(!((v203 + 64 > uint64.max) | (v203 + 64 < v203)), Panic(65)); // failed memory allocation (too much memory)
                    v176 = v205 = MEM[v196];
                    MEM[v205] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    MEM[v205 + 4] = varg16;
                    MEM[v205 + 4 + 32] = bool(v194);
                    MEM[v205 + 4 + 64] = v57;
                    MEM[v205 + 4 + 96] = address(0x1000276a4);
                    MEM[v205 + 4 + 128] = 160;
                    MEM[v205 + 4 + 160] = v203.word0.length;
                    MCOPY(v205 + 4 + 160 + 32, v203.data, v203.word0.length);
                    MEM[32 + (v203.word0.length + (v205 + 4 + 160))] = 0;
                    v202 = v206 = 32 + (v205 + 4 + 160) + 32;
                }
                v207 = v192.call(MEM[v1e327V0x480b0x4829V0x32ae:v1e327V0x480b0x4829V0x32ae + v52cdV0x54a10x4663V0x47030x4829V0x32ae - v1e327V0x480b0x4829V0x32ae], MEM[v1e327V0x480b0x4829V0x32ae:v1e327V0x480b0x4829V0x32ae + v46950x4829_0x6V0x32ae]).value(v197).gas(msg.gas);
                require(v207, MEM[64], RETURNDATASIZE());
                v183 = v208 = 0x1e360;
                v185 = v209 = 0;
                v185 = v210 = 0;
                if (v207) {
                    v188 = 18165;
                    v211 = 64;
                    if (64 > RETURNDATASIZE()) {
                        // Unknown jump to Block 0x46fc0x4829B0x32ae. Refer to 3-address code (TAC);
                    }
                }
            }
            _algebraSwapCallback = 0;
            if (v172) {
            }
            require(v185 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v212 = v213 = 0 - v185;
            // Unknown jump to Block ['0x1e3600x4829B0x32ae', '0x1e3e40x4829B0x32ae']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x50b60x4829B0x32ae. Refer to 3-address code (TAC);
            require(!((v176 + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v176 + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v176)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v176 + (v211 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v190 = v214 = v176 + v211;
            require(v190 - v176 >= 64);
            v185 = v215 = MEM[v176];
            v185 = v216 = MEM[v176 + 32];
            // Unknown jump to Block ['0x46f50x4829B0x32ae', '0x48040x4829B0x32ae']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x47c80x4829B0x32ae. Refer to 3-address code (TAC);
            v211 = v217 = RETURNDATASIZE();
            // Unknown jump to Block 0x46e30x4829B0x32ae. Refer to 3-address code (TAC);
            _algebraSwapCallback = 0;
            stor_6 = 0;
            if (v172) {
            }
        } else {
            v218 = new struct(5);
            require(!((v218 + 160 > uint64.max) | (v218 + 160 < v218)), Panic(65)); // failed memory allocation (too much memory)
            v218.word0 = 0;
            v218.word1 = 0;
            v218.word2 = 0;
            v218.word3 = 0;
            v218.word4 = 0;
            v219 = v220 = varg9 != varg9;
            require(!v220);
            if (varg9 >= varg10) {
                v219 = v221 = 0;
            } else {
                require(!v220);
            }
            require(!(varg11 - uint24(varg11)));
            require(!(varg12 - int24(varg12)));
            require(!(varg13 - address(varg13)));
            v222 = v223 = new struct(5);
            require(!((v223 + 160 > uint64.max) | (v223 + 160 < v223)), Panic(65)); // failed memory allocation (too much memory)
            v223.word0 = address(v224);
            v225 = v226 = v223 + 32;
            v223.word1 = address(v224);
            v223.word2 = uint24(varg11);
            v223.word3 = int24(varg12);
            v223.word4 = address(varg13);
            require(!v219);
            v227 = v228 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == varg9;
            v227 = v229 = !address(v224);
            if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != varg9) {
            }
            if (!v227) {
                0x501f(varg9, v57);
                require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                v230, /* uint256 */ v231 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg9, stor_4_0_19, address(v57), uint48(block.timestamp + 60)).gas(msg.gas);
                require(v230, v231, RETURNDATASIZE());
                if (v230) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v164 = v232 = 0;
                }
            }
            if (bool(address(v224))) {
                v227 = v233 = address(v224) == varg9;
            }
            v234 = 0x60000;
            MEM[v234 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
            MEM[v234 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
            require(!((v234 + 64 > uint64.max) | (v234 + 64 < v234)), Panic(65)); // failed memory allocation (too much memory)
            v235 = new struct(4);
            require(!((v235 + 128 > uint64.max) | (v235 + 128 < v235)), Panic(65)); // failed memory allocation (too much memory)
            v235.word0 = 3;
            v236 = v237 = 0;
            while (v236 < 96) {
                MEM[v235 + v236 + 32] = 96;
                v236 = v236 + 32;
            }
            v238 = new struct(5);
            require(!((v238 + 160 > uint64.max) | (v238 + 160 < v238)), Panic(65)); // failed memory allocation (too much memory)
            v238.word0 = v223;
            v238.word1 = bool(v227);
            v238.word2 = uint128(v57);
            v238.word3 = 1;
            v239 = 32;
            v240 = new struct(1);
            require(!((v240 + 32 > uint64.max) | (v240 + 32 < v240)), Panic(65)); // failed memory allocation (too much memory)
            v240.word0 = v164;
            v238.word4 = v240;
            MEM[MEM[64] + v239] = v239;
            MEM[MEM[64] + 64] = address(MEM[v238.word0]);
            MEM[MEM[64] + 64 + 32] = address(MEM[v238.word0 + 32]);
            MEM[MEM[64] + 64 + 64] = uint24(MEM[v238.word0 + 64]);
            MEM[MEM[64] + 64 + 96] = int24(MEM[v238.word0 + 96]);
            MEM[MEM[64] + 64 + 128] = address(MEM[128 + v238.word0]);
            MEM[MEM[64] + 64 + 160] = bool(v238.word1);
            MEM[MEM[64] + 64 + 192] = uint128(v238.word2);
            MEM[MEM[64] + 64 + 224] = uint128(v238.word3);
            MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
            MEM[MEM[64] + 64 + 288] = MEM[v238.word4];
            MCOPY(MEM[64] + 64 + 288 + 32, 32 + v238.word4, MEM[v238.word4]);
            MEM[32 + (MEM[v238.word4] + (MEM[64] + 64 + 288))] = 0;
            MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v238.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
            require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v238.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v238.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v235.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v241 = v235.data;
            v235.word1 = MEM[64];
            require(v235.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v242 = v235.data;
            if (!v227) {
                v243 = new struct(3);
                v243.word1 = address(v223.word1);
                v243.word2 = v57;
                v243.word0 = 64;
                require(!((v243 + 96 > uint64.max) | (v243 + 96 < v243)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v235.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v244 = 64 + v235;
            } else {
                v243 = v245 = new struct(3);
                v245.word1 = address(v223.word0);
                v245.word2 = v57;
                v245.word0 = 64;
                require(!((v245 + 96 > uint64.max) | (v245 + 96 < v245)), Panic(65)); // failed memory allocation (too much memory)
                require(1 < v235.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v244 = v246 = 64 + v235;
            }
            MEM[v244] = v243;
            require(1 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (!v227) {
                v247 = v248 = address(MEM[v222]);
            } else {
                v247 = address(MEM[v225]);
            }
            v249 = new struct(3);
            v250 = v249.data;
            v249.word1 = address(v247);
            v249.word2 = 1;
            v249.word0 = 64;
            require(!((v249 + 96 > uint64.max) | (v249 + 96 < v249)), Panic(65)); // failed memory allocation (too much memory)
            require(2 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[96 + v235] = v249;
            require(2 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v251 = new struct(2);
            require(!((v251 + 64 > uint64.max) | (v251 + 64 < v251)), Panic(65)); // failed memory allocation (too much memory)
            v251.word0 = 1;
            v252 = v253 = 0;
            while (v252 < 32) {
                MEM[v251 + v252 + 32] = 96;
                v252 = v252 + 32;
            }
            MEM[MEM[64] + v239] = 64;
            MEM[MEM[64] + v239 + 64] = MEM[v234];
            MCOPY(MEM[64] + v239 + 64 + 32, 32 + v234, MEM[v234]);
            MEM[32 + (MEM[v234] + (MEM[64] + v239 + 64))] = 0;
            MEM[MEM[64] + v239 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v234]) + (MEM[64] + v239 + 64) + 32 - (MEM[64] + v239);
            MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v234]) + (MEM[64] + v239 + 64) + 32] = MEM[v235];
            v254 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v234]) + (MEM[64] + v239 + 64) + 32 + 32;
            v255 = v256 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v234]) + (MEM[64] + v239 + 64) + 32 + (MEM[v235] << 5) + 32;
            v257 = v235 + 32;
            v258 = 0;
            while (v258 < MEM[v235]) {
                MEM[v254] = v255 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v234]) + (MEM[64] + v239 + 64) + 32) - 32;
                MEM[v255] = MEM[MEM[v257]];
                MCOPY(v255 + 32, 32 + MEM[v257], MEM[MEM[v257]]);
                MEM[32 + (MEM[MEM[v257]] + v255)] = 0;
                v255 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v257]]) + v255 + 32;
                v257 = v257 + 32;
                v254 = v254 + 32;
                v258 = v258 + 1;
            }
            MEM[MEM[64]] = v255 - MEM[64] - 32;
            require(!((MEM[64] + (v255 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v255 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(v251.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v259 = v251.data;
            v251.word1 = MEM[64];
            require(v251.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v260 = v251.data;
            require(!0, Panic(65)); // failed memory allocation (too much memory)
            if (!v227) {
                v261 = v262 = address(MEM[v222]);
            } else {
                v261 = address(MEM[v225]);
            }
            MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v263, /* uint112 */ v164 = address(v261).balanceOf(varg16).gas(msg.gas);
            require(v263, MEM[64], RETURNDATASIZE());
            if (v263) {
                if (v239 > RETURNDATASIZE()) {
                    v239 = v264 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v239 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v239 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v239 - MEM[64] >= v239);
            }
            if (!v227) {
                require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size, v164, v164);
                v265 = new bytes[](v266.length);
                MCOPY(v265.data, v266.data, v266.length);
                v265[v266.length] = 0;
                v267 = v265.data;
                v268 = new uint256[](v251.word0.length);
                v265[32][32] = v251.word0.length;
                v269 = v268.data;
                v270 = v271 = v268.data + 32;
                v272 = v251.data;
                v273 = 0;
                while (v273 < v251.word0.length) {
                    MEM[v269] = v270 - v268 - 32;
                    MEM[v270] = MEM[MEM[v272]];
                    MCOPY(v270 + 32, 32 + MEM[v272], MEM[MEM[v272]]);
                    MEM[32 + (MEM[MEM[v272]] + v270)] = 0;
                    v270 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v272]]) + v270 + 32;
                    v272 = v272 + 32;
                    v269 = v269 + 32;
                    v273 = v273 + 1;
                }
                v274, /* uint256 */ v275 = stor_4_0_19.execute(v265, v268, block.timestamp + 1).value(v164).gas(msg.gas);
                require(v274, v275, RETURNDATASIZE());
                if (v274) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v164, v164, v164);
                }
            } else {
                require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v164, v164);
                v276, /* uint256 */ v277 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v57).value(v164).gas(msg.gas);
                require(v276, v277, RETURNDATASIZE());
                if (v276) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v164, v164, v164);
                }
                require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                require(stor_4_0_19.code.size, v164, v164);
                v278 = new bytes[](v266.length);
                MCOPY(v278.data, v266.data, v266.length);
                v278[v266.length] = 0;
                v279 = v278.data;
                v280 = new uint256[](v251.word0.length);
                v278[32][32] = v251.word0.length;
                v281 = v280.data;
                v282 = v283 = v280.data + 32;
                v284 = v251.data;
                v285 = 0;
                while (v285 < v251.word0.length) {
                    MEM[v281] = v282 - v280 - 32;
                    MEM[v282] = MEM[MEM[v284]];
                    MCOPY(v282 + 32, 32 + MEM[v284], MEM[MEM[v284]]);
                    MEM[32 + (MEM[MEM[v284]] + v282)] = 0;
                    v282 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v284]]) + v282 + 32;
                    v284 = v284 + 32;
                    v281 = v281 + 32;
                    v285 = v285 + 1;
                }
                v286, /* uint256 */ v287 = stor_4_0_19.execute(v278, v280, block.timestamp + 1).value(v57).gas(msg.gas);
                require(v286, v287, RETURNDATASIZE());
                if (v286) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v164, v164, v164);
                }
            }
            v288, /* uint112 */ v164 = address(v261).balanceOf(varg16).gas(msg.gas);
            require(v288, MEM[64], RETURNDATASIZE());
            if (v288) {
                if (v239 > RETURNDATASIZE()) {
                    v239 = v289 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v239 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v239 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v239 - MEM[64] >= v239);
            }
            v212 = v290 = _SafeSub(v164, v164);
        }
    } else {
        v291, /* uint112 */ v164 = varg10.balanceOf(varg16).gas(msg.gas);
        require(v291, MEM[64], RETURNDATASIZE());
        if (v291) {
            v292 = 32;
            if (32 > RETURNDATASIZE()) {
                v292 = v293 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v292 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v292 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v292 - MEM[64] >= 32);
            0x4ee8(varg9, varg7, v57);
        } else {
            0x4ee8(varg9, varg7, v57);
        }
        v294, /* uint112 */ v164, /* uint112 */ v164, /* uint32 */ v295 = varg7.getReserves().gas(msg.gas);
        require(v294, MEM[64], RETURNDATASIZE());
        if (v294) {
            if (96 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v296 = v297 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 96;
                v296 = v298 = MEM[64] + 96;
            }
            require(v296 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            require(!(v164 - uint112(v164)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        v299, /* uint112 */ v164 = varg7.token0().gas(msg.gas);
        require(v299, MEM[64], RETURNDATASIZE());
        if (v299) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v300 = v301 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v300 = v302 = MEM[64] + 32;
            }
            require(v300 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        if (address(v164) != varg9) {
            v303 = uint112(v164);
            v304 = uint112(v164);
        } else {
            v303 = v305 = uint112(v164);
            v304 = v306 = uint112(v164);
        }
        require(v57, Error('INSUFFICIENT_INPUT_AMOUNT'));
        v307 = bool(v303);
        if (v307) {
            v307 = v308 = bool(v304);
        }
        require(v307, Error('INSUFFICIENT_LIQUIDITY'));
        require(!(997 - v57 * 997 / v57), Panic(17)); // arithmetic overflow or underflow
        v309 = _SafeMul(v57 * 997, v304);
        require((1000 == v303 * 1000 / v303) | !v303, Panic(17)); // arithmetic overflow or underflow
        v310 = _SafeAdd(v303 * 1000, v57 * 997);
        v164 = v311 = _SafeDiv(v309, v310);
        if (address(v164) == varg9) {
        }
        require(varg7.code.size, v165, v165);
        v312, /* uint256 */ v313 = varg7.swap(v164, v164, varg16, 128, 0).value(v165).gas(msg.gas);
        require(v312, v313, RETURNDATASIZE());
        if (v312) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v165, v165, v165);
        }
        v314, /* uint112 */ v164 = varg10.balanceOf(varg16).gas(msg.gas);
        require(v314, MEM[64], RETURNDATASIZE());
        if (v314) {
            v315 = 32;
            if (32 > RETURNDATASIZE()) {
                v315 = v316 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v315 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v315 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v315 - MEM[64] >= 32);
        }
        v212 = v317 = _SafeSub(v164, v164);
    }
    require(v212 >= varg15, MinimumNotMet());
    if (varg17) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v318, /* uint256 */ v319 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg17).gas(msg.gas);
        require(v318, v319, RETURNDATASIZE());
        if (v318) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        v320, /* uint256 */ v321 = block.coinbase.call().value(varg17).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v322 = v323 = new bytes[](RETURNDATASIZE());
            require(!((v323 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v323 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v323)), Panic(65)); // failed memory allocation (too much memory)
            v321 = v323.data;
            RETURNDATACOPY(v321, 0, RETURNDATASIZE());
        }
        require(v320, fullExit());
        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, varg17);
    }
    require(!(varg3 - address(varg3)));
    emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(varg10, address(varg3), varg14, v57, v212, 1, varg17);
    return v212;
}

function operators(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _operators[varg0];
}

function 0x0f754fde(struct(7) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    v0 = 4 + varg0;
    require(msg.data.length - varg0 - 4 >= 608);
    v1 = v2 = !_operators[msg.sender];
    if (v2) {
        v1 = v3 = address(0x8bdf3dae4f9817320cb0317521f56607d271fef) != msg.sender;
    }
    require(!v1, Unauthorized());
    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
    require(msg.data[v0 + msg.data[varg0 + 516]], InvalidParams());
    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
    require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
    require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
    require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
    require(!(msg.data[v0 + msg.data[varg0 + 516]] - msg.data[v0 + msg.data[varg0 + 548]]), ArrayLengthMismatch());
    v4 = v5 = msg.data[varg0 + 452];
    require(v5, InvalidAmount());
    v6 = _SafeAdd(v5, msg.data[varg0 + 580]);
    v7, v8 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    v8 = v9 = 0;
    if (v7) {
        v10 = v11 = 32;
        if (32 > RETURNDATASIZE()) {
            v10 = v12 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v10 - MEM[64] >= 32);
    }
    require(v8 >= v6, InsufficientBalance());
    v13 = v14 = 0;
    while (1) {
        require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
        require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
        require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
        if (v13 >= msg.data[v0 + msg.data[varg0 + 548]]) {
            require(!(v13 - 10000), InvalidParams());
            v15 = v16 = 0;
            require(varg0.word1 < 8);
            if (varg0.word1) {
                if (varg0.word1 - 6) {
                    v17 = v18 = 0;
                    v19 = v20 = 64;
                    if (7 - varg0.word1) {
                        require(!(varg0.word0 - address(varg0.word0)));
                        require(!(varg0.word2 - address(varg0.word2)));
                        require(!(varg0.word3 - address(varg0.word3)));
                        v21 = v22 = address(varg0.word0);
                        _algebraSwapCallback = varg0.word0;
                        stor_6 = v5;
                        v23 = v24 = address(varg0.word2) < address(varg0.word3);
                        if (v24 == v18) {
                            v25 = new struct(2);
                            v26 = v25.data;
                            v25.word1 = address(varg0.word2);
                            v25.word0 = 32;
                            require(!((v25 + 64 > uint64.max) | (v25 + 64 < v25)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = MEM[v20];
                            MEM[v27] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v27 + 4] = address(this);
                            MEM[v27 + 4 + 32] = bool(v24);
                            MEM[v27 + 4 + 64] = v5;
                            MEM[v27 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v27 + 4 + 128] = 160;
                            MEM[v27 + 4 + 160] = v25.word0.length;
                            MCOPY(v27 + 4 + 160 + 32, v25.data, v25.word0.length);
                            MEM[32 + (v25.word0.length + (v27 + 4 + 160))] = 0;
                            v28 = 32 + (v27 + 4 + 160) + 32;
                        } else {
                            v29 = new struct(2);
                            v30 = v29.data;
                            v29.word1 = address(varg0.word2);
                            v29.word0 = 32;
                            require(!((v29 + 64 > uint64.max) | (v29 + 64 < v29)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v31 = MEM[v20];
                            MEM[v31] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v31 + 4] = address(this);
                            MEM[v31 + 4 + 32] = bool(v24);
                            MEM[v31 + 4 + 64] = v5;
                            MEM[v31 + 4 + 96] = address(0x1000276a4);
                            MEM[v31 + 4 + 128] = 160;
                            MEM[v31 + 4 + 160] = v29.word0.length;
                            MCOPY(v31 + 4 + 160 + 32, v29.data, v29.word0.length);
                            MEM[32 + (v29.word0.length + (v31 + 4 + 160))] = 0;
                            v28 = v32 = 32 + (v31 + 4 + 160) + 32;
                        }
                        v33 = v21.call(MEM[v1e327V0x480b0x4abeV0x35ec:v1e327V0x480b0x4abeV0x35ec + v52cdV0x54a10x4663V0x480b0x4abeV0x35ec - v1e327V0x480b0x4abeV0x35ec], MEM[v1e327V0x480b0x4abeV0x35ec:v1e327V0x480b0x4abeV0x35ec + v46950x4abe_0x6V0x35ec]).value(v17).gas(msg.gas);
                        require(v33, MEM[64], RETURNDATASIZE());
                        v34 = v35 = 0x1e3e4;
                        v36 = v37 = 0;
                        v36 = v38 = 0;
                        if (v33) {
                            v39 = v40 = 18436;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v27 + 64 > uint64.max) | (v27 + 64 < v27)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v27 + 64;
                                v41 = v42 = v27 + 64;
                            }
                        }
                    } else {
                        require(!(varg0.word0 - address(varg0.word0)));
                        require(!(varg0.word2 - address(varg0.word2)));
                        require(!(varg0.word3 - address(varg0.word3)));
                        v43 = v44 = address(varg0.word0);
                        _algebraSwapCallback = varg0.word0;
                        v23 = v45 = address(varg0.word2) < address(varg0.word3);
                        if (v45 == v18) {
                            v46 = new struct(2);
                            v47 = v46.data;
                            v46.word1 = address(varg0.word2);
                            v46.word0 = 32;
                            require(!((v46 + 64 > uint64.max) | (v46 + 64 < v46)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v48 = MEM[v20];
                            MEM[v48] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v48 + 4] = address(this);
                            MEM[v48 + 4 + 32] = bool(v45);
                            MEM[v48 + 4 + 64] = v5;
                            MEM[v48 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v48 + 4 + 128] = 160;
                            MEM[v48 + 4 + 160] = v46.word0.length;
                            MCOPY(v48 + 4 + 160 + 32, v46.data, v46.word0.length);
                            MEM[32 + (v46.word0.length + (v48 + 4 + 160))] = 0;
                            v49 = 32 + (v48 + 4 + 160) + 32;
                        } else {
                            v50 = new struct(2);
                            v51 = v50.data;
                            v50.word1 = address(varg0.word2);
                            v50.word0 = 32;
                            require(!((v50 + 64 > uint64.max) | (v50 + 64 < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v27 = v52 = MEM[v20];
                            MEM[v52] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v52 + 4] = address(this);
                            MEM[v52 + 4 + 32] = bool(v45);
                            MEM[v52 + 4 + 64] = v5;
                            MEM[v52 + 4 + 96] = address(0x1000276a4);
                            MEM[v52 + 4 + 128] = 160;
                            MEM[v52 + 4 + 160] = v50.word0.length;
                            MCOPY(v52 + 4 + 160 + 32, v50.data, v50.word0.length);
                            MEM[32 + (v50.word0.length + (v52 + 4 + 160))] = 0;
                            v49 = v53 = 32 + (v52 + 4 + 160) + 32;
                        }
                        v54 = v43.call(MEM[v1e327V0x480b0x4abeV0x35ec:v1e327V0x480b0x4abeV0x35ec + v52cdV0x54a10x4663V0x47030x4abeV0x35ec - v1e327V0x480b0x4abeV0x35ec], MEM[v1e327V0x480b0x4abeV0x35ec:v1e327V0x480b0x4abeV0x35ec + v46950x4abe_0x6V0x35ec]).value(v17).gas(msg.gas);
                        require(v54, MEM[64], RETURNDATASIZE());
                        v34 = v55 = 0x1e360;
                        v36 = v56 = 0;
                        v36 = v57 = 0;
                        if (v54) {
                            v39 = 18165;
                            v58 = 64;
                            if (64 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x46fc0x4abeB0x35ec. Refer to 3-address code (TAC);
                            }
                        }
                    }
                    _algebraSwapCallback = 0;
                    if (v23) {
                    }
                    require(v36 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v59 = v60 = 0 - v36;
                    // Unknown jump to Block ['0x1e3600x4abeB0x35ec', '0x1e3e40x4abeB0x35ec']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x50b60x4abeB0x35ec. Refer to 3-address code (TAC);
                    require(!((v27 + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v27 + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v27)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v27 + (v58 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v41 = v61 = v27 + v58;
                    require(v41 - v27 >= 64);
                    v36 = v62 = MEM[v27];
                    v36 = v63 = MEM[v27 + 32];
                    // Unknown jump to Block ['0x46f50x4abeB0x35ec', '0x48040x4abeB0x35ec']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x47c80x4abeB0x35ec. Refer to 3-address code (TAC);
                    v58 = v64 = RETURNDATASIZE();
                    // Unknown jump to Block 0x46e30x4abeB0x35ec. Refer to 3-address code (TAC);
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (v23) {
                    }
                } else {
                    v65 = new struct(5);
                    require(!((v65 + 160 > uint64.max) | (v65 + 160 < v65)), Panic(65)); // failed memory allocation (too much memory)
                    v65.word0 = 0;
                    v65.word1 = 0;
                    v65.word2 = 0;
                    v65.word3 = 0;
                    v65.word4 = 0;
                    require(!(varg0.word2 - address(varg0.word2)));
                    require(!(varg0.word3 - address(varg0.word3)));
                    if (address(varg0.word2) >= address(varg0.word3)) {
                        v66 = varg0.word3;
                        require(!(v66 - address(v66)));
                        v67 = varg0.word2;
                        require(!(v67 - address(v67)));
                    } else {
                        v66 = v68 = varg0.word2;
                        require(!(v68 - address(v68)));
                        v67 = v69 = varg0.word3;
                        require(!(v69 - address(v69)));
                    }
                    require(!(varg0.word4 - uint24(varg0.word4)));
                    require(!(varg0.word5 - int24(varg0.word5)));
                    require(!(varg0.word6 - address(varg0.word6)));
                    v70 = v71 = new struct(5);
                    require(!((v71 + 160 > uint64.max) | (v71 + 160 < v71)), Panic(65)); // failed memory allocation (too much memory)
                    v71.word0 = address(v66);
                    v72 = v73 = v71 + 32;
                    v71.word1 = address(v67);
                    v71.word2 = uint24(varg0.word4);
                    v71.word3 = int24(varg0.word5);
                    v71.word4 = address(varg0.word6);
                    require(!(varg0.word2 - address(varg0.word2)));
                    v74 = v75 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(varg0.word2);
                    v74 = v76 = !address(v66);
                    if (v75) {
                        if (bool(address(v66))) {
                            // Unknown jump to Block 0x45120x4abeB0x35ec. Refer to 3-address code (TAC);
                        }
                    } else if (v75) {
                        if (!bool(address(v66))) {
                            v77 = v78 = 0x60000;
                            MEM[v78 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v78 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!((v78 + 64 > uint64.max) | (v78 + 64 < v78)), Panic(65)); // failed memory allocation (too much memory)
                            v79 = v80 = MEM[64];
                            require(!((v80 + 128 > uint64.max) | (v80 + 128 < v80)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v80 + 128;
                            MEM[v80] = 3;
                            v81 = v82 = 0;
                            while (v81 < 96) {
                                MEM[v80 + v81 + 32] = 96;
                                v81 = v81 + 32;
                            }
                        }
                    }
                    if (bool(address(v66))) {
                        // Unknown jump to Block 0x450b0x4abeB0x35ec. Refer to 3-address code (TAC);
                    }
                    v77 = 0x60000;
                    MEM[v77 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v77 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v77 + 64 > uint64.max) | (v77 + 64 < v77)), Panic(65)); // failed memory allocation (too much memory)
                    v79 = MEM[64];
                    require(!((v79 + 128 > uint64.max) | (v79 + 128 < v79)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v79 + 128;
                    MEM[v79] = 3;
                    v83 = v84 = 0;
                    while (v83 < 96) {
                        MEM[v79 + v83 + 32] = 96;
                        v83 = v83 + 32;
                    }
                    v85 = new struct(5);
                    require(!((v85 + 160 > uint64.max) | (v85 + 160 < v85)), Panic(65)); // failed memory allocation (too much memory)
                    v85.word0 = v71;
                    v85.word1 = bool(v74);
                    v85.word2 = uint128(v5);
                    v85.word3 = 1;
                    v86 = 32;
                    v87 = new struct(1);
                    require(!((v87 + 32 > uint64.max) | (v87 + 32 < v87)), Panic(65)); // failed memory allocation (too much memory)
                    v87.word0 = v15;
                    v85.word4 = v87;
                    MEM[MEM[64] + v86] = v86;
                    MEM[MEM[64] + 64] = address(MEM[v85.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v85.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v85.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v85.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v85.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v85.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v85.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v85.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v85.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v85.word4, MEM[v85.word4]);
                    MEM[32 + (MEM[v85.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v85.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v85.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v85.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v85.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[32 + v79] = MEM[64];
                    require(MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v74) {
                        v88 = new struct(3);
                        v88.word1 = address(MEM[v89]);
                        v88.word2 = v5;
                        v88.word0 = 64;
                        require(!((v88 + 96 > uint64.max) | (v88 + 96 < v88)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v90], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v91 = 64 + v90;
                    } else {
                        v88 = v92 = new struct(3);
                        v92.word1 = address(v71.word0);
                        v92.word2 = v5;
                        v92.word0 = 64;
                        require(!((v92 + 96 > uint64.max) | (v92 + 96 < v92)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v93], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v91 = v94 = 64 + v93;
                    }
                    MEM[v91] = v88;
                    require(1 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v74) {
                        v95 = v96 = address(MEM[v70]);
                    } else {
                        v95 = address(MEM[v72]);
                    }
                    v97 = new struct(3);
                    v98 = v97.data;
                    v97.word1 = address(v95);
                    v97.word2 = 1;
                    v97.word0 = 64;
                    require(!((v97 + 96 > uint64.max) | (v97 + 96 < v97)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v79] = v97;
                    require(2 < MEM[v79], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v99 = new struct(2);
                    require(!((v99 + 64 > uint64.max) | (v99 + 64 < v99)), Panic(65)); // failed memory allocation (too much memory)
                    v99.word0 = 1;
                    v100 = v101 = 0;
                    while (v100 < 32) {
                        MEM[v99 + v100 + 32] = 96;
                        v100 = v100 + 32;
                    }
                    MEM[MEM[64] + v86] = 64;
                    MEM[MEM[64] + v86 + 64] = MEM[v77];
                    MCOPY(MEM[64] + v86 + 64 + 32, 32 + v77, MEM[v77]);
                    MEM[32 + (MEM[v77] + (MEM[64] + v86 + 64))] = 0;
                    MEM[MEM[64] + v86 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77]) + (MEM[64] + v86 + 64) + 32 - (MEM[64] + v86);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77]) + (MEM[64] + v86 + 64) + 32] = MEM[v79];
                    v102 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77]) + (MEM[64] + v86 + 64) + 32 + 32;
                    v103 = v104 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77]) + (MEM[64] + v86 + 64) + 32 + (MEM[v79] << 5) + 32;
                    v105 = v79 + 32;
                    v106 = 0;
                    while (v106 < MEM[v79]) {
                        MEM[v102] = v103 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v77]) + (MEM[64] + v86 + 64) + 32) - 32;
                        MEM[v103] = MEM[MEM[v105]];
                        MCOPY(v103 + 32, 32 + MEM[v105], MEM[MEM[v105]]);
                        MEM[32 + (MEM[MEM[v105]] + v103)] = 0;
                        v103 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v105]]) + v103 + 32;
                        v105 = v105 + 32;
                        v102 = v102 + 32;
                        v106 = v106 + 1;
                    }
                    MEM[MEM[64]] = v103 - MEM[64] - 32;
                    require(!((MEM[64] + (v103 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v103 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v99.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v107 = v99.data;
                    v99.word1 = MEM[64];
                    require(v99.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v108 = v99.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    if (!v74) {
                        v109 = v110 = address(MEM[v70]);
                    } else {
                        v109 = address(MEM[v72]);
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v111, /* uint112 */ v15 = address(v109).balanceOf(address(this)).gas(msg.gas);
                    require(v111, MEM[64], RETURNDATASIZE());
                    if (v111) {
                        if (v86 > RETURNDATASIZE()) {
                            v86 = v112 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v86 - MEM[64] >= v86);
                    }
                    if (!v74) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v15, v15);
                        v113 = new bytes[](v114.length);
                        MCOPY(v113.data, v114.data, v114.length);
                        v113[v114.length] = 0;
                        v115 = v113.data;
                        v116 = new uint256[](v99.word0.length);
                        v113[32][32] = v99.word0.length;
                        v117 = v116.data;
                        v118 = v119 = v116.data + 32;
                        v120 = v99.data;
                        v121 = 0;
                        while (v121 < v99.word0.length) {
                            MEM[v117] = v118 - v116 - 32;
                            MEM[v118] = MEM[MEM[v120]];
                            MCOPY(v118 + 32, 32 + MEM[v120], MEM[MEM[v120]]);
                            MEM[32 + (MEM[MEM[v120]] + v118)] = 0;
                            v118 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v120]]) + v118 + 32;
                            v120 = v120 + 32;
                            v117 = v117 + 32;
                            v121 = v121 + 1;
                        }
                        v122, /* uint256 */ v123 = stor_4_0_19.execute(v113, v116, block.timestamp + 1).value(v15).gas(msg.gas);
                        require(v122, v123, RETURNDATASIZE());
                        if (v122) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v15, v15);
                        v124, /* uint256 */ v125 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v4).value(v15).gas(msg.gas);
                        require(v124, v125, RETURNDATASIZE());
                        if (v124) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v15, v15);
                        v126 = new bytes[](v114.length);
                        MCOPY(v126.data, v114.data, v114.length);
                        v126[v114.length] = 0;
                        v127 = v126.data;
                        v128 = new uint256[](v99.word0.length);
                        v126[32][32] = v99.word0.length;
                        v129 = v128.data;
                        v130 = v131 = v128.data + 32;
                        v132 = v99.data;
                        v133 = 0;
                        while (v133 < v99.word0.length) {
                            MEM[v129] = v130 - v128 - 32;
                            MEM[v130] = MEM[MEM[v132]];
                            MCOPY(v130 + 32, 32 + MEM[v132], MEM[MEM[v132]]);
                            MEM[32 + (MEM[MEM[v132]] + v130)] = 0;
                            v130 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v132]]) + v130 + 32;
                            v132 = v132 + 32;
                            v129 = v129 + 32;
                            v133 = v133 + 1;
                        }
                        v134, /* uint256 */ v135 = stor_4_0_19.execute(v126, v128, block.timestamp + 1).value(v4).gas(msg.gas);
                        require(v134, v135, RETURNDATASIZE());
                        if (v134) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v15, v15, v15);
                        }
                    }
                    v136, /* uint112 */ v15 = address(v109).balanceOf(address(this)).gas(msg.gas);
                    require(v136, MEM[64], RETURNDATASIZE());
                    if (v136) {
                        if (v86 > RETURNDATASIZE()) {
                            v86 = v137 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v86 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v86 - MEM[64] >= v86);
                    }
                    v59 = v138 = _SafeSub(v15, v15);
                    v74 = v139 = address(v66) == address(varg0.word2);
                    // Unknown jump to Block 0x41000x4abeB0x35ec. Refer to 3-address code (TAC);
                    0x501f(varg0.word2, v5);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v140, /* uint256 */ v141 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(varg0.word2), stor_4_0_19, address(v5), uint48(block.timestamp + 60)).gas(msg.gas);
                    require(v140, v141, RETURNDATASIZE());
                    if (v140) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v15 = v142 = 0;
                    }
                }
            } else {
                require(!(varg0.word0 - address(varg0.word0)));
                require(!(varg0.word2 - address(varg0.word2)));
                require(!(varg0.word3 - address(varg0.word3)));
                v143, /* uint112 */ v15 = address(varg0.word3).balanceOf(address(this)).gas(msg.gas);
                require(v143, MEM[64], RETURNDATASIZE());
                if (v143) {
                    v144 = v145 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v144 = v146 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v144 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v144 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v144 - MEM[64] >= 32);
                }
                0x4ee8(varg0.word2, varg0.word0, v5);
                v147, /* uint112 */ v15, /* uint112 */ v15, /* uint32 */ v148 = address(varg0.word0).getReserves().gas(msg.gas);
                require(v147, MEM[64], RETURNDATASIZE());
                if (v147) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v149 = v150 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v149 = v151 = MEM[64] + 96;
                    }
                    require(v149 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v15 - uint112(v15)));
                    require(!(v148 - uint32(v148)));
                }
                v152, /* uint112 */ v15 = address(varg0.word0).token0().gas(msg.gas);
                require(v152, MEM[64], RETURNDATASIZE());
                if (v152) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v153 = v154 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v153 = v155 = MEM[64] + 32;
                    }
                    require(v153 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                if (address(varg0.word2) != address(v15)) {
                    v156 = uint112(v15);
                    v157 = uint112(v15);
                } else {
                    v156 = v158 = uint112(v15);
                    v157 = v159 = uint112(v15);
                }
                require(v5, Error('INSUFFICIENT_INPUT_AMOUNT'));
                v160 = bool(v156);
                if (v160) {
                    v160 = v161 = bool(v157);
                }
                require(v160, Error('INSUFFICIENT_LIQUIDITY'));
                require(!(997 - v5 * 997 / v5), Panic(17)); // arithmetic overflow or underflow
                v162 = _SafeMul(v5 * 997, v157);
                require((1000 == v156 * 1000 / v156) | !v156, Panic(17)); // arithmetic overflow or underflow
                v163 = _SafeAdd(v156 * 1000, v5 * 997);
                v15 = v164 = _SafeDiv(v162, v163);
                if (address(varg0.word2) == address(v15)) {
                }
                require((address(varg0.word0)).code.size, v16, v16);
                v165, /* uint256 */ v166 = address(varg0.word0).swap(v15, v15, address(this), 128, 0).value(v16).gas(msg.gas);
                require(v165, v166, RETURNDATASIZE());
                if (v165) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v16, v16, v16);
                }
                v167, /* uint112 */ v15 = address(varg0.word3).balanceOf(address(this)).gas(msg.gas);
                require(v167, MEM[64], RETURNDATASIZE());
                if (v167) {
                    v168 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v168 = v169 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v168 - MEM[64] >= 32);
                }
                v59 = v170 = _SafeSub(v15, v15);
            }
            require(v59, SwapFailed());
            v171 = v172 = 0;
            require(msg.data[varg0 + 228 + 32] < 8);
            if (msg.data[varg0 + 228 + 32]) {
                if (msg.data[varg0 + 228 + 32] - 6) {
                    v173 = v174 = 0;
                    v175 = v176 = 64;
                    if (7 - msg.data[varg0 + 228 + 32]) {
                        require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                        require(!(msg.data[varg0 + 228 + v176] - address(msg.data[varg0 + 228 + v176])));
                        require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                        v177 = v178 = address(msg.data[varg0 + 228]);
                        _algebraSwapCallback = msg.data[varg0 + 228];
                        stor_6 = v59;
                        v179 = v180 = address(msg.data[varg0 + 228 + v176]) < address(msg.data[varg0 + 228 + 96]);
                        if (v180 == v174) {
                            v181 = new struct(2);
                            v182 = v181.data;
                            v181.word1 = address(msg.data[varg0 + 228 + v176]);
                            v181.word0 = 32;
                            require(!((v181 + 64 > uint64.max) | (v181 + 64 < v181)), Panic(65)); // failed memory allocation (too much memory)
                            v183 = MEM[v176];
                            MEM[v183] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v183 + 4] = address(this);
                            MEM[v183 + 4 + 32] = bool(v180);
                            MEM[v183 + 4 + 64] = v59;
                            MEM[v183 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v183 + 4 + 128] = 160;
                            MEM[v183 + 4 + 160] = v181.word0.length;
                            MCOPY(v183 + 4 + 160 + 32, v181.data, v181.word0.length);
                            MEM[32 + (v181.word0.length + (v183 + 4 + 160))] = 0;
                            v184 = 32 + (v183 + 4 + 160) + 32;
                        } else {
                            v185 = new struct(2);
                            v186 = v185.data;
                            v185.word1 = address(msg.data[varg0 + 228 + v176]);
                            v185.word0 = 32;
                            require(!((v185 + 64 > uint64.max) | (v185 + 64 < v185)), Panic(65)); // failed memory allocation (too much memory)
                            v183 = v187 = MEM[v176];
                            MEM[v187] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v187 + 4] = address(this);
                            MEM[v187 + 4 + 32] = bool(v180);
                            MEM[v187 + 4 + 64] = v59;
                            MEM[v187 + 4 + 96] = address(0x1000276a4);
                            MEM[v187 + 4 + 128] = 160;
                            MEM[v187 + 4 + 160] = v185.word0.length;
                            MCOPY(v187 + 4 + 160 + 32, v185.data, v185.word0.length);
                            MEM[32 + (v185.word0.length + (v187 + 4 + 160))] = 0;
                            v184 = v188 = 32 + (v187 + 4 + 160) + 32;
                        }
                        v189 = v177.call(MEM[v1e327V0x480b0x4abeV0x35fd:v1e327V0x480b0x4abeV0x35fd + v52cdV0x54a10x4663V0x480b0x4abeV0x35fd - v1e327V0x480b0x4abeV0x35fd], MEM[v1e327V0x480b0x4abeV0x35fd:v1e327V0x480b0x4abeV0x35fd + v46950x4abe_0x6V0x35fd]).value(v173).gas(msg.gas);
                        require(v189, MEM[64], RETURNDATASIZE());
                        v190 = v191 = 0x1e3e4;
                        v192 = v193 = 0;
                        v192 = v194 = 0;
                        if (v189) {
                            v195 = v196 = 18436;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v183 + 64 > uint64.max) | (v183 + 64 < v183)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v183 + 64;
                                v197 = v198 = v183 + 64;
                            }
                        }
                    } else {
                        require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                        require(!(msg.data[varg0 + 228 + v176] - address(msg.data[varg0 + 228 + v176])));
                        require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                        v199 = v200 = address(msg.data[varg0 + 228]);
                        _algebraSwapCallback = msg.data[varg0 + 228];
                        v179 = v201 = address(msg.data[varg0 + 228 + v176]) < address(msg.data[varg0 + 228 + 96]);
                        if (v201 == v174) {
                            v202 = new struct(2);
                            v203 = v202.data;
                            v202.word1 = address(msg.data[varg0 + 228 + v176]);
                            v202.word0 = 32;
                            require(!((v202 + 64 > uint64.max) | (v202 + 64 < v202)), Panic(65)); // failed memory allocation (too much memory)
                            v183 = v204 = MEM[v176];
                            MEM[v204] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v204 + 4] = address(this);
                            MEM[v204 + 4 + 32] = bool(v201);
                            MEM[v204 + 4 + 64] = v59;
                            MEM[v204 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                            MEM[v204 + 4 + 128] = 160;
                            MEM[v204 + 4 + 160] = v202.word0.length;
                            MCOPY(v204 + 4 + 160 + 32, v202.data, v202.word0.length);
                            MEM[32 + (v202.word0.length + (v204 + 4 + 160))] = 0;
                            v205 = 32 + (v204 + 4 + 160) + 32;
                        } else {
                            v206 = new struct(2);
                            v207 = v206.data;
                            v206.word1 = address(msg.data[varg0 + 228 + v176]);
                            v206.word0 = 32;
                            require(!((v206 + 64 > uint64.max) | (v206 + 64 < v206)), Panic(65)); // failed memory allocation (too much memory)
                            v183 = v208 = MEM[v176];
                            MEM[v208] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[v208 + 4] = address(this);
                            MEM[v208 + 4 + 32] = bool(v201);
                            MEM[v208 + 4 + 64] = v59;
                            MEM[v208 + 4 + 96] = address(0x1000276a4);
                            MEM[v208 + 4 + 128] = 160;
                            MEM[v208 + 4 + 160] = v206.word0.length;
                            MCOPY(v208 + 4 + 160 + 32, v206.data, v206.word0.length);
                            MEM[32 + (v206.word0.length + (v208 + 4 + 160))] = 0;
                            v205 = v209 = 32 + (v208 + 4 + 160) + 32;
                        }
                        v210 = v199.call(MEM[v1e327V0x480b0x4abeV0x35fd:v1e327V0x480b0x4abeV0x35fd + v52cdV0x54a10x4663V0x47030x4abeV0x35fd - v1e327V0x480b0x4abeV0x35fd], MEM[v1e327V0x480b0x4abeV0x35fd:v1e327V0x480b0x4abeV0x35fd + v46950x4abe_0x6V0x35fd]).value(v173).gas(msg.gas);
                        require(v210, MEM[64], RETURNDATASIZE());
                        v190 = v211 = 0x1e360;
                        v192 = v212 = 0;
                        v192 = v213 = 0;
                        if (v210) {
                            v195 = 18165;
                            v214 = 64;
                            if (64 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x46fc0x4abeB0x35fd. Refer to 3-address code (TAC);
                            }
                        }
                    }
                    _algebraSwapCallback = 0;
                    if (v179) {
                    }
                    require(v192 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    v215 = v216 = 0 - v192;
                    // Unknown jump to Block ['0x1e3600x4abeB0x35fd', '0x1e3e40x4abeB0x35fd']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x50b60x4abeB0x35fd. Refer to 3-address code (TAC);
                    require(!((v183 + (v214 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v183 + (v214 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v183)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v183 + (v214 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v197 = v217 = v183 + v214;
                    require(v197 - v183 >= 64);
                    v192 = v218 = MEM[v183];
                    v192 = v219 = MEM[v183 + 32];
                    // Unknown jump to Block ['0x46f50x4abeB0x35fd', '0x48040x4abeB0x35fd']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x47c80x4abeB0x35fd. Refer to 3-address code (TAC);
                    v214 = v220 = RETURNDATASIZE();
                    // Unknown jump to Block 0x46e30x4abeB0x35fd. Refer to 3-address code (TAC);
                    _algebraSwapCallback = 0;
                    stor_6 = 0;
                    if (v179) {
                    }
                } else {
                    v221 = new struct(5);
                    require(!((v221 + 160 > uint64.max) | (v221 + 160 < v221)), Panic(65)); // failed memory allocation (too much memory)
                    v221.word0 = 0;
                    v221.word1 = 0;
                    v221.word2 = 0;
                    v221.word3 = 0;
                    v221.word4 = 0;
                    require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                    require(!(msg.data[varg0 + 228 + 96] - address(msg.data[varg0 + 228 + 96])));
                    if (address(msg.data[varg0 + 228 + 64]) >= address(msg.data[varg0 + 228 + 96])) {
                        v222 = msg.data[varg0 + 228 + 96];
                        require(!(v222 - address(v222)));
                        v223 = msg.data[varg0 + 228 + 64];
                        require(!(v223 - address(v223)));
                    } else {
                        v222 = v224 = msg.data[varg0 + 228 + 64];
                        require(!(v224 - address(v224)));
                        v223 = v225 = msg.data[varg0 + 228 + 96];
                        require(!(v225 - address(v225)));
                    }
                    require(!(msg.data[varg0 + 228 + 128] - uint24(msg.data[varg0 + 228 + 128])));
                    require(!(msg.data[varg0 + 228 + 160] - int24(msg.data[varg0 + 228 + 160])));
                    require(!(msg.data[varg0 + 228 + 192] - address(msg.data[varg0 + 228 + 192])));
                    v226 = v227 = new struct(5);
                    require(!((v227 + 160 > uint64.max) | (v227 + 160 < v227)), Panic(65)); // failed memory allocation (too much memory)
                    v227.word0 = address(v222);
                    v228 = v229 = v227 + 32;
                    v227.word1 = address(v223);
                    v227.word2 = uint24(msg.data[varg0 + 228 + 128]);
                    v227.word3 = int24(msg.data[varg0 + 228 + 160]);
                    v227.word4 = address(msg.data[varg0 + 228 + 192]);
                    require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                    v230 = v231 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) == address(msg.data[varg0 + 228 + 64]);
                    v230 = v232 = !address(v222);
                    if (v231) {
                        if (bool(address(v222))) {
                            // Unknown jump to Block 0x45120x4abeB0x35fd. Refer to 3-address code (TAC);
                        }
                    } else if (v231) {
                        if (!bool(address(v222))) {
                            v233 = v234 = 0x60000;
                            MEM[v234 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                            MEM[v234 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                            require(!((v234 + 64 > uint64.max) | (v234 + 64 < v234)), Panic(65)); // failed memory allocation (too much memory)
                            v235 = v236 = MEM[64];
                            require(!((v236 + 128 > uint64.max) | (v236 + 128 < v236)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v236 + 128;
                            MEM[v236] = 3;
                            v237 = v238 = 0;
                            while (v237 < 96) {
                                MEM[v236 + v237 + 32] = 96;
                                v237 = v237 + 32;
                            }
                        }
                    }
                    if (bool(address(v222))) {
                        // Unknown jump to Block 0x450b0x4abeB0x35fd. Refer to 3-address code (TAC);
                    }
                    v233 = 0x60000;
                    MEM[v233 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v233 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v233 + 64 > uint64.max) | (v233 + 64 < v233)), Panic(65)); // failed memory allocation (too much memory)
                    v235 = MEM[64];
                    require(!((v235 + 128 > uint64.max) | (v235 + 128 < v235)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v235 + 128;
                    MEM[v235] = 3;
                    v239 = v240 = 0;
                    while (v239 < 96) {
                        MEM[v235 + v239 + 32] = 96;
                        v239 = v239 + 32;
                    }
                    v241 = new struct(5);
                    require(!((v241 + 160 > uint64.max) | (v241 + 160 < v241)), Panic(65)); // failed memory allocation (too much memory)
                    v241.word0 = v227;
                    v241.word1 = bool(v230);
                    v241.word2 = uint128(v59);
                    v241.word3 = 1;
                    v242 = 32;
                    v243 = new struct(1);
                    require(!((v243 + 32 > uint64.max) | (v243 + 32 < v243)), Panic(65)); // failed memory allocation (too much memory)
                    v243.word0 = v171;
                    v241.word4 = v243;
                    MEM[MEM[64] + v242] = v242;
                    MEM[MEM[64] + 64] = address(MEM[v241.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v241.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v241.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v241.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v241.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v241.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v241.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v241.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v241.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v241.word4, MEM[v241.word4]);
                    MEM[32 + (MEM[v241.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v241.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v241.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v241.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v241.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[32 + v235] = MEM[64];
                    require(MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v230) {
                        v244 = new struct(3);
                        v244.word1 = address(MEM[v245]);
                        v244.word2 = v59;
                        v244.word0 = 64;
                        require(!((v244 + 96 > uint64.max) | (v244 + 96 < v244)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v246], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v247 = 64 + v246;
                    } else {
                        v244 = v248 = new struct(3);
                        v248.word1 = address(v227.word0);
                        v248.word2 = v59;
                        v248.word0 = 64;
                        require(!((v248 + 96 > uint64.max) | (v248 + 96 < v248)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < MEM[v249], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v247 = v250 = 64 + v249;
                    }
                    MEM[v247] = v244;
                    require(1 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v230) {
                        v251 = v252 = address(MEM[v226]);
                    } else {
                        v251 = address(MEM[v228]);
                    }
                    v253 = new struct(3);
                    v254 = v253.data;
                    v253.word1 = address(v251);
                    v253.word2 = 1;
                    v253.word0 = 64;
                    require(!((v253 + 96 > uint64.max) | (v253 + 96 < v253)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v235] = v253;
                    require(2 < MEM[v235], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v255 = new struct(2);
                    require(!((v255 + 64 > uint64.max) | (v255 + 64 < v255)), Panic(65)); // failed memory allocation (too much memory)
                    v255.word0 = 1;
                    v256 = v257 = 0;
                    while (v256 < 32) {
                        MEM[v255 + v256 + 32] = 96;
                        v256 = v256 + 32;
                    }
                    MEM[MEM[64] + v242] = 64;
                    MEM[MEM[64] + v242 + 64] = MEM[v233];
                    MCOPY(MEM[64] + v242 + 64 + 32, 32 + v233, MEM[v233]);
                    MEM[32 + (MEM[v233] + (MEM[64] + v242 + 64))] = 0;
                    MEM[MEM[64] + v242 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v242 + 64) + 32 - (MEM[64] + v242);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v242 + 64) + 32] = MEM[v235];
                    v258 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v242 + 64) + 32 + 32;
                    v259 = v260 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v242 + 64) + 32 + (MEM[v235] << 5) + 32;
                    v261 = v235 + 32;
                    v262 = 0;
                    while (v262 < MEM[v235]) {
                        MEM[v258] = v259 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v233]) + (MEM[64] + v242 + 64) + 32) - 32;
                        MEM[v259] = MEM[MEM[v261]];
                        MCOPY(v259 + 32, 32 + MEM[v261], MEM[MEM[v261]]);
                        MEM[32 + (MEM[MEM[v261]] + v259)] = 0;
                        v259 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v261]]) + v259 + 32;
                        v261 = v261 + 32;
                        v258 = v258 + 32;
                        v262 = v262 + 1;
                    }
                    MEM[MEM[64]] = v259 - MEM[64] - 32;
                    require(!((MEM[64] + (v259 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v259 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v255.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v263 = v255.data;
                    v255.word1 = MEM[64];
                    require(v255.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v264 = v255.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    if (!v230) {
                        v265 = v266 = address(MEM[v226]);
                    } else {
                        v265 = address(MEM[v228]);
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v267, /* uint112 */ v171 = address(v265).balanceOf(address(this)).gas(msg.gas);
                    require(v267, MEM[64], RETURNDATASIZE());
                    if (v267) {
                        if (v242 > RETURNDATASIZE()) {
                            v242 = v268 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v242 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v242 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v242 - MEM[64] >= v242);
                    }
                    if (!v230) {
                        require(block.timestamp + 1 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v171, v171);
                        v269 = new bytes[](v270.length);
                        MCOPY(v269.data, v270.data, v270.length);
                        v269[v270.length] = 0;
                        v271 = v269.data;
                        v272 = new uint256[](v255.word0.length);
                        v269[32][32] = v255.word0.length;
                        v273 = v272.data;
                        v274 = v275 = v272.data + 32;
                        v276 = v255.data;
                        v277 = 0;
                        while (v277 < v255.word0.length) {
                            MEM[v273] = v274 - v272 - 32;
                            MEM[v274] = MEM[MEM[v276]];
                            MCOPY(v274 + 32, 32 + MEM[v276], MEM[MEM[v276]]);
                            MEM[32 + (MEM[MEM[v276]] + v274)] = 0;
                            v274 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v276]]) + v274 + 32;
                            v276 = v276 + 32;
                            v273 = v273 + 32;
                            v277 = v277 + 1;
                        }
                        v278, /* uint256 */ v279 = stor_4_0_19.execute(v269, v272, block.timestamp + 1).value(v171).gas(msg.gas);
                        require(v278, v279, RETURNDATASIZE());
                        if (v278) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v171, v171, v171);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size, v171, v171);
                        v280, /* uint256 */ v281 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v59).value(v171).gas(msg.gas);
                        require(v280, v281, RETURNDATASIZE());
                        if (v280) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v171, v171, v171);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size, v171, v171);
                        v282 = new bytes[](v270.length);
                        MCOPY(v282.data, v270.data, v270.length);
                        v282[v270.length] = 0;
                        v283 = v282.data;
                        v284 = new uint256[](v255.word0.length);
                        v282[32][32] = v255.word0.length;
                        v285 = v284.data;
                        v286 = v287 = v284.data + 32;
                        v288 = v255.data;
                        v289 = 0;
                        while (v289 < v255.word0.length) {
                            MEM[v285] = v286 - v284 - 32;
                            MEM[v286] = MEM[MEM[v288]];
                            MCOPY(v286 + 32, 32 + MEM[v288], MEM[MEM[v288]]);
                            MEM[32 + (MEM[MEM[v288]] + v286)] = 0;
                            v286 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v288]]) + v286 + 32;
                            v288 = v288 + 32;
                            v285 = v285 + 32;
                            v289 = v289 + 1;
                        }
                        v290, /* uint256 */ v291 = stor_4_0_19.execute(v282, v284, block.timestamp + 1).value(v59).gas(msg.gas);
                        require(v290, v291, RETURNDATASIZE());
                        if (v290) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!v171, v171, v171);
                        }
                    }
                    v292, /* uint112 */ v171 = address(v265).balanceOf(address(this)).gas(msg.gas);
                    require(v292, MEM[64], RETURNDATASIZE());
                    if (v292) {
                        if (v242 > RETURNDATASIZE()) {
                            v242 = v293 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v242 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v242 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v242 - MEM[64] >= v242);
                    }
                    v215 = v294 = _SafeSub(v171, v171);
                    v230 = v295 = address(v222) == address(msg.data[varg0 + 228 + 64]);
                    // Unknown jump to Block 0x41000x4abeB0x35fd. Refer to 3-address code (TAC);
                    0x501f(msg.data[varg0 + 228 + 64], v59);
                    require(block.timestamp + 60 >= block.timestamp, Panic(17)); // arithmetic overflow or underflow
                    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                    v296, /* uint256 */ v297 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(msg.data[varg0 + 228 + 64]), stor_4_0_19, address(v59), uint48(block.timestamp + 60)).gas(msg.gas);
                    require(v296, v297, RETURNDATASIZE());
                    if (v296) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v171 = v298 = 0;
                    }
                }
            } else {
                require(!(msg.data[varg0 + 228] - address(msg.data[varg0 + 228])));
                require(!(msg.data[varg0 + 228 + 64] - address(msg.data[varg0 + 228 + 64])));
                require(!(msg.data[96 + (varg0 + 228)] - address(msg.data[96 + (varg0 + 228)])));
                v299, /* uint112 */ v171 = address(msg.data[96 + (varg0 + 228)]).balanceOf(address(this)).gas(msg.gas);
                require(v299, MEM[64], RETURNDATASIZE());
                if (v299) {
                    v300 = v301 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v300 = v302 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v300 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v300 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v300 - MEM[64] >= 32);
                }
                0x4ee8(msg.data[varg0 + 228 + 64], msg.data[varg0 + 228], v59);
                v303, /* uint112 */ v171, /* uint112 */ v171, /* uint32 */ v304 = address(msg.data[varg0 + 228]).getReserves().gas(msg.gas);
                require(v303, MEM[64], RETURNDATASIZE());
                if (v303) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v305 = v306 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v305 = v307 = MEM[64] + 96;
                    }
                    require(v305 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v171 - uint112(v171)));
                    require(!(v304 - uint32(v304)));
                }
                v308, /* uint112 */ v171 = address(msg.data[varg0 + 228]).token0().gas(msg.gas);
                require(v308, MEM[64], RETURNDATASIZE());
                if (v308) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v309 = v310 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v309 = v311 = MEM[64] + 32;
                    }
                    require(v309 - MEM[64] >= 32);
                    require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                }
                if (address(msg.data[varg0 + 228 + 64]) != address(v171)) {
                    v312 = uint112(v171);
                    v313 = uint112(v171);
                } else {
                    v312 = v314 = uint112(v171);
                    v313 = v315 = uint112(v171);
                }
                require(v59, Error('INSUFFICIENT_INPUT_AMOUNT'));
                v316 = bool(v312);
                if (v316) {
                    v316 = v317 = bool(v313);
                }
                require(v316, Error('INSUFFICIENT_LIQUIDITY'));
                require(!(997 - v59 * 997 / v59), Panic(17)); // arithmetic overflow or underflow
                v318 = _SafeMul(v59 * 997, v313);
                require((1000 == v312 * 1000 / v312) | !v312, Panic(17)); // arithmetic overflow or underflow
                v319 = _SafeAdd(v312 * 1000, v59 * 997);
                v171 = v320 = _SafeDiv(v318, v319);
                if (address(msg.data[varg0 + 228 + 64]) == address(v171)) {
                }
                require((address(msg.data[varg0 + 228])).code.size, v172, v172);
                v321, /* uint256 */ v322 = address(msg.data[varg0 + 228]).swap(v171, v171, address(this), 128, 0).value(v172).gas(msg.gas);
                require(v321, v322, RETURNDATASIZE());
                if (v321) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v172, v172, v172);
                }
                v323, /* uint112 */ v171 = address(msg.data[96 + (varg0 + 228)]).balanceOf(address(this)).gas(msg.gas);
                require(v323, MEM[64], RETURNDATASIZE());
                if (v323) {
                    v324 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v324 = v325 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v324 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v324 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v324 - MEM[64] >= 32);
                }
                v215 = v326 = _SafeSub(v171, v171);
            }
            require(v215 >= msg.data[varg0 + 484], MinimumNotMet());
            v327 = v328 = 0;
            while (1) {
                require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                if (v327 >= msg.data[v0 + msg.data[varg0 + 516]]) {
                    if (msg.data[varg0 + 580]) {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                        v329, /* uint256 */ v330 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 580]).gas(msg.gas);
                        require(v329, v330, RETURNDATASIZE());
                        if (v329) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            v331 = v332 = 0;
                        }
                        v333, /* uint256 */ v334 = block.coinbase.call().value(msg.data[varg0 + 580]).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v335 = v336 = new bytes[](RETURNDATASIZE());
                            require(!((v336 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v336 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v336)), Panic(65)); // failed memory allocation (too much memory)
                            v334 = v336.data;
                            RETURNDATACOPY(v334, 0, RETURNDATASIZE());
                        }
                        require(v333, fullExit());
                        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, msg.data[varg0 + 580]);
                    }
                    require(!(msg.data[varg0 + 324] - address(msg.data[varg0 + 324])));
                    require(!(msg.data[varg0 + 100] - address(msg.data[varg0 + 100])));
                    require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                    require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                    require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                    emit 0x1d5bd7bbbf1ed354c677ba890624a904587b5034e9fa1b3c3717e61d0e6a0c6f(address(msg.data[varg0 + 324]), address(msg.data[varg0 + 100]), v5, v59, v215, msg.data[v0 + msg.data[varg0 + 516]], msg.data[varg0 + 580]);
                    return v215;
                } else {
                    require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
                    require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
                    require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
                    v337 = 0x3b1d(32 + (v0 + msg.data[varg0 + 548]), msg.data[v0 + msg.data[varg0 + 548]], v327);
                    v338 = _SafeMul(v215, msg.data[v337]);
                    if (v338 / 10000) {
                        require(!(msg.data[varg0 + 324] - address(msg.data[varg0 + 324])));
                        require(msg.data[varg0 + 516] < msg.data.length - v0 - 31);
                        require(msg.data[v0 + msg.data[varg0 + 516]] <= uint64.max);
                        require(32 + (v0 + msg.data[varg0 + 516]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 516]] << 5));
                        v339 = 0x3b1d(32 + (v0 + msg.data[varg0 + 516]), msg.data[v0 + msg.data[varg0 + 516]], v327);
                        require(!(msg.data[v339] - address(msg.data[v339])));
                        0x4ee8(msg.data[varg0 + 324], msg.data[v339], v338 / 10000);
                    }
                    v327 = v327 + 1;
                }
            }
        } else {
            require(msg.data[varg0 + 548] < msg.data.length - v0 - 31);
            require(msg.data[v0 + msg.data[varg0 + 548]] <= uint64.max);
            require(32 + (v0 + msg.data[varg0 + 548]) <= msg.data.length - (msg.data[v0 + msg.data[varg0 + 548]] << 5));
            v340 = 0x3b1d(32 + (v0 + msg.data[varg0 + 548]), msg.data[v0 + msg.data[varg0 + 548]], v13);
            v13 = _SafeAdd(v13, msg.data[v340]);
            v13 = v13 + 1;
        }
    }
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
        require(!((128 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (128 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < 128)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = 128 + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(128 + v3 - 128 >= 32);
        v1 = v6 = MEM[128];
    }
    return v1;
}

function 0x39f0(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = msg.sender;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(msg.sender, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x3b1d(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
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
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
            if (0 == !msg.data[varg0 + 228]) {
                if (0 == (msg.data[varg0 + 228] == 6)) {
                    if (0 == (msg.data[varg0 + 228] == 7)) {
                        require(!(varg0.length - address(varg0.length)));
                        require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                        v9 = v10 = 0x50c6(varg0.length, msg.data[varg0.data], msg.data[varg0 + 68], this);
                    } else {
                        require(!(varg0.length - address(varg0.length)));
                        require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                        v9 = v11 = 0x50c6(varg0.length, msg.data[varg0.data], msg.data[varg0 + 68], this);
                    }
                } else {
                    require(stor_4_0_19, InvalidParams());
                    v12 = v13 = varg0 + 260;
                    require(!(msg.data[v13] - address(msg.data[v13])));
                    v14 = v15 = address(msg.data[v13]) == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    if (address(msg.data[v13]) != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                        v14 = v16 = !address(msg.data[v13]);
                    }
                    v17 = v18 = 0x60000;
                    MEM[v18 + 33] = 0xc00000000000000000000000000000000000000000000000000000000000000;
                    MEM[v18 + 34] = 0xf00000000000000000000000000000000000000000000000000000000000000;
                    require(!((v18 + 64 > uint64.max) | (v18 + 64 < v18)), Panic(65)); // failed memory allocation (too much memory)
                    v19 = new struct(4);
                    require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                    v19.word0 = 3;
                    v20 = v21 = 0;
                    while (v20 < 96) {
                        MEM[v19 + v20 + 32] = 96;
                        v20 = v20 + 32;
                    }
                    v22 = new struct(5);
                    require(!((v22 + 160 > uint64.max) | (v22 + 160 < v22)), Panic(65)); // failed memory allocation (too much memory)
                    require(msg.data.length - v13 >= 160);
                    v23 = new struct(5);
                    require(!((v23 + 160 > uint64.max) | (v23 + 160 < v23)), Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v13] - address(msg.data[v13])));
                    v23.word0 = msg.data[v13];
                    require(!(msg.data[v13 + 32] - address(msg.data[v13 + 32])));
                    v23.word1 = msg.data[v13 + 32];
                    require(!(msg.data[v13 + 64] - uint24(msg.data[v13 + 64])));
                    v23.word2 = msg.data[v13 + 64];
                    require(!(msg.data[v13 + 96] - int24(msg.data[v13 + 96])));
                    v23.word3 = msg.data[v13 + 96];
                    require(!(msg.data[v13 + 128] - address(msg.data[v13 + 128])));
                    v23.word4 = msg.data[v13 + 128];
                    v22.word0 = v23;
                    v22.word1 = bool(v14);
                    v22.word2 = uint128(msg.data[varg0 + 68]);
                    v22.word3 = 0;
                    v24 = v25 = 32;
                    v26 = new struct(1);
                    require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                    v26.word0 = 0;
                    v22.word4 = v26;
                    MEM[MEM[64] + v25] = v25;
                    MEM[MEM[64] + 64] = address(MEM[v22.word0]);
                    MEM[MEM[64] + 64 + 32] = address(MEM[v22.word0 + 32]);
                    MEM[MEM[64] + 64 + 64] = uint24(MEM[v22.word0 + 64]);
                    MEM[MEM[64] + 64 + 96] = int24(MEM[v22.word0 + 96]);
                    MEM[MEM[64] + 64 + 128] = address(MEM[128 + v22.word0]);
                    MEM[MEM[64] + 64 + 160] = bool(v22.word1);
                    MEM[MEM[64] + 64 + 192] = uint128(v22.word2);
                    MEM[MEM[64] + 64 + 224] = uint128(v22.word3);
                    MEM[MEM[64] + 64 + (uint8.max + 1)] = 288;
                    MEM[MEM[64] + 64 + 288] = MEM[v22.word4];
                    MCOPY(MEM[64] + 64 + 288 + 32, 32 + v22.word4, MEM[v22.word4]);
                    MEM[32 + (MEM[v22.word4] + (MEM[64] + 64 + 288))] = 0;
                    MEM[MEM[64]] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] - 32;
                    require(!((MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v22.word4]) + (MEM[64] + 64 + 288) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v27 = v19.data;
                    v19.word1 = MEM[64];
                    require(v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v28 = v19.data;
                    if (!v14) {
                        require(!(msg.data[varg0 + 292] - address(msg.data[varg0 + 292])));
                        v29 = new struct(3);
                        v29.word1 = address(msg.data[varg0 + 292]);
                        v29.word2 = msg.data[varg0 + 68];
                        v29.word0 = 64;
                        require(!((v29 + 96 > uint64.max) | (v29 + 96 < v29)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v30 = 64 + v19;
                    } else {
                        require(!(msg.data[v13] - address(msg.data[v13])));
                        v29 = v31 = new struct(3);
                        v31.word1 = address(msg.data[v13]);
                        v31.word2 = msg.data[varg0 + 68];
                        v31.word0 = 64;
                        require(!((v31 + 96 > uint64.max) | (v31 + 96 < v31)), Panic(65)); // failed memory allocation (too much memory)
                        require(1 < v19.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v30 = v32 = 64 + v19;
                    }
                    MEM[v30] = v29;
                    require(1 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (!v14) {
                        v33 = msg.data[v12];
                        require(!(v33 - address(v33)));
                    } else {
                        v33 = v34 = msg.data[varg0 + 292];
                        require(!(v34 - address(v34)));
                    }
                    v35 = new struct(3);
                    v36 = v35.data;
                    v35.word1 = address(v33);
                    v35.word2 = 0;
                    v35.word0 = 64;
                    require(!((v35 + 96 > uint64.max) | (v35 + 96 < v35)), Panic(65)); // failed memory allocation (too much memory)
                    require(2 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM[96 + v19] = v35;
                    require(2 < MEM[v19], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v37 = new struct(2);
                    require(!((v37 + 64 > uint64.max) | (v37 + 64 < v37)), Panic(65)); // failed memory allocation (too much memory)
                    v37.word0 = 1;
                    v38 = v39 = 0;
                    while (v38 < 32) {
                        MEM[v37 + v38 + 32] = 96;
                        v38 = v38 + 32;
                    }
                    MEM[MEM[64] + v24] = 64;
                    MEM[MEM[64] + v24 + 64] = MEM[v17];
                    MCOPY(MEM[64] + v24 + 64 + 32, 32 + v17, MEM[v17]);
                    MEM[32 + (MEM[v17] + (MEM[64] + v24 + 64))] = 0;
                    MEM[MEM[64] + v24 + 32] = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v17]) + (MEM[64] + v24 + 64) + 32 - (MEM[64] + v24);
                    MEM[(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v17]) + (MEM[64] + v24 + 64) + 32] = MEM[v19];
                    v40 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v17]) + (MEM[64] + v24 + 64) + 32 + 32;
                    v41 = v42 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v17]) + (MEM[64] + v24 + 64) + 32 + (MEM[v19] << 5) + 32;
                    v43 = v19 + 32;
                    v44 = 0;
                    while (v44 < MEM[v19]) {
                        MEM[v40] = v41 - ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v17]) + (MEM[64] + v24 + 64) + 32) - 32;
                        MEM[v41] = MEM[MEM[v43]];
                        MCOPY(v41 + 32, 32 + MEM[v43], MEM[MEM[v43]]);
                        MEM[32 + (MEM[MEM[v43]] + v41)] = 0;
                        v41 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v43]]) + v41 + 32;
                        v43 = v43 + 32;
                        v40 = v40 + 32;
                        v44 = v44 + 1;
                    }
                    MEM[MEM[64]] = v41 - MEM[64] - 32;
                    require(!((MEM[64] + (v41 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v41 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(v37.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v45 = v37.data;
                    v37.word1 = MEM[64];
                    require(v37.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v46 = v37.data;
                    require(!0, Panic(65)); // failed memory allocation (too much memory)
                    require(!(msg.data[v12] - address(msg.data[v12])));
                    v47 = v48 = address(msg.data[v12]);
                    require(!(msg.data[32 + v12] - address(msg.data[32 + v12])));
                    v47 = v49 = address(msg.data[32 + v12]);
                    v50 = v51 = v48 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    if (v48 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                        v50 = v52 = !v48;
                    }
                    if (v50) {
                    }
                    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v53, /* uint256 */ v5 = address(v47).balanceOf(this).gas(msg.gas);
                    require(v53, MEM[64], RETURNDATASIZE());
                    if (v53) {
                        if (v24 > RETURNDATASIZE()) {
                            v24 = v54 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v24 - MEM[64] >= v24);
                    }
                    if (address(msg.data[v13])) {
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size);
                        v55 = new bytes[](v56.length);
                        MCOPY(v55.data, v56.data, v56.length);
                        v55[v56.length] = 0;
                        v57 = v55.data;
                        v58 = new uint256[](v37.word0.length);
                        v55[32][32] = v37.word0.length;
                        v59 = v58.data;
                        v60 = v61 = v58.data + 32;
                        v62 = v37.data;
                        v63 = 0;
                        while (v63 < v37.word0.length) {
                            MEM[v59] = v60 - v58 - 32;
                            MEM[v60] = MEM[MEM[v62]];
                            MCOPY(v60 + 32, 32 + MEM[v62], MEM[MEM[v62]]);
                            MEM[32 + (MEM[MEM[v62]] + v60)] = 0;
                            v60 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v62]]) + v60 + 32;
                            v62 = v62 + 32;
                            v59 = v59 + 32;
                            v63 = v63 + 1;
                        }
                        v64, /* uint256 */ v65 = stor_4_0_19.execute(v55, v58, block.timestamp + 1).gas(msg.gas);
                        require(v64, v65, RETURNDATASIZE());
                        if (v64) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                    } else {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                        v66, /* uint256 */ v67 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 68]).gas(msg.gas);
                        require(v66, v67, RETURNDATASIZE());
                        if (v66) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                        require(block.timestamp <= block.timestamp + 1, Panic(17)); // arithmetic overflow or underflow
                        require(stor_4_0_19.code.size);
                        v68 = new bytes[](v56.length);
                        MCOPY(v68.data, v56.data, v56.length);
                        v68[v56.length] = 0;
                        v69 = v68.data;
                        v70 = new uint256[](v37.word0.length);
                        v68[32][32] = v37.word0.length;
                        v71 = v70.data;
                        v72 = v73 = v70.data + 32;
                        v74 = v37.data;
                        v75 = 0;
                        while (v75 < v37.word0.length) {
                            MEM[v71] = v72 - v70 - 32;
                            MEM[v72] = MEM[MEM[v74]];
                            MCOPY(v72 + 32, 32 + MEM[v74], MEM[MEM[v74]]);
                            MEM[32 + (MEM[MEM[v74]] + v72)] = 0;
                            v72 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v74]]) + v72 + 32;
                            v74 = v74 + 32;
                            v71 = v71 + 32;
                            v75 = v75 + 1;
                        }
                        v76, /* uint256 */ v77 = stor_4_0_19.execute(v68, v70, block.timestamp + 1).value(msg.data[varg0 + 68]).gas(msg.gas);
                        require(v76, v77, RETURNDATASIZE());
                        if (v76) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                    }
                    v78, /* uint256 */ v5 = address(v47).balanceOf(this).gas(msg.gas);
                    require(v78, MEM[64], RETURNDATASIZE());
                    if (v78) {
                        if (v24 > RETURNDATASIZE()) {
                            v24 = v79 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v24 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v24 - MEM[64] >= v24);
                    }
                    v9 = v80 = _SafeSub(v5, v5);
                }
            } else {
                require(!(varg0.length - address(varg0.length)));
                require(!(msg.data[varg0.data] - address(msg.data[varg0.data])));
                v81, /* uint256 */ v5 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                require(v81, MEM[64], RETURNDATASIZE());
                if (v81) {
                    v82 = v83 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v82 = v84 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v82 - MEM[64] >= 32);
                }
                0x4ee8(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), varg0.length, msg.data[varg0 + 68]);
                v85 = 0x5642(varg0.length, this);
                v86, /* uint256 */ v5 = address(msg.data[varg0.data]).balanceOf(this).gas(msg.gas);
                require(v86, MEM[64], RETURNDATASIZE());
                if (v86) {
                    v87 = v88 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v87 = v89 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v87 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v87 - MEM[64] >= 32);
                }
                v9 = v90 = _SafeSub(v5, v5);
            }
            require(v9 >= msg.data[varg0 + 100], MinimumNotMet());
            require(!0);
            if (msg.data[varg0 + 228] - 6) {
                v91 = v92 = msg.data[varg0.data];
                require(!(v92 - address(v92)));
            } else {
                require(!(msg.data[varg0 + 260] - address(msg.data[varg0 + 260])));
                v91 = v93 = address(msg.data[varg0 + 260]);
                require(!(msg.data[32 + (varg0 + 260)] - address(msg.data[32 + (varg0 + 260)])));
                v91 = v94 = address(msg.data[32 + (varg0 + 260)]);
                v95 = v96 = v93 == address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                if (v93 != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)) {
                    v95 = v97 = !v93;
                }
                if (v95) {
                }
            }
            while (1) {
                require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                if (v5 >= msg.data[4 + varg0 + msg.data[varg0 + 132]]) {
                    if (msg.data[varg0 + 196]) {
                        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                        v98, /* uint256 */ v99 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(msg.data[varg0 + 196]).gas(msg.gas);
                        require(v98, v99, RETURNDATASIZE());
                        if (v98) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(!0);
                        }
                        v100, /* uint256 */ v101 = block.coinbase.call().value(msg.data[varg0 + 196]).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v102 = v103 = new bytes[](RETURNDATASIZE());
                            require(!((v103 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v103 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v103)), Panic(65)); // failed memory allocation (too much memory)
                            v101 = v103.data;
                            RETURNDATACOPY(v101, 0, RETURNDATASIZE());
                        }
                        require(v100, fullExit());
                        emit 0x60893f9ca616fe1ce23af62664f019a8ed0bb08b8311c9eac7bae784fa2c75f8(block.coinbase, msg.data[varg0 + 196]);
                    }
                    require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                    require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                    require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                    require(msg.data[varg0 + 228] < 8, Panic(33)); // failed convertion to enum type
                    emit 0x6d9786e5b3cedd46126a30c6a6d4dd7cee744e41fd6366e746a5561fe079a936(address(v91), msg.data[varg0 + 68], v9, msg.data[4 + varg0 + msg.data[varg0 + 132]], msg.data[varg0 + 196], msg.data[varg0 + 228]);
                    return v9;
                } else {
                    require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
                    require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
                    require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
                    v104 = 0x3b1d(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v5);
                    v105 = _SafeMul(v9, msg.data[v104]);
                    if (v105 / 10000) {
                        require(msg.data[varg0 + 132] < msg.data.length - (4 + varg0) - 31);
                        require(msg.data[4 + varg0 + msg.data[varg0 + 132]] <= uint64.max);
                        require(32 + (4 + varg0 + msg.data[varg0 + 132]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 132]] << 5));
                        v106 = 0x3b1d(32 + (4 + varg0 + msg.data[varg0 + 132]), msg.data[4 + varg0 + msg.data[varg0 + 132]], v5);
                        require(!(msg.data[v106] - address(msg.data[v106])));
                        0x4ee8(v91, msg.data[v106], v105 / 10000);
                    }
                    v5 = v5 + 1;
                }
            }
        } else {
            require(msg.data[varg0 + 164] < msg.data.length - (4 + varg0) - 31);
            require(msg.data[4 + varg0 + msg.data[varg0 + 164]] <= uint64.max);
            require(32 + (4 + varg0 + msg.data[varg0 + 164]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 164]] << 5));
            v107 = 0x3b1d(32 + (4 + varg0 + msg.data[varg0 + 164]), msg.data[4 + varg0 + msg.data[varg0 + 164]], v5);
            v5 = _SafeAdd(v5, msg.data[v107]);
            v5 = v5 + 1;
        }
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4ee8(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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

function 0x4f82(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, uint256.max).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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
    require(!v7, ApproveFailed());
    return ;
}

function 0x501f(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x22d473030f116ddee9f6b43ac78ba3;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.approve(0x22d473030f116ddee9f6b43ac78ba3, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
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
    require(!v7, ApproveFailed());
    return ;
}

function 0x50c6(address varg0, address varg1, uint256 varg2, address varg3) private { 
    _algebraSwapCallback = varg0;
    stor_6 = varg2;
    v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1;
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
        v1 = v2 = 0;
        v3 = v4 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v1 = v5 = 0;
        v3 = v6 = 0x1000276a4;
    }
    v7, /* uint256 */ v8, /* uint256 */ v8 = varg0.swap(varg3, bool(v0), varg2, address(v3), 160, 0).value(v1).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    v8 = v9 = 0;
    v8 = v10 = 0;
    if (v7) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v11 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v11 = v12 = MEM[64] + 64;
        }
        require(v11 - MEM[64] >= 64);
        _algebraSwapCallback = 0;
        stor_6 = 0;
        if (v0) {
        }
    } else {
        _algebraSwapCallback = 0;
        stor_6 = 0;
        if (v0) {
        }
    }
    require(v8 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v8;
}

function 0x5524(address varg0, address varg1, uint256 varg2, address varg3) private { 
    _algebraSwapCallback = varg0;
    require(varg2 != int256.min, Panic(17)); // arithmetic overflow or underflow
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
        v0 = v1 = 0;
        v2 = v3 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v0 = v4 = 0;
        v2 = v5 = 0x1000276a4;
    }
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg0.swap(varg3, address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) < varg1, 0 - varg2, address(v2), 160, 0).value(v0).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    v7 = v9 = 0;
    v8 = v10 = 0;
    if (v6) {
        if (64 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v11 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 64;
            v11 = v12 = MEM[64] + 64;
        }
        require(v11 - MEM[64] >= 64);
    }
    _algebraSwapCallback = 0;
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) >= varg1) {
        return v8;
    } else {
        return v7;
    }
}

function 0x5642(address varg0, address varg1) private { 
    v0 = varg0;
    v1, /* uint112 */ v2, /* uint112 */ v3, /* uint32 */ v4 = v0.getReserves().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v5 = 0;
    v3 = v6 = 0;
    if (v1) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v7 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v12 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v12 = v13 = MEM[64] + 32;
        }
        require(v12 - MEM[64] >= 32);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
    }
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v10)) {
        v14 = v15 = uint112(v3);
        v16 = v17 = uint112(v2);
    } else {
        v14 = v18 = uint112(v2);
        v16 = v19 = uint112(v3);
    }
    v20, v21 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(v0).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    v21 = v22 = 0;
    if (v20) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v23 - MEM[64] >= 32);
    }
    v26 = _SafeSub(v21, v14);
    v27 = v28 = 0x582d(v26, v14, v16);
    if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v10)) {
        v27 = v29 = 0;
    } else {
        v27 = v30 = 0;
    }
    require(v0.code.size);
    v31, /* uint256 */ v32 = v0.swap(v27, v27, varg1, 128, 0).gas(msg.gas);
    require(v31, v32, RETURNDATASIZE());
    if (v31) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return v28;
    } else {
        return v28;
    }
}

function 0x582d(uint256 varg0, uint256 varg1, uint256 varg2) private { 
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
        0x39f0(address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2), v0);
        exit;
    } else {
        require(data + data.length - data >= 32);
        require(!(msg.data[data.data] - address(msg.data[data.data])));
        0x39f0(address(msg.data[data.data]), v0);
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
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    emit Deposited(msg.sender, msg.value, 1);
    return ;
}

function 0xf4ff6ea2(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - address(0x8bdf3dae4f9817320cb0317521f56607d271fef)), Unauthorized());
    0x4f82(varg0);
    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
    v0, /* uint256 */ v1 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(varg0, stor_4_0_19, uint160.max, uint48.max).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
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
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require(amount <= v1, InsufficientBalance());
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(amount).gas(msg.gas);
    require(v5, v6, RETURNDATASIZE());
    if (v5) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    v7, /* uint256 */ v8 = 0x8bdf3dae4f9817320cb0317521f56607d271fef.call().value(amount).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = v10 = new bytes[](RETURNDATASIZE());
        require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
        v8 = v10.data;
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    require(v7, TransferFailed());
    emit Withdrawn(0, amount);
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0xcbb73b == v0) {
            getWETHBalance();
        } else if (0xf754fde == v0) {
            0x0f754fde(v0);
        } else if (0x13e7c9d8 == v0) {
            operators(address);
        } else if (0x238c6060 == v0) {
            0x238c6060(v0);
        } else {
            if (0x23a69e75 != v0) {
                if (0x26eb54b5 == v0) {
                    0x26eb54b5(v0);
                } else if (0x2c8958f6 != v0) {
                    if (0x35a9e4df == v0) {
                        universalRouter();
                    } else if (0x470086d5 == v0) {
                        0x470086d5(v0);
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
                    } else if (0x9e281a98 == v0) {
                        withdrawToken(address,uint256);
                    } else if (0x9ef912f2 == v0) {
                        0x9ef912f2(v0);
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
