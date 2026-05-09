// Decompiled by library.dedaub.com
// 2025.12.10 11:58 UTC
// Compiled using the solidity compiler version 0.8.28
// Warning: 51.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _withdrawWETH; // STORAGE[0x0]
uint256[] _amountsIn; // STORAGE[0x1]
uint256[] array_2; // STORAGE[0x2]
uint256[] array_3; // STORAGE[0x3]
uint256[] array_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
uint256 stor_6; // STORAGE[0x6]
address tstor_0_0_19; // TRANSIENT_STORAGE[0x0] bytes 0 to 19
address stor_7_0_19; // STORAGE[0x7] bytes 0 to 19



function 0x0759b8a6() public nonPayable { 
    return stor_6;
}

function 0x0ab35bb0(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v1 = v3 = this != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v1) {
        require(msg.sender == _withdrawWETH);
    }
    MEM[0] = MEM[0];
    v10, /* uint256 */ v11 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v11 <= this.balance + v11, Panic(17)); // arithmetic overflow or underflow
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4e6c(sender);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](v0.length - 96);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _withdrawWETH);
    }
    if (amount0) {
    }
    if (this == address(msg.data[132 + v0.length])) {
        v8 = msg.sender;
        v9 = _SafeAdd(20, 20);
    } else {
        if (!amount0) {
            v10 = msg.sender.token1().gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v11 = v12 = MEM[64];
            v13 = v14 = v12 + RETURNDATASIZE();
        } else {
            v15 = msg.sender.token0().gas(msg.gas);
            require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v11 = MEM[64];
            v13 = v11 + RETURNDATASIZE();
        }
        require(v13 - v11 >= 32);
        require(MEM[v11] == address(MEM[v11]));
    }
}

function amountsIn(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_amount < _amountsIn.length);
    return _amountsIn[_amount];
}

