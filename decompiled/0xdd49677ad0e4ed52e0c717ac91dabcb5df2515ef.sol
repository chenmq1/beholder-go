// Decompiled by library.dedaub.com
// 2025.12.14 21:29 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _dexCallback; // STORAGE[0x0]



function 0x47a4a989(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    0x3cb(varg1, varg0.length, varg0.data);
}

function 0x5197a0d3(address varg0, bool varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(address(0xa9d635ef85bc37eb9ff9d6165481ea230ed32392) == msg.sender, Error('Admin role required'));
    _dexCallback[varg0] = varg1;
}

function 0x5e482445(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    0x64f(varg1, varg0.length, varg0.data);
}

function maverickV2SwapCallback(address tokenIn, uint256 amountToPay, uint256 varg2, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
    MEM[MEM[64] + 68] = msg.sender;
    MEM[MEM[64] + 100] = amountToPay;
    0x1902(132 + MEM[64], 0x23b872dd, tokenIn, tokenIn);
}

function 0x752be0d6() public nonPayable { 
    return address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
}

function 0x1902(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = varg3.call(varg1).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (!RETURNDATASIZE()) {
        v1 = v2 = !(address(varg3)).code.size;
    } else {
        v1 = v3 = 1 != MEM[0];
    }
    require(!v1, SafeERC20FailedOperation(address(varg3)));
    return ;
}

