// Decompiled by library.dedaub.com
// 2026.04.16 19:38 UTC
// Warning: 71.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _payCallback; // TRANSIENT_STORAGE[0x0]
uint256 tstor_1; // TRANSIENT_STORAGE[0x1]
uint256 ___function_selector__; // TRANSIENT_STORAGE[0x2]



function receiveFlashLoan(address[] function_selector, uint256[] varg1) public payable { 
    CALLDATACOPY(288, varg1.data, varg1.length);
    MEM[uint8.max + 1] = MSIZE();
    v0 = v1 = 288 + varg1.length;
    v0 = v2 = 288;
    while (1) {
        v0 = MEM[v0];
        v0 = v3 = v0 >> 240;
        if (0x8000 & v3) {
            v4 = address(v0);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v13e0x44e + 32:v13e0x44e + 32 + uint16(v13e0x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v0 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v0 >> 176)) {
                if (uint24(v0 >> 200)) {
                    if (uint24.max != uint24(v0 >> 200)) {
                        if (!(0x800000 & uint24(v0 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v0 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v0 >> 200) >> 12) % 32 + uint8(uint24(v0 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v0 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v0 >> 200), uint8(uint24(v0 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v0 >> 160);
        } else {
            if (uint24(v0 >> 176)) {
                if (uint24.max != uint24(v0 >> 176)) {
                    v15 = (0xfff & uint24(v0 >> 176)) + v0;
                    v16 = uint8(uint24(v0 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v0 >> 176)) * (7 == 0x7 & uint24(v0 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v0 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v0 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function onMorphoFlashLoan(uint256 function_selector, bytes data) public payable { 
    CALLDATACOPY(288, data.data, data.length);
    MEM[uint8.max + 1] = MSIZE();
    v0 = v1 = 288 + data.length;
    v0 = v2 = 288;
    while (1) {
        v0 = MEM[v0];
        v0 = v3 = v0 >> 240;
        if (0x8000 & v3) {
            v4 = address(v0);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v1610x44e + 32:v1610x44e + 32 + uint16(v1610x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v0 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v0 >> 176)) {
                if (uint24(v0 >> 200)) {
                    if (uint24.max != uint24(v0 >> 200)) {
                        if (!(0x800000 & uint24(v0 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v0 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v0 >> 200) >> 12) % 32 + uint8(uint24(v0 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v0 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v0 >> 200), uint8(uint24(v0 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v0 >> 160);
        } else {
            if (uint24(v0 >> 176)) {
                if (uint24.max != uint24(v0 >> 176)) {
                    v15 = (0xfff & uint24(v0 >> 176)) + v0;
                    v16 = uint8(uint24(v0 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v0 >> 176)) * (7 == 0x7 & uint24(v0 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v0 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v0 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function unlockCallback(bytes4 function_selector, uint256 varg1) public payable { 
    CALLDATACOPY(288, 68, varg1);
    MEM[uint8.max + 1] = MSIZE();
    v0 = v1 = 288 + varg1;
    v0 = v2 = 288;
    while (1) {
        v0 = MEM[v0];
        v0 = v3 = v0 >> 240;
        if (0x8000 & v3) {
            v4 = address(v0);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v1840x44e + 32:v1840x44e + 32 + uint16(v1840x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v0 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v0 >> 176)) {
                if (uint24(v0 >> 200)) {
                    if (uint24.max != uint24(v0 >> 200)) {
                        if (!(0x800000 & uint24(v0 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v0 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v0 >> 200) >> 12) % 32 + uint8(uint24(v0 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v0 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v0 >> 200), uint8(uint24(v0 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v0 >> 160);
        } else {
            if (uint24(v0 >> 176)) {
                if (uint24.max != uint24(v0 >> 176)) {
                    v15 = (0xfff & uint24(v0 >> 176)) + v0;
                    v16 = uint8(uint24(v0 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v0 >> 176)) * (7 == 0x7 & uint24(v0 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v0 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v0 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function 0x87e05e5a(uint256 function_selector) public payable { 
    CALLDATACOPY(288, 6, msg.data.length - 6);
    MEM[uint8.max + 1] = MSIZE();
    v0 = v1 = 288 + (msg.data.length - 6);
    v0 = v2 = 288;
    while (1) {
        v0 = MEM[v0];
        v0 = v3 = v0 >> 240;
        if (0x8000 & v3) {
            v4 = address(v0);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v1a30x44e + 32:v1a30x44e + 32 + uint16(v1a30x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v0 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v0 >> 176)) {
                if (uint24(v0 >> 200)) {
                    if (uint24.max != uint24(v0 >> 200)) {
                        if (!(0x800000 & uint24(v0 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v0 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v0 >> 200) >> 12) % 32 + uint8(uint24(v0 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v0 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v0 >> 200), uint8(uint24(v0 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v0 >> 160);
        } else {
            if (uint24(v0 >> 176)) {
                if (uint24.max != uint24(v0 >> 176)) {
                    v15 = (0xfff & uint24(v0 >> 176)) + v0;
                    v16 = uint8(uint24(v0 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v0 >> 176)) * (7 == 0x7 & uint24(v0 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v0 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v0 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function swapCallback(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    if (20 == varg3.word0) {
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = varg1;
        v0 = (varg3.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        MEM[64] = varg1;
        MEM[32] = varg2;
        MEM[0] = 64;
        CALLDATACOPY(288, varg3.data, varg3.word0.length);
        MEM[uint8.max + 1] = MSIZE();
        v1 = 288 + varg3.word0.length;
        v1 = v2 = 288;
        while (1) {
            v1 = v3 = MEM[v1];
            v1 = v4 = v3 >> 240;
            if (0x8000 & v4) {
                v5 = address(v3);
                if (6 >= v5) {
                    if (!v5) {
                        v5 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else if (1 == v5) {
                        v5 = v7 = this;
                    } else if (2 == v5) {
                        v5 = v8 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    } else if (3 == v5) {
                        v5 = v9 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                    } else if (4 == v5) {
                        v5 = v10 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    } else {
                        v5 = v11 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                    }
                }
                v12 = v5.call(MEM[v1c00x347 + 32:v1c00x347 + 32 + uint16(v1c00x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v3 >> 176).gas(msg.gas);
                require(v12, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!(0x7fffffffffffffffffff & v3 >> 176)) {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v13 = v14 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v13 = MEM[0];
                            }
                            MEM[0] = v13 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                }
                v15 = 32 + uint16(v3 >> 160);
            } else {
                if (uint24(v3 >> 176)) {
                    if (uint24.max != uint24(v3 >> 176)) {
                        v16 = (0xfff & uint24(v3 >> 176)) + v1;
                        v17 = uint8(uint24(v3 >> 176) >> 12);
                        if (v17) {
                            if (!((0x800000 & uint24(v3 >> 176)) * (7 == 0x7 & uint24(v3 >> 176) >> 20))) {
                                v18 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v3 >> 176)) {
                                    v18 = v19 = MEM[0] - (v18 - 32);
                                }
                                while (v17) {
                                    if (32 > v17) {
                                        MEM[v16] = MEM[v16] & ~((1 << (v17 << 3)) - 1) | MEM[v18] & (1 << (v17 << 3)) - 1;
                                        break;
                                    } else {
                                        MEM[v16] = MEM[v18];
                                        v16 += 32;
                                        v18 += 32;
                                        v17 = v17 - 32;
                                    }
                                }
                            } else {
                                if (!(0x800 & v4)) {
                                    v20 = v21 = _payCallback;
                                } else {
                                    v20 = tstor_1;
                                }
                                MEM[v1 + (32 + (0x7ff & v4))] = v20;
                            }
                        }
                    }
                }
                if (!uint16(v1)) {
                    v15 = uint16.max + v1;
                } else {
                    break;
                }
            }
            v1 += v15;
            if (v1 >= v1) {
                if (0xf04f2707 == function_selector >> 224) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else {
                    return MEM[MEM[0]:MEM[0] + 32];
                }
            }
        }
    }
}

function receiveFlashLoan(address[] varg0, uint256[] varg1, uint256[] varg2) public payable { 
    MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
    MEM[32 + MEM[uint8.max + 1]] = msg.sender;
    MEM[64 + MEM[uint8.max + 1]] = msg.data[36 + varg2] + msg.data[36 + varg1];
    v0 = msg.data[36 + varg0].call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
    return ;
}

function unlockCallback() public payable { 
    return 32, 32, MEM[MEM[0]];
}

function dexCallback(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    v0 = (varg1 >> 96).transfer(0x52aa899454998be5b000ad077a46bbe360f4e497, varg2).gas(msg.gas);
    if (68 > msg.data.length) {
        CALLDATACOPY(288, 100, varg3);
        MEM[uint8.max + 1] = MSIZE();
        v1 = 288 + varg3;
        v1 = v2 = 288;
        while (1) {
            v1 = v3 = MEM[v1];
            v1 = v4 = v3 >> 240;
            if (0x8000 & v4) {
                v5 = address(v3);
                if (6 >= v5) {
                    if (!v5) {
                        v5 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else if (1 == v5) {
                        v5 = v7 = this;
                    } else if (2 == v5) {
                        v5 = v8 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    } else if (3 == v5) {
                        v5 = v9 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                    } else if (4 == v5) {
                        v5 = v10 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    } else {
                        v5 = v11 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                    }
                }
                v12 = v5.call(MEM[v1fc0x347 + 32:v1fc0x347 + 32 + uint16(v1fc0x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v3 >> 176).gas(msg.gas);
                require(v12, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!(0x7fffffffffffffffffff & v3 >> 176)) {
                    if (uint24(v3 >> 200)) {
                        if (uint24.max != uint24(v3 >> 200)) {
                            if (!(0x800000 & uint24(v3 >> 200))) {
                                v13 = v14 = (0x7 & uint24(v3 >> 200) >> 20) << 5;
                            } else {
                                v13 = MEM[0];
                            }
                            MEM[0] = v13 + (uint8(uint24(v3 >> 200) >> 12) % 32 + uint8(uint24(v3 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v3 >> 200) >> 12) % 32 + v13), 0xfff & uint24(v3 >> 200), uint8(uint24(v3 >> 200) >> 12));
                        }
                    }
                }
                v15 = 32 + uint16(v3 >> 160);
            } else {
                if (uint24(v3 >> 176)) {
                    if (uint24.max != uint24(v3 >> 176)) {
                        v16 = (0xfff & uint24(v3 >> 176)) + v1;
                        v17 = uint8(uint24(v3 >> 176) >> 12);
                        if (v17) {
                            if (!((0x800000 & uint24(v3 >> 176)) * (7 == 0x7 & uint24(v3 >> 176) >> 20))) {
                                v18 = 32 + ((0x7 & uint24(v3 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v3 >> 176)) {
                                    v18 = v19 = MEM[0] - (v18 - 32);
                                }
                                while (v17) {
                                    if (32 > v17) {
                                        MEM[v16] = MEM[v16] & ~((1 << (v17 << 3)) - 1) | MEM[v18] & (1 << (v17 << 3)) - 1;
                                        break;
                                    } else {
                                        MEM[v16] = MEM[v18];
                                        v16 += 32;
                                        v18 += 32;
                                        v17 = v17 - 32;
                                    }
                                }
                            } else {
                                if (!(0x800 & v4)) {
                                    v20 = v21 = _payCallback;
                                } else {
                                    v20 = tstor_1;
                                }
                                MEM[v1 + (32 + (0x7ff & v4))] = v20;
                            }
                        }
                    }
                }
                if (!uint16(v1)) {
                    v15 = uint16.max + v1;
                } else {
                    break;
                }
            }
            v1 += v15;
            if (v1 >= v1) {
                if (0xf04f2707 == function_selector >> 224) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else {
                    return MEM[MEM[0]:MEM[0] + 32];
                }
            }
        }
    } else {
        return ;
    }
}

function maverickV2SwapCallback(address function_selector, uint256 varg1) public payable { 
    CALLDATACOPY(288, 164, varg1);
    MEM[uint8.max + 1] = MSIZE();
    v0 = 288 + varg1;
    v0 = v1 = 288;
    while (1) {
        v0 = v2 = MEM[v0];
        v0 = v3 = v2 >> 240;
        if (0x8000 & v3) {
            v4 = address(v2);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v2470x347 + 32:v2470x347 + 32 + uint16(v2470x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v2 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v2 >> 176)) {
                if (uint24(v2 >> 200)) {
                    if (uint24.max != uint24(v2 >> 200)) {
                        if (!(0x800000 & uint24(v2 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v2 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v2 >> 200) >> 12) % 32 + uint8(uint24(v2 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v2 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v2 >> 200), uint8(uint24(v2 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v2 >> 160);
        } else {
            if (uint24(v2 >> 176)) {
                if (uint24.max != uint24(v2 >> 176)) {
                    v15 = (0xfff & uint24(v2 >> 176)) + v0;
                    v16 = uint8(uint24(v2 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v2 >> 176)) * (7 == 0x7 & uint24(v2 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v2 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v2 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function locked(bytes4 function_selector, uint256 varg1) public payable { 
    CALLDATACOPY(288, 68, varg1);
    MEM[uint8.max + 1] = MSIZE();
    v0 = v1 = 288 + varg1;
    v0 = v2 = 288;
    while (1) {
        v0 = MEM[v0];
        v0 = v3 = v0 >> 240;
        if (0x8000 & v3) {
            v4 = address(v0);
            if (6 >= v4) {
                if (!v4) {
                    v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == v4) {
                    v4 = v6 = this;
                } else if (2 == v4) {
                    v4 = v7 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (3 == v4) {
                    v4 = v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == v4) {
                    v4 = v9 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    v4 = v10 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            }
            v11 = v4.call(MEM[v24f0x44e + 32:v24f0x44e + 32 + uint16(v24f0x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v0 >> 176).gas(msg.gas);
            require(v11, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            if (!(0x7fffffffffffffffffff & v0 >> 176)) {
                if (uint24(v0 >> 200)) {
                    if (uint24.max != uint24(v0 >> 200)) {
                        if (!(0x800000 & uint24(v0 >> 200))) {
                            v12 = v13 = (0x7 & uint24(v0 >> 200) >> 20) << 5;
                        } else {
                            v12 = MEM[0];
                        }
                        MEM[0] = v12 + (uint8(uint24(v0 >> 200) >> 12) % 32 + uint8(uint24(v0 >> 200) >> 12));
                        RETURNDATACOPY(32 + (uint8(uint24(v0 >> 200) >> 12) % 32 + v12), 0xfff & uint24(v0 >> 200), uint8(uint24(v0 >> 200) >> 12));
                    }
                }
            }
            v14 = 32 + uint16(v0 >> 160);
        } else {
            if (uint24(v0 >> 176)) {
                if (uint24.max != uint24(v0 >> 176)) {
                    v15 = (0xfff & uint24(v0 >> 176)) + v0;
                    v16 = uint8(uint24(v0 >> 176) >> 12);
                    if (v16) {
                        if (!((0x800000 & uint24(v0 >> 176)) * (7 == 0x7 & uint24(v0 >> 176) >> 20))) {
                            v17 = 32 + ((0x7 & uint24(v0 >> 176) >> 20) << 5);
                            if (0x800000 & uint24(v0 >> 176)) {
                                v17 = v18 = MEM[0] - (v17 - 32);
                            }
                            while (v16) {
                                if (32 > v16) {
                                    MEM[v15] = MEM[v15] & ~((1 << (v16 << 3)) - 1) | MEM[v17] & (1 << (v16 << 3)) - 1;
                                    break;
                                } else {
                                    MEM[v15] = MEM[v17];
                                    v15 += 32;
                                    v17 += 32;
                                    v16 = v16 - 32;
                                }
                            }
                        } else {
                            if (!(0x800 & v3)) {
                                v19 = v20 = _payCallback;
                            } else {
                                v19 = tstor_1;
                            }
                            MEM[v0 + (32 + (0x7ff & v3))] = v19;
                        }
                    }
                }
            }
            if (!uint16(v0)) {
                v14 = uint16.max + v0;
            } else {
                break;
            }
        }
        v0 += v14;
        if (v0 >= v0) {
            if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else {
                return MEM[MEM[0]:MEM[0] + 32];
            }
        }
    }
}

function payCallback(uint256 varg0) public payable { 
    v0 = varg0.transfer(msg.sender, _payCallback).gas(msg.gas);
    return ;
}

function isValidSignature() public payable { 
    return 0x1626ba7e00000000000000000000000000000000000000000000000000000000;
}

function isValidSignature() public payable { 
    return 0x20c13b0b00000000000000000000000000000000000000000000000000000000;
}

function uniswapV3SwapCallback(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    if (20 == varg3.word0) {
        if (varg1 >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (varg3.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        if (varg1 < 0) {
            MEM[32] = varg1 << 256;
            MEM[64] = varg2;
        } else {
            MEM[64] = varg1;
            MEM[32] = varg2 << 256;
        }
        MEM[0] = 64;
        CALLDATACOPY(288, varg3.data, varg3.word0.length);
        MEM[uint8.max + 1] = MSIZE();
        v2 = 288 + varg3.word0.length;
        v2 = v3 = 288;
        while (1) {
            v2 = v4 = MEM[v2];
            v2 = v5 = v4 >> 240;
            if (0x8000 & v5) {
                v6 = address(v4);
                if (6 >= v6) {
                    if (!v6) {
                        v6 = v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else if (1 == v6) {
                        v6 = v8 = this;
                    } else if (2 == v6) {
                        v6 = v9 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    } else if (3 == v6) {
                        v6 = v10 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                    } else if (4 == v6) {
                        v6 = v11 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    } else {
                        v6 = v12 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                    }
                }
                v13 = v6.call(MEM[v5f4270x347 + 32:v5f4270x347 + 32 + uint16(v5f4270x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
                require(v13, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            if (!(0x800000 & uint24(v4 >> 200))) {
                                v14 = v15 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            } else {
                                v14 = MEM[0];
                            }
                            MEM[0] = v14 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v14), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v16 = 32 + uint16(v4 >> 160);
            } else {
                if (uint24(v4 >> 176)) {
                    if (uint24.max != uint24(v4 >> 176)) {
                        v17 = (0xfff & uint24(v4 >> 176)) + v2;
                        v18 = uint8(uint24(v4 >> 176) >> 12);
                        if (v18) {
                            if (!((0x800000 & uint24(v4 >> 176)) * (7 == 0x7 & uint24(v4 >> 176) >> 20))) {
                                v19 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v4 >> 176)) {
                                    v19 = v20 = MEM[0] - (v19 - 32);
                                }
                                while (v18) {
                                    if (32 > v18) {
                                        MEM[v17] = MEM[v17] & ~((1 << (v18 << 3)) - 1) | MEM[v19] & (1 << (v18 << 3)) - 1;
                                        break;
                                    } else {
                                        MEM[v17] = MEM[v19];
                                        v17 += 32;
                                        v19 += 32;
                                        v18 = v18 - 32;
                                    }
                                }
                            } else {
                                if (!(0x800 & v5)) {
                                    v21 = v22 = _payCallback;
                                } else {
                                    v21 = tstor_1;
                                }
                                MEM[v2 + (32 + (0x7ff & v5))] = v21;
                            }
                        }
                    }
                }
                if (!uint16(v2)) {
                    v16 = uint16.max + v2;
                } else {
                    break;
                }
            }
            v2 += v16;
            if (v2 >= v2) {
                if (0xf04f2707 == function_selector >> 224) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else {
                    return MEM[MEM[0]:MEM[0] + 32];
                }
            }
        }
    }
}

function pancakeV3SwapCallback(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    if (20 == varg3.word0) {
        if (varg1 >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (varg3.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        if (varg1 < 0) {
            MEM[32] = varg1 << 256;
            MEM[64] = varg2;
        } else {
            MEM[64] = varg1;
            MEM[32] = varg2 << 256;
        }
        MEM[0] = 64;
        CALLDATACOPY(288, varg3.data, varg3.word0.length);
        MEM[uint8.max + 1] = MSIZE();
        v2 = 288 + varg3.word0.length;
        v2 = v3 = 288;
        while (1) {
            v2 = v4 = MEM[v2];
            v2 = v5 = v4 >> 240;
            if (0x8000 & v5) {
                v6 = address(v4);
                if (6 >= v6) {
                    if (!v6) {
                        v6 = v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else if (1 == v6) {
                        v6 = v8 = this;
                    } else if (2 == v6) {
                        v6 = v9 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    } else if (3 == v6) {
                        v6 = v10 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                    } else if (4 == v6) {
                        v6 = v11 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    } else {
                        v6 = v12 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                    }
                }
                v13 = v6.call(MEM[v689860x347 + 32:v689860x347 + 32 + uint16(v689860x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
                require(v13, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            if (!(0x800000 & uint24(v4 >> 200))) {
                                v14 = v15 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            } else {
                                v14 = MEM[0];
                            }
                            MEM[0] = v14 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v14), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v16 = 32 + uint16(v4 >> 160);
            } else {
                if (uint24(v4 >> 176)) {
                    if (uint24.max != uint24(v4 >> 176)) {
                        v17 = (0xfff & uint24(v4 >> 176)) + v2;
                        v18 = uint8(uint24(v4 >> 176) >> 12);
                        if (v18) {
                            if (!((0x800000 & uint24(v4 >> 176)) * (7 == 0x7 & uint24(v4 >> 176) >> 20))) {
                                v19 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v4 >> 176)) {
                                    v19 = v20 = MEM[0] - (v19 - 32);
                                }
                                while (v18) {
                                    if (32 > v18) {
                                        MEM[v17] = MEM[v17] & ~((1 << (v18 << 3)) - 1) | MEM[v19] & (1 << (v18 << 3)) - 1;
                                        break;
                                    } else {
                                        MEM[v17] = MEM[v19];
                                        v17 += 32;
                                        v19 += 32;
                                        v18 = v18 - 32;
                                    }
                                }
                            } else {
                                if (!(0x800 & v5)) {
                                    v21 = v22 = _payCallback;
                                } else {
                                    v21 = tstor_1;
                                }
                                MEM[v2 + (32 + (0x7ff & v5))] = v21;
                            }
                        }
                    }
                }
                if (!uint16(v2)) {
                    v16 = uint16.max + v2;
                } else {
                    break;
                }
            }
            v2 += v16;
            if (v2 >= v2) {
                if (0xf04f2707 == function_selector >> 224) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else {
                    return MEM[MEM[0]:MEM[0] + 32];
                }
            }
        }
    }
}

function algebraSwapCallback(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    if (20 == varg3.word0) {
        if (varg1 >= 0) {
        }
        MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
        MEM[32 + MEM[uint8.max + 1]] = msg.sender;
        MEM[64 + MEM[uint8.max + 1]] = v0;
        v1 = (varg3.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
        return ;
    } else {
        if (varg1 < 0) {
            MEM[32] = varg1 << 256;
            MEM[64] = varg2;
        } else {
            MEM[64] = varg1;
            MEM[32] = varg2 << 256;
        }
        MEM[0] = 64;
        CALLDATACOPY(288, varg3.data, varg3.word0.length);
        MEM[uint8.max + 1] = MSIZE();
        v2 = 288 + varg3.word0.length;
        v2 = v3 = 288;
        while (1) {
            v2 = v4 = MEM[v2];
            v2 = v5 = v4 >> 240;
            if (0x8000 & v5) {
                v6 = address(v4);
                if (6 >= v6) {
                    if (!v6) {
                        v6 = v7 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else if (1 == v6) {
                        v6 = v8 = this;
                    } else if (2 == v6) {
                        v6 = v9 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    } else if (3 == v6) {
                        v6 = v10 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                    } else if (4 == v6) {
                        v6 = v11 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    } else {
                        v6 = v12 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                    }
                }
                v13 = v6.call(MEM[v71ee50x347 + 32:v71ee50x347 + 32 + uint16(v71ee50x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v4 >> 176).gas(msg.gas);
                require(v13, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                if (!(0x7fffffffffffffffffff & v4 >> 176)) {
                    if (uint24(v4 >> 200)) {
                        if (uint24.max != uint24(v4 >> 200)) {
                            if (!(0x800000 & uint24(v4 >> 200))) {
                                v14 = v15 = (0x7 & uint24(v4 >> 200) >> 20) << 5;
                            } else {
                                v14 = MEM[0];
                            }
                            MEM[0] = v14 + (uint8(uint24(v4 >> 200) >> 12) % 32 + uint8(uint24(v4 >> 200) >> 12));
                            RETURNDATACOPY(32 + (uint8(uint24(v4 >> 200) >> 12) % 32 + v14), 0xfff & uint24(v4 >> 200), uint8(uint24(v4 >> 200) >> 12));
                        }
                    }
                }
                v16 = 32 + uint16(v4 >> 160);
            } else {
                if (uint24(v4 >> 176)) {
                    if (uint24.max != uint24(v4 >> 176)) {
                        v17 = (0xfff & uint24(v4 >> 176)) + v2;
                        v18 = uint8(uint24(v4 >> 176) >> 12);
                        if (v18) {
                            if (!((0x800000 & uint24(v4 >> 176)) * (7 == 0x7 & uint24(v4 >> 176) >> 20))) {
                                v19 = 32 + ((0x7 & uint24(v4 >> 176) >> 20) << 5);
                                if (0x800000 & uint24(v4 >> 176)) {
                                    v19 = v20 = MEM[0] - (v19 - 32);
                                }
                                while (v18) {
                                    if (32 > v18) {
                                        MEM[v17] = MEM[v17] & ~((1 << (v18 << 3)) - 1) | MEM[v19] & (1 << (v18 << 3)) - 1;
                                        break;
                                    } else {
                                        MEM[v17] = MEM[v19];
                                        v17 += 32;
                                        v19 += 32;
                                        v18 = v18 - 32;
                                    }
                                }
                            } else {
                                if (!(0x800 & v5)) {
                                    v21 = v22 = _payCallback;
                                } else {
                                    v21 = tstor_1;
                                }
                                MEM[v2 + (32 + (0x7ff & v5))] = v21;
                            }
                        }
                    }
                }
                if (!uint16(v2)) {
                    v16 = uint16.max + v2;
                } else {
                    break;
                }
            }
            v2 += v16;
            if (v2 >= v2) {
                if (0xf04f2707 == function_selector >> 224) {
                    receiveFlashLoan(address[],uint256[],uint256[],bytes);
                } else if (0x91dd7346 == function_selector >> 224) {
                    unlockCallback(bytes);
                } else {
                    return MEM[MEM[0]:MEM[0] + 32];
                }
            }
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    if (___function_selector__) {
        ___function_selector__ = 1;
        if (msg.data.length) {
            if (0x87e05e5a == function_selector >> 224) {
                0x87e05e5a();
            } else if (0xfa461e33 == function_selector >> 224) {
                uniswapV3SwapCallback(int256,int256,bytes);
            } else if (0x23a69e75 == function_selector >> 224) {
                pancakeV3SwapCallback(int256,int256,bytes);
            } else if (0x2c8958f6 == function_selector >> 224) {
                algebraSwapCallback(int256,int256,bytes);
            } else if (0xf04f2707 == function_selector >> 224) {
                receiveFlashLoan(address[],uint256[],uint256[],bytes);
            } else if (0x31f57072 == function_selector >> 224) {
                onMorphoFlashLoan(uint256,bytes);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else if (0x923b8a2a == function_selector >> 224) {
                swapCallback(uint256,uint256,bytes);
            } else if (0x9410ae88 == function_selector >> 224) {
                dexCallback(address,uint256);
            } else if (0x67ca7c91 == function_selector >> 224) {
                maverickV2SwapCallback(address,uint256,uint256,bytes);
            } else if (0xb45a3c0e == function_selector >> 224) {
                locked(uint256);
            } else {
                if (0 == function_selector >> 224) {
                    CALLDATACOPY(288, 68, varg2);
                    MEM[uint8.max + 1] = MSIZE();
                    v0 = v1 = 288 + varg2;
                    v0 = v2 = 288;
                } else if (0x599d0714 == function_selector >> 224) {
                    payCallback(uint256,address);
                } else if (0x20c13b0b == function_selector >> 224) {
                    isValidSignature(bytes,bytes);
                } else if (0x1626ba7e == function_selector >> 224) {
                    isValidSignature(bytes32,bytes);
                } else {
                    if (128 == varg4) {
                        if (20 == varg4.length) {
                            if (!varg2) {
                                MEM[MEM[uint8.max + 1]] = 0x902f1ac;
                                v3 = msg.sender.staticcall(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 4], MEM[MEM[uint8.max + 1]:MEM[uint8.max + 1] + 96]).gas(msg.gas);
                                if (!v3) {
                                    v4 = v5 = 0;
                                    v6 = v7 = 0;
                                } else {
                                    v4 = v8 = MEM[32 + MEM[uint8.max + 1]];
                                    v6 = v9 = 0x902f1ac;
                                }
                                v10 = v11 = 1 + 10000 * (varg3 * v6) / ((msg.data[32 + varg5] >> 96) * (v4 - varg3));
                            } else {
                                MEM[MEM[uint8.max + 1]] = 0x902f1ac;
                                v12 = msg.sender.staticcall(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 4], MEM[MEM[uint8.max + 1]:MEM[uint8.max + 1] + 96]).gas(msg.gas);
                                if (!v12) {
                                    v13 = v14 = 0;
                                    v15 = v16 = 0;
                                } else {
                                    v13 = v17 = MEM[32 + MEM[uint8.max + 1]];
                                    v15 = v18 = 0x902f1ac;
                                }
                                v10 = v19 = 1 + 10000 * (varg2 * v13) / ((msg.data[32 + varg5] >> 96) * (v15 - varg2));
                            }
                            MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
                            MEM[32 + MEM[uint8.max + 1]] = msg.sender;
                            MEM[64 + MEM[uint8.max + 1]] = v10;
                            v20 = varg4.call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
                            return ;
                        } else {
                            if (!varg2) {
                                MEM[32] = varg3;
                            } else {
                                MEM[32] = varg2;
                            }
                            MEM[0] = 32;
                            v21 = v22 = 4 + varg4;
                        }
                    } else if (96 == varg3) {
                        if (20 == varg3.word0) {
                            if (varg1 >= 0) {
                            }
                            MEM[MEM[uint8.max + 1]] = 0xa9059cbb;
                            MEM[32 + MEM[uint8.max + 1]] = msg.sender;
                            MEM[64 + MEM[uint8.max + 1]] = v23;
                            v24 = (varg3.word1 >> 96).call(MEM[28 + MEM[uint8.max + 1]:28 + MEM[uint8.max + 1] + 68], MEM[0:0]).gas(msg.gas);
                            return ;
                        } else {
                            if (varg1 < 0) {
                                MEM[32] = varg1 << 256;
                                MEM[64] = varg2;
                            } else {
                                MEM[64] = varg1;
                                MEM[32] = varg2 << 256;
                            }
                            MEM[0] = 64;
                            v21 = 4 + varg3;
                        }
                    } else if (32 == varg1) {
                        v21 = v25 = 4 + varg1;
                    } else if (64 == varg2) {
                        v21 = v26 = 4 + varg2;
                    } else if (160 == varg5) {
                        v21 = v27 = 4 + varg5;
                    }
                    CALLDATACOPY(288, 32 + v21, msg.data[v21]);
                    MEM[uint8.max + 1] = MSIZE();
                    v0 = 288 + msg.data[v21];
                    v0 = v28 = 288;
                }
                while (1) {
                    v0 = v29 = MEM[v0];
                    v0 = v30 = v29 >> 240;
                    if (0x8000 & v30) {
                        v31 = address(v29);
                        if (6 >= v31) {
                            if (!v31) {
                                v31 = v32 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                            } else if (1 == v31) {
                                v31 = v33 = this;
                            } else if (2 == v31) {
                                v31 = v34 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                            } else if (3 == v31) {
                                v31 = v35 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                            } else if (4 == v31) {
                                v31 = v36 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                            } else {
                                v31 = v37 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                            }
                        }
                        v38 = v31.call(MEM[v00x347 + 32:v00x347 + 32 + uint16(v00x44e >> 160)], MEM[0:0]).value(0x7fffffffffffffffffff & v29 >> 176).gas(msg.gas);
                        require(v38, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        if (!(0x7fffffffffffffffffff & v29 >> 176)) {
                            if (uint24(v29 >> 200)) {
                                if (uint24.max != uint24(v29 >> 200)) {
                                    if (!(0x800000 & uint24(v29 >> 200))) {
                                        v39 = v40 = (0x7 & uint24(v29 >> 200) >> 20) << 5;
                                    } else {
                                        v39 = MEM[0];
                                    }
                                    MEM[0] = v39 + (uint8(uint24(v29 >> 200) >> 12) % 32 + uint8(uint24(v29 >> 200) >> 12));
                                    RETURNDATACOPY(32 + (uint8(uint24(v29 >> 200) >> 12) % 32 + v39), 0xfff & uint24(v29 >> 200), uint8(uint24(v29 >> 200) >> 12));
                                }
                            }
                        }
                        v41 = 32 + uint16(v29 >> 160);
                    } else {
                        if (uint24(v29 >> 176)) {
                            if (uint24.max != uint24(v29 >> 176)) {
                                v42 = (0xfff & uint24(v29 >> 176)) + v0;
                                v43 = uint8(uint24(v29 >> 176) >> 12);
                                if (v43) {
                                    if (!((0x800000 & uint24(v29 >> 176)) * (7 == 0x7 & uint24(v29 >> 176) >> 20))) {
                                        v44 = 32 + ((0x7 & uint24(v29 >> 176) >> 20) << 5);
                                        if (0x800000 & uint24(v29 >> 176)) {
                                            v44 = v45 = MEM[0] - (v44 - 32);
                                        }
                                        while (v43) {
                                            if (32 > v43) {
                                                MEM[v42] = MEM[v42] & ~((1 << (v43 << 3)) - 1) | MEM[v44] & (1 << (v43 << 3)) - 1;
                                                break;
                                            } else {
                                                MEM[v42] = MEM[v44];
                                                v42 += 32;
                                                v44 += 32;
                                                v43 = v43 - 32;
                                            }
                                        }
                                    } else {
                                        if (!(0x800 & v30)) {
                                            v46 = v47 = _payCallback;
                                        } else {
                                            v46 = tstor_1;
                                        }
                                        MEM[v0 + (32 + (0x7ff & v30))] = v46;
                                    }
                                }
                            }
                        }
                        if (!uint16(v0)) {
                            v41 = uint16.max + v0;
                        } else {
                            break;
                        }
                    }
                    v0 += v41;
                    if (v0 >= v0) {
                        if (0xf04f2707 == function_selector >> 224) {
                            receiveFlashLoan(address[],uint256[],uint256[],bytes);
                        } else if (0x91dd7346 == function_selector >> 224) {
                            unlockCallback(bytes);
                        } else {
                            return MEM[MEM[0]:MEM[0] + 32];
                        }
                    }
                }
            }
        }
        return ;
    }
}