function 0x20c31c75(bytes varg0, uint256 varg1, uint256 varg2, address varg3, address varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    0x4e6c(varg3);
    0x4e6c(varg4);
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _withdrawWETH);
    }
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _withdrawWETH);
    }
    v8 = v9 = new bytes[](_data.length);
    CALLDATACOPY(v9.data, _data.data, _data.length);
    v9[_data.length] = 0;
    v10 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v10 = v11 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v10) {
        MEM[0] = MEM[0];
        v10 = v12 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v10) {
        MEM[0] = MEM[0];
        v10 = v13 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v10) {
        MEM[0] = MEM[0];
        v10 = v14 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v10) {
        MEM[0] = MEM[0];
        v10 = v15 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v10) {
        MEM[0] = MEM[0];
        v10 = v16 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v10) {
        require(tx.origin == _withdrawWETH);
    }
    if (!(0x1 & MEM[v9 + 72] >> 237)) {
        v17 = v18 = MEM[v9 + 75] >> 96;
    } else {
        v17 = MEM[v9.data] >> 96;
    }
    if (MEM[v9 + 72] >> 236 & 0x1 == 1) {
        v19 = v20 = ~amount1Delta + 1;
    } else {
        v19 = ~amount0Delta + 1;
    }
    v21 = v22 = 8481;
    v23 = _SafeAdd(20, 20);
    v24 = v9[v23] >> 232;
    v25 = _SafeAdd(20, 20);
    v21 = v26 = _SafeAdd(v25, 3);
    if (v24 & 0x40) {
        v21 = v27 = _SafeAdd(v26, 2);
    }
    v28 = v29 = v24 & 0xff0000;
    if (0x100000 - v29) {
        if (0x110000 - uint24(v29)) {
            if (0x150000 - uint24(v29)) {
                if (0x160000 - uint24(v29)) {
                    if (0x70000 - uint24(v29)) {
                        if (0x80000 - uint24(v29)) {
                            if (0x640000 - uint24(v29)) {
                                if (0x560000 - uint24(v29)) {
                                    if (0xa70000 - uint24(v29)) {
                                        if (0xa80000 - uint24(v29)) {
                                            if (uint24(v29) > 0x490000) {
                                                v24 = v30 = 9316;
                                                v28 = v31 = 20;
                                                v21 = v32 = _SafeAdd(v21, v31);
                                                // Unknown jump to Block 0x2121. Refer to 3-address code (TAC);
                                                require(v21 <= v28 + v21, Panic(17)); // arithmetic overflow or underflow
                                                // Unknown jump to Block 0x2121. Refer to 3-address code (TAC);
                                            }
                                        } else {
                                            0x00a80000(v29, v24, v21);
                                        }
                                    } else {
                                        0x00a70000(v29, v24, v21);
                                    }
                                } else {
                                    0x00560000(v29, v24, v21, v9);
                                }
                            } else {
                                0x00640000(v29, v24);
                            }
                        } else {
                            0x00080000(v29, v24, v21, v9);
                        }
                    } else {
                        0x00070000(v29, v24, v21, v9);
                    }
                } else {
                    0x00160000(v29, v24, v21);
                }
            } else {
                0x00150000(v29, v24, v21, v9);
            }
        } else {
            0x00110000(v29, v24, v21, v9);
        }
    } else {
        0x00100000(v29, v24, v21, v9);
    }
    if (v9.length > v21 + 63) {
        v8 = v33 = v21 + v9;
        MEM[v33] = v9.length - v21;
    }
    v34 = v35 = uint24(MEM[v9 + 72] >> 232) < 0xa70000;
    if (uint24(MEM[v9 + 72] >> 232) >= 0xa70000) {
        v34 = v36 = uint24(MEM[v9 + 72] >> 232) >= 0xa90000;
    }
    if (!v34) {
        if (v9.length <= v21 + 63) {
            if (!(MEM[v9 + 72] >> 232 & 0x8)) {
                if (address(this) + 0xffffffffffffffffffffffff1111111111111111111111111111111111111112) {
                    if (v9.length <= v21 + 63) {
                        if (MEM[v9 + 72] >> 232 & 0x4) {
                            if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(v17)) {
                                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == address(v17)) {
                                    if (this.balance > v37) {
                                        MEM[0] = MEM[0];
                                        require(bool((address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                        v38 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v37).gas(msg.gas);
                                        require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                                    }
                                    v17 = v39 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                }
                                v40 = v17.transfer(msg.sender, v37).gas(msg.gas);
                                require(v40);
                            } else {
                                v41 = v42 = 9082;
                                if (address(v17)) {
                                }
                            }
                        }
                    } else {
                        v43 = v44 = 9032;
                        v45 = MEM[v8 + 72] >> 248;
                        if (3 - v45) {
                            if (2 - uint8(v45)) {
                                if (18 - uint8(v45)) {
                                    if (4 - uint8(v45)) {
                                        if (5 - uint8(v45)) {
                                            if (6 - uint8(v45)) {
                                                if (uint8(v45) != 7) {
                                                    if (uint8(v45) != 8) {
                                                        if (16 - uint8(v45)) {
                                                            if (17 - uint8(v45)) {
                                                                if (21 - uint8(v45)) {
                                                                    if (22 - uint8(v45)) {
                                                                        if (uint8.max - uint8(v45)) {
                                                                            v41 = v46 = 9281;
                                                                            v47 = v48 = 20;
                                                                        } else if (!(2 - (MEM[v8 + 73] >> 248))) {
                                                                            v41 = v49 = 15026;
                                                                        }
                                                                    } else {
                                                                        // Unknown jump to Block 0x41520x3a1. Refer to 3-address code (TAC);
                                                                    }
                                                                } else {
                                                                    // Unknown jump to Block 0x41520x3a1. Refer to 3-address code (TAC);
                                                                }
                                                            } else {
                                                                // Unknown jump to Block 0x41520x3a1. Refer to 3-address code (TAC);
                                                            }
                                                        } else {
                                                            // Unknown jump to Block 0x41520x3a1. Refer to 3-address code (TAC);
                                                        }
                                                    }
                                                }
                                            } else if (0 - (MEM[v8 + 73] >> 248)) {
                                                if (!(1 - uint8(MEM[v8 + 73] >> 248))) {
                                                }
                                            }
                                        } else {
                                            // Unknown jump to Block 0x24310x3a1. Refer to 3-address code (TAC);
                                        }
                                    } else {
                                        // Unknown jump to Block 0x41520x3a1. Refer to 3-address code (TAC);
                                    }
                                } else if (MEM[v8 + 73] >> 248 >= 32) {
                                    if (!(32 - uint8(MEM[v8 + 73] >> 248))) {
                                        if (0x1 & MEM[v8 + 72] >> 237) {
                                        }
                                        if (!(1 - bool(0x1 & MEM[v8 + 72] >> 235))) {
                                        }
                                        v41 = v50 = 9281;
                                        v47 = v51 = 20;
                                    }
                                } else {
                                    v52 = v53 = MEM[v8 + 52] >> 96;
                                    v54 = v55 = 0x1 & MEM[v8 + 72] >> 236;
                                    if (0x1 & MEM[v8 + 72] >> 237) {
                                    }
                                    if (1 - bool(0x1 & MEM[v8 + 72] >> 235)) {
                                        v56 = v57 = 11126;
                                        v19 = v58 = 0;
                                    } else {
                                        v56 = v59 = 11105;
                                        v19 = v60 = 0;
                                    }
                                }
                            } else if (MEM[v8 + 73] >> 248 >= 32) {
                                if (32 - uint8(MEM[v8 + 73] >> 248)) {
                                    if (34 - uint8(MEM[v8 + 73] >> 248)) {
                                        if (!(33 - uint8(MEM[v8 + 73] >> 248))) {
                                        }
                                    }
                                }
                            } else {
                                v52 = MEM[v8 + 52] >> 96;
                                v54 = 0x1 & MEM[v8 + 72] >> 236;
                                if (0x1 & MEM[v8 + 72] >> 237) {
                                }
                                if (1 - bool(0x1 & MEM[v8 + 72] >> 235)) {
                                    v56 = v61 = 9752;
                                    v19 = v62 = 0;
                                } else {
                                    v56 = 9731;
                                    v19 = v63 = 0;
                                }
                            }
                            v64, /* uint256 */ v65, /* uint256 */ v66, /* uint256 */ v66, /* uint256 */ v65 = v52.getReserves().gas(msg.gas);
                            require(v64);
                            if (v54 != 1) {
                            }
                            if (!v19 == 1) {
                                require((v66 - v19) * 997);
                            }
                            v41 = 9281;
                            v47 = 20;
                            require(v47 <= v47 + v47, Panic(17)); // arithmetic overflow or underflow
                            v41 = v67 = 9281;
                            v47 = v68 = 20;
                            // Unknown jump to Block 0x54560x3a1. Refer to 3-address code (TAC);
                        } else {
                            v43 = 7333;
                            if (MEM[v8 + 72] >> 235 & 0x1 != 1) {
                            }
                            if (MEM[v8 + 72] >> 236 & 0x1 != 1) {
                            }
                            v69 = new uint256[](MEM[v8]);
                            v70 = v8 + 32;
                            v71 = v69.data;
                            while (v70 < v70 + MEM[v8]) {
                                MEM[v71] = MEM[v70];
                                v70 += 32;
                                v71 += 32;
                            }
                            v72 = (MEM[v8 + 52] >> 96).swap(this, MEM[v8 + 72] >> 236 & 0x1, v19, ~v19 + 1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v69).gas(msg.gas);
                            require(v72);
                        }
                    }
                }
            } else {
                v73 = v74 = 8923;
            }
        } else {
            if (MEM[v8 + 72] >> 232 & 0x8 != 8) {
                if (!((MEM[v8 + 72] >> 232 & 0x1) - 1)) {
                }
            }
            if (MEM[v8 + 72] >> 232 & 0x8 == 8) {
                if (MEM[v8 + 72] >> 232 & 0x40) {
                    v37 = v75 = 10000 * (1 + v37 / (MEM[v8 + 75] >> 240));
                }
                v73 = v76 = 8770;
            } else {
                if (MEM[v9 + 72] >> 232 & 0x8) {
                    v19 = v77 = MEM[12 + (v8 + MEM[v8])] >> 96;
                }
                if (MEM[v8 + 72] >> 232 & 0x40) {
                    v19 = v78 = v19 * (MEM[v8 + 75] >> 240) / 10000;
                }
                v73 = v79 = 8723;
                v80 = v81 = 1;
                while (v19 >> (v80 << 3)) {
                    v80 += 1;
                }
                if (v80 < 5 != 1) {
                }
            }
        }
        v82 = v83 = 1;
        while (v37 >> (v82 << 3)) {
            v82 += 1;
        }
        if (v82 < 5 != 1) {
        }
    } else if (!(tx.origin + 0xffffffffffffffffffffffff205500bbdfa5f6206c83f7e9aea2f016dd91a83d)) {
        stor_5 = v37;
        stor_6 = v19;
        _amountsIn.length += 1;
        _amountsIn[_amountsIn.length] = v37;
        array_2.length = array_2.length + 1;
        MEM[0] = 2;
        array_2[array_2.length] = v19;
    }
}

