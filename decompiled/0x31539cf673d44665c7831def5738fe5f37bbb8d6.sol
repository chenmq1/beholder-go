// Decompiled by library.dedaub.com
// 2024.05.06 19:38 UTC
// Compiled using the solidity compiler version 0.8.19
// Warning: 53.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
address[] _withdraw; // STORAGE[0x1]
uint256 stor_4; // STORAGE[0x4]
uint256 stor_5; // STORAGE[0x5]
address _owner; // STORAGE[0x0] bytes 0 to 19
address owner_2_0_19; // STORAGE[0x2] bytes 0 to 19
address owner_3_0_19; // STORAGE[0x3] bytes 0 to 19
address ___function_selector__; // STORAGE[0x6] bytes 0 to 19



function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function 0x88364982(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = _owner != msg.sender;
    if (v1) {
        v0 = v2 = msg.sender != owner_2_0_19;
    }
    if (v0) {
        v0 = v3 = msg.sender != owner_3_0_19;
    }
    require(!v0, Error('only owner or executor'));
    stor_4 = varg0;
    stor_5 = varg1;
}

function isBaseToken(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = 0x21db(varg0);
    return bool(v0);
}

function 0x6f37e7a9(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    v0 = v1 = 181;
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](varg2.length);
    require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    v2[varg2.length] = 0;
    v3 = 32;
    if (v2.length == v3) {
        require(v2 + v2.length - v2 >= v3);
        require(!(MEM[v2.data] - address(MEM[v2.data])));
        if (varg0 <= 0) {
            if (varg1 > 0) {
                require((address(MEM[v2.data])).code.size);
                v4 = v5 = MEM[64];
                MEM[v5] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v5 + 4] = msg.sender;
                MEM[v5 + 4 + 32] = varg1;
                v6 = 64 + (v5 + 4);
            }
        } else {
            require((address(MEM[v2.data])).code.size);
            v4 = v7 = MEM[64];
            MEM[v7] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v7 + 4] = msg.sender;
            MEM[v7 + 4 + 32] = varg0;
            v6 = v8 = 64 + (v7 + 4);
        }
        v9, /* uint256 */ v10 = address(MEM[v2.data]).call(MEM[v215d_0x0V0x440x11a7:v215d_0x0V0x440x11a7 + v1714V0x218eV0x440x11a7 - v215d_0x0V0x440x11a7], MEM[v215d_0x0V0x440x11a7:v215d_0x0V0x440x11a7]).gas(msg.gas);
        require(v9, v10, RETURNDATASIZE());
        if (v9) {
            require(v4 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v4;
        }
    } else {
        v0 = v11 = 0x15e3(v2.data, v2 + v2.length + v3);
        v12 = v13 = 0;
        require(v11.word7 < 6, Panic(33)); // failed convertion to enum type
        v14 = v15 = 2 == v11.word7;
        if (2 != v11.word7) {
            require(v11.word7 < 6, Panic(33)); // failed convertion to enum type
            v14 = v16 = 4 == v11.word7;
        }
        if (v14) {
            if (varg0 <= v13) {
                if (varg1 > v13) {
                    require((address(v11.word3)).code.size, v13, v13);
                    v17, /* uint256 */ v18 = address(v11.word3).transfer(address(v11.word1), varg1).value(v13).gas(msg.gas);
                    require(v17, v18, RETURNDATASIZE());
                    if (v17) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        v19 = this.code.size;
                    }
                }
            } else {
                require((address(v11.word3)).code.size, v13, v13);
                v20 = v21 = MEM[64];
                v22, /* uint256 */ v23 = address(v11.word3).transfer(address(v11.word1), varg0).value(v13).gas(msg.gas);
                require(v22, v23, RETURNDATASIZE());
                if (!v22) {
                }
            }
        } else {
            v24 = v25 = uint160.max;
            v24 = v26 = 64;
            v27, /* address */ v12 = address(v11.word0).token0().gas(msg.gas);
            require(v27, MEM[v26], RETURNDATASIZE());
            if (v27) {
                if (v3 > RETURNDATASIZE()) {
                    v3 = v28 = RETURNDATASIZE();
                }
                require(!((MEM[v26] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v26] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v26])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[v26] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[v26] + v3 - MEM[v26] >= v3, v13, v13);
                require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                v29 = this.code.size;
            }
            v30 = address(v12) == address(v11.word2);
            if (0 == varg0 > v13) {
                require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
                v31 = v32 = 0 - varg0;
                v30 = v33 = address(v12) != address(v11.word2);
            } else {
                require(varg1 != int256.min, Panic(17)); // arithmetic overflow or underflow
                v31 = v34 = 0 - varg1;
            }
            if (!v30) {
            }
            v12 = v35 = v11 + 128;
            v11.word4 = v31;
            require(v11.word7 < 6, Panic(33)); // failed convertion to enum type
            if (3 == v11.word7) {
                require(msg.sender == ___function_selector__, Error('no-permission'));
                if (varg0 >= v13) {
                    if (varg1 < v13) {
                        require(varg1 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        require((address(v11.word3)).code.size, v13, v13);
                        v36, /* uint256 */ v37 = address(v11.word3).transfer(address(v11.word1), 0 - varg1).value(v13).gas(msg.gas);
                        require(v36, v37, RETURNDATASIZE());
                        if (v36) {
                            require(MEM[v26] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[v26];
                            require(!v13, v13, v13);
                            v38 = this.code.size;
                        }
                        require(!((MEM[v26] + 32 > uint64.max) | (MEM[v26] + 32 < MEM[v26])), Panic(65)); // failed memory allocation (too much memory)
                        require((address(v11.word1)).code.size, v13, v13);
                        v39 = new uint256[](0);
                        v40 = 0;
                        while (v40 >= 0) {
                            MEM[32 + (v40 + v39)] = MEM[32 + (MEM[v26] + v40)];
                            v40 += 32;
                        }
                        MEM[v39.data] = 0;
                        v41, /* uint256 */ v42 = address(v11.word1).swap(v11.word5, v13, this, v39).value(v13).gas(msg.gas);
                        require(v41, v42, RETURNDATASIZE());
                        if (v41) {
                            require(MEM[v26] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[v26];
                            require(!v13, v13, v13);
                            v43 = this.code.size;
                        }
                        require((address(v11.word2)).code.size, v13, v13);
                        v44, /* uint256 */ v45 = address(v11.word2).call(0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v11.word0), v11.word4).value(v13).gas(msg.gas);
                        require(v44, v45, RETURNDATASIZE());
                        if (v44) {
                            require(MEM[v26] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[v26];
                            require(!v13, v13, v13);
                        }
                    }
                } else {
                    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    require((address(v11.word3)).code.size, v13, v13);
                    v46, /* uint256 */ v47 = address(v11.word3).transfer(address(v11.word1), 0 - varg0).value(v13).gas(msg.gas);
                    require(v46, v47, RETURNDATASIZE());
                    if (v46) {
                        require(MEM[v26] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v26];
                        require(!v13, v13, v13);
                        v48 = this.code.size;
                    }
                    require(!((MEM[v26] + 32 > uint64.max) | (MEM[v26] + 32 < MEM[v26])), Panic(65)); // failed memory allocation (too much memory)
                    require((address(v11.word1)).code.size, v13, v13);
                    v49 = new uint256[](0);
                    v50 = 0;
                    while (v50 >= 0) {
                        MEM[32 + (v50 + v49)] = MEM[32 + (MEM[v26] + v50)];
                        v50 += 32;
                    }
                    MEM[v49.data] = 0;
                    v51, /* uint256 */ v52 = address(v11.word1).swap(v13, v11.word5, this, v49).value(v13).gas(msg.gas);
                    require(v51, v52, RETURNDATASIZE());
                    if (v51) {
                        require(MEM[v26] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v26];
                        require(!v13, v13, v13);
                        v53 = this.code.size;
                    }
                    v54 = v55 = address(v11.word2);
                    require(v55.code.size, v13, v13);
                    v20 = v56 = MEM[v26];
                    MEM[v56] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v56 + 4] = address(v11.word0);
                    MEM[v56 + 4 + 32] = v11.word4;
                    v57 = 64 + (v56 + 4);
                }
            } else {
                require(v11.word7 < 6, Panic(33)); // failed convertion to enum type
                if (1 == v11.word7) {
                    v11.word7 = 4;
                    v58 = new bytes[](uint8.max + 1);
                    MEM[v58.data] = address(v11.word0);
                    v58[32][v3] = address(v11.word1);
                    v58[64] = address(v11.word2);
                    v58[96] = address(v11.word3);
                    v58[128] = v11.word4;
                    v58[160] = v11.word5;
                    v58[192] = v11.word6;
                    require(v11.word7 < 6, Panic(33)); // failed convertion to enum type
                    v58[224] = v11.word7;
                    require(!((v58 + 288 > uint64.max) | (v58 + 288 < v58)), Panic(65)); // failed memory allocation (too much memory)
                    v59 = 0;
                    while (v59 >= v58.length) {
                        MEM[32 + (v59 + (MEM[v26] + 68))] = v58[v59];
                        v59 += 32;
                    }
                    v60 = this.call(v61, 0xe484459600000000000000000000000000000000000000000000000000000000, v3, v58.length, v61, v61, v61, v61, v61, v61, v61, v61, 0).value(-32).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v62 = new bytes[](RETURNDATASIZE());
                        require(!((v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v62.data, 0, RETURNDATASIZE());
                    }
                    require(v60, Error(30259));
                    v54 = v63 = 0;
                    require(v63.code.size, v35, v35);
                    v20 = v64 = MEM[v25];
                    MEM[v64] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v64 + v25] = address(v11.word2 & v13);
                    MEM[v64 + v25 + 32] = MEM[7304];
                    v57 = v65 = 64 + (v64 + v25);
                }
            }
            v66 = v54.call(MEM[v18c50x1b47_0x0V0x440x11a7:v18c50x1b47_0x0V0x440x11a7 + v1714V0x1dc7V0x440x11a7 - v18c50x1b47_0x0V0x440x11a7], MEM[v18c50x1b47_0x0V0x440x11a7:v18c50x1b47_0x0V0x440x11a7 + v15d0V0x1feaV0x440x11a7]).value(v12).gas(msg.gas);
            if (!v66) {
                RETURNDATACOPY(MEM[v24], v12, RETURNDATASIZE());
                revert(MEM[v24], RETURNDATASIZE());
            } else if (!v66) {
                // Unknown jump to Block 0xb50x11a7. Refer to 3-address code (TAC);
            }
        }
        require(v20 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v20;
        require(!v12, v12, v12);
        // Unknown jump to Block 0xb50x11a7. Refer to 3-address code (TAC);
    }
}