function 0x1949(uint256 varg0, uint256 varg1) private { 
    require(0 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = msg.data[varg1] >> 248;
    if (v0 >= 16) {
        if (uint8(v0) >= 21) {
            if (uint8(v0) >= 23) {
                if (23 - uint8(v0)) {
                    if (24 - uint8(v0)) {
                        return 0;
                    } else {
                        v1, v2 = _SafeSub(varg1, varg0, 1, varg0);
                        require(v2 + v1 - v2 >= 160);
                        require(msg.data[v2] == address(msg.data[v2]));
                        require(msg.data[v2 + 32] == address(msg.data[v2 + 32]));
                        require(msg.data[v2 + 64] == address(msg.data[v2 + 64]));
                        require(msg.data[v2 + 128] == bool(msg.data[v2 + 128]));
                        if (!msg.data[v2 + 128]) {
                            v3 = v4 = 0x4b19(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v2 + 96], msg.data[v2 + 64], msg.data[v2 + 32], msg.data[v2]);
                        } else {
                            v3 = v5 = 0x498b(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v2 + 96], msg.data[v2 + 64], msg.data[v2 + 32], msg.data[v2]);
                        }
                        return v3;
                    }
                } else {
                    v6, v7 = _SafeSub(varg1, varg0, 1, varg0);
                    require(v7 + v6 - v7 >= 128);
                    require(msg.data[v7] == uint8(msg.data[v7]));
                    require(msg.data[v7 + 32] == uint8(msg.data[v7 + 32]));
                    require(msg.data[v7 + 64] == address(msg.data[v7 + 64]));
                    v8, /* address */ v9 = address(msg.data[v7 + 64]).coins(uint8(msg.data[v7])).gas(msg.gas);
                    require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(v9 == address(v9));
                    require(address(v9) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112, Error('CurveNGLib: Rebasing token cannot be native currency'));
                    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                    MEM[MEM[64] + 68] = address(this);
                    MEM[MEM[64] + 100] = msg.data[96 + v7];
                    0x1902(132 + MEM[64], 0x23b872dd, address(v9), address(v9));
                    v10, /* uint256 */ v11 = address(v9).allowance(this, address(msg.data[v7 + 64])).gas(msg.gas);
                    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    if (v11 < msg.data[96 + v7]) {
                        if (v11) {
                            v12, /* bool */ v13 = address(v9).approve(address(msg.data[v7 + 64]), 0).gas(msg.gas);
                            require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(v13 == bool(v13));
                        }
                        v14, /* bool */ v15 = address(v9).approve(address(msg.data[v7 + 64]), uint256.max).gas(msg.gas);
                        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(v15 == bool(v15));
                    }
                    v16 = 0x4ecc(uint8(msg.data[v7]));
                    v17 = 0x4ecc(uint8(msg.data[v7 + 32]));
                    v18, /* uint256 */ v19 = address(msg.data[v7 + 64]).exchange(int128(v16), int128(v17), msg.data[96 + v7], 0, address(0x9008d19f58aabd9ed0d60971565aa8510560ab41)).gas(msg.gas);
                    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v20 = 0x1ac2(v19);
                    return v20;
                }
            } else if (21 - uint8(v0)) {
                v21, v22 = _SafeSub(varg1, varg0, 1, varg0);
                require(v22 + v21 - v22 >= 128);
                require(msg.data[v22] == uint8(msg.data[v22]));
                require(msg.data[v22 + 32] == uint8(msg.data[v22 + 32]));
                require(msg.data[v22 + 64] == address(msg.data[v22 + 64]));
                v23, /* address */ v24 = address(msg.data[v22 + 64]).coins(uint8(msg.data[v22])).gas(msg.gas);
                require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v24 == address(v24));
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v24)) {
                    v25 = 0x4ecc(uint8(msg.data[v22]));
                    v26 = 0x4ecc(uint8(msg.data[v22 + 32]));
                    v27, /* uint256 */ v28 = address(msg.data[v22 + 64]).exchange_received(int128(v25), int128(v26), msg.data[96 + v22], 0, address(0x9008d19f58aabd9ed0d60971565aa8510560ab41)).value(msg.data[96 + v22]).gas(msg.gas);
                    require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v29 = 0x1ac2(v28);
                } else {
                    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                    MEM[MEM[64] + 68] = address(msg.data[v22 + 64]);
                    MEM[MEM[64] + 100] = msg.data[96 + v22];
                    0x1902(132 + MEM[64], 0x23b872dd, address(v24), address(v24));
                    v30 = 0x4ecc(uint8(msg.data[v22]));
                    v31 = 0x4ecc(uint8(msg.data[v22 + 32]));
                    v32, /* uint256 */ v33 = address(msg.data[v22 + 64]).exchange_received(int128(v30), int128(v31), msg.data[96 + v22], 0, address(0x9008d19f58aabd9ed0d60971565aa8510560ab41)).gas(msg.gas);
                    require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    v29 = v34 = 0x1ac2(v33);
                }
                return v29;
            } else {
                v35, v36 = _SafeSub(varg1, varg0, 1, varg0);
                require(v36 + v35 - v36 >= 128);
                require(msg.data[v36] == uint8(msg.data[v36]));
                require(msg.data[v36 + 32] == uint8(msg.data[v36 + 32]));
                require(msg.data[v36 + 64] == address(msg.data[v36 + 64]));
                v37, /* address */ v38 = address(msg.data[v36 + 64]).coins(uint8(msg.data[v36])).gas(msg.gas);
                require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v38 == address(v38));
                v39, /* address */ v40 = address(msg.data[v36 + 64]).coins(uint8(msg.data[v36 + 32])).gas(msg.gas);
                require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v40 == address(v40));
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v40)) {
                    v41 = v42 = this.balance;
                } else {
                    v43, /* uint256 */ v41 = address(v40).balanceOf(this).gas(msg.gas);
                    require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                }
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v38)) {
                    v44 = 0x4ecc(uint8(msg.data[v36]));
                    v45 = 0x4ecc(uint8(msg.data[v36 + 32]));
                    require(bool((address(msg.data[v36 + 64])).code.size));
                    v46 = address(msg.data[v36 + 64]).exchange(int128(v44), int128(v45), msg.data[96 + v36], 0).value(msg.data[96 + v36]).gas(msg.gas);
                    require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                } else {
                    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                    MEM[MEM[64] + 68] = address(this);
                    MEM[MEM[64] + 100] = msg.data[96 + v36];
                    0x1902(132 + MEM[64], 0x23b872dd, address(v38), address(v38));
                    v47, /* uint256 */ v48 = address(v38).allowance(this, address(msg.data[v36 + 64])).gas(msg.gas);
                    require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    if (v48 < msg.data[96 + v36]) {
                        if (v48) {
                            v49, /* bool */ v50 = address(v38).approve(address(msg.data[v36 + 64]), 0).gas(msg.gas);
                            require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(v50 == bool(v50));
                        }
                        v51, /* bool */ v52 = address(v38).approve(address(msg.data[v36 + 64]), uint256.max).gas(msg.gas);
                        require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(v52 == bool(v52));
                    }
                    v53 = 0x4ecc(uint8(msg.data[v36]));
                    v54 = 0x4ecc(uint8(msg.data[v36 + 32]));
                    require(bool((address(msg.data[v36 + 64])).code.size));
                    v55 = address(msg.data[v36 + 64]).exchange(int128(v53), int128(v54), msg.data[96 + v36], 0).gas(msg.gas);
                    require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                }
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v40)) {
                    v56 = v57 = this.balance;
                } else {
                    v58, /* uint256 */ v56 = address(v40).balanceOf(this).gas(msg.gas);
                    require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                }
                v59 = _SafeSub(v56, v41);
                if (address(v40) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112) {
                    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                    MEM[MEM[64] + 68] = v59;
                    0x1902(100 + MEM[64], 0xa9059cbb, address(v40), address(v40));
                } else {
                    v60, /* uint256 */ v61 = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41).call().value(v59).gas(msg.gas);
                    if (RETURNDATASIZE() != 0) {
                        v62 = new bytes[](RETURNDATASIZE());
                        v61 = v62.data;
                        RETURNDATACOPY(v61, 0, RETURNDATASIZE());
                    }
                    require(v60, Error('CurveClassicLib: ETH send failed'));
                }
                v63 = 0x1ac2(v59);
                return v63;
            }
        } else if (uint8(v0) >= 20) {
            v64, v65 = _SafeSub(varg1, varg0, 1, varg0);
            require(v65 + v64 - v65 >= 128);
            require(msg.data[v65] == address(msg.data[v65]));
            require(msg.data[v65 + 32] == address(msg.data[v65 + 32]));
            v66 = new struct(6);
            v66.word0 = msg.data[v65 + 64];
            v66.word1 = 0;
            v66.word2 = address(msg.data[v65]);
            v66.word3 = address(msg.data[v65 + 32]);
            v66.word4 = msg.data[96 + v65];
            v67 = new struct(1);
            v67.word0 = 0;
            v66.word5 = v67;
            v68 = new uint256[](v66.word0);
            require(v66.word1 < 2, Panic(33)); // failed convertion to enum type
            MEM[v68.data] = v66.word1;
            MCOPY(4 + MEM[64] + 416 + 32, v66.word5 + 32, MEM[v66.word5]);
            MEM[4 + MEM[64] + 416 + MEM[v66.word5] + 32] = 0;
            v69, /* uint256 */ v70 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v68, address(this), True, address(0x9008d19f58aabd9ed0d60971565aa8510560ab41), False, 0, block.timestamp, v71, v71, address(v66.word2), address(v66.word3), v66.word4, 192, MEM[v66.word5]).gas(msg.gas);
            require(bool(v69), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v72 = 0x1ac2(v70);
            return v72;
        } else {
            v73, v74 = _SafeSub(varg1, varg0, 1, varg0);
            require(v74 + v73 - v74 >= 64);
            require(msg.data[v74] == address(msg.data[v74]));
            if (uint8(v0) >= 18) {
                if (18 - uint8(v0)) {
                    v75 = v76 = 0x390b(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v74], msg.data[v74]);
                } else {
                    v75 = v77 = 0x382f(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v74], msg.data[v74]);
                }
            } else if (16 - uint8(v0)) {
                v75 = v78 = 0x36a9(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v74], msg.data[v74]);
            } else {
                v75 = v79 = 0x3497(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v74], msg.data[v74]);
            }
            return v75;
        }
    } else if (uint8(v0) >= 8) {
        if (uint8(v0) >= 12) {
            v80, v81 = _SafeSub(varg1, varg0, 1, varg0);
            require(v81 + v80 - v81 >= 96);
            require(msg.data[v81] == address(msg.data[v81]));
            require(msg.data[v81 + 64] == int32(msg.data[v81 + 64]));
            if (uint8(v0) >= 14) {
                if (14 - uint8(v0)) {
                    v82 = v83 = 0x3448(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v81 + 64], msg.data[v81 + 32], msg.data[v81]);
                } else {
                    v82 = v84 = 0x3360(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v81 + 64], msg.data[v81 + 32], msg.data[v81]);
                }
            } else if (12 - uint8(v0)) {
                v82 = v85 = 0x3282(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v81 + 64], msg.data[v81 + 32], msg.data[v81]);
            } else {
                v82 = v86 = 0x3114(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[v81 + 64], msg.data[v81 + 32], msg.data[v81]);
            }
            return v82;
        } else {
            v87, v88 = _SafeSub(varg1, varg0, 1, varg0);
            require(uint8(v0) - uint8(8) <= uint8.max, Panic(17)); // arithmetic overflow or underflow
            require(1 <= v87 + 1, Panic(17)); // arithmetic overflow or underflow
            require(v87 + 1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v89 = new bytes[](v87 + 1);
            if (v87 + 1) {
                CALLDATACOPY(v89.data, msg.data.length, v87 + 1);
            }
            require(0 < v89.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[v89.data] = (byte(bytes1(uint8(v0) - uint8(8) << 248), 0x0)) & 0xFF;
            v90 = v91 = 0;
            while (v90 < v87) {
                require(v90 < v87, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(1 <= v90 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v90 + 1 < v89.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[32 + (v90 + 1) + v89] = (byte(bytes1(msg.data[v90 + v88] >> 248 << 248), 0x0)) & 0xFF;
                v90 += 1;
            }
            v92 = new bytes[](v89.length);
            MCOPY(v92.data, v89.data, v89.length);
            v92[v89.length] = 0;
            v93, /* uint256 */ v94 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v92).gas(msg.gas);
            require(bool(v93), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            RETURNDATACOPY(v94, 0, RETURNDATASIZE());
            MEM[64] = v94 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            require(v94 + RETURNDATASIZE() - v94 >= 32);
            require(MEM[v94] <= uint64.max);
            require(v94 + RETURNDATASIZE() > v94 + MEM[v94] + 31);
            require(MEM[v94 + MEM[v94]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v95 = new bytes[](MEM[v94 + MEM[v94]]);
            require(!((v95 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v94 + MEM[v94]]) + 31) < v95) | (v95 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v94 + MEM[v94]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v94 + MEM[v94] + MEM[v94 + MEM[v94]] + 32 <= v94 + RETURNDATASIZE());
            MCOPY(v95.data, v94 + MEM[v94] + 32, MEM[v94 + MEM[v94]]);
            v95[MEM[v94 + MEM[v94]]] = 0;
            require(v95.data + v95.length - v95.data >= 32);
            return MEM[v95.data];
        }
    } else if (uint8(v0) >= 4) {
        v96, v97 = _SafeSub(varg1, varg0, 1, varg0);
        require(v97 + v96 - v97 >= 64);
        require(msg.data[v97] == address(msg.data[v97]));
        if (uint8(v0) >= 6) {
            if (6 - uint8(v0)) {
                v98 = 0x1ac2(msg.data[32 + v97]);
                v99 = 0x5828(v98);
                v100 = 0x5bf0(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000);
                MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                MEM[MEM[64] + 36 + 32] = False;
                MEM[MEM[64] + 36 + 64] = v99;
                MEM[MEM[64] + 36 + 96] = address(v100);
                MEM[MEM[64] + 36 + 128] = 160;
                MEM[MEM[64] + 36 + 160] = 0;
                MCOPY(MEM[64] + 36 + 160 + 32, MEM[64] + 32, 0);
                MEM[MEM[64] + 36 + 160 + 32] = 0;
                v101, /* uint256 */ v102, /* uint256 */ v103 = address(msg.data[v97]).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                require(bool(v101), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                v104 = v105 = 0x5828(v103);
            } else {
                v106 = 0x1ac2(msg.data[32 + v97]);
                v107 = 0x5828(v106);
                v108 = 0x5b4a(1, 0x1000276a3);
                MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000);
                MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
                MEM[MEM[64] + 36 + 32] = True;
                MEM[MEM[64] + 36 + 64] = v107;
                MEM[MEM[64] + 36 + 96] = address(v108);
                MEM[MEM[64] + 36 + 128] = 160;
                MEM[MEM[64] + 36 + 160] = 0;
                MCOPY(MEM[64] + 36 + 160 + 32, MEM[64] + 32, 0);
                MEM[MEM[64] + 36 + 160 + 32] = 0;
                v109, /* uint256 */ v110, /* uint256 */ v111 = address(msg.data[v97]).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                require(bool(v109), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                v104 = v112 = 0x5828(v110);
            }
        } else if (4 - uint8(v0)) {
            v113 = 0x1ac2(msg.data[32 + v97]);
            v114 = 0x5bf0(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000);
            MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
            MEM[MEM[64] + 36 + 32] = False;
            MEM[MEM[64] + 36 + 64] = v113;
            MEM[MEM[64] + 36 + 96] = address(v114);
            MEM[MEM[64] + 36 + 128] = 160;
            MEM[MEM[64] + 36 + 160] = 0;
            MCOPY(MEM[64] + 36 + 160 + 32, MEM[64] + 32, 0);
            MEM[MEM[64] + 36 + 160 + 32] = 0;
            v115, /* uint256 */ v116, /* uint256 */ v117 = address(msg.data[v97]).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
            require(bool(v115), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            v104 = v118 = 0x5828(v116);
        } else {
            v119 = 0x1ac2(msg.data[32 + v97]);
            v120 = 0x5b4a(1, 0x1000276a3);
            MEM[MEM[64] + 32] = bytes4(0x128acb0800000000000000000000000000000000000000000000000000000000);
            MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
            MEM[MEM[64] + 36 + 32] = True;
            MEM[MEM[64] + 36 + 64] = v119;
            MEM[MEM[64] + 36 + 96] = address(v120);
            MEM[MEM[64] + 36 + 128] = 160;
            MEM[MEM[64] + 36 + 160] = 0;
            MCOPY(MEM[64] + 36 + 160 + 32, MEM[64] + 32, 0);
            MEM[MEM[64] + 36 + 160 + 32] = 0;
            v121, /* uint256 */ v122, /* uint256 */ v123 = address(msg.data[v97]).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + 160 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
            require(bool(v121), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            v104 = v124 = 0x5828(v123);
        }
        return v104;
    } else {
        v125, v126 = _SafeSub(varg1, varg0, 1, varg0);
        require(v126 + v125 - v126 >= 64);
        require(msg.data[v126] == address(msg.data[v126]));
        if (uint8(v0) >= 2) {
            if (2 - uint8(v0)) {
                v127 = v128 = 0x2bdf(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v126], msg.data[v126]);
            } else {
                v127 = v129 = 0x2a43(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v126], msg.data[v126]);
            }
        } else if (0 - uint8(v0)) {
            v127 = v130 = 0x292c(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v126], msg.data[v126]);
        } else {
            v127 = v131 = 0x2757(0x9008d19f58aabd9ed0d60971565aa8510560ab41, msg.data[32 + v126], msg.data[v126]);
        }
        return v127;
    }
}

function 0x1ac2(uint256 varg0) private { 
    require(varg0 >= 0, SafeCastOverflow());
    return varg0;
}

function 0x1af9(uint256 varg0, bytes varg1, uint256 varg2, struct(5) varg3) private { 
    v0 = 0x5828(varg2);
    v1 = 0x23b4(varg1, v0, 1, varg3);
    v2 = 0x24c9(int128(v1));
    0x24ff(varg0, varg2, varg3.word0);
    0x26b6(varg0, v2, varg3.word1);
    return int128(v1);
}

function 0x1b46(uint256 varg0, bytes varg1, uint256 varg2, struct(5) varg3) private { 
    v0 = 0x5828(varg2);
    v1 = 0x23b4(varg1, v0, 0, varg3);
    v2 = 0x24c9(int128(v1));
    0x24ff(varg0, varg2, varg3.word1);
    0x26b6(varg0, v2, varg3.word0);
    return int128(v1);
}

function 0x1b82(uint256 varg0, bytes varg1, uint256 varg2, struct(5) varg3) private { 
    v0 = 0x23b4(varg1, varg2, 1, varg3);
    v1 = 0x5828(int128(v0));
    v2 = 0x24c9(v1);
    0x24ff(varg0, v2, varg3.word0);
    0x26b6(varg0, varg2, varg3.word1);
    return int128(v0);
}

function 0x1bc6(uint256 varg0, bytes varg1, uint256 varg2, struct(5) varg3) private { 
    v0 = 0x23b4(varg1, varg2, 0, varg3);
    v1 = 0x5828(int128(v0));
    v2 = 0x24c9(v1);
    0x24ff(varg0, v2, varg3.word1);
    0x26b6(varg0, varg2, varg3.word0);
    return int128(v0);
}

function 0x1c03(address varg0, uint256 varg1, address varg2) private { 
    if (!varg1) {
        return ;
    } else {
        MEM[MEM[64] + 36] = varg0;
        MEM[MEM[64] + 68] = address(0xba1333333333a1ba1108e8412f11850a5c319ba9);
        MEM[MEM[64] + 100] = varg1;
        0x1902(132 + MEM[64], 0x23b872dd, varg2, varg2);
        return ;
    }
}

function 0x7f6e9d4b(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _dexCallback[varg0];
}

function 0x91a8ec48(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    0x7e8(varg0.length, varg0.data);
}

function 0x23b4(bytes varg0, uint256 varg1, uint256 varg2, struct(5) varg3) private { 
    if (varg2) {
        v0 = v1 = 0x1000276a4;
    } else {
        v0 = v2 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v3 = new bytes[](varg0.length);
    MCOPY(v3.data, varg0.data, varg0.length);
    v3[varg0.length] = 0;
    v4, v5 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(varg3.word0), address(varg3.word1), uint24(varg3.word2), int24(varg3.word3), address(varg3.word4), bool(varg2), varg1, address(v0), v3).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (varg1 < 0 == bool(varg2)) {
        return int128(v5);
    } else {
        return v5 >> 128;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, Error('Unauthorized caller'));
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    require(0 < rawData.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0, v1 = _SafeSub(rawData.data, rawData.length, 1, rawData.length);
    require(v1 + v0 - v1 >= 224);
    require(v1 + v0 - v1 >= 160);
    v2 = 0x54ec();
    require(msg.data[v1] == address(msg.data[v1]));
    v2.word0 = msg.data[v1];
    require(msg.data[v1 + 32] == address(msg.data[v1 + 32]));
    v2.word1 = msg.data[v1 + 32];
    require(msg.data[v1 + 64] == uint24(msg.data[v1 + 64]));
    v2.word2 = msg.data[v1 + 64];
    require(msg.data[v1 + 96] == int24(msg.data[v1 + 96]));
    v2.word3 = msg.data[v1 + 96];
    require(msg.data[v1 + 128] == address(msg.data[v1 + 128]));
    v2.word4 = msg.data[v1 + 128];
    require(msg.data[v1 + 192] <= uint64.max);
    require(v1 + msg.data[v1 + 192] + 31 < v1 + v0);
    require(msg.data[v1 + msg.data[v1 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[v1 + msg.data[v1 + 192]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + msg.data[v1 + 192]]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v1 + msg.data[v1 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v1 + msg.data[v1 + 192] + msg.data[v1 + msg.data[v1 + 192]] + 32 <= v1 + v0);
    CALLDATACOPY(v3.data, v1 + msg.data[v1 + 192] + 32, msg.data[v1 + msg.data[v1 + 192]]);
    v3[msg.data[v1 + msg.data[v1 + 192]]] = 0;
    if (uint8(msg.data[rawData.data] >> 248) >= 2) {
        if (2 - uint8(msg.data[rawData.data] >> 248)) {
            v4 = v5 = 0x1bc6(0x9008d19f58aabd9ed0d60971565aa8510560ab41, v3, msg.data[v1 + 160], v2);
        } else {
            v4 = v6 = 0x1b82(0x9008d19f58aabd9ed0d60971565aa8510560ab41, v3, msg.data[v1 + 160], v2);
        }
    } else if (0 - uint8(msg.data[rawData.data] >> 248)) {
        v4 = v7 = 0x1b46(0x9008d19f58aabd9ed0d60971565aa8510560ab41, v3, msg.data[v1 + 160], v2);
    } else {
        v4 = v8 = 0x1af9(0x9008d19f58aabd9ed0d60971565aa8510560ab41, v3, msg.data[v1 + 160], v2);
    }
    MEM[MEM[64] + 32] = v4;
    MEM[64] = MEM[64] + 64;
    v9 = new uint256[](32);
    MCOPY(v9.data, MEM[64] + 32, 32);
    MEM[v9.data + 32] = 0;
    return v9;
}

function 0x24c9(uint256 varg0) private { 
    require(varg0 >= 0, SafeCastOverflow());
    return varg0;
}

function 0x24ff(address varg0, uint256 varg1, address varg2) private { 
    if (0 - varg1) {
        if (varg2) {
            require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
            v0 = 0x4444c5dc75cb358380d2e3de08a90.sync(varg2).gas(msg.gas);
            require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(bool(0x22d473030f116ddee9f6b43ac78ba3.code.size));
            v1 = 0x22d473030f116ddee9f6b43ac78ba3.transferFrom(varg0, 0x4444c5dc75cb358380d2e3de08a90, address(varg1), varg2).gas(msg.gas);
            require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v2, /* uint256 */ v3 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
            require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        } else {
            v4, /* uint256 */ v5 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(varg1).gas(msg.gas);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            return ;
        }
    } else {
        return ;
    }
}

function dexCallback(address token_, uint256 amount_) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
    MEM[MEM[64] + 68] = address(0x52aa899454998be5b000ad077a46bbe360f4e497);
    MEM[MEM[64] + 100] = amount_;
    0x1902(132 + MEM[64], 0x23b872dd, token_, token_);
}

function 0x26b6(address varg0, uint256 varg1, address varg2) private { 
    if (0 - varg1) {
        require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
        v0 = 0x4444c5dc75cb358380d2e3de08a90.take(varg2, varg0, varg1).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    } else {
        return ;
    }
}

function 0x2757(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4, /* address */ v5 = varg2.token0().gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v5 == address(v5));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 100] = varg1;
    0x1902(132 + MEM[64], 0x23b872dd, address(v5), address(v5));
    v6 = 0x4bf1(uint112(v2), uint112(v1), varg1);
    v7 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v7.data, msg.data.length, 0);
        v8 = v7.data;
    }
    v9 = new bytes[](v7.length);
    MCOPY(v9.data, v7.data, v7.length);
    v10 = v9.data;
    v9[v7.length] = 0;
    require(bool(varg2.code.size));
    v11 = varg2.swap(0, v6, varg0, v9).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x1ac2(v6);
    return v12;
}

function 0xa317b93b(address varg0, address varg1, address varg2, uint256 varg3, bool varg4, address varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    v0 = new struct(7);
    if (varg4) {
        v1 = v2 = 0;
    } else {
        v1 = v3 = 1;
    }
    require(v1 <= 1, Panic(33)); // failed convertion to enum type
    v0.word0 = v1;
    v0.word1 = varg0;
    v0.word2 = varg1;
    v0.word3 = varg2;
    v0.word4 = varg3;
    if (varg4) {
        v4 = v5 = 0;
    } else {
        v4 = v6 = uint256.max;
    }
    v0.word5 = v4;
    v7 = new struct(1);
    v7.word0 = 0;
    v0.word6 = v7;
    require(v0.word0 < 2, Panic(33)); // failed convertion to enum type
    v8 = new uint256[](v0.word0);
    MEM[v8.data] = address(v0.word1);
    MCOPY(4 + MEM[64] + (uint8.max + 1) + 32, v0.word6 + 32, MEM[v0.word6]);
    MEM[4 + MEM[64] + (uint8.max + 1) + MEM[v0.word6] + 32] = 0;
    v9, /* uint256 */ v10, /* uint256 */ v11, /* uint256 */ v12 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v8, v13, v13, address(v0.word2), address(v0.word3), v0.word4, v0.word5, 224, MEM[v0.word6]).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    if (!varg4) {
        0x1c03(varg5, v11, varg1);
    } else {
        0x1c03(varg5, varg3, varg1);
    }
    if (!varg4) {
        v14, /* uint256 */ v15 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).settle(varg1, v11).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v15 >= v11, varg1);
        if (v12) {
            require(bool((address(0xba1333333333a1ba1108e8412f11850a5c319ba9)).code.size));
            v16 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).sendTo(varg2, varg5, v12).gas(msg.gas);
            require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        v17 = 0x1ac2(v11);
        v18 = 0x5828(v17);
        if (v15 > v11) {
            v19 = _SafeSub(v15, v11);
            require(bool((address(0xba1333333333a1ba1108e8412f11850a5c319ba9)).code.size));
            v20 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).sendTo(varg1, varg5, v19).gas(msg.gas);
            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
    } else {
        v21, /* uint256 */ v22 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).settle(varg1, varg3).gas(msg.gas);
        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v22 >= varg3, varg1);
        if (v12) {
            require(bool((address(0xba1333333333a1ba1108e8412f11850a5c319ba9)).code.size));
            v23 = address(0xba1333333333a1ba1108e8412f11850a5c319ba9).sendTo(varg2, varg5, v12).gas(msg.gas);
            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        v18 = v24 = 0x1ac2(v12);
    }
    return v18;
}