function 0x2e6940e9(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = v2 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v1 = v3 = this != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v1) {
        require(msg.sender == _withdrawWETH);
    }
    MEM[0] = MEM[0];
    v10, /* uint256 */ v11 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
    require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v11 <= this.balance + v11, Panic(17)); // arithmetic overflow or underflow
}

function 0x34c67085(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_3.length);
    return array_3[varg0];
}

function swapV2Call(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    0x4e6c(_sender);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _withdrawWETH);
    }
    v8 = new bytes[](_data.length);
    CALLDATACOPY(v8.data, _data.data, _data.length);
    v8[_data.length] = 0;
    v9 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v9 = v10 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v11 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v12 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v13 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v14 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v9) {
        MEM[0] = MEM[0];
        v9 = v15 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v9) {
        require(tx.origin == _withdrawWETH);
    }
    if (_amount0) {
    }
    if (this == address(msg.data[132 + v8.length])) {
        v16 = msg.sender;
        v17 = _SafeAdd(20, 20);
        v18 = _SafeAdd(20, 20);
        require(v18 <= 3 + v18, Panic(17)); // arithmetic overflow or underflow
    } else {
        if (!_amount0) {
            v19, /* address */ v20 = msg.sender.token1().gas(msg.gas);
            require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            0x4e6c(v20);
        } else {
            v21, /* address */ v20 = msg.sender.token0().gas(msg.gas);
            require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            0x4e6c(v20);
        }
        v22 = v20.transfer(msg.data[132 + v8.length], v23).gas(msg.gas);
        require(v22);
    }
}

