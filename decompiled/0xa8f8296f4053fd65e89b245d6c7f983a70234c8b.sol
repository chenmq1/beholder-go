// Decompiled by library.dedaub.com
// 2026.04.24 11:23 UTC
// Compiled using the solidity compiler version 0.8.9


// Data structures and variables inferred from the use of storage instructions
mapping (uint24 => struct_2639) _laminarV3SwapCallback; // STORAGE[0x0]

struct struct_2639 { address field0; uint256 field1; };


function squadV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 32);
    require(_data.word1 <= uint64.max);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32 + _data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + _data + 32 + _data.word1] <= uint64.max);
    v4 = 4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1];
    require(v4 + 31 < 4 + _data + 32 + msg.data[4 + _data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + _data + 32 + msg.data[4 + _data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + _data + 32 + _data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function fusionXV3SwapCallback(int256 _amount0Delta, int256 _amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = _amount0Delta > 0;
    if (_amount0Delta <= 0) {
        v1 = _amount1Delta > 0;
    }
    require(v1);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32) >= 32);
    require(_data.word1 <= uint64.max);
    require(4 + _data + 32 + msg.data[4 + _data] - (4 + _data + 32 + _data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + _data + 32 + _data.word1] <= uint64.max);
    v4 = 4 + _data + 32 + _data.word1 + msg.data[4 + _data + 32 + _data.word1];
    require(v4 + 31 < 4 + _data + 32 + msg.data[4 + _data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + _data + 32 + msg.data[4 + _data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + _data + 32 + _data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (_amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (_amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function 0xb527c5d0(uint256 varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function supV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function zebraV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function 0x6e653614(uint256 varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function enosysdexV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function agniSwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function dragonswapV2SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function ramsesV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function pangolinv3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function 0x228c(struct(4) varg0) private { 
    v0 = v1 = 100 == v2.length;
    if (v1) {
        require(0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v3 = 0x2300000000000000000000000000000000000000000000000000000000000000 == bytes1(v2[0]);
    }
    if (v0) {
        require(1 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v4 = 0xb800000000000000000000000000000000000000000000000000000000000000 == bytes1(v2[1]);
    }
    if (v0) {
        require(2 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v5 = 0x7200000000000000000000000000000000000000000000000000000000000000 == bytes1(v2[2]);
    }
    if (v0) {
        require(3 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v6 = 0xdd00000000000000000000000000000000000000000000000000000000000000 == bytes1(v2[3]);
    }
    require(!v0, Error('OpenOcean: Not allowed'));
    v7 = v8 = varg0.word0;
    if (!address(v8)) {
        v7 = v9 = this;
    }
    require(this.balance >= varg0.word2, Error('OpenOcean: Insufficient balance for external call'));
    if (varg0.word1 <= 0) {
        v10 = v11 = 0;
        while (v10 < v12.length) {
            MEM[v10 + v13.data] = v12[v10];
            v10 += 32;
        }
        if (v10 > v12.length) {
            MEM[v12.length + v13.data] = 0;
        }
        v14 = v15, /* uint256 */ v16 = address(v7).call(v13.data).value(varg0.word2).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v17 = v18 = 96;
        } else {
            v17 = v19 = new bytes[](RETURNDATASIZE());
            v16 = v19.data;
            RETURNDATACOPY(v16, 0, RETURNDATASIZE());
        }
    } else {
        v20 = v21 = 0;
        while (v20 < v22.length) {
            MEM[v20 + v23.data] = v22[v20];
            v20 += 32;
        }
        if (v20 > v22.length) {
            MEM[v22.length + v23.data] = 0;
        }
        v14 = v24, /* uint256 */ v25 = address(v7).call(v23.data).value(varg0.word2).gas(varg0.word1);
        if (RETURNDATASIZE() == 0) {
            v17 = v26 = 96;
        } else {
            v17 = v27 = new bytes[](RETURNDATASIZE());
            v25 = v27.data;
            RETURNDATACOPY(v25, 0, RETURNDATASIZE());
        }
    }
    v28 = v29 = MEM[v17] >= 68;
    if (MEM[v17] >= 68) {
        require(0 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = v30 = 0x800000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 32]);
    }
    if (v28) {
        require(1 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = v31 = 0xc300000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 1 + 32]);
    }
    if (v28) {
        require(2 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = v32 = 0x7900000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 2 + 32]);
    }
    if (v28) {
        require(3 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = 0xa000000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 3 + 32]);
    }
    if (!v28) {
        v33 = v34 = 36 == MEM[v17];
        if (v34) {
            require(0 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v33 = v35 = 0x4e00000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 32]);
        }
        if (v33) {
            require(1 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v33 = v36 = 0x4800000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 1 + 32]);
        }
        if (v33) {
            require(2 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v33 = v37 = 0x7b00000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 2 + 32]);
        }
        if (v33) {
            require(3 < MEM[v17], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v33 = 0x7100000000000000000000000000000000000000000000000000000000000000 == bytes1(MEM[v17 + 3 + 32]);
        }
        if (!v33) {
            v38 = v39 = 0;
            while (v38 < v40.length) {
                MEM[v38 + (32 + MEM[64])] = v40[v38];
                v38 += 32;
            }
            if (v38 > v40.length) {
                MEM[v40.length + (32 + MEM[64])] = 0;
            }
            MEM[32 + MEM[64] + v40.length] = 'Unknown()';
            v41 = v42 = MEM[64];
            MEM[v42] = 41;
            MEM[64] = 9 + (32 + MEM[64] + v40.length);
        } else {
            MEM[32 + MEM[64]] = MEM[v17 + 36];
            require(!0, Panic(17)); // arithmetic overflow or underflow
            require(2 <= -65, Panic(17)); // arithmetic overflow or underflow
            v43 = 66;
            require(v43 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v44 = new bytes[](v43);
            if (v43) {
                CALLDATACOPY(v44.data, msg.data.length, v43);
            }
            require(0 < v44.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[v44.data] = (byte(bytes1(0x3000000000000000000000000000000000000000000000000000000000000000), 0x0)) & 0xFF;
            require(1 < v44.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[33 + v44] = (byte(bytes1(0x7800000000000000000000000000000000000000000000000000000000000000), 0x0)) & 0xFF;
            v45 = v46 = 0;
            while (v45 < 32) {
                require(v45 < 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(bytes1(MEM[32 + (v45 + MEM[64])]) >> 4 >> 248 < v47.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(!(bool(2) & (v45 > int256.max)), Panic(17)); // arithmetic overflow or underflow
                require(2 <= ~(v45 << 1), Panic(17)); // arithmetic overflow or underflow
                require(2 + (v45 << 1) < v44.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[34 + (v45 << 1) + v44] = (byte(bytes1(v47[bytes1(MEM[32 + (v45 + MEM[64])]) >> 4 >> 248]), 0x0)) & 0xFF;
                require(v45 < 32, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(bool(MEM[MEM[64] + v45 + 32] >> 248) < v47.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(!(bool(2) & (v45 > int256.max)), Panic(17)); // arithmetic overflow or underflow
                require(3 <= ~(v45 << 1), Panic(17)); // arithmetic overflow or underflow
                require(3 + (v45 << 1) < v44.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[35 + (v45 << 1) + v44] = (byte(bytes1(v47[bool(MEM[MEM[64] + v45 + 32] >> 248)]), 0x0)) & 0xFF;
                v45 = 0x4dfd(v45);
            }
            v48 = v49 = 0;
            while (v48 < v40.length) {
                MEM[v48 + (32 + MEM[64])] = v40[v48];
                v48 += 32;
            }
            if (v48 > v40.length) {
                MEM[v40.length + (32 + MEM[64])] = 0;
            }
            MEM[32 + MEM[64] + v40.length] = 'Panic(';
            v50 = v51 = 0;
            while (v50 < v44.length) {
                MEM[v50 + (32 + MEM[64] + v40.length + 6)] = v44[v50];
                v50 += 32;
            }
            if (v50 > v44.length) {
                MEM[v44.length + (32 + MEM[64] + v40.length + 6)] = 0;
            }
            MEM[v44.length + (32 + MEM[64] + v40.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
            v41 = v52 = MEM[64];
            MEM[v52] = 105;
            MEM[64] = 7 + (v44.length + (32 + MEM[64] + v40.length));
        }
    } else {
        require(68 <= ~MEM[68 + v17], Panic(17)); // arithmetic overflow or underflow
        if (MEM[v17] >= 68 + MEM[68 + v17]) {
            v53 = v54 = 0;
            while (v53 < v40.length) {
                MEM[v53 + (32 + MEM[64])] = v40[v53];
                v53 += 32;
            }
            if (v53 > v40.length) {
                MEM[v40.length + (32 + MEM[64])] = 0;
            }
            MEM[32 + MEM[64] + v40.length] = 'Error(';
            v55 = v56 = 0;
            while (v55 < MEM[68 + v17]) {
                MEM[v55 + (32 + MEM[64] + v40.length + 6)] = MEM[v55 + (68 + v17 + 32)];
                v55 += 32;
            }
            if (v55 > MEM[68 + v17]) {
                MEM[MEM[68 + v17] + (32 + MEM[64] + v40.length + 6)] = 0;
            }
            MEM[MEM[68 + v17] + (32 + MEM[64] + v40.length) + 6] = 0x2900000000000000000000000000000000000000000000000000000000000000;
            v41 = v57 = MEM[64];
            MEM[v57] = 7 + (MEM[68 + v17] + (32 + MEM[64] + v40.length)) - v57 - 32;
            MEM[64] = 7 + (MEM[68 + v17] + (32 + MEM[64] + v40.length));
        } else {
            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 4] = 32;
            revert(Error('Invalid revert reason'));
        }
    }
    return v41, v14;
}

function omniV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function 0x05c8011e(uint256 varg0, uint256 varg1, struct(2) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function makeCall((uint256,uint256,uint256,bytes) desc) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(desc <= uint64.max);
    require(msg.data.length - (4 + desc) >= 128);
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = desc.word0;
    v0.word1 = desc.word1;
    v0.word2 = desc.word2;
    require(msg.data[4 + desc + 96] <= uint64.max);
    v1 = desc.word3;
    require(desc.word3 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(desc.word3 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word3 = v2;
    v3, v4 = 0x228c(v0);
    if (v4) {
        exit;
    } else {
        v5 = new uint256[](MEM[v3]);
        v6 = v7 = 0;
        while (v6 < MEM[v3]) {
            MEM[v6 + v5.data] = MEM[v6 + (v3 + 32)];
            v6 += 32;
        }
        if (v6 > MEM[v3]) {
            MEM[MEM[v3] + v5.data] = 0;
        }
        revert(Error(v5));
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function 0x2612(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeSub(varg1, varg0);
    return v0;
}

function 0x2627(uint256 varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    v0 = v1 = varg0 >> 12;
    if (!v1) {
        v0 = v2 = 10000;
    }
    require(!(bool(varg2) & (varg0 & 0xfff > uint256.max / varg2)), Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeDiv(varg2 * (varg0 & 0xfff), v0);
    v4 = _SafeSub(varg2, v3);
    require(bool(varg3.code.size));
    v5, /* uint256 */ v6, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v7, /* bool */ v8, /* address */ v9, /* address */ v10 = varg3.metadata().gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
    require(v8 == bool(v8));
    require(v9 == address(v9));
    require(v10 == address(v10));
    if (!v8) {
        if (!varg1) {
        }
        require(v7 <= ~v4, Panic(17)); // arithmetic overflow or underflow
        require(!(bool(v4) & (v7 > uint256.max / v4)), Panic(17)); // arithmetic overflow or underflow
        v11 = _SafeDiv(v4 * v7, v7 + v4);
        return v11;
    } else {
        v12 = _SafeMul(v8, v6, v6, v7, v7);
        require(!(bool(10 ** 18) & (v7 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
        v13 = v14 = _SafeDiv(10 ** 18 * v7, v6);
        require(!(bool(10 ** 18) & (v7 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
        v13 = v15 = _SafeDiv(10 ** 18 * v7, v6);
        if (!varg1) {
        }
        if (varg1) {
            require(!(bool(10 ** 18) & (v4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
            v16 = v17 = _SafeDiv(10 ** 18 * v4, v6);
        } else {
            require(!(bool(10 ** 18) & (v4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
            v16 = v18 = _SafeDiv(10 ** 18 * v4, v6);
        }
        require(v16 <= ~v13, Panic(17)); // arithmetic overflow or underflow
        v19 = 0x3752(v13, v12, v16 + v13);
        v20 = _SafeSub(v13, v19);
        if (!varg1) {
        }
        require(!(bool(v20) & (v6 > uint256.max / v20)), Panic(17)); // arithmetic overflow or underflow
        v21 = _SafeDiv(v20 * v6, 10 ** 18);
        return v21;
    }
}

function swapX2YCallback(uint256 x, uint256 y, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = x > 0;
    if (x <= 0) {
        v1 = y > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= 0, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(40 >= 20, Error('toAddress_overflow'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 40, Error('toAddress_outOfBounds'));
    require(3 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 40, Error('toUint24_overflow'));
    require(3 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toUint24_outOfBounds'));
    require(20 <= -44, Panic(17)); // arithmetic overflow or underflow
    require(63 >= 43, Error('toAddress_overflow'));
    require(20 <= -44, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 63, Error('toAddress_outOfBounds'));
    require(bool((address(v6[0] >> 96)).code.size));
    v7, /* address */ v8 = address(v6[0] >> 96).pool(address(v6[20] >> 96), address(v6[43] >> 96), uint24(MEM[43 + v3.word0])).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 == address(v8));
    require(address(v8) == msg.sender);
    if (1) {
        v9 = v10 = address(v6[20] >> 96) < address(v6[43] >> 96);
    } else {
        v9 = address(v6[43] >> 96) < address(v6[20] >> 96);
    }
    if (!v9) {
        if (!1) {
        }
        require(v11 >= v3.word1);
    } else {
        require(v11 <= v3.word1);
    }
    if (v9) {
        v12 = v13 = address(v6[20] >> 96);
    } else {
        v12 = address(v6[43] >> 96);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v11;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v12);
}

function 0x283d(address varg0, uint256 varg1) private { 
    v0 = 0x292a(varg1);
    if (!v0) {
        require(bool((address(varg1)).code.size));
        v1, /* uint256 */ v2 = address(varg1).balanceOf(varg0).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v2;
    } else {
        return varg0.balance;
    }
}

function 0x28de(uint256 varg0) private { 
    v0 = v1 = bool(varg0 >> 128);
    if (varg0 >> 128) {
        v0 = v2 = uint128(varg0) > 0;
    }
    require(v0);
    return varg0, varg0 >> 128;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg1) & (varg0 > uint256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x291e(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeDiv(varg1, varg0);
    return v0;
}

function 0x292a(address varg0) private { 
    v0 = v1 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == varg0;
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg0) {
        v0 = v2 = 4112 == varg0;
    }
    if (v0) {
        return v0;
    } else {
        return !varg0;
    }
}

function solidlySwap(uint256 pool, address srcToken, address receiver) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = v1 = 0;
    v2 = v3 = !bool(pool >> 248);
    if (bool(pool >> 248)) {
        v2 = bool(pool >> 248) == 2;
    }
    if (!v2) {
        if (bool(pool >> 248) != 1) {
            if (bool(pool >> 248) == 3) {
                require(bool((address(pool)).code.size));
                v4, /* uint256 */ v0, /* uint256 */ v0, /* uint256 */ v5 = address(pool).getReserves().gas(msg.gas);
                require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
                if (!bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
                }
            }
        } else {
            require(bool((address(pool)).code.size));
            v6, /* uint112 */ v7, /* uint112 */ v8, /* uint16 */ v9, /* uint16 */ v10 = address(pool).getReserves().gas(msg.gas);
            require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 128);
            require(v7 == uint112(v7));
            require(v8 == uint112(v8));
            require(v9 == uint16(v9));
            require(v10 == uint16(v10));
            v0 = v11 = uint112(v8);
            v0 = v12 = uint112(v7);
            if (!bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
            }
        }
    } else {
        require(bool((address(pool)).code.size));
        v13, /* uint256 */ v14, /* uint256 */ v15, /* uint256 */ v0, /* uint256 */ v0, /* bool */ v16, /* address */ v17, /* address */ v18 = address(pool).metadata().gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 224);
        require(v16 == bool(v16));
        require(v17 == address(v17));
        require(v18 == address(v18));
        if (!bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        }
    }
    // Unknown jump to Block 0x71dB0x2b2. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x5e0B0x2b2. Refer to 3-address code (TAC);
    require(bool(srcToken.code.size));
    v19, /* uint256 */ v20 = srcToken.balanceOf(address(pool)).gas(msg.gas);
    require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v21 = _SafeSub(v20, v0);
    if (!bool(pool >> 248)) {
        v22 = v23 = 0x2627((pool & 0xffffffff0000000000000000000000000000000000000000) >> 160, bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000), v21, address(pool));
    } else {
        require(bool((address(pool)).code.size));
        v24, /* uint256 */ v22 = address(pool).getAmountOut(v21, srcToken).gas(msg.gas);
        require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    if (bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        v22 = v25 = 0;
    } else {
        v22 = v26 = 0;
    }
    if (bool(pool >> 248) != 3) {
        v27 = new uint256[](0);
        v28 = v29 = 0;
        while (v28 < 0) {
            MEM[v28 + v27.data] = MEM[v28 + (MEM[64] + 32)];
            v28 += 32;
        }
        if (v28 > 0) {
            MEM[v27.data] = 0;
        }
        require(bool((address(pool)).code.size));
        v30 = address(pool).swap(v22, v22, receiver, v27).gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        require(bool((address(pool)).code.size));
        v31 = address(pool).swap(v22, v22, receiver).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x29dc(uint256 varg0, bytes4 varg1, address varg2) private { 
    MEM[MEM[64] + 32] = varg1 | uint224(MEM[MEM[64] + 32]);
    if (this.balance >= 0) {
        v0 = v1 = 0;
        while (v0 < varg0 - MEM[64] - 32) {
            MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
            v0 += 32;
        }
        if (v0 > varg0 - MEM[64] - 32) {
            MEM[varg0 - MEM[64] - 32 + MEM[64]] = 0;
        }
        v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.call(MEM[MEM[64]:MEM[64] + v29dcarg0x0 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v6 = v7 = 96;
        } else {
            v6 = v8 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
        }
        if (!v2) {
            require(!MEM[v6], v5, MEM[v6]);
            v9 = new bytes[](v10.length);
            v11 = v12 = 0;
            while (v11 < v10.length) {
                v9[v11] = v10[v11];
                v11 += 32;
            }
            if (v11 > v10.length) {
                v9[v10.length] = 0;
            }
            revert(Error(v9, v13, 'SafeERC20: low-level call failed'));
        } else {
            if (!MEM[v6]) {
                require(varg2.code.size, Error('Address: call to non-contract'));
            }
            if (!MEM[v6]) {
                return ;
            } else {
                require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
                require(MEM[32 + v6] == bool(MEM[32 + v6]));
                require(MEM[32 + v6], Error('SafeERC20: ERC20 operation did not succeed'));
                return ;
            }
        }
    } else {
        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;
        MEM[MEM[64] + 4] = 32;
        revert(Error('Address: insufficient balance for call'));
    }
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg1 <= ~varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0x2a1f(uint256 varg0, address varg1, uint256 varg2) private { 
    if (!varg0) {
        return ;
    } else {
        v0 = 0x292a(varg2);
        if (!v0) {
            MEM[MEM[64] + 36] = varg1;
            MEM[MEM[64] + 68] = varg0;
            0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(varg2));
            return ;
        } else {
            v1, /* uint256 */ v2 = varg1.call().value(varg0).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v3 = new bytes[](RETURNDATASIZE());
                v2 = v3.data;
                RETURNDATACOPY(v2, 0, RETURNDATASIZE());
            }
            require(v1);
            return ;
        }
    }
}

function 0x2ad7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 0x2612(varg0, 10 ** 18);
    v1 = _SafeMul(v0, varg1);
    v2 = 0x291e(10 ** 18, v1);
    v3 = _SafeMul(varg2, v2);
    v4 = _SafeAdd(v2, varg3);
    if (!v4) {
        return 0;
    } else {
        v5 = 0x291e(v4, v3);
        return v5;
    }
}

function 0x2b3c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeMul(varg0, varg1);
    v1 = _SafeMul(varg2, v0);
    v2 = _SafeMul(10 ** 9, varg3);
    v3 = _SafeAdd(v0, v2);
    if (!v3) {
        return 0;
    } else {
        v4 = 0x291e(v3, v1);
        return v4;
    }
}

function multiDistributionCall(address token, uint256 distribution, (uint256,uint256,uint256,bytes) descs, [] amountBiases) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(descs <= uint64.max);
    require(4 + descs + 31 < msg.data.length);
    require(descs.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](descs.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (descs.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (descs.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + descs + (descs.length << 5)) <= msg.data.length);
    v3 = v4 = descs.data;
    while (v3 < 32 + (4 + descs + (descs.length << 5))) {
        require(msg.data[v3] <= uint64.max);
        require(msg.data.length - (4 + descs + msg.data[v3] + 32) >= 128);
        v5 = new struct(4);
        require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
        v5.word0 = msg.data[4 + descs + msg.data[v3] + 32];
        v5.word1 = msg.data[4 + descs + msg.data[v3] + 32 + 32];
        v5.word2 = msg.data[4 + descs + msg.data[v3] + 32 + 64];
        require(msg.data[4 + descs + msg.data[v3] + 32 + 96] <= uint64.max);
        v6 = 4 + descs + msg.data[v3] + 32 + msg.data[4 + descs + msg.data[v3] + 32 + 96];
        require(v6 + 31 < msg.data.length);
        require(msg.data[v6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](msg.data[v6]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v6] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v6] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + msg.data[v6] + 32 <= msg.data.length);
        CALLDATACOPY(v7.data, v6 + 32, msg.data[v6]);
        v7[msg.data[v6]] = 0;
        v5.word3 = v7;
        MEM[v1] = v5;
        v1 += 32;
        v3 += 32;
    }
    require(amountBiases <= uint64.max);
    require(msg.data.length > 4 + amountBiases + 31);
    require(amountBiases.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new uint256[](amountBiases.length);
    require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amountBiases.length << 5) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (amountBiases.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v9 = v10 = v8.data;
    require(32 + (4 + amountBiases + (amountBiases.length << 5)) <= msg.data.length);
    v11 = v12 = amountBiases.data;
    while (v11 < 32 + (4 + amountBiases + (amountBiases.length << 5))) {
        MEM[v9] = msg.data[v11];
        v11 += 32;
        v9 += 32;
    }
    require(v0.length == v8.length);
    v13 = 0x283d(this, token);
    require(v13 > 0);
    v14, v15 = 0x28de(distribution);
    v16 = _SafeMul(uint128(v15), v13);
    v17 = 0x291e(uint128(v14), v16);
    v18 = v19 = 0;
    while (v18 < v0.length) {
        v20 = v21 = 0x292a(token);
        if (v21) {
            require(v18 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v20 = 0 != MEM[v0[v18]];
        }
        if (v20) {
            require(v18 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[64 + v0[v18]] = v17;
        }
        require(v18 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (v8[v18] > 0) {
            require(v18 < v8.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v18 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[32 + MEM[64]] = v17;
            MEM[MEM[64]] = 64 + MEM[64] - MEM[64] - 32;
            MEM[32 + (v8[v18] + MEM[v0[v18] + 96])] = MEM[32 + MEM[64]];
        }
        require(v18 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v22, v23 = 0x228c(v0[v18]);
        if (v23) {
            v18 = 0x4dfd(v18);
        } else {
            v24 = new uint256[](MEM[v22]);
            v25 = v26 = 0;
            while (v25 < MEM[v22]) {
                MEM[v25 + v24.data] = MEM[v25 + (v22 + 32)];
                v25 += 32;
            }
            if (v25 > MEM[v22]) {
                MEM[MEM[v22] + v24.data] = 0;
            }
            revert(Error(v24));
        }
    }
    exit;
}

function 0x2b73(bytes varg0) private { 
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= 0, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(varg0.length >= 20, Error('toAddress_outOfBounds'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(40 >= 20, Error('toAddress_overflow'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(varg0.length >= 40, Error('toAddress_outOfBounds'));
    return varg0[20] >> 96, varg0[0] >> 96;
}

function 0x57618804(address varg0, bool varg1, int128 varg2, address varg3, bytes varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require(4 + varg4 + varg4.length + 32 <= msg.data.length);
    if (0 > varg2) {
        require(varg2 != int128.min, Panic(17)); // arithmetic overflow or underflow
        v0 = 0 - varg2;
    }
    v1 = new struct(2);
    v2 = new bytes[](varg4.length);
    CALLDATACOPY(v2.data, varg4.data, varg4.length);
    v2[varg4.length] = 0;
    v1.word0 = v2;
    v1.word1 = int128(v0);
    if (!varg1) {
        if (varg2 <= 0) {
            MEM[32 + MEM[64]] = 32;
            MEM[32 + MEM[64] + 32] = 64;
            MEM[32 + MEM[64] + 96] = v3.length;
            v4 = v5 = 0;
            while (v4 < v3.length) {
                MEM[v4 + (32 + MEM[64] + 96 + 32)] = v3[v4];
                v4 += 32;
            }
            if (v4 > v3.length) {
                MEM[v3.length + (32 + MEM[64] + 96 + 32)] = 0;
            }
            MEM[32 + MEM[64] + 64] = v1.word1;
            v6 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
            v7 = v8 = 0;
            while (v7 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                MEM[v7 + v6.data] = MEM[v7 + (MEM[64] + 32)];
                v7 += 32;
            }
            if (v7 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v6.data] = 0;
            }
            require(bool(varg0.code.size));
            v9, /* uint256 */ v10, /* uint256 */ v11 = varg0.swapY2XDesireX(varg3, uint128(v0), int24(0xc3501), v6).gas(msg.gas);
            require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        } else {
            v12 = varg0;
            MEM[32 + MEM[64]] = 32;
            MEM[32 + MEM[64] + 32] = 64;
            MEM[32 + MEM[64] + 96] = v13.length;
            v14 = v15 = 0;
            while (v14 < v13.length) {
                MEM[v14 + (32 + MEM[64] + 96 + 32)] = v13[v14];
                v14 += 32;
            }
            if (v14 > v13.length) {
                MEM[v13.length + (32 + MEM[64] + 96 + 32)] = 0;
            }
            MEM[32 + MEM[64] + 64] = v1.word1;
            v16 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
            v17 = v18 = 0;
            while (v17 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                MEM[v17 + v16.data] = MEM[v17 + (MEM[64] + 32)];
                v17 += 32;
            }
            if (v17 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
                MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v16.data] = 0;
            }
        }
    } else if (varg2 <= 0) {
        v12 = v19 = varg0;
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = 64;
        MEM[32 + MEM[64] + 96] = v20.length;
        v21 = v22 = 0;
        while (v21 < v20.length) {
            MEM[v21 + (32 + MEM[64] + 96 + 32)] = v20[v21];
            v21 += 32;
        }
        if (v21 > v20.length) {
            MEM[v20.length + (32 + MEM[64] + 96 + 32)] = 0;
        }
        MEM[32 + MEM[64] + 64] = v1.word1;
        v23 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
        v24 = v25 = 0;
        while (v24 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
            MEM[v24 + v23.data] = MEM[v24 + (MEM[64] + 32)];
            v24 += 32;
        }
        if (v24 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
            MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v20.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v23.data] = 0;
        }
    } else {
        v12 = v26 = varg0;
        MEM[32 + MEM[64]] = 32;
        MEM[32 + MEM[64] + 32] = 64;
        MEM[32 + MEM[64] + 96] = v27.length;
        v28 = v29 = 0;
        while (v28 < v27.length) {
            MEM[v28 + (32 + MEM[64] + 96 + 32)] = v27[v28];
            v28 += 32;
        }
        if (v28 > v27.length) {
            MEM[v27.length + (32 + MEM[64] + 96 + 32)] = 0;
        }
        MEM[32 + MEM[64] + 64] = v1.word1;
        v30 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
        v31 = v32 = 0;
        while (v31 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
            MEM[v31 + v30.data] = MEM[v31 + (MEM[64] + 32)];
            v31 += 32;
        }
        if (v31 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
            MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v30.data] = 0;
        }
    }
    require(bool(v12.code.size));
    v33, /* uint256 */ v34, /* uint256 */ v35 = v12.swapY2X(uint32(0x59dd1436), uint32(0x2c481252), varg3, varg3, varg3, uint128(v0), uint128(v0), uint128(v0), int24(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3cb01), int24(0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3caff), int24(0xc34ff), v30, v23, v16).gas(msg.gas);
    require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
}

function 0x5c6913d7(address varg0, bool varg1, uint256 varg2, address varg3, bytes varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < msg.data.length);
    require(varg4.length <= uint64.max);
    require(4 + varg4 + varg4.length + 32 <= msg.data.length);
    MEM[64] = 96 + (MEM[64] + (varg4.length + 31 >> 5 << 5));
    MEM[MEM[64] + 64] = varg4.length;
    CALLDATACOPY(MEM[64] + 96, varg4.data, varg4.length);
    MEM[MEM[64] + 96 + varg4.length] = 0;
    if (varg2 < 0) {
        v0 = v1 = 0x4ed7(varg2);
    }
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = 64;
    MEM[32 + MEM[64] + 96] = MEM[MEM[64] + 64];
    v2 = v3 = 0;
    while (v2 < MEM[MEM[64] + 64]) {
        MEM[v2 + (32 + MEM[64] + 96 + 32)] = MEM[v2 + (MEM[64] + 64 + 32)];
        v2 += 32;
    }
    if (v2 > MEM[MEM[64] + 64]) {
        MEM[MEM[MEM[64] + 64] + (32 + MEM[64] + 96 + 32)] = 0;
    }
    MEM[32 + MEM[64] + 64] = varg2;
    v4 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + 64]) + (32 + MEM[64] + 96)) - MEM[64] - 32);
    v5 = v6 = 0;
    while (v5 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + 64]) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[v5 + v4.data] = MEM[v5 + (MEM[64] + 32)];
        v5 += 32;
    }
    if (v5 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + 64]) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[64] + 64]) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v4.data] = 0;
    }
    require(bool(varg0.code.size));
    v7, /* uint256 */ v8, /* uint256 */ v9 = varg0.call(uint32(0xc51c9029), varg3, v0, varg1, varg2 < 0, 0, v4).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
}

function maverickV2SwapCallback(address tokenIn, uint256 amountToPay, uint256 varg2, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(amountToPay > 0);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 == address(data.word1));
    require(bool((address(data.word1)).code.size));
    v1, /* bool */ v2 = address(data.word1).isFactoryPool(msg.sender).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v2 == bool(v2));
    require(v2);
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = amountToPay;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, tokenIn);
}

function 0x3271(address varg0) private { 
    v0 = v1 = 0xae7ab96520de3a18e5e111b5eaab095312d7fe84 == varg0;
    if (0xae7ab96520de3a18e5e111b5eaab095312d7fe84 != varg0) {
        v0 = v2 = 0xcf800f4948d16f23333508191b1b1591daf70438 == varg0;
    }
    if (v0) {
        return v0;
    } else {
        return 0xa2235d059f80e176d931ef76b6c51953eb3fbef4 == varg0;
    }
}

function collectSlippage(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = v1 = 0x283d(this, varg0);
    v2 = v3 = 0;
    if (v1 > uint240(varg2)) {
        v2 = v4 = 0x2612(uint240(varg2), v1);
        v0 = uint240(varg2);
    }
    if (varg2 >> 240) {
        v5 = _SafeMul(varg2 >> 240, v0);
        v6 = 0x291e(10000, v5);
        v2 = v7 = _SafeAdd(v6, v2);
    }
    0x2a1f(v2, varg1, varg0);
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amountToPay > 0;
    if (v2) {
        v1 = amountOut > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= 0, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(40 >= 20, Error('toAddress_overflow'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 40, Error('toAddress_outOfBounds'));
    v7 = v8 = v6[20] >> 96;
    require(20 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(60 >= 40, Error('toAddress_overflow'));
    require(20 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 60, Error('toAddress_outOfBounds'));
    v7 = v6[40] >> 96;
    require(bool((address(v6[0] >> 96)).code.size));
    v9, /* bool */ v10 = address(v6[0] >> 96).isFactoryPool(msg.sender).gas(msg.gas);
    require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v10 == bool(v10));
    require(v10);
    if (0 >= v3.word1) {
        v11 = 0x4ed7(v3.word1);
        require(amountOut >= v11);
    } else {
        require(amountToPay <= v3.word1);
    }
    if (0 >= v3.word1) {
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = amountToPay;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v7));
}

function _SafeMul(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (!varg0) {
        require(!(bool(varg4) & (varg3 > uint256.max / varg4)), Panic(17)); // arithmetic overflow or underflow
        return varg4 * varg3;
    } else {
        require(!(bool(10 ** 18) & (varg4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
        v0 = _SafeDiv(10 ** 18 * varg4, varg2);
        require(!(bool(10 ** 18) & (varg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
        v1 = _SafeDiv(10 ** 18 * varg3, varg1);
        require(!(bool(v0) & (v1 > uint256.max / v0)), Panic(17)); // arithmetic overflow or underflow
        v2 = _SafeDiv(v0 * v1, 10 ** 18);
        require(!(bool(v1) & (v1 > uint256.max / v1)), Panic(17)); // arithmetic overflow or underflow
        v3 = _SafeDiv(v1 * v1, 10 ** 18);
        require(!(bool(v0) & (v0 > uint256.max / v0)), Panic(17)); // arithmetic overflow or underflow
        v4 = _SafeDiv(v0 * v0, 10 ** 18);
        require(v4 <= ~v3, Panic(17)); // arithmetic overflow or underflow
        require(!(bool(v2) & (v4 + v3 > uint256.max / v2)), Panic(17)); // arithmetic overflow or underflow
        v5 = _SafeDiv(v2 * (v4 + v3), 10 ** 18);
        return v5;
    }
}

function 0x3752(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    while (v0 < uint8.max) {
        v2 = 0x4093(varg0, varg2);
        if (v2 >= varg1) {
            v3 = 0x4130(varg0, varg2);
            v4 = _SafeSub(v2, varg1);
            require(!(bool(10 ** 18) & (v4 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
            v5 = _SafeDiv(10 ** 18 * v4, v3);
            varg0 = _SafeSub(varg0, v5);
        } else {
            v6 = 0x4130(varg0, varg2);
            v7 = _SafeSub(varg1, v2);
            require(!(bool(10 ** 18) & (v7 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21)), Panic(17)); // arithmetic overflow or underflow
            v8 = _SafeDiv(10 ** 18 * v7, v6);
            require(varg0 <= ~v8, Panic(17)); // arithmetic overflow or underflow
            varg0 = varg0 + v8;
        }
        if (varg0 <= varg0) {
            v9 = _SafeSub(varg0, varg0);
            if (v9 <= 1) {
                return varg0;
            }
        } else {
            v10 = _SafeSub(varg0, varg0);
            if (v10 <= 1) {
                return varg0;
            }
        }
        v0 = 0x4dfd(v0);
    }
    return varg0;
}

function 0x981f3a60(address varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(10 ** 18 <= ~varg4, Panic(17)); // arithmetic overflow or underflow
    v0 = _SafeSub(18, varg3);
    v1 = 0x510d(10, v0);
    v2 = 0x291e(v1, varg1);
    v3 = _SafeMul(10 ** 18, v2);
    v4 = 0x291e(10 ** 18 + varg4, v3);
    require(bool(varg2.code.size));
    v5 = varg2.buyGem(varg0, v4).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function singleDistributionCall(address token, uint256 distribution, uint256 desc, uint256 amountBias) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(desc <= uint64.max);
    require(msg.data.length - (4 + desc) >= 128);
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = desc.word0;
    v0.word1 = desc.word1;
    v0.word2 = desc.word2;
    require(msg.data[4 + desc + 96] <= uint64.max);
    v1 = desc.word3;
    require(desc.word3 + 31 < msg.data.length);
    require(v1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v1.length);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v1.length + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(desc.word3 + v1.length + 32 <= msg.data.length);
    CALLDATACOPY(v2.data, v1.data, v1.length);
    v2[v1.length] = 0;
    v0.word3 = v2;
    v3 = 0x283d(this, token);
    v4, v5 = 0x28de(distribution);
    v6 = _SafeMul(uint128(v5), v3);
    v7 = 0x291e(uint128(v4), v6);
    require(v7 > 0);
    v8 = v9 = 0x292a(token);
    if (v9) {
        v8 = bool(v0.word0);
    }
    if (v8) {
        v0.word2 = v7;
    }
    if (amountBias) {
        MEM[MEM[64]] = 32;
        v10[amountBias] = v7;
    }
    v11, v12 = 0x228c(v0);
    if (v12) {
        exit;
    } else {
        v13 = new uint256[](MEM[v11]);
        v14 = v15 = 0;
        while (v14 < MEM[v11]) {
            MEM[v14 + v13.data] = MEM[v14 + (v11 + 32)];
            v14 += 32;
        }
        if (v14 > MEM[v11]) {
            MEM[MEM[v11] + v13.data] = 0;
        }
        revert(Error(v13));
    }
}

function 0x39e7(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = !varg0;
    if (varg0) {
        require(bool((address(varg2)).code.size));
        v2, /* uint256 */ v3 = address(varg2).allowance(this, varg1).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v0 = v4 = !v3;
    }
    require(v0, Error('SafeERC20: approve from non-zero to non-zero allowance'));
    MEM[MEM[64] + 36] = varg1;
    MEM[MEM[64] + 68] = varg0;
    0x29dc(100 + MEM[64], 0x95ea7b300000000000000000000000000000000000000000000000000000000, varg2);
    return ;
}

function makeCalls((uint256,uint256,uint256,bytes) desc) public payable { 
    require(msg.data.length - 4 >= 32);
    require(desc <= uint64.max);
    require(4 + desc + 31 < msg.data.length);
    require(desc.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](desc.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (desc.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (desc.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(32 + (4 + desc + (desc.length << 5)) <= msg.data.length);
    v3 = v4 = desc.data;
    while (v3 < 32 + (4 + desc + (desc.length << 5))) {
        require(msg.data[v3] <= uint64.max);
        require(msg.data.length - (4 + desc + msg.data[v3] + 32) >= 128);
        v5 = new struct(4);
        require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
        v5.word0 = msg.data[4 + desc + msg.data[v3] + 32];
        v5.word1 = msg.data[4 + desc + msg.data[v3] + 32 + 32];
        v5.word2 = msg.data[4 + desc + msg.data[v3] + 32 + 64];
        require(msg.data[4 + desc + msg.data[v3] + 32 + 96] <= uint64.max);
        v6 = 4 + desc + msg.data[v3] + 32 + msg.data[4 + desc + msg.data[v3] + 32 + 96];
        require(v6 + 31 < msg.data.length);
        require(msg.data[v6] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](msg.data[v6]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v6] + 31) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v6] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v6 + msg.data[v6] + 32 <= msg.data.length);
        CALLDATACOPY(v7.data, v6 + 32, msg.data[v6]);
        v7[msg.data[v6]] = 0;
        v5.word3 = v7;
        MEM[v1] = v5;
        v1 += 32;
        v3 += 32;
    }
    require(v0.length > 0, Error('OpenOcean: Invalid call parameter'));
    v8 = v9 = 0;
    while (v8 < v0.length) {
        require(v8 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v10 = new uint256[](MEM[v0[v8]]);
        MEM[v10.data] = MEM[v0[v8] + 32];
        v11 = v12 = 0;
        while (v11 < MEM[MEM[v0[v8] + 96]]) {
            MEM[v11 + (4 + MEM[64] + 160 + 32)] = MEM[v11 + (MEM[v0[v8] + 96] + 32)];
            v11 += 32;
        }
        if (v11 > MEM[MEM[v0[v8] + 96]]) {
            MEM[MEM[MEM[v0[v8] + 96]] + (4 + MEM[64] + 160 + 32)] = 0;
        }
        require(bool((address(this)).code.size));
        v13 = address(this).makeCall(v10, v14, v14, MEM[v0[v8] + 64], 128, MEM[MEM[v0[v8] + 96]]).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v8 = 0x4dfd(v8);
    }
    exit;
}

function dmmSwap(address pool, address from, address to, address target) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(bool(pool.code.size));
    v0, /* uint112 */ v1, /* uint112 */ v1, /* uint112 */ v2, /* uint112 */ v2, /* uint256 */ v3 = pool.getTradeInfo().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
    require(v1 == uint112(v1));
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v2 == uint112(v2));
    if (from <= to) {
    }
    if (from <= to) {
    }
    require(bool(from.code.size));
    v4, /* uint256 */ v5 = from.balanceOf(pool).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, uint112(v1));
    v7 = v8 = 0x2ad7(v3, v6, uint112(v2), uint112(v2));
    if (from > to) {
        v7 = v9 = 0;
    } else {
        v7 = v10 = 0;
    }
    v11 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v11.data, msg.data.length, 0);
        v12 = v11.data;
    }
    MEM[4 + MEM[64]] = v7;
    v13 = new bytes[](v11.length);
    v14 = v15 = 0;
    while (v14 < v11.length) {
        v13[v14] = v11[v14];
        v14 += 32;
    }
    if (v14 > v11.length) {
        v16 = v13.data;
        v13[v11.length] = 0;
    }
    require(bool(pool.code.size));
    v17 = pool.swap(v7, v7, target, v13).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function fraxSwap(uint256 varg0, address varg1, address varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(bool((address(varg0)).code.size));
    v0 = address(varg0).executeVirtualOrders(block.timestamp).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(bool((address(varg0)).code.size));
    v1, /* uint112 */ v2, /* uint112 */ v2, /* uint32 */ v3 = address(varg0).getReserves().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v2 == uint112(v2));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    if (!bool(varg0 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
    }
    require(bool(varg1.code.size));
    v4, /* uint256 */ v5 = varg1.balanceOf(address(varg0)).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = _SafeSub(v5, uint112(v2));
    if (bool(varg0 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        require(bool((address(varg0)).code.size));
        v7, /* uint112 */ v8 = address(varg0).twammReserve1().gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v8 == uint112(v8));
    } else {
        require(bool((address(varg0)).code.size));
        v9, /* uint112 */ v8 = address(varg0).twammReserve0().gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v8 == uint112(v8));
    }
    v10 = _SafeSub(v6, uint112(v8));
    v11 = v12 = 0x2b3c((varg0 & 0xffffffff0000000000000000000000000000000000000000) >> 160, v10, uint112(v2), uint112(v2));
    if (bool(varg0 & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        v11 = v13 = 0;
    } else {
        v11 = v14 = 0;
    }
    v15 = new uint256[](0);
    v16 = v17 = 0;
    while (v16 < 0) {
        MEM[v16 + v15.data] = MEM[v16 + (MEM[64] + 32)];
        v16 += 32;
    }
    if (v16 > 0) {
        MEM[v15.data] = 0;
    }
    require(bool((address(varg0)).code.size));
    v18 = address(varg0).swap(v11, v11, varg2, v15).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0x4093(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg1) & (varg1 > uint256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    v0 = _SafeDiv(varg1 * varg1, 10 ** 18);
    require(!(bool(v0) & (varg1 > uint256.max / v0)), Panic(17)); // arithmetic overflow or underflow
    v1 = _SafeDiv(v0 * varg1, 10 ** 18);
    require(!(bool(v1) & (varg0 > uint256.max / v1)), Panic(17)); // arithmetic overflow or underflow
    v2 = _SafeDiv(v1 * varg0, 10 ** 18);
    require(!(bool(varg0) & (varg0 > uint256.max / varg0)), Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeDiv(varg0 * varg0, 10 ** 18);
    require(!(bool(v3) & (varg0 > uint256.max / v3)), Panic(17)); // arithmetic overflow or underflow
    v4 = _SafeDiv(v3 * varg0, 10 ** 18);
    require(!(bool(varg1) & (v4 > uint256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    v5 = _SafeDiv(varg1 * v4, 10 ** 18);
    require(v5 <= ~v2, Panic(17)); // arithmetic overflow or underflow
    return v5 + v2;
}

function 0xc3251075(uint256 varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    v0 = v1 = varg0 > 0;
    if (varg0 <= 0) {
        v0 = varg1 > 0;
    }
    require(v0);
    v2 = new bytes[](varg2.length);
    CALLDATACOPY(v2.data, varg2.data, varg2.length);
    v2[varg2.length] = 0;
    v3, v4 = 0x2b73(v2);
    require(bool((address(v4)).code.size));
    v5, /* address */ v6 = address(v4).staticcall(0xc59f5dd7, msg.sender).gas(msg.gas);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v6 == address(v6));
    if (varg0 <= 0) {
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v7;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, address(v3));
}

function 0x4130(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg1) & (varg1 > uint256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    v0 = _SafeDiv(varg1 * varg1, 10 ** 18);
    require(!(bool(v0) & (varg1 > uint256.max / v0)), Panic(17)); // arithmetic overflow or underflow
    v1 = _SafeDiv(v0 * varg1, 10 ** 18);
    require(!(bool(varg0) & (varg0 > uint256.max / varg0)), Panic(17)); // arithmetic overflow or underflow
    v2 = _SafeDiv(varg0 * varg0, 10 ** 18);
    require(!(bool(3) & (varg1 > 'UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU')), Panic(17)); // arithmetic overflow or underflow
    require(!(bool(3 * varg1) & (v2 > uint256.max / (3 * varg1))), Panic(17)); // arithmetic overflow or underflow
    v3 = _SafeDiv(3 * varg1 * v2, 10 ** 18);
    require(v3 <= ~v1, Panic(17)); // arithmetic overflow or underflow
    return v3 + v1;
}

function uniswapV2Swap(uint256 pool, address srcToken, address receiver) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    if (pool & 0x1000000000000000000000000000000000000000000000000000000000000000) {
        require(bool((address(pool)).code.size));
        v0, /* uint112 */ v1, /* uint112 */ v1 = address(pool).getReserves().gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v1 == uint112(v1));
        require(v1 == uint112(v1));
    } else {
        require(bool((address(pool)).code.size));
        v2, /* uint112 */ v1, /* uint112 */ v1, /* uint32 */ v3 = address(pool).getReserves().gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v1 == uint112(v1));
        require(v1 == uint112(v1));
        require(v3 == uint32(v3));
    }
    if (!bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
    }
    if (!(pool & 0x800000000000000000000000000000000000000000000000000000000000000)) {
        require(bool(srcToken.code.size));
        v4, /* uint256 */ v5 = srcToken.balanceOf(address(pool)).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else if (bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        require(bool((address(pool)).code.size));
        v6, /* uint256 */ v5 = address(pool)._balance1().gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        require(bool((address(pool)).code.size));
        v7, /* uint256 */ v5 = address(pool)._balance0().gas(msg.gas);
        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    v8 = 0x2612(uint112(v1), v5);
    v9 = v10 = 0x2b3c((pool & 0xffffffff0000000000000000000000000000000000000000) >> 160, v8, uint112(v1), uint112(v1));
    if (bool(pool & 0x8000000000000000000000000000000000000000000000000000000000000000)) {
        v9 = v11 = 0;
    } else {
        v9 = v12 = 0;
    }
    if (0 != pool & 0x2000000000000000000000000000000000000000000000000000000000000000) {
        require(bool((address(pool)).code.size));
        v13 = address(pool).swap(v9, v9, receiver).gas(msg.gas);
        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        v14 = new uint256[](0);
        v15 = v16 = 0;
        while (v15 < 0) {
            MEM[v15 + v14.data] = MEM[v15 + (MEM[64] + 32)];
            v15 += 32;
        }
        if (v15 > 0) {
            MEM[v14.data] = 0;
        }
        require(bool((address(pool)).code.size));
        v17 = address(pool).swap(v9, v9, receiver, v14).gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function safeTransfer(address token, address to, uint256 value) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    0x2a1f(value, to, token);
}

function swapY2XCallback(uint256 x, uint256 y, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = x > 0;
    if (x <= 0) {
        v1 = y > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= 0, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(40 >= 20, Error('toAddress_overflow'));
    require(20 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 40, Error('toAddress_outOfBounds'));
    require(3 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 40, Error('toUint24_overflow'));
    require(3 <= -41, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toUint24_outOfBounds'));
    require(20 <= -44, Panic(17)); // arithmetic overflow or underflow
    require(63 >= 43, Error('toAddress_overflow'));
    require(20 <= -44, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 63, Error('toAddress_outOfBounds'));
    require(bool((address(v6[0] >> 96)).code.size));
    v7, /* address */ v8 = address(v6[0] >> 96).pool(address(v6[20] >> 96), address(v6[43] >> 96), uint24(MEM[43 + v3.word0])).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v8 == address(v8));
    require(address(v8) == msg.sender);
    if (0) {
        v9 = v10 = address(v6[20] >> 96) < address(v6[43] >> 96);
    } else {
        v9 = address(v6[43] >> 96) < address(v6[20] >> 96);
    }
    if (!v9) {
        if (!0) {
        }
        require(v11 >= v3.word1);
    } else {
        require(v11 <= v3.word1);
    }
    if (v9) {
        v12 = v13 = address(v6[20] >> 96);
    } else {
        v12 = address(v6[43] >> 96);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v11;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v12);
}

function uniswapV3Swap(address pool, bool zeroForOne, int256 amount, address recipient, bytes path) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(path <= uint64.max);
    require(4 + path + 31 < msg.data.length);
    require(path.length <= uint64.max);
    require(4 + path + path.length + 32 <= msg.data.length);
    if (zeroForOne) {
        require(address(0x1) <= 0xfffffffffffffffffffffffffffffffefffd895c, Panic(17)); // arithmetic overflow or underflow
        v0 = 0x1000276a4;
    } else {
        require(address(0xfffd8963efd1fc6a506488495d951d5263988d26) >= address(0x1), Panic(17)); // arithmetic overflow or underflow
        v0 = v1 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v2 = new struct(2);
    v3 = new bytes[](path.length);
    CALLDATACOPY(v3.data, path.data, path.length);
    v3[path.length] = 0;
    v2.word0 = v3;
    v2.word1 = amount;
    v4 = v5 = amount > 0;
    if (v5) {
        v6 = new bytes[](path.length);
        CALLDATACOPY(v6.data, path.data, path.length);
        v6[path.length] = 0;
        require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
        require(20 >= 0, Error('toAddress_overflow'));
        require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 20, Error('toAddress_outOfBounds'));
        v7 = v6.data;
        v4 = v8 = 0xae7ab96520de3a18e5e111b5eaab095312d7fe84 == address(v6[0] >> 96);
        if (0xae7ab96520de3a18e5e111b5eaab095312d7fe84 != address(v6[0] >> 96)) {
            v4 = v9 = 0xcf800f4948d16f23333508191b1b1591daf70438 == address(v6[0] >> 96);
        }
        if (!v4) {
            v4 = 0xa2235d059f80e176d931ef76b6c51953eb3fbef4 == address(v6[0] >> 96);
        }
    }
    if (v4) {
        require(!((amount < 0x8000000000000000000000000000000000000000000000000000000000000001) & (1 >= 0)), Panic(17)); // arithmetic overflow or underflow
        require(!((1 < 0) & (amount > int256.min)), Panic(17)); // arithmetic overflow or underflow
        v10 = amount - 1;
    }
    MEM[32 + MEM[64]] = 32;
    MEM[32 + MEM[64] + 32] = 64;
    MEM[32 + MEM[64] + 96] = v11.length;
    v12 = v13 = 0;
    while (v12 < v11.length) {
        MEM[v12 + (32 + MEM[64] + 96 + 32)] = v11[v12];
        v12 += 32;
    }
    if (v12 > v11.length) {
        MEM[v11.length + (32 + MEM[64] + 96 + 32)] = 0;
    }
    MEM[32 + MEM[64] + 64] = v2.word1;
    v14 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11.length) + (32 + MEM[64] + 96)) - MEM[64] - 32);
    v15 = v16 = 0;
    while (v15 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[v15 + v14.data] = MEM[v15 + (MEM[64] + 32)];
        v15 += 32;
    }
    if (v15 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11.length) + (32 + MEM[64] + 96)) - MEM[64] - 32) {
        MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11.length) + (32 + MEM[64] + 96)) - MEM[64] - 32 + v14.data] = 0;
    }
    require(bool(pool.code.size));
    v17, /* uint256 */ v18, /* uint256 */ v19 = pool.swap(recipient, zeroForOne, v10, address(v0), v14).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
}

function safeApprove(address token, address spender, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    v0 = 0x292a(token);
    require(!v0);
    if (amount) {
        require(bool(token.code.size));
        v1, /* uint256 */ v2 = token.allowance(this, spender).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v2 < amount) {
            if (v2) {
                0x39e7(0, spender, token);
            }
            0x39e7(amount, spender, token);
        }
    } else {
        0x39e7(0, spender, token);
    }
}

function 0x4dfd(uint256 varg0) private { 
    require(varg0 != uint256.max, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function 0x4ed7(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 >= varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x510d(uint256 varg0, uint256 varg1) private { 
    if (varg1) {
        if (varg0) {
            if (varg0 == 1) {
                v0 = v1 = 1;
            } else if (varg0 == 2) {
                require(varg1 <= uint8.max, Panic(17)); // arithmetic overflow or underflow
                v0 = v2 = 1 << varg1;
            } else if (!((varg0 < 11) & (varg1 < 78) | (varg0 < 307) & (varg1 < 32))) {
                v3 = v4 = 1;
                while (varg1 > v4) {
                    require(varg0 <= uint256.max / varg0, Panic(17)); // arithmetic overflow or underflow
                    if (varg1 & v4) {
                        v3 *= varg0;
                    }
                    varg1 = varg1 >> v4;
                    varg0 *= varg0;
                }
                require(v3 <= uint256.max / varg0, Panic(17)); // arithmetic overflow or underflow
                v0 = v5 = varg0 * v3;
            } else {
                v0 = v6 = varg0 ** varg1;
            }
        } else {
            v0 = v7 = 0;
        }
    } else {
        v0 = v8 = 1;
    }
    return v0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function receive() public payable { 
}

function laminarV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
    require(data.word1 <= uint64.max);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32 + data.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + data + 32 + data.word1] <= uint64.max);
    v4 = 4 + data + 32 + data.word1 + msg.data[4 + data + 32 + data.word1];
    require(v4 + 31 < 4 + data + 32 + msg.data[4 + data]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + data + 32 + msg.data[4 + data]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + data + 32 + data.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (amount0Delta > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (amount0Delta <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

function hyperswapV3SwapCallback(int256 varg0, int256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = varg0 > 0;
    if (varg0 <= 0) {
        v1 = varg1 > 0;
    }
    require(v1);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
    require(varg2.word1 <= uint64.max);
    require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32 + varg2.word1) >= 64);
    v3 = new struct(2);
    require(!((v3 + 64 > uint64.max) | (v3 + 64 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg2 + 32 + varg2.word1] <= uint64.max);
    v4 = 4 + varg2 + 32 + varg2.word1 + msg.data[4 + varg2 + 32 + varg2.word1];
    require(v4 + 31 < 4 + varg2 + 32 + msg.data[4 + varg2]);
    require(msg.data[v4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](msg.data[v4]);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[v4] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v4 + msg.data[v4] + 32 <= 4 + varg2 + 32 + msg.data[4 + varg2]);
    CALLDATACOPY(v5.data, v4 + 32, msg.data[v4]);
    v5[msg.data[v4]] = 0;
    v3.word0 = v5;
    v3.word1 = msg.data[4 + varg2 + 32 + varg2.word1 + 32];
    v6 = v3.word0;
    v7 = v8 = 0;
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(20 >= v8, Error('toAddress_overflow'));
    require(20 <= uint256.max, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 20, Error('toAddress_outOfBounds'));
    v9 = v10 = v6[v8] >> 96;
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(23 >= 20, Error('toUint24_overflow'));
    require(3 <= -21, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 23, Error('toUint24_outOfBounds'));
    v11 = MEM[23 + v3.word0];
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(43 >= 23, Error('toAddress_overflow'));
    require(20 <= -24, Panic(17)); // arithmetic overflow or underflow
    require(v6.length >= 43, Error('toAddress_outOfBounds'));
    v9 = v6[23] >> 96;
    if (v6.length >= 46) {
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(46 >= 43, Error('toUint24_overflow'));
        require(3 <= -44, Panic(17)); // arithmetic overflow or underflow
        require(v6.length >= 46, Error('toUint24_outOfBounds'));
        v7 = MEM[46 + v3.word0];
    }
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
    v12 = v13 = uint24(v7) == 69;
    if (uint24(v7) != 69) {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v12 = uint24(v7) == 100;
    }
    if (!v12) {
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        MEM[MEM[64] + 96] = 0;
        if (address(v14) > address(v15)) {
        }
        v16 = uint24(v7);
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        require(v16 <= 102, Panic(33)); // failed convertion to enum type
        if (324 != CHAINID()) {
            v17 = uint24(v7);
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            require(v17 <= 102, Panic(33)); // failed convertion to enum type
            v18 = v19 = v17 == 2;
            if (v17 != 2) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v20 = v17 == 4;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v21 = v17 == 6;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v22 = v17 == 9;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v23 = v17 == 16;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v24 = v17 == 18;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v25 = v17 == 23;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v26 = v17 == 26;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v27 = v17 == 28;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v28 = v17 == 37;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v29 = v17 == 41;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v30 = v17 == 44;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v31 = v17 == 45;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v32 = v17 == 52;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v33 = v17 == 55;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v34 = v17 == 60;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v35 = v17 == 64;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v36 = v17 == 67;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v37 = v17 == 70;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v38 = v17 == 71;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v39 = v17 == 72;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v40 = v17 == 75;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v41 = v17 == 78;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v42 = v17 == 85;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v43 = v17 == 86;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v44 = v17 == 90;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v45 = v17 == 91;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v46 = v17 == 93;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v47 = v17 == 97;
            }
            if (!v18) {
                require(v17 <= 102, Panic(33)); // failed convertion to enum type
                v18 = v17 == 99;
            }
            if (!v18) {
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                v48 = v49 = uint24(v7) == 38;
                if (uint24(v7) != 38) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v50 = uint24(v7) == 46;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = v51 = uint24(v7) == 81;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    v48 = uint24(v7) == 83;
                }
                if (!v48) {
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
                    if (uint24(v7) == 43) {
                        v52 = v53 = keccak256(_laminarV3SwapCallback[v16].field0_0_19, address(v9), address(v9), uint24(v11));
                    } else {
                        v52 = v54 = keccak256(address(v9), address(v9), uint24(v11));
                    }
                    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
                    v55 = v56 = keccak256(85, v52, 85, _laminarV3SwapCallback[v16].field0_0_19, v52, v52, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1, _laminarV3SwapCallback[v16].field1);
                } else {
                    v57 = uint24(v7);
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    v58 = v59 = 0;
                    require(v57 <= 102, Panic(33)); // failed convertion to enum type
                    if (v57 != 38) {
                        require(v57 <= 102, Panic(33)); // failed convertion to enum type
                        if (v57 != 46) {
                            require(v57 <= 102, Panic(33)); // failed convertion to enum type
                            if (v57 != 81) {
                                require(v57 <= 102, Panic(33)); // failed convertion to enum type
                                if (v57 == 83) {
                                    v58 = 0x942e97a4c6fdc38b4cd1c0298d37d81fdd8e5a16;
                                }
                            } else {
                                v58 = v60 = 0xa421f7aada7d11eb6002bc53090fb8d5409552ab;
                            }
                        } else {
                            v58 = v61 = 0xc28ad28853a547556780bebf7847628501a3bcbb;
                        }
                    } else if (8453 != CHAINID()) {
                        v62 = v63 = 34443 == CHAINID();
                        if (34443 != CHAINID()) {
                            v62 = v64 = 1923 == CHAINID();
                        }
                        if (!v62) {
                            v62 = v65 = 130 == CHAINID();
                        }
                        if (!v62) {
                            v62 = 42220 == CHAINID();
                        }
                        if (!v62) {
                            if (999 != CHAINID()) {
                                v58 = v66 = 0xe0a596c403e854ffb9c828ab4f07eeae04a05d37;
                            } else {
                                v58 = v67 = 0xe5ff71a87e4a1e959ab8c9b0644363e2ca7222dc;
                            }
                        } else {
                            v58 = v68 = 0x321f7dfb9b2ea9131b8c17691cf6e01e5c149ca8;
                        }
                    } else {
                        v58 = v69 = 0xec8e5342b19977b4ef8892e02d8daecfa1315831;
                    }
                    v55 = v70 = keccak256(0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9), uint24(v11)), keccak256(0x3d602d80600a3d3981f3363d3d373d3d3d363d73, v58, 0x5af43d82803e903d91602b57fd5bf3ff00000000000000000000000000000000));
                }
            } else {
                v55 = v71 = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, _laminarV3SwapCallback[v16].field0_0_19, keccak256(address(v9), address(v9)), _laminarV3SwapCallback[v16].field1);
            }
        } else {
            MEM[128 + MEM[64] + 32] = 0x2020dba91b30cc0006188af794c2fb30dd8520db7e2c088b7fc7c103c00ca494;
            MEM[128 + MEM[64] + 64] = _laminarV3SwapCallback[v16].field0_0_19;
            MEM[128 + MEM[64] + 96] = keccak256(address(v9), address(v9), uint24(v11));
            MEM[128 + MEM[64] + 128] = _laminarV3SwapCallback[v16].field1;
            MEM[128 + MEM[64] + 160] = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470;
            v72 = new uint256[](320 + MEM[64] - v72 - 32);
            v73 = v72.length;
            v74 = v72.data;
            v55 = keccak256(v72);
        }
        require(address(v55) == msg.sender);
    } else {
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        v75 = CHAINID();
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(uint24(v7) <= 102, Panic(33)); // failed convertion to enum type
        require(bool(msg.sender.code.size));
        v76, /* address */ v77 = msg.sender.factory().gas(msg.gas);
        require(bool(v76), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v77 == address(v77));
        require(address(v77) == _laminarV3SwapCallback[uint24(v7)].field0_0_19);
    }
    if (varg0 > 0) {
        v78 = v79 = address(v14) < address(v15);
    } else {
        v78 = v80 = address(v15) < address(v14);
    }
    if (!v78) {
        if (varg0 <= 0) {
        }
        require(v81 >= v3.word1);
    } else {
        require(v81 <= v3.word1);
    }
    if (v78) {
        v78 = 0x3271(v14);
    }
    if (v78) {
        require(v81 <= -2, Panic(17)); // arithmetic overflow or underflow
        v81 = v81 + 1;
    }
    if (v78) {
        v82 = v83 = address(v14);
    } else {
        v82 = address(v15);
    }
    MEM[MEM[64] + 36] = msg.sender;
    MEM[MEM[64] + 68] = v81;
    0x29dc(100 + MEM[64], 0xa9059cbb00000000000000000000000000000000000000000000000000000000, v82);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else {
        v0 = function_selector >> 224;
        if (0x981f3a60 > v0) {
            if (0x57618804 > v0) {
                if (0x2c8958f6 > v0) {
                    if (0x5c8011e == v0) {
                        0x05c8011e();
                    } else if (0xc7e1209 == v0) {
                        makeCall((uint256,uint256,uint256,bytes));
                    } else if (0x18780684 == v0) {
                        swapX2YCallback(uint256,uint256,bytes);
                    } else {
                        require(0x23a69e75 == v0);
                        pancakeV3SwapCallback(int256,int256,bytes);
                    }
                } else if (0x2c8958f6 == v0) {
                    algebraSwapCallback(int256,int256,bytes);
                } else if (0x3afe5f00 == v0) {
                    solidlySwap(uint256,address,address);
                } else if (0x4179b664 == v0) {
                    pangolinv3SwapCallback(int256,int256,bytes);
                } else if (0x4b58a6e8 == v0) {
                    omniV3SwapCallback(int256,int256,bytes);
                } else {
                    require(0x51a74316 == v0);
                    multiDistributionCall(address,uint256,(uint256,uint256,uint256,bytes)[],uint256[]);
                }
            } else if (0x67ca7c91 > v0) {
                if (0x57618804 == v0) {
                    0x57618804();
                } else if (0x5bee97a3 == v0) {
                    agniSwapCallback(int256,int256,bytes);
                } else if (0x5c6913d7 == v0) {
                    0x5c6913d7();
                } else if (0x6118b15d == v0) {
                    dragonswapV2SwapCallback(int256,int256,bytes);
                } else {
                    require(0x654b6487 == v0);
                    ramsesV2SwapCallback(int256,int256,bytes);
                }
            } else if (0x67ca7c91 == v0) {
                maverickV2SwapCallback(address,uint256,uint256,bytes);
            } else if (0x6e653614 == v0) {
                0x6e653614();
            } else if (0x8a6a1e85 == v0) {
                collectSlippage(address,address,uint256);
            } else if (0x8ae6e750 == v0) {
                enosysdexV3SwapCallback(int256,int256,bytes);
            } else {
                require(0x923b8a2a == v0);
                swapCallback(uint256,uint256,bytes);
            }
        } else if (0xc3251075 > v0) {
            if (0xaa37e8aa > v0) {
                if (0x981f3a60 == v0) {
                    0x981f3a60();
                } else if (0x9f865422 == v0) {
                    singleDistributionCall(address,uint256,(uint256,uint256,uint256,bytes),uint256);
                } else if (0x9feb758b == v0) {
                    zebraV3SwapCallback(int256,int256,bytes);
                } else {
                    require(0xa8920d2b == v0);
                    makeCalls((uint256,uint256,uint256,bytes)[]);
                }
            } else if (0xaa37e8aa == v0) {
                dmmSwap(address,address,address,address);
            } else if (0xae067e0f == v0) {
                fusionXV3SwapCallback(int256,int256,bytes);
            } else if (0xb527c5d0 == v0) {
                0xb527c5d0();
            } else if (0xbbf717e0 == v0) {
                fraxSwap(uint256,address,address);
            } else {
                require(0xbe83e10f == v0);
                supV3SwapCallback(int256,int256,bytes);
            }
        } else if (0xe5b07cdb > v0) {
            if (0xc3251075 == v0) {
                0xc3251075();
            } else if (0xc4e21d86 == v0) {
                squadV3SwapCallback(int256,int256,bytes);
            } else if (0xcac460ee == v0) {
                uniswapV2Swap(uint256,address,address);
            } else if (0xd1660f99 == v0) {
                safeTransfer(address,address,uint256);
            } else {
                require(0xd3e1c284 == v0);
                swapY2XCallback(uint256,uint256,bytes);
            }
        } else if (0xe5b07cdb == v0) {
            uniswapV3Swap(address,bool,int256,address,bytes);
        } else if (0xe81f56f4 == v0) {
            laminarV3SwapCallback(int256,int256,bytes);
        } else if (0xeb5625d9 == v0) {
            safeApprove(address,address,uint256);
        } else if (0xfa461e33 == v0) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else {
            require(0xfa85398b == v0);
            hyperswapV3SwapCallback(int256,int256,bytes);
        }
    }
}
