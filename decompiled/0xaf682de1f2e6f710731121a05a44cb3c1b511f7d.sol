// Decompiled by library.dedaub.com
// 2026.04.14 05:43 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV2Call; // TRANSIENT_STORAGE[0x0]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0x1]



function 0x222f(uint256 varg0, uint256 varg1, address varg2) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg2.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    if (!varg1) {
        v4 = 0x25da(uint112(v2), uint112(v1), varg0);
        return v4;
    } else {
        v5 = 0x25da(uint112(v1), uint112(v2), varg1);
        return v5;
    }
}

function 0x23de(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, /* uint32 */ v3 = varg4.getReserves().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v1 == uint112(v1));
    require(v2 == uint112(v2));
    require(v3 == uint32(v3));
    if (!varg2) {
        if (varg1) {
            v4, /* uint256 */ v5 = varg0.balanceOf(varg4).gas(msg.gas);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            varg3 = v6 = v5 - uint112(v2);
        }
        v7 = 0x2607(uint112(v1), uint112(v2), varg3);
        return v7;
    } else {
        if (varg1) {
            v8, /* uint256 */ v9 = varg0.balanceOf(varg4).gas(msg.gas);
            require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            varg3 = v10 = v9 - uint112(v1);
        }
        v11 = 0x2607(uint112(v2), uint112(v1), varg3);
        return v11;
    }
}

function 0x25da(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require((varg0 - varg2) * 997, Panic(18)); // division by zero
    return 1 + varg2 * varg1 * 1000 / ((varg0 - varg2) * 997);
}