function 0x887d100f() public nonPayable { 
    return stor_5;
}

function 0x88b97778(uint256 varg0) public payable { 
    v0 = v1 = 1076;
    v0 = v2 = msg.data.length;
    v3 = v4 = 4;
    v5 = v6 = 0;
    require(v2 - v4 >= 96);
    require(varg0 <= uint64.max);
    require(v2 > v4 + varg0 + 31);
    v7 = 0x505d(varg0.length);
    v3 = 0x4d0f(v7);
    MEM[v3] = varg0.length;
    v8 = v9 = v3 + 32;
    require(v4 + varg0 + (varg0.length << 5) + 32 <= v2);
    v10 = v11 = varg0.data;
    while (v10 < v4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v10] <= uint64.max);
        require(v2 - (v4 + varg0 + msg.data[v10]) - 32 >= 96);
        v12 = new struct(3);
        require(!((v12 + 96 < v12) | (v12 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v4 + varg0 + msg.data[v10] + 32] == bool(msg.data[v4 + varg0 + msg.data[v10] + 32]));
        v12.word0 = msg.data[v4 + varg0 + msg.data[v10] + 32];
        require(msg.data[v4 + varg0 + msg.data[v10] + 64] == uint128(msg.data[v4 + varg0 + msg.data[v10] + 64]));
        v12.word1 = msg.data[v4 + varg0 + msg.data[v10] + 64];
        require(msg.data[v4 + varg0 + msg.data[v10] + 96] <= uint64.max);
        v13 = v4 + varg0 + msg.data[v10] + msg.data[v4 + varg0 + msg.data[v10] + 96] + 32;
        require(v13 + 31 < v2);
        require(msg.data[v13] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v14 = 0x4d0f(32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v13] + 31));
        MEM[v14] = msg.data[v13];
        require(v13 + msg.data[v13] + 32 <= v2);
        CALLDATACOPY(v14 + 32, v13 + 32, msg.data[v13]);
        MEM[32 + (v14 + msg.data[v13])] = 0;
        v12.word2 = v14;
        MEM[v8] = v12;
        v8 += 32;
        v10 += 32;
    }
    v5 = v15 = 20949;
    v16 = v17 = 36;
    v16 = v18 = 0x507f(v17);
    require(msg.data[v16] == uint8(msg.data[v16]));
    v19 = v20 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v19 = v21 = this != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v22 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v23 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v24 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v25 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v26 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v19) {
        MEM[0] = MEM[0];
        v19 = v27 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v19) {
        require(msg.sender == _withdrawWETH);
    }
    MEM[0] = MEM[0];
    v28, /* uint256 */ v29 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);
    require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(msg.data[v3 + 64] == uint64(msg.data[v3 + 64]));
    // Unknown jump to Block 0x434. Refer to 3-address code (TAC);
}