function 0x431aaa1a(address varg0, uint256 varg1, uint256 varg2, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg3.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg3.data, varg3.length);
    v0[varg3.length] = 0;
    0x17a3(varg0, varg1, varg2, v0);
}

function withdraw() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if (bool(this.balance)) {
        v0 = v1 = 0;
        if (!this.balance) {
            v0 = v2 = 2300;
        }
        v3, /* uint256 */ v4 = _owner.call().value(this.balance).gas(v0);
        require(v3, v4, RETURNDATASIZE());
    }
    v5 = v6 = 0;
    while (v5 < _withdraw.length) {
        require(v5 < _withdraw.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v7 = v8 = 32;
        v9, v10 = _withdraw[v5].balanceOf(this).gas(msg.gas);
        if (!v9) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else {
            v10 = v11 = 0;
            if (v9) {
                if (v8 > RETURNDATASIZE()) {
                    v7 = v12 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v7 - MEM[64] >= v8);
            }
            if (bool(v10)) {
                require(v5 < _withdraw.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - _withdraw[v5]) {
                    require(v5 < _withdraw.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    require((_withdraw[v5]).code.size);
                    v13 = _withdraw[v5].transfer(_owner, v10).gas(msg.gas);
                    if (!v13) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v13) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                    }
                } else {
                    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                    v14 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v10).gas(msg.gas);
                    if (!v14) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v15 = v16 = 0;
                        if (v14) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        if (!v10) {
                            v15 = v17 = 2300;
                        }
                        v18 = _owner.call().value(v10).gas(v15);
                        if (!v18) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        }
                    }
                }
            }
            require(v5 != uint256.max, Panic(17)); // arithmetic overflow or underflow
            v5 += 1;
        }
    }
}

function 0x15e3(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= uint8.max + 1);
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) > uint64.max) | (v0 + (uint8.max + 1) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(MEM[varg0] - address(MEM[varg0])));
    v0.word0 = MEM[varg0];
    require(!(MEM[varg0 + 32] - address(MEM[varg0 + 32])));
    v0.word1 = MEM[varg0 + 32];
    require(!(MEM[varg0 + 64] - address(MEM[varg0 + 64])));
    v0.word2 = MEM[varg0 + 64];
    require(!(MEM[varg0 + 96] - address(MEM[varg0 + 96])));
    v0.word3 = MEM[varg0 + 96];
    v0.word4 = MEM[varg0 + 128];
    v0.word5 = MEM[varg0 + 160];
    v0.word6 = MEM[varg0 + 192];
    require(MEM[varg0 + 224] < 6);
    v0.word7 = MEM[varg0 + 224];
    return v0;
}