function 0x292c(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4, /* address */ v5 = varg2.token1().gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v5 == address(v5));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 100] = varg1;
    0x1902(132 + MEM[64], 0x23b872dd, address(v5), address(v5));
    v6 = 0x4bf1(uint112(v1), uint112(v2), varg1);
    v7 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v7.data, msg.data.length, 0);
        v8 = v7.data;
    }
    v9 = new bytes[](v7.length);
    MCOPY(v9.data, v7.data, v7.length);
    v10 = v9.data;
    v9[v7.length] = 0;
    require(bool(varg2.code.size));
    v11 = varg2.swap(v6, 0, varg0, v9).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x1ac2(v6);
    return v12;
}

function 0x2a43(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = 0x4d5b(uint112(v2), uint112(v1), varg1);
    v5, /* address */ v6 = varg2.token0().gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v6 == address(v6));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 100] = v4;
    0x1902(132 + MEM[64], 0x23b872dd, address(v6), address(v6));
    v7 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v7.data, msg.data.length, 0);
        v8 = v7.data;
    }
    v9 = new bytes[](v7.length);
    MCOPY(v9.data, v7.data, v7.length);
    v10 = v9.data;
    v9[v7.length] = 0;
    require(bool(varg2.code.size));
    v11 = varg2.swap(0, varg1, varg0, v9).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x1ac2(v4);
    v13 = 0x5828(v12);
    return v13;
}