function PRECISION() public nonPayable { 
    return 10 ** 18;
}

function 0xc3f26331(uint256 varg0, uint256 varg1, address varg2) public payable { 
    require(msg.data.length - 4 >= 128);
    v0 = 0x507f(4);
    0x4e6c(varg1);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](varg2.length);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v1.data, varg2.data, varg2.length);
    v1[varg2.length] = 0;
    v2 = v3 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v2 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v2) {
        require(tx.origin == _withdrawWETH);
    }
    v10 = msg.gas;
    v11 = v12 = 2 == uint8(v0);
    if (2 != uint8(v0)) {
        v11 = v13 = 82 == uint8(v0);
    }
    if (!v11) {
        v14 = v15 = 5620;
        v16 = MEM[v1 + 72] >> 248;
        if (3 - v16) {
            if (2 - uint8(v16)) {
                if (18 - uint8(v16)) {
                    if (4 - uint8(v16)) {
                        if (5 - uint8(v16)) {
                            if (6 - uint8(v16)) {
                                if (uint8(v16) != 7) {
                                    if (uint8(v16) != 8) {
                                        if (16 - uint8(v16)) {
                                            if (17 - uint8(v16)) {
                                                if (21 - uint8(v16)) {
                                                    if (22 - uint8(v16)) {
                                                        if (uint8.max - uint8(v16)) {
                                                            v1 = v17 = 9281;
                                                            v18 = v19 = 20;
                                                            // Unknown jump to Block 0x54560x463. Refer to 3-address code (TAC);
                                                        } else if (!(2 - (MEM[v1 + 73] >> 248))) {
                                                            v1 = v20 = 15026;
                                                        }
                                                    } else {
                                                        // Unknown jump to Block 0x41520x463. Refer to 3-address code (TAC);
                                                    }
                                                } else {
                                                    // Unknown jump to Block 0x41520x463. Refer to 3-address code (TAC);
                                                }
                                            } else {
                                                // Unknown jump to Block 0x41520x463. Refer to 3-address code (TAC);
                                            }
                                        } else {
                                            // Unknown jump to Block 0x41520x463. Refer to 3-address code (TAC);
                                        }
                                    }
                                }
                            } else if (0 - (MEM[v1 + 73] >> 248)) {
                                if (!(1 - uint8(MEM[v1 + 73] >> 248))) {
                                }
                            }
                        }
                    } else {
                        // Unknown jump to Block 0x41520x463. Refer to 3-address code (TAC);
                    }
                } else if (MEM[v1 + 73] >> 248 >= 32) {
                    if (!(32 - uint8(MEM[v1 + 73] >> 248))) {
                        if (0x1 & MEM[v1 + 72] >> 237) {
                        }
                        if (!(1 - bool(0x1 & MEM[v1 + 72] >> 235))) {
                        }
                        v1 = v21 = 9281;
                        v18 = v22 = 20;
                    }
                } else {
                    v23 = v24 = MEM[v1 + 52] >> 96;
                    v25 = v26 = 0x1 & MEM[v1 + 72] >> 236;
                    if (0x1 & MEM[v1 + 72] >> 237) {
                    }
                    if (1 - bool(0x1 & MEM[v1 + 72] >> 235)) {
                        v27 = v28 = 11126;
                        v29 = v30 = 0;
                    } else {
                        v27 = v31 = 11105;
                        v29 = v32 = 0;
                    }
                }
            } else if (MEM[v1 + 73] >> 248 >= 32) {
                if (32 - uint8(MEM[v1 + 73] >> 248)) {
                    if (34 - uint8(MEM[v1 + 73] >> 248)) {
                        if (!(33 - uint8(MEM[v1 + 73] >> 248))) {
                        }
                    }
                }
            } else {
                v23 = MEM[v1 + 52] >> 96;
                v25 = 0x1 & MEM[v1 + 72] >> 236;
                if (0x1 & MEM[v1 + 72] >> 237) {
                }
                if (1 - bool(0x1 & MEM[v1 + 72] >> 235)) {
                    v27 = v33 = 9752;
                    v29 = v34 = 0;
                } else {
                    v27 = 9731;
                    v29 = v35 = 0;
                }
            }
            v36, /* uint256 */ v37, /* uint256 */ v38, /* uint256 */ v38, /* uint256 */ v37 = v23.getReserves().gas(msg.gas);
            require(v36);
            if (v25 != 1) {
            }
            if (!v29 == 1) {
                require((v38 - v29) * 997);
            }
            v1 = v39 = 9281;
            v18 = v40 = 20;
            // Unknown jump to Block 0x54560x463. Refer to 3-address code (TAC);
        } else {
            v14 = 7333;
            if (MEM[v1 + 72] >> 235 & 0x1 != 1) {
            }
            if (MEM[v1 + 72] >> 236 & 0x1 != 1) {
            }
            v41 = new bytes[](v1.length);
            v42 = v1.data;
            v43 = v41.data;
            while (v42 < v42 + v1.length) {
                MEM[v43] = MEM[v42];
                v42 += 32;
                v43 += 32;
            }
            v44 = (MEM[v1 + 52] >> 96).swap(varg1, MEM[v1 + 72] >> 236 & 0x1, ~varg0 + 1, varg0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v41).gas(msg.gas);
            require(v44);
        }
    }
    v1 = v45 = 0;
    v18 = 9293;
    v1 = v46 = 9281;
    v18 = v47 = 20;
    v18 = v48 = _SafeAdd(v47, v47);
    require(v18 <= v18 + v18, Panic(17)); // arithmetic overflow or underflow
}