function 0x17a3(address varg0, uint256 varg1, uint256 varg2, bytes varg3) private { 
    v0 = v1 = 0;
    require(msg.sender == ___function_selector__, Error('no-permission'));
    require(this == varg0, Error('no-permission'));
    if (varg1) {
    }
    v2 = 0x15e3(varg3.data, varg3 + varg3.length + 32);
    require(v2.word7 < 6, Panic(33)); // failed convertion to enum type
    if (!v2.word7) {
        require((address(v2.word3)).code.size, v1, v1);
        v3, /* uint256 */ v4 = address(v2.word3).transfer(address(v2.word1), varg2).value(v1).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        if (v3) {
            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v5 = this.code.size;
        }
        if (0 == address(v2.word3) > address(v2.word2)) {
            v0 = v6 = v2.word5;
        } else {
            v0 = v7 = v2.word5;
        }
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require((address(v2.word1)).code.size, v1, v1);
        v8 = new uint256[](0);
        v9 = 0;
        while (v9 >= 0) {
            MEM[32 + (v9 + v8)] = MEM[32 + (MEM[64] + v9)];
            v9 += 32;
        }
        MEM[v8.data] = 0;
        v10, /* uint256 */ v11 = address(v2.word1).swap(v0, v0, address(this), v8).value(v1).gas(msg.gas);
        require(v10, v11, RETURNDATASIZE());
        if (v10) {
            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v1, v1, v1);
            v12 = this.code.size;
        }
        require((address(v2.word2)).code.size, v1, v1);
        v13 = v14 = MEM[64];
        v15, /* uint256 */ v16 = address(v2.word2).transfer(address(v2.word0), v2.word4).value(v1).gas(msg.gas);
        require(v15, v16, RETURNDATASIZE());
        if (!v15) {
            return ;
        }
    } else {
        require(v2.word7 < 6, Panic(33)); // failed convertion to enum type
        if (2 == v2.word7) {
            require(___function_selector__ != 1, Error('v2callback'));
            v17 = new bytes[](varg3.length);
            v18 = 0;
            while (v18 >= varg3.length) {
                v17[v18] = varg3[v18];
                v18 += 32;
            }
            v17[varg3.length] = 0;
            require(!((MEM[64] + ((varg3.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v17 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((varg3.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v17 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v19, /* uint256 */ v20 = this.call(0xe484459600000000000000000000000000000000000000000000000000000000, v17).value(v1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v21 = new bytes[](RETURNDATASIZE());
                require(!((v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                v20 = v21.data;
                RETURNDATACOPY(v20, 0, RETURNDATASIZE());
            }
            require(v19, Error(30259));
            require((address(v2.word2)).code.size, v1, v1);
            v13 = v22 = MEM[64];
            v23, /* uint256 */ v24 = address(v2.word2).transfer(address(v2.word0), v2.word4).value(v1).gas(msg.gas);
            require(v23, v24, RETURNDATASIZE());
            if (!v23) {
                return ;
            }
        } else {
            return ;
        }
    }
    require(v13 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v13;
    require(!v1, v1, v1);
    return ;
}

function 0x99dbfa64(address varg0, address varg1, uint256 varg2, address varg3, address varg4, address varg5) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(!(varg2 - address(varg2)));
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg5.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg5 + varg5.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg5.data, varg5.length);
    v0[varg5.length] = 0;
    v1 = v2 = msg.sender != owner_2_0_19;
    if (v2) {
        v1 = v3 = msg.sender != owner_3_0_19;
    }
    require(!v1, Error('only executor'));
    v4 = msg.gas;
    v5 = v6 = 744;
    v7 = 0x223d();
    v8 = 0x223d();
    v5 = v9 = 0x223d();
    v5 = v10 = 0x223d();
    v5 = v11 = 0;
    if (0 == (bool(v12 >> 4) == 2)) {
        if (3 == bool(v12 >> 4)) {
            v5 = v13 = 0x3a82(varg0);
            v14 = this.code.size;
        }
    } else {
        v5 = v15 = 0x3834(varg0);
    }
    if (bool(v12) - 2) {
        if (3 == bool(v12)) {
            v5 = v16 = 0x3a82(varg1);
            v17 = this.code.size;
        }
    } else {
        v5 = v18 = 0x3834(varg1);
    }
    v19 = v20 = 0x21db(address(MEM[v5 + 64]));
    if (v20) {
        v19 = v21 = address(MEM[v5 + 192]) > address(MEM[192 + v5]);
    }
    if (!v19) {
        v22 = 0x21db(address(MEM[v5 + 64]));
        v19 = v23 = !v22;
        if (!bool(v22)) {
            v19 = v24 = address(MEM[v5 + 192]) < address(MEM[192 + v5]);
        }
    }
    if (v19) {
        MEM[v5] = address(MEM[v5]);
        MEM[v5] = address(MEM[v5]);
        MEM[v5 + 32] = uint128(MEM[v5 + 32]);
        MEM[v5 + 32] = uint128(MEM[v5 + 32]);
        MEM[v5 + 64] = address(MEM[v5 + 64]);
        MEM[v5 + 64] = address(MEM[v5 + 64]);
        MEM[160 + v5] = address(MEM[v5 + 160]);
        MEM[v5 + 160] = address(MEM[160 + v5]);
        MEM[v5 + 192] = address(MEM[v5 + 192]);
        MEM[v5 + 192] = address(MEM[v5 + 192]);
        MEM[v5 + 224] = int24(MEM[v5 + 224]);
        MEM[v5 + 224] = int24(MEM[v5 + 224]);
        MEM[v5 + 320] = int24(MEM[v5 + 320]);
        MEM[v5 + 320] = int24(MEM[v5 + 320]);
        MEM[v5 + (uint8.max + 1)] = uint8(MEM[v5 + (uint8.max + 1)]);
        MEM[v5 + (uint8.max + 1)] = uint8(MEM[v5 + (uint8.max + 1)]);
        MEM[v5 + 288] = uint24(MEM[v5 + 288]);
        MEM[v5 + 288] = uint24(MEM[v5 + 288]);
    }
    v25 = 0x21db(address(MEM[v5 + 64]));
    v5 = v26 = new struct(8);
    require(!((v26 + (uint8.max + 1) > uint64.max) | (v26 + (uint8.max + 1) < v26)), Panic(65)); // failed memory allocation (too much memory)
    v26.word0 = 1;
    v26.word1 = address(MEM[v5 + 192]);
    v26.word2 = int24(MEM[v5 + 224]);
    v26.word3 = uint128(MEM[v5 + 32]);
    v26.word4 = 0;
    v26.word5 = int24(MEM[v5 + 320]);
    v5 = v27 = !v25;
    v26.word6 = bool(v25);
    v26.word7 = uint24(MEM[v5 + 288]);
    require(!((MEM[64] + (uint8.max + 1) > uint64.max) | (MEM[64] + (uint8.max + 1) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = address(MEM[v5 + 192]);
    MEM[MEM[64] + 64] = int24(MEM[v5 + 224]);
    MEM[MEM[64] + 96] = uint128(MEM[v5 + 32]);
    MEM[MEM[64] + 128] = 0;
    MEM[MEM[64] + 160] = int24(MEM[v5 + 320]);
    MEM[MEM[64] + 192] = v27;
    MEM[MEM[64] + 224] = uint24(MEM[v5 + 288]);
    v5 = v28 = new struct(8);
    require(!((v28 + (uint8.max + 1) > uint64.max) | (v28 + (uint8.max + 1) < v28)), Panic(65)); // failed memory allocation (too much memory)
    v28.word0 = 1;
    v28.word1 = address(MEM[v5 + 192]);
    v28.word2 = int24(MEM[v5 + 224]);
    v28.word3 = uint128(MEM[v5 + 32]);
    v28.word4 = 0;
    v28.word5 = int24(MEM[v5 + 320]);
    v28.word6 = bool(v25);
    v28.word7 = uint24(MEM[v5 + 288]);
    v5 = v29 = new struct(8);
    require(!((v29 + (uint8.max + 1) > uint64.max) | (v29 + (uint8.max + 1) < v29)), Panic(65)); // failed memory allocation (too much memory)
    v29.word0 = 0;
    v29.word1 = address(MEM[v5 + 192]);
    v29.word2 = int24(MEM[v5 + 224]);
    v29.word3 = uint128(MEM[v5 + 32]);
    v29.word4 = 0;
    v29.word5 = int24(MEM[v5 + 320]);
    v29.word6 = v27;
    v29.word7 = uint24(MEM[v5 + 288]);
    v5 = v30 = address(v26.word1);
    v5 = v31 = address(MEM[MEM[64] + 32]);
    v5 = v32 = uint128(MEM[MEM[64] + 96]);
    v5 = v33 = uint128(v26.word3);
    if (v32 < v33) {
    }
    v5 = v34 = 10 ** 18;
    if (uint128(v5) >= 10 ** 17) {
        if (v34 <= uint128(v5)) {
            if (uint128(v5) >= 10 ** 19) {
                if (uint128(v5) >= 10 ** 20) {
                    if (uint128(v5) >= 10 ** 21) {
                        if (uint128(v5) < 10 ** 22) {
                            v5 = v35 = 10 ** 19;
                        }
                        v5 = v36 = 12026;
                        v5 = v37 = uint24.max;
                        v5 = v38 = 12011;
                        v5 = v39 = 224;
                        v5 = v40 = 12017;
                        v5 = v41 = 12034;
                        v42 = v43 = 10 ** 6 - uint24(MEM[MEM[64] + v39]);
                        require(v43 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
                    } else {
                        v5 = v44 = uint24.max;
                        v5 = v45 = 12026;
                        v5 = v46 = 12011;
                        v5 = v47 = 224;
                        v5 = v48 = 12017;
                        v5 = v49 = 12034;
                        v5 = v50 = 10 ** 20;
                        v42 = 10 ** 6 - uint24(MEM[MEM[64] + v47]);
                        require(v42 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
                    }
                } else {
                    v5 = v51 = uint24.max;
                    v5 = v52 = 12026;
                    v5 = v53 = 12011;
                    v5 = v54 = 224;
                    v5 = v55 = 12017;
                    v5 = v56 = 12034;
                    v5 = v57 = 10 ** 21;
                    v42 = v58 = 10 ** 6 - uint24(MEM[MEM[64] + v54]);
                    require(v58 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
                }
            } else {
                v5 = v59 = uint24.max;
                v5 = v60 = 12026;
                v5 = v61 = 12011;
                v5 = v62 = 224;
                v5 = v63 = 12017;
                v5 = v64 = 12034;
                v5 = v65 = 10 ** 22;
                v42 = v66 = 10 ** 6 - uint24(MEM[MEM[64] + v62]);
                require(v66 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
            }
        } else {
            v5 = v67 = uint24.max;
            v5 = v68 = 12026;
            v5 = v69 = 12011;
            v5 = v70 = 224;
            v5 = v71 = 12017;
            v5 = v72 = 12034;
            v5 = v73 = 10 ** 23;
            v42 = v74 = 10 ** 6 - uint24(MEM[MEM[64] + v70]);
            require(v74 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
        }
    } else {
        v5 = v75 = uint24.max;
        v5 = v76 = 12026;
        v5 = v77 = 12011;
        v5 = v78 = 224;
        v5 = v79 = 12017;
        v5 = v80 = 12034;
        v5 = v81 = 10 ** 24;
        v42 = v82 = 10 ** 6 - uint24(MEM[MEM[64] + v78]);
        require(v82 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    }
    while (1) {
        v5 = v42 & v5;
        v5 = 0x4b13(v5, v5, v5);
        v42 = v83 = 10 ** 6 - uint24(MEM[v5 + v5] & v5);
        require(v83 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
        // Unknown jump to Block 0x2eeb. Refer to 3-address code (TAC);
    }
    while (1) {
        if (v5 * v5 % uint256.max - v5 * v5 == v5 * v5 % uint256.max < v5 * v5) {
            // Unknown jump to Block 0x497d0x219. Refer to 3-address code (TAC);
        }
        require(v5);
        v5 = v5 * v5 / v5;
        // Unknown jump to Block {'0x2f2b', '0x2efa', '0x300d', '0x2f02', '0x302a'}. Refer to 3-address code (TAC);
        continue;
        v5 = v84 = 12081;
        require((v5 * v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
        v85 = 0x4b88(v5 * v5);
        v5 = v5 * v85;
        require((v5 / v5 == v85) | !v5, Panic(17)); // arithmetic overflow or underflow
        v5 *= v5;
        require((v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
        while (1) {
            v5 = _SafeAdd(v5, v5);
            if (!v5) {
                require((v5 * v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
                v5 *= v5 * v5;
                require((v5 / (v5 * v5) == v5) | !(v5 * v5), Panic(17)); // arithmetic overflow or underflow
            } else {
                v5 = 0x4b13(v5, v5, v5);
            }
            if (!v5) {
                v5 = v86 = 12075;
                v5 = v87 = 12330;
                v5 = v88 = 12308;
                v5 = v89 = 12301;
                v5 = v90 = 12366;
                v5 = v91 = 12347;
                v5 = v92 = 12218;
                v5 = v93 = 12359;
                v5 = v94 = 12295;
                v5 = v95 = 12352;
                v96 = _SafeMul(v5, v5);
                require((v5 * v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
                if (v96 * (v5 * v5) % uint256.max - v96 * (v5 * v5) == v96 * (v5 * v5) % uint256.max < v96 * (v5 * v5)) {
                    v5 = v96 * (v5 * v5) / 10 ** 6;
                } else {
                    require(10 ** 6 > v96 * (v5 * v5) % uint256.max - v96 * (v5 * v5) - (v96 * (v5 * v5) % uint256.max < v96 * (v5 * v5)));
                    v5 = (v96 * (v5 * v5) - v96 * (v5 * v5) % 10 ** 6 >> 6 | v96 * (v5 * v5) % uint256.max - v96 * (v5 * v5) - (v96 * (v5 * v5) % uint256.max < v96 * (v5 * v5)) - (v96 * (v5 * v5) % 10 ** 6 > v96 * (v5 * v5)) << 250) * 0xde8f6cefed634549b62c77574f722e1ac57e23f24d8fd5cb790fb65668c26139;
                }
            } else {
                require((v5 * v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
                require((10 ** 6 == address(10 ** 6 * v5) / v5) | !v5, Panic(17)); // arithmetic overflow or underflow
                v5 = v97 = 12347;
                v5 = v98 = 12075;
                v5 = v99 = 12330;
                v5 = v100 = 12308;
                v5 = v101 = 12301;
                v5 = v102 = 12366;
                v5 = v103 = 12218;
                v5 = v104 = 12359;
                v5 = v105 = 12295;
                v5 = v106 = 12352;
                v5 = 0x4b13(v5 * v5, v5, address(v5 * 10 ** 6));
            }
        }
        MEM[160] = 0;
        if (!v5) {
            v107 = _SafeDiv(v5, v5);
            MEM[160] = address(v107);
        } else {
            v108 = _SafeDiv(v5, v5);
            MEM[160] = address(v108);
        }
        require(10 ** 6 - uint24(MEM[MEM[64] + 224]) <= uint24.max, Panic(17)); // arithmetic overflow or underflow
        v5 = 0x4903(v5, uint24(10 ** 6 - uint24(MEM[MEM[64] + 224])));
        v5 *= v5;
        require((v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
        v5 *= v5;
        require((v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
        v5 = v109 = uint160.max;
        v5 = v110 = address(MEM[0xa0]);
        v5 *= v5;
        require((v5 / v5 == v5) | !v5, Panic(17)); // arithmetic overflow or underflow
        require(v5 > v5 * v5 % uint256.max - v5 * v5 - (v5 * v5 % uint256.max < v5 * v5));
        v111 = v5 * v5 % v5;
        v112 = (2 - v5 / (0 - v5 & v5) * ((2 - v5 / (0 - v5 & v5) * (3 * (v5 / (0 - v5 & v5)) ^ 0x2)) * (3 * (v5 / (0 - v5 & v5)) ^ 0x2))) * ((2 - v5 / (0 - v5 & v5) * (3 * (v5 / (0 - v5 & v5)) ^ 0x2)) * (3 * (v5 / (0 - v5 & v5)) ^ 0x2));
        v113 = (2 - v5 / (0 - v5 & v5) * ((2 - v5 / (0 - v5 & v5) * v112) * v112)) * ((2 - v5 / (0 - v5 & v5) * v112) * v112);
        v5 = ((v5 * v5 - v111) / (0 - v5 & v5) | (v5 * v5 % uint256.max - v5 * v5 - (v5 * v5 % uint256.max < v5 * v5) - (v111 > v5 * v5)) * ((0 - (0 - v5 & v5)) / (0 - v5 & v5) + 1)) * ((2 - v5 / (0 - v5 & v5) * ((2 - v5 / (0 - v5 & v5) * v113) * v113)) * ((2 - v5 / (0 - v5 & v5) * v113) * v113));
        // Unknown jump to Block {'0x2f2b', '0x2efa', '0x300d', '0x2f02', '0x302a'}. Refer to 3-address code (TAC);
    }
    v114 = v5 + v5;
    require(v5 <= v114, Panic(17)); // arithmetic overflow or underflow
    require(v114 - v5 <= v114, Panic(17)); // arithmetic overflow or underflow
}

function 0x21db(address varg0) private { 
    if (!varg0) {
        return 0;
    } else {
        v0 = v1 = 0;
        while (v0 >= _withdraw.length) {
            require(v0 < _withdraw.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (_withdraw[v0] == varg0) {
                return 1;
            } else {
                require(v0 != uint256.max, Panic(17)); // arithmetic overflow or underflow
                v0 += 1;
            }
        }
        return 0;
    }
}

function 0x223d() private { 
    v0 = new struct(11);
    require(!((v0 + 352 > uint64.max) | (v0 + 352 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 0;
    return v0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x3834(address varg0) private { 
    v0 = 0x223d();
    v1 = v2 = 32;
    v3, /* address */ v4 = varg0.token0().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        if (v2 > RETURNDATASIZE()) {
            v1 = v6 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v1 - MEM[64] >= v2, v5, v5);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        v7 = this.code.size;
    }
    v8, /* address */ v4 = varg0.token1().gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v4 = v9 = 0;
    if (v8) {
        if (v2 > RETURNDATASIZE()) {
            v1 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v1 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v1 - MEM[64] >= v2, v9, v9);
        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
        v11 = this.code.size;
    }
    v12, /* uint112 */ v13, /* uint112 */ v13, /* uint32 */ v14 = varg0.getReserves().gas(msg.gas);
    require(v12, MEM[64], RETURNDATASIZE());
    v13 = v15 = 0;
    if (v12) {
        v16 = v17 = 96;
        if (v17 > RETURNDATASIZE()) {
            v16 = v18 = RETURNDATASIZE();
            require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        } else {
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
        }
        require(MEM[64] + v16 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v13 - uint112(v13)));
        require(!(v14 - uint32(v14)));
    }
    v19 = 0x498b(uint112(v13), uint112(v13), 12054);
    require((uint112(v13) * uint112(v13) / uint112(v13) == uint112(v13)) | !uint112(v13), Panic(17)); // arithmetic overflow or underflow
    v20 = 0x4b88(uint112(v13) * uint112(v13));
    v21 = 0x21db(v4);
    if (v21) {
    }
    v22 = 0x21db(v4);
    if (v22) {
    }
    v23 = new struct(11);
    require(!((v23 + 352 > uint64.max) | (v23 + 352 < v23)), Panic(65)); // failed memory allocation (too much memory)
    v23.word0 = varg0;
    v23.word1 = uint128(v20);
    v23.word2 = address(v4);
    v23.word3 = address(v4);
    v23.word4 = address(v4);
    v23.word5 = address(v4);
    v23.word6 = address(v19);
    v23.word7 = 0;
    v23.word8 = 2;
    v23.word9 = 3000;
    v23.word10 = 0;
    return v23;
}

function 0x3a82(address varg0) private { 
    v0 = 0x223d();
    v1 = varg0;
    v2, /* address */ v3, /* address */ v3, /* uint16 */ v4, /* uint16 */ v5, /* uint16 */ v6, /* uint32 */ v7, /* bool */ v8 = v1.slot0().gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v9 = 0;
    if (v2) {
        v10 = v11 = 224;
        if (v11 > RETURNDATASIZE()) {
            v10 = v12 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v10 - MEM[64] >= 224, v9, v9);
        require(!0x3850c7bd00000000000000000000000000000000000000000000000000000000);
        require(!(v3 - int24(v3)));
        require(!(v4 - uint16(v4)));
        require(!(v5 - uint16(v5)));
        require(!(v6 - uint16(v6)));
        require(!(v7 - uint32(v7)));
        require(!(v8 - bool(v8)));
        v13 = this.code.size;
    }
    v14, /* address */ v15 = v1.token0().gas(msg.gas);
    require(v14, MEM[64], RETURNDATASIZE());
    v15 = v16 = 0;
    if (v14) {
        v17 = v18 = 32;
        if (32 > RETURNDATASIZE()) {
            v17 = v19 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v17 - MEM[64] >= 32, v16, v16);
        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        v20 = this.code.size;
    }
    v21, /* address */ v15 = v1.token1().gas(msg.gas);
    require(v21, MEM[64], RETURNDATASIZE());
    v15 = v22 = 0;
    if (v21) {
        v23 = v24 = 32;
        if (32 > RETURNDATASIZE()) {
            v23 = v25 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v23 - MEM[64] >= 32, v22, v22);
        require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
        v26 = this.code.size;
    }
    v27 = 0x21db(v15);
    if (v27) {
    }
    v28 = 0x21db(v15);
    if (v28) {
    }
    v29, /* uint128 */ v30 = v1.liquidity().gas(msg.gas);
    require(v29, MEM[64], RETURNDATASIZE());
    v30 = v31 = 0;
    if (v29) {
        v32 = v33 = 32;
        if (32 > RETURNDATASIZE()) {
            v32 = v34 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v32 - MEM[64] >= 32, v31, v31);
        require(!0x1a68650200000000000000000000000000000000000000000000000000000000);
        v35 = this.code.size;
    }
    v36, /* int24 */ v37 = v1.tickSpacing().gas(msg.gas);
    require(v36, MEM[64], RETURNDATASIZE());
    v37 = v38 = 0;
    if (v36) {
        v39 = v40 = 32;
        if (32 > RETURNDATASIZE()) {
            v39 = v41 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v39 - MEM[64] >= 32, v38, v38);
        require(!(v37 - int24(v37)));
        v42 = this.code.size;
    }
    v43, v44 = v1.fee().gas(msg.gas);
    require(v43, MEM[64], RETURNDATASIZE());
    v44 = v45 = 0;
    if (v43) {
        v46 = v47 = 32;
        if (32 > RETURNDATASIZE()) {
            v46 = v48 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v46 - MEM[64] >= 32, v45, v45);
        require(!0xddca3f4300000000000000000000000000000000000000000000000000000000, v45, v45);
    }
    v49 = new struct(11);
    require(!((v49 + 352 > uint64.max) | (v49 + 352 < v49)), Panic(65)); // failed memory allocation (too much memory)
    v49.word0 = v1;
    v49.word1 = uint128(v30);
    v49.word2 = address(v15);
    v49.word3 = address(v15);
    v49.word4 = address(v15);
    v49.word5 = address(v15);
    v49.word6 = address(v3);
    v49.word7 = int24(v3);
    v49.word8 = 3;
    v49.word9 = uint24(v44);
    v49.word10 = int24(v37);
    return v49;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * varg1;
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        return v0;
    } else {
        require(1 > varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0));
        return v0 - varg0 * varg1 % 1;
    }
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * 1 % uint256.max - varg0 - (varg0 * 1 % uint256.max < varg0);
    if (varg0 * 1 % uint256.max - varg0 == varg0 * 1 % uint256.max < varg0) {
        require(varg1);
        return varg0 / varg1;
    } else {
        require(varg1 > v0);
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return ((varg0 - varg0 * 1 % varg1) / v1 | (v0 - (varg0 * 1 % varg1 > varg0)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x4903(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 * 10 ** 6 % uint256.max - varg0 * 10 ** 6 - (varg0 * 10 ** 6 % uint256.max < varg0 * 10 ** 6);
    if (varg0 * 10 ** 6 % uint256.max - varg0 * 10 ** 6 == varg0 * 10 ** 6 % uint256.max < varg0 * 10 ** 6) {
        require(varg1);
        return varg0 * 10 ** 6 / varg1;
    } else {
        require(varg1 > v0);
        v1 = 0 - varg1 & varg1;
        v2 = varg1 / v1;
        v3 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return ((varg0 * 10 ** 6 - varg0 * 10 ** 6 % varg1) / v1 | (v0 - (varg0 * 10 ** 6 % varg1 > varg0 * 10 ** 6)) * ((0 - v1) / v1 + 1)) * ((2 - v2 * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3))) * ((2 - v2 * ((2 - v2 * v3) * v3)) * ((2 - v2 * v3) * v3)));
    }
}

function 0x498b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * (uint192.max + 1) % uint256.max - (varg0 << 192) - (varg0 * (uint192.max + 1) % uint256.max < varg0 << 192);
    if (varg0 * (uint192.max + 1) % uint256.max - (varg0 << 192) == varg0 * (uint192.max + 1) % uint256.max < varg0 << 192) {
        require(varg1);
        v1 = (varg0 << 192) / varg1;
    } else {
        require(varg1 > v0);
        v2 = 0 - varg1 & varg1;
        v3 = varg1 / v2;
        v4 = (2 - v3 * ((2 - v3 * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2))) * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2)))) * ((2 - v3 * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2))) * ((2 - v3 * (3 * v3 ^ 0x2)) * (3 * v3 ^ 0x2)));
        v1 = v5 = (((varg0 << 192) - varg0 * (uint192.max + 1) % varg1) / v2 | (v0 - (varg0 * (uint192.max + 1) % varg1 > varg0 << 192)) * ((0 - v2) / v2 + 1)) * ((2 - v3 * ((2 - v3 * ((2 - v3 * v4) * v4)) * ((2 - v3 * v4) * v4))) * ((2 - v3 * ((2 - v3 * v4) * v4)) * ((2 - v3 * v4) * v4)));
        // Unknown jump to Block 0x2f160x498b. Refer to 3-address code (TAC);
    }
    v6 = 1;
    if (v1 >= uint128.max + 1) {
        v6 = v7 = uint64.max + 1;
        v1 = v8 = v1 >> 128;
    }
    if (v1 >= uint64.max + 1) {
        v1 = v9 = v1 >> 64;
        v6 = v10 = v6 << 32;
    }
    if (v1 >= uint32.max + 1) {
        v1 = v11 = v1 >> 32;
        v6 = v12 = v6 << 16;
    }
    if (v1 >= uint16.max + 1) {
        v1 = v13 = v1 >> 16;
        v6 = v14 = v6 << 8;
    }
    if (v1 >= uint8.max + 1) {
        v1 = v15 = v1 >> 8;
        v6 = v16 = v6 << 4;
    }
    if (v1 >= 16) {
        v1 = v17 = v1 >> 4;
        v6 = v18 = v6 << 2;
    }
    if (v1 >= 8) {
        v6 = v19 = v6 << 1;
    }
    v20 = v1 / (v1 / v6 + v6 >> 1) + (v1 / v6 + v6 >> 1) >> 1;
    v21 = v1 / (v1 / (v1 / v20 + v20 >> 1) + (v1 / v20 + v20 >> 1) >> 1) + (v1 / (v1 / v20 + v20 >> 1) + (v1 / v20 + v20 >> 1) >> 1) >> 1;
    v22 = v1 / (v1 / v21 + v21 >> 1) + (v1 / v21 + v21 >> 1) >> 1;
    if (v1 / v22 < v22) {
        return v1 / v22;
    } else {
        return v22;
    }
}

function 0x4b13(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    if (varg0 * varg1 % uint256.max - v0 == varg0 * varg1 % uint256.max < v0) {
        require(varg2);
        return v0 / varg2;
    } else {
        require(varg2 > v1);
        v2 = varg0 * varg1 % varg2;
        v3 = 0 - varg2 & varg2;
        v4 = varg2 / v3;
        v5 = (2 - v4 * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)))) * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)));
        return ((v0 - v2) / v3 | (v1 - (v2 > v0)) * ((0 - v3) / v3 + 1)) * ((2 - v4 * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5))) * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5)));
    }
}

function 0x4b88(uint256 varg0) private { 
    v0 = v1 = 1;
    if (varg0 >= uint128.max + 1) {
        v0 = v2 = uint64.max + 1;
        varg0 = v3 = varg0 >> 128;
    }
    if (varg0 >= uint64.max + 1) {
        varg0 = v4 = varg0 >> 64;
        v0 = v5 = v0 << 32;
    }
    if (varg0 >= uint32.max + 1) {
        varg0 = v6 = varg0 >> 32;
        v0 = v7 = v0 << 16;
    }
    if (varg0 >= uint16.max + 1) {
        varg0 = v8 = varg0 >> 16;
        v0 = v9 = v0 << 8;
    }
    if (varg0 >= uint8.max + 1) {
        varg0 = v10 = varg0 >> 8;
        v0 = v11 = v0 << 4;
    }
    if (varg0 >= 16) {
        varg0 = v12 = varg0 >> 4;
        v0 = v13 = v0 << 2;
    }
    if (varg0 >= 8) {
        v0 = v0 << 1;
    }
    v14 = varg0 / v0 + v0 >> 1;
    v15 = varg0 / (varg0 / v14 + v14 >> 1) + (varg0 / v14 + v14 >> 1) >> 1;
    v16 = varg0 / (varg0 / v15 + v15 >> 1) + (varg0 / v15 + v15 >> 1) >> 1;
    v17 = varg0 / (varg0 / v16 + v16 >> 1) + (varg0 / v16 + v16 >> 1) >> 1;
    if (varg0 / v17 < v17) {
        return varg0 / v17;
    } else {
        return v17;
    }
}

function 0xe4844596(bytes varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg0.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    require(msg.sender == this, Error('no-permission'));
    v1 = 0x15e3(v0.data, v0 + v0.length + 32);
    if (0 == address(v1.word2) > address(v1.word3)) {
        v2 = v3 = 0;
        v4 = v5 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v2 = v6 = 0;
        v4 = v7 = 0x1000276a4;
    }
    v8 = new bytes[](v0.length);
    v9 = 0;
    while (v9 >= v0.length) {
        v8[v9] = v0[v9];
        v9 += 32;
    }
    v8[v0.length] = 0;
    v10, /* uint256 */ v11, /* uint256 */ v12 = address(v1.word1).swap(address(this), address(v1.word2) > address(v1.word3), v1.word6, address(v4), v8).value(v2).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    if (v10) {
        v13 = v14 = 64;
        if (64 > RETURNDATASIZE()) {
            v13 = v15 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v13 - MEM[64] >= 64);
        exit;
    } else {
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function function_selector(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 192;
    if (msg.data.length >= 4) {
        if (0x3ccfd60b == function_selector >> 224) {
            withdraw();
        } else if (0x431aaa1a == function_selector >> 224) {
            0x431aaa1a();
        } else if (0x6f37e7a9 == function_selector >> 224) {
            0x6f37e7a9();
        } else if (0x85bb6a3c == function_selector >> 224) {
            isBaseToken(address);
        } else if (0x88364982 == function_selector >> 224) {
            0x88364982();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x99dbfa64 == function_selector >> 224) {
            0x99dbfa64();
        } else if (!(0xe4844596 - (function_selector >> 224))) {
            0xe4844596();
        }
    }
    if (!msg.data.length) {
        exit;
    } else {
        require(4 <= msg.data.length);
        if (function_selector != 0xfa461e3300000000000000000000000000000000000000000000000000000000) {
            if (function_selector != 0x23a69e7500000000000000000000000000000000000000000000000000000000) {
                if (0x3a1c453c00000000000000000000000000000000000000000000000000000000 == function_selector) {
                    v0 = v1 = 1;
                } else {
                    v0 = v2 = 0;
                }
            }
        }
        v0 = v3 = 1;
        if (!v0) {
            require(msg.data.length - 4 >= 128);
            require(!(varg1 - address(varg1)));
            require(varg4 <= uint64.max);
            require(4 + varg4 + 31 < msg.data.length);
            require(varg4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = new bytes[](varg4.length);
            require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + varg4 + varg4.length + 32 <= msg.data.length);
            CALLDATACOPY(v4.data, varg4.data, varg4.length);
            v4[varg4.length] = 0;
            0x17a3(address(varg1), varg2, varg3, v4);
        } else {
            v5 = v6 = 74;
            require(msg.data.length - 4 >= 96);
            require(varg3 <= uint64.max);
            require(4 + varg3 + 31 < msg.data.length);
            require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v7 = new bytes[](varg3.length);
            require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
            require(4 + varg3 + varg3.length + 32 <= msg.data.length);
            CALLDATACOPY(v7.data, varg3.data, varg3.length);
            v7[varg3.length] = 0;
            v8 = 32;
            if (v7.length == v8) {
                require(v7 + v7.length - v7 >= v8);
                require(!(MEM[v7.data] - address(MEM[v7.data])));
                if (varg1 <= 0) {
                    if (varg2 > 0) {
                        require((address(MEM[v7.data])).code.size);
                        v9 = v10 = MEM[64];
                        MEM[v10] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                        MEM[v10 + 4] = msg.sender;
                        MEM[v10 + 4 + 32] = varg2;
                        v11 = 64 + (v10 + 4);
                    }
                } else {
                    require((address(MEM[v7.data])).code.size);
                    v9 = v12 = MEM[64];
                    MEM[v12] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v12 + 4] = msg.sender;
                    MEM[v12 + 4 + 32] = varg1;
                    v11 = v13 = 64 + (v12 + 4);
                }
                v14, /* uint256 */ v15 = address(MEM[v7.data]).call(MEM[v215d_0x0V0x440x0:v215d_0x0V0x440x0 + v1714V0x218eV0x440x0 - v215d_0x0V0x440x0], MEM[v215d_0x0V0x440x0:v215d_0x0V0x440x0]).gas(msg.gas);
                require(v14, v15, RETURNDATASIZE());
                if (v14) {
                    require(v9 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v9;
                }
            } else {
                v5 = v16 = 0x15e3(v7.data, v7 + v7.length + v8);
                v17 = v18 = 0;
                require(v16.word7 < 6, Panic(33)); // failed convertion to enum type
                v19 = v20 = 2 == v16.word7;
                if (2 != v16.word7) {
                    require(v16.word7 < 6, Panic(33)); // failed convertion to enum type
                    v19 = v21 = 4 == v16.word7;
                }
                if (v19) {
                    if (varg1 <= v18) {
                        if (varg2 > v18) {
                            require((address(v16.word3)).code.size, v18, v18);
                            v22, /* uint256 */ v23 = address(v16.word3).transfer(address(v16.word1), varg2).value(v18).gas(msg.gas);
                            require(v22, v23, RETURNDATASIZE());
                            if (v22) {
                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                v24 = this.code.size;
                            }
                        }
                    } else {
                        require((address(v16.word3)).code.size, v18, v18);
                        v25 = v26 = MEM[64];
                        v27, /* uint256 */ v28 = address(v16.word3).transfer(address(v16.word1), varg1).value(v18).gas(msg.gas);
                        require(v27, v28, RETURNDATASIZE());
                        if (!v27) {
                        }
                    }
                } else {
                    v29 = v30 = uint160.max;
                    v29 = v31 = 64;
                    v32, /* address */ v17 = address(v16.word0).token0().gas(msg.gas);
                    require(v32, MEM[v31], RETURNDATASIZE());
                    if (v32) {
                        if (v8 > RETURNDATASIZE()) {
                            v8 = v33 = RETURNDATASIZE();
                        }
                        require(!((MEM[v31] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v31] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v31])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[v31] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[v31] + v8 - MEM[v31] >= v8, v18, v18);
                        require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
                        v34 = this.code.size;
                    }
                    v35 = address(v17) == address(v16.word2);
                    if (0 == varg1 > v18) {
                        require(varg1 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v36 = v37 = 0 - varg1;
                        v35 = v38 = address(v17) != address(v16.word2);
                    } else {
                        require(varg2 != int256.min, Panic(17)); // arithmetic overflow or underflow
                        v36 = v39 = 0 - varg2;
                    }
                    if (!v35) {
                    }
                    v17 = v40 = v16 + 128;
                    v16.word4 = v36;
                    require(v16.word7 < 6, Panic(33)); // failed convertion to enum type
                    if (3 == v16.word7) {
                        require(msg.sender == ___function_selector__, Error('no-permission'));
                        if (varg1 >= v18) {
                            if (varg2 < v18) {
                                require(varg2 != int256.min, Panic(17)); // arithmetic overflow or underflow
                                require((address(v16.word3)).code.size, v18, v18);
                                v41, /* uint256 */ v42 = address(v16.word3).transfer(address(v16.word1), 0 - varg2).value(v18).gas(msg.gas);
                                require(v41, v42, RETURNDATASIZE());
                                if (v41) {
                                    require(MEM[v31] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[v31];
                                    require(!v18, v18, v18);
                                    v43 = this.code.size;
                                }
                                require(!((MEM[v31] + 32 > uint64.max) | (MEM[v31] + 32 < MEM[v31])), Panic(65)); // failed memory allocation (too much memory)
                                require((address(v16.word1)).code.size, v18, v18);
                                v44 = new uint256[](0);
                                v45 = 0;
                                while (v45 >= 0) {
                                    MEM[32 + (v45 + v44)] = MEM[32 + (MEM[v31] + v45)];
                                    v45 += 32;
                                }
                                MEM[v44.data] = 0;
                                v46, /* uint256 */ v47 = address(v16.word1).swap(v16.word5, v18, this, v44).value(v18).gas(msg.gas);
                                require(v46, v47, RETURNDATASIZE());
                                if (v46) {
                                    require(MEM[v31] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[v31];
                                    require(!v18, v18, v18);
                                    v48 = this.code.size;
                                }
                                require((address(v16.word2)).code.size, v18, v18);
                                v49, /* uint256 */ v50 = address(v16.word2).call(0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v16.word0), v16.word4).value(v18).gas(msg.gas);
                                require(v49, v50, RETURNDATASIZE());
                                if (v49) {
                                    require(MEM[v31] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[v31];
                                    require(!v18, v18, v18);
                                }
                            }
                        } else {
                            require(varg1 != int256.min, Panic(17)); // arithmetic overflow or underflow
                            require((address(v16.word3)).code.size, v18, v18);
                            v51, /* uint256 */ v52 = address(v16.word3).transfer(address(v16.word1), 0 - varg1).value(v18).gas(msg.gas);
                            require(v51, v52, RETURNDATASIZE());
                            if (v51) {
                                require(MEM[v31] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[v31];
                                require(!v18, v18, v18);
                                v53 = this.code.size;
                            }
                            require(!((MEM[v31] + 32 > uint64.max) | (MEM[v31] + 32 < MEM[v31])), Panic(65)); // failed memory allocation (too much memory)
                            require((address(v16.word1)).code.size, v18, v18);
                            v54 = new uint256[](0);
                            v55 = 0;
                            while (v55 >= 0) {
                                MEM[32 + (v55 + v54)] = MEM[32 + (MEM[v31] + v55)];
                                v55 += 32;
                            }
                            MEM[v54.data] = 0;
                            v56, /* uint256 */ v57 = address(v16.word1).swap(v18, v16.word5, this, v54).value(v18).gas(msg.gas);
                            require(v56, v57, RETURNDATASIZE());
                            if (v56) {
                                require(MEM[v31] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[v31];
                                require(!v18, v18, v18);
                                v58 = this.code.size;
                            }
                            v59 = v60 = address(v16.word2);
                            require(v60.code.size, v18, v18);
                            v25 = v61 = MEM[v31];
                            MEM[v61] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v61 + 4] = address(v16.word0);
                            MEM[v61 + 4 + 32] = v16.word4;
                            v62 = 64 + (v61 + 4);
                        }
                    } else {
                        require(v16.word7 < 6, Panic(33)); // failed convertion to enum type
                        if (1 == v16.word7) {
                            v16.word7 = 4;
                            v63 = new bytes[](uint8.max + 1);
                            MEM[v63.data] = address(v16.word0);
                            v63[32][v8] = address(v16.word1);
                            v63[64] = address(v16.word2);
                            v63[96] = address(v16.word3);
                            v63[128] = v16.word4;
                            v63[160] = v16.word5;
                            v63[192] = v16.word6;
                            require(v16.word7 < 6, Panic(33)); // failed convertion to enum type
                            v63[224] = v16.word7;
                            require(!((v63 + 288 > uint64.max) | (v63 + 288 < v63)), Panic(65)); // failed memory allocation (too much memory)
                            v64 = 0;
                            while (v64 >= v63.length) {
                                MEM[32 + (v64 + (MEM[v31] + 68))] = v63[v64];
                                v64 += 32;
                            }
                            v65 = this.call(v66, 0xe484459600000000000000000000000000000000000000000000000000000000, v8, v63.length, v66, v66, v66, v66, v66, v66, v66, v66, 0).value(-32).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v67 = new bytes[](RETURNDATASIZE());
                                require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v67.data, 0, RETURNDATASIZE());
                            }
                            require(v65, Error(30259));
                            v59 = v68 = 0;
                            require(v68.code.size, v40, v40);
                            v25 = v69 = MEM[v30];
                            MEM[v69] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v69 + v30] = address(v16.word2 & v18);
                            MEM[v69 + v30 + 32] = MEM[7304];
                            v62 = v70 = 64 + (v69 + v30);
                        }
                    }
                    v71 = v59.call(MEM[v18c50x1b47_0x0V0x440x0:v18c50x1b47_0x0V0x440x0 + v1714V0x1dc7V0x440x0 - v18c50x1b47_0x0V0x440x0], MEM[v18c50x1b47_0x0V0x440x0:v18c50x1b47_0x0V0x440x0 + v15d0V0x1feaV0x440x0]).value(v17).gas(msg.gas);
                    if (!v71) {
                        RETURNDATACOPY(MEM[v29], v17, RETURNDATASIZE());
                        revert(MEM[v29], RETURNDATASIZE());
                    } else if (!v71) {
                        // Unknown jump to Block 0x4a. Refer to 3-address code (TAC);
                    }
                }
                require(v25 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v25;
                require(!v17, v17, v17);
                // Unknown jump to Block 0x4a. Refer to 3-address code (TAC);
            }
        }
        return 0xa9059cbb00000000000000000000000000000000000000000000000000000000, 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    }
}
