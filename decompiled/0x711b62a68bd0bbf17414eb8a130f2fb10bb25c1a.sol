// Decompiled by library.dedaub.com
// 2026.04.13 08:44 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
uint256 ___function_selector__; // TRANSIENT_STORAGE[0x0]
uint256 tstor_1; // TRANSIENT_STORAGE[0x1]



function withdraw(address tokenAddress, address _toUser, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(address(0xc52ab97b1fd9b9c7d3c13d1498c2666509034cbc) == msg.sender, Error(0x343031));
    if (tokenAddress) {
        require(bool(tokenAddress.code.size));
        v0 = tokenAddress.transfer(_toUser, amount).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v1 = _toUser.call().value(amount).gas(2300 * !amount);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x3c56(uint256 varg0) private { 
    if (varg0 >= 0) {
        return varg0;
    } else {
        v0 = 0x3dfd(varg0);
        return v0;
    }
}

function 0x3dfd(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x408a(uint8 varg0, uint8 varg1) private { 
    require(varg1 * varg0 == uint8(varg1 * varg0), Panic(17)); // arithmetic overflow or underflow
    return uint8(varg1 * varg0);
}

function 0x40ad(uint8 varg0, uint8 varg1) private { 
    require(varg1 + varg0 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x40c6(uint8 varg0, uint8 varg1) private { 
    require(varg0 - varg1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, bytes20 varg3, uint256 varg4, bytes20 varg5, uint256 varg6, uint32 varg7, uint8 varg8, uint256 varg9, uint256 varg10, bytes20 varg11, bytes20 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21, bytes20 varg22) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0xd9caed12 == function_selector >> 224) {
        withdraw(address,address,uint256);
    }
    v0 = msg.data.length;
    if (tx.origin - msg.sender) {
        require(address(0xc52ab97b1fd9b9c7d3c13d1498c2666509034cbc) == tx.origin, Error(0x343031));
        v1 = v2 = 132;
        require(0 <= 4);
        require(4 <= v0);
        v3 = v4 = function_selector;
        if (4 < 4) {
            v3 = v5 = function_selector;
        }
        v6 = v7 = v3 >> 224 == 0xfa461e33;
        if (v3 >> 224 != 0xfa461e33) {
            v6 = v8 = 0x23a69e75 == uint32(v3 >> 224);
        }
        if (!v6) {
            v6 = v9 = 0xf40a74a8 == uint32(v3 >> 224);
        }
        if (!v6) {
            v6 = v10 = 0xa224ef83 == uint32(v3 >> 224);
        }
        if (!v6) {
            v6 = v11 = 0x2c8958f6 == uint32(v3 >> 224);
        }
        if (!v6) {
            if (!(0x91dd7346 - uint32(v3 >> 224))) {
                require(0x4444c5dc75cb358380d2e3de08a90 == msg.sender, Error('not pool manager'));
                require(68 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (66 - (varg9 >> 248)) {
                    if (!(64 - uint8(varg9 >> 248))) {
                        require(1 <= 69, Panic(17)); // arithmetic overflow or underflow
                        require(69 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(21 <= 90, Panic(17)); // arithmetic overflow or underflow
                        require(70 <= 90);
                        require(90 <= v0);
                        v12 = v13 = varg11;
                        if (20 < 20) {
                            v12 = v14 = varg11;
                        }
                        require(21 <= 90, Panic(17)); // arithmetic overflow or underflow
                        require(41 <= 110, Panic(17)); // arithmetic overflow or underflow
                        require(90 <= 110);
                        require(110 <= v0);
                        v15 = v16 = varg12;
                        if (20 < 20) {
                            v15 = v17 = varg12;
                        }
                        require(42 <= 111, Panic(17)); // arithmetic overflow or underflow
                        require(111 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(41 <= 110, Panic(17)); // arithmetic overflow or underflow
                        require(110 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v18 = uint32(varg13 >> 248 << 8 | varg14 >> 248);
                        require(44 <= 113, Panic(17)); // arithmetic overflow or underflow
                        require(113 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(43 <= 112, Panic(17)); // arithmetic overflow or underflow
                        require(112 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v19 = uint32(varg15 >> 248 << 8 | varg16 >> 248);
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(44 <= 114, Panic(17)); // arithmetic overflow or underflow
                        require(4 <= 118, Panic(17)); // arithmetic overflow or underflow
                        require(118 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(44 <= 114, Panic(17)); // arithmetic overflow or underflow
                        require(3 <= 117, Panic(17)); // arithmetic overflow or underflow
                        require(117 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(44 <= 114, Panic(17)); // arithmetic overflow or underflow
                        require(2 <= 116, Panic(17)); // arithmetic overflow or underflow
                        require(116 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(44 <= 114, Panic(17)); // arithmetic overflow or underflow
                        require(1 <= 115, Panic(17)); // arithmetic overflow or underflow
                        require(115 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(1 <= 70, Panic(17)); // arithmetic overflow or underflow
                        require(44 <= 114, Panic(17)); // arithmetic overflow or underflow
                        require(114 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v20 = v21 = uint32(varg17 >> 248 << 24 | varg18 >> 248 << 16 | varg19 >> 248 << 8 | varg20 >> 248) << (varg21 >> 248);
                        if (0x1 & varg10 >> 248 >> 3 == 1) {
                            v20 = v22 = 0x3dfd(v21);
                        }
                        require(50 <= 119, Panic(17)); // arithmetic overflow or underflow
                        require(70 <= 139, Panic(17)); // arithmetic overflow or underflow
                        require(119 <= 139);
                        require(139 <= v0);
                        v23 = v24 = varg22;
                        if (20 < 20) {
                            v23 = v25 = varg22;
                        }
                        if (1 != 0x1 & varg10 >> 248 >> 2) {
                            v26, v27 = 0x4444c5dc75cb358380d2e3de08a90.swap(v12 >> 96, v15 >> 96, v18, v19, 0, 1 == 0x1 & varg10 >> 248 >> 2, v20, 0xfffd8963efd1fc6a506488495d951d5263988d25, 288, 0).gas(msg.gas);
                            require(v26, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(v26, Error('Swap at uniV4 failed'));
                            require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                            v28 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v15 >> 96)).gas(msg.gas);
                            require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            if (0x1 & varg10 >> 248 >> 3 == 1) {
                                v29 = v30 = int128(uint128(v27));
                                if (v30 < 0) {
                                    v29 = v31 = 0x3dfd(v30);
                                }
                                v32 = v33 = !address(v15 >> 96);
                                if (address(v15 >> 96)) {
                                    v32 = v34 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v15 >> 96);
                                }
                                if (!v32) {
                                    require(bool((address(v15 >> 96)).code.size));
                                    v35 = address(v15 >> 96).transfer(0x4444c5dc75cb358380d2e3de08a90, v29).gas(msg.gas);
                                    require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    v36, /* uint256 */ v37 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                                    require(bool(v36), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    if (!(address(v15 >> 96) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                                        tstor_1 += v29;
                                    }
                                } else {
                                    v38 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v29).gas(msg.gas);
                                    require(v38, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(v38, Error('UnWrap WETH to ETH before uni-V4 swap failed'));
                                    tstor_1 += v29;
                                    v39, /* uint256 */ v40 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v29).gas(msg.gas);
                                    require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                }
                                require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                                v41 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v12 >> 96), address(v23 >> 96), int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000)).gas(msg.gas);
                                require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v42 = v43 = !address(v12 >> 96);
                                if (address(v12 >> 96)) {
                                    v42 = v44 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v12 >> 96);
                                }
                                if (v42) {
                                    v45 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000)).gas(msg.gas);
                                    require(v45, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    ___function_selector__ += int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                    require(v45, Error('Wrap ETH to WETH after uni-V4 swap failed'));
                                }
                                if (!(address(v12 >> 96) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                                    ___function_selector__ += int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                }
                            }
                        } else {
                            v46, v47 = 0x4444c5dc75cb358380d2e3de08a90.swap(v12 >> 96, v15 >> 96, v18, v19, 0, 1 == 0x1 & varg10 >> 248 >> 2, v20, 0x1000276a4, 288, 0).gas(msg.gas);
                            require(v46, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            require(v46, Error('Swap at uniV4 failed'));
                            require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                            v48 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v12 >> 96)).gas(msg.gas);
                            require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                            if (0x1 & varg10 >> 248 >> 3 == 1) {
                                v49 = v50 = int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                if (v50 < 0) {
                                    v49 = v51 = 0x3dfd(v50);
                                }
                                v52 = v53 = !address(v12 >> 96);
                                if (address(v12 >> 96)) {
                                    v52 = v54 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v12 >> 96);
                                }
                                if (!v52) {
                                    require(bool((address(v12 >> 96)).code.size));
                                    v55 = address(v12 >> 96).transfer(0x4444c5dc75cb358380d2e3de08a90, v49).gas(msg.gas);
                                    require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    v56, /* uint256 */ v57 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                                    require(bool(v56), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    if (!(address(v12 >> 96) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                                        tstor_1 += v49;
                                    }
                                } else {
                                    v58 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v49).gas(msg.gas);
                                    require(v58, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(v58, Error('UnWrap WETH to ETH before uni-V4 swap failed'));
                                    tstor_1 += v49;
                                    v59, /* uint256 */ v60 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v49).gas(msg.gas);
                                    require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                }
                                require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                                v61 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v15 >> 96), address(v23 >> 96), int128(uint128(v47))).gas(msg.gas);
                                require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                v62 = v63 = !address(v15 >> 96);
                                if (address(v15 >> 96)) {
                                    v62 = v64 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v15 >> 96);
                                }
                                if (v62) {
                                    v65 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(int128(uint128(v47))).gas(msg.gas);
                                    require(v65, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    ___function_selector__ += int128(uint128(v47));
                                    require(v65, Error('Wrap ETH to WETH after uni-V4 swap failed'));
                                }
                                if (!(address(v15 >> 96) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                                    ___function_selector__ += int128(uint128(v47));
                                }
                            }
                        }
                        MEM[32 + MEM[64]] = 32;
                        MEM[32 + MEM[64] + 32] = 0;
                        v66 = v67 = MEM[64];
                        MEM[v67] = 64;
                        MEM[64] += 96;
                    }
                } else {
                    require(1 <= 69, Panic(17)); // arithmetic overflow or underflow
                    require(69 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v68 = v69 = 0x3dfd(varg7 << varg8);
                    v70 = v71 = 0;
                    v72 = v73 = 0;
                    v74 = v75 = 0;
                    while (v74 < varg10 >> 248) {
                        v76 = _SafeMul(45, v74);
                        require(68 <= v76 + 68, Panic(17)); // arithmetic overflow or underflow
                        require(7 <= v76 + 68 + 7, Panic(17)); // arithmetic overflow or underflow
                        require(v76 + 68 + 7 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v72 = v77 = address(msg.data[v74 * 45 + 64]);
                        v72 = v78 = address(msg.data[84 + v74 * 45]);
                        v79 = msg.data[v76 + 68 + 7] >> 248 & 0x4 == 4;
                        if (!(0 - v74)) {
                            if (v79) {
                            }
                        }
                        v80 = _SafeSub(varg10 >> 248, 1);
                        if (!(v74 - v80)) {
                            if (v79) {
                            }
                        }
                        if (v74) {
                            v68 = v81 = 0x3dfd(v70);
                        }
                        if (msg.data[v76 + 68 + 7] >> 248 & 0x4 != 4) {
                            v82 = 0x4444c5dc75cb358380d2e3de08a90.swap(v77, v78, uint16(msg.data[86 + v74 * 45]), uint16(msg.data[88 + v74 * 45]), 0, v79, v68, 0xfffd8963efd1fc6a506488495d951d5263988d25, 288, 0).gas(msg.gas);
                            if (v82) {
                                if (0 - v74) {
                                    v70 = v83 = int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                } else {
                                    v70 = v84 = int128(uint128(0xf3cd914c00000000000000000000000000000000000000000000000000000000));
                                    v70 = v85 = int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                }
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            v86 = 0x4444c5dc75cb358380d2e3de08a90.swap(v77, v78, uint16(msg.data[86 + v74 * 45]), uint16(msg.data[88 + v74 * 45]), 0, v79, v68, 0x1000276a4, 288, 0).gas(msg.gas);
                            if (v86) {
                                if (0 - v74) {
                                    v70 = v87 = int128(uint128(0xf3cd914c00000000000000000000000000000000000000000000000000000000));
                                } else {
                                    v70 = v88 = int128(0xfffffffffffffffffffffffffffffffff3cd914c000000000000000000000000);
                                    v70 = v89 = int128(uint128(0xf3cd914c00000000000000000000000000000000000000000000000000000000));
                                }
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v74 += 1;
                    }
                    require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                    v90 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v72)).gas(msg.gas);
                    require(bool(v90), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    v91 = 0x3dfd(v70);
                    if (address(v72)) {
                        require(bool((address(v72)).code.size));
                        v92 = address(v72).transfer(0x4444c5dc75cb358380d2e3de08a90, v91).gas(msg.gas);
                        require(bool(v92), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        v93, /* uint256 */ v94 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
                        require(bool(v93), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        if (!(address(v72) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                            tstor_1 += v91;
                        }
                    } else {
                        v95 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v91).gas(msg.gas);
                        require(v95, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        tstor_1 += v91;
                        v96, /* uint256 */ v97 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v91).gas(msg.gas);
                        require(bool(v96), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    }
                    require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
                    v98 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v72), address(msg.data[(varg10 >> 248) * 45 + 63]), v70).gas(msg.gas);
                    require(bool(v98), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    if (address(v72)) {
                        if (!(address(v72) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e)) {
                            ___function_selector__ += v70;
                        }
                    } else {
                        v99 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v70).gas(msg.gas);
                        require(v99, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        ___function_selector__ += v70;
                        require(v99, Error('Wrap ETH to WETH after uni-V4 swap failed'));
                    }
                    MEM[32 + MEM[64]] = 32;
                    MEM[32 + MEM[64] + 32] = 0;
                    v66 = v100 = MEM[64];
                    MEM[v100] = 64;
                    MEM[64] += 96;
                }
            }
        } else {
            v101 = v102 = 0;
            while (1) {
                revert(Error('invalid protocolId'));
                if (uint32(v101) >= 10) {
                    break;
                } else {
                    require(v1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v103 = msg.data[v1] >> 248;
                    if (32 - v103) {
                        if (48 - uint8(v103)) {
                            if (64 - uint8(v103)) {
                                if (66 - uint8(v103)) {
                                    if (128 - uint8(v103)) {
                                        if (144 - uint8(v103)) {
                                            v104 = v105 = uint8.max == uint8(v103);
                                            if (uint8.max != uint8(v103)) {
                                                v104 = v106 = !uint8(v103);
                                            }
                                            if (v104) {
                                                break;
                                            }
                                        } else {
                                            require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                                            require(v1 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            if (0 - (msg.data[v1 + 1] >> 248)) {
                                                if (!(1 - uint8(msg.data[v1 + 1] >> 248))) {
                                                    require(36 <= 68);
                                                    require(68 <= v0);
                                                    require(32 >= 32);
                                                    v107 = v108 = 0x3c56(varg6);
                                                }
                                            } else {
                                                require(4 <= 36);
                                                require(36 <= v0);
                                                require(32 >= 32);
                                                v107 = v109 = 0x3c56(varg4);
                                            }
                                            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                            v110 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v107).gas(msg.gas);
                                            if (bool(v110)) {
                                                v1 += 2;
                                                require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                                                v111 = tstor_1;
                                                tstor_1 = v107 + v111;
                                            } else {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        }
                                    } else {
                                        require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                                        require(21 <= v1 + 21, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 1 <= v1 + 21);
                                        require(v1 + 21 <= v0);
                                        v112 = v113 = bytes20(msg.data[v1 + 1]);
                                        if (v1 + 21 - (v1 + 1) < 20) {
                                            v112 = v114 = bytes20(msg.data[v1 + 1] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 21 - (v1 + 1)) << 3));
                                        }
                                        require(21 <= v1 + 21, Panic(17)); // arithmetic overflow or underflow
                                        require(41 <= v1 + 41, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 21 <= v1 + 41);
                                        require(v1 + 41 <= v0);
                                        v115 = v116 = bytes20(msg.data[v1 + 21]);
                                        if (v1 + 41 - (v1 + 21) < 20) {
                                            v115 = v117 = bytes20(msg.data[v1 + 21] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 41 - (v1 + 21)) << 3));
                                        }
                                        require(44 <= v1 + 44, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 44 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(43 <= v1 + 43, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 43 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(42 <= v1 + 42, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 42 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(41 <= v1 + 41, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 41 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        require(45 <= v1 + 45, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 45 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v118 = uint32(uint32(uint8(msg.data[v1 + 41] >> 248 << 248 >> 248)) << 24 | msg.data[v1 + 42] >> 248 << 16 | msg.data[v1 + 43] >> 248 << 8 | msg.data[v1 + 44] >> 248) << (msg.data[v1 + 45] >> 248);
                                        require(bool((address(v112 >> 96)).code.size));
                                        v119 = address(v112 >> 96).transfer(address(v115 >> 96), v118).gas(msg.gas);
                                        if (bool(v119)) {
                                            v1 += 46;
                                            require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v120 = msg.data[v1 + 1] >> 248;
                                    v121 = 0x408a(45, v120);
                                    v122 = 0x40ad(7, v121);
                                    v123 = v124 = uint8(v122);
                                    v125 = 0x40c6(v120, 1);
                                    v126 = 0x408a(45, v125);
                                    require(v1 <= uint8(v126) + v1, Panic(17)); // arithmetic overflow or underflow
                                    require(7 <= uint8(v126) + v1 + 7, Panic(17)); // arithmetic overflow or underflow
                                    require(uint8(v126) + v1 + 7 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v127 = msg.data[uint8(v126) + v1 + 7] >> 248;
                                    v128 = v129 = 0;
                                    if (v129 - (v127 & 0x3)) {
                                        if (1 - (v127 & 0x3)) {
                                            if (2 - (v127 & 0x3)) {
                                                if (!(3 - (v127 & 0x3))) {
                                                    v123 = 20 + v124;
                                                    require(v124 <= v123, Panic(17)); // arithmetic overflow or underflow
                                                }
                                            } else {
                                                v128 = v130 = this;
                                            }
                                        } else {
                                            v131 = 0x408a(45, v120);
                                            require(7 <= v1 + 7, Panic(17)); // arithmetic overflow or underflow
                                            require(v1 + 7 <= uint8(v131) + (v1 + 7), Panic(17)); // arithmetic overflow or underflow
                                            v132 = uint8(v131) + (v1 + 7) + 2;
                                            require(2 <= v132, Panic(17)); // arithmetic overflow or underflow
                                            v133 = 0x408a(45, v120);
                                            require(7 <= v1 + 7, Panic(17)); // arithmetic overflow or underflow
                                            require(v1 + 7 <= uint8(v133) + (v1 + 7), Panic(17)); // arithmetic overflow or underflow
                                            require(2 <= uint8(v133) + (v1 + 7) + 2, Panic(17)); // arithmetic overflow or underflow
                                            v134 = uint8(v133) + (v1 + 7) + 2 + 20;
                                            require(20 <= v134, Panic(17)); // arithmetic overflow or underflow
                                            require(v132 <= v134);
                                            require(v134 <= v0);
                                            v135 = v136 = bytes20(msg.data[v132]);
                                            if (v134 - v132 < 20) {
                                                v135 = v137 = bytes20(msg.data[v132] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v134 - v132) << 3));
                                            }
                                            v128 = v138 = v135 >> 96;
                                        }
                                    } else {
                                        v128 = v139 = msg.sender;
                                    }
                                    require(v1 <= v123 + v1, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 <= v123 + v1);
                                    require(v123 + v1 <= v0);
                                    CALLDATACOPY(32 + MEM[64], v1, v123 + v1 - v1);
                                    MEM[v123 + v1 - v1 + (32 + MEM[64])] = bytes20(v128 << 96);
                                    v140 = 20 + (v123 + v1 - v1 + (32 + MEM[64]));
                                    MEM[v140] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                    MEM[4 + v140] = 32;
                                    MEM[4 + v140 + 32] = v140 - MEM[64] - 32;
                                    v141 = v142 = 0;
                                    while (v141 < v140 - MEM[64] - 32) {
                                        MEM[v141 + (4 + v140 + 32 + 32)] = MEM[v141 + (MEM[64] + 32)];
                                        v141 += 32;
                                    }
                                    MEM[v140 - MEM[64] - 32 + (4 + v140 + 32 + 32)] = 0;
                                    v143 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3fbbV0x2346 - MEM[64] - 32 + 4 + v3fbbV0x2346 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (bool(v143)) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                        require(MEM[MEM[64]] <= uint64.max);
                                        require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                        require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        MEM[MEM[64]] = MEM[MEM[64] + MEM[MEM[64]]];
                                        require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
                                        v144 = v145 = 0;
                                        while (v144 < MEM[MEM[64] + MEM[MEM[64]]]) {
                                            MEM[v144 + (MEM[64] + 32)] = MEM[v144 + (MEM[64] + MEM[MEM[64]] + 32)];
                                            v144 += 32;
                                        }
                                        MEM[MEM[MEM[64] + MEM[MEM[64]]] + (MEM[64] + 32)] = 0;
                                        v1 += v123;
                                        require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                                    } else {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                            } else {
                                require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v146 = msg.data[v1 + 1] >> 248;
                                v147 = v148 = 51;
                                v149 = v150 = 0;
                                if (v150 - (v146 & 0x3)) {
                                    if (1 - (v146 & 0x3)) {
                                        if (2 - (v146 & 0x3)) {
                                            if (!(3 - (v146 & 0x3))) {
                                                v147 = 71;
                                                require(v148 <= v147, Panic(17)); // arithmetic overflow or underflow
                                            }
                                        } else {
                                            v149 = v151 = this;
                                        }
                                    } else {
                                        require(53 <= v1 + 53, Panic(17)); // arithmetic overflow or underflow
                                        require(73 <= v1 + 73, Panic(17)); // arithmetic overflow or underflow
                                        require(v1 + 53 <= v1 + 73);
                                        require(v1 + 73 <= v0);
                                        v152 = v153 = bytes20(msg.data[v1 + 53]);
                                        if (v1 + 73 - (v1 + 53) < 20) {
                                            v152 = v154 = bytes20(msg.data[v1 + 53] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 73 - (v1 + 53)) << 3));
                                        }
                                        v149 = v155 = v152 >> 96;
                                    }
                                } else {
                                    v149 = v156 = msg.sender;
                                }
                                require(v1 <= v147 + v1, Panic(17)); // arithmetic overflow or underflow
                                require(v1 <= v147 + v1);
                                require(v147 + v1 <= v0);
                                CALLDATACOPY(32 + MEM[64], v1, v147 + v1 - v1);
                                MEM[v147 + v1 - v1 + (32 + MEM[64])] = bytes20(v149 << 96);
                                v157 = 20 + (v147 + v1 - v1 + (32 + MEM[64]));
                                MEM[v157] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                MEM[4 + v157] = 32;
                                MEM[4 + v157 + 32] = v157 - MEM[64] - 32;
                                v158 = v159 = 0;
                                while (v158 < v157 - MEM[64] - 32) {
                                    MEM[v158 + (4 + v157 + 32 + 32)] = MEM[v158 + (MEM[64] + 32)];
                                    v158 += 32;
                                }
                                MEM[v157 - MEM[64] - 32 + (4 + v157 + 32 + 32)] = 0;
                                v160 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3fbbV0x2110 - MEM[64] - 32 + 4 + v3fbbV0x2110 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (bool(v160)) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(MEM[MEM[64]] <= uint64.max);
                                    require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                    require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    MEM[MEM[64]] = MEM[MEM[64] + MEM[MEM[64]]];
                                    require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
                                    v161 = v162 = 0;
                                    while (v161 < MEM[MEM[64] + MEM[MEM[64]]]) {
                                        MEM[v161 + (MEM[64] + 32)] = MEM[v161 + (MEM[64] + MEM[MEM[64]] + 32)];
                                        v161 += 32;
                                    }
                                    MEM[MEM[MEM[64] + MEM[MEM[64]]] + (MEM[64] + 32)] = 0;
                                    v1 += v147;
                                    require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v163 = msg.data[v1 + 1] >> 248;
                            require(28 <= v1 + 28, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 28 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(27 <= v1 + 27, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 27 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v164 = uint16(msg.data[v1 + 27] >> 248 << 8 | msg.data[v1 + 28] >> 248);
                            v165 = v166 = 0;
                            if (v166 - (v163 & 0x3)) {
                                if (1 - (v163 & 0x3)) {
                                    if (!(2 - (v163 & 0x3))) {
                                        v165 = v167 = this;
                                    }
                                } else {
                                    require(31 <= v1 + 31, Panic(17)); // arithmetic overflow or underflow
                                    require(51 <= v1 + 51, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 31 <= v1 + 51);
                                    require(v1 + 51 <= v0);
                                    v168 = v169 = bytes20(msg.data[v1 + 31]);
                                    if (v1 + 51 - (v1 + 31) < 20) {
                                        v168 = v170 = bytes20(msg.data[v1 + 31] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 51 - (v1 + 31)) << 3));
                                    }
                                    v165 = v171 = v168 >> 96;
                                }
                            } else {
                                v165 = v172 = msg.sender;
                            }
                            require(26 <= v1 + 26, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 26 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(25 <= v1 + 25, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 25 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(24 <= v1 + 24, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 24 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(23 <= v1 + 23, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 23 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 22 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v173 = v174 = uint32(uint32(uint8(msg.data[v1 + 22] >> 248 << 248 >> 248)) << 24 | msg.data[v1 + 23] >> 248 << 16 | msg.data[v1 + 24] >> 248 << 8 | msg.data[v1 + 25] >> 248) << (msg.data[v1 + 26] >> 248);
                            v175 = v176 = 1 == uint8(uint8(v163) >> 7);
                            if (v176) {
                                v175 = v177 = !(0x1 & v163 >> 6);
                            }
                            if (v175) {
                                v175 = v178 = this == address(v165);
                            }
                            if (v175) {
                                v179 = ___function_selector__;
                                ___function_selector__ = v174 + v179;
                            }
                            v180 = v181 = MEM[64];
                            MEM[64] = v181 + 32;
                            MEM[v181] = 0;
                            if (v164) {
                                require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 29 <= v164 + (v1 + 29), Panic(17)); // arithmetic overflow or underflow
                                require(v164 + (v1 + 29) < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                if (0xff00000000000000000000000000000000000000000000000000000000000000 - bytes1(msg.data[v164 + (v1 + 29)])) {
                                    require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                    require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 29 <= v164 + (v1 + 29), Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 29 <= v164 + (v1 + 29));
                                    require(v164 + (v1 + 29) <= v0);
                                    CALLDATACOPY(32 + MEM[64], v1 + 29, v164 + (v1 + 29) - (v1 + 29));
                                    v182 = v164 + (v1 + 29) - (v1 + 29) + (32 + MEM[64]);
                                    MEM[v182] = 0;
                                    v180 = v183 = MEM[64];
                                    MEM[v183] = v182 - v183 - 32;
                                    MEM[64] = v182;
                                } else {
                                    require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                    require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 29 <= v164 + (v1 + 29), Panic(17)); // arithmetic overflow or underflow
                                    v184 = v164 + (v1 + 29) + 1;
                                    require(1 <= v184, Panic(17)); // arithmetic overflow or underflow
                                    require(v1 + 29 <= v184);
                                    require(v184 <= v0);
                                    CALLDATACOPY(32 + MEM[64], v1 + 29, v184 - (v1 + 29));
                                    MEM[v184 - (v1 + 29) + (32 + MEM[64])] = 0;
                                    v180 = v185 = MEM[64];
                                    MEM[v185] = v184 - (v1 + 29) + (32 + MEM[64]) - v185 - 32;
                                    MEM[64] = v184 - (v1 + 29) + (32 + MEM[64]);
                                }
                            }
                            if (0x1 & v163 >> 2 != 1) {
                                require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
                                require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 2 <= v1 + 22);
                                require(v1 + 22 <= v0);
                                v186 = v187 = bytes20(msg.data[v1 + 2]);
                                if (v1 + 22 - (v1 + 2) < 20) {
                                    v186 = v188 = bytes20(msg.data[v1 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 22 - (v1 + 2)) << 3));
                                }
                                if (0x1 & v163 >> 3 != 1) {
                                    v173 = v189 = 0x3dfd(v174);
                                }
                                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = address(v165);
                                MEM[4 + MEM[64] + 32] = False;
                                MEM[4 + MEM[64] + 64] = v173;
                                MEM[4 + MEM[64] + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                MEM[4 + MEM[64] + 128] = 160;
                                MEM[4 + MEM[64] + 160] = MEM[v180];
                                v190 = v191 = 0;
                                while (v190 < MEM[v180]) {
                                    MEM[v190 + (4 + MEM[64] + 160 + 32)] = MEM[v190 + (v180 + 32)];
                                    v190 += 32;
                                }
                                MEM[MEM[v180] + (4 + MEM[64] + 160 + 32)] = 0;
                                v192 = (v186 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1fa4_0x6] + 4 + MEM[64] + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                if (bool(v192)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            } else {
                                require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
                                require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 2 <= v1 + 22);
                                require(v1 + 22 <= v0);
                                v193 = v194 = bytes20(msg.data[v1 + 2]);
                                if (v1 + 22 - (v1 + 2) < 20) {
                                    v193 = v195 = bytes20(msg.data[v1 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 22 - (v1 + 2)) << 3));
                                }
                                if (1 != 0x1 & v163 >> 3) {
                                    v173 = v196 = 0x3dfd(v174);
                                }
                                MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = address(v165);
                                MEM[4 + MEM[64] + 32] = True;
                                MEM[4 + MEM[64] + 64] = v173;
                                MEM[4 + MEM[64] + 96] = address(0x1000276a4);
                                MEM[4 + MEM[64] + 128] = 160;
                                MEM[4 + MEM[64] + 160] = MEM[v180];
                                v197 = v198 = 0;
                                while (v197 < MEM[v180]) {
                                    MEM[v197 + (4 + MEM[64] + 160 + 32)] = MEM[v197 + (v180 + 32)];
                                    v197 += 32;
                                }
                                MEM[MEM[v180] + (4 + MEM[64] + 160 + 32)] = 0;
                                v199 = (v193 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v1fa4_0x6] + 4 + MEM[64] + 160 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                if (bool(v199)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                            require(29 <= v164 + 29, Panic(17)); // arithmetic overflow or underflow
                            v1 += v164 + 29;
                            require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                        }
                    } else {
                        require(1 <= v1 + 1, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v200 = msg.data[v1 + 1] >> 248;
                        v201 = v202 = 1 == msg.data[v1 + 1] >> uint8.max;
                        if (v202) {
                            v201 = v203 = 0x1 & v200 >> 6 == 1;
                        }
                        if (v201) {
                            require(31 <= v1 + 31, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 31 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(30 <= v1 + 30, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 30 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 29 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(28 <= v1 + 28, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 28 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(27 <= v1 + 27, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 27 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v204 = uint32(uint32(uint8(msg.data[v1 + 27] >> 248 << 248 >> 248)) << 24 | msg.data[v1 + 28] >> 248 << 16 | msg.data[v1 + 29] >> 248 << 8 | msg.data[v1 + 30] >> 248) << (msg.data[v1 + 31] >> 248);
                            require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 2 <= v1 + 22);
                            require(v1 + 22 <= v0);
                            v205 = v206 = bytes20(msg.data[v1 + 2]);
                            if (v1 + 22 - (v1 + 2) < 20) {
                                v205 = v207 = bytes20(msg.data[v1 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 22 - (v1 + 2)) << 3));
                            }
                            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                            v208 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transfer(v205 >> 96, v204).gas(msg.gas);
                            if (bool(v208)) {
                                v209 = tstor_1;
                                tstor_1 = v204 + v209;
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        require(26 <= v1 + 26, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 26 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(25 <= v1 + 25, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 25 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(24 <= v1 + 24, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 24 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(23 <= v1 + 23, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 23 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 22 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v210 = uint32(msg.data[v1 + 22] >> 248 << 24 | msg.data[v1 + 23] >> 248 << 16 | msg.data[v1 + 24] >> 248 << 8 | msg.data[v1 + 25] >> 248) << (msg.data[v1 + 26] >> 248);
                        v211 = v212 = 0;
                        if (v212 - (v200 & 0x3)) {
                            if (1 - (v200 & 0x3)) {
                                if (2 - (v200 & 0x3)) {
                                    if (!(3 - (v200 & 0x3))) {
                                        if (1 - (0x1 & v200 >> 7)) {
                                            require(27 <= v1 + 27, Panic(17)); // arithmetic overflow or underflow
                                            require(47 <= v1 + 47, Panic(17)); // arithmetic overflow or underflow
                                            require(v1 + 27 <= v1 + 47);
                                            require(v1 + 47 <= v0);
                                            v213 = v214 = bytes20(msg.data[v1 + 27]);
                                            if (v1 + 47 - (v1 + 27) < 20) {
                                                v213 = v215 = bytes20(msg.data[v1 + 27] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 47 - (v1 + 27)) << 3));
                                            }
                                            v211 = v216 = v213 >> 96;
                                        } else {
                                            require(32 <= v1 + 32, Panic(17)); // arithmetic overflow or underflow
                                            require(52 <= v1 + 52, Panic(17)); // arithmetic overflow or underflow
                                            require(v1 + 32 <= v1 + 52);
                                            require(v1 + 52 <= v0);
                                            v217 = v218 = bytes20(msg.data[v1 + 32]);
                                            if (v1 + 52 - (v1 + 32) < 20) {
                                                v217 = v219 = bytes20(msg.data[v1 + 32] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 52 - (v1 + 32)) << 3));
                                            }
                                            v211 = v220 = v217 >> 96;
                                        }
                                    }
                                } else {
                                    v211 = v221 = this;
                                }
                            } else if (0 - (v200 >> 7 & 0x1)) {
                                require(34 <= v1 + 34, Panic(17)); // arithmetic overflow or underflow
                                require(54 <= v1 + 54, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 34 <= v1 + 54);
                                require(v1 + 54 <= v0);
                                v222 = v223 = bytes20(msg.data[v1 + 34]);
                                if (v1 + 54 - (v1 + 34) < 20) {
                                    v222 = v224 = bytes20(msg.data[v1 + 34] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 54 - (v1 + 34)) << 3));
                                }
                                v211 = v225 = v222 >> 96;
                            } else {
                                require(29 <= v1 + 29, Panic(17)); // arithmetic overflow or underflow
                                require(49 <= v1 + 49, Panic(17)); // arithmetic overflow or underflow
                                require(v1 + 29 <= v1 + 49);
                                require(v1 + 49 <= v0);
                                v226 = v227 = bytes20(msg.data[v1 + 29]);
                                if (v1 + 49 - (v1 + 29) < 20) {
                                    v226 = v228 = bytes20(msg.data[v1 + 29] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 49 - (v1 + 29)) << 3));
                                }
                                v211 = v229 = v226 >> 96;
                            }
                        } else {
                            v211 = v230 = msg.sender;
                        }
                        if (1 - (0x1 & v200 >> 2)) {
                            require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 2 <= v1 + 22);
                            require(v1 + 22 <= v0);
                            v231 = v232 = bytes20(msg.data[v1 + 2]);
                            if (v1 + 22 - (v1 + 2) < 20) {
                                v231 = v233 = bytes20(msg.data[v1 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 22 - (v1 + 2)) << 3));
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = v210;
                            MEM[4 + MEM[64] + 32] = 0;
                            MEM[4 + MEM[64] + 64] = address(v211);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = 0;
                            v234 = v235 = 0;
                            while (v234 < 0) {
                                MEM[v234 + (4 + MEM[64] + 128 + 32)] = MEM[v234 + (MEM[64] + 32)];
                                v234 += 32;
                            }
                            MEM[4 + MEM[64] + 128 + 32] = 0;
                            require(bool((v231 >> 96).code.size));
                            v236 = (v231 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v236)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            require(2 <= v1 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v1 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v1 + 2 <= v1 + 22);
                            require(v1 + 22 <= v0);
                            v237 = v238 = bytes20(msg.data[v1 + 2]);
                            if (v1 + 22 - (v1 + 2) < 20) {
                                v237 = v239 = bytes20(msg.data[v1 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v1 + 22 - (v1 + 2)) << 3));
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = 0;
                            MEM[4 + MEM[64] + 32] = v210;
                            MEM[4 + MEM[64] + 64] = address(v211);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = 0;
                            v240 = v241 = 0;
                            while (v240 < 0) {
                                MEM[v240 + (4 + MEM[64] + 128 + 32)] = MEM[v240 + (MEM[64] + 32)];
                                v240 += 32;
                            }
                            MEM[4 + MEM[64] + 128 + 32] = 0;
                            require(bool((v237 >> 96).code.size));
                            v242 = (v237 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v242)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v243 = v244 = 0x1 & v200 >> 7 == 1;
                        if (v244) {
                            v243 = v245 = !(0x1 & v200 >> 6);
                        }
                        if (v243) {
                            v246 = ___function_selector__;
                            ___function_selector__ = v210 + v246;
                        }
                        v1 += 27;
                        require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                        v247 = v248 = 0x1 & v200 >> 7 == 1;
                        if (v248) {
                            v247 = v249 = 0x1 & v200 >> 6 == 1;
                        }
                        if (v247) {
                            v1 += 5;
                            require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (!(3 - (v200 & 0x3))) {
                            v1 += 20;
                            require(v1 <= v1, Panic(17)); // arithmetic overflow or underflow
                        }
                    }
                    if (v1 < v0) {
                        v101 += 1;
                    } else {
                        break;
                    }
                }
            }
        }
    } else {
        require(address(0xc52ab97b1fd9b9c7d3c13d1498c2666509034cbc) == msg.sender, Error(0x343031));
        require(0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (48 - (function_selector >> 248)) {
            v250 = v251 = 32 == uint8(function_selector >> 248);
            if (32 != uint8(function_selector >> 248)) {
                v250 = v252 = 64 == uint8(function_selector >> 248);
            }
            if (!v250) {
                v250 = v253 = 66 == uint8(function_selector >> 248);
            }
            if (v250) {
                v254 = v255 = 0;
                while (v254 < 100) {
                    require(v254 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    if (32 - (msg.data[v254] >> 248)) {
                        if (64 - uint8(msg.data[v254] >> 248)) {
                            if (66 - uint8(msg.data[v254] >> 248)) {
                                v256 = v257 = uint8.max == uint8(msg.data[v254] >> 248);
                                if (uint8.max != uint8(msg.data[v254] >> 248)) {
                                    v256 = v258 = !uint8(msg.data[v254] >> 248);
                                }
                                if (v256) {
                                    break;
                                }
                            } else {
                                require(1 <= v254 + 1, Panic(17)); // arithmetic overflow or underflow
                                require(v254 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v259 = 0x408a(45, msg.data[v254 + 1] >> 248);
                                v260 = 0x40ad(7, v259);
                                v261 = v262 = uint8(v260);
                                v263 = 0x40c6(msg.data[v254 + 1] >> 248, 1);
                                v264 = 0x408a(45, v263);
                                require(v254 <= uint8(v264) + v254, Panic(17)); // arithmetic overflow or underflow
                                require(7 <= uint8(v264) + v254 + 7, Panic(17)); // arithmetic overflow or underflow
                                require(uint8(v264) + v254 + 7 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v265 = v266 = 0;
                                if (v266 - (msg.data[uint8(v264) + v254 + 7] >> 248 & 0x3)) {
                                    if (1 - (msg.data[uint8(v264) + v254 + 7] >> 248 & 0x3)) {
                                        if (2 - (msg.data[uint8(v264) + v254 + 7] >> 248 & 0x3)) {
                                            if (!(3 - (msg.data[uint8(v264) + v254 + 7] >> 248 & 0x3))) {
                                                v261 = 20 + v262;
                                                require(v262 <= v261, Panic(17)); // arithmetic overflow or underflow
                                            }
                                        } else {
                                            v265 = v267 = this;
                                        }
                                    } else {
                                        v268 = 0x408a(45, msg.data[v254 + 1] >> 248);
                                        require(7 <= v254 + 7, Panic(17)); // arithmetic overflow or underflow
                                        require(v254 + 7 <= uint8(v268) + (v254 + 7), Panic(17)); // arithmetic overflow or underflow
                                        require(2 <= uint8(v268) + (v254 + 7) + 2, Panic(17)); // arithmetic overflow or underflow
                                        v269 = 0x408a(45, msg.data[v254 + 1] >> 248);
                                        require(7 <= v254 + 7, Panic(17)); // arithmetic overflow or underflow
                                        require(v254 + 7 <= uint8(v269) + (v254 + 7), Panic(17)); // arithmetic overflow or underflow
                                        require(2 <= uint8(v269) + (v254 + 7) + 2, Panic(17)); // arithmetic overflow or underflow
                                        v270 = uint8(v269) + (v254 + 7) + 2 + 20;
                                        require(20 <= v270, Panic(17)); // arithmetic overflow or underflow
                                        require(uint8(v268) + (v254 + 7) + 2 <= v270);
                                        require(v270 <= v0);
                                        v271 = v272 = bytes20(msg.data[uint8(v268) + (v254 + 7) + 2]);
                                        if (v270 - (uint8(v268) + (v254 + 7) + 2) < 20) {
                                            v271 = v273 = bytes20(msg.data[uint8(v268) + (v254 + 7) + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v270 - (uint8(v268) + (v254 + 7) + 2)) << 3));
                                        }
                                        v265 = v274 = v271 >> 96;
                                    }
                                } else {
                                    v265 = v275 = msg.sender;
                                }
                                require(v254 <= v261 + v254, Panic(17)); // arithmetic overflow or underflow
                                require(v254 <= v261 + v254);
                                require(v261 + v254 <= v0);
                                CALLDATACOPY(32 + MEM[64], v254, v261 + v254 - v254);
                                MEM[v261 + v254 - v254 + (32 + MEM[64])] = bytes20(v265 << 96);
                                v276 = 20 + (v261 + v254 - v254 + (32 + MEM[64]));
                                MEM[v276] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                MEM[4 + v276] = 32;
                                MEM[4 + v276 + 32] = v276 - MEM[64] - 32;
                                v277 = v278 = 0;
                                while (v277 < v276 - MEM[64] - 32) {
                                    MEM[v277 + (4 + v276 + 32 + 32)] = MEM[v277 + (MEM[64] + 32)];
                                    v277 += 32;
                                }
                                MEM[v276 - MEM[64] - 32 + (4 + v276 + 32 + 32)] = 0;
                                v279 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3fbbV0x127a - MEM[64] - 32 + 4 + v3fbbV0x127a + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (bool(v279)) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                    require(MEM[MEM[64]] <= uint64.max);
                                    require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                    require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    MEM[MEM[64]] = MEM[MEM[64] + MEM[MEM[64]]];
                                    require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
                                    v280 = v281 = 0;
                                    while (v280 < MEM[MEM[64] + MEM[MEM[64]]]) {
                                        MEM[v280 + (MEM[64] + 32)] = MEM[v280 + (MEM[64] + MEM[MEM[64]] + 32)];
                                        v280 += 32;
                                    }
                                    MEM[MEM[MEM[64] + MEM[MEM[64]]] + (MEM[64] + 32)] = 0;
                                    v254 += v261;
                                    require(v254 <= v254, Panic(17)); // arithmetic overflow or underflow
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            require(1 <= v254 + 1, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v282 = v283 = 51;
                            v284 = v285 = 0;
                            if (v285 - (msg.data[v254 + 1] >> 248 & 0x3)) {
                                if (1 - (msg.data[v254 + 1] >> 248 & 0x3)) {
                                    if (2 - (msg.data[v254 + 1] >> 248 & 0x3)) {
                                        if (!(3 - (msg.data[v254 + 1] >> 248 & 0x3))) {
                                            v282 = 71;
                                            require(v283 <= v282, Panic(17)); // arithmetic overflow or underflow
                                        }
                                    } else {
                                        v284 = v286 = this;
                                    }
                                } else {
                                    require(53 <= v254 + 53, Panic(17)); // arithmetic overflow or underflow
                                    require(73 <= v254 + 73, Panic(17)); // arithmetic overflow or underflow
                                    require(v254 + 53 <= v254 + 73);
                                    require(v254 + 73 <= v0);
                                    v287 = v288 = bytes20(msg.data[v254 + 53]);
                                    if (v254 + 73 - (v254 + 53) < 20) {
                                        v287 = v289 = bytes20(msg.data[v254 + 53] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 73 - (v254 + 53)) << 3));
                                    }
                                    v284 = v290 = v287 >> 96;
                                }
                            } else {
                                v284 = v291 = msg.sender;
                            }
                            require(v254 <= v282 + v254, Panic(17)); // arithmetic overflow or underflow
                            require(v254 <= v282 + v254);
                            require(v282 + v254 <= v0);
                            CALLDATACOPY(32 + MEM[64], v254, v282 + v254 - v254);
                            MEM[v282 + v254 - v254 + (32 + MEM[64])] = bytes20(v284 << 96);
                            v292 = 20 + (v282 + v254 - v254 + (32 + MEM[64]));
                            MEM[v292] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                            MEM[4 + v292] = 32;
                            MEM[4 + v292 + 32] = v292 - MEM[64] - 32;
                            v293 = v294 = 0;
                            while (v293 < v292 - MEM[64] - 32) {
                                MEM[v293 + (4 + v292 + 32 + 32)] = MEM[v293 + (MEM[64] + 32)];
                                v293 += 32;
                            }
                            MEM[v292 - MEM[64] - 32 + (4 + v292 + 32 + 32)] = 0;
                            v295 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3fbbV0x1040 - MEM[64] - 32 + 4 + v3fbbV0x1040 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (bool(v295)) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                require(MEM[MEM[64]] <= uint64.max);
                                require(MEM[64] + MEM[MEM[64]] + 31 < MEM[64] + RETURNDATASIZE());
                                require(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                require(!((MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]) | (MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (63 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[MEM[64] + MEM[MEM[64]]] + 31) & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                MEM[MEM[64]] = MEM[MEM[64] + MEM[MEM[64]]];
                                require(MEM[64] + MEM[MEM[64]] + MEM[MEM[64] + MEM[MEM[64]]] + 32 <= MEM[64] + RETURNDATASIZE());
                                v296 = v297 = 0;
                                while (v296 < MEM[MEM[64] + MEM[MEM[64]]]) {
                                    MEM[v296 + (MEM[64] + 32)] = MEM[v296 + (MEM[64] + MEM[MEM[64]] + 32)];
                                    v296 += 32;
                                }
                                MEM[MEM[MEM[64] + MEM[MEM[64]]] + (MEM[64] + 32)] = 0;
                                v254 += v282;
                                require(v254 <= v254, Panic(17)); // arithmetic overflow or underflow
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        require(1 <= v254 + 1, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v298 = msg.data[v254 + 1] >> 248;
                        v299 = v300 = 1 == msg.data[v254 + 1] >> uint8.max;
                        if (v300) {
                            v299 = v301 = 0x1 & v298 >> 6 == 1;
                        }
                        if (v299) {
                            require(31 <= v254 + 31, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 31 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(30 <= v254 + 30, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 30 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(29 <= v254 + 29, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 29 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(28 <= v254 + 28, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 28 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            require(27 <= v254 + 27, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 27 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v302 = uint32(uint32(uint8(msg.data[v254 + 27] >> 248 << 248 >> 248)) << 24 | msg.data[v254 + 28] >> 248 << 16 | msg.data[v254 + 29] >> 248 << 8 | msg.data[v254 + 30] >> 248) << (msg.data[v254 + 31] >> 248);
                            require(2 <= v254 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v254 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 2 <= v254 + 22);
                            require(v254 + 22 <= v0);
                            v303 = v304 = bytes20(msg.data[v254 + 2]);
                            if (v254 + 22 - (v254 + 2) < 20) {
                                v303 = v305 = bytes20(msg.data[v254 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 22 - (v254 + 2)) << 3));
                            }
                            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                            v306 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).transfer(v303 >> 96, v302).gas(msg.gas);
                            if (bool(v306)) {
                                v307 = tstor_1;
                                tstor_1 = v302 + v307;
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        require(26 <= v254 + 26, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 26 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(25 <= v254 + 25, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 25 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(24 <= v254 + 24, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 24 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(23 <= v254 + 23, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 23 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        require(22 <= v254 + 22, Panic(17)); // arithmetic overflow or underflow
                        require(v254 + 22 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v308 = uint32(msg.data[v254 + 22] >> 248 << 24 | msg.data[v254 + 23] >> 248 << 16 | msg.data[v254 + 24] >> 248 << 8 | msg.data[v254 + 25] >> 248) << (msg.data[v254 + 26] >> 248);
                        v309 = v310 = 0;
                        if (v310 - (v298 & 0x3)) {
                            if (1 - (v298 & 0x3)) {
                                if (2 - (v298 & 0x3)) {
                                    if (!(3 - (v298 & 0x3))) {
                                        if (1 - (0x1 & v298 >> 7)) {
                                            require(27 <= v254 + 27, Panic(17)); // arithmetic overflow or underflow
                                            require(47 <= v254 + 47, Panic(17)); // arithmetic overflow or underflow
                                            require(v254 + 27 <= v254 + 47);
                                            require(v254 + 47 <= v0);
                                            v311 = v312 = bytes20(msg.data[v254 + 27]);
                                            if (v254 + 47 - (v254 + 27) < 20) {
                                                v311 = v313 = bytes20(msg.data[v254 + 27] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 47 - (v254 + 27)) << 3));
                                            }
                                            v309 = v314 = v311 >> 96;
                                        } else {
                                            require(32 <= v254 + 32, Panic(17)); // arithmetic overflow or underflow
                                            require(52 <= v254 + 52, Panic(17)); // arithmetic overflow or underflow
                                            require(v254 + 32 <= v254 + 52);
                                            require(v254 + 52 <= v0);
                                            v315 = v316 = bytes20(msg.data[v254 + 32]);
                                            if (v254 + 52 - (v254 + 32) < 20) {
                                                v315 = v317 = bytes20(msg.data[v254 + 32] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 52 - (v254 + 32)) << 3));
                                            }
                                            v309 = v318 = v315 >> 96;
                                        }
                                    }
                                } else {
                                    v309 = v319 = this;
                                }
                            } else if (0 - (v298 >> 7 & 0x1)) {
                                require(34 <= v254 + 34, Panic(17)); // arithmetic overflow or underflow
                                require(54 <= v254 + 54, Panic(17)); // arithmetic overflow or underflow
                                require(v254 + 34 <= v254 + 54);
                                require(v254 + 54 <= v0);
                                v320 = v321 = bytes20(msg.data[v254 + 34]);
                                if (v254 + 54 - (v254 + 34) < 20) {
                                    v320 = v322 = bytes20(msg.data[v254 + 34] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 54 - (v254 + 34)) << 3));
                                }
                                v309 = v323 = v320 >> 96;
                            } else {
                                require(29 <= v254 + 29, Panic(17)); // arithmetic overflow or underflow
                                require(49 <= v254 + 49, Panic(17)); // arithmetic overflow or underflow
                                require(v254 + 29 <= v254 + 49);
                                require(v254 + 49 <= v0);
                                v324 = v325 = bytes20(msg.data[v254 + 29]);
                                if (v254 + 49 - (v254 + 29) < 20) {
                                    v324 = v326 = bytes20(msg.data[v254 + 29] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 49 - (v254 + 29)) << 3));
                                }
                                v309 = v327 = v324 >> 96;
                            }
                        } else {
                            v309 = v328 = msg.sender;
                        }
                        if (1 - (0x1 & v298 >> 2)) {
                            require(2 <= v254 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v254 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 2 <= v254 + 22);
                            require(v254 + 22 <= v0);
                            v329 = v330 = bytes20(msg.data[v254 + 2]);
                            if (v254 + 22 - (v254 + 2) < 20) {
                                v329 = v331 = bytes20(msg.data[v254 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 22 - (v254 + 2)) << 3));
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = v308;
                            MEM[4 + MEM[64] + 32] = 0;
                            MEM[4 + MEM[64] + 64] = address(v309);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = 0;
                            v332 = v333 = 0;
                            while (v332 < 0) {
                                MEM[v332 + (4 + MEM[64] + 128 + 32)] = MEM[v332 + (MEM[64] + 32)];
                                v332 += 32;
                            }
                            MEM[4 + MEM[64] + 128 + 32] = 0;
                            require(bool((v329 >> 96).code.size));
                            v334 = (v329 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v334)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            require(2 <= v254 + 2, Panic(17)); // arithmetic overflow or underflow
                            require(22 <= v254 + 22, Panic(17)); // arithmetic overflow or underflow
                            require(v254 + 2 <= v254 + 22);
                            require(v254 + 22 <= v0);
                            v335 = v336 = bytes20(msg.data[v254 + 2]);
                            if (v254 + 22 - (v254 + 2) < 20) {
                                v335 = v337 = bytes20(msg.data[v254 + 2] & 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000 << (20 - (v254 + 22 - (v254 + 2)) << 3));
                            }
                            MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = 0;
                            MEM[4 + MEM[64] + 32] = v308;
                            MEM[4 + MEM[64] + 64] = address(v309);
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = 0;
                            v338 = v339 = 0;
                            while (v338 < 0) {
                                MEM[v338 + (4 + MEM[64] + 128 + 32)] = MEM[v338 + (MEM[64] + 32)];
                                v338 += 32;
                            }
                            MEM[4 + MEM[64] + 128 + 32] = 0;
                            require(bool((v335 >> 96).code.size));
                            v340 = (v335 >> 96).call(MEM[MEM[64]:MEM[64] + 32 + 4 + MEM[64] + 128 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (!bool(v340)) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                        v341 = v342 = 0x1 & v298 >> 7 == 1;
                        if (v342) {
                            v341 = v343 = !(0x1 & v298 >> 6);
                        }
                        if (v341) {
                            v344 = ___function_selector__;
                            ___function_selector__ = v308 + v344;
                        }
                        v254 += 27;
                        require(v254 <= v254, Panic(17)); // arithmetic overflow or underflow
                        if (!(1 - (0x1 & v298 >> 7))) {
                            v254 += 5;
                            require(v254 <= v254, Panic(17)); // arithmetic overflow or underflow
                        }
                        if (!(3 - (v298 & 0x3))) {
                            v254 += 20;
                            require(v254 <= v254, Panic(17)); // arithmetic overflow or underflow
                        }
                    }
                    v254 += 1;
                }
            }
        } else {
            require(1 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(3 <= 23);
            require(23 <= v0);
            v345 = v346 = varg3;
            if (20 < 20) {
                v345 = v347 = varg3;
            }
            require(2 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v348 = msg.value << (varg2 >> 248);
            if (!(128 - (varg1 >> 248 & 0xc0))) {
                ___function_selector__ += v348;
            }
            v349 = varg1 >> 248 & 0x3f;
            if (0 - v349) {
                if (1 - uint8(v349)) {
                    if (2 - uint8(v349)) {
                        require(3 - uint8(v349), Error('invalid pattern 00000011'));
                        if (4 - uint8(v349)) {
                            if (5 - uint8(v349)) {
                                if (6 - uint8(v349)) {
                                    require(7 - uint8(v349), Error('invalid pattern 00000111'));
                                    if (8 - uint8(v349)) {
                                        if (9 - uint8(v349)) {
                                            if (10 - uint8(v349)) {
                                                require(11 - uint8(v349), Error('invalid pattern 00001011'));
                                                if (12 - uint8(v349)) {
                                                    if (13 - uint8(v349)) {
                                                        if (14 - uint8(v349)) {
                                                            require(15 - uint8(v349), Error('invalid pattern 00001111'));
                                                        } else {
                                                            require(23 <= v0);
                                                            require(v0 <= v0);
                                                            CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                                            MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                                            MEM[v0 - 23 + (32 + MEM[64])] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                            v350 = v351 = address(v345 >> 96);
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64]))] = address(this);
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64])) + 32] = True;
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64])) + 64] = v348;
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64])) + 96] = address(0x1000276a4);
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64])) + 128] = 160;
                                                            MEM[4 + (v0 - 23 + (32 + MEM[64])) + 160] = v0 - 23 + (32 + MEM[64]) - MEM[64] - 32;
                                                            v352 = v353 = 0;
                                                            while (v352 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                                                MEM[v352 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = MEM[v352 + (MEM[64] + 32)];
                                                                v352 += 32;
                                                            }
                                                            MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = 0;
                                                        }
                                                    } else {
                                                        require(23 <= v0);
                                                        require(v0 <= v0);
                                                        CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                                        MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                                        MEM[64] = v0 - 23 + (32 + MEM[64]);
                                                        require(25 <= 45);
                                                        require(45 <= v0);
                                                        v354 = v355 = varg5;
                                                        if (20 < 20) {
                                                            v354 = v356 = varg5;
                                                        }
                                                        v357 = v358 = address(v345 >> 96);
                                                        v359 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                                                        v360 = v361 = 0;
                                                        while (v360 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                                            MEM[v360 + v359.data] = MEM[v360 + (MEM[64] + 32)];
                                                            v360 += 32;
                                                        }
                                                        MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v359.data] = 0;
                                                    }
                                                } else {
                                                    require(23 <= v0);
                                                    require(v0 <= v0);
                                                    CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                                    MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                                    MEM[v0 - 23 + (32 + MEM[64])] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                    v350 = v362 = address(v345 >> 96);
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64]))] = msg.sender;
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64])) + 32] = True;
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64])) + 64] = v348;
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64])) + 96] = address(0x1000276a4);
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64])) + 128] = 160;
                                                    MEM[4 + (v0 - 23 + (32 + MEM[64])) + 160] = v0 - 23 + (32 + MEM[64]) - MEM[64] - 32;
                                                    v363 = v364 = 0;
                                                    while (v363 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                                        MEM[v363 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = MEM[v363 + (MEM[64] + 32)];
                                                        v363 += 32;
                                                    }
                                                    MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = 0;
                                                }
                                            } else {
                                                require(23 <= v0);
                                                require(v0 <= v0);
                                                CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                                MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                                MEM[v0 - 23 + (32 + MEM[64])] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                                v350 = v365 = address(v345 >> 96);
                                                MEM[4 + (v0 - 23 + (32 + MEM[64]))] = address(this);
                                                MEM[4 + (v0 - 23 + (32 + MEM[64])) + 32] = False;
                                                MEM[4 + (v0 - 23 + (32 + MEM[64])) + 64] = v348;
                                                MEM[4 + (v0 - 23 + (32 + MEM[64])) + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                                MEM[4 + (v0 - 23 + (32 + MEM[64])) + 128] = 160;
                                                MEM[4 + (v0 - 23 + (32 + MEM[64])) + 160] = v0 - 23 + (32 + MEM[64]) - MEM[64] - 32;
                                                v366 = v367 = 0;
                                                while (v366 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                                    MEM[v366 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = MEM[v366 + (MEM[64] + 32)];
                                                    v366 += 32;
                                                }
                                                MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = 0;
                                            }
                                        } else {
                                            require(23 <= v0);
                                            require(v0 <= v0);
                                            CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                            MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                            MEM[64] = v0 - 23 + (32 + MEM[64]);
                                            require(25 <= 45);
                                            require(45 <= v0);
                                            v368 = v369 = varg5;
                                            if (20 < 20) {
                                                v368 = v370 = varg5;
                                            }
                                            v357 = v371 = address(v345 >> 96);
                                            v372 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                                            v373 = v374 = 0;
                                            while (v373 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                                MEM[v373 + v372.data] = MEM[v373 + (MEM[64] + 32)];
                                                v373 += 32;
                                            }
                                            MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v372.data] = 0;
                                        }
                                    } else {
                                        require(23 <= v0);
                                        require(v0 <= v0);
                                        CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                        MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                        MEM[v0 - 23 + (32 + MEM[64])] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                                        v350 = v375 = address(v345 >> 96);
                                        MEM[4 + (v0 - 23 + (32 + MEM[64]))] = msg.sender;
                                        MEM[4 + (v0 - 23 + (32 + MEM[64])) + 32] = False;
                                        MEM[4 + (v0 - 23 + (32 + MEM[64])) + 64] = v348;
                                        MEM[4 + (v0 - 23 + (32 + MEM[64])) + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                                        MEM[4 + (v0 - 23 + (32 + MEM[64])) + 128] = 160;
                                        MEM[4 + (v0 - 23 + (32 + MEM[64])) + 160] = v0 - 23 + (32 + MEM[64]) - MEM[64] - 32;
                                        v376 = v377 = 0;
                                        while (v376 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                            MEM[v376 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = MEM[v376 + (MEM[64] + 32)];
                                            v376 += 32;
                                        }
                                        MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + (4 + (v0 - 23 + (32 + MEM[64])) + 160 + 32)] = 0;
                                    }
                                } else {
                                    require(23 <= v0);
                                    require(v0 <= v0);
                                    CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                    MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                    v350 = v378 = address(v345 >> 96);
                                    v379 = 0x3dfd(v348);
                                    v380 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                                    v381 = v382 = 0;
                                    while (v381 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                        MEM[v381 + v380.data] = MEM[v381 + (MEM[64] + 32)];
                                        v381 += 32;
                                    }
                                    MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v380.data] = 0;
                                }
                            } else {
                                require(25 <= 45);
                                require(45 <= v0);
                                v383 = v384 = varg5;
                                if (20 < 20) {
                                    v383 = v385 = varg5;
                                }
                                require(23 <= v0);
                                require(v0 <= v0);
                                CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                                MEM[v0 - 23 + (32 + MEM[64])] = 0;
                                v357 = v386 = address(v345 >> 96);
                                v387 = 0x3dfd(v348);
                                v388 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                                v389 = v390 = 0;
                                while (v389 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                    MEM[v389 + v388.data] = MEM[v389 + (MEM[64] + 32)];
                                    v389 += 32;
                                }
                                MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v388.data] = 0;
                            }
                        } else {
                            require(23 <= v0);
                            require(v0 <= v0);
                            CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                            MEM[v0 - 23 + (32 + MEM[64])] = 0;
                            v350 = v391 = address(v345 >> 96);
                            v392 = 0x3dfd(v348);
                            v393 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                            v394 = v395 = 0;
                            while (v394 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                                MEM[v394 + v393.data] = MEM[v394 + (MEM[64] + 32)];
                                v394 += 32;
                            }
                            MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v393.data] = 0;
                        }
                    } else {
                        require(23 <= v0);
                        require(v0 <= v0);
                        CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                        MEM[v0 - 23 + (32 + MEM[64])] = 0;
                        v350 = v396 = address(v345 >> 96);
                        v397 = 0x3dfd(v348);
                        v398 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                        v399 = v400 = 0;
                        while (v399 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                            MEM[v399 + v398.data] = MEM[v399 + (MEM[64] + 32)];
                            v399 += 32;
                        }
                        MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v398.data] = 0;
                    }
                    v401, /* uint256 */ v402, /* uint256 */ v403 = v350.swap(uint32(0x128acb08), uint32(0x128acb08), address(this), msg.sender, address(this), False, True, True, v397, v392, v379, address(0xfffd8963efd1fc6a506488495d951d5263988d25), address(0x1000276a4), address(0x1000276a4), v398, v393, v380).gas(msg.gas);
                    require(bool(v401), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                } else {
                    require(23 <= v0);
                    require(v0 <= v0);
                    CALLDATACOPY(32 + MEM[64], 23, v0 - 23);
                    MEM[v0 - 23 + (32 + MEM[64])] = 0;
                    MEM[64] = v0 - 23 + (32 + MEM[64]);
                    require(25 <= 45);
                    require(45 <= v0);
                    v404 = v405 = varg5;
                    if (20 < 20) {
                        v404 = v406 = varg5;
                    }
                    v357 = v407 = address(v345 >> 96);
                    v408 = 0x3dfd(v348);
                    v409 = new uint256[](v0 - 23 + (32 + MEM[64]) - MEM[64] - 32);
                    v410 = v411 = 0;
                    while (v410 < v0 - 23 + (32 + MEM[64]) - MEM[64] - 32) {
                        MEM[v410 + v409.data] = MEM[v410 + (MEM[64] + 32)];
                        v410 += 32;
                    }
                    MEM[v0 - 23 + (32 + MEM[64]) - MEM[64] - 32 + v409.data] = 0;
                }
                v412, /* uint256 */ v413, /* uint256 */ v414 = v357.swap(uint32(0x128acb08), uint32(0x128acb08), uint32(0x128acb08), address(v404 >> 96), address(v383 >> 96), address(v368 >> 96), address(v354 >> 96), False, True, False, True, v348, v408, v387, address(0xfffd8963efd1fc6a506488495d951d5263988d25), address(0x1000276a4), address(0xfffd8963efd1fc6a506488495d951d5263988d25), address(0x1000276a4), v409, v388, v372, v359).gas(msg.gas);
                require(bool(v412), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            } else {
                v415 = 0x3dfd(v348);
                require(23 <= v0);
                require(v0 <= v0);
                v416 = new uint256[](v0 - 23);
                CALLDATACOPY(v416.data, 23, v0 - 23);
                MEM[4 + MEM[64] + (v0 - 23) + 192] = 0;
                v417, /* uint256 */ v418, /* uint256 */ v419 = address(v345 >> 96).swap(msg.sender, False, v415, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v416).gas(msg.gas);
                require(bool(v417), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            }
        }
        v420 = _SafeSub(v0, 1);
        require(v420 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v421 = _SafeSub(v0, 2);
        require(v421 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v422 = _SafeSub(v0, 3);
        require(v422 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v423 = _SafeSub(v0, 4);
        require(v423 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v424 = _SafeSub(v0, 5);
        require(v424 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(___function_selector__ >= tstor_1 + (uint32(uint32(uint8(msg.data[v424] >> 248 << 248 >> 248)) << 24 | msg.data[v423] >> 248 << 16 | msg.data[v422] >> 248 << 8 | msg.data[v421] >> 248) << (msg.data[v420] >> 248)));
    }
    v66 = v425 = MEM[64];
    MEM[64] = v425 + 32;
    MEM[v425] = 0;
    return MEM[32 + v3c2a_0x0:32 + v3c2a_0x0 + MEM[v3c2a_0x0]];
}