function 0xd30f2acd(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_4.length);
    return array_4[varg0];
}

function 0xe49a0354(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 < array_2.length);
    return array_2[varg0];
}

function 0xe6aac244(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0x4e6c(varg0);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != msg.sender) {
        v0 = v2 = this != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0x5f444704bce3eb657768037bfb269b68730418a5 != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v7 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != msg.sender;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v8 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != msg.sender;
    }
    if (v0) {
        require(msg.sender == _withdrawWETH);
    }
    stor_7_0_19 = varg0;
}

function 0x4d0f(uint256 varg0) private { 
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 + 31);
    return MEM[64];
}

function receiveFlashLoan(address[] varg0) public nonPayable { 
    v0 = v1 = msg.data.length;
    v0 = v2 = 4;
    v0 = v3 = 0;
    v0 = v4 = 0;
    v0 = v5 = 0;
    v0 = v6 = 0;
    require(v1 - v2 >= 128);
    require(varg0 <= uint64.max);
    v0 = v7 = v2 + varg0;
    require(v1 > v7 + 31);
    v0 = v8 = varg0.length;
    v0 = v9 = 21269;
    v0 = v10 = 0x505d(v8);
    while (1) {
        v0 = v11 = 0x4d0f(v0);
        MEM[v0] = v0;
        v0 = v12 = v0 + 32;
        v0 = v13 = v0 + (v0 << 5) + 32;
        require(v13 <= v0);
        v0 = v14 = v0 + 32;
        while (v0 < v0) {
            v0 = v15 = msg.data[v0];
            v0 = v16 = 21328;
            0x4e6c(v15);
            MEM[v0] = v15;
            v0 += 32;
            v0 = v0 + 32;
        }
        require(v15 == address(v15));
        v0 = v17 = msg.data[v0 + 32];
        require(v17 <= uint64.max);
        v0 = v18 = 21386;
        v0 = v0 + v17;
        v0 = v19 = 0x526a(v0, v0);
        v0 = 0;
        require(v0 + 31 < v0);
        v0 = v20 = msg.data[v0];
        v0 = v21 = 21127;
        v0 = v22 = 0x505d(v20);
        v0 = v23 = msg.data[v0 + 64];
        require(v23 <= uint64.max);
        v0 = v24 = 21425;
        v0 = v0 + v23;
    }
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v0 + 31);
}