function 0x2607(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 * 997 + varg1 * 1000, Panic(18)); // division by zero
    return varg2 * varg0 * 997 / (varg2 * 997 + varg1 * 1000);
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public payable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data.length >= 32 + (data.length + (4 + data)));
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    if (amount0 > 0) {
        v1 = v2 = 0x222f(amount1, amount0, msg.sender);
    } else {
        v1 = v3 = 0x222f(amount1, amount0, msg.sender);
    }
    v1 = v4 = 0;
    while (v1 < v0.length) {
        v5 = v0[v1];
        if (uint8(v5 >> 232)) {
            if (uint8(v5 >> 232) - 4) {
                if (uint8(v5 >> 232) - 3) {
                    if (uint8(v5 >> 232) - 10) {
                        if (uint8(v5 >> 232) - 2) {
                            if (uint8(v5 >> 232) - 1) {
                                if (uint8(v5 >> 232) - 6) {
                                    if (uint8(v5 >> 232) - 7) {
                                        if (uint8(v5 >> 232) - 8) {
                                            require(!(uint8(v5 >> 232) - 9), Error(0x21636d64));
                                            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                            v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v1).gas(msg.gas);
                                            if (!bool(v6)) {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        } else {
                                            ___function_selector__ = uint64(v5 >> 168);
                                        }
                                    } else if (uint8(v5 >> 224) - 4) {
                                        if (uint8(v5 >> 224) - 9) {
                                            if (!(uint8(v5 >> 224) - 2)) {
                                            }
                                        } else {
                                            _uniswapV2Call = v1;
                                        }
                                    }
                                } else if (uint8(v5 >> 224) - 6) {
                                    if (uint8(v5 >> 224) - 11) {
                                        if (uint8(v5 >> 224) - 2) {
                                            if (uint8(v5 >> 224) - 1) {
                                                if (uint8(v5 >> 224) - 3) {
                                                    if (uint8(v5 >> 224) - 4) {
                                                        if (uint8(v5 >> 224) - 9) {
                                                            if (uint8(v5 >> 224) - 5) {
                                                                if (uint8(v5 >> 224) - 8) {
                                                                    if (!(uint8(v5 >> 224) - 10)) {
                                                                        v1 = v7 = (address(v5 >> 64)).balance;
                                                                    }
                                                                } else {
                                                                    v8 = new bytes[](msg.data.length);
                                                                    CALLDATACOPY(v8.data, 0, msg.data.length);
                                                                    v8[msg.data.length] = 0;
                                                                    v1 = v9 = v8[4 + (uint8(v5 >> 216) << 5)];
                                                                }
                                                            } else {
                                                                v1 = v10 = MEM[v0 + v1 + 36];
                                                            }
                                                        } else {
                                                            v1 = v11 = _uniswapV2Call;
                                                        }
                                                    }
                                                } else {
                                                    v1 = 0 - v1;
                                                }
                                            } else {
                                                v1 = 0 - v1;
                                            }
                                        }
                                    } else {
                                        v12 = address(v5 >> 64).balanceOf(this).gas(msg.gas);
                                        if (bool(v12)) {
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            v1 = MEM[MEM[64]];
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    v1 = v13 = this.balance;
                                }
                            } else {
                                if (uint8(v5 >> 216) - 2) {
                                    if (uint8(v5 >> 216) - 5) {
                                        if (uint8(v5 >> 216) - 4) {
                                            if (uint8(v5 >> 216) - 9) {
                                                if (uint8(v5 >> 216) - 6) {
                                                    if (uint8(v5 >> 216) - 1) {
                                                        if (!(uint8(v5 >> 216) - 3)) {
                                                            v1 = 0 - v1;
                                                        }
                                                    } else {
                                                        v1 = 0 - v1;
                                                    }
                                                } else {
                                                    v1 = v14 = this.balance;
                                                }
                                            } else {
                                                v1 = v15 = _uniswapV2Call;
                                            }
                                        }
                                    } else {
                                        v1 = v16 = MEM[37 + (v1 + v0)];
                                    }
                                }
                                if (uint8(v5 >> 224)) {
                                    if (uint8(v5 >> 224) - 1) {
                                        if (uint8(v5 >> 224) - 2) {
                                            if (uint8(v5 >> 224) - 3) {
                                                if (uint8(v5 >> 224) - 4) {
                                                    if (uint8(v5 >> 224) - 5) {
                                                        if (uint8(v5 >> 224) - 6) {
                                                            if (uint8(v5 >> 224) - 7) {
                                                                if (uint8(v5 >> 224) - 8) {
                                                                    if (uint8(v5 >> 224) - 9) {
                                                                        require(!(uint8(v5 >> 224) - 10), Error(0x216f70));
                                                                    } else if (v1 >= v1) {
                                                                    }
                                                                } else if (v1 <= v1) {
                                                                }
                                                                // Unknown jump to Block 0x1bed0x22ddB0x4b5. Refer to 3-address code (TAC);
                                                            } else {
                                                                if (uint8(v5 >> 216) - 5) {
                                                                    v17 = v18 = v1 + 5;
                                                                } else {
                                                                    v17 = v1 + 37;
                                                                }
                                                                if (uint8(MEM[1 + (v0 + v17)]) - 2) {
                                                                    if (uint8(MEM[1 + (v0 + v17)]) - 5) {
                                                                        if (uint8(MEM[1 + (v0 + v17)]) - 4) {
                                                                            if (uint8(MEM[1 + (v0 + v17)]) - 9) {
                                                                                require(!(uint8(MEM[1 + (v0 + v17)]) - 6), Error('!var2'));
                                                                                v1 = v19 = this.balance;
                                                                            } else {
                                                                                v1 = v20 = _uniswapV2Call;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        v1 = v21 = MEM[v0 + v17 + 33];
                                                                    }
                                                                }
                                                                require(v1, Panic(18)); // division by zero
                                                                v1 = v1 * v1 / v1;
                                                            }
                                                        } else {
                                                            require(v1, Panic(18)); // division by zero
                                                            v1 = v1 / v1;
                                                        }
                                                    } else {
                                                        require(v1, Panic(18)); // division by zero
                                                        v1 = v1 % v1;
                                                    }
                                                } else {
                                                    v1 += v1;
                                                }
                                            } else {
                                                require(v1, Panic(18)); // division by zero
                                                v1 = v1 / v1;
                                            }
                                        } else {
                                            v1 *= v1;
                                        }
                                    } else {
                                        v1 = v1 - v1;
                                    }
                                } else {
                                    v1 = v1 - v1;
                                }
                            }
                            revert(Error(0x21766172));
                        } else {
                            if (v5 >> 224 & 0x40) {
                                v22 = v0[44 + v1] >> 96;
                            } else {
                                v22 = v23 = this;
                            }
                            if (!bool(v5 >> 224 & 0x2)) {
                                if (!bool(v5 >> 224 & 0x10)) {
                                    MEM[MEM[64] + 68] = v1;
                                    MEM[MEM[64] + 32] = uint224(address(v5 >> 64)) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v24 = address(MEM[v0 + v1 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v24, Error('!transfer'));
                                }
                                v1 = 0x23de(MEM[v0 + v1 + 56] >> 96, bool(v5 >> 224 & 0x8), bool(v5 >> 224 & 0x1), v1, v5 >> 64);
                                if (!bool(v5 >> 224 & 0x20)) {
                                    if (bool(v5 >> 224 & 0x1)) {
                                        v1 = v25 = 0;
                                    }
                                    if (!bool(v5 >> 224 & 0x1)) {
                                        v1 = v26 = 0;
                                    }
                                    v27 = new uint256[](0);
                                    require(bool((address(v5 >> 64)).code.size));
                                    v28 = address(v5 >> 64).swap(v1, v1, address(v22), v27).gas(msg.gas);
                                    if (!bool(v28)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                if (bool(v5 >> 224 & 0x4)) {
                                }
                            } else {
                                if (bool(v5 >> 224 & 0x1)) {
                                    v1 = 0x222f(v1, 0, v5 >> 64);
                                } else {
                                    v1 = 0x222f(0, v1, v5 >> 64);
                                }
                                if (!bool(v5 >> 224 & 0x10)) {
                                    MEM[MEM[64] + 68] = v1;
                                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v5 >> 64));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v29 = address(MEM[v0 + v1 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v29, Error('!transfer'));
                                }
                                if (!bool(v5 >> 224 & 0x20)) {
                                    if (bool(v5 >> 224 & 0x1)) {
                                        v1 = v30 = 0;
                                    }
                                    if (!bool(v5 >> 224 & 0x1)) {
                                        v1 = v31 = 0;
                                    }
                                    v32 = new uint256[](0);
                                    require(bool((address(v5 >> 64)).code.size));
                                    v33 = address(v5 >> 64).swap(v1, v1, address(v22), v32).gas(msg.gas);
                                    if (!bool(v33)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                if (bool(v5 >> 224 & 0x4)) {
                                }
                            }
                        }
                    } else {
                        if (uint8(v5 >> 224)) {
                            if (uint8(v5 >> 224) - 2) {
                                if (uint8(v5 >> 224) - 4) {
                                    if (uint8(v5 >> 224) - 9) {
                                        if (uint8(v5 >> 224) - 1) {
                                            require(!(uint8(v5 >> 224) - 3), Error('!amount'));
                                            v1 = v34 = 0 - v1;
                                        } else {
                                            v1 = v35 = 0 - v1;
                                        }
                                    } else {
                                        v1 = v36 = _uniswapV2Call;
                                    }
                                }
                            }
                        }
                        MEM[MEM[64] + 68] = v1;
                        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(MEM[56 + (v1 + v0)] >> 96));
                        MCOPY(MEM[64], MEM[64] + 32, 68);
                        MEM[MEM[64] + 68] = 0;
                        v37 = address(v5 >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() != 0) {
                            MEM[MEM[64]] = RETURNDATASIZE();
                            RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                        }
                        require(v37, Error('!transfer'));
                    }
                } else {
                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                    v38 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v1).gas(msg.gas);
                    if (!bool(v38)) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else if (v1 >= uint96(v5 >> 136 ^ msg.sender)) {
                if (v1 * uint16(v5 >> 120) / 10000) {
                    v39 = block.coinbase.call().value(v1 * uint16(v5 >> 120) / 10000).gas(msg.gas);
                    if (RETURNDATASIZE() != 0) {
                        MEM[MEM[64]] = RETURNDATASIZE();
                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                    }
                    require(v39, Error('!coinbase'));
                }
                v40 = msg.sender.call().value(v1 - v1 * uint16(v5 >> 120) / 10000).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    MEM[MEM[64]] = RETURNDATASIZE();
                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                }
                require(v40, Error('!sender'));
            } else {
                if (0xffff00000000000000000000 & uint96(v5 >> 136 ^ msg.sender) > 0) {
                    v41 = v42 = '!address';
                } else {
                    v41 = v43 = 0x216d696e;
                }
                v44 = new uint256[](MEM[v41]);
                MCOPY(v44.data, v41 + 32, MEM[v41]);
                MEM[v44 + MEM[v41] + 32] = 0;
                revert(Error(v44));
            }
        } else {
            if (bool(uint16(v5 >> 32))) {
                v45 = MEM[64];
                v46 = v47 = v45 + (uint16(v5 >> 32) & 0x1f) + (!(uint16(v5 >> 32) & 0x1f) << 5);
                v48 = v49 = v0 + (uint16(v5 >> 32) & 0x1f) + (!(uint16(v5 >> 32) & 0x1f) << 5) + (v1 + 28);
                while (v46 < v47 + uint16(v5 >> 32)) {
                    MEM[v46] = MEM[v48];
                    v46 += 32;
                    v48 += 32;
                }
                MEM[v45] = uint16(v5 >> 32);
                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v46;
            } else {
                v45 = v50 = MEM[64];
                MEM[v50] = 0;
                MEM[64] = v50 + 32;
            }
            if (bool((v5 >> 240) + 2 - 28 - uint16(v5 >> 32))) {
                v51 = MEM[64];
                v52 = v53 = v51 + ((v5 >> 240) + 2 - 28 - uint16(v5 >> 32) & 0x1f) + (!((v5 >> 240) + 2 - 28 - uint16(v5 >> 32) & 0x1f) << 5);
                v54 = v55 = v0 + ((v5 >> 240) + 2 - 28 - uint16(v5 >> 32) & 0x1f) + (!((v5 >> 240) + 2 - 28 - uint16(v5 >> 32) & 0x1f) << 5) + (28 + v1 + uint16(v5 >> 32));
                while (v52 < v53 + ((v5 >> 240) + 2 - 28 - uint16(v5 >> 32))) {
                    MEM[v52] = MEM[v54];
                    v52 += 32;
                    v54 += 32;
                }
                MEM[v51] = (v5 >> 240) + 2 - 28 - uint16(v5 >> 32);
                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v52;
            } else {
                v51 = v56 = MEM[64];
                MEM[v56] = 0;
                MEM[64] = v56 + 32;
            }
            if (uint8(v5 >> 224)) {
                if (uint8(v5 >> 224) - 2) {
                    if (uint8(v5 >> 224) - 1) {
                        if (uint8(v5 >> 224) - 3) {
                            if (uint8(v5 >> 224) - 7) {
                                if (uint8(v5 >> 224) - 4) {
                                    if (uint8(v5 >> 224) - 9) {
                                        require(!(uint8(v5 >> 224) - 6), Error('!data'));
                                        v57 = this.balance;
                                        MEM[MEM[64] + 32] = v57;
                                        v58 = v59 = 64 + MEM[64];
                                    } else {
                                        v60 = _uniswapV2Call;
                                        MEM[MEM[64] + 32] = v60;
                                        v58 = v61 = 64 + MEM[64];
                                    }
                                } else {
                                    MEM[32 + MEM[64]] = v1;
                                    v58 = v62 = 64 + MEM[64];
                                }
                            } else {
                                MCOPY(32 + MEM[64], v45 + 32, MEM[v45]);
                                MEM[32 + MEM[64] + MEM[v45]] = 0;
                                MCOPY(32 + MEM[64] + MEM[v45], v51 + 32, MEM[v51]);
                                MEM[32 + MEM[64] + MEM[v45] + MEM[v51]] = 0;
                                v63 = v64 = MEM[64];
                                MEM[v64] = 32 + MEM[64] + MEM[v45] + MEM[v51] - v64 - 32;
                                MEM[64] = 32 + MEM[64] + MEM[v45] + MEM[v51];
                            }
                        } else {
                            MEM[32 + MEM[64]] = 0 - v1;
                            v58 = v65 = 64 + MEM[64];
                            // Unknown jump to Block 0x5a10x22ddB0x4b5. Refer to 3-address code (TAC);
                        }
                    } else {
                        MEM[32 + MEM[64]] = 0 - v1;
                        v58 = v66 = 64 + MEM[64];
                        // Unknown jump to Block 0x5a10x22ddB0x4b5. Refer to 3-address code (TAC);
                    }
                } else {
                    MEM[32 + MEM[64]] = v1;
                    v58 = v67 = 64 + MEM[64];
                    // Unknown jump to Block 0x5a10x22ddB0x4b5. Refer to 3-address code (TAC);
                }
            } else {
                MEM[32 + MEM[64]] = v1;
                v58 = 64 + MEM[64];
            }
            MEM[64] = v58;
            MCOPY(32 + v58, v45 + 32, MEM[v45]);
            MEM[32 + v58 + MEM[v45]] = 0;
            MCOPY(32 + v58 + MEM[v45], MEM[64] + 32, v58 - MEM[64] - 32);
            MEM[32 + v58 + MEM[v45] + (v58 - MEM[64] - 32)] = 0;
            MCOPY(32 + v58 + MEM[v45] + (v58 - MEM[64] - 32), v51 + 32, MEM[v51]);
            MEM[32 + v58 + MEM[v45] + (v58 - MEM[64] - 32) + MEM[v51]] = 0;
            v63 = MEM[64];
            MEM[v63] = 32 + v58 + MEM[v45] + (v58 - MEM[64] - 32) + MEM[v51] - v63 - 32;
            MEM[64] = 32 + v58 + MEM[v45] + (v58 - MEM[64] - 32) + MEM[v51];
            if (uint8(v5 >> 216) - 7) {
                if (uint8(v5 >> 216)) {
                    if (uint8(v5 >> 216) - 2) {
                        if (uint8(v5 >> 216) - 1) {
                            if (uint8(v5 >> 216) - 3) {
                                if (uint8(v5 >> 216) - 4) {
                                    if (uint8(v5 >> 216) - 9) {
                                        require(!(uint8(v5 >> 216) - 6), Error('!value'));
                                        v1 = v68 = this.balance;
                                    } else {
                                        v1 = v69 = _uniswapV2Call;
                                    }
                                }
                            } else {
                                v1 = v70 = 0 - v1;
                            }
                        } else {
                            v1 = v71 = 0 - v1;
                        }
                    }
                }
            } else {
                v1 = v72 = 0;
            }
            MCOPY(MEM[64], v63 + 32, MEM[v63]);
            MEM[MEM[64] + MEM[v63]] = 0;
            v73 = address(v5 >> 48).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v22dd0x3d200V0x4b5] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v1).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v74 = v75 = 96;
            } else {
                v74 = v76 = MEM[64];
                MEM[64] = v76 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                MEM[v76] = RETURNDATASIZE();
                RETURNDATACOPY(v76 + 32, 0, RETURNDATASIZE());
            }
            if (!v73) {
                if (uint8(v5 >> 208) != uint8.max) {
                    require(0 - MEM[v74], Error('!call'));
                    revert(32 + v74, MEM[v74]);
                }
            }
            if (uint8(v5 >> 208)) {
                v1 = v77 = MEM[v74 + (uint8(v5 >> 208) - 1 << 5) + 32];
            }
        }
        v1 += (v5 >> 240) + 2;
        continue;
        // Unknown jump to Block 0x22160x22ddB0x4b5. Refer to 3-address code (TAC);
    }
    exit;
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public payable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data.length >= 32 + (data.length + (4 + data)));
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    v1 = 0x523(varg0, varg0, v0);
}

function 0xab5898e8(bytes varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length);
    require(!((v0 + ((varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data.length >= 32 + (varg0.length + (4 + varg0)));
    CALLDATACOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1 = 0x523(0, varg1, v0);
    return v1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public payable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data.length >= 32 + (data.length + (4 + data)));
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    if (amount0Delta >= 0) {
        v1 = 0x523(amount0Delta, 0 - amount1Delta, v0);
    } else {
        v2 = 0x523(amount1Delta, 0 - amount0Delta, v0);
    }
}

function VERSION() public nonPayable { 
    return 3;
}

function 0x523(uint256 varg0, uint256 varg1, bytes varg2) private { 
    varg1 = v0 = 0;
    while (varg1 < varg2.length) {
        v1 = varg2[varg1];
        if (uint8(v1 >> 232)) {
            if (uint8(v1 >> 232) - 4) {
                if (uint8(v1 >> 232) - 3) {
                    if (uint8(v1 >> 232) - 10) {
                        if (uint8(v1 >> 232) - 2) {
                            if (uint8(v1 >> 232) - 1) {
                                if (uint8(v1 >> 232) - 6) {
                                    if (uint8(v1 >> 232) - 7) {
                                        if (uint8(v1 >> 232) - 8) {
                                            require(!(uint8(v1 >> 232) - 9), Error(0x21636d64));
                                            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                            v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg1).gas(msg.gas);
                                            if (!bool(v2)) {
                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                revert(0, RETURNDATASIZE());
                                            }
                                        } else {
                                            ___function_selector__ = uint64(v1 >> 168);
                                        }
                                    } else if (uint8(v1 >> 224) - 4) {
                                        if (uint8(v1 >> 224) - 9) {
                                            if (!(uint8(v1 >> 224) - 2)) {
                                            }
                                        } else {
                                            _uniswapV2Call = varg1;
                                        }
                                    }
                                } else if (uint8(v1 >> 224) - 6) {
                                    if (uint8(v1 >> 224) - 11) {
                                        if (uint8(v1 >> 224) - 2) {
                                            if (uint8(v1 >> 224) - 1) {
                                                if (uint8(v1 >> 224) - 3) {
                                                    if (uint8(v1 >> 224) - 4) {
                                                        if (uint8(v1 >> 224) - 9) {
                                                            if (uint8(v1 >> 224) - 5) {
                                                                if (uint8(v1 >> 224) - 8) {
                                                                    if (!(uint8(v1 >> 224) - 10)) {
                                                                        varg1 = v3 = (address(v1 >> 64)).balance;
                                                                    }
                                                                } else {
                                                                    v4 = new bytes[](msg.data.length);
                                                                    CALLDATACOPY(v4.data, 0, msg.data.length);
                                                                    v4[msg.data.length] = 0;
                                                                    varg1 = v5 = v4[4 + (uint8(v1 >> 216) << 5)];
                                                                }
                                                            } else {
                                                                varg1 = v6 = MEM[varg2 + varg1 + 36];
                                                            }
                                                        } else {
                                                            varg1 = v7 = _uniswapV2Call;
                                                        }
                                                    }
                                                } else {
                                                    varg1 = 0 - varg1;
                                                }
                                            } else {
                                                varg1 = 0 - varg1;
                                            }
                                        }
                                    } else {
                                        v8 = address(v1 >> 64).balanceOf(this).gas(msg.gas);
                                        if (bool(v8)) {
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            varg1 = v9 = MEM[MEM[64]];
                                        } else {
                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                            revert(0, RETURNDATASIZE());
                                        }
                                    }
                                } else {
                                    varg1 = v10 = this.balance;
                                }
                            } else {
                                if (uint8(v1 >> 216) - 2) {
                                    if (uint8(v1 >> 216) - 5) {
                                        if (uint8(v1 >> 216) - 4) {
                                            if (uint8(v1 >> 216) - 9) {
                                                if (uint8(v1 >> 216) - 6) {
                                                    if (uint8(v1 >> 216) - 1) {
                                                        if (!(uint8(v1 >> 216) - 3)) {
                                                            varg1 = 0 - varg1;
                                                        }
                                                    } else {
                                                        varg1 = 0 - varg1;
                                                    }
                                                } else {
                                                    varg1 = v11 = this.balance;
                                                }
                                            } else {
                                                varg1 = v12 = _uniswapV2Call;
                                            }
                                        }
                                    } else {
                                        varg1 = v13 = MEM[37 + (varg1 + varg2)];
                                    }
                                }
                                if (uint8(v1 >> 224)) {
                                    if (uint8(v1 >> 224) - 1) {
                                        if (uint8(v1 >> 224) - 2) {
                                            if (uint8(v1 >> 224) - 3) {
                                                if (uint8(v1 >> 224) - 4) {
                                                    if (uint8(v1 >> 224) - 5) {
                                                        if (uint8(v1 >> 224) - 6) {
                                                            if (uint8(v1 >> 224) - 7) {
                                                                if (uint8(v1 >> 224) - 8) {
                                                                    if (uint8(v1 >> 224) - 9) {
                                                                        require(!(uint8(v1 >> 224) - 10), Error(0x216f70));
                                                                    } else if (varg1 >= varg1) {
                                                                    }
                                                                } else if (varg1 <= varg1) {
                                                                }
                                                                // Unknown jump to Block 0x1bed0x523. Refer to 3-address code (TAC);
                                                            } else {
                                                                if (uint8(v1 >> 216) - 5) {
                                                                    v14 = v15 = varg1 + 5;
                                                                } else {
                                                                    v14 = varg1 + 37;
                                                                }
                                                                v16 = uint8(MEM[1 + (varg2 + v14)]);
                                                                if (v16 - 2) {
                                                                    if (v16 - 5) {
                                                                        if (v16 - 4) {
                                                                            if (v16 - 9) {
                                                                                require(!(v16 - 6), Error('!var2'));
                                                                                varg1 = v17 = this.balance;
                                                                            } else {
                                                                                varg1 = v18 = _uniswapV2Call;
                                                                            }
                                                                        }
                                                                    } else {
                                                                        varg1 = v19 = MEM[varg2 + v14 + 33];
                                                                    }
                                                                }
                                                                require(varg1, Panic(18)); // division by zero
                                                                varg1 = varg1 * varg1 / varg1;
                                                            }
                                                        } else {
                                                            require(varg1, Panic(18)); // division by zero
                                                            varg1 = varg1 / varg1;
                                                        }
                                                    } else {
                                                        require(varg1, Panic(18)); // division by zero
                                                        varg1 = varg1 % varg1;
                                                    }
                                                } else {
                                                    varg1 += varg1;
                                                }
                                            } else {
                                                require(varg1, Panic(18)); // division by zero
                                                varg1 = varg1 / varg1;
                                            }
                                        } else {
                                            varg1 *= varg1;
                                        }
                                    } else {
                                        varg1 = varg1 - varg1;
                                    }
                                } else {
                                    varg1 = varg1 - varg1;
                                }
                            }
                            revert(Error(0x21766172));
                        } else {
                            if (v1 >> 224 & 0x40) {
                                v20 = v21 = varg2[44 + varg1] >> 96;
                            } else {
                                v20 = this;
                            }
                            if (!bool(v1 >> 224 & 0x2)) {
                                if (!bool(v1 >> 224 & 0x10)) {
                                    MEM[MEM[64] + 68] = varg1;
                                    MEM[MEM[64] + 32] = uint224(address(v1 >> 64)) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v22 = address(MEM[varg2 + varg1 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v22, Error('!transfer'));
                                }
                                varg1 = 0x23de(MEM[varg2 + varg1 + 56] >> 96, bool(v1 >> 224 & 0x8), bool(v1 >> 224 & 0x1), varg1, v1 >> 64);
                                if (!bool(v1 >> 224 & 0x20)) {
                                    if (bool(v1 >> 224 & 0x1)) {
                                        varg1 = v23 = 0;
                                    }
                                    if (!bool(v1 >> 224 & 0x1)) {
                                        varg1 = v24 = 0;
                                    }
                                    v25 = new uint256[](0);
                                    require(bool((address(v1 >> 64)).code.size));
                                    v26 = address(v1 >> 64).swap(varg1, varg1, address(v20), v25).gas(msg.gas);
                                    if (!bool(v26)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                if (bool(v1 >> 224 & 0x4)) {
                                }
                            } else {
                                if (bool(v1 >> 224 & 0x1)) {
                                    varg1 = 0x222f(varg1, 0, v1 >> 64);
                                } else {
                                    varg1 = 0x222f(0, varg1, v1 >> 64);
                                }
                                if (!bool(v1 >> 224 & 0x10)) {
                                    MEM[MEM[64] + 68] = varg1;
                                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v1 >> 64));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v27 = address(MEM[varg2 + varg1 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v27, Error('!transfer'));
                                }
                                if (!bool(v1 >> 224 & 0x20)) {
                                    if (bool(v1 >> 224 & 0x1)) {
                                        varg1 = v28 = 0;
                                    }
                                    if (!bool(v1 >> 224 & 0x1)) {
                                        varg1 = v29 = 0;
                                    }
                                    v30 = new uint256[](0);
                                    require(bool((address(v1 >> 64)).code.size));
                                    v31 = address(v1 >> 64).swap(varg1, varg1, address(v20), v30).gas(msg.gas);
                                    if (!bool(v31)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                                if (bool(v1 >> 224 & 0x4)) {
                                }
                            }
                        }
                    } else {
                        if (uint8(v1 >> 224)) {
                            if (uint8(v1 >> 224) - 2) {
                                if (uint8(v1 >> 224) - 4) {
                                    if (uint8(v1 >> 224) - 9) {
                                        if (uint8(v1 >> 224) - 1) {
                                            require(!(uint8(v1 >> 224) - 3), Error('!amount'));
                                            varg1 = v32 = 0 - varg1;
                                        } else {
                                            varg1 = v33 = 0 - varg1;
                                        }
                                    } else {
                                        varg1 = v34 = _uniswapV2Call;
                                    }
                                }
                            }
                        }
                        MEM[MEM[64] + 68] = varg1;
                        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(MEM[56 + (varg1 + varg2)] >> 96));
                        MCOPY(MEM[64], MEM[64] + 32, 68);
                        MEM[MEM[64] + 68] = 0;
                        v35 = address(v1 >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() != 0) {
                            MEM[MEM[64]] = RETURNDATASIZE();
                            RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                        }
                        require(v35, Error('!transfer'));
                    }
                } else {
                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                    v36 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                    if (!bool(v36)) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else if (varg1 >= uint96(v1 >> 136 ^ msg.sender)) {
                if (varg1 * uint16(v1 >> 120) / 10000) {
                    v37 = block.coinbase.call().value(varg1 * uint16(v1 >> 120) / 10000).gas(msg.gas);
                    if (RETURNDATASIZE() != 0) {
                        MEM[MEM[64]] = RETURNDATASIZE();
                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                    }
                    require(v37, Error('!coinbase'));
                }
                v38 = msg.sender.call().value(varg1 - varg1 * uint16(v1 >> 120) / 10000).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    MEM[MEM[64]] = RETURNDATASIZE();
                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                }
                require(v38, Error('!sender'));
            } else {
                if (0xffff00000000000000000000 & uint96(v1 >> 136 ^ msg.sender) > 0) {
                    v39 = v40 = '!address';
                } else {
                    v39 = 0x216d696e;
                }
                v41 = new uint256[](MEM[v39]);
                MCOPY(v41.data, v39 + 32, MEM[v39]);
                MEM[v41 + MEM[v39] + 32] = 0;
                revert(Error(v41));
            }
        } else {
            if (bool(uint16(v1 >> 32))) {
                v42 = v43 = MEM[64];
                v44 = v45 = v43 + (uint16(v1 >> 32) & 0x1f) + (!(uint16(v1 >> 32) & 0x1f) << 5);
                v46 = v47 = varg2 + (uint16(v1 >> 32) & 0x1f) + (!(uint16(v1 >> 32) & 0x1f) << 5) + (varg1 + 28);
                while (v44 < v45 + uint16(v1 >> 32)) {
                    MEM[v44] = MEM[v46];
                    v44 += 32;
                    v46 += 32;
                }
                MEM[v43] = uint16(v1 >> 32);
                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v44;
            } else {
                v42 = v48 = MEM[64];
                MEM[v48] = 0;
                MEM[64] = v48 + 32;
            }
            if (bool((v1 >> 240) + 2 - 28 - uint16(v1 >> 32))) {
                v49 = v50 = MEM[64];
                v51 = v52 = v50 + ((v1 >> 240) + 2 - 28 - uint16(v1 >> 32) & 0x1f) + (!((v1 >> 240) + 2 - 28 - uint16(v1 >> 32) & 0x1f) << 5);
                v53 = v54 = varg2 + ((v1 >> 240) + 2 - 28 - uint16(v1 >> 32) & 0x1f) + (!((v1 >> 240) + 2 - 28 - uint16(v1 >> 32) & 0x1f) << 5) + (28 + varg1 + uint16(v1 >> 32));
                while (v51 < v52 + ((v1 >> 240) + 2 - 28 - uint16(v1 >> 32))) {
                    MEM[v51] = MEM[v53];
                    v51 += 32;
                    v53 += 32;
                }
                MEM[v50] = (v1 >> 240) + 2 - 28 - uint16(v1 >> 32);
                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v51;
            } else {
                v49 = v55 = MEM[64];
                MEM[v55] = 0;
                MEM[64] = v55 + 32;
            }
            if (uint8(v1 >> 224)) {
                if (uint8(v1 >> 224) - 2) {
                    if (uint8(v1 >> 224) - 1) {
                        if (uint8(v1 >> 224) - 3) {
                            if (uint8(v1 >> 224) - 7) {
                                if (uint8(v1 >> 224) - 4) {
                                    if (uint8(v1 >> 224) - 9) {
                                        require(!(uint8(v1 >> 224) - 6), Error('!data'));
                                        v56 = this.balance;
                                        MEM[MEM[64] + 32] = v56;
                                        v57 = v58 = 64 + MEM[64];
                                    } else {
                                        v59 = _uniswapV2Call;
                                        MEM[MEM[64] + 32] = v59;
                                        v57 = v60 = 64 + MEM[64];
                                    }
                                } else {
                                    MEM[32 + MEM[64]] = varg1;
                                    v57 = v61 = 64 + MEM[64];
                                }
                            } else {
                                MCOPY(32 + MEM[64], v42 + 32, MEM[v42]);
                                MEM[32 + MEM[64] + MEM[v42]] = 0;
                                MCOPY(32 + MEM[64] + MEM[v42], v49 + 32, MEM[v49]);
                                MEM[32 + MEM[64] + MEM[v42] + MEM[v49]] = 0;
                                v62 = v63 = MEM[64];
                                MEM[v63] = 32 + MEM[64] + MEM[v42] + MEM[v49] - v63 - 32;
                                MEM[64] = 32 + MEM[64] + MEM[v42] + MEM[v49];
                            }
                        } else {
                            MEM[32 + MEM[64]] = 0 - varg1;
                            v57 = v64 = 64 + MEM[64];
                            // Unknown jump to Block 0x5a10x523. Refer to 3-address code (TAC);
                        }
                    } else {
                        MEM[32 + MEM[64]] = 0 - varg1;
                        v57 = v65 = 64 + MEM[64];
                        // Unknown jump to Block 0x5a10x523. Refer to 3-address code (TAC);
                    }
                } else {
                    MEM[32 + MEM[64]] = varg1;
                    v57 = v66 = 64 + MEM[64];
                    // Unknown jump to Block 0x5a10x523. Refer to 3-address code (TAC);
                }
            } else {
                MEM[32 + MEM[64]] = varg1;
                v57 = 64 + MEM[64];
            }
            MEM[64] = v57;
            MCOPY(32 + v57, v42 + 32, MEM[v42]);
            MEM[32 + v57 + MEM[v42]] = 0;
            MCOPY(32 + v57 + MEM[v42], MEM[64] + 32, v57 - MEM[64] - 32);
            MEM[32 + v57 + MEM[v42] + (v57 - MEM[64] - 32)] = 0;
            MCOPY(32 + v57 + MEM[v42] + (v57 - MEM[64] - 32), v49 + 32, MEM[v49]);
            MEM[32 + v57 + MEM[v42] + (v57 - MEM[64] - 32) + MEM[v49]] = 0;
            v62 = MEM[64];
            MEM[v62] = 32 + v57 + MEM[v42] + (v57 - MEM[64] - 32) + MEM[v49] - v62 - 32;
            MEM[64] = 32 + v57 + MEM[v42] + (v57 - MEM[64] - 32) + MEM[v49];
            if (uint8(v1 >> 216) - 7) {
                if (uint8(v1 >> 216)) {
                    if (uint8(v1 >> 216) - 2) {
                        if (uint8(v1 >> 216) - 1) {
                            if (uint8(v1 >> 216) - 3) {
                                if (uint8(v1 >> 216) - 4) {
                                    if (uint8(v1 >> 216) - 9) {
                                        require(!(uint8(v1 >> 216) - 6), Error('!value'));
                                        varg1 = v67 = this.balance;
                                    } else {
                                        varg1 = v68 = _uniswapV2Call;
                                    }
                                }
                            } else {
                                varg1 = v69 = 0 - varg1;
                            }
                        } else {
                            varg1 = v70 = 0 - varg1;
                        }
                    }
                }
            } else {
                varg1 = v71 = 0;
            }
            MCOPY(MEM[64], v62 + 32, MEM[v62]);
            MEM[MEM[64] + MEM[v62]] = 0;
            v72 = address(v1 >> 48).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v5230x3d200] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(varg1).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v73 = v74 = 96;
            } else {
                v73 = MEM[64];
                MEM[64] = v73 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                MEM[v73] = RETURNDATASIZE();
                RETURNDATACOPY(v73 + 32, 0, RETURNDATASIZE());
            }
            if (!v72) {
                if (uint8(v1 >> 208) != uint8.max) {
                    require(0 - MEM[v73], Error('!call'));
                    revert(32 + v73, MEM[v73]);
                }
            }
            if (uint8(v1 >> 208)) {
                varg1 = v75 = MEM[v73 + (uint8(v1 >> 208) - 1 << 5) + 32];
            }
        }
        varg1 += (v1 >> 240) + 2;
        continue;
        // Unknown jump to Block 0x22160x523. Refer to 3-address code (TAC);
    }
    return varg1;
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0xab5898e8 > function_selector >> 224) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x31f57072 == function_selector >> 224) {
            onMorphoFlashLoan(uint256,bytes);
        }
    } else if (0xab5898e8 == function_selector >> 224) {
        0xab5898e8();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0xffa1ad74 == function_selector >> 224) {
        VERSION();
    }
    v0 = v1 = MEM[64];
    MEM[v1] = 0;
    MEM[64] = v1 + 32;
    v2 = msg.data.length;
    if (msg.sender - tx.origin) {
        v3 = ___function_selector__;
        if (0 - v3) {
            ___function_selector__ = 0;
            if (uint8(v3)) {
                if (uint8(v3) - 2) {
                    if (!(uint8(v3) - 1)) {
                        require(4 <= msg.data.length);
                        require(msg.data.length <= msg.data.length);
                        require(4 + (msg.data.length - 4) - 4 >= 96);
                        require(varg3 <= uint64.max);
                        require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
                        require(varg3.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v4 = new bytes[](varg3.length);
                        require(!((v4 + ((varg3.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + ((varg3.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
                        require(4 + (msg.data.length - 4) >= 32 + (varg3.length + (4 + varg3)));
                        CALLDATACOPY(v4.data, varg3.data, varg3.length);
                        v4[varg3.length] = 0;
                        if (!uint8(v3 >> 8)) {
                            v5 = 0x523(varg2, 0 - varg1, v4);
                        } else {
                            v6 = 0x523(varg1, 0 - varg2, v4);
                        }
                    }
                } else {
                    require(4 <= msg.data.length);
                    require(msg.data.length <= msg.data.length);
                    require(4 + (msg.data.length - 4) - 4 >= 128);
                    require(varg1 == address(varg1));
                    require(varg4 <= uint64.max);
                    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
                    require(varg4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v7 = new bytes[](varg4.length);
                    require(!((v7 + ((varg4.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + ((varg4.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
                    require(4 + (msg.data.length - 4) >= 32 + (varg4.length + (4 + varg4)));
                    CALLDATACOPY(v7.data, varg4.data, varg4.length);
                    v7[varg4.length] = 0;
                    if (uint8(v3 >> 8) <= 0) {
                    }
                    v8 = v9 = 0x222f(varg3, varg2, msg.sender);
                    v8 = v10 = 0;
                    while (v8 < v7.length) {
                        v11 = v7[v8];
                        if (uint8(v11 >> 232)) {
                            if (uint8(v11 >> 232) - 4) {
                                if (uint8(v11 >> 232) - 3) {
                                    if (uint8(v11 >> 232) - 10) {
                                        if (uint8(v11 >> 232) - 2) {
                                            if (uint8(v11 >> 232) - 1) {
                                                if (uint8(v11 >> 232) - 6) {
                                                    if (uint8(v11 >> 232) - 7) {
                                                        if (uint8(v11 >> 232) - 8) {
                                                            require(!(uint8(v11 >> 232) - 9), Error(0x21636d64));
                                                            require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                                            v12 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v8).gas(msg.gas);
                                                            if (!bool(v12)) {
                                                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                                revert(0, RETURNDATASIZE());
                                                            }
                                                        } else {
                                                            ___function_selector__ = uint64(v11 >> 168);
                                                        }
                                                    } else if (uint8(v11 >> 224) - 4) {
                                                        if (uint8(v11 >> 224) - 9) {
                                                            if (!(uint8(v11 >> 224) - 2)) {
                                                            }
                                                        } else {
                                                            _uniswapV2Call = v8;
                                                        }
                                                    }
                                                } else if (uint8(v11 >> 224) - 6) {
                                                    if (uint8(v11 >> 224) - 11) {
                                                        if (uint8(v11 >> 224) - 2) {
                                                            if (uint8(v11 >> 224) - 1) {
                                                                if (uint8(v11 >> 224) - 3) {
                                                                    if (uint8(v11 >> 224) - 4) {
                                                                        if (uint8(v11 >> 224) - 9) {
                                                                            if (uint8(v11 >> 224) - 5) {
                                                                                if (uint8(v11 >> 224) - 8) {
                                                                                    if (!(uint8(v11 >> 224) - 10)) {
                                                                                        v8 = v13 = (address(v11 >> 64)).balance;
                                                                                    }
                                                                                } else {
                                                                                    v14 = new bytes[](msg.data.length);
                                                                                    CALLDATACOPY(v14.data, 0, msg.data.length);
                                                                                    v14[msg.data.length] = 0;
                                                                                    v8 = v15 = v14[4 + (uint8(v11 >> 216) << 5)];
                                                                                }
                                                                            } else {
                                                                                v8 = v16 = MEM[v7 + v8 + 36];
                                                                            }
                                                                        } else {
                                                                            v8 = v17 = _uniswapV2Call;
                                                                        }
                                                                    }
                                                                } else {
                                                                    v8 = 0 - v8;
                                                                }
                                                            } else {
                                                                v8 = 0 - v8;
                                                            }
                                                        }
                                                    } else {
                                                        v18 = address(v11 >> 64).balanceOf(this).gas(msg.gas);
                                                        if (bool(v18)) {
                                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                            v8 = v19 = MEM[MEM[64]];
                                                        } else {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    }
                                                } else {
                                                    v8 = v20 = this.balance;
                                                }
                                            } else {
                                                if (uint8(v11 >> 216) - 2) {
                                                    if (uint8(v11 >> 216) - 5) {
                                                        if (uint8(v11 >> 216) - 4) {
                                                            if (uint8(v11 >> 216) - 9) {
                                                                if (uint8(v11 >> 216) - 6) {
                                                                    if (uint8(v11 >> 216) - 1) {
                                                                        if (!(uint8(v11 >> 216) - 3)) {
                                                                            v8 = 0 - v8;
                                                                        }
                                                                    } else {
                                                                        v8 = 0 - v8;
                                                                    }
                                                                } else {
                                                                    v8 = v21 = this.balance;
                                                                }
                                                            } else {
                                                                v8 = v22 = _uniswapV2Call;
                                                            }
                                                        }
                                                    } else {
                                                        v8 = v23 = MEM[37 + (v8 + v7)];
                                                    }
                                                }
                                                if (uint8(v11 >> 224)) {
                                                    if (uint8(v11 >> 224) - 1) {
                                                        if (uint8(v11 >> 224) - 2) {
                                                            if (uint8(v11 >> 224) - 3) {
                                                                if (uint8(v11 >> 224) - 4) {
                                                                    if (uint8(v11 >> 224) - 5) {
                                                                        if (uint8(v11 >> 224) - 6) {
                                                                            if (uint8(v11 >> 224) - 7) {
                                                                                if (uint8(v11 >> 224) - 8) {
                                                                                    if (uint8(v11 >> 224) - 9) {
                                                                                        require(!(uint8(v11 >> 224) - 10), Error(0x216f70));
                                                                                    } else if (v8 >= v8) {
                                                                                    }
                                                                                } else if (v8 <= v8) {
                                                                                }
                                                                                // Unknown jump to Block 0x1bed0x0. Refer to 3-address code (TAC);
                                                                            } else {
                                                                                if (uint8(v11 >> 216) - 5) {
                                                                                    v24 = v25 = v8 + 5;
                                                                                } else {
                                                                                    v24 = v8 + 37;
                                                                                }
                                                                                if (uint8(MEM[1 + (v7 + v24)]) - 2) {
                                                                                    if (uint8(MEM[1 + (v7 + v24)]) - 5) {
                                                                                        if (uint8(MEM[1 + (v7 + v24)]) - 4) {
                                                                                            if (uint8(MEM[1 + (v7 + v24)]) - 9) {
                                                                                                require(!(uint8(MEM[1 + (v7 + v24)]) - 6), Error('!var2'));
                                                                                                v8 = v26 = this.balance;
                                                                                            } else {
                                                                                                v8 = v27 = _uniswapV2Call;
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                        v8 = v28 = MEM[v7 + v24 + 33];
                                                                                    }
                                                                                }
                                                                                require(v8, Panic(18)); // division by zero
                                                                                v8 = v8 * v8 / v8;
                                                                            }
                                                                        } else {
                                                                            require(v8, Panic(18)); // division by zero
                                                                            v8 = v8 / v8;
                                                                        }
                                                                    } else {
                                                                        require(v8, Panic(18)); // division by zero
                                                                        v8 = v8 % v8;
                                                                    }
                                                                } else {
                                                                    v8 += v8;
                                                                }
                                                            } else {
                                                                require(v8, Panic(18)); // division by zero
                                                                v8 = v8 / v8;
                                                            }
                                                        } else {
                                                            v8 *= v8;
                                                        }
                                                    } else {
                                                        v8 = v8 - v8;
                                                    }
                                                } else {
                                                    v8 = v8 - v8;
                                                }
                                            }
                                            revert(Error(0x21766172));
                                        } else {
                                            if (v11 >> 224 & 0x40) {
                                                v29 = v30 = v7[44 + v8] >> 96;
                                            } else {
                                                v29 = this;
                                            }
                                            if (!bool(v11 >> 224 & 0x2)) {
                                                if (!bool(v11 >> 224 & 0x10)) {
                                                    MEM[MEM[64] + 68] = v8;
                                                    MEM[MEM[64] + 32] = uint224(address(v11 >> 64)) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                                    MEM[MEM[64] + 68] = 0;
                                                    v31 = address(MEM[v7 + v8 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    require(v31, Error('!transfer'));
                                                }
                                                v8 = 0x23de(MEM[v7 + v8 + 56] >> 96, bool(v11 >> 224 & 0x8), bool(v11 >> 224 & 0x1), v8, v11 >> 64);
                                                if (!bool(v11 >> 224 & 0x20)) {
                                                    if (bool(v11 >> 224 & 0x1)) {
                                                        v8 = v32 = 0;
                                                    }
                                                    if (!bool(v11 >> 224 & 0x1)) {
                                                        v8 = v33 = 0;
                                                    }
                                                    v34 = new uint256[](0);
                                                    require(bool((address(v11 >> 64)).code.size));
                                                    v35 = address(v11 >> 64).swap(v8, v8, address(v29), v34).gas(msg.gas);
                                                    if (!bool(v35)) {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                }
                                                if (bool(v11 >> 224 & 0x4)) {
                                                }
                                            } else {
                                                if (bool(v11 >> 224 & 0x1)) {
                                                    v8 = 0x222f(v8, 0, v11 >> 64);
                                                } else {
                                                    v8 = 0x222f(0, v8, v11 >> 64);
                                                }
                                                if (!bool(v11 >> 224 & 0x10)) {
                                                    MEM[MEM[64] + 68] = v8;
                                                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v11 >> 64));
                                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                                    MEM[MEM[64] + 68] = 0;
                                                    v36 = address(MEM[v7 + v8 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                    if (RETURNDATASIZE() != 0) {
                                                        MEM[MEM[64]] = RETURNDATASIZE();
                                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                    }
                                                    require(v36, Error('!transfer'));
                                                }
                                                if (!bool(v11 >> 224 & 0x20)) {
                                                    if (bool(v11 >> 224 & 0x1)) {
                                                        v8 = v37 = 0;
                                                    }
                                                    if (!bool(v11 >> 224 & 0x1)) {
                                                        v8 = v38 = 0;
                                                    }
                                                    v39 = new uint256[](0);
                                                    require(bool((address(v11 >> 64)).code.size));
                                                    v40 = address(v11 >> 64).swap(v8, v8, address(v29), v39).gas(msg.gas);
                                                    if (!bool(v40)) {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                }
                                                if (bool(v11 >> 224 & 0x4)) {
                                                }
                                            }
                                        }
                                    } else {
                                        if (uint8(v11 >> 224)) {
                                            if (uint8(v11 >> 224) - 2) {
                                                if (uint8(v11 >> 224) - 4) {
                                                    if (uint8(v11 >> 224) - 9) {
                                                        if (uint8(v11 >> 224) - 1) {
                                                            require(!(uint8(v11 >> 224) - 3), Error('!amount'));
                                                            v8 = v41 = 0 - v8;
                                                        } else {
                                                            v8 = v42 = 0 - v8;
                                                        }
                                                    } else {
                                                        v8 = v43 = _uniswapV2Call;
                                                    }
                                                }
                                            }
                                        }
                                        MEM[MEM[64] + 68] = v8;
                                        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(MEM[56 + (v8 + v7)] >> 96));
                                        MCOPY(MEM[64], MEM[64] + 32, 68);
                                        MEM[MEM[64] + 68] = 0;
                                        v44 = address(v11 >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                        if (RETURNDATASIZE() != 0) {
                                            MEM[MEM[64]] = RETURNDATASIZE();
                                            RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                        }
                                        require(v44, Error('!transfer'));
                                    }
                                } else {
                                    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                    v45 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v8).gas(msg.gas);
                                    if (!bool(v45)) {
                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                        revert(0, RETURNDATASIZE());
                                    }
                                }
                            } else if (v8 >= uint96(v11 >> 136 ^ msg.sender)) {
                                if (v8 * uint16(v11 >> 120) / 10000) {
                                    v46 = block.coinbase.call().value(v8 * uint16(v11 >> 120) / 10000).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v46, Error('!coinbase'));
                                }
                                v47 = msg.sender.call().value(v8 - v8 * uint16(v11 >> 120) / 10000).gas(msg.gas);
                                if (RETURNDATASIZE() != 0) {
                                    MEM[MEM[64]] = RETURNDATASIZE();
                                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                }
                                require(v47, Error('!sender'));
                            } else {
                                if (0xffff00000000000000000000 & uint96(v11 >> 136 ^ msg.sender) > 0) {
                                    v48 = v49 = '!address';
                                } else {
                                    v48 = 0x216d696e;
                                }
                                v50 = new uint256[](MEM[v48]);
                                MCOPY(v50.data, v48 + 32, MEM[v48]);
                                MEM[v50 + MEM[v48] + 32] = 0;
                            }
                        } else {
                            if (bool(uint16(v11 >> 32))) {
                                v51 = v52 = MEM[64];
                                v53 = v54 = v52 + (uint16(v11 >> 32) & 0x1f) + (!(uint16(v11 >> 32) & 0x1f) << 5);
                                v55 = v56 = v7 + (uint16(v11 >> 32) & 0x1f) + (!(uint16(v11 >> 32) & 0x1f) << 5) + (v8 + 28);
                                while (v53 < v54 + uint16(v11 >> 32)) {
                                    MEM[v53] = MEM[v55];
                                    v53 += 32;
                                    v55 += 32;
                                }
                                MEM[v52] = uint16(v11 >> 32);
                                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v53;
                            } else {
                                v51 = v57 = MEM[64];
                                MEM[v57] = 0;
                                MEM[64] = v57 + 32;
                            }
                            if (bool((v11 >> 240) + 2 - 28 - uint16(v11 >> 32))) {
                                v58 = v59 = MEM[64];
                                v60 = v61 = v59 + ((v11 >> 240) + 2 - 28 - uint16(v11 >> 32) & 0x1f) + (!((v11 >> 240) + 2 - 28 - uint16(v11 >> 32) & 0x1f) << 5);
                                v62 = v63 = v7 + ((v11 >> 240) + 2 - 28 - uint16(v11 >> 32) & 0x1f) + (!((v11 >> 240) + 2 - 28 - uint16(v11 >> 32) & 0x1f) << 5) + (28 + v8 + uint16(v11 >> 32));
                                while (v60 < v61 + ((v11 >> 240) + 2 - 28 - uint16(v11 >> 32))) {
                                    MEM[v60] = MEM[v62];
                                    v60 += 32;
                                    v62 += 32;
                                }
                                MEM[v59] = (v11 >> 240) + 2 - 28 - uint16(v11 >> 32);
                                MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v60;
                            } else {
                                v58 = v64 = MEM[64];
                                MEM[v64] = 0;
                                MEM[64] = v64 + 32;
                            }
                            if (uint8(v11 >> 224)) {
                                if (uint8(v11 >> 224) - 2) {
                                    if (uint8(v11 >> 224) - 1) {
                                        if (uint8(v11 >> 224) - 3) {
                                            if (uint8(v11 >> 224) - 7) {
                                                if (uint8(v11 >> 224) - 4) {
                                                    if (uint8(v11 >> 224) - 9) {
                                                        require(!(uint8(v11 >> 224) - 6), Error('!data'));
                                                        v65 = this.balance;
                                                        MEM[MEM[64] + 32] = v65;
                                                        v66 = v67 = 64 + MEM[64];
                                                    } else {
                                                        v68 = _uniswapV2Call;
                                                        MEM[MEM[64] + 32] = v68;
                                                        v66 = v69 = 64 + MEM[64];
                                                    }
                                                } else {
                                                    MEM[32 + MEM[64]] = v8;
                                                    v66 = v70 = 64 + MEM[64];
                                                }
                                            } else {
                                                MCOPY(32 + MEM[64], v51 + 32, MEM[v51]);
                                                MEM[32 + MEM[64] + MEM[v51]] = 0;
                                                MCOPY(32 + MEM[64] + MEM[v51], v58 + 32, MEM[v58]);
                                                MEM[32 + MEM[64] + MEM[v51] + MEM[v58]] = 0;
                                                v71 = v72 = MEM[64];
                                                MEM[v72] = 32 + MEM[64] + MEM[v51] + MEM[v58] - v72 - 32;
                                                MEM[64] = 32 + MEM[64] + MEM[v51] + MEM[v58];
                                            }
                                        } else {
                                            MEM[32 + MEM[64]] = 0 - v8;
                                            v66 = v73 = 64 + MEM[64];
                                            // Unknown jump to Block 0x5a10x0. Refer to 3-address code (TAC);
                                        }
                                    } else {
                                        MEM[32 + MEM[64]] = 0 - v8;
                                        v66 = v74 = 64 + MEM[64];
                                        // Unknown jump to Block 0x5a10x0. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    MEM[32 + MEM[64]] = v8;
                                    v66 = v75 = 64 + MEM[64];
                                    // Unknown jump to Block 0x5a10x0. Refer to 3-address code (TAC);
                                }
                            } else {
                                MEM[32 + MEM[64]] = v8;
                                v66 = 64 + MEM[64];
                            }
                            MEM[64] = v66;
                            MCOPY(32 + v66, v51 + 32, MEM[v51]);
                            MEM[32 + v66 + MEM[v51]] = 0;
                            MCOPY(32 + v66 + MEM[v51], MEM[64] + 32, v66 - MEM[64] - 32);
                            MEM[32 + v66 + MEM[v51] + (v66 - MEM[64] - 32)] = 0;
                            MCOPY(32 + v66 + MEM[v51] + (v66 - MEM[64] - 32), v58 + 32, MEM[v58]);
                            MEM[32 + v66 + MEM[v51] + (v66 - MEM[64] - 32) + MEM[v58]] = 0;
                            v71 = MEM[64];
                            MEM[v71] = 32 + v66 + MEM[v51] + (v66 - MEM[64] - 32) + MEM[v58] - v71 - 32;
                            MEM[64] = 32 + v66 + MEM[v51] + (v66 - MEM[64] - 32) + MEM[v58];
                            if (uint8(v11 >> 216) - 7) {
                                if (uint8(v11 >> 216)) {
                                    if (uint8(v11 >> 216) - 2) {
                                        if (uint8(v11 >> 216) - 1) {
                                            if (uint8(v11 >> 216) - 3) {
                                                if (uint8(v11 >> 216) - 4) {
                                                    if (uint8(v11 >> 216) - 9) {
                                                        require(!(uint8(v11 >> 216) - 6), Error('!value'));
                                                        v8 = v76 = this.balance;
                                                    } else {
                                                        v8 = v77 = _uniswapV2Call;
                                                    }
                                                }
                                            } else {
                                                v8 = v78 = 0 - v8;
                                            }
                                        } else {
                                            v8 = v79 = 0 - v8;
                                        }
                                    }
                                }
                            } else {
                                v8 = v80 = 0;
                            }
                            MCOPY(MEM[64], v71 + 32, MEM[v71]);
                            MEM[MEM[64] + MEM[v71]] = 0;
                            v81 = address(v11 >> 48).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v00x3d200] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v8).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v82 = v83 = 96;
                            } else {
                                v82 = MEM[64];
                                MEM[64] = v82 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                MEM[v82] = RETURNDATASIZE();
                                RETURNDATACOPY(v82 + 32, 0, RETURNDATASIZE());
                            }
                            if (!v81) {
                                if (uint8(v11 >> 208) != uint8.max) {
                                    require(0 - MEM[v82], Error('!call'));
                                    revert(32 + v82, MEM[v82]);
                                }
                            }
                            if (uint8(v11 >> 208)) {
                                v8 = v84 = MEM[v82 + (uint8(v11 >> 208) - 1 << 5) + 32];
                            }
                        }
                        v8 += (v11 >> 240) + 2;
                        continue;
                        // Unknown jump to Block 0x22160x0. Refer to 3-address code (TAC);
                        revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 0x216362, v50));
                    }
                }
            } else {
                v85 = new bytes[](msg.data.length);
                CALLDATACOPY(v85.data, 0, msg.data.length);
                v85[msg.data.length] = 0;
                require((uint8(v3 >> 24) << 5) + 36 <= v85[4 + (uint8(v3 >> 24) << 5)] + (uint8(v3 >> 24) << 5) + 36);
                require(v85[4 + (uint8(v3 >> 24) << 5)] + (uint8(v3 >> 24) << 5) + 36 <= msg.data.length);
                v86 = new bytes[](v85[4 + (uint8(v3 >> 24) << 5)] + (uint8(v3 >> 24) << 5) + 36 - ((uint8(v3 >> 24) << 5) + 36));
                CALLDATACOPY(v86.data, (uint8(v3 >> 24) << 5) + 36, v85[4 + (uint8(v3 >> 24) << 5)] + (uint8(v3 >> 24) << 5) + 36 - ((uint8(v3 >> 24) << 5) + 36));
                v86[v85[4 + (uint8(v3 >> 24) << 5)] + (uint8(v3 >> 24) << 5) + 36 - ((uint8(v3 >> 24) << 5) + 36)] = 0;
                v87 = new bytes[](msg.data.length);
                CALLDATACOPY(v87.data, 0, msg.data.length);
                v87[msg.data.length] = 0;
                v88 = v89 = MEM[36 + ((uint8(v3 >> 8) << 5) + v87)];
                v90 = new bytes[](msg.data.length);
                CALLDATACOPY(v90.data, 0, msg.data.length);
                v90[msg.data.length] = 0;
                v88 = v91 = v90[4 + (uint8(v3 >> 16) << 5)];
                v88 = v92 = 0;
                while (v88 < v86.length) {
                    v93 = v86[v88];
                    if (uint8(v93 >> 232)) {
                        if (uint8(v93 >> 232) - 4) {
                            if (uint8(v93 >> 232) - 3) {
                                if (uint8(v93 >> 232) - 10) {
                                    if (uint8(v93 >> 232) - 2) {
                                        if (uint8(v93 >> 232) - 1) {
                                            if (uint8(v93 >> 232) - 6) {
                                                if (uint8(v93 >> 232) - 7) {
                                                    if (uint8(v93 >> 232) - 8) {
                                                        require(!(uint8(v93 >> 232) - 9), Error(0x21636d64));
                                                        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
                                                        v94 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v88).gas(msg.gas);
                                                        if (!bool(v94)) {
                                                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                            revert(0, RETURNDATASIZE());
                                                        }
                                                    } else {
                                                        ___function_selector__ = uint64(v93 >> 168);
                                                    }
                                                } else if (uint8(v93 >> 224) - 4) {
                                                    if (uint8(v93 >> 224) - 9) {
                                                        if (!(uint8(v93 >> 224) - 2)) {
                                                        }
                                                    } else {
                                                        _uniswapV2Call = v88;
                                                    }
                                                }
                                            } else if (uint8(v93 >> 224) - 6) {
                                                if (uint8(v93 >> 224) - 11) {
                                                    if (uint8(v93 >> 224) - 2) {
                                                        if (uint8(v93 >> 224) - 1) {
                                                            if (uint8(v93 >> 224) - 3) {
                                                                if (uint8(v93 >> 224) - 4) {
                                                                    if (uint8(v93 >> 224) - 9) {
                                                                        if (uint8(v93 >> 224) - 5) {
                                                                            if (uint8(v93 >> 224) - 8) {
                                                                                if (!(uint8(v93 >> 224) - 10)) {
                                                                                    v88 = v95 = (address(v93 >> 64)).balance;
                                                                                }
                                                                            } else {
                                                                                v96 = new bytes[](msg.data.length);
                                                                                CALLDATACOPY(v96.data, 0, msg.data.length);
                                                                                v96[msg.data.length] = 0;
                                                                                v88 = v97 = v96[4 + (uint8(v93 >> 216) << 5)];
                                                                            }
                                                                        } else {
                                                                            v88 = v98 = MEM[v86 + v88 + 36];
                                                                        }
                                                                    } else {
                                                                        v88 = v99 = _uniswapV2Call;
                                                                    }
                                                                }
                                                            } else {
                                                                v88 = 0 - v88;
                                                            }
                                                        } else {
                                                            v88 = 0 - v88;
                                                        }
                                                    }
                                                } else {
                                                    v100 = address(v93 >> 64).balanceOf(this).gas(msg.gas);
                                                    if (bool(v100)) {
                                                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                        v88 = MEM[MEM[64]];
                                                    } else {
                                                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                        revert(0, RETURNDATASIZE());
                                                    }
                                                }
                                            } else {
                                                v88 = v101 = this.balance;
                                            }
                                        } else {
                                            if (uint8(v93 >> 216) - 2) {
                                                if (uint8(v93 >> 216) - 5) {
                                                    if (uint8(v93 >> 216) - 4) {
                                                        if (uint8(v93 >> 216) - 9) {
                                                            if (uint8(v93 >> 216) - 6) {
                                                                if (uint8(v93 >> 216) - 1) {
                                                                    if (!(uint8(v93 >> 216) - 3)) {
                                                                        v88 = 0 - v88;
                                                                    }
                                                                } else {
                                                                    v88 = 0 - v88;
                                                                }
                                                            } else {
                                                                v88 = v102 = this.balance;
                                                            }
                                                        } else {
                                                            v88 = v103 = _uniswapV2Call;
                                                        }
                                                    }
                                                } else {
                                                    v88 = v104 = MEM[37 + (v88 + v86)];
                                                }
                                            }
                                            if (uint8(v93 >> 224)) {
                                                if (uint8(v93 >> 224) - 1) {
                                                    if (uint8(v93 >> 224) - 2) {
                                                        if (uint8(v93 >> 224) - 3) {
                                                            if (uint8(v93 >> 224) - 4) {
                                                                if (uint8(v93 >> 224) - 5) {
                                                                    if (uint8(v93 >> 224) - 6) {
                                                                        if (uint8(v93 >> 224) - 7) {
                                                                            if (uint8(v93 >> 224) - 8) {
                                                                                if (uint8(v93 >> 224) - 9) {
                                                                                    require(!(uint8(v93 >> 224) - 10), Error(0x216f70));
                                                                                } else if (v88 >= v88) {
                                                                                }
                                                                            } else if (v88 <= v88) {
                                                                            }
                                                                            // Unknown jump to Block 0x1bed0x23bB0x1be. Refer to 3-address code (TAC);
                                                                        } else {
                                                                            if (uint8(v93 >> 216) - 5) {
                                                                                v105 = v106 = v88 + 5;
                                                                            } else {
                                                                                v105 = v88 + 37;
                                                                            }
                                                                            if (uint8(MEM[1 + (v86 + v105)]) - 2) {
                                                                                if (uint8(MEM[1 + (v86 + v105)]) - 5) {
                                                                                    if (uint8(MEM[1 + (v86 + v105)]) - 4) {
                                                                                        if (uint8(MEM[1 + (v86 + v105)]) - 9) {
                                                                                            require(!(uint8(MEM[1 + (v86 + v105)]) - 6), Error('!var2'));
                                                                                            v88 = v107 = this.balance;
                                                                                        } else {
                                                                                            v88 = v108 = _uniswapV2Call;
                                                                                        }
                                                                                    }
                                                                                } else {
                                                                                    v88 = v109 = MEM[v86 + v105 + 33];
                                                                                }
                                                                            }
                                                                            require(v88, Panic(18)); // division by zero
                                                                            v88 = v88 * v88 / v88;
                                                                        }
                                                                    } else {
                                                                        require(v88, Panic(18)); // division by zero
                                                                        v88 = v88 / v88;
                                                                    }
                                                                } else {
                                                                    require(v88, Panic(18)); // division by zero
                                                                    v88 = v88 % v88;
                                                                }
                                                            } else {
                                                                v88 += v88;
                                                            }
                                                        } else {
                                                            require(v88, Panic(18)); // division by zero
                                                            v88 = v88 / v88;
                                                        }
                                                    } else {
                                                        v88 *= v88;
                                                    }
                                                } else {
                                                    v88 = v88 - v88;
                                                }
                                            } else {
                                                v88 = v88 - v88;
                                            }
                                        }
                                        revert(Error(0x21766172));
                                    } else {
                                        if (v93 >> 224 & 0x40) {
                                            v110 = v86[44 + v88] >> 96;
                                        } else {
                                            v110 = v111 = this;
                                        }
                                        if (!bool(v93 >> 224 & 0x2)) {
                                            if (!bool(v93 >> 224 & 0x10)) {
                                                MEM[MEM[64] + 68] = v88;
                                                MEM[MEM[64] + 32] = uint224(address(v93 >> 64)) | 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                                MCOPY(MEM[64], MEM[64] + 32, 68);
                                                MEM[MEM[64] + 68] = 0;
                                                v112 = address(MEM[v86 + v88 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                if (RETURNDATASIZE() != 0) {
                                                    MEM[MEM[64]] = RETURNDATASIZE();
                                                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                }
                                                require(v112, Error('!transfer'));
                                            }
                                            v88 = 0x23de(MEM[v86 + v88 + 56] >> 96, bool(v93 >> 224 & 0x8), bool(v93 >> 224 & 0x1), v88, v93 >> 64);
                                            if (!bool(v93 >> 224 & 0x20)) {
                                                if (bool(v93 >> 224 & 0x1)) {
                                                    v88 = v113 = 0;
                                                }
                                                if (!bool(v93 >> 224 & 0x1)) {
                                                    v88 = v114 = 0;
                                                }
                                                v115 = new uint256[](0);
                                                require(bool((address(v93 >> 64)).code.size));
                                                v116 = address(v93 >> 64).swap(v88, v88, address(v110), v115).gas(msg.gas);
                                                if (!bool(v116)) {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                            if (bool(v93 >> 224 & 0x4)) {
                                            }
                                        } else {
                                            if (bool(v93 >> 224 & 0x1)) {
                                                v88 = 0x222f(v88, 0, v93 >> 64);
                                            } else {
                                                v88 = 0x222f(0, v88, v93 >> 64);
                                            }
                                            if (!bool(v93 >> 224 & 0x10)) {
                                                MEM[MEM[64] + 68] = v88;
                                                MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v93 >> 64));
                                                MCOPY(MEM[64], MEM[64] + 32, 68);
                                                MEM[MEM[64] + 68] = 0;
                                                v117 = address(MEM[v86 + v88 + 56] >> 96).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                                if (RETURNDATASIZE() != 0) {
                                                    MEM[MEM[64]] = RETURNDATASIZE();
                                                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                                }
                                                require(v117, Error('!transfer'));
                                            }
                                            if (!bool(v93 >> 224 & 0x20)) {
                                                if (bool(v93 >> 224 & 0x1)) {
                                                    v88 = v118 = 0;
                                                }
                                                if (!bool(v93 >> 224 & 0x1)) {
                                                    v88 = v119 = 0;
                                                }
                                                v120 = new uint256[](0);
                                                require(bool((address(v93 >> 64)).code.size));
                                                v121 = address(v93 >> 64).swap(v88, v88, address(v110), v120).gas(msg.gas);
                                                if (!bool(v121)) {
                                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                                    revert(0, RETURNDATASIZE());
                                                }
                                            }
                                            if (bool(v93 >> 224 & 0x4)) {
                                            }
                                        }
                                    }
                                } else {
                                    if (uint8(v93 >> 224)) {
                                        if (uint8(v93 >> 224) - 2) {
                                            if (uint8(v93 >> 224) - 4) {
                                                if (uint8(v93 >> 224) - 9) {
                                                    if (uint8(v93 >> 224) - 1) {
                                                        require(!(uint8(v93 >> 224) - 3), Error('!amount'));
                                                        v88 = v122 = 0 - v88;
                                                    } else {
                                                        v88 = v123 = 0 - v88;
                                                    }
                                                } else {
                                                    v88 = v124 = _uniswapV2Call;
                                                }
                                            }
                                        }
                                    }
                                    MEM[MEM[64] + 68] = v88;
                                    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(MEM[56 + (v88 + v86)] >> 96));
                                    MCOPY(MEM[64], MEM[64] + 32, 68);
                                    MEM[MEM[64] + 68] = 0;
                                    v125 = address(v93 >> 64).call(MEM[MEM[64]:MEM[64] + MEM[64] + 68 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v125, Error('!transfer'));
                                }
                            } else {
                                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                                v126 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v88).gas(msg.gas);
                                if (!bool(v126)) {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v127 = v88 * uint16(v93 >> 120) / 10000;
                            if (v88 >= uint96(v93 >> 136 ^ msg.sender)) {
                                if (v127) {
                                    v128 = block.coinbase.call().value(v127).gas(msg.gas);
                                    if (RETURNDATASIZE() != 0) {
                                        MEM[MEM[64]] = RETURNDATASIZE();
                                        RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                    }
                                    require(v128, Error('!coinbase'));
                                }
                                v129 = msg.sender.call().value(v88 - v127).gas(msg.gas);
                                if (RETURNDATASIZE() != 0) {
                                    MEM[MEM[64]] = RETURNDATASIZE();
                                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                                }
                                require(v129, Error('!sender'));
                            } else {
                                if (0xffff00000000000000000000 & uint96(v93 >> 136 ^ msg.sender) > 0) {
                                    v130 = v131 = '!address';
                                } else {
                                    v130 = v132 = 0x216d696e;
                                }
                                v133 = new uint256[](MEM[v130]);
                                MCOPY(v133.data, v130 + 32, MEM[v130]);
                                MEM[v133 + MEM[v130] + 32] = 0;
                                revert(Error(v133));
                            }
                        }
                    } else {
                        if (bool(uint16(v93 >> 32))) {
                            v134 = MEM[64];
                            v135 = v136 = v134 + (uint16(v93 >> 32) & 0x1f) + (!(uint16(v93 >> 32) & 0x1f) << 5);
                            v137 = v138 = v86 + (uint16(v93 >> 32) & 0x1f) + (!(uint16(v93 >> 32) & 0x1f) << 5) + (v88 + 28);
                            while (v135 < v136 + uint16(v93 >> 32)) {
                                MEM[v135] = MEM[v137];
                                v135 += 32;
                                v137 += 32;
                            }
                            MEM[v134] = uint16(v93 >> 32);
                            MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v135;
                        } else {
                            v134 = v139 = MEM[64];
                            MEM[v139] = 0;
                            MEM[64] = v139 + 32;
                        }
                        if (bool((v93 >> 240) + 2 - 28 - uint16(v93 >> 32))) {
                            v140 = MEM[64];
                            v141 = v142 = v140 + ((v93 >> 240) + 2 - 28 - uint16(v93 >> 32) & 0x1f) + (!((v93 >> 240) + 2 - 28 - uint16(v93 >> 32) & 0x1f) << 5);
                            v143 = v144 = v86 + ((v93 >> 240) + 2 - 28 - uint16(v93 >> 32) & 0x1f) + (!((v93 >> 240) + 2 - 28 - uint16(v93 >> 32) & 0x1f) << 5) + (28 + v88 + uint16(v93 >> 32));
                            while (v141 < v142 + ((v93 >> 240) + 2 - 28 - uint16(v93 >> 32))) {
                                MEM[v141] = MEM[v143];
                                v141 += 32;
                                v143 += 32;
                            }
                            MEM[v140] = (v93 >> 240) + 2 - 28 - uint16(v93 >> 32);
                            MEM[64] = 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v141;
                        } else {
                            v140 = v145 = MEM[64];
                            MEM[v145] = 0;
                            MEM[64] = v145 + 32;
                        }
                        if (uint8(v93 >> 224)) {
                            if (uint8(v93 >> 224) - 2) {
                                if (uint8(v93 >> 224) - 1) {
                                    if (uint8(v93 >> 224) - 3) {
                                        if (uint8(v93 >> 224) - 7) {
                                            if (uint8(v93 >> 224) - 4) {
                                                if (uint8(v93 >> 224) - 9) {
                                                    require(!(uint8(v93 >> 224) - 6), Error('!data'));
                                                    v146 = this.balance;
                                                    MEM[MEM[64] + 32] = v146;
                                                    v147 = v148 = 64 + MEM[64];
                                                } else {
                                                    v149 = _uniswapV2Call;
                                                    MEM[MEM[64] + 32] = v149;
                                                    v147 = v150 = 64 + MEM[64];
                                                }
                                            } else {
                                                MEM[32 + MEM[64]] = v88;
                                                v147 = v151 = 64 + MEM[64];
                                            }
                                        } else {
                                            MCOPY(32 + MEM[64], v134 + 32, MEM[v134]);
                                            MEM[32 + MEM[64] + MEM[v134]] = 0;
                                            MCOPY(32 + MEM[64] + MEM[v134], v140 + 32, MEM[v140]);
                                            MEM[32 + MEM[64] + MEM[v134] + MEM[v140]] = 0;
                                            v152 = v153 = MEM[64];
                                            MEM[v153] = 32 + MEM[64] + MEM[v134] + MEM[v140] - v153 - 32;
                                            MEM[64] = 32 + MEM[64] + MEM[v134] + MEM[v140];
                                        }
                                    } else {
                                        MEM[32 + MEM[64]] = 0 - v88;
                                        v147 = v154 = 64 + MEM[64];
                                        // Unknown jump to Block 0x5a10x23bB0x1be. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    MEM[32 + MEM[64]] = 0 - v88;
                                    v147 = v155 = 64 + MEM[64];
                                    // Unknown jump to Block 0x5a10x23bB0x1be. Refer to 3-address code (TAC);
                                }
                            } else {
                                MEM[32 + MEM[64]] = v88;
                                v147 = v156 = 64 + MEM[64];
                                // Unknown jump to Block 0x5a10x23bB0x1be. Refer to 3-address code (TAC);
                            }
                        } else {
                            MEM[32 + MEM[64]] = v88;
                            v147 = 64 + MEM[64];
                        }
                        MEM[64] = v147;
                        MCOPY(32 + v147, v134 + 32, MEM[v134]);
                        MEM[32 + v147 + MEM[v134]] = 0;
                        MCOPY(32 + v147 + MEM[v134], MEM[64] + 32, v147 - MEM[64] - 32);
                        MEM[32 + v147 + MEM[v134] + (v147 - MEM[64] - 32)] = 0;
                        MCOPY(32 + v147 + MEM[v134] + (v147 - MEM[64] - 32), v140 + 32, MEM[v140]);
                        MEM[32 + v147 + MEM[v134] + (v147 - MEM[64] - 32) + MEM[v140]] = 0;
                        v152 = MEM[64];
                        MEM[v152] = 32 + v147 + MEM[v134] + (v147 - MEM[64] - 32) + MEM[v140] - v152 - 32;
                        MEM[64] = 32 + v147 + MEM[v134] + (v147 - MEM[64] - 32) + MEM[v140];
                        if (uint8(v93 >> 216) - 7) {
                            if (uint8(v93 >> 216)) {
                                if (uint8(v93 >> 216) - 2) {
                                    if (uint8(v93 >> 216) - 1) {
                                        if (uint8(v93 >> 216) - 3) {
                                            if (uint8(v93 >> 216) - 4) {
                                                if (uint8(v93 >> 216) - 9) {
                                                    require(!(uint8(v93 >> 216) - 6), Error('!value'));
                                                    v88 = v157 = this.balance;
                                                } else {
                                                    v88 = v158 = _uniswapV2Call;
                                                }
                                            }
                                        } else {
                                            v88 = v159 = 0 - v88;
                                        }
                                    } else {
                                        v88 = v160 = 0 - v88;
                                    }
                                }
                            }
                        } else {
                            v88 = v161 = 0;
                        }
                        MCOPY(MEM[64], v152 + 32, MEM[v152]);
                        MEM[MEM[64] + MEM[v152]] = 0;
                        v162 = address(v93 >> 48).call(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[v23b0x3d200V0x1be] - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v88).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v163 = v164 = 96;
                        } else {
                            v163 = v165 = MEM[64];
                            MEM[64] = v165 + (RETURNDATASIZE() + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            MEM[v165] = RETURNDATASIZE();
                            RETURNDATACOPY(v165 + 32, 0, RETURNDATASIZE());
                        }
                        if (!v162) {
                            if (uint8(v93 >> 208) != uint8.max) {
                                require(0 - MEM[v163], Error('!call'));
                                revert(32 + v163, MEM[v163]);
                            }
                        }
                        if (uint8(v93 >> 208)) {
                            v88 = v166 = MEM[v163 + (uint8(v93 >> 208) - 1 << 5) + 32];
                        }
                    }
                    v88 += (v93 >> 240) + 2;
                    continue;
                    // Unknown jump to Block 0x22160x23bB0x1be. Refer to 3-address code (TAC);
                }
                if (uint8(v3 >> 32)) {
                    MEM[MEM[64] + 32] = v88;
                    v0 = v167 = MEM[64];
                    MEM[64] = MEM[64] + 64;
                    if (!(uint8(v3 >> 32) - 2)) {
                        MEM[32 + MEM[64]] = 32;
                        MEM[32 + MEM[64] + 32] = 32;
                        MCOPY(32 + MEM[64] + 32 + 32, v167 + 32, 32);
                        MEM[32 + MEM[64] + 32 + 32 + 32] = 0;
                        v0 = v168 = MEM[64];
                        MEM[v168] = 96;
                    }
                }
            }
        }
    } else {
        require(20 <= msg.data.length);
        require(msg.data.length <= msg.data.length);
        v169 = new bytes[](msg.data.length - 20);
        CALLDATACOPY(v169.data, 20, msg.data.length - 20);
        v169[msg.data.length - 20] = 0;
        v170 = new bytes[](msg.data.length);
        CALLDATACOPY(v170.data, 0, msg.data.length);
        v170[msg.data.length] = 0;
        v171 = 0x523(0, uint128(msg.data.length), v169);
    }
    return MEM[32 + v49c_0x0:32 + v49c_0x0 + MEM[v49c_0x0]];
}