function 0xb80f2bdf(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    0xb40(varg0.length, varg0.data);
}

function 0x2bdf(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    v4 = 0x4d5b(uint112(v1), uint112(v2), varg1);
    v5, /* address */ v6 = varg2.token1().gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v6 == address(v6));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg2;
    MEM[MEM[64] + 100] = v4;
    0x1902(132 + MEM[64], 0x23b872dd, address(v6), address(v6));
    v7 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v7.data, msg.data.length, 0);
        v8 = v7.data;
    }
    v9 = new bytes[](v7.length);
    MCOPY(v9.data, v7.data, v7.length);
    v10 = v9.data;
    v9[v7.length] = 0;
    require(bool(varg2.code.size));
    v11 = varg2.swap(varg1, 0, varg0, v9).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v12 = 0x1ac2(v4);
    v13 = 0x5828(v12);
    return v13;
}

function admin() public nonPayable { 
    return address(0xa9d635ef85bc37eb9ff9d6165481ea230ed32392);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    v1, /* address */ v2 = msg.sender.token0().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == address(v2));
    v3, /* address */ v4 = msg.sender.token1().gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v4 == address(v4));
    v5, /* uint24 */ v6 = msg.sender.fee().gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v6 == uint24(v6));
    require(address(v2) < address(v4));
    MEM[MEM[64] + 160] = 0xff00000000000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 161] = bytes20(0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000);
    MEM[MEM[64] + 181] = keccak256(address(v2), address(v4), uint24(v6));
    MEM[MEM[64] + 213] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    v7 = new uint256[](245 + MEM[64] - v7 - 32);
    v8 = v7.length;
    v9 = v7.data;
    require(address(keccak256(v7)) == msg.sender);
    if (amount0Delta <= 0) {
        require(amount1Delta > 0);
        MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = amount1Delta;
        0x1902(132 + MEM[64], 0x23b872dd, address(v4), address(v4));
    } else {
        MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = amount0Delta;
        0x1902(132 + MEM[64], 0x23b872dd, address(v2), address(v2));
    }
}

