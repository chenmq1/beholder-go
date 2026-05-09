// Decompiled by library.dedaub.com
// 2026.04.20 21:35 UTC
// Compiled using the solidity compiler version 0.8.31


// Data structures and variables inferred from the use of storage instructions
int256 _uniswapV3SwapCallback; // STORAGE[0x1]
int256 stor_2; // STORAGE[0x2]
uint256 stor_3; // STORAGE[0x3]
address owner_0_0_19; // STORAGE[0x0] bytes 0 to 19



function delegate(address delegatee) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = msg.sender == 0x8a307c4f0de05dbc79522d5e196e77823bcc9223;
    if (msg.sender != 0x8a307c4f0de05dbc79522d5e196e77823bcc9223) {
        v0 = msg.sender == 0xbcd7749dfdc396287172208b9d5da865ec471b81;
    }
    require(v0, Error(8559));
    CALLDATACOPY(MEM[64], 36, msg.data.length - 36);
    v2 = delegatee.delegatecall(MEM[MEM[64]:MEM[64] + msg.data.length - 36], MEM[0:0]).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    return MEM[MEM[64]:MEM[64] + RETURNDATASIZE()];
}

function 0x161b() private { 
    require(msg.sender == owner_0_0_19, Error(0x495043));
    owner_0_0_19 = 1;
    return ;
}

function 0x166e(address varg0, address varg1) private { 
    v0, /* uint256 */ v1 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(varg1, varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function 0x7245c8bb(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 352);
    v0 = 0x289(4 + varg0);
    return v0.word0, v0.word1, v0.word2;
}

function 0x16fe(uint256 varg0) private { 
    if (address(varg0)) {
        if (address(varg0) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112) {
            return varg0;
        } else {
            MEM[0] = MEM[0];
            return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
    } else {
        MEM[0] = MEM[0];
        return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
}

function 0x175e(struct(7) varg0, uint256 varg1) private { 
    if (1 - uint8(varg0.word0)) {
        if (2 - uint8(varg0.word0)) {
            if (3 - uint8(varg0.word0)) {
                if (4 - uint8(varg0.word0)) {
                    if (5 - uint8(varg0.word0)) {
                        if (6 - uint8(varg0.word0)) {
                            require(!(7 - uint8(varg0.word0)), Error('unsupported exchange'));
                            v0 = varg0.word6;
                            v1 = 0x2911(varg0.word6, varg1, varg0.word3, varg0.word2);
                            return v1;
                        } else {
                            require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v3 = v2.data;
                            v4 = 0x27e0(varg0.word1, uint24(v2[0]), varg0.word5, varg1, varg0.word3, varg0.word2);
                            return v4;
                        }
                    } else {
                        v5 = 0x264b(varg0.word1, varg0.word5, varg1, varg0.word2);
                        return v5;
                    }
                } else {
                    v6 = 0x23e6(varg0.word1, varg0.word5, varg1, varg0.word2);
                    return v6;
                }
            } else {
                v7 = 0x2210(varg0.word1, varg0.word5, varg1, varg0.word3, varg0.word2);
                return v7;
            }
        } else {
            require(0 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v9 = v8.data;
            require(1 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(2 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(3 < v12.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v13, /* uint256 */ v14 = address(varg0.word3).balanceOf(this).gas(msg.gas);
            require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (uint8.max + 1 - uint24(v8[0])) {
                require(!(128 - uint24(v8[0])), Error('no index type'));
                v15 = v16 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(varg0.word2);
                if (v16) {
                    v15 = v17 = 1 == uint24(v12[3]);
                }
                if (!v15) {
                    MEM[MEM[64] + 68] = varg1;
                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(varg0.word1));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v18 = v19, /* uint256 */ v20, /* uint256 */ v21 = address(varg0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v22 = v23 = 96;
                    } else {
                        v22 = v24 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v24.data, 0, RETURNDATASIZE());
                    }
                    if (v19) {
                        v18 = v25 = !MEM[v22];
                        if (MEM[v22]) {
                            require(v21 + MEM[v22] - v21 >= 32);
                            v18 = MEM[v21];
                            require(v18 == bool(v18));
                        }
                    }
                    require(v18, Error('TransferHelper::safeApprove: approve failed'));
                    require(bool((address(varg0.word1)).code.size));
                    v26 = address(varg0.word1).exchange(int128(uint24(v10[1])), int128(uint24(v11[2])), varg1, 0).gas(msg.gas);
                    require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    MEM[MEM[64] + 68] = 0;
                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(int128(uint24(v10[1])));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v27 = v28, /* uint256 */ v29, /* uint256 */ v30 = address(varg0.word2).call(0).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v31 = v32 = 96;
                    } else {
                        v31 = v33 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
                    }
                    if (v28) {
                        v27 = v34 = !MEM[v31];
                        if (MEM[v31]) {
                            require(v30 + MEM[v31] - v30 >= 32);
                            v27 = MEM[v30];
                            require(v27 == bool(v27));
                        }
                    }
                    require(v27, Error('TransferHelper::safeApprove: approve failed'));
                } else {
                    MEM[0] = MEM[0];
                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                    v35 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v36, /* uint256 */ v37 = address(varg0.word1).exchange(int128(uint24(v10[1])), int128(uint24(v11[2])), varg1, 0).value(varg1).gas(msg.gas);
                    require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                }
            } else {
                v38 = v39 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(varg0.word2);
                if (v39) {
                    v38 = v40 = 1 == uint24(v12[3]);
                }
                if (!v38) {
                    MEM[MEM[64] + 68] = varg1;
                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(varg0.word1));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v41 = v42, /* uint256 */ v43, /* uint256 */ v44 = address(varg0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v45 = v46 = 96;
                    } else {
                        v45 = v47 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v47.data, 0, RETURNDATASIZE());
                    }
                    if (v42) {
                        v41 = v48 = !MEM[v45];
                        if (MEM[v45]) {
                            require(v44 + MEM[v45] - v44 >= 32);
                            v41 = MEM[v44];
                            require(v41 == bool(v41));
                        }
                    }
                    require(v41, Error('TransferHelper::safeApprove: approve failed'));
                    require(bool((address(varg0.word1)).code.size));
                    v49 = address(varg0.word1).setMetaGold(uint24(v10[1]), uint24(v11[2]), varg1, 0).gas(msg.gas);
                    require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    MEM[MEM[64] + 68] = 0;
                    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(uint24(v10[1]));
                    MCOPY(MEM[64], MEM[64] + 32, 68);
                    MEM[MEM[64] + 68] = 0;
                    v50 = v51, /* uint256 */ v52, /* uint256 */ v53 = address(varg0.word2).call(0).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v54 = v55 = 96;
                    } else {
                        v54 = v56 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v56.data, 0, RETURNDATASIZE());
                    }
                    if (v51) {
                        v50 = v57 = !MEM[v54];
                        if (MEM[v54]) {
                            require(v53 + MEM[v54] - v53 >= 32);
                            v50 = MEM[v53];
                            require(v50 == bool(v50));
                        }
                    }
                    require(v50, Error('TransferHelper::safeApprove: approve failed'));
                } else {
                    MEM[0] = MEM[0];
                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                    v58 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                    require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v59, /* uint256 */ v60 = address(varg0.word1).setMetaGold(uint24(v10[1]), uint24(v11[2]), varg1, 0).value(varg1).gas(msg.gas);
                    require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                }
            }
            v61 = v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(varg0.word3);
            if (v62) {
                v61 = v63 = 1 == uint24(v12[3]);
            }
            if (v61) {
                MEM[0] = MEM[0];
                require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                v64 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(this.balance).gas(msg.gas);
                require(bool(v64), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v65, /* uint256 */ v66 = address(varg0.word3).balanceOf(this).gas(msg.gas);
            require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(v66 >= v14, Error('curve swap amount out'));
            v67 = _SafeSub(v66, v14);
            return v67;
        }
    } else {
        v68 = 0x1b5b(varg1, varg0.word3, varg0.word2, varg0.word1);
        return v68;
    }
}

function 0x1a7e(uint256 varg0) private { 
    v0 = 0x16fe(varg0);
    if (!uint32(v0.code.size)) {
        return 0;
    } else {
        v1, /* uint256 */ v2 = address(v0).balanceOf(this).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v2;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, Error(0x4f504d));
    0x161b();
    v1 = 4 + rawData + 32 + msg.data[4 + rawData];
    require(v1 - (4 + rawData + 32) >= 32);
    require(rawData.word1 <= uint64.max);
    v2 = 4 + rawData + 32 + rawData.word1;
    require(v1 - v2 >= uint8.max + 1);
    v3 = new struct(8);
    require(!((v3 + (uint8.max + 1) < v3) | (v3 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v2] == address(msg.data[v2]));
    v3.word0 = msg.data[v2];
    require(msg.data[v2 + 32] == address(msg.data[v2 + 32]));
    v3.word1 = msg.data[v2 + 32];
    v3.word2 = msg.data[64 + v2];
    require(msg.data[v2 + 96] == address(msg.data[v2 + 96]));
    v3.word3 = msg.data[v2 + 96];
    require(msg.data[v2 + 128] <= uint64.max);
    require(v1 - (v2 + msg.data[v2 + 128]) >= 64);
    v4 = new struct(2);
    require(!((v4 + 64 < v4) | (v4 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v2 + msg.data[v2 + 128]] == address(msg.data[v2 + msg.data[v2 + 128]]));
    v4.word0 = msg.data[v2 + msg.data[v2 + 128]];
    require(msg.data[v2 + msg.data[v2 + 128] + 32] <= uint64.max);
    require(v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32] + 31 < v1);
    require(msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]]) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32] + msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]] + 32 <= v1);
    CALLDATACOPY(v5.data, v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32] + 32, msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]]);
    v5[msg.data[v2 + msg.data[v2 + 128] + msg.data[v2 + msg.data[v2 + 128] + 32]]] = 0;
    v4.word1 = v5;
    v3.word4 = v4;
    require(msg.data[v2 + 160] <= uint64.max);
    require(v2 + msg.data[v2 + 160] + 31 < v1);
    require(msg.data[v2 + msg.data[v2 + 160]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new bytes[](msg.data[v2 + msg.data[v2 + 160]]);
    require(!((v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 160]]) + 31) < v6) | (v6 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 160]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2 + 160] + msg.data[v2 + msg.data[v2 + 160]] + 32 <= v1);
    CALLDATACOPY(v6.data, v2 + msg.data[v2 + 160] + 32, msg.data[v2 + msg.data[v2 + 160]]);
    v6[msg.data[v2 + msg.data[v2 + 160]]] = 0;
    v3.word5 = v6;
    v3.word6 = msg.data[192 + v2];
    require(msg.data[v2 + 224] == bool(msg.data[v2 + 224]));
    v3.word7 = msg.data[v2 + 224];
    require(32 + MEM[32 + v3.word4] + MEM[MEM[32 + v3.word4]] - (32 + MEM[32 + v3.word4]) >= 96);
    v7 = new struct(3);
    require(!((v7 + 96 < v7) | (v7 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(MEM[32 + MEM[32 + v3.word4]] == uint24(MEM[32 + MEM[32 + v3.word4]]));
    v7.word0 = MEM[32 + MEM[32 + v3.word4]];
    require(MEM[32 + MEM[32 + v3.word4] + 32] == int24(MEM[32 + MEM[32 + v3.word4] + 32]));
    v7.word1 = MEM[32 + MEM[32 + v3.word4] + 32];
    require(MEM[32 + MEM[32 + v3.word4] + 64] == address(MEM[32 + MEM[32 + v3.word4] + 64]));
    v7.word2 = MEM[32 + MEM[32 + v3.word4] + 64];
    if (address(v3.word0) < address(v3.word1)) {
        v8 = v9 = v3.word0;
        v10 = v11 = v3.word1;
    } else {
        v8 = v12 = v3.word1;
        v10 = v13 = v3.word0;
    }
    v14 = new uint256[](0);
    MCOPY(v14.data, MEM[64] + 32, 0);
    MEM[v14.data] = 0;
    v15, /* uint256 */ v16 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v8), address(v10), uint24(v7.word0), int24(v7.word1), address(v7.word2), address(v3.word0) < address(v3.word1), 0 - v3.word2, address(v3.word3), v14).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (address(v3.word0) >= address(v3.word1)) {
    }
    v17 = 0x166e(v18, this);
    v19 = v20 = 0 - v17;
    v21 = v22 = 0x166e(v23, this);
    require(v20 > 0, Error(0x414931));
    require(v22 > 0, Error(0x414f31));
    require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
    v24 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v23), this, v22).gas(msg.gas);
    require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v25 = v26 = 0;
    if (v27.length) {
        v28 = 0x36df(v29.data, v29.data + v29.length);
        v21 = v30 = v3.word6;
        v31 = 0x16fe(v3.word0);
        MEM[0] = MEM[0];
        if (address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v31)) {
            if (v22 >= v30) {
            }
        }
        v25 = 0x175e(v28, v21);
    }
    require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
    v32 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v18)).gas(msg.gas);
    require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v19 = v33 = 0;
    if (address(v18)) {
        MEM[MEM[64] + 68] = v20;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v18));
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v34 = v35, /* uint256 */ v36, /* uint256 */ v37 = address(v3.word0).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v38 = v39 = 96;
        } else {
            v38 = v40 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());
        }
        if (v35) {
            v34 = v41 = !MEM[v38];
            if (MEM[v38]) {
                require(v37 + MEM[v38] - v37 >= 32);
                v34 = MEM[v37];
                require(v34 == bool(v34));
            }
        }
        require(v34, Error('TransferHelper::safeTransfer: transfer failed'));
    } else {
        MEM[0] = MEM[0];
        require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
        v42 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v20).gas(msg.gas);
        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v43, /* uint256 */ v44 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v19).gas(msg.gas);
    require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    MEM[MEM[64]] = v22;
    MEM[MEM[64] + 32] = v22;
    MEM[MEM[64] + 64] = v20;
    if (v3.word7) {
        _uniswapV3SwapCallback = v22;
        stor_2 = v3.word6;
        stor_3 = v25;
    }
    v45 = new uint256[](64);
    MCOPY(v45.data, MEM[64] + 32, 64);
    MEM[v45 + 64 + 32] = 0;
    return v45;
}

