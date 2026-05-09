// Decompiled by library.dedaub.com
// 2025.12.16 06:23 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
uint256 _executeSwap; // STORAGE[0x0]



function @safeTransfer_330(uint256 varg0, address varg1, address varg2) private { 
    MEM[64] = MEM[64] + 100;
    require(this.balance >= 0, AddressInsufficientBalance(this));
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v9 = v10 = !MEM[v6];
        if (!bool(MEM[v6])) {
            v9 = !varg2.code.size;
        }
        require(!v9, AddressEmptyCode(varg2));
        v11 = v12 = 0 != MEM[v6];
        if (0 != MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            require(MEM[32 + v6] == bool(MEM[32 + v6]));
            v11 = !MEM[32 + v6];
        }
        require(!v11, SafeERC20FailedOperation(varg2));
        return ;
    } else {
        require(!MEM[v6], v5, MEM[v6]);
        revert(FailedInnerCall());
    }
}

function executeSwap((address,uint256,address) targetTokenTransferInfos, [] swapDescriptions) public payable { 
    require(msg.data.length - 4 >= 64);
    require(targetTokenTransferInfos <= uint64.max);
    require(4 + targetTokenTransferInfos + 31 < msg.data.length);
    require(targetTokenTransferInfos.length <= uint64.max);
    require(4 + targetTokenTransferInfos + targetTokenTransferInfos.length * 96 + 32 <= msg.data.length);
    require(swapDescriptions <= uint64.max);
    require(4 + swapDescriptions + 31 < msg.data.length);
    require(swapDescriptions.length <= uint64.max);
    require(4 + swapDescriptions + (swapDescriptions.length << 5) + 32 <= msg.data.length);
    require(_executeSwap - 2, ReentrancyGuardReentrantCall());
    _executeSwap = 2;
    v0 = v1 = 0;
    while (v0 < swapDescriptions.length) {
        require(v0 < swapDescriptions.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(swapDescriptions[v0] < msg.data.length - swapDescriptions.data - 63);
        require(swapDescriptions[v0] + swapDescriptions.data + 32 - (swapDescriptions[v0] + swapDescriptions.data) >= 32);
        require(msg.data[swapDescriptions[v0] + swapDescriptions.data] == address(msg.data[swapDescriptions[v0] + swapDescriptions.data]));
        v2 = @universalBalanceOf_5279(this, address(msg.data[swapDescriptions[v0] + swapDescriptions.data]));
        require(0 - v2, SwapTotalAmountCannotBeZero());
        v3 = msg.data.length;
        require(v0 < swapDescriptions.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(swapDescriptions[v0] < msg.data.length - swapDescriptions.data - 63);
        require(msg.data[swapDescriptions[v0] + swapDescriptions.data + 32] < msg.data.length - (swapDescriptions[v0] + swapDescriptions.data) - 31);
        require(msg.data[swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]] <= uint64.max);
        require(32 + (swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]) <= msg.data.length - (msg.data[swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]] << 5));
        v4 = v5 = 0;
        while (v4 < msg.data[swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]]) {
            v6 = msg.data.length;
            require(v4 < msg.data[swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[32 + (swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]) + (v4 << 5)] < msg.data.length - (32 + (swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32])) - 127);
            v7 = msg.data[32 + (swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]) + (v4 << 5)] + (32 + (swapDescriptions[v0] + swapDescriptions.data + msg.data[swapDescriptions[v0] + swapDescriptions.data + 32]));
            if (msg.data[v7 + 96] >> 248) {
                if (uint8(msg.data[v7 + 96] >> 248) - 1) {
                    require(2 < 3, Panic(33)); // failed convertion to enum type
                    revert(EnumOutOfRangeValue(2, uint8(msg.data[v7 + 96] >> 248)));
                } else {
                    if (uint32(msg.data[v7 + 96] >> 208) == uint32.max) {
                        require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                        require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                        require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                        v8 = v9 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                        CALLDATACOPY(v9.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                        v9[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                    } else if (uint32(msg.data[v7 + 96] >> 208) & 0x80000000 == 0x80000000) {
                        require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                        require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                        require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                        v10 = (uint256.max + v2) * msg.data[v7] / 10 ** 18 << 128;
                        v8 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                        CALLDATACOPY(v8.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                        v8[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                        v11 = v8 + (uint32(msg.data[v7 + 96] >> 208) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff7fffffff);
                        MEM8[v11] = (byte(v10, 0x0)) & 0xFF;
                        MEM8[v11 + 1] = (byte(v10, 0x1)) & 0xFF;
                        MEM8[v11 + 2] = (byte(v10, 0x2)) & 0xFF;
                        MEM8[v11 + 3] = (byte(v10, 0x3)) & 0xFF;
                        MEM8[v11 + 4] = (byte(v10, 0x4)) & 0xFF;
                        MEM8[v11 + 5] = (byte(v10, 0x5)) & 0xFF;
                        MEM8[v11 + 6] = (byte(v10, 0x6)) & 0xFF;
                        MEM8[v11 + 7] = (byte(v10, 0x7)) & 0xFF;
                        MEM8[v11 + 8] = (byte(v10, 0x8)) & 0xFF;
                        MEM8[v11 + 9] = (byte(v10, 0x9)) & 0xFF;
                        MEM8[v11 + 10] = (byte(v10, 0xa)) & 0xFF;
                        MEM8[v11 + 11] = (byte(v10, 0xb)) & 0xFF;
                        MEM8[v11 + 12] = (byte(v10, 0xc)) & 0xFF;
                        MEM8[v11 + 13] = (byte(v10, 0xd)) & 0xFF;
                        MEM8[v11 + 14] = (byte(v10, 0xe)) & 0xFF;
                        MEM8[v11 + 15] = (byte(v10, 0xf)) & 0xFF;
                    } else {
                        require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                        require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                        require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                        v8 = v12 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                        CALLDATACOPY(v12.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                        v12[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                        MEM[v12 + uint32(msg.data[v7 + 96] >> 208)] = (uint256.max + v2) * msg.data[v7] / 10 ** 18;
                    }
                    require(v7 + 64 - (v7 + 32) >= 32);
                    require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
                    v13 = v14 = 0;
                    while (v13 < MEM[v8]) {
                        MEM[v13 + MEM[64]] = MEM[v13 + (v8 + 32)];
                        v13 += 32;
                    }
                    MEM[MEM[v8] + MEM[64]] = 0;
                    v15 = address(msg.data[v7 + 32]).staticcall(MEM[MEM[64]:MEM[64] + MEM[v1515V0x816V0x120] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v16 = v17 = 96;
                    } else {
                        v16 = v18 = MEM[64];
                        MEM[v18] = RETURNDATASIZE();
                        RETURNDATACOPY(v18 + 32, 0, RETURNDATASIZE());
                    }
                    if (v15) {
                        require(32 + v16 + MEM[v16] - (32 + v16) >= 128);
                        require(MEM[32 + v16] == address(MEM[32 + v16]));
                        require(MEM[32 + v16 + 32] == address(MEM[32 + v16 + 32]));
                        require(MEM[32 + v16 + 96] <= uint64.max);
                        require(32 + v16 + MEM[32 + v16 + 96] + 31 < 32 + v16 + MEM[v16]);
                        v19 = MEM[32 + v16 + MEM[32 + v16 + 96]];
                        require(v19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v19 + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(32 + v16 + MEM[32 + v16 + 96] + v19 + 32 <= 32 + v16 + MEM[v16]);
                        v20 = v21 = 0;
                        while (v20 < v19) {
                            MEM[v20 + (MEM[64] + 32)] = MEM[v20 + (32 + v16 + MEM[32 + v16 + 96] + 32)];
                            v20 += 32;
                        }
                        MEM[v19 + (MEM[64] + 32)] = 0;
                        require(bytes4(MEM[MEM[64] + 32]) != 0x23b872dd00000000000000000000000000000000000000000000000000000000, TransferFromNotAllowed());
                        require(address(MEM[32 + v16]) + 0xffffffffffffffffffffffffe7df5b489e74218e23173238c554936a6fa052dc, ERC1820InterfactionForbidden());
                        v22 = @performSourceTokenInteractionAndGetEthValue_3810(MEM[32 + v16 + 32], msg.data[v7 + 96] >> 240, MEM[32 + v16 + 64], msg.data[swapDescriptions[v0] + swapDescriptions.data]);
                        v23 = address(MEM[32 + v16]);
                        v24 = v25 = 0;
                        while (v24 < v19) {
                            MEM[v24 + MEM[64]] = MEM[v24 + (MEM[64] + 32)];
                            v24 += 32;
                        }
                        MEM[v19 + MEM[64]] = 0;
                        v26 = v19 + MEM[64];
                    } else {
                        v27 = v28 = 0;
                        if (MEM[v16] >= 4) {
                            v27 = MEM[v16 + 32];
                        }
                        v29 = v30 = 0x8c379a000000000000000000000000000000000000000000000000000000000 == bytes4(v27);
                        if (v30) {
                            v29 = MEM[v16] >= 68;
                        }
                        if (!v29) {
                            v31 = v32 = 0x4e487b7100000000000000000000000000000000000000000000000000000000 == bytes4(v27);
                            if (v32) {
                                v31 = 36 == MEM[v16];
                            }
                            if (v31) {
                                MEM[32 + MEM[64]] = MEM[v16 + 36];
                                v33 = v34 = MEM[64] + 34;
                                MEM[MEM[64] + 2] = 12408;
                                v35 = v36 = MEM[64] + 32;
                                while (v35 < v36 + 32) {
                                    v37 = (bytes8(MEM[v35]) | (MEM[v35] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v35]) | (MEM[v35] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                                    v38 = (((v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v37 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                                    MEM[v33] = '00000000000000000000000000000000' + v38 + (v38 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                                    v39 = (bytes8(MEM[v35] << 128) | (MEM[v35] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v35] << 128) | (MEM[v35] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                                    v40 = (((v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v39 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                                    MEM[v33 + 32] = '00000000000000000000000000000000' + v40 + (v40 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                                    v35 += 32;
                                    v33 = v33 + 32 + 32;
                                }
                                v41 = v42 = 0;
                                while (v41 < v43.length) {
                                    MEM[v41 + (32 + MEM[64])] = v43[v41];
                                    v41 += 32;
                                }
                                MEM[v43.length + (32 + MEM[64])] = 0;
                                MEM[32 + MEM[64] + v43.length] = 'Panic(';
                                v44 = v45 = 0;
                                while (v44 < 66) {
                                    MEM[v44 + (32 + MEM[64] + v43.length + 6)] = MEM[v44 + (MEM[64] + 32)];
                                    v44 += 32;
                                }
                                MEM[66 + (32 + MEM[64] + v43.length + 6)] = 0;
                                MEM[66 + (32 + MEM[64] + v43.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                                v46 = v47 = MEM[64];
                                MEM[v47] = 80;
                            }
                        } else {
                            v48 = _SafeAdd(68, MEM[68 + v16]);
                            if (MEM[v16] >= v48) {
                                v49 = v50 = 0;
                                while (v49 < v43.length) {
                                    MEM[v49 + (32 + MEM[64])] = v43[v49];
                                    v49 += 32;
                                }
                                MEM[v43.length + (32 + MEM[64])] = 0;
                                MEM[32 + MEM[64] + v43.length] = 'Error(';
                                v51 = v52 = 0;
                                while (v51 < MEM[68 + v16]) {
                                    MEM[v51 + (32 + MEM[64] + v43.length + 6)] = MEM[v51 + (68 + v16 + 32)];
                                    v51 += 32;
                                }
                                MEM[MEM[68 + v16] + (32 + MEM[64] + v43.length + 6)] = 0;
                                MEM[MEM[68 + v16] + (32 + MEM[64] + v43.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                                v46 = v53 = MEM[64];
                                MEM[v53] = 7 + (MEM[68 + v16] + (32 + MEM[64] + v43.length)) - v53 - 32;
                            }
                        }
                        v54 = new uint256[](MEM[v46]);
                        v55 = v56 = 0;
                        while (v55 < MEM[v46]) {
                            MEM[v55 + v54.data] = MEM[v55 + (v46 + 32)];
                            v55 += 32;
                        }
                        MEM[MEM[v46] + v54.data] = 0;
                        revert(Error(v54));
                        v57 = v58 = MEM[64] + 34;
                        MEM[64] = v58 + (MEM[v16] << 1);
                        MEM[MEM[64] + 2] = 12408;
                        v59 = v60 = v16 + 32;
                        while (v59 < v60 + MEM[v16]) {
                            v61 = (bytes8(MEM[v59]) | (MEM[v59] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v59]) | (MEM[v59] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                            v62 = (((v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v61 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                            MEM[v57] = '00000000000000000000000000000000' + v62 + (v62 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                            v63 = (bytes8(MEM[v59] << 128) | (MEM[v59] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v59] << 128) | (MEM[v59] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                            v64 = (((v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v63 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                            MEM[v57 + 32] = '00000000000000000000000000000000' + v64 + (v64 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                            v59 += 32;
                            v57 = v57 + 32 + 32;
                        }
                        v65 = v66 = 0;
                        while (v65 < v43.length) {
                            MEM[v65 + (32 + MEM[64])] = v43[v65];
                            v65 += 32;
                        }
                        MEM[v43.length + (32 + MEM[64])] = 0;
                        MEM[32 + MEM[64] + v43.length] = 'Unknown(';
                        v67 = v68 = 0;
                        while (v67 < (MEM[v16] << 1) + 2) {
                            MEM[v67 + (32 + MEM[64] + v43.length + 8)] = MEM[v67 + (MEM[64] + 32)];
                            v67 += 32;
                        }
                        MEM[(MEM[v16] << 1) + 2 + (32 + MEM[64] + v43.length + 8)] = 0;
                        MEM[(MEM[v16] << 1) + 2 + (32 + MEM[64] + v43.length) + 8] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                        v46 = MEM[64];
                        MEM[v46] = 9 + ((MEM[v16] << 1) + 2 + (32 + MEM[64] + v43.length)) - v46 - 32;
                        // Unknown jump to Block 0xc15fB0x120. Refer to 3-address code (TAC);
                    }
                }
            } else {
                v22 = v69 = @performSourceTokenInteractionAndGetEthValue_3810(msg.data[v7 + 96], msg.data[v7 + 96] >> 240, (uint256.max + v2) * msg.data[v7] / 10 ** 18, msg.data[swapDescriptions[v0] + swapDescriptions.data]);
                if (uint32(msg.data[v7 + 96] >> 208) == uint32.max) {
                    require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                    require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                    require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                    v70 = v71 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                    CALLDATACOPY(v71.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                    v71[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                } else if (0x80000000 & msg.data[v7 + 96] >> 208 == 0x80000000) {
                    require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                    require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                    require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                    v72 = (uint256.max + v2) * msg.data[v7] / 10 ** 18 << 128;
                    v70 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                    CALLDATACOPY(v70.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                    v70[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                    v73 = v70 + (msg.data[v7 + 96] >> 208 & 0x7fffffff);
                    MEM8[v73] = (byte(v72, 0x0)) & 0xFF;
                    MEM8[v73 + 1] = (byte(v72, 0x1)) & 0xFF;
                    MEM8[v73 + 2] = (byte(v72, 0x2)) & 0xFF;
                    MEM8[v73 + 3] = (byte(v72, 0x3)) & 0xFF;
                    MEM8[v73 + 4] = (byte(v72, 0x4)) & 0xFF;
                    MEM8[v73 + 5] = (byte(v72, 0x5)) & 0xFF;
                    MEM8[v73 + 6] = (byte(v72, 0x6)) & 0xFF;
                    MEM8[v73 + 7] = (byte(v72, 0x7)) & 0xFF;
                    MEM8[v73 + 8] = (byte(v72, 0x8)) & 0xFF;
                    MEM8[v73 + 9] = (byte(v72, 0x9)) & 0xFF;
                    MEM8[v73 + 10] = (byte(v72, 0xa)) & 0xFF;
                    MEM8[v73 + 11] = (byte(v72, 0xb)) & 0xFF;
                    MEM8[v73 + 12] = (byte(v72, 0xc)) & 0xFF;
                    MEM8[v73 + 13] = (byte(v72, 0xd)) & 0xFF;
                    MEM8[v73 + 14] = (byte(v72, 0xe)) & 0xFF;
                    MEM8[v73 + 15] = (byte(v72, 0xf)) & 0xFF;
                } else {
                    require(msg.data[v7 + 64] < msg.data.length - v7 - 31);
                    require(msg.data[v7 + msg.data[v7 + 64]] <= uint64.max);
                    require(32 + (v7 + msg.data[v7 + 64]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 64]]);
                    v70 = v74 = new bytes[](msg.data[v7 + msg.data[v7 + 64]]);
                    CALLDATACOPY(v74.data, 32 + (v7 + msg.data[v7 + 64]), msg.data[v7 + msg.data[v7 + 64]]);
                    v74[msg.data[v7 + msg.data[v7 + 64]]] = 0;
                    MEM[v74 + uint32(msg.data[v7 + 96] >> 208)] = (uint256.max + v2) * msg.data[v7] / 10 ** 18;
                }
                require(0x23b872dd00000000000000000000000000000000000000000000000000000000 != bytes4(MEM[v70 + 32]), TransferFromNotAllowed());
                require(v7 + 64 - (v7 + 32) >= 32);
                require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
                require(address(msg.data[v7 + 32]) - 0x1820a4b7618bde71dce8cdc73aab6c95905fad24, ERC1820InterfactionForbidden());
                require(v7 + 64 - (v7 + 32) >= 32);
                require(msg.data[v7 + 32] == address(msg.data[v7 + 32]));
                v23 = v75 = address(msg.data[v7 + 32]);
                v76 = v77 = 0;
                while (v76 < MEM[v70]) {
                    MEM[v76 + MEM[64]] = MEM[v76 + (v70 + 32)];
                    v76 += 32;
                }
                MEM[MEM[v70] + MEM[64]] = 0;
                v26 = v78 = MEM[v70] + MEM[64];
            }
            v79 = v23.call(MEM[MEM[64]:MEM[64] + v284d0x2713V0xa93V0x120 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v22).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v80 = 96;
            } else {
                v80 = v81 = MEM[64];
                MEM[64] = v81 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                MEM[v81] = RETURNDATASIZE();
                RETURNDATACOPY(v81 + 32, 0, RETURNDATASIZE());
            }
            if (v79) {
                v4 = v4 + 1;
            } else {
                v82 = v83 = 0;
                if (MEM[v80] >= 4) {
                    v82 = MEM[v80 + 32];
                }
                v84 = v85 = 0x8c379a000000000000000000000000000000000000000000000000000000000 == bytes4(v82);
                if (v85) {
                    v84 = MEM[v80] >= 68;
                }
                if (!v84) {
                    v86 = v87 = 0x4e487b7100000000000000000000000000000000000000000000000000000000 == bytes4(v82);
                    if (v87) {
                        v86 = 36 == MEM[v80];
                    }
                    if (v86) {
                        MEM[32 + MEM[64]] = MEM[v80 + 36];
                        v88 = v89 = MEM[64] + 34;
                        MEM[MEM[64] + 2] = 12408;
                        v90 = v91 = MEM[64] + 32;
                        while (v90 < v91 + 32) {
                            v92 = (bytes8(MEM[v90]) | (MEM[v90] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v90]) | (MEM[v90] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                            v93 = (((v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v92 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                            MEM[v88] = '00000000000000000000000000000000' + v93 + (v93 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                            v94 = (bytes8(MEM[v90] << 128) | (MEM[v90] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v90] << 128) | (MEM[v90] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                            v95 = (((v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v94 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                            MEM[v88 + 32] = '00000000000000000000000000000000' + v95 + (v95 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                            v90 += 32;
                            v88 = v88 + 32 + 32;
                        }
                        v96 = v97 = 0;
                        while (v96 < v98.length) {
                            MEM[v96 + (32 + MEM[64])] = v98[v96];
                            v96 += 32;
                        }
                        MEM[v98.length + (32 + MEM[64])] = 0;
                        MEM[32 + MEM[64] + v98.length] = 'Panic(';
                        v99 = v100 = 0;
                        while (v99 < 66) {
                            MEM[v99 + (32 + MEM[64] + v98.length + 6)] = MEM[v99 + (MEM[64] + 32)];
                            v99 += 32;
                        }
                        MEM[66 + (32 + MEM[64] + v98.length + 6)] = 0;
                        MEM[66 + (32 + MEM[64] + v98.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                        v101 = v102 = MEM[64];
                        MEM[v102] = 79;
                    }
                } else {
                    v103 = _SafeAdd(68, MEM[68 + v80]);
                    if (MEM[v80] >= v103) {
                        v104 = v105 = 0;
                        while (v104 < v98.length) {
                            MEM[v104 + (32 + MEM[64])] = v98[v104];
                            v104 += 32;
                        }
                        MEM[v98.length + (32 + MEM[64])] = 0;
                        MEM[32 + MEM[64] + v98.length] = 'Error(';
                        v106 = v107 = 0;
                        while (v106 < MEM[68 + v80]) {
                            MEM[v106 + (32 + MEM[64] + v98.length + 6)] = MEM[v106 + (68 + v80 + 32)];
                            v106 += 32;
                        }
                        MEM[MEM[68 + v80] + (32 + MEM[64] + v98.length + 6)] = 0;
                        MEM[MEM[68 + v80] + (32 + MEM[64] + v98.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                        v101 = v108 = MEM[64];
                        MEM[v108] = 7 + (MEM[68 + v80] + (32 + MEM[64] + v98.length)) - v108 - 32;
                    }
                }
                v109 = new uint256[](MEM[v101]);
                v110 = v111 = 0;
                while (v110 < MEM[v101]) {
                    MEM[v110 + v109.data] = MEM[v110 + (v101 + 32)];
                    v110 += 32;
                }
                MEM[MEM[v101] + v109.data] = 0;
                revert(Error(v109));
                v112 = v113 = MEM[64] + 34;
                MEM[64] = v113 + (MEM[v80] << 1);
                MEM[MEM[64] + 2] = 12408;
                v114 = v115 = v80 + 32;
                while (v114 < v115 + MEM[v80]) {
                    v116 = (bytes8(MEM[v114]) | (MEM[v114] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v114]) | (MEM[v114] & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                    v117 = (((v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v116 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                    MEM[v112] = '00000000000000000000000000000000' + v117 + (v117 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                    v118 = (bytes8(MEM[v114] << 128) | (MEM[v114] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff000000000000000000000000 | ((bytes8(MEM[v114] << 128) | (MEM[v114] << 128 & 0xffffffffffffffff00000000000000000000000000000000) >> 64) & 0xffffffff000000000000000000000000ffffffff0000000000000000) >> 32;
                    v119 = (((v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f000) >> 4 | (((v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff000000 | ((v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff000000000000 | (v118 & 0xffff000000000000ffff000000000000ffff000000000000ffff00000000) >> 16) & 0xff000000ff000000ff000000ff000000ff000000ff000000ff000000ff0000) >> 8) & 0xf000f000f000f000f000f000f000f000f000f000f000f000f000f000f000f00) >> 8;
                    MEM[v112 + 32] = '00000000000000000000000000000000' + v119 + (v119 + 0x606060606060606060606060606060606060606060606060606060606060606 >> 4 & 0xf0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f0f) * 7;
                    v114 += 32;
                    v112 = v112 + 32 + 32;
                }
                v120 = v121 = 0;
                while (v120 < v98.length) {
                    MEM[v120 + (32 + MEM[64])] = v98[v120];
                    v120 += 32;
                }
                MEM[v98.length + (32 + MEM[64])] = 0;
                MEM[32 + MEM[64] + v98.length] = 'Unknown(';
                v122 = v123 = 0;
                while (v122 < (MEM[v80] << 1) + 2) {
                    MEM[v122 + (32 + MEM[64] + v98.length + 8)] = MEM[v122 + (MEM[64] + 32)];
                    v122 += 32;
                }
                MEM[(MEM[v80] << 1) + 2 + (32 + MEM[64] + v98.length + 8)] = 0;
                MEM[(MEM[v80] << 1) + 2 + (32 + MEM[64] + v98.length) + 8] = 0x2900000000000000000000000000000000000000000000000000000000000000;
                v101 = MEM[64];
                MEM[v101] = 9 + ((MEM[v80] << 1) + 2 + (32 + MEM[64] + v98.length)) - v101 - 32;
                // Unknown jump to Block 0xc204B0x120. Refer to 3-address code (TAC);
            }
        }
        v0 = v0 + 1;
    }
    v124 = v125 = 0;
    while (1) {
        if (v124 >= targetTokenTransferInfos.length) {
            _executeSwap = 1;
            exit;
        } else {
            v126 = msg.data.length;
            require(v124 < targetTokenTransferInfos.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (msg.data[32 + (96 * v124 + targetTokenTransferInfos.data)] <= 0) {
                require(96 * v124 + targetTokenTransferInfos.data + 32 - (96 * v124 + targetTokenTransferInfos.data) >= 32);
                require(targetTokenTransferInfos[v124] == address(targetTokenTransferInfos[v124]));
                v127 = @universalBalanceOf_5279(this, address(targetTokenTransferInfos[v124]));
                if (v127 > 1) {
                    require(96 * v124 + targetTokenTransferInfos.data + 96 - (96 * v124 + targetTokenTransferInfos.data + 64) >= 32);
                    require(msg.data[96 * v124 + targetTokenTransferInfos.data + 64] == address(msg.data[96 * v124 + targetTokenTransferInfos.data + 64]));
                    require(96 * v124 + targetTokenTransferInfos.data + 32 - (96 * v124 + targetTokenTransferInfos.data) >= 32);
                    require(targetTokenTransferInfos[v124] == address(targetTokenTransferInfos[v124]));
                    @universalTransfer_5315(v127 - 1, msg.data[96 * v124 + targetTokenTransferInfos.data + 64], address(targetTokenTransferInfos[v124]));
                }
            } else {
                require(96 * v124 + targetTokenTransferInfos.data + 96 - (96 * v124 + targetTokenTransferInfos.data + 64) >= 32);
                require(msg.data[96 * v124 + targetTokenTransferInfos.data + 64] == address(msg.data[96 * v124 + targetTokenTransferInfos.data + 64]));
                require(96 * v124 + targetTokenTransferInfos.data + 32 - (96 * v124 + targetTokenTransferInfos.data) >= 32);
                require(targetTokenTransferInfos[v124] == address(targetTokenTransferInfos[v124]));
                @universalTransfer_5315(msg.data[96 * v124 + targetTokenTransferInfos.data + 32], msg.data[96 * v124 + targetTokenTransferInfos.data + 64], address(targetTokenTransferInfos[v124]));
            }
            v124 += 1;
        }
    }
}

function @universalBalanceOf_5279(address varg0, uint256 varg1) private { 
    v0 = @isEth_5254(varg1);
    if (!v0) {
        v1, /* uint256 */ v2 = address(varg1).balanceOf(varg0).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(RETURNDATASIZE() >= 32);
        return v2;
    } else {
        return varg0.balance;
    }
}

function locked(uint256 varg0, bytes16 varg1, bytes20 varg2, bytes20 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(36 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    require(address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) == msg.sender);
    v0 = v1 = 0;
    require(v1 <= 16);
    require(16 <= msg.data.length - 36);
    v2 = varg1;
    if (16 < 16) {
        v2 = v3 = varg1;
    }
    v4 = v5 = v2 >> 128;
    require(16 <= 36);
    require(36 <= msg.data.length - 36);
    v6 = v7 = varg2;
    if (20 < 20) {
        v6 = varg2;
    }
    require(36 <= 56);
    require(56 <= msg.data.length - 36);
    v8 = v9 = varg3;
    if (20 < 20) {
        v8 = varg3;
    }
    v10 = v11 = v8 >> 96;
    v12 = _SafeSub(msg.data.length - 36, 56);
    require(52, Panic(18)); // division by zero
    v13 = v14 = 56;
    v15 = v16 = 0;
    while (v15 < v12 / 52) {
        MEM[64] = MEM[64] + 96;
        v0 = v17 = 0;
        MEM[MEM[64]] = v17;
        MEM[MEM[64] + 32] = v17;
        MEM[MEM[64] + 64] = v17;
        v10 = v18 = msg.data[v13 + 36] >> 96;
        v19 = _SafeAdd(20, v13);
        if (address(v20) > address(v18)) {
            v21 = v22 = 1;
        } else {
            v21 = v23 = 0;
        }
        if (v21) {
            v24 = v25 = 0xffff9a5889f795069a41a8a3;
        } else {
            v24 = v26 = 0x400065a8177fae27;
        }
        v27, /* int128 */ v0, /* int128 */ v0 = address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444).call(bytes4(0), address(v10), address(v10), msg.data[v19 + 36], int128(v4), bool(v21), uint96(v24), 0).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v0 == int128(v0));
        require(v0 == int128(v0));
        if (0 - uint128(v0)) {
            break;
        } else if (v21) {
            break;
        } else {
            break;
        }
        if (v21) {
            break;
        }
        require(int128(v0) - int128.min, Panic(17)); // arithmetic overflow or underflow
        v4 = 0 - int128(v0);
        v13 = _SafeAdd(v13, 52);
        v15 += 1;
    }
    @_pay_4267(v0, v11);
    require(bool((address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444)).code.size));
    v28 = address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444).withdraw(address(v10), address(v6 >> 96), uint128(v4)).gas(msg.gas);
    require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function @performSourceTokenInteractionAndGetEthValue_3810(uint256 varg0, uint8 varg1, uint256 varg2, address varg3) private { 
    v0 = @isEth_5254(varg3);
    if (!v0) {
        if (varg1) {
            if (varg1 - 2) {
                if (varg1 - 1) {
                    if (varg1 - 4) {
                        require(0 < 3, Panic(33)); // failed convertion to enum type
                        revert(EnumOutOfRangeValue(0, varg1));
                    } else {
                        require(bool(0x22d473030f116ddee9f6b43ac78ba3.code.size));
                        v1 = 0x22d473030f116ddee9f6b43ac78ba3.approve(varg3, address(varg0), address(varg2), 0).gas(msg.gas);
                        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    }
                } else {
                    @safeTransfer_330(varg2, varg0, varg3);
                }
            } else {
                @setAllowance_5172(varg2, varg0, varg3);
            }
        }
    } else if (3 != varg1) {
        return varg2;
    }
    return 0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    if (0 - data.word1) {
        if (1 - data.word1) {
            require(!(2 - data.word1), UnknownPoolType(data.word1));
            v1 = 0xff00000000000000000000000000000000000000000000000000000000000000;
            v2 = 0xffb9af9ea6d9e39da47392ecc7055277b9915b8bfc9f83f105821b7791a6ae30;
            v3 = 0xdfe1681d21220a7d0c93a7c0000000000000000000000000000000000000000;
        } else {
            v1 = v4 = 0xffbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f0000000000000000000000;
            v2 = v5 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
            v3 = v6 = 0xdfe1681d21220a7ddca3f430000000000000000000000000000000000000000;
        }
    } else {
        v1 = v7 = 0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000;
        v2 = v8 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
        v3 = v9 = 0xdfe1681d21220a7ddca3f430000000000000000000000000000000000000000;
    }
    MEM[v10.data] = v3;
    v11, /* uint256 */ v12 = msg.sender.token0(v3).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    v13, /* uint256 */ v12 = msg.sender.token0().gas(msg.gas);
    require(v13, MEM[64], RETURNDATASIZE());
    v14 = msg.sender.token0().gas(msg.gas);
    require(v14, MEM[64], RETURNDATASIZE());
    if (amount0Delta > 0 != 1) {
    }
    require(msg.sender == address(keccak256(v1, keccak256(v1), v2)), BadUniswapV3LikePool(0));
    @safeTransfer_330(v15, msg.sender, address(v12));
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    v0 = _data.data;
    require(4 + _data + _data.length + 32 <= msg.data.length);
    MEM[v1.data] = 0xdfe1681d21220a7c79a590e0000000000000000000000000000000000000000;
    v2, v3 = msg.sender.token0(0xdfe1681d21220a7c79a590e0000000000000000000000000000000000000000).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v4, v3 = msg.sender.token0().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = msg.sender.token0().gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (amount0Delta > 0 != 1) {
    }
    require(!(address(keccak256(0xffc7a590291e07b9fe9e64b86c58fd8fc764308c4a0000000000000000000000, keccak256(0xffc7a590291e07b9fe9e64b86c58fd8fc764308c4a0000000000000000000000), 0xe263aaa3a2c06a89b53217a9e7aad7e15613490a72e0f95f303c4de2dc7045)) ^ msg.sender), BadUniswapV3LikePool(1));
    @safeTransfer_330(v6, msg.sender, address(v3));
}

function @universalTransfer_5315(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0 - varg0) {
        v0 = @isEth_5254(varg2);
        if (!v0) {
            @safeTransfer_330(varg0, varg1, address(varg2));
            return ;
        } else {
            v1 = address(varg1).call().value(varg0).gas(2300 * !varg0);
            require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            return ;
        }
    } else {
        return ;
    }
}

function @isEth_5254(address varg0) private { 
    if (!varg0) {
        return !varg0;
    } else {
        return 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == varg0;
    }
}

function @setAllowance_5172(uint256 varg0, address varg1, address varg2) private { 
    MEM[64] = MEM[64] + 100;
    require(this.balance >= 0, AddressInsufficientBalance(this));
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    MEM[68 + MEM[64]] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.approve(varg1, 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v2) {
        v9 = v10 = !MEM[v6];
        if (!bool(MEM[v6])) {
            v9 = !varg2.code.size;
        }
        require(!v9, AddressEmptyCode(varg2));
        v11 = v12 = 0 != MEM[v6];
        if (0 != MEM[v6]) {
            require(MEM[v6] >= 32);
            v11 = !MEM[32 + v6];
        }
        require(!v11, SafeERC20FailedOperationBarter(varg2));
        return ;
    } else {
        require(!MEM[v6], v5, MEM[v6]);
        revert(FailedInnerCall());
    }
}

function @_pay_4267(uint256 varg0, uint256 varg1) private { 
    if (address(varg1)) {
        v0 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.pay(varg1, varg0).gas(msg.gas);
        require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    } else {
        v1 = this.code.size;
        v2 = this.code.size;
        v3 = 0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444.call().value(uint128(varg0)).gas(msg.gas);
        require(v3, ETHTransferFailed());
        return ;
    }
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    MEM[v1.data] = 0xdfe1681d21220a7ddca3f430000000000000000000000000000000000000000;
    v2, v3 = msg.sender.token0(0xdfe1681d21220a7ddca3f430000000000000000000000000000000000000000).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v4, v3 = msg.sender.token0().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v5 = msg.sender.token0().gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (amount0Delta > 0 != 1) {
    }
    if (!(address(keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000, keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)) ^ msg.sender)) {
        @safeTransfer_330(v6, msg.sender, address(v3));
        exit;
    } else {
        v7 = new uint256[](4);
        revert(BadUniswapV3LikePool(v7));
    }
}

function receive() public payable { 
    require(msg.sender - tx.origin, DirectEthDepositIsForbidden());
}

function 0x599d0714(uint256 varg0, address varg1, bytes16 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(36 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    require(address(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444) == msg.sender);
    require(12 <= 32);
    require(32 <= msg.data.length - 36);
    v0 = v1 = bytes20(varg2);
    if (20 < 20) {
        v0 = bytes20(varg2);
    }
    require(32 <= 48);
    require(48 <= msg.data.length - 36);
    v2 = bytes16(varg3);
    if (16 < 16) {
        v2 = v3 = bytes16(varg3);
    }
    v4 = (v0 >> 96).transfer(0xe0e0e08a6a4b9dc7bd67bcb7aade5cf48157d444, 0xa9059cbb000000000000000000000000, v2 >> 128).gas(msg.gas);
    if (!((MEM[0] == 1) & v4)) {
        require(!(v0 >> 96).code.size | RETURNDATASIZE() < v4, TransferFailed());
    }
    MEM[52] = 0;
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1, /* bool */ v2 = 0xeb6625d65a0553c9dbc64449e56abfe519bd9c9b.isFactoryPool(msg.sender).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(RETURNDATASIZE() >= 32);
    require(bool(v2), BadUniswapV3LikePool(2));
    @safeTransfer_330(amountToPay, msg.sender, address(data.word1));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x92b12745 > function_selector >> 224) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x599d0714 == function_selector >> 224) {
            0x599d0714();
        } else {
            require(0x923b8a2a == function_selector >> 224);
            swapCallback(uint256,uint256,bytes);
        }
    } else if (0x92b12745 == function_selector >> 224) {
        executeSwap((address,uint256,address)[],(address,(uint256,address,bytes,uint256)[])[]);
    } else if (0xb45a3c0e == function_selector >> 224) {
        locked(uint256);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else {
        require(0xfa483e72 == function_selector >> 224);
        swapCallback(int256,int256,bytes);
    }
}
