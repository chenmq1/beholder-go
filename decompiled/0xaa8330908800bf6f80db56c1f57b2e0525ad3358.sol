// Decompiled by library.dedaub.com
// 2026.04.17 08:43 UTC
// Compiled using the solidity compiler version 0.8.34


// Data structures and variables inferred from the use of storage instructions
address owner_0_0_19; // STORAGE[0x0] bytes 0 to 19
address owner_1_0_19; // STORAGE[0x1] bytes 0 to 19
address _owner; // STORAGE[0x2] bytes 0 to 19
address _weth; // STORAGE[0x3] bytes 0 to 19



function 0x1030(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(msg.sender == owner_0_0_19, Error('SwapExecutor: callback not from pool'));
    if (varg3 > 0) {
        v0, /* address */ v1 = msg.sender.token0().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == address(v1));
        MEM[36 + MEM[64] + 32] = varg3;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = address(v1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v6 = v7 = 96;
        } else {
            v6 = v8 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
        }
        if (v3) {
            v2 = v9 = MEM[v6] == 0;
            if (MEM[v6] != 0) {
                require(v5 + MEM[v6] - v5 >= 32);
                v2 = MEM[v5];
                require(v2 == bool(v2));
            }
        }
        require(v2, Error('SafeERC20: transfer'));
    }
    if (varg2 <= 0) {
        return ;
    } else {
        v10, /* address */ v11 = msg.sender.token1().gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v11 == address(v11));
        MEM[36 + MEM[64] + 32] = varg2;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v12 = v13, /* uint256 */ v14, /* uint256 */ v15 = address(v11).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v16 = v17 = 96;
        } else {
            v16 = v18 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
        }
        if (v13) {
            v12 = v19 = MEM[v16] == 0;
            if (MEM[v16] != 0) {
                require(v15 + MEM[v16] - v15 >= 32);
                v12 = MEM[v15];
                require(v12 == bool(v12));
            }
        }
        require(v12, Error('SafeERC20: transfer'));
        return ;
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    0x1030(data.length, data.data, amount1Delta, amount0Delta);
}