function 0x1b31(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0, v1 = 0x2ae3(varg1, varg2, varg3);
    v2 = 0x2b46(varg0, v0, v1, varg4);
    return v2;
}

function 0x1b5b(uint256 varg0, address varg1, address varg2, address varg3) private { 
    owner_0_0_19 = varg3;
    v0 = new struct(5);
    v0.word0 = 0;
    v1 = varg2 < varg1;
    v0.word1 = v1;
    v0.word2 = varg2;
    v0.word3 = 0;
    v2 = new struct(1);
    v2.word0 = 0;
    v0.word4 = v2;
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = bool(v0.word0);
    MEM[32 + MEM[64] + 64] = bool(v0.word1);
    MEM[32 + MEM[64] + 96] = address(v0.word2);
    MEM[32 + MEM[64] + 128] = v0.word3;
    MEM[32 + MEM[64] + 160] = 160;
    MEM[32 + MEM[64] + 192] = MEM[v0.word4];
    MCOPY(32 + MEM[64] + 192 + 32, v0.word4 + 32, MEM[v0.word4]);
    MEM[32 + MEM[64] + 192 + MEM[v0.word4] + 32] = 0;
    if (v1) {
        v3 = v4 = 0x3f3f(1, 0x1000276a3);
    } else {
        v3 = v5 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v6 = new uint256[](32 + MEM[64] + 192 + (MEM[v0.word4] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MCOPY(v6.data, MEM[64] + 32, 32 + MEM[64] + 192 + (MEM[v0.word4] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[v6 + (32 + MEM[64] + 192 + (MEM[v0.word4] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
    v7, /* uint256 */ v8, /* uint256 */ v8 = varg3.swap(address(this), bool(v1), varg0, address(v3), v6).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (varg2 >= varg1) {
    }
    v9 = 0x3b02(v8);
    require(1 == owner_0_0_19, Error('LPCNN'));
    return v9;
}

function 0x9571eff2(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg1 <= uint64.max);
    v0 = 0x3159(4 + varg1, msg.data.length);
    require(varg2 <= uint64.max);
    v1 = 0x3159(4 + varg2, msg.data.length);
    MEM[64] += 96;
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    v2 = v3 = msg.sender == 0x8a307c4f0de05dbc79522d5e196e77823bcc9223;
    if (msg.sender != 0x8a307c4f0de05dbc79522d5e196e77823bcc9223) {
        v2 = msg.sender == 0xbcd7749dfdc396287172208b9d5da865ec471b81;
    }
    require(v2, Error(8559));
    require(v0 + 96 - (v0 + 64) >= 32);
    require(msg.data[v0 + 64] == address(msg.data[v0 + 64]));
    require(v0 + 128 - (v0 + 96) >= 32);
    require(msg.data[v0 + 96] == address(msg.data[v0 + 96]));
    v4 = 0x1a7e(msg.data[v0 + 64]);
    v5 = 0x1a7e(msg.data[v0 + 96]);
    require(msg.data.length - v0 >= 224);
    v6 = 0x325a();
    require(msg.data[v0] == uint8(msg.data[v0]));
    v6.word0 = msg.data[v0];
    require(msg.data[v0 + 32] == address(msg.data[v0 + 32]));
    v6.word1 = msg.data[v0 + 32];
    require(msg.data[v0 + 64] == address(msg.data[v0 + 64]));
    v6.word2 = msg.data[v0 + 64];
    require(msg.data[v0 + 96] == address(msg.data[v0 + 96]));
    v6.word3 = msg.data[v0 + 96];
    require(msg.data[v0 + 128] <= uint64.max);
    require(v0 + msg.data[v0 + 128] + 31 < msg.data.length);
    require(msg.data[v0 + msg.data[v0 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v7 = new uint256[](msg.data[v0 + msg.data[v0 + 128]]);
    require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v9 = v7.data;
    require(v0 + msg.data[v0 + 128] + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 32 <= msg.data.length);
    v10 = v11 = v0 + msg.data[v0 + 128] + 32;
    while (v10 < v0 + msg.data[v0 + 128] + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 32) {
        require(msg.data[v10] == uint24(msg.data[v10]));
        MEM[v8] = msg.data[v10];
        v8 += 32;
        v10 += 32;
    }
    v6.word4 = v7;
    v6.word5 = msg.data[160 + v0];
    require(msg.data[v0 + 192] <= uint64.max);
    require(v0 + msg.data[v0 + 192] + 31 < msg.data.length);
    require(msg.data[v0 + msg.data[v0 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v12 = new bytes[](msg.data[v0 + msg.data[v0 + 192]]);
    require(!((v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + msg.data[v0 + 192]]) + 31) < v12) | (v12 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + msg.data[v0 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + msg.data[v0 + 192] + msg.data[v0 + msg.data[v0 + 192]] + 32 <= msg.data.length);
    CALLDATACOPY(v12.data, v0 + msg.data[v0 + 192] + 32, msg.data[v0 + msg.data[v0 + 192]]);
    v12[msg.data[v0 + msg.data[v0 + 192]]] = 0;
    v6.word6 = v12;
    v13 = 0x175e(v6, varg0);
    v14 = 0x1a7e(msg.data[v0 + 64]);
    v15 = _SafeSub(v4, v14);
    v16 = 0x1a7e(msg.data[v0 + 96]);
    v17 = _SafeSub(v16, v5);
    require(v1 + 96 - (v1 + 64) >= 32);
    require(msg.data[v1 + 64] == address(msg.data[v1 + 64]));
    require(v1 + 128 - (v1 + 96) >= 32);
    require(msg.data[v1 + 96] == address(msg.data[v1 + 96]));
    v18 = 0x1a7e(msg.data[v1 + 64]);
    v19 = 0x1a7e(msg.data[v1 + 96]);
    require(msg.data.length - v1 >= 224);
    v20 = 0x325a();
    require(msg.data[v1] == uint8(msg.data[v1]));
    v20.word0 = msg.data[v1];
    require(msg.data[v1 + 32] == address(msg.data[v1 + 32]));
    v20.word1 = msg.data[v1 + 32];
    require(msg.data[v1 + 64] == address(msg.data[v1 + 64]));
    v20.word2 = msg.data[v1 + 64];
    require(msg.data[v1 + 96] == address(msg.data[v1 + 96]));
    v20.word3 = msg.data[v1 + 96];
    require(msg.data[v1 + 128] <= uint64.max);
    require(v1 + msg.data[v1 + 128] + 31 < msg.data.length);
    require(msg.data[v1 + msg.data[v1 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v21 = new uint256[](msg.data[v1 + msg.data[v1 + 128]]);
    require(!((v21 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v1 + msg.data[v1 + 128]] << 5) + 31) < v21) | (v21 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v1 + msg.data[v1 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v22 = v23 = v21.data;
    require(v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32 <= msg.data.length);
    v24 = v25 = v1 + msg.data[v1 + 128] + 32;
    while (v24 < v1 + msg.data[v1 + 128] + (msg.data[v1 + msg.data[v1 + 128]] << 5) + 32) {
        require(msg.data[v24] == uint24(msg.data[v24]));
        MEM[v22] = msg.data[v24];
        v22 += 32;
        v24 += 32;
    }
    v20.word4 = v21;
    v20.word5 = msg.data[160 + v1];
    require(msg.data[v1 + 192] <= uint64.max);
    require(v1 + msg.data[v1 + 192] + 31 < msg.data.length);
    require(msg.data[v1 + msg.data[v1 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v26 = new bytes[](msg.data[v1 + msg.data[v1 + 192]]);
    require(!((v26 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + msg.data[v1 + 192]]) + 31) < v26) | (v26 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + msg.data[v1 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v1 + msg.data[v1 + 192] + msg.data[v1 + msg.data[v1 + 192]] + 32 <= msg.data.length);
    CALLDATACOPY(v26.data, v1 + msg.data[v1 + 192] + 32, msg.data[v1 + msg.data[v1 + 192]]);
    v26[msg.data[v1 + msg.data[v1 + 192]]] = 0;
    v20.word6 = v26;
    v27 = 0x175e(v20, v17);
    v28 = 0x1a7e(msg.data[v1 + 64]);
    v29 = _SafeSub(v18, v28);
    v30 = 0x1a7e(msg.data[v1 + 96]);
    v31 = _SafeSub(v30, v19);
    _uniswapV3SwapCallback = v17;
    stor_2 = v29;
    stor_3 = v31;
    return v17, v29, v31;
}

function 0xcf3da698(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg1 <= uint64.max);
    v0 = 0x3159(4 + varg1, msg.data.length);
    v1 = v2 = msg.sender == 0x8a307c4f0de05dbc79522d5e196e77823bcc9223;
    if (msg.sender != 0x8a307c4f0de05dbc79522d5e196e77823bcc9223) {
        v1 = msg.sender == 0xbcd7749dfdc396287172208b9d5da865ec471b81;
    }
    require(v1, Error(8559));
    require(msg.data.length - v0 >= 224);
    v3 = 0x325a();
    require(msg.data[v0] == uint8(msg.data[v0]));
    v3.word0 = msg.data[v0];
    require(msg.data[v0 + 32] == address(msg.data[v0 + 32]));
    v3.word1 = msg.data[v0 + 32];
    require(msg.data[v0 + 64] == address(msg.data[v0 + 64]));
    v3.word2 = msg.data[v0 + 64];
    require(msg.data[v0 + 96] == address(msg.data[v0 + 96]));
    v3.word3 = msg.data[v0 + 96];
    require(msg.data[v0 + 128] <= uint64.max);
    require(v0 + msg.data[v0 + 128] + 31 < msg.data.length);
    require(msg.data[v0 + msg.data[v0 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v0 + msg.data[v0 + 128]]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(v0 + msg.data[v0 + 128] + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 32 <= msg.data.length);
    v7 = v8 = v0 + msg.data[v0 + 128] + 32;
    while (v7 < v0 + msg.data[v0 + 128] + (msg.data[v0 + msg.data[v0 + 128]] << 5) + 32) {
        require(msg.data[v7] == uint24(msg.data[v7]));
        MEM[v5] = msg.data[v7];
        v5 += 32;
        v7 += 32;
    }
    v3.word4 = v4;
    v3.word5 = msg.data[160 + v0];
    require(msg.data[v0 + 192] <= uint64.max);
    require(v0 + msg.data[v0 + 192] + 31 < msg.data.length);
    require(msg.data[v0 + msg.data[v0 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new bytes[](msg.data[v0 + msg.data[v0 + 192]]);
    require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + msg.data[v0 + 192]]) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + msg.data[v0 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + msg.data[v0 + 192] + msg.data[v0 + msg.data[v0 + 192]] + 32 <= msg.data.length);
    CALLDATACOPY(v9.data, v0 + msg.data[v0 + 192] + 32, msg.data[v0 + msg.data[v0 + 192]]);
    v9[msg.data[v0 + msg.data[v0 + 192]]] = 0;
    v3.word6 = v9;
    v10 = 0x175e(v3, varg0);
    return v10;
}

function receive() public payable { 
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == msg.sender) {
        exit;
    } else {
        MEM[0] = MEM[0];
        require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v0 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        exit;
    }
}

function 0xf787adea(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 352);
    v0 = 0x990(4 + varg0);
    return MEM[v0], MEM[v0 + 32], MEM[64 + v0];
}

function 0x2210(address varg0, uint256 varg1, uint256 varg2, address varg3, address varg4) private { 
    v0, /* uint256 */ v1 = varg0.getPoolId().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(0xba12222222228d8ba445958a75a0704d566bf2c8));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg4.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v9 = !MEM[v6];
        if (MEM[v6]) {
            require(v5 + MEM[v6] - v5 >= 32);
            v2 = MEM[v5];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error('TransferHelper::safeApprove: approve failed'));
    v10 = new struct(6);
    v10.word0 = 0;
    v10.word1 = 0;
    v10.word2 = address(0x0);
    v10.word3 = address(0x0);
    v10.word4 = 0;
    v10.word5 = 96;
    v10.word0 = v1;
    v10.word1 = 0;
    v10.word2 = varg4;
    v10.word3 = varg3;
    v10.word4 = varg2;
    v11 = new struct(1);
    v11.word0 = 0;
    v10.word5 = v11;
    v12 = new uint256[](v10.word0);
    require(v10.word1 < 2, Panic(33)); // failed convertion to enum type
    MEM[v12.data] = v10.word1;
    MCOPY(4 + MEM[64] + 416 + 32, v10.word5 + 32, MEM[v10.word5]);
    MEM[4 + MEM[64] + 416 + MEM[v10.word5] + 32] = 0;
    v13, /* uint256 */ v14 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v12, address(this), False, address(this), False, varg1, block.timestamp, v15, v15, address(v10.word2), address(v10.word3), v10.word4, 192, MEM[v10.word5]).gas(msg.gas);
    require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    MEM[MEM[64] + 68] = 0;
    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(0xba12222222228d8ba445958a75a0704d566bf2c8));
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v16 = v17, /* uint256 */ v18, /* uint256 */ v19 = varg4.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v20 = v21 = 96;
    } else {
        v20 = v22 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());
    }
    if (v17) {
        v16 = v23 = !MEM[v20];
        if (MEM[v20]) {
            require(v19 + MEM[v20] - v19 >= 32);
            v16 = MEM[v19];
            require(v16 == bool(v16));
        }
    }
    require(v16, Error('TransferHelper::safeApprove: approve failed'));
    return v14;
}

function 0x23e6(address varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg0);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v0 = v1, /* uint256 */ v2, /* uint256 */ v3 = varg3.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        v0 = v7 = !MEM[v4];
        if (MEM[v4]) {
            require(v3 + MEM[v4] - v3 >= 32);
            v0 = MEM[v3];
            require(v0 == bool(v0));
        }
    }
    require(v0, Error('TransferHelper::safeApprove: approve failed'));
    v8, /* address */ v9 = varg0._QUOTE_TOKEN_().gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v9 == address(v9));
    if (varg3 - address(v9)) {
        v10 = new uint256[](0);
        MCOPY(v10.data, MEM[64] + 32, 0);
        MEM[v10.data] = 0;
        v11, /* uint256 */ v12 = varg0.sellBaseToken(varg2, 0, v10).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v13, /* uint256 */ v14 = 0x533da777aedce766ceae696bf90f8541a4ba80eb.querySellQuoteToken(varg0, varg2).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v12 = v15 = _SafeSub(v14, 10000);
        v16 = new uint256[](0);
        MCOPY(v16.data, MEM[64] + 32, 0);
        MEM[v16.data] = 0;
        v17, /* uint256 */ v18 = varg0.buyBaseToken(v15, varg2, v16).gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(v12 >= varg1, Error(0x44314d4f));
    MEM[MEM[64] + 68] = 0;
    MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg0);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v19 = v20, /* uint256 */ v21 = varg3.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v22 = v23 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
    }
    return v12;
}

function 0x264b(address varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg0);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v0 = v1, /* uint256 */ v2, /* uint256 */ v3 = varg3.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v4 = v5 = 96;
    } else {
        v4 = v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        v0 = v7 = !MEM[v4];
        if (MEM[v4]) {
            require(v3 + MEM[v4] - v3 >= 32);
            v0 = MEM[v3];
            require(v0 == bool(v0));
        }
    }
    require(v0, Error('TransferHelper::safeTransfer: transfer failed'));
    v8, /* address */ v9 = varg0._BASE_TOKEN_().gas(msg.gas);
    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v9 == address(v9));
    if (varg3 - address(v9)) {
        v10, /* uint256 */ v11 = varg0.sellQuote(this).gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v12, /* uint256 */ v11 = varg0.sellBase(this).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(v11 >= varg1, Error(0x44324d4f));
    return v11;
}

function 0x27e0(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = v1 = 0x1b31(varg1, varg0, varg4, varg5, varg3);
    v2 = 0x2df1(varg3, varg0, varg5);
    require(v2, Error('weth transfer err'));
    if (address(varg5) < address(varg4)) {
        v0 = v3 = 0;
    } else {
        v0 = v4 = 0;
    }
    v5 = varg0.swap(v0, v0, this, 128, 0).gas(msg.gas);
    require(v5, Error('swap err'));
    require(v1 >= varg2, Error('maker (ei) min amount out not reached'));
    return v1;
}

function 0x289(uint256 varg0) private { 
    MEM[64] += 96;
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    v0 = v1 = msg.sender == 0x8a307c4f0de05dbc79522d5e196e77823bcc9223;
    if (msg.sender != 0x8a307c4f0de05dbc79522d5e196e77823bcc9223) {
        v0 = msg.sender == 0xbcd7749dfdc396287172208b9d5da865ec471b81;
    }
    require(v0, Error(8559));
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
    owner_0_0_19 = msg.data[32 + (msg.data[varg0 + 64] + varg0)];
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    v2 = msg.data[varg0 + 64] + varg0;
    require(v2 + 32 - v2 >= 32);
    require(msg.data[v2] == uint8(msg.data[v2]));
    if (6 - uint8(msg.data[v2])) {
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        v3 = msg.data[varg0 + 64] + varg0;
        require(v3 + 32 - v3 >= 32);
        require(msg.data[v3] == uint8(msg.data[v3]));
        if (1 - uint8(msg.data[v3])) {
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            v4 = msg.data[varg0 + 64] + varg0;
            require(v4 + 32 - v4 >= 32);
            require(msg.data[v4] == uint8(msg.data[v4]));
            require(!(7 - uint8(msg.data[v4])), Error(0x46504e53));
            v5 = new struct(8);
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            require(msg.data[64 + varg0] + varg0 + 96 - (64 + (msg.data[64 + varg0] + varg0)) >= 32);
            require(msg.data[64 + (msg.data[64 + varg0] + varg0)] == address(msg.data[64 + (msg.data[64 + varg0] + varg0)]));
            v5.word0 = address(msg.data[64 + (msg.data[64 + varg0] + varg0)]);
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
            require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
            v5.word1 = address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]);
            v5.word2 = msg.data[96 + varg0];
            if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
                v6 = v7 = 0x3f3f(1, 0x1000276a3);
            } else {
                v6 = v8 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v5.word3 = address(v6);
            v9 = new struct(2);
            v9.word0 = address(0x4444c5dc75cb358380d2e3de08a90);
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            v10 = msg.data[64 + varg0] + varg0;
            require(msg.data[v10 + 160] < msg.data.length - v10 - 31);
            require(msg.data[v10 + msg.data[v10 + 160]] <= uint64.max);
            require(32 + (v10 + msg.data[v10 + 160]) <= msg.data.length - msg.data[v10 + msg.data[v10 + 160]]);
            v11 = new bytes[](msg.data[v10 + msg.data[v10 + 160]]);
            CALLDATACOPY(v11.data, 32 + (v10 + msg.data[v10 + 160]), msg.data[v10 + msg.data[v10 + 160]]);
            v11[msg.data[v10 + msg.data[v10 + 160]]] = 0;
            v9.word1 = v11;
            v5.word4 = v9;
            require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
            v12 = msg.data[varg0 + 160] + varg0;
            MEM[32 + MEM[64]] = 32;
            require(msg.data[v12] == uint8(msg.data[v12]));
            MEM[32 + MEM[64] + 32] = uint8(msg.data[v12]);
            require(msg.data[v12 + 32] == address(msg.data[v12 + 32]));
            MEM[32 + MEM[64] + 64] = address(msg.data[v12 + 32]);
            require(msg.data[v12 + 64] == address(msg.data[v12 + 64]));
            MEM[32 + MEM[64] + 96] = address(msg.data[v12 + 64]);
            require(msg.data[v12 + 96] == address(msg.data[v12 + 96]));
            MEM[32 + MEM[64] + 128] = address(msg.data[v12 + 96]);
            require(msg.data[v12 + 128] < msg.data.length - v12 - 31);
            v13 = v14 = v12 + msg.data[v12 + 128] + 32;
            require(msg.data[v12 + msg.data[v12 + 128]] <= uint64.max);
            require(v14 <= msg.data.length - (msg.data[v12 + msg.data[v12 + 128]] << 5));
            MEM[32 + MEM[64] + 160] = 224;
            MEM[32 + MEM[64] + (uint8.max + 1)] = msg.data[v12 + msg.data[v12 + 128]];
            v15 = 32 + MEM[64] + (uint8.max + 1) + 32;
            v16 = 0;
            while (v16 < msg.data[v12 + msg.data[v12 + 128]]) {
                require(msg.data[v13] == uint24(msg.data[v13]));
                MEM[v15] = uint24(msg.data[v13]);
                v15 += 32;
                v13 += 32;
                v16 += 1;
            }
            MEM[32 + MEM[64] + 192] = msg.data[v12 + 160];
            require(msg.data[v12 + 192] < msg.data.length - v12 - 31);
            require(msg.data[v12 + msg.data[v12 + 192]] <= uint64.max);
            require(v12 + msg.data[v12 + 192] + 32 <= msg.data.length - msg.data[v12 + msg.data[v12 + 192]]);
            MEM[32 + MEM[64] + 224] = v15 - (32 + MEM[64]) - 32;
            MEM[v15] = msg.data[v12 + msg.data[v12 + 192]];
            CALLDATACOPY(v15 + 32, v12 + msg.data[v12 + 192] + 32, msg.data[v12 + msg.data[v12 + 192]]);
            MEM[32 + (msg.data[v12 + msg.data[v12 + 192]] + v15)] = 0;
            MEM[MEM[64]] = v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v12 + msg.data[v12 + 192]] + 31) + 32 - MEM[64] - 32;
            MEM[64] = v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v12 + msg.data[v12 + 192]] + 31) + 32;
            v5.word5 = MEM[64];
            v5.word6 = msg.data[192 + varg0];
            require(varg0 + 32 - varg0 >= 32);
            v17 = msg.data[varg0];
            require(v17 == bool(v17));
            v5.word7 = bool(v17);
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = address(v5.word0);
            MEM[32 + MEM[64] + 64] = address(v5.word1);
            MEM[32 + MEM[64] + 96] = v5.word2;
            MEM[32 + MEM[64] + 128] = address(v5.word3);
            MEM[32 + MEM[64] + 160] = uint8.max + 1;
            MEM[32 + MEM[64] + 288] = address(MEM[v5.word4]);
            MEM[32 + MEM[64] + 288 + 32] = 64;
            MEM[32 + MEM[64] + 288 + 64] = MEM[MEM[v5.word4 + 32]];
            MCOPY(32 + MEM[64] + 288 + 64 + 32, MEM[v5.word4 + 32] + 32, MEM[MEM[v5.word4 + 32]]);
            MEM[32 + MEM[64] + 288 + 64 + MEM[MEM[v5.word4 + 32]] + 32] = 0;
            v18 = 32 + MEM[64] + 288 + 64 + (MEM[MEM[v5.word4 + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
            MEM[32 + MEM[64] + 192] = v18 - (32 + MEM[64]) - 32;
            MEM[v18] = MEM[v5.word5];
            MCOPY(v18 + 32, v5.word5 + 32, MEM[v5.word5]);
            MEM[v18 + MEM[v5.word5] + 32] = 0;
            MEM[32 + MEM[64] + 224] = v5.word6;
            MEM[32 + MEM[64] + (uint8.max + 1)] = bool(v5.word7);
            MEM[v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
            MEM[4 + (v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32)] = 32;
            MEM[4 + (v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32] = v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
            MCOPY(4 + (v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + 32, MEM[64] + 32, v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[4 + (v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + (v18 + (MEM[v5.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v19, /* uint256 */ v20 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4 + v313eV0x4007V0x4080V0x151dV0x2b2 + MEM[v139aV0x2b2.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + 32 + v313eV0x4007V0x4080V0x151dV0x2b2 + MEM[v139aV0x2b2.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(v20, 0, RETURNDATASIZE());
            MEM[64] = v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            require(v20 + RETURNDATASIZE() - v20 >= 32);
            require(MEM[v20] <= uint64.max);
            v21 = 0x3692(v20 + MEM[v20], v20 + RETURNDATASIZE());
        } else {
            MEM[64] = MEM[64] + 160;
            require(varg0 + 32 - varg0 >= 32);
            require(msg.data[varg0] == bool(msg.data[varg0]));
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            require(msg.data[64 + varg0] + varg0 + 96 - (64 + (msg.data[64 + varg0] + varg0)) >= 32);
            require(msg.data[64 + (msg.data[64 + varg0] + varg0)] == address(msg.data[64 + (msg.data[64 + varg0] + varg0)]));
            require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
            v22 = msg.data[varg0 + 160] + varg0;
            MEM[32 + MEM[64]] = 32;
            require(msg.data[v22] == uint8(msg.data[v22]));
            MEM[32 + MEM[64] + 32] = uint8(msg.data[v22]);
            require(msg.data[v22 + 32] == address(msg.data[v22 + 32]));
            MEM[32 + MEM[64] + 64] = address(msg.data[v22 + 32]);
            require(msg.data[v22 + 64] == address(msg.data[v22 + 64]));
            MEM[32 + MEM[64] + 96] = address(msg.data[v22 + 64]);
            require(msg.data[v22 + 96] == address(msg.data[v22 + 96]));
            MEM[32 + MEM[64] + 128] = address(msg.data[v22 + 96]);
            require(msg.data[v22 + 128] < msg.data.length - v22 - 31);
            v23 = v24 = v22 + msg.data[v22 + 128] + 32;
            require(msg.data[v22 + msg.data[v22 + 128]] <= uint64.max);
            require(v24 <= msg.data.length - (msg.data[v22 + msg.data[v22 + 128]] << 5));
            MEM[32 + MEM[64] + 160] = 224;
            MEM[32 + MEM[64] + (uint8.max + 1)] = msg.data[v22 + msg.data[v22 + 128]];
            v25 = 32 + MEM[64] + (uint8.max + 1) + 32;
            v26 = 0;
            while (v26 < msg.data[v22 + msg.data[v22 + 128]]) {
                require(msg.data[v23] == uint24(msg.data[v23]));
                MEM[v25] = uint24(msg.data[v23]);
                v25 += 32;
                v23 += 32;
                v26 += 1;
            }
            MEM[32 + MEM[64] + 192] = msg.data[v22 + 160];
            require(msg.data[v22 + 192] < msg.data.length - v22 - 31);
            require(msg.data[v22 + msg.data[v22 + 192]] <= uint64.max);
            require(v22 + msg.data[v22 + 192] + 32 <= msg.data.length - msg.data[v22 + msg.data[v22 + 192]]);
            MEM[32 + MEM[64] + 224] = v25 - (32 + MEM[64]) - 32;
            MEM[v25] = msg.data[v22 + msg.data[v22 + 192]];
            CALLDATACOPY(v25 + 32, v22 + msg.data[v22 + 192] + 32, msg.data[v22 + msg.data[v22 + 192]]);
            MEM[32 + (msg.data[v22 + msg.data[v22 + 192]] + v25)] = 0;
            MEM[MEM[64]] = v25 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v22 + msg.data[v22 + 192]] + 31) + 32 - MEM[64] - 32;
            MEM[32 + MEM[64]] = 32;
            MEM[32 + MEM[64] + 32] = bool(msg.data[varg0]);
            MEM[32 + MEM[64] + 64] = address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]);
            MEM[32 + MEM[64] + 96] = address(msg.data[64 + (msg.data[64 + varg0] + varg0)]);
            MEM[32 + MEM[64] + 128] = msg.data[varg0 + 192];
            MEM[32 + MEM[64] + 160] = 160;
            MEM[32 + MEM[64] + 192] = MEM[MEM[64]];
            MCOPY(32 + MEM[64] + 192 + 32, MEM[64] + 32, MEM[MEM[64]]);
            MEM[32 + MEM[64] + 192 + MEM[MEM[64]] + 32] = 0;
            MEM[64] = 32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
            require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
            if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
                v27 = v28 = 0x3f3f(1, 0x1000276a3);
            } else {
                v27 = v29 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v30 = new uint256[](32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MCOPY(v30.data, MEM[64] + 32, 32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[v30 + (32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v31, /* uint256 */ v32, /* uint256 */ v33 = address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]).swap(address(this), address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]), msg.data[96 + varg0], address(v27), v30).gas(msg.gas);
            require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        }
    } else {
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        v34 = msg.data[varg0 + 64] + varg0;
        require(msg.data[v34 + 128] < msg.data.length - v34 - 31);
        require(msg.data[v34 + msg.data[v34 + 128]] <= uint64.max);
        require(32 + (v34 + msg.data[v34 + 128]) <= msg.data.length - (msg.data[v34 + msg.data[v34 + 128]] << 5));
        require(0 < msg.data[v34 + msg.data[v34 + 128]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(32 + (v34 + msg.data[v34 + 128]) + 32 - (32 + (v34 + msg.data[v34 + 128])) >= 32);
        require(msg.data[32 + (v34 + msg.data[v34 + 128])] == uint24(msg.data[32 + (v34 + msg.data[v34 + 128])]));
        v35, v36 = 0x2ae3(msg.data[32 + (msg.data[varg0 + 64] + varg0)], msg.data[96 + (msg.data[varg0 + 64] + varg0)], msg.data[64 + (msg.data[varg0 + 64] + varg0)]);
        v37 = 0x2b46(uint24(msg.data[32 + (v34 + msg.data[v34 + 128])]), v35, v36, msg.data[varg0 + 96]);
        if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
            v37 = v38 = 0;
        } else {
            v37 = v39 = 0;
        }
        MEM[64] = MEM[64] + 160;
        require(varg0 + 32 - varg0 >= 32);
        require(msg.data[varg0] == bool(msg.data[varg0]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
        v40 = msg.data[varg0 + 160] + varg0;
        require(msg.data.length - v40 >= 224);
        v41 = 0x325a();
        require(msg.data[v40] == uint8(msg.data[v40]));
        v41.word0 = msg.data[v40];
        require(msg.data[v40 + 32] == address(msg.data[v40 + 32]));
        v41.word1 = msg.data[v40 + 32];
        require(msg.data[v40 + 64] == address(msg.data[v40 + 64]));
        v41.word2 = msg.data[v40 + 64];
        require(msg.data[v40 + 96] == address(msg.data[v40 + 96]));
        v41.word3 = msg.data[v40 + 96];
        require(msg.data[v40 + 128] <= uint64.max);
        require(v40 + msg.data[v40 + 128] + 31 < msg.data.length);
        require(msg.data[v40 + msg.data[v40 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v42 = new uint256[](msg.data[v40 + msg.data[v40 + 128]]);
        require(!((v42 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v40 + msg.data[v40 + 128]] << 5) + 31) < v42) | (v42 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v40 + msg.data[v40 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v43 = v44 = v42.data;
        require(v40 + msg.data[v40 + 128] + (msg.data[v40 + msg.data[v40 + 128]] << 5) + 32 <= msg.data.length);
        v45 = v46 = v40 + msg.data[v40 + 128] + 32;
        while (v45 < v40 + msg.data[v40 + 128] + (msg.data[v40 + msg.data[v40 + 128]] << 5) + 32) {
            require(msg.data[v45] == uint24(msg.data[v45]));
            MEM[v43] = msg.data[v45];
            v43 += 32;
            v45 += 32;
        }
        v41.word4 = v42;
        v41.word5 = msg.data[160 + v40];
        require(msg.data[v40 + 192] <= uint64.max);
        require(v40 + msg.data[v40 + 192] + 31 < msg.data.length);
        require(msg.data[v40 + msg.data[v40 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v47 = new bytes[](msg.data[v40 + msg.data[v40 + 192]]);
        require(!((v47 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v40 + msg.data[v40 + 192]]) + 31) < v47) | (v47 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v40 + msg.data[v40 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v40 + msg.data[v40 + 192] + msg.data[v40 + msg.data[v40 + 192]] + 32 <= msg.data.length);
        CALLDATACOPY(v47.data, v40 + msg.data[v40 + 192] + 32, msg.data[v40 + msg.data[v40 + 192]]);
        v47[msg.data[v40 + msg.data[v40 + 192]]] = 0;
        v41.word6 = v47;
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = bool(msg.data[varg0]);
        MEM[32 + MEM[64] + 64] = address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]);
        MEM[32 + MEM[64] + 96] = msg.data[varg0 + 96];
        MEM[32 + MEM[64] + 128] = msg.data[varg0 + 192];
        MEM[32 + MEM[64] + 160] = 160;
        MEM[32 + MEM[64] + 192] = uint8(MEM[v41]);
        MEM[32 + MEM[64] + 224] = address(MEM[v41 + 32]);
        MEM[32 + MEM[64] + (uint8.max + 1)] = address(MEM[v41 + 64]);
        MEM[32 + MEM[64] + 288] = address(MEM[v41 + 96]);
        MEM[32 + MEM[64] + 320] = 224;
        MEM[32 + MEM[64] + 416] = MEM[MEM[v41 + 128]];
        v48 = v49 = 32 + MEM[64] + 416 + 32;
        v50 = v51 = MEM[v41 + 128] + 32;
        v52 = v53 = 0;
        while (v52 < MEM[MEM[v41 + 128]]) {
            MEM[v48] = uint24(MEM[v50]);
            v48 += 32;
            v50 = v50 + 32;
            v52 += 1;
        }
        MEM[32 + MEM[64] + 352] = MEM[v41 + 160];
        MEM[32 + MEM[64] + 384] = v48 - (32 + MEM[64]) - 192;
        MEM[v48] = MEM[MEM[v41 + 192]];
        MCOPY(v48 + 32, MEM[v41 + 192] + 32, MEM[MEM[v41 + 192]]);
        MEM[v48 + MEM[MEM[v41 + 192]] + 32] = 0;
        MEM[64] = v48 + (MEM[MEM[v41 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
        v54 = new uint256[](v48 + (MEM[MEM[v41 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MCOPY(v54.data, MEM[64] + 32, v48 + (MEM[MEM[v41 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[v54 + (v48 + (MEM[MEM[v41 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
        require(bool((address(msg.data[32 + (msg.data[varg0 + 64] + varg0)])).code.size));
        v55 = address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]).swap(v37, v37, address(this), v54).gas(msg.gas);
        require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    require(1 == owner_0_0_19, Error('LPCNN'));
    v56 = new struct(3);
    v56.word0 = _uniswapV3SwapCallback;
    v56.word1 = stor_2;
    v56.word2 = stor_3;
    return v56;
}

function 0x2911(bytes varg0, uint256 varg1, address varg2, address varg3) private { 
    owner_0_0_19 = 0x4444c5dc75cb358380d2e3de08a90;
    v0 = new struct(8);
    v0.word0 = varg3;
    v0.word1 = varg2;
    v0.word2 = varg1;
    if (varg3 < varg2) {
        v1 = v2 = 0x3f3f(1, 0x1000276a3);
    } else {
        v1 = v3 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
    }
    v0.word3 = address(v1);
    v4 = new struct(2);
    v4.word0 = 0x4444c5dc75cb358380d2e3de08a90;
    v4.word1 = varg0;
    v0.word4 = v4;
    v5 = new struct(1);
    v5.word0 = 0;
    v0.word5 = v5;
    v0.word6 = 0;
    v0.word7 = 0;
    MEM[32 + MEM[64]] = 32;
    MEM[64 + MEM[64]] = address(v0.word0);
    MEM[32 + MEM[64] + 64] = address(v0.word1);
    MEM[32 + MEM[64] + 96] = v0.word2;
    MEM[32 + MEM[64] + 128] = address(v0.word3);
    MEM[32 + MEM[64] + 160] = uint8.max + 1;
    MEM[32 + MEM[64] + 288] = address(MEM[v0.word4]);
    MEM[32 + MEM[64] + 288 + 32] = 64;
    MEM[32 + MEM[64] + 288 + 64] = MEM[MEM[v0.word4 + 32]];
    MCOPY(32 + MEM[64] + 288 + 64 + 32, MEM[v0.word4 + 32] + 32, MEM[MEM[v0.word4 + 32]]);
    MEM[32 + MEM[64] + 288 + 64 + MEM[MEM[v0.word4 + 32]] + 32] = 0;
    v6 = 32 + MEM[64] + 288 + 64 + (MEM[MEM[v0.word4 + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
    MEM[32 + MEM[64] + 192] = v6 - (32 + MEM[64]) - 32;
    MEM[v6] = MEM[v0.word5];
    MCOPY(v6 + 32, v0.word5 + 32, MEM[v0.word5]);
    MEM[v6 + MEM[v0.word5] + 32] = 0;
    MEM[32 + MEM[64] + 224] = v0.word6;
    MEM[32 + MEM[64] + (uint8.max + 1)] = bool(v0.word7);
    MEM[v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
    MEM[4 + (v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32)] = 32;
    MEM[4 + (v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32] = v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
    MCOPY(4 + (v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + 32, MEM[64] + 32, v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
    MEM[4 + (v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + (v6 + (MEM[v0.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
    v7, /* uint256 */ v8 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4 + v313eV0x4007V0x4080V0x29ac + MEM[v2946.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + 32 + v313eV0x4007V0x4080V0x29ac + MEM[v2946.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    MEM[64] = v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    require(v8 + RETURNDATASIZE() - v8 >= 32);
    require(MEM[v8] <= uint64.max);
    v9 = 0x3692(v8 + MEM[v8], v8 + RETURNDATASIZE());
    require(v9.data + v9.length - v9.data >= 32);
    require(1 == owner_0_0_19, Error('LPCNN'));
    return MEM[v9.data];
}

function 0x2ae3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(address(varg2) - address(varg1), Error('IDENTICAL_ADDRESSES'));
    if (address(varg2) >= address(varg1)) {
    }
    require(address(varg1), Error('ZERO_ADDRESS'));
    v0, /* uint112 */ v1, /* uint112 */ v2 = varg0.getReserves().gas(msg.gas);
    require(v0);
    if (address(varg2) == address(varg1)) {
        return uint112(v2), uint112(v1);
    } else {
        return uint112(v1), uint112(v2);
    }
}

function 0x2b46(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg3 > 0, Error('INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = varg2 > 0;
    if (v1) {
        v0 = v2 = varg1 > 0;
    }
    require(v0, Error('INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(varg3, varg0);
    v4 = _SafeMul(v3, varg1);
    v5 = _SafeMul(10000, varg2);
    v6 = _SafeAdd(v5, v3);
    v7 = _SafeDiv(v4, v6);
    return v7;
}

function 0x2df1(uint256 varg0, address varg1, uint256 varg2) private { 
    if (0 - varg0) {
        v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
        return v0;
    } else {
        return 1;
    }
}

function 0x3159(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 224);
    return varg0;
}

function 0x325a() private { 
    v0 = new struct(7);
    require(!((v0 + 224 < v0) | (v0 + 224 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x327c() private { 
    v0 = new struct(5);
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x3624(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v3 = v1.data;
    require(varg0 + (v0 << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (v0 << 5) + 32) {
        require(MEM[v4] == uint24(MEM[v4]));
        MEM[v2] = MEM[v4];
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function 0x3692(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    MCOPY(v1.data, varg0 + 32, v0);
    v1[v0] = 0;
    return v1;
}

function 0x36df(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 - v0 >= 224);
    v1 = 0x325a();
    require(MEM[v0] == uint8(MEM[v0]));
    v1.word0 = MEM[v0];
    require(MEM[v0 + 32] == address(MEM[v0 + 32]));
    v1.word1 = MEM[v0 + 32];
    require(MEM[v0 + 64] == address(MEM[v0 + 64]));
    v1.word2 = MEM[v0 + 64];
    require(MEM[v0 + 96] == address(MEM[v0 + 96]));
    v1.word3 = MEM[v0 + 96];
    require(MEM[v0 + 128] <= uint64.max);
    v2 = 0x3624(v0 + MEM[v0 + 128], varg1);
    v1.word4 = v2;
    v1.word5 = MEM[160 + v0];
    require(MEM[v0 + 192] <= uint64.max);
    v3 = 0x3692(v0 + MEM[v0 + 192], varg1);
    v1.word6 = v3;
    return v1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x3b02(uint256 varg0) private { 
    require(varg0 + int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x3f20(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3f3f(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    v1 = 4 + _data + 32 + msg.data[4 + _data];
    require(v1 - (4 + _data + 32) >= 32);
    require(_data.word1 <= uint64.max);
    require(v1 - (4 + _data + 32 + _data.word1) >= 160);
    v2 = 0x327c();
    require(msg.data[4 + _data + 32 + _data.word1] == bool(msg.data[4 + _data + 32 + _data.word1]));
    v2.word0 = msg.data[4 + _data + 32 + _data.word1];
    require(msg.data[4 + _data + 32 + _data.word1 + 32] == address(msg.data[4 + _data + 32 + _data.word1 + 32]));
    v2.word1 = msg.data[4 + _data + 32 + _data.word1 + 32];
    v2.word2 = msg.data[64 + (4 + _data + 32 + _data.word1)];
    v2.word3 = msg.data[4 + _data + 32 + _data.word1 + 96];
    require(msg.data[4 + _data + 32 + _data.word1 + 128] <= uint64.max);
    v3 = 4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1 + 128];
    require(v1 - v3 >= 224);
    v4 = 0x325a();
    require(msg.data[v3] == uint8(msg.data[v3]));
    v4.word0 = msg.data[v3];
    require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
    v4.word1 = msg.data[v3 + 32];
    require(msg.data[v3 + 64] == address(msg.data[v3 + 64]));
    v4.word2 = msg.data[v3 + 64];
    require(msg.data[v3 + 96] == address(msg.data[v3 + 96]));
    v4.word3 = msg.data[v3 + 96];
    require(msg.data[v3 + 128] <= uint64.max);
    require(v3 + msg.data[v3 + 128] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](msg.data[v3 + msg.data[v3 + 128]]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32 <= v1);
    v8 = v9 = v3 + msg.data[v3 + 128] + 32;
    while (v8 < v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32) {
        require(msg.data[v8] == uint24(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v6 += 32;
        v8 += 32;
    }
    v4.word4 = v5;
    v4.word5 = msg.data[160 + v3];
    require(msg.data[v3 + 192] <= uint64.max);
    require(v3 + msg.data[v3 + 192] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
    require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3 + 192] + msg.data[v3 + msg.data[v3 + 192]] + 32 <= v1);
    CALLDATACOPY(v10.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
    v10[msg.data[v3 + msg.data[v3 + 192]]] = 0;
    v4.word6 = v10;
    v2.word4 = v4;
    v11 = v12 = v2.word3;
    v11 = v13 = _SafeAdd(_amount0, _amount1);
    v14 = 0x16fe(MEM[64 + v2.word4]);
    MEM[0] = MEM[0];
    if (!(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 - address(v14))) {
        if (v13 >= v12) {
        }
    }
    v15 = 0x175e(v2.word4, v11);
    MEM[MEM[64] + 68] = v2.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v16 = v17, /* uint256 */ v18, /* uint256 */ v19 = address(v2.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v20 = v21 = 96;
    } else {
        v20 = v22 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());
    }
    if (v17) {
        v16 = v23 = !MEM[v20];
        if (MEM[v20]) {
            require(v19 + MEM[v20] - v19 >= 32);
            v16 = MEM[v19];
            require(v16 == bool(v16));
        }
    }
    require(v16, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v2.word0) {
        _uniswapV3SwapCallback = v13;
        stor_2 = v11;
        stor_3 = v15;
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 160);
    v1 = 0x327c();
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v1.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == bool(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    v1.word3 = msg.data[96 + (4 + data + 32 + data.word1)];
    require(msg.data[4 + data + 32 + data.word1 + 128] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 128];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word4 = v3;
    if (amount0Delta > 0) {
        v4 = v5 = 0x3b02(amount1Delta);
    } else {
        v4 = v6 = 0x3b02(amount0Delta);
    }
    v4 = v7 = v1.word3;
    v8 = 0x16fe(v1.word2);
    MEM[0] = MEM[0];
    if (address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v8)) {
        if (v4 >= v7) {
        }
    }
    v9 = v10 = 0;
    if (v11.length) {
        v12 = 0x36df(v13.data, v13.data + v13.length);
        v9 = 0x175e(v12, v4);
    }
    MEM[MEM[64] + 68] = v14;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v15 = v16, /* uint256 */ v17, /* uint256 */ v18 = address(v1.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v19 = v20 = 96;
    } else {
        v19 = v21 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
    }
    if (v16) {
        v15 = v22 = !MEM[v19];
        if (MEM[v19]) {
            require(v18 + MEM[v19] - v18 >= 32);
            v15 = MEM[v18];
            require(v15 == bool(v15));
        }
    }
    require(v15, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v1.word0) {
        _uniswapV3SwapCallback = v4;
        stor_2 = v1.word3;
        stor_3 = v9;
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    v1 = 4 + data + 32 + msg.data[4 + data];
    require(v1 - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (4 + data + 32 + data.word1) >= 160);
    v2 = 0x327c();
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v2.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v2.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v2.word2 = msg.data[64 + (4 + data + 32 + data.word1)];
    v2.word3 = msg.data[4 + data + 32 + data.word1 + 96];
    require(msg.data[4 + data + 32 + data.word1 + 128] <= uint64.max);
    v3 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 128];
    require(v1 - v3 >= 224);
    v4 = 0x325a();
    require(msg.data[v3] == uint8(msg.data[v3]));
    v4.word0 = msg.data[v3];
    require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
    v4.word1 = msg.data[v3 + 32];
    require(msg.data[v3 + 64] == address(msg.data[v3 + 64]));
    v4.word2 = msg.data[v3 + 64];
    require(msg.data[v3 + 96] == address(msg.data[v3 + 96]));
    v4.word3 = msg.data[v3 + 96];
    require(msg.data[v3 + 128] <= uint64.max);
    require(v3 + msg.data[v3 + 128] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](msg.data[v3 + msg.data[v3 + 128]]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32 <= v1);
    v8 = v9 = v3 + msg.data[v3 + 128] + 32;
    while (v8 < v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32) {
        require(msg.data[v8] == uint24(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v6 += 32;
        v8 += 32;
    }
    v4.word4 = v5;
    v4.word5 = msg.data[160 + v3];
    require(msg.data[v3 + 192] <= uint64.max);
    require(v3 + msg.data[v3 + 192] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
    require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3 + 192] + msg.data[v3 + msg.data[v3 + 192]] + 32 <= v1);
    CALLDATACOPY(v10.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
    v10[msg.data[v3 + msg.data[v3 + 192]]] = 0;
    v4.word6 = v10;
    v2.word4 = v4;
    v11 = v12 = v2.word3;
    v11 = v13 = _SafeAdd(amount0, amount1);
    v14 = 0x16fe(MEM[64 + v2.word4]);
    MEM[0] = MEM[0];
    if (!(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 - address(v14))) {
        if (v13 >= v12) {
        }
    }
    v15 = 0x175e(v2.word4, v11);
    MEM[MEM[64] + 68] = v2.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v16 = v17, /* uint256 */ v18, /* uint256 */ v19 = address(v2.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v20 = v21 = 96;
    } else {
        v20 = v22 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());
    }
    if (v17) {
        v16 = v23 = !MEM[v20];
        if (MEM[v20]) {
            require(v19 + MEM[v20] - v19 >= 32);
            v16 = MEM[v19];
            require(v16 == bool(v16));
        }
    }
    require(v16, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v2.word0) {
        _uniswapV3SwapCallback = v13;
        stor_2 = v11;
        stor_3 = v15;
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 160);
    v1 = 0x327c();
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v1.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == bool(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    v1.word3 = msg.data[96 + (4 + data + 32 + data.word1)];
    require(msg.data[4 + data + 32 + data.word1 + 128] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 128];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word4 = v3;
    if (amount0Delta > 0) {
        v4 = v5 = 0x3b02(amount1Delta);
    } else {
        v4 = v6 = 0x3b02(amount0Delta);
    }
    v4 = v7 = v1.word3;
    v8 = 0x16fe(v1.word2);
    MEM[0] = MEM[0];
    if (address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v8)) {
        if (v4 >= v7) {
        }
    }
    v9 = v10 = 0;
    if (v11.length) {
        v12 = 0x36df(v13.data, v13.data + v13.length);
        v9 = 0x175e(v12, v4);
    }
    MEM[MEM[64] + 68] = v14;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v15 = v16, /* uint256 */ v17, /* uint256 */ v18 = address(v1.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v19 = v20 = 96;
    } else {
        v19 = v21 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
    }
    if (v16) {
        v15 = v22 = !MEM[v19];
        if (MEM[v19]) {
            require(v18 + MEM[v19] - v18 >= 32);
            v15 = MEM[v18];
            require(v15 == bool(v15));
        }
    }
    require(v15, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v1.word0) {
        _uniswapV3SwapCallback = v4;
        stor_2 = v1.word3;
        stor_3 = v9;
    }
}

function 0x990(uint256 varg0) private { 
    MEM[64] += 96;
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    v0 = v1 = msg.sender == 0x8a307c4f0de05dbc79522d5e196e77823bcc9223;
    if (msg.sender != 0x8a307c4f0de05dbc79522d5e196e77823bcc9223) {
        v0 = msg.sender == 0xbcd7749dfdc396287172208b9d5da865ec471b81;
    }
    require(v0, Error(8559));
    require(varg0 + 64 - (varg0 + 32) >= 32);
    require(msg.data[varg0 + 32] == bytes4(msg.data[varg0 + 32]));
    if (bytes4(msg.data[varg0 + 32])) {
        v2 = _SafeSub(block.number, 1);
        require(varg0 + 64 - (varg0 + 32) >= 32);
        require(msg.data[varg0 + 32] == bytes4(msg.data[varg0 + 32]));
        require(bytes4(msg.data[varg0 + 32]) == bytes4(keccak256(block.timestamp, block.blockhash(v2))), Error(0x444546));
    }
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
    owner_0_0_19 = msg.data[32 + (msg.data[varg0 + 64] + varg0)];
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
    require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
    require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
    v3 = msg.data[varg0 + 64] + varg0;
    require(v3 + 32 - v3 >= 32);
    require(msg.data[v3] == uint8(msg.data[v3]));
    if (6 - uint8(msg.data[v3])) {
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        v4 = msg.data[varg0 + 64] + varg0;
        require(v4 + 32 - v4 >= 32);
        require(msg.data[v4] == uint8(msg.data[v4]));
        if (1 - uint8(msg.data[v4])) {
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            v5 = msg.data[varg0 + 64] + varg0;
            require(v5 + 32 - v5 >= 32);
            require(msg.data[v5] == uint8(msg.data[v5]));
            require(!(7 - uint8(msg.data[v5])), Error(0x46504e53));
            v6 = new struct(8);
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            require(msg.data[64 + varg0] + varg0 + 96 - (64 + (msg.data[64 + varg0] + varg0)) >= 32);
            require(msg.data[64 + (msg.data[64 + varg0] + varg0)] == address(msg.data[64 + (msg.data[64 + varg0] + varg0)]));
            v6.word0 = address(msg.data[64 + (msg.data[64 + varg0] + varg0)]);
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
            require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
            v6.word1 = address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]);
            v6.word2 = msg.data[96 + varg0];
            if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
                v7 = v8 = 0x3f3f(1, 0x1000276a3);
            } else {
                v7 = v9 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v6.word3 = address(v7);
            v10 = new struct(2);
            v10.word0 = address(0x4444c5dc75cb358380d2e3de08a90);
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            v11 = msg.data[64 + varg0] + varg0;
            require(msg.data[v11 + 160] < msg.data.length - v11 - 31);
            require(msg.data[v11 + msg.data[v11 + 160]] <= uint64.max);
            require(32 + (v11 + msg.data[v11 + 160]) <= msg.data.length - msg.data[v11 + msg.data[v11 + 160]]);
            v12 = new bytes[](msg.data[v11 + msg.data[v11 + 160]]);
            CALLDATACOPY(v12.data, 32 + (v11 + msg.data[v11 + 160]), msg.data[v11 + msg.data[v11 + 160]]);
            v12[msg.data[v11 + msg.data[v11 + 160]]] = 0;
            v10.word1 = v12;
            v6.word4 = v10;
            require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
            v13 = msg.data[varg0 + 160] + varg0;
            MEM[32 + MEM[64]] = 32;
            require(msg.data[v13] == uint8(msg.data[v13]));
            MEM[32 + MEM[64] + 32] = uint8(msg.data[v13]);
            require(msg.data[v13 + 32] == address(msg.data[v13 + 32]));
            MEM[32 + MEM[64] + 64] = address(msg.data[v13 + 32]);
            require(msg.data[v13 + 64] == address(msg.data[v13 + 64]));
            MEM[32 + MEM[64] + 96] = address(msg.data[v13 + 64]);
            require(msg.data[v13 + 96] == address(msg.data[v13 + 96]));
            MEM[32 + MEM[64] + 128] = address(msg.data[v13 + 96]);
            require(msg.data[v13 + 128] < msg.data.length - v13 - 31);
            v14 = v15 = v13 + msg.data[v13 + 128] + 32;
            require(msg.data[v13 + msg.data[v13 + 128]] <= uint64.max);
            require(v15 <= msg.data.length - (msg.data[v13 + msg.data[v13 + 128]] << 5));
            MEM[32 + MEM[64] + 160] = 224;
            MEM[32 + MEM[64] + (uint8.max + 1)] = msg.data[v13 + msg.data[v13 + 128]];
            v16 = 32 + MEM[64] + (uint8.max + 1) + 32;
            v17 = 0;
            while (v17 < msg.data[v13 + msg.data[v13 + 128]]) {
                require(msg.data[v14] == uint24(msg.data[v14]));
                MEM[v16] = uint24(msg.data[v14]);
                v16 += 32;
                v14 += 32;
                v17 += 1;
            }
            MEM[32 + MEM[64] + 192] = msg.data[v13 + 160];
            require(msg.data[v13 + 192] < msg.data.length - v13 - 31);
            require(msg.data[v13 + msg.data[v13 + 192]] <= uint64.max);
            require(v13 + msg.data[v13 + 192] + 32 <= msg.data.length - msg.data[v13 + msg.data[v13 + 192]]);
            MEM[32 + MEM[64] + 224] = v16 - (32 + MEM[64]) - 32;
            MEM[v16] = msg.data[v13 + msg.data[v13 + 192]];
            CALLDATACOPY(v16 + 32, v13 + msg.data[v13 + 192] + 32, msg.data[v13 + msg.data[v13 + 192]]);
            MEM[32 + (msg.data[v13 + msg.data[v13 + 192]] + v16)] = 0;
            MEM[MEM[64]] = v16 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13 + msg.data[v13 + 192]] + 31) + 32 - MEM[64] - 32;
            MEM[64] = v16 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13 + msg.data[v13 + 192]] + 31) + 32;
            v6.word5 = MEM[64];
            v6.word6 = msg.data[192 + varg0];
            require(varg0 + 32 - varg0 >= 32);
            v18 = msg.data[varg0];
            require(v18 == bool(v18));
            v6.word7 = bool(v18);
            MEM[32 + MEM[64]] = 32;
            MEM[64 + MEM[64]] = address(v6.word0);
            MEM[32 + MEM[64] + 64] = address(v6.word1);
            MEM[32 + MEM[64] + 96] = v6.word2;
            MEM[32 + MEM[64] + 128] = address(v6.word3);
            MEM[32 + MEM[64] + 160] = uint8.max + 1;
            MEM[32 + MEM[64] + 288] = address(MEM[v6.word4]);
            MEM[32 + MEM[64] + 288 + 32] = 64;
            MEM[32 + MEM[64] + 288 + 64] = MEM[MEM[v6.word4 + 32]];
            MCOPY(32 + MEM[64] + 288 + 64 + 32, MEM[v6.word4 + 32] + 32, MEM[MEM[v6.word4 + 32]]);
            MEM[32 + MEM[64] + 288 + 64 + MEM[MEM[v6.word4 + 32]] + 32] = 0;
            v19 = 32 + MEM[64] + 288 + 64 + (MEM[MEM[v6.word4 + 32]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
            MEM[32 + MEM[64] + 192] = v19 - (32 + MEM[64]) - 32;
            MEM[v19] = MEM[v6.word5];
            MCOPY(v19 + 32, v6.word5 + 32, MEM[v6.word5]);
            MEM[v19 + MEM[v6.word5] + 32] = 0;
            MEM[32 + MEM[64] + 224] = v6.word6;
            MEM[32 + MEM[64] + (uint8.max + 1)] = bool(v6.word7);
            MEM[v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
            MEM[4 + (v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32)] = 32;
            MEM[4 + (v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32] = v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32;
            MCOPY(4 + (v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + 32, MEM[64] + 32, v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[4 + (v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32) + 32 + (v19 + (MEM[v6.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v20, /* uint256 */ v21 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4 + v313eV0x4007V0x4080V0x151dV0xa6d + MEM[v139aV0xa6d.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 + 32 + v313eV0x4007V0x4080V0x151dV0xa6d + MEM[v139aV0xa6d.word5] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
            MEM[64] = v21 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            require(v21 + RETURNDATASIZE() - v21 >= 32);
            require(MEM[v21] <= uint64.max);
            v22 = 0x3692(v21 + MEM[v21], v21 + RETURNDATASIZE());
        } else {
            MEM[64] = MEM[64] + 160;
            require(varg0 + 32 - varg0 >= 32);
            require(msg.data[varg0] == bool(msg.data[varg0]));
            require(msg.data[64 + varg0] < msg.data.length - varg0 - 191);
            require(msg.data[64 + varg0] + varg0 + 96 - (64 + (msg.data[64 + varg0] + varg0)) >= 32);
            require(msg.data[64 + (msg.data[64 + varg0] + varg0)] == address(msg.data[64 + (msg.data[64 + varg0] + varg0)]));
            require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
            v23 = msg.data[varg0 + 160] + varg0;
            MEM[32 + MEM[64]] = 32;
            require(msg.data[v23] == uint8(msg.data[v23]));
            MEM[32 + MEM[64] + 32] = uint8(msg.data[v23]);
            require(msg.data[v23 + 32] == address(msg.data[v23 + 32]));
            MEM[32 + MEM[64] + 64] = address(msg.data[v23 + 32]);
            require(msg.data[v23 + 64] == address(msg.data[v23 + 64]));
            MEM[32 + MEM[64] + 96] = address(msg.data[v23 + 64]);
            require(msg.data[v23 + 96] == address(msg.data[v23 + 96]));
            MEM[32 + MEM[64] + 128] = address(msg.data[v23 + 96]);
            require(msg.data[v23 + 128] < msg.data.length - v23 - 31);
            v24 = v25 = v23 + msg.data[v23 + 128] + 32;
            require(msg.data[v23 + msg.data[v23 + 128]] <= uint64.max);
            require(v25 <= msg.data.length - (msg.data[v23 + msg.data[v23 + 128]] << 5));
            MEM[32 + MEM[64] + 160] = 224;
            MEM[32 + MEM[64] + (uint8.max + 1)] = msg.data[v23 + msg.data[v23 + 128]];
            v26 = 32 + MEM[64] + (uint8.max + 1) + 32;
            v27 = 0;
            while (v27 < msg.data[v23 + msg.data[v23 + 128]]) {
                require(msg.data[v24] == uint24(msg.data[v24]));
                MEM[v26] = uint24(msg.data[v24]);
                v26 += 32;
                v24 += 32;
                v27 += 1;
            }
            MEM[32 + MEM[64] + 192] = msg.data[v23 + 160];
            require(msg.data[v23 + 192] < msg.data.length - v23 - 31);
            require(msg.data[v23 + msg.data[v23 + 192]] <= uint64.max);
            require(v23 + msg.data[v23 + 192] + 32 <= msg.data.length - msg.data[v23 + msg.data[v23 + 192]]);
            MEM[32 + MEM[64] + 224] = v26 - (32 + MEM[64]) - 32;
            MEM[v26] = msg.data[v23 + msg.data[v23 + 192]];
            CALLDATACOPY(v26 + 32, v23 + msg.data[v23 + 192] + 32, msg.data[v23 + msg.data[v23 + 192]]);
            MEM[32 + (msg.data[v23 + msg.data[v23 + 192]] + v26)] = 0;
            MEM[MEM[64]] = v26 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v23 + msg.data[v23 + 192]] + 31) + 32 - MEM[64] - 32;
            MEM[32 + MEM[64]] = 32;
            MEM[32 + MEM[64] + 32] = bool(msg.data[varg0]);
            MEM[32 + MEM[64] + 64] = address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]);
            MEM[32 + MEM[64] + 96] = address(msg.data[64 + (msg.data[64 + varg0] + varg0)]);
            MEM[32 + MEM[64] + 128] = msg.data[varg0 + 192];
            MEM[32 + MEM[64] + 160] = 160;
            MEM[32 + MEM[64] + 192] = MEM[MEM[64]];
            MCOPY(32 + MEM[64] + 192 + 32, MEM[64] + 32, MEM[MEM[64]]);
            MEM[32 + MEM[64] + 192 + MEM[MEM[64]] + 32] = 0;
            MEM[64] = 32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
            require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
            require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
            require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
            if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
                v28 = v29 = 0x3f3f(1, 0x1000276a3);
            } else {
                v28 = v30 = 0x3f20(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v31 = new uint256[](32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MCOPY(v31.data, MEM[64] + 32, 32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
            MEM[v31 + (32 + MEM[64] + 192 + (MEM[MEM[64]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
            v32, /* uint256 */ v33, /* uint256 */ v34 = address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]).swap(address(this), address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]), msg.data[96 + varg0], address(v28), v31).gas(msg.gas);
            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        }
    } else {
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 128 - (96 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[96 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[96 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        v35 = msg.data[varg0 + 64] + varg0;
        require(msg.data[v35 + 128] < msg.data.length - v35 - 31);
        require(msg.data[v35 + msg.data[v35 + 128]] <= uint64.max);
        require(32 + (v35 + msg.data[v35 + 128]) <= msg.data.length - (msg.data[v35 + msg.data[v35 + 128]] << 5));
        require(0 < msg.data[v35 + msg.data[v35 + 128]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(32 + (v35 + msg.data[v35 + 128]) + 32 - (32 + (v35 + msg.data[v35 + 128])) >= 32);
        require(msg.data[32 + (v35 + msg.data[v35 + 128])] == uint24(msg.data[32 + (v35 + msg.data[v35 + 128])]));
        v36, v37 = 0x2ae3(msg.data[32 + (msg.data[varg0 + 64] + varg0)], msg.data[96 + (msg.data[varg0 + 64] + varg0)], msg.data[64 + (msg.data[varg0 + 64] + varg0)]);
        v38 = 0x2b46(uint24(msg.data[32 + (v35 + msg.data[v35 + 128])]), v36, v37, msg.data[varg0 + 96]);
        if (address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]) < address(msg.data[96 + (msg.data[varg0 + 64] + varg0)])) {
            v38 = v39 = 0;
        } else {
            v38 = v40 = 0;
        }
        MEM[64] = MEM[64] + 160;
        require(varg0 + 32 - varg0 >= 32);
        require(msg.data[varg0] == bool(msg.data[varg0]));
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 96 - (64 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[64 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]));
        require(msg.data[varg0 + 160] < msg.data.length - varg0 - 223);
        v41 = msg.data[varg0 + 160] + varg0;
        require(msg.data.length - v41 >= 224);
        v42 = 0x325a();
        require(msg.data[v41] == uint8(msg.data[v41]));
        v42.word0 = msg.data[v41];
        require(msg.data[v41 + 32] == address(msg.data[v41 + 32]));
        v42.word1 = msg.data[v41 + 32];
        require(msg.data[v41 + 64] == address(msg.data[v41 + 64]));
        v42.word2 = msg.data[v41 + 64];
        require(msg.data[v41 + 96] == address(msg.data[v41 + 96]));
        v42.word3 = msg.data[v41 + 96];
        require(msg.data[v41 + 128] <= uint64.max);
        require(v41 + msg.data[v41 + 128] + 31 < msg.data.length);
        require(msg.data[v41 + msg.data[v41 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v43 = new uint256[](msg.data[v41 + msg.data[v41 + 128]]);
        require(!((v43 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v41 + msg.data[v41 + 128]] << 5) + 31) < v43) | (v43 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v41 + msg.data[v41 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v44 = v45 = v43.data;
        require(v41 + msg.data[v41 + 128] + (msg.data[v41 + msg.data[v41 + 128]] << 5) + 32 <= msg.data.length);
        v46 = v47 = v41 + msg.data[v41 + 128] + 32;
        while (v46 < v41 + msg.data[v41 + 128] + (msg.data[v41 + msg.data[v41 + 128]] << 5) + 32) {
            require(msg.data[v46] == uint24(msg.data[v46]));
            MEM[v44] = msg.data[v46];
            v44 += 32;
            v46 += 32;
        }
        v42.word4 = v43;
        v42.word5 = msg.data[160 + v41];
        require(msg.data[v41 + 192] <= uint64.max);
        require(v41 + msg.data[v41 + 192] + 31 < msg.data.length);
        require(msg.data[v41 + msg.data[v41 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v48 = new bytes[](msg.data[v41 + msg.data[v41 + 192]]);
        require(!((v48 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v41 + msg.data[v41 + 192]]) + 31) < v48) | (v48 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v41 + msg.data[v41 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v41 + msg.data[v41 + 192] + msg.data[v41 + msg.data[v41 + 192]] + 32 <= msg.data.length);
        CALLDATACOPY(v48.data, v41 + msg.data[v41 + 192] + 32, msg.data[v41 + msg.data[v41 + 192]]);
        v48[msg.data[v41 + msg.data[v41 + 192]]] = 0;
        v42.word6 = v48;
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = bool(msg.data[varg0]);
        MEM[32 + MEM[64] + 64] = address(msg.data[64 + (msg.data[varg0 + 64] + varg0)]);
        MEM[32 + MEM[64] + 96] = msg.data[varg0 + 96];
        MEM[32 + MEM[64] + 128] = msg.data[varg0 + 192];
        MEM[32 + MEM[64] + 160] = 160;
        MEM[32 + MEM[64] + 192] = uint8(MEM[v42]);
        MEM[32 + MEM[64] + 224] = address(MEM[v42 + 32]);
        MEM[32 + MEM[64] + (uint8.max + 1)] = address(MEM[v42 + 64]);
        MEM[32 + MEM[64] + 288] = address(MEM[v42 + 96]);
        MEM[32 + MEM[64] + 320] = 224;
        MEM[32 + MEM[64] + 416] = MEM[MEM[v42 + 128]];
        v49 = v50 = 32 + MEM[64] + 416 + 32;
        v51 = v52 = MEM[v42 + 128] + 32;
        v53 = v54 = 0;
        while (v53 < MEM[MEM[v42 + 128]]) {
            MEM[v49] = uint24(MEM[v51]);
            v49 += 32;
            v51 = v51 + 32;
            v53 += 1;
        }
        MEM[32 + MEM[64] + 352] = MEM[v42 + 160];
        MEM[32 + MEM[64] + 384] = v49 - (32 + MEM[64]) - 192;
        MEM[v49] = MEM[MEM[v42 + 192]];
        MCOPY(v49 + 32, MEM[v42 + 192] + 32, MEM[MEM[v42 + 192]]);
        MEM[v49 + MEM[MEM[v42 + 192]] + 32] = 0;
        MEM[64] = v49 + (MEM[MEM[v42 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
        require(msg.data[varg0 + 64] < msg.data.length - varg0 - 191);
        require(msg.data[varg0 + 64] + varg0 + 64 - (32 + (msg.data[varg0 + 64] + varg0)) >= 32);
        require(msg.data[32 + (msg.data[varg0 + 64] + varg0)] == address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]));
        v55 = new uint256[](v49 + (MEM[MEM[v42 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MCOPY(v55.data, MEM[64] + 32, v49 + (MEM[MEM[v42 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
        MEM[v55 + (v49 + (MEM[MEM[v42 + 192]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32) + 32] = 0;
        require(bool((address(msg.data[32 + (msg.data[varg0 + 64] + varg0)])).code.size));
        v56 = address(msg.data[32 + (msg.data[varg0 + 64] + varg0)]).swap(v38, v38, address(this), v55).gas(msg.gas);
        require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    require(1 == owner_0_0_19, Error('LPCNN'));
    MEM[0] = MEM[0];
    v57, /* uint256 */ v58 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v59 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v58).gas(msg.gas);
    require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v60 = this.balance;
    v61 = v62 = msg.data[varg0 + (uint8.max + 1)];
    require(varg0 + 320 - (varg0 + 288) >= 32);
    v63 = msg.data[varg0 + 288];
    require(v63 == bool(v63));
    if (v63) {
        v63 = v64 = v60 != msg.data[varg0 + 320];
    }
    if (v63) {
        require(v60 > msg.data[224 + varg0], Error(0x666221));
        v65 = _SafeSub(v60, msg.data[varg0 + 224]);
        v66 = _SafeMul(990, v65);
        v61 = v67 = _SafeDiv(v66, 1000);
    }
    require(v60 > v61, Error(28705));
    v68 = _SafeAdd(msg.data[varg0 + 224], v61);
    require(v60 > v68, Error(27937));
    if (msg.data[varg0 + (uint8.max + 1)]) {
        v69 = block.coinbase.call().value(v61).gas(2300 * !v61);
        require(bool(v69), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    v70 = _SafeSub(v60, v61);
    MCOPY(MEM[64] + 32, MEM[64] + 32, 0);
    v71, /* uint256 */ v72 = msg.sender.call(0).value(v70).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v73 = new bytes[](RETURNDATASIZE());
        v72 = v73.data;
        RETURNDATACOPY(v72, 0, RETURNDATASIZE());
    }
    require(v71, Error('ETH_TRANSFER_FAILED'));
    return MEM[64];
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 160);
    v1 = 0x327c();
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v1.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == bool(msg.data[4 + data + 32 + data.word1 + 32]));
    v1.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(msg.data[4 + data + 32 + data.word1 + 64] == address(msg.data[4 + data + 32 + data.word1 + 64]));
    v1.word2 = msg.data[4 + data + 32 + data.word1 + 64];
    v1.word3 = msg.data[96 + (4 + data + 32 + data.word1)];
    require(msg.data[4 + data + 32 + data.word1 + 128] <= uint64.max);
    v2 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 128];
    require(v2 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v2] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v2]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v2 + msg.data[v2] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v3.data, v2 + 32, msg.data[v2]);
    v3[msg.data[v2]] = 0;
    v1.word4 = v3;
    if (amount0Delta > 0) {
        v4 = v5 = 0x3b02(amount1Delta);
    } else {
        v4 = v6 = 0x3b02(amount0Delta);
    }
    v4 = v7 = v1.word3;
    v8 = 0x16fe(v1.word2);
    MEM[0] = MEM[0];
    if (address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) != address(v8)) {
        if (v4 >= v7) {
        }
    }
    v9 = v10 = 0;
    if (v11.length) {
        v12 = 0x36df(v13.data, v13.data + v13.length);
        v9 = 0x175e(v12, v4);
    }
    MEM[MEM[64] + 68] = v14;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v15 = v16, /* uint256 */ v17, /* uint256 */ v18 = address(v1.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v19 = v20 = 96;
    } else {
        v19 = v21 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
    }
    if (v16) {
        v15 = v22 = !MEM[v19];
        if (MEM[v19]) {
            require(v18 + MEM[v19] - v18 >= 32);
            v15 = MEM[v18];
            require(v15 == bool(v15));
        }
    }
    require(v15, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v1.word0) {
        _uniswapV3SwapCallback = v4;
        stor_2 = v1.word3;
        stor_3 = v9;
    }
}

function croDefiSwapCall(address varg0, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x161b();
    v1 = 4 + data + 32 + msg.data[4 + data];
    require(v1 - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(v1 - (4 + data + 32 + data.word1) >= 160);
    v2 = 0x327c();
    require(msg.data[4 + data + 32 + data.word1] == bool(msg.data[4 + data + 32 + data.word1]));
    v2.word0 = msg.data[4 + data + 32 + data.word1];
    require(msg.data[4 + data + 32 + data.word1 + 32] == address(msg.data[4 + data + 32 + data.word1 + 32]));
    v2.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v2.word2 = msg.data[64 + (4 + data + 32 + data.word1)];
    v2.word3 = msg.data[4 + data + 32 + data.word1 + 96];
    require(msg.data[4 + data + 32 + data.word1 + 128] <= uint64.max);
    v3 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1 + 128];
    require(v1 - v3 >= 224);
    v4 = 0x325a();
    require(msg.data[v3] == uint8(msg.data[v3]));
    v4.word0 = msg.data[v3];
    require(msg.data[v3 + 32] == address(msg.data[v3 + 32]));
    v4.word1 = msg.data[v3 + 32];
    require(msg.data[v3 + 64] == address(msg.data[v3 + 64]));
    v4.word2 = msg.data[v3 + 64];
    require(msg.data[v3 + 96] == address(msg.data[v3 + 96]));
    v4.word3 = msg.data[v3 + 96];
    require(msg.data[v3 + 128] <= uint64.max);
    require(v3 + msg.data[v3 + 128] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 128]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](msg.data[v3 + msg.data[v3 + 128]]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32 <= v1);
    v8 = v9 = v3 + msg.data[v3 + 128] + 32;
    while (v8 < v3 + msg.data[v3 + 128] + (msg.data[v3 + msg.data[v3 + 128]] << 5) + 32) {
        require(msg.data[v8] == uint24(msg.data[v8]));
        MEM[v6] = msg.data[v8];
        v6 += 32;
        v8 += 32;
    }
    v4.word4 = v5;
    v4.word5 = msg.data[160 + v3];
    require(msg.data[v3 + 192] <= uint64.max);
    require(v3 + msg.data[v3 + 192] + 31 < v1);
    require(msg.data[v3 + msg.data[v3 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](msg.data[v3 + msg.data[v3 + 192]]);
    require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v3 + msg.data[v3 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v3 + msg.data[v3 + 192] + msg.data[v3 + msg.data[v3 + 192]] + 32 <= v1);
    CALLDATACOPY(v10.data, v3 + msg.data[v3 + 192] + 32, msg.data[v3 + msg.data[v3 + 192]]);
    v10[msg.data[v3 + msg.data[v3 + 192]]] = 0;
    v4.word6 = v10;
    v2.word4 = v4;
    v11 = v12 = v2.word3;
    v11 = v13 = _SafeAdd(amount0, amount1);
    v14 = 0x16fe(MEM[64 + v2.word4]);
    MEM[0] = MEM[0];
    if (!(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 - address(v14))) {
        if (v13 >= v12) {
        }
    }
    v15 = 0x175e(v2.word4, v11);
    MEM[MEM[64] + 68] = v2.word2;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v16 = v17, /* uint256 */ v18, /* uint256 */ v19 = address(v2.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v20 = v21 = 96;
    } else {
        v20 = v22 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());
    }
    if (v17) {
        v16 = v23 = !MEM[v20];
        if (MEM[v20]) {
            require(v19 + MEM[v20] - v19 >= 32);
            v16 = MEM[v19];
            require(v16 == bool(v16));
        }
    }
    require(v16, Error('TransferHelper::safeTransfer: transfer failed'));
    if (v2.word0) {
        _uniswapV3SwapCallback = v13;
        stor_2 = v11;
        stor_3 = v15;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (msg.data.length) {
            exit;
        } else {
            receive();
        }
    } else if (0x84800812 > function_selector >> 224) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x5c19a95c == function_selector >> 224) {
            delegate(address);
        } else if (0x6c813d29 == function_selector >> 224) {
            croDefiSwapCall(address,uint256,uint256,bytes);
        } else if (0x7245c8bb == function_selector >> 224) {
            0x7245c8bb();
        } else {
            exit;
        }
    } else if (0x84800812 == function_selector >> 224) {
        pancakeCall(address,uint256,uint256,bytes);
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else if (0x9571eff2 == function_selector >> 224) {
        0x9571eff2();
    } else if (0xcf3da698 == function_selector >> 224) {
        0xcf3da698();
    } else if (0xf787adea == function_selector >> 224) {
        0xf787adea();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else {
        exit;
    }
}