function 0x4e6c(address varg0) private { 
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(4 + data + data.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v1 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v1) {
        MEM[0] = MEM[0];
        v1 = v7 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v1) {
        require(tx.origin == _withdrawWETH);
    }
    if (0x1 & MEM[v0 + 72] >> 237) {
    }
    if (MEM[v0 + 72] >> 236 & 0x1 != 1) {
    }
    v8 = msg.sender;
    v9 = _SafeAdd(20, 20);
    v10 = _SafeAdd(20, 20);
    require(v10 <= 3 + v10, Panic(17)); // arithmetic overflow or underflow
}

function 0x505d(uint256 varg0) private { 
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    return 32 + (varg0 << 5);
}

function 0x507f(uint256 varg0) private { 
    require(msg.data[varg0] == uint8(msg.data[varg0]));
    return msg.data[varg0];
}

function withdrawWETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v0 = v2 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v3 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v4 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v0) {
        MEM[0] = MEM[0];
        v0 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v0) {
        require(tx.origin == _withdrawWETH);
    }
    MEM[0] = MEM[0];
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v7 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x526a(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = 0x505d(msg.data[varg0]);
    v1 = 0x4d0f(v0);
    MEM[v1] = msg.data[varg0];
    v2 = v3 = v1 + 32;
    require(varg0 + (msg.data[varg0] << 5) + 32 <= varg1);
    v4 = v5 = varg0 + 32;
    while (v4 < varg0 + (msg.data[varg0] << 5) + 32) {
        MEM[v2] = msg.data[v4];
        v2 += 32;
        v4 += 32;
    }
    return v1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x00100000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 320;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00110000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 833;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00150000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 512;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00160000() public payable { 
    v0 = v1 = 0;
    v2 = 18541;
    v0 = v3 = 9281;
    v2 = v4 = 20;
    v2 = v5 = _SafeAdd(v4, v4);
    require(v2 <= v2 + v2, Panic(17)); // arithmetic overflow or underflow
}

function 0x00070000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 26;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00080000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 32;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00640000() public payable { 
    v0 = v1 = 15886;
    v2 = v3 = 20;
    v4 = v5 = 2;
    v4 = v6 = _SafeMul(v5, v3);
    v0 = v7 = 15663;
    require(v2 <= v4 + v2, Panic(17)); // arithmetic overflow or underflow
    require((v2 == v2 * v4 / v4) | !v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00560000() public payable { 
    v0 = v1 = 15663;
    v2 = v3 = 2;
    v4 = v5 = _SafeAdd(v6, v3);
    if (uint24(v2) > 0x490000) {
        v0 = v7 = 9316;
        v2 = v8 = 20;
    }
    require(v4 <= v2 + v4, Panic(17)); // arithmetic overflow or underflow
}

function 0x00a70000() public payable { 
    v0 = v1 = 0;
    v2 = 18541;
    v0 = v3 = 9281;
    v2 = v4 = 20;
    v2 = v5 = _SafeAdd(v4, v4);
    require(v2 <= v2 + v2, Panic(17)); // arithmetic overflow or underflow
}

function 0x00a80000() public payable { 
    v0 = v1 = 0;
    v2 = 18541;
    v0 = v3 = 9281;
    v2 = v4 = 20;
    v2 = v5 = _SafeAdd(v4, v4);
    require(v2 <= v2 + v2, Panic(17)); // arithmetic overflow or underflow
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            v0 = msg.sender;
            v1 = msg.value;
        }
    } else if (0x759b8a6 == function_selector >> 224) {
        0x0759b8a6();
    } else if (0xab35bb0 == function_selector >> 224) {
        0x0ab35bb0();
    } else if (0x10d1e85c == function_selector >> 224) {
        uniswapV2Call(address,uint256,uint256,bytes);
    } else if (0x11605135 == function_selector >> 224) {
        amountsIn(uint256);
    } else if (0x20c31c75 == function_selector >> 224) {
        0x20c31c75();
    } else {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x2e6940e9 == function_selector >> 224) {
                0x2e6940e9();
            } else if (0x34c67085 == function_selector >> 224) {
                0x34c67085();
            } else if (0x3a1c453c != function_selector >> 224) {
                if (0x6c813d29 != function_selector >> 224) {
                    if (0x81279c7e != function_selector >> 224) {
                        if (0x84800812 != function_selector >> 224) {
                            if (0x887d100f == function_selector >> 224) {
                                0x887d100f();
                            } else if (0x88b97778 == function_selector >> 224) {
                                0x88b97778();
                            } else if (0xa1dab4eb != function_selector >> 224) {
                                if (0xaaf5eb68 == function_selector >> 224) {
                                    PRECISION();
                                } else if (0xb2ff9f26 != function_selector >> 224) {
                                    if (0xc3f26331 == function_selector >> 224) {
                                        0xc3f26331();
                                    } else if (0xd30f2acd == function_selector >> 224) {
                                        0xd30f2acd();
                                    } else if (0xe49a0354 == function_selector >> 224) {
                                        0xe49a0354();
                                    } else if (0xe6aac244 == function_selector >> 224) {
                                        0xe6aac244();
                                    } else if (0xf04f2707 == function_selector >> 224) {
                                        receiveFlashLoan(address[],uint256[],uint256[],bytes);
                                    } else if (0xf40a74a8 != function_selector >> 224) {
                                        if (0xfa461e33 == function_selector >> 224) {
                                            uniswapV3SwapCallback(int256,int256,bytes);
                                        } else if (0xfa483e72 != function_selector >> 224) {
                                            if (0xfc4dd333 == function_selector >> 224) {
                                                withdrawWETH(uint256);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                swapV2Call(address,uint256,uint256,bytes);
            }
        }
        swapCallback(int256,int256,bytes);
    }
    require(!msg.value);
    v2 = v3 = 0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin;
    if (0xfba0014d3a9dbe8a0cda6affd3da7b541a1ec32f != tx.origin) {
        MEM[0] = MEM[0];
        v2 = v4 = 0xdfaaff44205a09df937c0816515d0fe9226e57c3 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v5 = 0xaaabbc3c304ca824b641a2631a8c31c1a32890e6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v6 = 0x5f444704bce3eb657768037bfb269b68730418a5 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v7 = 0xa9721c9c85172ffeda5afbc8f23830b3482d9cf6 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v8 = 0x541a14efac81cb37adb57a5e75ed920edfeff596 != tx.origin;
    }
    if (v2) {
        MEM[0] = MEM[0];
        v2 = v9 = 0x8d8d5b393d7fabdd28bff2fa8912921641364fed != tx.origin;
    }
    if (v2) {
        require(tx.origin == _withdrawWETH);
    }
    CALLDATACOPY(MEM[64], 0, msg.data.length);
    MEM[msg.data.length + MEM[64]] = 0;
    v10, /* uint256 */ v11, /* uint256 */ v12 = tstor_0_0_19.delegatecall(MEM[MEM[64]:MEM[64] + msg.data.length + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v13 = v14 = 96;
    } else {
        v13 = v15 = new bytes[](RETURNDATASIZE());
        v11 = v15.data;
        RETURNDATACOPY(v11, 0, RETURNDATASIZE());
    }
    require(v10, Error('Delegatecall failed'));
    return MEM[v2ee:v2ee + MEM[v2e7_0x0]];
}