function 0x11e5(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(128 + varg2 + 32 - (128 + varg2) >= 32);
    require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
    require(address(msg.data[128 + varg2]) - address(0x0), Error('SwapExecutor: V2 router zero'));
    require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
    require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
    require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
    if (msg.data[varg2 + msg.data[192 + varg2]] <= 0) {
        require(msg.data[160 + varg2] < msg.data.length - varg2 - 31);
        require(msg.data[varg2 + msg.data[160 + varg2]] <= uint64.max);
        require(varg2 + msg.data[160 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[160 + varg2]] << 5));
        require(msg.data[varg2 + msg.data[160 + varg2]] >= 2, Error('SwapExecutor: V2 path short'));
        require(416 + varg2 + 32 - (416 + varg2) >= 32);
        require(msg.data[416 + varg2] == bytes4(msg.data[416 + varg2]));
        if (bytes4(msg.data[416 + varg2]) == bytes4(0)) {
            v0 = v1 = 0x38ed173900000000000000000000000000000000000000000000000000000000;
        } else {
            require(416 + varg2 + 32 - (416 + varg2) >= 32);
            v0 = msg.data[416 + varg2];
            require(v0 == bytes4(v0));
        }
        if (bytes4(v0) - bytes4(0x38ed173900000000000000000000000000000000000000000000000000000000)) {
            v2 = v3 = bytes4(v0) == bytes4(0x5c11d79500000000000000000000000000000000000000000000000000000000);
            if (bytes4(v0) != bytes4(0x5c11d79500000000000000000000000000000000000000000000000000000000)) {
                v2 = v4 = bytes4(v0) == bytes4(0xac3893ba00000000000000000000000000000000000000000000000000000000);
            }
            require(v2, Error('SwapExecutor: unsupported V2 method'));
            require(32 + varg2 + 32 - (32 + varg2) >= 32);
            require(msg.data[32 + varg2] == address(msg.data[32 + varg2]));
            require(128 + varg2 + 32 - (128 + varg2) >= 32);
            require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
            MEM[36 + MEM[64] + 32] = varg1;
            MEM[64] = 36 + MEM[64] + 64;
            MEM[MEM[64] + 32] = uint224(address(msg.data[128 + varg2])) | bytes4(0x95ea7b300000000000000000000000000000000000000000000000000000000);
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = address(msg.data[32 + varg2]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v9 = v10 = 96;
            } else {
                v9 = v11 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
            }
            if (v6) {
                v5 = v12 = MEM[v9] == 0;
                if (MEM[v9] != 0) {
                    require(v8 + MEM[v9] - v8 >= 32);
                    v5 = MEM[v8];
                    require(v5 == bool(v5));
                }
            }
            require(v5, Error('SafeERC20: approve'));
            if (bytes4(v0) - bytes4(0xac3893ba00000000000000000000000000000000000000000000000000000000)) {
                require(128 + varg2 + 32 - (128 + varg2) >= 32);
                require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
                require(msg.data[160 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[160 + varg2]] <= uint64.max);
                v13 = v14 = varg2 + msg.data[160 + varg2] + 32;
                require(v14 <= msg.data.length - (msg.data[varg2 + msg.data[160 + varg2]] << 5));
                MEM[36 + MEM[64] + 32] = msg.data[96 + varg2];
                MEM[36 + MEM[64] + 64] = 160;
                MEM[36 + MEM[64] + 160] = msg.data[varg2 + msg.data[160 + varg2]];
                v15 = v16 = 36 + MEM[64] + 160 + 32;
                v17 = v18 = 0;
                while (v17 < msg.data[varg2 + msg.data[160 + varg2]]) {
                    require(msg.data[v13] == address(msg.data[v13]));
                    MEM[v15] = address(msg.data[v13]);
                    v15 = v15 + 32;
                    v13 = v13 + 32;
                    v17 = v17 + 1;
                }
                MEM[36 + MEM[64] + 96] = address(this);
                MEM[36 + MEM[64] + 128] = varg0;
                MEM[64] = v15;
                MEM[MEM[64] + 32] = uint224(varg1) | bytes4(v0);
                MCOPY(MEM[64], MEM[64] + 32, v15 - MEM[64] - 32);
                MEM[MEM[64] + (v15 - MEM[64] - 32)] = 0;
                v19, /* uint256 */ v20 = address(msg.data[128 + varg2]).call(MEM[MEM[64]:MEM[64] + MEM[64] + v4911_0x1V0x49c5V0x1a99 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    v21 = new bytes[](RETURNDATASIZE());
                    v20 = v21.data;
                    RETURNDATACOPY(v20, 0, RETURNDATASIZE());
                }
                require(v19, Error('SwapExecutor: V2 SupportingFeeOnTransfer failed'));
            } else {
                require(128 + varg2 + 32 - (128 + varg2) >= 32);
                require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
                require(msg.data[160 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[160 + varg2]] <= uint64.max);
                v22 = v23 = varg2 + msg.data[160 + varg2] + 32;
                require(v23 <= msg.data.length - (msg.data[varg2 + msg.data[160 + varg2]] << 5));
                MEM[36 + MEM[64] + 32] = msg.data[96 + varg2];
                MEM[36 + MEM[64] + 64] = 192;
                MEM[36 + MEM[64] + 192] = msg.data[varg2 + msg.data[160 + varg2]];
                v24 = v25 = 36 + MEM[64] + 192 + 32;
                v26 = v27 = 0;
                while (v26 < msg.data[varg2 + msg.data[160 + varg2]]) {
                    require(msg.data[v22] == address(msg.data[v22]));
                    MEM[v24] = address(msg.data[v22]);
                    v24 = v24 + 32;
                    v22 = v22 + 32;
                    v26 = v26 + 1;
                }
                MEM[36 + MEM[64] + 96] = address(this);
                MEM[36 + MEM[64] + 128] = address(0x0);
                MEM[36 + MEM[64] + 160] = varg0;
                MEM[64] = v24;
                MEM[MEM[64] + 32] = uint224(varg1) | bytes4(v0);
                MCOPY(MEM[64], MEM[64] + 32, v24 - MEM[64] - 32);
                MEM[MEM[64] + (v24 - MEM[64] - 32)] = 0;
                v28, /* uint256 */ v29 = address(msg.data[128 + varg2]).call(MEM[MEM[64]:MEM[64] + MEM[64] + v4911_0x1V0x4a1fV0x194d - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    v30 = new bytes[](RETURNDATASIZE());
                    v29 = v30.data;
                    RETURNDATACOPY(v29, 0, RETURNDATASIZE());
                }
                require(v28, Error('SwapExecutor: V2 SupportingFeeOnTransfer failed'));
            }
            require(64 + varg2 + 32 - (64 + varg2) >= 32);
            require(msg.data[64 + varg2] == address(msg.data[64 + varg2]));
            v31, /* uint256 */ v32 = address(msg.data[64 + varg2]).balanceOf(address(this)).gas(msg.gas);
            require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return v32;
        } else {
            require(32 + varg2 + 32 - (32 + varg2) >= 32);
            require(msg.data[32 + varg2] == address(msg.data[32 + varg2]));
            require(128 + varg2 + 32 - (128 + varg2) >= 32);
            require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
            MEM[36 + MEM[64] + 32] = varg1;
            MEM[64] = 36 + MEM[64] + 64;
            MEM[MEM[64] + 32] = uint224(address(msg.data[128 + varg2])) | bytes4(0x95ea7b300000000000000000000000000000000000000000000000000000000);
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v33 = v34, /* uint256 */ v35, /* uint256 */ v36 = address(msg.data[32 + varg2]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v37 = v38 = 96;
            } else {
                v37 = v39 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());
            }
            if (v34) {
                v33 = v40 = MEM[v37] == 0;
                if (MEM[v37] != 0) {
                    require(v36 + MEM[v37] - v36 >= 32);
                    v33 = MEM[v36];
                    require(v33 == bool(v33));
                }
            }
            require(v33, Error('SafeERC20: approve'));
            require(128 + varg2 + 32 - (128 + varg2) >= 32);
            require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
            require(msg.data[160 + varg2] < msg.data.length - varg2 - 31);
            v41 = msg.data[varg2 + msg.data[160 + varg2]];
            require(v41 <= uint64.max);
            v42 = v43 = varg2 + msg.data[160 + varg2] + 32;
            require(v43 <= msg.data.length - (v41 << 5));
            v44 = new uint256[](v41);
            v45 = v46 = v44.data;
            v47 = v48 = 0;
            while (v47 < v41) {
                require(msg.data[v42] == address(msg.data[v42]));
                MEM[v45] = address(msg.data[v42]);
                v45 = v45 + 32;
                v42 = v42 + 32;
                v47 = v47 + 1;
            }
            v49, /* uint256 */ v50 = address(msg.data[128 + varg2]).swapExactTokensForTokens(varg1, msg.data[96 + varg2], v44, address(this), varg0).gas(msg.gas);
            require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(v50, 0, RETURNDATASIZE());
            MEM[64] = v50 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(v50 + RETURNDATASIZE() - v50 >= 32);
            require(MEM[v50] <= uint64.max);
            require(v50 + MEM[v50] + 31 < v50 + RETURNDATASIZE());
            v51 = v52 = v50 + MEM[v50] + 32;
            require(MEM[v50 + MEM[v50]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v53 = new uint256[](MEM[v50 + MEM[v50]]);
            require(!((v53 + ((MEM[v50 + MEM[v50]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + ((MEM[v50 + MEM[v50]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
            v54 = v55 = v53.data;
            require(v52 + (MEM[v50 + MEM[v50]] << 5) <= v50 + RETURNDATASIZE());
            while (v51 < v52 + (MEM[v50 + MEM[v50]] << 5)) {
                require(MEM[v51] == MEM[v51]);
                MEM[v54] = MEM[v51];
                v54 = v54 + 32;
                v51 = v51 + 32;
            }
            v56 = _SafeSub(v53.length, 1);
            require(v56 < v53.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            return v53[v56];
        }
    } else {
        require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
        require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
        require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
        require(msg.data[varg2 + msg.data[192 + varg2]] >= 1, Error('SwapExecutor: V2 routes short'));
        require(32 + varg2 + 32 - (32 + varg2) >= 32);
        require(msg.data[32 + varg2] == address(msg.data[32 + varg2]));
        require(128 + varg2 + 32 - (128 + varg2) >= 32);
        require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
        MEM[36 + MEM[64] + 32] = varg1;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(address(msg.data[128 + varg2])) | bytes4(0x95ea7b300000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v57 = v58, /* uint256 */ v59, /* uint256 */ v60 = address(msg.data[32 + varg2]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v61 = v62 = 96;
        } else {
            v61 = v63 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v63.data, 0, RETURNDATASIZE());
        }
        if (v58) {
            v57 = v64 = MEM[v61] == 0;
            if (MEM[v61] != 0) {
                require(v60 + MEM[v61] - v60 >= 32);
                v57 = MEM[v60];
                require(v57 == bool(v57));
            }
        }
        require(v57, Error('SafeERC20: approve'));
        require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
        v65 = msg.data[varg2 + msg.data[192 + varg2]];
        require(v65 <= uint64.max);
        require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (v65 << 7));
        require(v65 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v66 = new uint256[](v65);
        if (v65) {
            v67 = v68 = v66.data;
            do {
                v69 = new struct(4);
                v69.word0 = address(0x0);
                v69.word1 = address(0x0);
                v69.word2 = False;
                v69.word3 = address(0x0);
                MEM[v67] = v69;
                v67 += 32;
                v65 = v65 - 1;
            } while (v65);
        }
        v70 = v71 = 0;
        while (1) {
            require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
            require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
            require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
            if (v70 >= msg.data[varg2 + msg.data[192 + varg2]]) {
                require(128 + varg2 + 32 - (128 + varg2) >= 32);
                require(msg.data[128 + varg2] == address(msg.data[128 + varg2]));
                v72 = new uint256[](v66.length);
                v73 = v74 = v72.data;
                v75 = v76 = v66.data;
                v77 = v78 = 0;
                while (v77 < v66.length) {
                    MEM[v73] = address(MEM[MEM[v75]]);
                    MEM[v73 + 32] = address(MEM[MEM[v75] + 32]);
                    MEM[v73 + 64] = bool(MEM[MEM[v75] + 64]);
                    MEM[v73 + 96] = address(MEM[MEM[v75] + 96]);
                    v73 = v73 + 128;
                    v75 = v75 + 32;
                    v77 = v77 + 1;
                }
                v79, /* uint256 */ v80 = address(msg.data[128 + varg2]).swapExactTokensForTokens(varg1, msg.data[96 + varg2], v72, address(this), varg0).gas(msg.gas);
                require(bool(v79), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                RETURNDATACOPY(v80, 0, RETURNDATASIZE());
                MEM[64] = v80 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(v80 + RETURNDATASIZE() - v80 >= 32);
                require(MEM[v80] <= uint64.max);
                require(v80 + MEM[v80] + 31 < v80 + RETURNDATASIZE());
                v81 = v82 = v80 + MEM[v80] + 32;
                require(MEM[v80 + MEM[v80]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v83 = new uint256[](MEM[v80 + MEM[v80]]);
                require(!((v83 + ((MEM[v80 + MEM[v80]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v83 + ((MEM[v80 + MEM[v80]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v83)), Panic(65)); // failed memory allocation (too much memory)
                v84 = v85 = v83.data;
                require(v82 + (MEM[v80 + MEM[v80]] << 5) <= v80 + RETURNDATASIZE());
                while (v81 < v82 + (MEM[v80 + MEM[v80]] << 5)) {
                    require(MEM[v81] == MEM[v81]);
                    MEM[v84] = MEM[v81];
                    v84 = v84 + 32;
                    v81 = v81 + 32;
                }
                v86 = _SafeSub(v83.length, 1);
                require(v86 < v83.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                return v83[v86];
            } else {
                v87 = new struct(4);
                require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
                require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
                require(v70 < msg.data[varg2 + msg.data[192 + varg2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v88 = (v70 << 7) + (varg2 + msg.data[192 + varg2] + 32);
                require(v88 + 32 - v88 >= 32);
                require(msg.data[v88] == address(msg.data[v88]));
                v87.word0 = address(msg.data[v88]);
                require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
                require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
                require(v70 < msg.data[varg2 + msg.data[192 + varg2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v89 = 32 + ((v70 << 7) + (varg2 + msg.data[192 + varg2] + 32));
                require(v89 + 32 - v89 >= 32);
                require(msg.data[v89] == address(msg.data[v89]));
                v87.word1 = address(msg.data[v89]);
                require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
                require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
                require(v70 < msg.data[varg2 + msg.data[192 + varg2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v90 = 64 + ((v70 << 7) + (varg2 + msg.data[192 + varg2] + 32));
                require(v90 + 32 - v90 >= 32);
                require(msg.data[v90] == bool(msg.data[v90]));
                v87.word2 = bool(msg.data[v90]);
                require(msg.data[192 + varg2] < msg.data.length - varg2 - 31);
                require(msg.data[varg2 + msg.data[192 + varg2]] <= uint64.max);
                require(varg2 + msg.data[192 + varg2] + 32 <= msg.data.length - (msg.data[varg2 + msg.data[192 + varg2]] << 7));
                require(v70 < msg.data[varg2 + msg.data[192 + varg2]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v91 = 96 + ((v70 << 7) + (varg2 + msg.data[192 + varg2] + 32));
                require(v91 + 32 - v91 >= 32);
                require(msg.data[v91] == address(msg.data[v91]));
                v87.word3 = address(msg.data[v91]);
                require(v70 < v66.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v66[v70] = v87;
                v70 += 1;
            }
        }
    }
}

function weth() public nonPayable { 
    return _weth;
}

function setWETH(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(msg.sender == _owner, Error('SwapExecutor: not owner'));
    _weth = varg0;
}

function 0x8d546372(address varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= uint8.max + 1);
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < 4 + (msg.data.length - 4));
    require(varg5.length <= uint64.max);
    require(varg5.data + (varg5.length << 5) <= 4 + (msg.data.length - 4));
    v0 = 0x637(varg7, varg6, varg5.length, varg5.data, varg4, varg3, varg2, varg1, varg0);
    return v0;
}

function receive() public payable { 
}

function owner() public nonPayable { 
    return _owner;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < 4 + (msg.data.length - 4));
    require(rawData.length <= uint64.max);
    require(rawData.data + rawData.length <= 4 + (msg.data.length - 4));
    v0 = 0xe2c(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    MCOPY(v1.data, v0 + 32, MEM[v0]);
    MEM[v1.data + MEM[v0]] = 0;
    return v1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    0x1030(data.length, data.data, amount1Delta, amount0Delta);
}

function 0x2b85(address varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    v0 = _SafeMul(varg2, varg1);
    v1 = _SafeDiv(v0, 10000);
    v2 = _SafeSub(varg2, v1);
    MEM[36 + MEM[64] + 32] = v1;
    MEM[64] = 36 + MEM[64] + 64;
    MEM[MEM[64] + 32] = uint224(_owner) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v3 = v4, /* uint256 */ v5, /* uint256 */ v6 = varg3.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = v8 = 96;
    } else {
        v7 = v9 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
    }
    if (v4) {
        v3 = v10 = MEM[v7] == 0;
        if (MEM[v7] != 0) {
            require(v6 + MEM[v7] - v6 >= 32);
            v3 = MEM[v6];
            require(v3 == bool(v3));
        }
    }
    require(v3, Error('SafeERC20: transfer'));
    MEM[36 + MEM[64] + 32] = v2;
    MEM[64] = 36 + MEM[64] + 64;
    MEM[MEM[64] + 32] = uint224(varg0) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v11 = v12, /* uint256 */ v13, /* uint256 */ v14 = varg3.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v15 = v16 = 96;
    } else {
        v15 = v17 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
    }
    if (v12) {
        v11 = v18 = MEM[v15] == 0;
        if (MEM[v15] != 0) {
            require(v14 + MEM[v15] - v14 >= 32);
            v11 = MEM[v14];
            require(v11 == bool(v11));
        }
    }
    require(v11, Error('SafeERC20: transfer'));
    return v2;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x4f6a(address varg0, address varg1) private { 
    require(varg0 + varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x4fb1(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x5155(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg0 + varg2;
}

function 0x593f(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x637(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    require(block.timestamp <= varg4, Error('SwapExecutor: expired'));
    require(varg2 > 0, Error('SwapExecutor: empty steps'));
    require(address(varg6) - address(0x0), Error('SwapExecutor: zero recipient'));
    require(varg1 <= 10000, Error('SwapExecutor: fee > 100%'));
    v0, /* uint256 */ varg7 = address(varg8).balanceOf(msg.sender).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg7 > varg7) {
    }
    require(varg7 > 0, Error('SwapExecutor: zero balance'));
    MEM[36 + MEM[64] + 32] = address(this);
    MEM[36 + MEM[64] + 64] = varg7;
    MEM[64] = 36 + MEM[64] + 96;
    MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0x23b872dd00000000000000000000000000000000000000000000000000000000);
    MCOPY(MEM[64], MEM[64] + 32, 100);
    MEM[MEM[64] + 100] = 0;
    v1 = v2, /* uint256 */ v3, /* uint256 */ v4 = address(varg8).call(MEM[MEM[64]:MEM[64] + 100], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v1 = v8 = MEM[v5] == 0;
        if (MEM[v5] != 0) {
            require(v4 + MEM[v5] - v4 >= 32);
            v1 = MEM[v4];
            require(v1 == bool(v1));
        }
    }
    require(v1, Error('SafeERC20: transferFrom'));
    v9, /* uint256 */ varg7 = address(varg8).balanceOf(address(this)).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg7 > varg7) {
    }
    require(varg7 > 0, Error('SwapExecutor: zero balance after pull'));
    if (varg0) {
        varg0 = v10 = varg1 > 0;
    }
    if (varg0) {
        varg0 = v11 = _owner != address(0x0);
    }
    if (varg0) {
        v12 = _SafeMul(varg7, varg1);
        v13 = _SafeDiv(v12, 10000);
        varg7 = v14 = _SafeSub(varg7, v13);
        require(v14 > 0, Error('SwapExecutor: zero after fee'));
        MEM[36 + MEM[64] + 32] = v13;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(_owner) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v15 = v16, /* uint256 */ v17, /* uint256 */ v18 = address(varg8).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v19 = v20 = 96;
        } else {
            v19 = v21 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
        }
        if (v16) {
            v15 = v22 = MEM[v19] == 0;
            if (MEM[v19] != 0) {
                require(v18 + MEM[v19] - v18 >= 32);
                v15 = MEM[v18];
                require(v15 == bool(v15));
            }
        }
        require(v15, Error('SafeERC20: transfer'));
    }
    v23 = v24 = 0;
    while (v23 < varg2) {
        v25 = msg.data.length;
        require(v23 < varg2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg3 + (v23 << 5)] < msg.data.length - varg3 - 479);
        v26 = varg3 + msg.data[varg3 + (v23 << 5)];
        require(32 + v26 + 32 - (32 + v26) >= 32);
        require(msg.data[32 + v26] == address(msg.data[32 + v26]));
        require(address(msg.data[32 + v26]) == address(varg8), Error('SwapExecutor: step tokenIn mismatch'));
        require(msg.data[96 + v26] > 0, Error('SwapExecutor: zero amountOutMin'));
        require(v26 + 32 - v26 >= 32);
        require(msg.data[v26] == uint8(msg.data[v26]));
        if (uint8(msg.data[v26]) - 0) {
            require(v26 + 32 - v26 >= 32);
            require(msg.data[v26] == uint8(msg.data[v26]));
            if (uint8(msg.data[v26]) - 1) {
                require(v26 + 32 - v26 >= 32);
                require(msg.data[v26] == uint8(msg.data[v26]));
                if (uint8(msg.data[v26]) - 2) {
                    require(v26 + 32 - v26 >= 32);
                    require(msg.data[v26] == uint8(msg.data[v26]));
                    require(!(uint8(msg.data[v26]) - 3), Error('SwapExecutor: unknown stepType'));
                    require(320 + v26 + 32 - (320 + v26) >= 32);
                    require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                    require(address(msg.data[320 + v26]) - address(0x0), Error('SwapExecutor: V4 pool manager zero'));
                    require(msg.data[288 + v26] < msg.data.length - v26 - 31);
                    require(msg.data[v26 + msg.data[288 + v26]] <= uint64.max);
                    require(v26 + msg.data[288 + v26] + 32 <= msg.data.length - msg.data[v26 + msg.data[288 + v26]]);
                    require(msg.data[v26 + msg.data[288 + v26]] > 0, Error('SwapExecutor: V4 pathBytes empty'));
                    require(320 + v26 + 32 - (320 + v26) >= 32);
                    require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                    require(uint8.max + 1 + v26 + 32 - (uint8.max + 1 + v26) >= 32);
                    require(msg.data[uint8.max + 1 + v26] == uint24(msg.data[uint8.max + 1 + v26]));
                    require(352 + v26 + 32 - (352 + v26) >= 32);
                    require(msg.data[352 + v26] == bool(msg.data[352 + v26]));
                    require(384 + v26 + 32 - (384 + v26) >= 32);
                    require(msg.data[384 + v26] == address(msg.data[384 + v26]));
                    require(64 + v26 + 32 - (64 + v26) >= 32);
                    require(msg.data[64 + v26] == address(msg.data[64 + v26]));
                    require(msg.data[288 + v26] < msg.data.length - v26 - 31);
                    require(msg.data[v26 + msg.data[288 + v26]] <= uint64.max);
                    require(v26 + msg.data[288 + v26] + 32 <= msg.data.length - msg.data[v26 + msg.data[288 + v26]]);
                    require(v26 + msg.data[288 + v26] + 32 + msg.data[v26 + msg.data[288 + v26]] - (v26 + msg.data[288 + v26] + 32) >= 128);
                    v27 = v28 = msg.data[v26 + msg.data[288 + v26] + 32];
                    require(v28 == address(v28));
                    v27 = msg.data[v26 + msg.data[288 + v26] + 32 + 32];
                    require(v27 == address(v27));
                    require(msg.data[v26 + msg.data[288 + v26] + 32 + 64] == int24(msg.data[v26 + msg.data[288 + v26] + 32 + 64]));
                    require(msg.data[v26 + msg.data[288 + v26] + 32 + 96] == address(msg.data[v26 + msg.data[288 + v26] + 32 + 96]));
                    v29 = v30 = address(v28) == address(0x0);
                    if (address(v28) != address(0x0)) {
                        v29 = v31 = address(v27) == address(0x0);
                    }
                    if (v29) {
                        require(32 + v26 + 32 - (32 + v26) >= 32);
                        require(msg.data[32 + v26] == address(msg.data[32 + v26]));
                        v29 = v32 = address(msg.data[32 + v26]) == _weth;
                    }
                    if (v29) {
                        v29 = _weth != address(0x0);
                    }
                    if (v29) {
                        MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = varg7;
                        require(bool(_weth.code.size));
                        v33 = _weth.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (!bool(v33)) {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                    MEM[32 + MEM[64]] = address(msg.data[320 + v26]);
                    MEM[32 + MEM[64] + 32] = address(v28);
                    MEM[32 + MEM[64] + 64] = address(v27);
                    MEM[32 + MEM[64] + 96] = uint24(msg.data[uint8.max + 1 + v26]);
                    MEM[32 + MEM[64] + 128] = int24(msg.data[v26 + msg.data[288 + v26] + 32 + 64]);
                    MEM[32 + MEM[64] + 160] = address(msg.data[v26 + msg.data[288 + v26] + 32 + 96]);
                    MEM[64] = 32 + MEM[64] + 192;
                    v34 = 0x5155(varg7);
                    MEM[32 + MEM[64]] = bool(msg.data[352 + v26]);
                    MEM[32 + MEM[64] + 32] = v34;
                    MEM[32 + MEM[64] + 64] = address(msg.data[384 + v26]);
                    MEM[32 + MEM[64] + 96] = bool(v29);
                    MEM[32 + MEM[64] + 128] = address(msg.data[64 + v26]);
                    MEM[64] = 32 + MEM[64] + 160;
                    MCOPY(32 + MEM[64], MEM[64] + 32, 192);
                    MEM[32 + MEM[64] + 192] = 0;
                    MCOPY(32 + MEM[64] + 192, MEM[64] + 32, 160);
                    MEM[32 + MEM[64] + 192 + 160] = 0;
                    MEM[64] = 32 + MEM[64] + 192 + 160;
                    owner_1_0_19 = msg.data[320 + v26];
                    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 32;
                    MEM[4 + MEM[64] + 32] = 352;
                    MCOPY(4 + MEM[64] + 32 + 32, MEM[64] + 32, 352);
                    MEM[4 + MEM[64] + 32 + 32 + 352] = 0;
                    v35 = address(msg.data[320 + v26]).call(MEM[MEM[64]:MEM[64] + 420], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (bool(v35)) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(MEM[MEM[64]] <= uint64.max);
                        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                        v36 = MEM[MEM[64] + MEM[MEM[64]]];
                        require(v36 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v37 = new bytes[](v36);
                        require(!((v37 + ((v36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v37 + ((v36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v37)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + MEM[MEM[64]] + 32 + v36 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v37.data, MEM[64] + MEM[MEM[64]] + 32, v36);
                        v37[v36] = 0;
                        owner_1_0_19 = 0;
                        require(v37.data + v37.length - v37.data >= 32);
                        v38 = v37.data;
                        varg7 = v39 = v37[0];
                        if (!msg.data[352 + v26]) {
                        }
                        v40 = v41 = address(v27) == address(0x0);
                        if (v41) {
                            v40 = v42 = address(msg.data[64 + v26]) == _weth;
                        }
                        if (v40) {
                            v40 = _weth != address(0x0);
                        }
                        if (v40) {
                            require(bool(_weth.code.size));
                            v43 = _weth.deposit().value(v39).gas(msg.gas);
                            if (!bool(v43)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    require(320 + v26 + 32 - (320 + v26) >= 32);
                    require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                    require(address(msg.data[320 + v26]) - address(0x0), Error('SwapExecutor: V3 pool zero'));
                    require(320 + v26 + 32 - (320 + v26) >= 32);
                    require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                    v44 = address(msg.data[320 + v26]).token0().gas(msg.gas);
                    if (bool(v44)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(MEM[MEM[64]] == address(MEM[MEM[64]]));
                        require(320 + v26 + 32 - (320 + v26) >= 32);
                        require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                        v45 = address(msg.data[320 + v26]).token1().gas(msg.gas);
                        if (bool(v45)) {
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(MEM[MEM[64]] == address(MEM[MEM[64]]));
                            require(32 + v26 + 32 - (32 + v26) >= 32);
                            require(msg.data[32 + v26] == address(msg.data[32 + v26]));
                            v46 = v47 = address(msg.data[32 + v26]) == address(MEM[MEM[64]]);
                            if (address(msg.data[32 + v26]) != address(MEM[MEM[64]])) {
                                require(32 + v26 + 32 - (32 + v26) >= 32);
                                require(msg.data[32 + v26] == address(msg.data[32 + v26]));
                                v46 = address(msg.data[32 + v26]) == address(MEM[MEM[64]]);
                            }
                            require(v46, Error('SwapExecutor: tokenIn not pool token'));
                            require(32 + v26 + 32 - (32 + v26) >= 32);
                            require(msg.data[32 + v26] == address(msg.data[32 + v26]));
                            require(384 + v26 + 32 - (384 + v26) >= 32);
                            v48 = msg.data[384 + v26];
                            require(v48 == address(v48));
                            require(352 + v26 + 32 - (352 + v26) >= 32);
                            require(msg.data[352 + v26] == bool(msg.data[352 + v26]));
                            if (bool(msg.data[352 + v26]) == (address(msg.data[32 + v26]) == address(MEM[MEM[64]]))) {
                                if (address(msg.data[32 + v26]) != address(MEM[MEM[64]])) {
                                    v49 = 0x4f6a(0x1000276a3, 10 ** 6);
                                    if (address(v48) <= address(v49)) {
                                        v48 = v50 = 0x4fb1(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                                    }
                                } else {
                                    v51 = 0x4fb1(0xfffd8963efd1fc6a506488495d951d5263988d26, 10 ** 6);
                                    if (address(v48) >= address(v51)) {
                                        v48 = v52 = 0x4f6a(0x1000276a3, 1);
                                    }
                                }
                            } else if (address(msg.data[32 + v26]) != address(MEM[MEM[64]])) {
                                v48 = v53 = 0x4fb1(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                            } else {
                                v48 = v54 = 0x4f6a(0x1000276a3, 1);
                            }
                            require(320 + v26 + 32 - (320 + v26) >= 32);
                            require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                            owner_0_0_19 = msg.data[320 + v26];
                            require(320 + v26 + 32 - (320 + v26) >= 32);
                            require(msg.data[320 + v26] == address(msg.data[320 + v26]));
                            MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(this);
                            MEM[4 + MEM[64] + 32] = address(msg.data[32 + v26]) == address(MEM[MEM[64]]);
                            MEM[4 + MEM[64] + 64] = varg7;
                            MEM[4 + MEM[64] + 96] = address(v48);
                            MEM[4 + MEM[64] + 128] = 160;
                            MEM[4 + MEM[64] + 160] = 0;
                            v55 = address(msg.data[320 + v26]).call(MEM[MEM[64]:MEM[64] + 196], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                            if (bool(v55)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                v56 = v57 = MEM[MEM[64]];
                                v56 = MEM[MEM[64] + 32];
                                owner_0_0_19 = 0;
                                if (address(msg.data[32 + v26]) != address(MEM[MEM[64]])) {
                                }
                                require(v56 < 0, Error('SwapExecutor: V3 pool no output'));
                                varg7 = v58 = 0x5155(v56);
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
            } else {
                require(224 + v26 + 32 - (224 + v26) >= 32);
                require(msg.data[224 + v26] == address(msg.data[224 + v26]));
                require(address(msg.data[224 + v26]) - address(0x0), Error('SwapExecutor: V3 router zero'));
                require(msg.data[288 + v26] < msg.data.length - v26 - 31);
                require(msg.data[v26 + msg.data[288 + v26]] <= uint64.max);
                require(v26 + msg.data[288 + v26] + 32 <= msg.data.length - msg.data[v26 + msg.data[288 + v26]]);
                require(msg.data[v26 + msg.data[288 + v26]] > 0, Error('SwapExecutor: V3 pathBytes empty'));
                require(32 + v26 + 32 - (32 + v26) >= 32);
                require(msg.data[32 + v26] == address(msg.data[32 + v26]));
                require(224 + v26 + 32 - (224 + v26) >= 32);
                require(msg.data[224 + v26] == address(msg.data[224 + v26]));
                MEM[36 + MEM[64]] = address(msg.data[224 + v26]);
                MEM[36 + MEM[64] + 32] = varg7;
                MEM[64] = 36 + MEM[64] + 64;
                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | bytes4(0x95ea7b300000000000000000000000000000000000000000000000000000000);
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v59 = v60 = address(msg.data[32 + v26]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v61 = v62 = 96;
                } else {
                    v61 = v63 = MEM[64];
                    MEM[64] = v63 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    MEM[v63] = RETURNDATASIZE();
                    RETURNDATACOPY(v63 + 32, 0, RETURNDATASIZE());
                }
                if (v60) {
                    v59 = v64 = MEM[v61] == 0;
                    if (MEM[v61] != 0) {
                        require(32 + v61 + MEM[v61] - (32 + v61) >= 32);
                        v59 = MEM[32 + v61];
                        require(v59 == bool(v59));
                    }
                }
                require(v59, Error('SafeERC20: approve'));
                require(448 + v26 + 32 - (448 + v26) >= 32);
                require(msg.data[448 + v26] == bool(msg.data[448 + v26]));
                if (!msg.data[448 + v26]) {
                    require(224 + v26 + 32 - (224 + v26) >= 32);
                    require(msg.data[224 + v26] == address(msg.data[224 + v26]));
                    v65 = new struct(5);
                    require(msg.data[288 + v26] < msg.data.length - v26 - 31);
                    require(msg.data[v26 + msg.data[288 + v26]] <= uint64.max);
                    require(v26 + msg.data[288 + v26] + 32 <= msg.data.length - msg.data[v26 + msg.data[288 + v26]]);
                    v66 = new bytes[](msg.data[v26 + msg.data[288 + v26]]);
                    CALLDATACOPY(v66.data, v26 + msg.data[288 + v26] + 32, msg.data[v26 + msg.data[288 + v26]]);
                    v66[msg.data[v26 + msg.data[288 + v26]]] = 0;
                    v65.word0 = v66;
                    v65.word1 = address(this);
                    v65.word2 = varg4;
                    v65.word3 = varg7;
                    v65.word4 = msg.data[96 + v26];
                    MEM[MEM[64]] = 0xc04b8d5900000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 32;
                    MEM[4 + MEM[64] + 32] = 160;
                    MEM[4 + MEM[64] + 32 + 160] = v67.length;
                    MCOPY(4 + MEM[64] + 32 + 160 + 32, v67.data, v67.length);
                    MEM[4 + MEM[64] + 32 + 160 + 32 + v67.length] = 0;
                    MEM[4 + MEM[64] + 32 + 32] = address(v65.word1);
                    MEM[4 + MEM[64] + 32 + 64] = v65.word2;
                    MEM[4 + MEM[64] + 32 + 96] = v65.word3;
                    MEM[4 + MEM[64] + 32 + 128] = v65.word4;
                    v68 = address(msg.data[224 + v26]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 160 + 32 + v4d95V0x4dffV0x1ef7V0xb60.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                    if (bool(v68)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        varg7 = v69 = MEM[MEM[64]];
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    require(224 + v26 + 32 - (224 + v26) >= 32);
                    require(msg.data[224 + v26] == address(msg.data[224 + v26]));
                    v70 = new struct(4);
                    require(msg.data[288 + v26] < msg.data.length - v26 - 31);
                    require(msg.data[v26 + msg.data[288 + v26]] <= uint64.max);
                    require(v26 + msg.data[288 + v26] + 32 <= msg.data.length - msg.data[v26 + msg.data[288 + v26]]);
                    v71 = new bytes[](msg.data[v26 + msg.data[288 + v26]]);
                    CALLDATACOPY(v71.data, v26 + msg.data[288 + v26] + 32, msg.data[v26 + msg.data[288 + v26]]);
                    v71[msg.data[v26 + msg.data[288 + v26]]] = 0;
                    v70.word0 = v71;
                    v70.word1 = address(this);
                    v70.word2 = varg7;
                    v70.word3 = msg.data[96 + v26];
                    MEM[MEM[64]] = 0xb858183f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 32;
                    MEM[4 + MEM[64] + 32] = 128;
                    MEM[4 + MEM[64] + 32 + 128] = v72.length;
                    MCOPY(4 + MEM[64] + 32 + 128 + 32, v72.data, v72.length);
                    MEM[4 + MEM[64] + 32 + 128 + 32 + v72.length] = 0;
                    MEM[4 + MEM[64] + 32 + 32] = address(v70.word1);
                    MEM[4 + MEM[64] + 32 + 64] = v70.word2;
                    MEM[4 + MEM[64] + 32 + 96] = v70.word3;
                    v73 = address(msg.data[224 + v26]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + 128 + 32 + v4d15V0x4d6cV0x1dd9V0xb60.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 - MEM[64]], MEM[MEM[64]:MEM[64] + 32]).gas(msg.gas);
                    if (bool(v73)) {
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        varg7 = v74 = MEM[MEM[64]];
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            }
        } else {
            varg7 = v75 = 0x11e5(varg4, varg7, v26);
        }
        require(64 + v26 + 32 - (64 + v26) >= 32);
        varg8 = v76 = msg.data[64 + v26];
        require(v76 == address(v76));
        v23 += 1;
    }
    require(address(varg8) - address(0x0), Error('SwapExecutor: invalid final token'));
    v77, /* uint256 */ varg7 = address(varg8).balanceOf(address(this)).gas(msg.gas);
    require(bool(v77), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg7 < varg7) {
    }
    require(varg7 >= varg5, Error('SwapExecutor: minAmountOutFinal'));
    v78 = v79 = !varg0;
    if (!bool(varg0)) {
        v78 = v80 = varg1 > 0;
    }
    if (v78) {
        v78 = v81 = _owner != address(0x0);
    }
    if (!v78) {
        MEM[36 + MEM[64] + 32] = varg7;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(address(varg6)) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v82 = v83, /* uint256 */ v84, /* uint256 */ v85 = address(varg8).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v86 = v87 = 96;
        } else {
            v86 = v88 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v88.data, 0, RETURNDATASIZE());
        }
        if (v83) {
            v82 = v89 = MEM[v86] == 0;
            if (MEM[v86] != 0) {
                require(v85 + MEM[v86] - v85 >= 32);
                v82 = MEM[v85];
                require(v82 == bool(v82));
            }
        }
        require(v82, Error('SafeERC20: transfer'));
        return varg7;
    } else {
        v90 = 0x2b85(varg6, varg1, varg7, varg8);
        return v90;
    }
}

function setOwner(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(msg.sender == _owner, Error('SwapExecutor: not owner'));
    require(varg0 - address(0x0), Error('SwapExecutor: zero owner'));
    _owner = varg0;
}

function rescue(address token, address to, uint256 amount) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(msg.sender == _owner, Error('SwapExecutor: not owner'));
    if (token - address(0x0)) {
        MEM[36 + MEM[64] + 32] = amount;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(to) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v0 = v1, /* uint256 */ v2, /* uint256 */ v3 = token.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v4 = v5 = 96;
        } else {
            v4 = v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        if (v1) {
            v0 = v7 = MEM[v4] == 0;
            if (MEM[v4] != 0) {
                require(v3 + MEM[v4] - v3 >= 32);
                v0 = MEM[v3];
                require(v0 == bool(v0));
            }
        }
        require(v0, Error('SafeERC20: transfer'));
    } else {
        v8, /* uint256 */ v9 = to.call().value(amount).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v10 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
        }
        require(v8, Error('SwapExecutor: rescue eth failed'));
    }
}

function 0xe2c(uint256 varg0, uint256 varg1) private { 
    require(msg.sender == owner_1_0_19, Error('SwapExecutor: callback not from PM'));
    v0, v1 = _SafeSub(varg1, varg0, 0, 192);
    require(v1 + v0 - v1 >= 192);
    require(msg.data[v1] == address(msg.data[v1]));
    v2 = v3 = msg.data[v1 + 32];
    require(v3 == address(v3));
    v2 = msg.data[v1 + 64];
    require(v2 == address(v2));
    require(msg.data[v1 + 96] == uint24(msg.data[v1 + 96]));
    require(msg.data[v1 + 128] == int24(msg.data[v1 + 128]));
    require(msg.data[v1 + 160] == address(msg.data[v1 + 160]));
    v4, v5 = _SafeSub(varg1, varg0, 192, varg0);
    require(v5 + v4 - v5 >= 160);
    require(msg.data[v5] == bool(msg.data[v5]));
    require(msg.data[v5 + 32] == msg.data[v5 + 32]);
    require(msg.data[v5 + 64] == address(msg.data[v5 + 64]));
    v6 = msg.data[v5 + 96];
    require(v6 == bool(v6));
    require(msg.data[v5 + 128] == address(msg.data[v5 + 128]));
    v7 = new uint256[](0);
    v8, /* uint256 */ v9 = address(msg.data[v1]).swap(address(v3), address(v2), uint24(msg.data[v1 + 96]), int24(msg.data[v1 + 128]), address(msg.data[v1 + 160]), bool(msg.data[v5]), msg.data[v5 + 32], address(msg.data[v5 + 64]), v7).gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!msg.data[v5]) {
        v10 = 0x593f(v9);
        v11 = v12 = uint128(v10);
        v13 = v14 = uint128(v9 >> 128);
    } else {
        v15 = 0x593f(v9 >> 128);
        v11 = v16 = uint128(v15);
        v13 = v17 = uint128(v9);
    }
    if (!v6) {
        v6 = v18 = address(v2) == address(0x0);
    }
    if (!v6) {
        require(bool((address(msg.data[v1])).code.size));
        v19 = address(msg.data[v1]).sync(address(v2)).gas(msg.gas);
        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[36 + MEM[64] + 32] = v11;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(address(v2)) | bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v20 = v21, /* uint256 */ v22, /* uint256 */ v23 = address(v2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v24 = v25 = 96;
        } else {
            v24 = v26 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());
        }
        if (v21) {
            v20 = v27 = MEM[v24] == 0;
            if (MEM[v24] != 0) {
                require(v23 + MEM[v24] - v23 >= 32);
                v20 = MEM[v23];
                require(v20 == bool(v20));
            }
        }
        require(v20, Error('SafeERC20: transfer'));
        v28, /* uint256 */ v29 = address(msg.data[v1]).settle().gas(msg.gas);
        require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v30, /* uint256 */ v31 = address(msg.data[v1]).settle().value(v11).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(bool((address(msg.data[v1])).code.size));
    v32 = address(msg.data[v1]).take(address(v2), address(this), v13).gas(msg.gas);
    require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[32 + MEM[64]] = v13;
    MEM[MEM[64]] = 32;
    MEM[64] = 32 + MEM[64] + 32;
    return MEM[64];
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    0x1030(data.length, data.data, amount1Delta, amount0Delta);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x5b769f3c > function_selector >> 224) {
        if (0x13af4035 == function_selector >> 224) {
            setOwner(address);
        } else if (0x20ff430b == function_selector >> 224) {
            rescue(address,address,uint256);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else {
            require(0x3fc8cef3 == function_selector >> 224);
            weth();
        }
    } else if (0x5b769f3c == function_selector >> 224) {
        setWETH(address);
    } else if (0x8d546372 == function_selector >> 224) {
        0x8d546372();
    } else if (0x8da5cb5b == function_selector >> 224) {
        owner();
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