function 0x3114(address varg0, int32 varg1, uint256 varg2, address varg3) private { 
    v0, /* address */ v1 = varg3.tokenB().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == address(v1));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg3;
    MEM[MEM[64] + 100] = varg2;
    0x1902(132 + MEM[64], 0x23b872dd, address(v1), address(v1));
    v2 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v2.data, msg.data.length, 0);
        v3 = v2.data;
    }
    MEM[4 + MEM[64]] = varg0;
    v4 = new bytes[](v2.length);
    MCOPY(v4.data, v2.data, v2.length);
    v5 = v4.data;
    v4[v2.length] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg3.call(uint32(0x3eece7db), varg0, varg2, False, False, varg1, v4).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v9 = 0x1ac2(v8);
    return v9;
}

function 0x3282(address varg0, int32 varg1, uint256 varg2, address varg3) private { 
    v0, /* address */ v1 = varg3.tokenA().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 == address(v1));
    MEM[MEM[64] + 36] = varg0;
    MEM[MEM[64] + 68] = varg3;
    MEM[MEM[64] + 100] = varg2;
    0x1902(132 + MEM[64], 0x23b872dd, address(v1), address(v1));
    v2 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v2.data, msg.data.length, 0);
        v3 = v2.data;
    }
    MEM[4 + MEM[64]] = varg0;
    v4 = new bytes[](v2.length);
    MCOPY(v4.data, v2.data, v2.length);
    v5 = v4.data;
    v4[v2.length] = 0;
    v6, /* uint256 */ v7, /* uint256 */ v8 = varg3.call(uint32(0x3eece7db), varg0, varg2, True, False, varg1, v4).gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v9 = 0x1ac2(v8);
    return v9;
}

function 0x3360(address varg0, int32 varg1, uint256 varg2, address varg3) private { 
    v0 = new bytes[](1);
    if (1) {
        CALLDATACOPY(v0.data, msg.data.length, 1);
    }
    MEM[MEM[64]] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
    v1 = new bytes[](v0.length);
    MCOPY(v1.data, v0.data, v0.length);
    v1[v0.length] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg3.call(uint32(0x3eece7db), varg0, varg2, False, True, varg1, v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v5 = 0x1ac2(v3);
    v6 = 0x5828(v5);
    return v6;
}

function 0x3448(address varg0, int32 varg1, uint256 varg2, address varg3) private { 
    v0 = new bytes[](1);
    if (1) {
        CALLDATACOPY(v0.data, msg.data.length, 1);
    }
    MEM[MEM[64]] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
    v1 = new bytes[](v0.length);
    MCOPY(v1.data, v0.data, v0.length);
    v1[v0.length] = 0;
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg3.call(uint32(0x3eece7db), varg0, varg2, True, True, varg1, v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v5 = 0x1ac2(v3);
    v6 = 0x5828(v5);
    return v6;
}

function 0x3497(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint256 */ v1, /* address */ v2, /* address */ v3, /* address */ v4, /* address */ v5, /* address */ v6, /* address */ v7, /* address */ v8, /* address */ v9, /* address */ v10, /* address */ v11, /* uint256 */ v12, /* uint256 */ v13, /* uint256 */ v14, /* uint256 */ v15, /* uint256 */ v16, /* uint256 */ v17, /* uint256 */ v18 = varg2.constantsView().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 576);
    v19 = new struct(14);
    require(!((v19 + 448 < v19) | (v19 + 448 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v19.word0 = v1;
    require(v2 == address(v2));
    v19.word1 = v2;
    require(v3 == address(v3));
    v19.word2 = v3;
    require(MEM[64] + RETURNDATASIZE() - (MEM[64] + 96) >= 160);
    v20 = 0x54ec();
    require(v4 == address(v4));
    v20.word0 = v4;
    require(v5 == address(v5));
    v20.word1 = v5;
    require(v6 == address(v6));
    v20.word2 = v6;
    require(v7 == address(v7));
    v20.word3 = v7;
    require(v8 == address(v8));
    v20.word4 = v8;
    v19.word3 = v20;
    require(v9 == address(v9));
    v19.word4 = v9;
    require(v10 == address(v10));
    v19.word5 = v10;
    require(v11 == address(v11));
    v19.word6 = v11;
    v19.word7 = v12;
    v19.word8 = v13;
    v19.word9 = v14;
    v19.word10 = v15;
    v19.word11 = v16;
    v19.word12 = v17;
    v19.word13 = v18;
    if (address(v19.word5) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112) {
        v21, /* uint256 */ v22 = varg2.swapInWithCallback(1, varg1, 0, varg0).gas(msg.gas);
        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v23, /* uint256 */ v22 = varg2.swapIn(1, varg1, 0, varg0).value(varg1).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    v24 = 0x1ac2(v22);
    return v24;
}

function 0x36a9(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint256 */ v1, /* address */ v2, /* address */ v3, /* address */ v4, /* address */ v5, /* address */ v6, /* address */ v7, /* address */ v8, /* address */ v9, /* address */ v10, /* address */ v11, /* uint256 */ v12, /* uint256 */ v13, /* uint256 */ v14, /* uint256 */ v15, /* uint256 */ v16, /* uint256 */ v17, /* uint256 */ v18 = varg2.constantsView().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 576);
    v19 = new struct(14);
    require(!((v19 + 448 < v19) | (v19 + 448 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v19.word0 = v1;
    require(v2 == address(v2));
    v19.word1 = v2;
    require(v3 == address(v3));
    v19.word2 = v3;
    require(MEM[64] + RETURNDATASIZE() - (MEM[64] + 96) >= 160);
    v20 = 0x54ec();
    require(v4 == address(v4));
    v20.word0 = v4;
    require(v5 == address(v5));
    v20.word1 = v5;
    require(v6 == address(v6));
    v20.word2 = v6;
    require(v7 == address(v7));
    v20.word3 = v7;
    require(v8 == address(v8));
    v20.word4 = v8;
    v19.word3 = v20;
    require(v9 == address(v9));
    v19.word4 = v9;
    require(v10 == address(v10));
    v19.word5 = v10;
    require(v11 == address(v11));
    v19.word6 = v11;
    v19.word7 = v12;
    v19.word8 = v13;
    v19.word9 = v14;
    v19.word10 = v15;
    v19.word11 = v16;
    v19.word12 = v17;
    v19.word13 = v18;
    if (address(v19.word6) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112) {
        v21, /* uint256 */ v22 = varg2.swapInWithCallback(0, varg1, 0, varg0).gas(msg.gas);
        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v23, /* uint256 */ v22 = varg2.swapIn(0, varg1, 0, varg0).value(varg1).gas(msg.gas);
        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    v24 = 0x1ac2(v22);
    return v24;
}

function 0x382f(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.swapOutWithCallback(1, varg1, uint256.max, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v2 = 0x1ac2(v1);
    v3 = 0x5828(v2);
    return v3;
}

function 0x390b(address varg0, uint256 varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.swapOutWithCallback(0, varg1, uint256.max, varg0).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v2 = 0x1ac2(v1);
    v3 = 0x5828(v2);
    return v3;
}

function 0x3cb(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = _dexCallback[tx.origin];
    if (v1) {
        v0 = v2 = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41) == msg.sender;
    }
    require(v0, Error('Unauthorized origin and/or caller'));
    v3 = 0xe1a(0, varg1, varg2);
    emit 0xd7cf88e4bcca455701f69cc774034a649b16dcf4c3607676ea5f556353332623(v3);
    require(v3 >= varg0, Error('Loose imbalance underflow'));
    return ;
}

function 0x498b(address varg0, uint256 varg1, address varg2, address varg3, address varg4) private { 
    MEM[MEM[64] + 68] = varg3;
    MEM[MEM[64] + 100] = varg2;
    MEM[MEM[64] + 132] = varg1;
    MEM[MEM[64] + 164] = 1;
    MEM[MEM[64] + 196] = varg0;
    MEM[MEM[64] + 32] = 0xa317b93b00000000000000000000000000000000000000000000000000000000 | uint224(varg4);
    v0 = new uint256[](196);
    MCOPY(v0.data, MEM[64] + 32, 196);
    MEM[v0 + 196 + 32] = 0;
    v1, /* uint256 */ v2 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(MEM[MEM[64]] <= uint64.max);
    require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
    require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + MEM[MEM[64]]]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + MEM[MEM[64]]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
    MCOPY(v3.data, MEM[64] + MEM[MEM[64]] + 32, MEM[MEM[64] + MEM[MEM[64]]]);
    v3[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
    require(v3.data + v3.length - v3.data >= 32);
    return MEM[v3.data];
}

function 0x4b19(address varg0, uint256 varg1, address varg2, address varg3, address varg4) private { 
    MEM[MEM[64] + 68] = varg3;
    MEM[MEM[64] + 100] = varg2;
    MEM[MEM[64] + 132] = varg1;
    MEM[MEM[64] + 164] = 0;
    MEM[MEM[64] + 196] = varg0;
    MEM[MEM[64] + 32] = 0xa317b93b00000000000000000000000000000000000000000000000000000000 | uint224(varg4);
    v0 = new uint256[](196);
    MCOPY(v0.data, MEM[64] + 32, 196);
    MEM[v0 + 196 + 32] = 0;
    v1, /* uint256 */ v2 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(MEM[MEM[64]] <= uint64.max);
    require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
    require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](MEM[MEM[64] + MEM[MEM[64]]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + MEM[MEM[64]]]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + MEM[MEM[64]]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
    MCOPY(v3.data, MEM[64] + MEM[MEM[64]] + 32, MEM[MEM[64] + MEM[MEM[64]]]);
    v3[MEM[MEM[64] + MEM[MEM[64]]]] = 0;
    require(v3.data + v3.length - v3.data >= 32);
    return MEM[v3.data];
}

function 0x4bf1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 > 0, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = v1 = varg1 > 0;
    if (v1) {
        v0 = v2 = varg0 > 0;
    }
    require(v0, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(997, varg2);
    v4 = _SafeMul(v3, varg0);
    v5 = _SafeMul(1000, varg1);
    require(v5 <= v3 + v5, Panic(17)); // arithmetic overflow or underflow
    v6 = _SafeDiv(v4, v3 + v5);
    return v6;
}

function 0x4d5b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 > 0, Error('UniswapV2Library: INSUFFICIENT_OUTPUT_AMOUNT'));
    v0 = v1 = varg1 > 0;
    if (v1) {
        v0 = v2 = varg0 > 0;
    }
    require(v0, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
    v3 = _SafeMul(varg1, varg2);
    v4 = _SafeMul(1000, v3);
    v5 = _SafeSub(varg0, varg2);
    v6 = _SafeMul(997, v5);
    v7 = _SafeDiv(v4, v6);
    require(1 <= v7 + 1, Panic(17)); // arithmetic overflow or underflow
    return v7 + 1;
}

function 0x4ecc(uint256 varg0) private { 
    require(varg0 < 0x80000000000000000000000000000000, SafeCastOverflow());
    return varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!((varg1 == int256.min) & (varg0 < 0)), Panic(17)); // arithmetic overflow or underflow
    require(!varg0 | (varg1 == varg1 * varg0 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    v0 = varg1 + varg0 < varg1;
    require(!((varg0 < 0) & (varg1 + varg0 >= varg1) | v0 & (varg0 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x54ec() private { 
    v0 = new struct(5);
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x5828(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x5b4a(address varg0, address varg1) private { 
    require(varg1 + varg0 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x5bf0(address varg0, address varg1) private { 
    require(varg0 - varg1 <= uint160.max, Panic(17)); // arithmetic overflow or underflow
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

function 0x64f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = _dexCallback[tx.origin];
    if (v1) {
        v0 = v2 = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41) == msg.sender;
    }
    require(v0, Error('Unauthorized origin and/or caller'));
    v3 = 0xe1a(STORAGE[0], varg1, varg2);
    emit 0xd7cf88e4bcca455701f69cc774034a649b16dcf4c3607676ea5f556353332623(v3);
    require(v3 >= varg0, Error('Loose imbalance underflow'));
    return ;
}

function 0x7e8(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = _dexCallback[tx.origin];
    if (v1) {
        v0 = v2 = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41) == msg.sender;
    }
    require(v0, Error('Unauthorized origin and/or caller'));
    v3 = 0xe1a(STORAGE[0], varg0, varg1);
    STORAGE[0] = v3;
    return ;
}

function receive() public payable { 
}

function 0xb40(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = _dexCallback[tx.origin];
    if (v1) {
        v0 = v2 = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41) == msg.sender;
    }
    require(v0, Error('Unauthorized origin and/or caller'));
    v3 = 0xe1a(0, varg0, varg1);
    STORAGE[0] = v3;
    return ;
}

function 0xe1a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    while (varg1 > uint8(v0)) {
        v2 = msg.data.length;
        require(uint8(v0) < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg2 + (uint8(v0) << 5)] < msg.data.length - varg2 - 95);
        v3 = msg.data[varg2 + (uint8(v0) << 5)] + varg2;
        v4 = v5 = 0;
        require(v3 + 32 - v3 >= 32);
        require(msg.data[v3] == address(msg.data[v3]));
        if (address(msg.data[v3]) - v5) {
            require(v3 + 32 - v3 >= 32);
            require(msg.data[v3] == address(msg.data[v3]));
            require(msg.data[v3 + 32] < msg.data.length - v3 - 31);
            require(msg.data[v3 + msg.data[v3 + 32]] <= uint64.max);
            require(32 + (v3 + msg.data[v3 + 32]) <= msg.data.length - msg.data[v3 + msg.data[v3 + 32]]);
            CALLDATACOPY(MEM[64], 32 + (v3 + msg.data[v3 + 32]), msg.data[v3 + msg.data[v3 + 32]]);
            MEM[msg.data[v3 + msg.data[v3 + 32]] + MEM[64]] = 0;
            v6, /* uint256 */ v7, /* uint256 */ v8, /* uint256 */ v9 = address(msg.data[v3]).call(MEM[MEM[64]:MEM[64] + msg.data[v5348 + msg.data[v5348 + 32]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v10 = v11 = 96;
            } else {
                v10 = v12 = new bytes[](RETURNDATASIZE());
                v7 = v12.data;
                RETURNDATACOPY(v7, 0, RETURNDATASIZE());
            }
            if (v6) {
                if (msg.data[v3 + 64]) {
                    require(v8 + MEM[v10] - v8 >= 32);
                    v4 = MEM[v8];
                }
            } else {
                v13 = new uint256[](MEM[v10]);
                MCOPY(v13.data, v9, MEM[v10]);
                MEM[v13 + MEM[v10] + 32] = 0;
                revert(Error(v13));
            }
        } else {
            require(msg.data[v3 + 32] < msg.data.length - v3 - 31);
            require(msg.data[v3 + msg.data[v3 + 32]] <= uint64.max);
            require(32 + (v3 + msg.data[v3 + 32]) <= msg.data.length - msg.data[v3 + msg.data[v3 + 32]]);
            v4 = v14 = 0x1949(msg.data[v3 + msg.data[v3 + 32]], 32 + (v3 + msg.data[v3 + 32]));
        }
        v15 = 0x1ac2(msg.data[64 + v3]);
        v16 = _SafeMul(v4, v15);
        varg0 = _SafeAdd(varg0, v16);
        require(uint8(v0) - uint8.max, Panic(17)); // arithmetic overflow or underflow
        v0 = 1 + uint8(v0);
    }
    return varg0;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_dexCallback[tx.origin], Error('Unauthorized origin'));
    v1, /* address */ v2 = msg.sender.token0().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == address(v2));
    v3, /* address */ v4 = msg.sender.token1().gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v4 == address(v4));
    if (amount0Delta <= 0) {
        require(amount1Delta > 0);
        MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = amount1Delta;
        0x1902(132 + MEM[64], 0x23b872dd, address(v4), address(v4));
    } else {
        MEM[MEM[64] + 36] = address(0x9008d19f58aabd9ed0d60971565aa8510560ab41);
        MEM[MEM[64] + 68] = msg.sender;
        MEM[MEM[64] + 100] = amount0Delta;
        0x1902(132 + MEM[64], 0x23b872dd, address(v2), address(v2));
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x91a8ec48 > function_selector >> 224) {
        if (0x5e482445 > function_selector >> 224) {
            if (0x23a69e75 == function_selector >> 224) {
                pancakeV3SwapCallback(int256,int256,bytes);
            } else if (0x47a4a989 == function_selector >> 224) {
                0x47a4a989();
            } else {
                require(0x5197a0d3 == function_selector >> 224);
                0x5197a0d3();
            }
        } else if (0x5e482445 == function_selector >> 224) {
            0x5e482445();
        } else if (0x67ca7c91 == function_selector >> 224) {
            maverickV2SwapCallback(address,uint256,uint256,bytes);
        } else if (0x752be0d6 == function_selector >> 224) {
            0x752be0d6();
        } else {
            require(0x7f6e9d4b == function_selector >> 224);
            0x7f6e9d4b();
        }
    } else if (0xa317b93b > function_selector >> 224) {
        if (0x91a8ec48 == function_selector >> 224) {
            0x91a8ec48();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else {
            require(0x9410ae88 == function_selector >> 224);
            dexCallback(address,uint256);
        }
    } else if (0xa317b93b == function_selector >> 224) {
        0xa317b93b();
    } else if (0xb80f2bdf == function_selector >> 224) {
        0xb80f2bdf();
    } else if (0xf851a440 == function_selector >> 224) {
        admin();
    } else {
        require(0xfa461e33 == function_selector >> 224);
        uniswapV3SwapCallback(int256,int256,bytes);
    }
}
