// Decompiled by library.dedaub.com
// 2025.12.15 01:26 UTC

// Data structures and variables inferred from the use of storage instructions
address tstor_0_0_19; // TRANSIENT_STORAGE[0x0] bytes 0 to 19
uint8 tstor_0_27_27; // TRANSIENT_STORAGE[0x0] bytes 27 to 27
uint32 ___function_selector__; // TRANSIENT_STORAGE[0x0] bytes 28 to 31



function 0x22222222(uint256 varg0, uint256 varg1) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    v0 = v1 = 0;
    v2 = v3 = 5;
    if (!(varg0 >> 248)) {
        MEM[0] = MEM[0];
        v0 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (1 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
    } else if (2 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x6b175474e89094c44da98b954eedeac495271d0f;
    } else if (3 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v7 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
    } else if (4 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v8 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
    } else if (5 == varg0 >> 248) {
        v0 = v9 = varg1 >> 96;
        v2 = v10 = 25;
    }
    v11 = v2 + (msg.data[v2 + 1] >> 248);
    if (2 == msg.data[v11 + 5] >> 248) {
        require(!(msg.value - block.timestamp));
    } else if (1 == msg.data[v11 + 5] >> 248) {
        if (!(msg.data[v11 + 6] >> 248)) {
            v12 = (msg.data[msg.data[v11 + 7] >> 240] >> 96).getReserves().gas(msg.gas);
            require(v12);
            require(!((msg.data[v11 + 9] >> 144) - MEM[32]));
            require(!((msg.data[v11 + 23] >> 144) - MEM[64]));
        } else if (!(1 - (msg.data[v11 + 6] >> 248))) {
            v13 = (msg.data[msg.data[v11 + 7] >> 240] >> 96).slot0().gas(msg.gas);
            require(v13);
            require(!((msg.data[v11 + 9] >> 96) - MEM[32]));
        }
    } else if (3 == msg.data[v11 + 5] >> 248) {
        if (uint16(block.coinbase.balance) == msg.data[1 + (v11 + 5)] >> 240) {
            while (msg.gas > msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff63c0) {
                MEM[0] = 3;
            }
            exit;
        }
    }
    CALLDATACOPY(292, v11 + 4, msg.data[v11 + 2] >> 240);
    v14 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(0x5c38449e00000000000000000000000000000000000000000000000000000000, this, 128, 192, uint8.max + 1, 1, v0, 1, msg.data[v2 + 2] >> (msg.data[v2] >> 248), msg.data[v11 + 2] >> 240).gas(msg.gas);
    require(v14);
}

function 0x99999999(uint256 varg0, uint256 varg1) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    v0 = v1 = 0;
    v2 = v3 = 5;
    if (!(varg0 >> 248)) {
        MEM[0] = MEM[0];
        v0 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (1 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v5 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
    } else if (2 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v6 = 0x6b175474e89094c44da98b954eedeac495271d0f;
    } else if (3 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v7 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
    } else if (4 == varg0 >> 248) {
        MEM[0] = MEM[0];
        v0 = v8 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
    } else if (5 == varg0 >> 248) {
        v0 = v9 = varg1 >> 96;
        v2 = v10 = 25;
    }
    v11 = v2 + (msg.data[v2 + 1] >> 248);
    if (2 == msg.data[v11 + 5] >> 248) {
        require(!(msg.value - block.timestamp));
    } else if (1 == msg.data[v11 + 5] >> 248) {
        if (!(msg.data[v11 + 6] >> 248)) {
            v12 = (msg.data[msg.data[v11 + 7] >> 240] >> 96).getReserves().gas(msg.gas);
            require(v12);
            require(!((msg.data[v11 + 9] >> 144) - MEM[32]));
            require(!((msg.data[v11 + 23] >> 144) - MEM[64]));
        } else if (!(1 - (msg.data[v11 + 6] >> 248))) {
            v13 = (msg.data[msg.data[v11 + 7] >> 240] >> 96).slot0().gas(msg.gas);
            require(v13);
            require(!((msg.data[v11 + 9] >> 96) - MEM[32]));
        }
    } else if (3 == msg.data[v11 + 5] >> 248) {
        if (uint16(block.coinbase.balance) == msg.data[1 + (v11 + 5)] >> 240) {
            while (msg.gas > msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff63c0) {
                MEM[0] = 3;
            }
            exit;
        }
    }
    CALLDATACOPY(132, v11 + 4, msg.data[v11 + 2] >> 240);
    v14 = 0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb.flashLoan(v0, msg.data[v2 + 2] >> (msg.data[v2] >> 248), 96, msg.data[v11 + 2] >> 240).gas(msg.gas);
    require(v14);
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public payable { 
    v0 = v1 = varg1 >> 96;
    v0 = v2 = varg2 >> 96;
    v3 = v4 = 118;
    v5 = v6 = 0;
    if (varg6 >> 248 == 1) {
        v5 = v7 = varg8 >> 232 << (varg7 >> 248);
        v3 = v8 = 122;
    }
    if (3 == msg.data[v3] >> 248) {
        v9 = v10 = msg.sender;
    } else if (1 == msg.data[v3] >> 248) {
        v9 = v11 = msg.data[1 + v3] >> 96;
    } else {
        v9 = v12 = this;
    }
    v13 = v14 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    if (varg5 >> 248 == 1) {
        v13 = v15 = 0x1000276a4;
    }
    v16 = 0x4444c5dc75cb358380d2e3de08a90.swap(v1, v2, varg3 >> 224, varg4 >> 240, 0, varg5 >> 248, 0 - msg.data[msg.data.length - 32], v13, 288, 0).gas(msg.gas);
    require(v16);
    v17 = v18 = MEM[32] >> 128;
    v17 = v19 = int128(MEM[32]);
    v17 = v20 = 0;
    if (v18 <= 0) {
    }
    if (v19 <= 0) {
    }
    if (varg6 >> 248 == 1) {
        require(v17 >= v5);
    }
    v21 = 0x4444c5dc75cb358380d2e3de08a90.sync(v0).gas(msg.gas);
    require(v21);
    if (1 == (varg0 >> 248 == 1)) {
        v22 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(msg.data[msg.data.length - 32], msg.data[msg.data.length - 32], msg.data[msg.data.length - 32]).gas(msg.gas);
        require(v22);
        v23 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(msg.data[msg.data.length - 32]).gas(msg.gas);
        require(v23);
    } else {
        v24 = v0.transfer(0x4444c5dc75cb358380d2e3de08a90, msg.data[msg.data.length - 32]).gas(msg.gas);
        require(v24);
        v25 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        require(v25);
    }
    v26 = 0x4444c5dc75cb358380d2e3de08a90.take(v0, v9, v17).gas(msg.gas);
    require(v26);
    return v17;
}

function onMorphoFlashLoan(uint256 varg0) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    CALLDATACOPY(0, 100, varg0);
    v0 = this.call(MEM[0:varg0], MEM[0:0]).gas(msg.gas);
    require(v0);
}

function receiveFlashLoan(address[] varg0) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    CALLDATACOPY(0, 356, varg0 >> 240);
    v0 = this.call(MEM[0:varg0 >> 240], MEM[0:0]).gas(msg.gas);
    require(v0);
}

function uniswapV2Call(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (!(varg2 >> 248)) {
        v0 = v1 = 0x1940a;
        v2 = v3 = varg4 >> 200 << (varg3 >> 248);
        v4 = v5 = 174;
        if (!(varg6 >> 248)) {
            v6 = v7 = varg9 >> 240;
            CALLDATACOPY(0, 178, v7);
            if (varg7 >> 248 == 1) {
                MEM[v7] = 0;
                v6 = v8 = 32 + v7;
            }
            v9 = this.delegatecall(MEM[0:v4e30_0x0V0x3642], MEM[0:0]).gas(msg.gas);
            require(v9);
        } else if (2 == varg6 >> 248) {
            v10 = v11 = varg7 >> 96;
            v12 = v13 = varg12 >> 248;
            v14 = v15 = 205;
            if (varg13 >> 248 == 1) {
                v2 = v16 = v3 * (varg18 >> 248) / 100 + v3;
                v14 = v17 = 206;
            }
            v18 = v19 = msg.data[v14] >> 248;
            v20 = v21 = v14 + 1;
            if (v19 == 1) {
                v20 = v22 = v14 + 2;
                v23 = v24 = 0;
                if (!(msg.data[v21] >> 248)) {
                    MEM[0] = MEM[0];
                    v23 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == msg.data[v21] >> 248) {
                    MEM[0] = MEM[0];
                    v23 = v26 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (2 == msg.data[v21] >> 248) {
                    MEM[0] = MEM[0];
                    v23 = v27 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else if (3 == msg.data[v21] >> 248) {
                    MEM[0] = MEM[0];
                    v23 = v28 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == msg.data[v21] >> 248) {
                    MEM[0] = MEM[0];
                    v23 = v29 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                } else if (5 == msg.data[v21] >> 248) {
                    v20 = v30 = 22 + v14;
                    v23 = v31 = msg.data[v22] >> 96;
                }
                v32 = v33 = 0;
                if (varg11 >> 248) {
                    if (1 == varg11 >> 248) {
                        v34 = v11.getReserves().gas(msg.gas);
                        require(v34);
                        v35 = v36 = 0;
                        v35 = v37 = MEM[32];
                        v35 = v38 = MEM[64];
                        if (v36 != v13) {
                            if (1 != v13) {
                            }
                        }
                        v20 = v39 = v20 + 1;
                        v32 = v40 = (v35 * v2 * (varg14 >> 224) / ((v35 - v2) * (varg16 >> 224)) + 1) * (msg.data[v20] >> 248) / 100 + (v35 * v2 * (varg14 >> 224) / ((v35 - v2) * (varg16 >> 224)) + 1);
                    }
                }
            }
        } else if (3 != varg6 >> 248) {
            if (4 != varg6 >> 248) {
                if (1 != varg6 >> 248) {
                    if (5 == varg6 >> 248) {
                        v41 = v42 = varg9 >> (varg7 >> 248);
                        v43 = v44 = (varg8 >> 248) + v5 + 4;
                        if (1 == msg.data[(varg8 >> 248) + v5 + 2] >> 248) {
                            v45 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v42, v42, v42).gas(msg.gas);
                            require(v45);
                        } else {
                            v43 = (varg8 >> 248) + v5 + 5;
                            if (1 == msg.data[v44] >> 248) {
                                v43 = v46 = (varg8 >> 248) + v5 + 25;
                                v47 = (msg.data[v46] >> 96).approve(msg.data[v43] >> 96, uint256.max).gas(msg.gas);
                                require(v47);
                            } else if (2 == msg.data[v44] >> 248) {
                                v48 = (msg.data[v43] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                                require(v48);
                            }
                        }
                        v49 = v50 = 228;
                        v51 = 0;
                        while (v51 < msg.data[(varg8 >> 248) + v5 + 3] >> 248) {
                            MEM[v49] = msg.data[v43] >> 96;
                            v43 = v43 + 20;
                            v49 = v49 + 32;
                            v51 = v51 + 1;
                        }
                        v52 = v53 = 0;
                        if (1 != msg.data[(varg8 >> 248) + v5 + 2] >> 248) {
                            v54 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, v42, uint256.max + v3, msg.sender, 0, 0, msg.data[(varg8 >> 248) + v5 + 3] >> 248).value(v53).gas(msg.gas);
                            require(v54);
                        }
                    } else if (6 != varg6 >> 248) {
                        if (7 != varg6 >> 248) {
                            if (8 != varg6 >> 248) {
                                if (9 != varg6 >> 248) {
                                    if (10 != varg6 >> 248) {
                                        if (11 != varg6 >> 248) {
                                            if (12 != varg6 >> 248) {
                                                if (13 != varg6 >> 248) {
                                                    if (14 != varg6 >> 248) {
                                                        require(15 == varg6 >> 248);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    } else if (1 == varg2 >> 248) {
        v55 = msg.sender.getReserves().gas(msg.gas);
        require(v55);
        v0 = v56 = 0x19389;
        v57 = v58 = MEM[32];
        v57 = v59 = MEM[64];
        v57 = v60 = 0;
        v57 = v61 = 0;
        if (1 == !varg0) {
            v62 = v63 = 0x193da;
        } else {
            v62 = 0x193aa;
            if (!bool(varg0)) {
            }
        }
        // Unknown jump to Block ['0x193aaB0x3642', '0x193daB0x3642']. Refer to 3-address code (TAC);
        v2 = v64 = (v57 * v65 * (varg3 >> 224) / ((v57 - v65) * (varg5 >> 224)) + 1) * (varg6 >> 248) / 100 + (v57 * v65 * (varg3 >> 224) / ((v57 - v65) * (varg5 >> 224)) + 1);
        v4 = v66 = 175;
        if (!(varg7 >> 248)) {
            v67 = v68 = varg10 >> 240;
            CALLDATACOPY(0, 179, v68);
            if (varg8 >> 248 == 1) {
                MEM[v68] = v65 - v65 * (varg9 >> 248) / 100;
                v67 = v69 = 32 + v68;
            }
            MEM[v67] = v2;
            v70 = this.delegatecall(MEM[0:v525b_0x2V0x3642 + 32], MEM[0:0]).gas(msg.gas);
            require(v70);
        } else if (2 == varg7 >> 248) {
            v10 = v71 = varg8 >> 96;
            v12 = varg13 >> 248;
            v72 = v73 = 206;
            if (varg14 >> 248 == 1) {
                v2 = v74 = v2 * (varg19 >> 248) / 100 + v2;
                v72 = v75 = 207;
            }
            v18 = v76 = msg.data[v72] >> 248;
            v20 = v77 = v72 + 1;
            if (v76 == 1) {
                v20 = v78 = v72 + 2;
                v23 = v79 = 0;
                if (!(msg.data[v77] >> 248)) {
                    MEM[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
                    v23 = v80 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == msg.data[v77] >> 248) {
                    MEM[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
                    v23 = v81 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (2 == msg.data[v77] >> 248) {
                    MEM[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
                    v23 = v82 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else if (3 == msg.data[v77] >> 248) {
                    MEM[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
                    v23 = v83 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == msg.data[v77] >> 248) {
                    MEM[0] = 0x902f1ac00000000000000000000000000000000000000000000000000000000;
                    v23 = v84 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                } else if (5 == msg.data[v77] >> 248) {
                    v20 = v85 = 22 + v72;
                    v23 = msg.data[v78] >> 96;
                }
                if (varg12 >> 248) {
                    if (1 == varg12 >> 248) {
                        v86 = v71.getReserves().gas(msg.gas);
                        require(v86);
                        v87 = v88 = 0;
                        v87 = v89 = MEM[32];
                        v87 = v90 = MEM[64];
                        if (v88 != v12) {
                            if (1 != v12) {
                            }
                        }
                        v20 = v91 = v20 + 1;
                        v32 = (v87 * v2 * (varg15 >> 224) / ((v87 - v2) * (varg17 >> 224)) + 1) * (msg.data[v20] >> 248) / 100 + (v87 * v2 * (varg15 >> 224) / ((v87 - v2) * (varg17 >> 224)) + 1);
                    } else {
                        v92 = v23.transfer(v71, 0).gas(msg.gas);
                        require(v92);
                    }
                }
            } else if (v12) {
                if (3 != v76) {
                    v93 = v71.swap(0, v2, msg.sender, 128, 0).gas(msg.gas);
                    require(v93);
                }
            }
        } else if (3 != varg7 >> 248) {
            if (4 != varg7 >> 248) {
                if (1 != varg7 >> 248) {
                    if (5 == varg7 >> 248) {
                        v41 = v94 = varg10 >> (varg8 >> 248);
                        v95 = v96 = (varg9 >> 248) + v66 + 4;
                        if (1 == msg.data[(varg9 >> 248) + v66 + 2] >> 248) {
                            v97 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v94, v94, v94).gas(msg.gas);
                            require(v97);
                        } else {
                            v95 = (varg9 >> 248) + v66 + 5;
                            if (1 == msg.data[v96] >> 248) {
                                v95 = v98 = (varg9 >> 248) + v66 + 25;
                                v99 = (msg.data[v98] >> 96).approve(msg.data[v95] >> 96, uint256.max).gas(msg.gas);
                                require(v99);
                            } else if (2 == msg.data[v96] >> 248) {
                                v100 = (msg.data[v95] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                                require(v100);
                            }
                        }
                        v49 = v101 = 228;
                        v102 = 0;
                        while (v102 < msg.data[(varg9 >> 248) + v66 + 3] >> 248) {
                            MEM[v49] = msg.data[v95] >> 96;
                            v95 = v95 + 20;
                            v49 = v49 + 32;
                            v102 = v102 + 1;
                        }
                        v52 = v103 = 0;
                        if (1 != msg.data[(varg9 >> 248) + v66 + 2] >> 248) {
                            v104 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, v94, uint256.max + v2, msg.sender, 0, 0, msg.data[(varg9 >> 248) + v66 + 3] >> 248).value(v103).gas(msg.gas);
                            require(v104);
                        }
                    } else if (6 != varg7 >> 248) {
                        if (7 != varg7 >> 248) {
                            if (8 != varg7 >> 248) {
                                if (9 != varg7 >> 248) {
                                    if (10 != varg7 >> 248) {
                                        if (11 != varg7 >> 248) {
                                            if (12 != varg7 >> 248) {
                                                if (13 != varg7 >> 248) {
                                                    if (14 != varg7 >> 248) {
                                                        require(15 == varg7 >> 248);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        v2 = v105 = (v57 * v65 * (varg3 >> 224) / ((v57 - v65) * (varg5 >> 224)) + 1) * (varg6 >> 248) / 100 + (v57 * v65 * (varg3 >> 224) / ((v57 - v65) * (varg5 >> 224)) + 1);
        // Unknown jump to Block 0x4e46B0x3642. Refer to 3-address code (TAC);
    }
    exit;
    v106 = 0;
    if (v106 != msg.data[v4 + 20] >> 248) {
    }
    v107 = v4 + 22;
    if (msg.data[21 + v4] >> 248 == v106) {
        v106 = v108 = msg.data[v4 + 24] >> (msg.data[v107] >> 248);
        v107 = v109 = (msg.data[v4 + 23] >> 248) + v4 + 24;
    } else if (1 == msg.data[21 + v4] >> 248) {
        v106 = v110 = v106 - v2;
    }
    CALLDATACOPY(196, v107 + 2, msg.data[v107] >> 240);
    v111 = (msg.data[v4] >> 96).swap(msg.sender, msg.data[v4 + 20] >> 248, v106, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, msg.data[v107] >> 240).value(v106).gas(msg.gas);
    require(v111);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    CALLDATACOPY(0, v4 + 23, msg.data[v4 + 21] >> 240);
    if (msg.data[v4 + 20] >> 248 != 1) {
    }
    v112 = (msg.data[v4] >> 96).delegatecall(v113, v2).gas(msg.gas);
    require(v112);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x192a2. Refer to 3-address code (TAC);
    v114 = 0;
    if (v114 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v114 = v115 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (1 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v114 = v116 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
    } else if (2 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v114 = v117 = 0x6b175474e89094c44da98b954eedeac495271d0f;
    } else if (3 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v114 = v118 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
    } else if (4 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v114 = v119 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
    } else if (5 == msg.data[v4] >> 248) {
        v114 = v120 = msg.data[1 + v4] >> 96;
    }
    v121 = v114.transfer(msg.sender, v2).value(v114).gas(msg.gas);
    require(v121);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v122 = v4 + 2;
    v123 = 0;
    v124 = 0;
    if (0 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v124 = v125 = msg.data[v122] >> 96;
        v122 = v126 = v4 + 22;
        v123 = v127 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (1 == msg.data[v4] >> 248) {
        v123 = v128 = msg.data[v122] >> 96;
        v124 = v129 = msg.data[v122 + 20] >> 96;
        v122 = v130 = v122 + 40;
    }
    if (msg.data[v122] >> 248 == 2) {
        v131 = v123.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
        require(v131);
    }
    if (msg.data[v4 + 1] >> 248) {
        if (1 != msg.data[v4 + 1] >> 248) {
        }
    }
    v132 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(224, 224, this, 0, msg.sender, 0, v2, uint256.max, uint256.max, msg.data[v122 + 1], 0, 1, v123, v124, msg.data[v122 + 35] >> (msg.data[v122 + 33] >> 248), v2, 192, 0).gas(msg.gas);
    require(v132);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v133 = v4 + 2;
    v134 = 0;
    v135 = 0;
    if (0 == msg.data[v4] >> 248) {
        MEM[0] = MEM[0];
        v135 = v136 = msg.data[v133] >> 96;
        v133 = v137 = v4 + 22;
        v134 = v138 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (1 == msg.data[v4] >> 248) {
        v135 = v139 = msg.data[v133 + 20] >> 96;
        v133 = v140 = v133 + 40;
        v134 = v141 = msg.data[v133] >> 96;
    }
    if (msg.data[v133 + 20] >> 248 == 2) {
        v142 = v134.approve(msg.data[v133] >> 96, uint256.max).gas(msg.gas);
        require(v142);
    }
    if (msg.data[v4 + 1] >> 248) {
        if (1 != msg.data[v4 + 1] >> 248) {
        }
    }
    v143 = (msg.data[v133] >> 96).swapExactAmountIn(0x7c5e9ea400000000000000000000000000000000000000000000000000000000, v134, 0x8201aa3f00000000000000000000000000000000000000000000000000000000, v134, 0x7c5e9ea400000000000000000000000000000000000000000000000000000000, msg.data[v133 + 23] >> (msg.data[v133 + 21] >> 248), uint256.max, v135, v135, v2 - 1, v2, uint256.max).gas(msg.gas);
    require(v143);
    v144 = v135.transfer(msg.sender, v2).gas(msg.gas);
    require(v144);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    CALLDATACOPY(68, v4 + (msg.data[v4 + 1] >> 248) + 5, msg.data[v4 + (msg.data[v4 + 1] >> 248) + 3] >> 240);
    MEM[(msg.data[v4 + (msg.data[v4 + 1] >> 248) + 3] >> 240) + 68] = msg.data[v4 + 2] >> (msg.data[v4] >> 248);
    v145 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, (msg.data[v4 + (msg.data[v4 + 1] >> 248) + 3] >> 240) + 32).gas(msg.gas);
    require(v145);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    if (msg.data[v4 + (msg.data[v4 + 21] >> 248) + 63] >> 248 == 1) {
        v146 = (msg.data[v4 + (msg.data[v4 + 21] >> 248) + 43] >> 96).approve(msg.data[v4] >> 96, uint256.max).gas(msg.gas);
        require(v146);
    }
    if (1 != msg.data[v4 + (msg.data[v4 + 21] >> 248) + 22] >> 248) {
    }
    v147 = (msg.data[v4] >> 96).enter(0x67dfd4c900000000000000000000000000000000000000000000000000000000, 0xa59f3e0c00000000000000000000000000000000000000000000000000000000, 0x67dfd4c900000000000000000000000000000000000000000000000000000000, msg.data[v4 + 22] >> (msg.data[v4 + 20] >> 248)).gas(msg.gas);
    require(v147);
    v148 = (msg.data[v4 + (msg.data[v4 + 21] >> 248) + 23] >> 96).transfer(msg.sender, v2).gas(msg.gas);
    require(v148);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v149 = msg.data[v4 + 2] >> (msg.data[v4] >> 248);
    v150 = msg.data[(msg.data[v4 + 1] >> 248) + v4 + 3] >> 248;
    v151 = msg.data[(msg.data[v4 + 1] >> 248) + v4 + 5] >> 248 == 1;
    if (msg.data[(msg.data[v4 + 1] >> 248) + v4 + 5] >> 248 != 1) {
    }
    if (!(msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 248)) {
        if (v151) {
            v152 = 0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
            require(v152);
        }
        v153 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, v149, v150, msg.data[(msg.data[v4 + 1] >> 248) + v4 + 4] >> 248).gas(msg.gas);
        require(v153);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (1 == msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 248) {
        v154 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f;
        if (v150 == 1) {
            v154 = v155 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460;
        }
        if (v151) {
            v156 = v154.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
            require(v156);
        }
        v157 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, v149, msg.data[(msg.data[v4 + 1] >> 248) + v4 + 4] >> 248, v150).gas(msg.gas);
        require(v157);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (2 == msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 248) {
        if (v151) {
            v158 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
            require(v158);
        }
        v159 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, v149).gas(msg.gas);
        require(v159);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else {
        if (v151) {
            v160 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
            require(v160);
        }
        v161 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, v149).gas(msg.gas);
        require(v161);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    }
    v162 = 0;
    v163 = v4 + 2;
    if (!(msg.data[v4 + 1] >> 248)) {
        v162 = v164 = msg.data[v4 + 4] >> (msg.data[v163] >> 248);
        v163 = v165 = (msg.data[v4 + 3] >> 248) + v4 + 4;
    }
    v166 = 0;
    v167 = 0;
    if (1 == msg.data[v4] >> 248) {
        v166 = v168 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        v169 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v162, v162, v162).gas(msg.gas);
        require(v169);
        v167 = v170 = msg.data[v163] >> 96;
        v163 = v171 = 20 + v163;
    } else if (!(msg.data[v4] >> 248)) {
        v167 = v172 = msg.data[v163 + 20] >> 96;
        v166 = v173 = msg.data[v163] >> 96;
        v163 = v174 = 40 + v163;
    }
    if (1 == msg.data[v163] >> 248) {
        v175 = v166.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint256.max).gas(msg.gas);
        require(v175);
    }
    if (!(msg.data[v4 + 1] >> 248)) {
        MEM[0] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
    } else if (1 == msg.data[v4 + 1] >> 248) {
        MEM[0] = 0x45d6602c00000000000000000000000000000000000000000000000000000000;
    }
    if (1 == msg.data[v4] >> 248) {
        v176 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v166, v166, v167, v167, v162, v2, uint256.max + v2, uint256.max, uint256.max, uint256.max, msg.sender, msg.sender).value(v162).gas(msg.gas);
        require(v176);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else {
        v177 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v166, v166, v167, v167, v162, v2, uint256.max + v2, uint256.max, uint256.max, uint256.max, msg.sender, msg.sender).gas(msg.gas);
        require(v177);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    }
    v178 = msg.data[v4] >> 248;
    v179 = msg.data[v4 + 1] >> 248;
    v180 = msg.data[v4 + 4] >> (msg.data[v4 + 2] >> 248);
    v181 = msg.data[(msg.data[v4 + 3] >> 248) + v4 + 4] >> 96;
    v182 = (msg.data[v4 + 3] >> 248) + v4 + 25;
    if (1 == msg.data[(msg.data[v4 + 3] >> 248) + v4 + 24] >> 248) {
        v183 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, v181, v180).gas(msg.gas);
        require(v183);
    } else if (2 == msg.data[(msg.data[v4 + 3] >> 248) + v4 + 24] >> 248) {
        v182 = v184 = (msg.data[v4 + 3] >> 248) + v4 + 45;
        v185 = (msg.data[v182] >> 96).approve(v181, uint256.max).gas(msg.gas);
        require(v185);
    }
    if (!(msg.data[v182] >> 248)) {
        if (1 == msg.data[v182 + 1] >> 248) {
            v186 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v180).gas(msg.gas);
            require(v186);
            v187 = v181.exchange(v178, v179, v180, v2).value(v180).gas(msg.gas);
            require(v187);
            v188 = v189 = 0;
            v190 = v191 = 2;
        } else {
            v192 = v181.exchange(v178, v179, v180, v2).gas(msg.gas);
            require(v192);
            v188 = v193 = 0;
            v190 = v194 = 2;
        }
        v195 = (msg.data[v182 + v190] >> 96).transfer(msg.sender, v2).value(v188).gas(msg.gas);
        require(v195);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (1 == msg.data[v182] >> 248) {
        v196 = v181.setMetaGold(v178, v179, v180, v2).gas(msg.gas);
        require(v196);
        v197 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v197);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (2 == msg.data[v182] >> 248) {
        v198 = v181.exchange(v178, v179, v180, v2, 0, msg.sender).gas(msg.gas);
        require(v198);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (3 == msg.data[v182] >> 248) {
        if (1 == msg.data[v182 + 1] >> 248) {
            v199 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v180).gas(msg.gas);
            require(v199);
            v200 = v181.exchange(v178, v179, v180, v2, msg.sender).value(v180).gas(msg.gas);
            require(v200);
        } else {
            v201 = v181.exchange(v178, v179, v180, v2, msg.sender).gas(msg.gas);
            require(v201);
        }
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (4 == msg.data[v182] >> 248) {
        v202 = v181.exchange_underlying(v178, v179, v180, v2, msg.sender).gas(msg.gas);
        require(v202);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (5 == msg.data[v182] >> 248) {
        v203 = v181.exchange_underlying(v178, v179, v180, v2, msg.sender).gas(msg.gas);
        require(v203);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (6 == msg.data[v182] >> 248) {
        v204 = v181.exchange_underlying(v178, v179, v180, v2).gas(msg.gas);
        require(v204);
        v205 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v205);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (7 == msg.data[v182] >> 248) {
        v206 = v181.exchange_underlying(v178, v179, v180, v2).gas(msg.gas);
        require(v206);
        v207 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v207);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (8 == msg.data[v182] >> 248) {
        if (0 != v178) {
            if (1 != v178) {
            }
        }
        v208 = v181.add_liquidity(0, v180, 0, v180, 0, v180, v2).gas(msg.gas);
        require(v208);
        v209 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v209);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (9 == msg.data[v182] >> 248) {
        if (0 != v178) {
        }
        v210 = v181.add_liquidity(0, v180, 0, v180, v2).gas(msg.gas);
        require(v210);
        v211 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v211);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else if (10 == msg.data[v182] >> 248) {
        v212 = v181.remove_liquidity_one_coin(v180, v179, v2).gas(msg.gas);
        require(v212);
        v213 = (msg.data[v182 + 1] >> 96).transfer(msg.sender, v2).gas(msg.gas);
        require(v213);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    } else {
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    }
    v214 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, msg.data[v4 + 2] >> (msg.data[v4] >> 248)).gas(msg.gas);
    require(v214);
    v215 = (msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 96).ethToTokenTransferOutput(v2, uint256.max, msg.sender).value(msg.data[v4 + 2] >> (msg.data[v4] >> 248)).gas(msg.gas);
    require(v215);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v216 = msg.data[v4 + 2] >> (msg.data[v4] >> 248);
    v217 = v218 = 0;
    v219 = v220 = (msg.data[v4 + 1] >> 248) + v4 + 43;
    if (0 == msg.data[(msg.data[v4 + 1] >> 248) + v4 + 22] >> 248) {
        v221 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v216).gas(msg.gas);
        require(v221);
        v222 = v223 = 1;
    } else {
        v222 = 1;
        v217 = msg.data[v220] >> 96;
        v219 = (msg.data[v4 + 1] >> 248) + v4 + 63;
    }
    if (msg.data[v219] >> 248 == v222) {
        v224 = v217.approve(msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 96, uint256.max).gas(msg.gas);
        require(v224);
    }
    if (0 == msg.data[(msg.data[v4 + 1] >> 248) + v4 + 22] >> 248) {
        v225 = (msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 96).swap(v217, msg.data[(msg.data[v4 + 1] >> 248) + v4 + 23] >> 96, v216, v2, 0).value(v216).gas(msg.gas);
        require(v225);
        v226 = v227 = 0;
    } else {
        v228 = (msg.data[(msg.data[v4 + 1] >> 248) + v4 + 2] >> 96).swap(v217, msg.data[(msg.data[v4 + 1] >> 248) + v4 + 23] >> 96, v216, v2, 0).gas(msg.gas);
        require(v228);
        v226 = v229 = 0;
    }
    v230 = (msg.data[(msg.data[v4 + 1] >> 248) + v4 + 23] >> 96).transfer(msg.sender, v2).value(v226).gas(msg.gas);
    require(v230);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    CALLDATACOPY(0, v4 + 23, msg.data[v4 + 21] >> 240);
    if (msg.data[v4 + 20] >> 248 != 1) {
    }
    v231 = (msg.data[v4] >> 96).call(v113, v2).gas(msg.gas);
    require(v231);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v232 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[0], 192, 192, v42, v94, uint256.max + v3, uint256.max + v2, msg.sender, msg.sender, 0, 0, 0, 0, msg.data[(varg8 >> 248) + v5 + 3] >> 248, msg.data[(varg9 >> 248) + v66 + 3] >> 248).value(v41).gas(msg.gas);
    require(v232);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    if (v12) {
    }
    if (3 != v18) {
        v233 = v10.swap(0x22c0d9f00000000000000000000000000000000000000000000000000000000, 0, 0x22c0d9f00000000000000000000000000000000000000000000000000000000, 0x22c0d9f00000000000000000000000000000000000000000000000000000000, v2, v2, 0, msg.sender, 128, 0).gas(msg.gas);
        require(v233);
        // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    }
    CALLDATACOPY(164, v20 + 23, msg.data[v20 + 21] >> 240);
    v234 = v10.swap(0x22c0d9f00000000000000000000000000000000000000000000000000000000, 0, 0, 0x22c0d9f00000000000000000000000000000000000000000000000000000000, 0x22c0d9f00000000000000000000000000000000000000000000000000000000, v2, v2, v2, 0, this, 128, 128, msg.data[v20 + 21] >> 240).gas(msg.gas);
    require(v234);
    if (msg.data[20 + v20] >> 248) {
        v235 = (msg.data[v20] >> 96).balanceOf(this).gas(msg.gas);
        require(v235);
        v2 = v236 = uint256.max + MEM[36];
    }
    v237 = (msg.data[v20] >> 96).transfer(msg.sender, v2).gas(msg.gas);
    require(v237);
    // Unknown jump to Block ['0x19389B0x3642', '0x1940aB0x3642']. Refer to 3-address code (TAC);
    v238 = v23.transfer(v10, v32).gas(msg.gas);
    require(v238);
    v20 = v239 = 2 + (v20 + (msg.data[v20 + 1] >> 248));
    v32 = v240 = msg.data[v20 + 2] >> (msg.data[v20] >> 248);
    // Unknown jump to Block 0x4c9cB0x3642. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x192a2. Refer to 3-address code (TAC);
}

function solidlyV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, uint256 varg14, uint256 varg15, uint256 varg16, uint256 varg17, uint256 varg18, uint256 varg19, uint256 varg20, uint256 varg21, uint256 varg22, uint256 varg23, uint256 varg24) public payable { 
    if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
        if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
            if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                    if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                        if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                            if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                    if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                        require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    if (1 == varg0 < 0) {
        v0 = v1 = 0 - varg0;
    } else {
        v0 = v2 = 0 - varg1;
    }
    if (!(varg2 >> 248)) {
        v3 = 135;
        if (!(varg4 >> 248)) {
            v4 = v5 = varg7 >> 240;
            CALLDATACOPY(0, 139, v5);
            if (varg5 >> 248 == 1) {
                MEM[v5] = v0 - v0 * (varg6 >> 248) / 100;
                v4 = v6 = v5 + 32;
            }
            if (1 == varg3 >> 248) {
                MEM[v4] = v7;
                v4 = v8 = 32 + v4;
            }
            v9 = this.delegatecall(MEM[0:v5709_0x1V0x57c1V0x364d], MEM[0:0]).gas(msg.gas);
            require(v9);
        } else if (2 == varg4 >> 248) {
            v10 = v11 = 166;
            if (varg16 >> 248 == 1) {
                v10 = v12 = 167;
                v13 = v14 = v7 * (varg23 >> 248) / 100 + v7;
            }
            v15 = v16 = v10 + 1;
            if (msg.data[v10] >> 248 == 1) {
                v15 = v17 = v10 + 2;
                v18 = v19 = 0;
                if (!(msg.data[v16] >> 248)) {
                    MEM[0] = MEM[0];
                    v18 = v20 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == msg.data[v16] >> 248) {
                    MEM[0] = MEM[0];
                    v18 = v21 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (2 == msg.data[v16] >> 248) {
                    MEM[0] = MEM[0];
                    v18 = v22 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else if (3 == msg.data[v16] >> 248) {
                    MEM[0] = MEM[0];
                    v18 = v23 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == msg.data[v16] >> 248) {
                    MEM[0] = MEM[0];
                    v18 = v24 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                } else if (5 == msg.data[v16] >> 248) {
                    v15 = v25 = 22 + v10;
                    v18 = v26 = msg.data[v17] >> 96;
                }
                v27 = 0;
                if (!(varg14 >> 248)) {
                    v15 = v28 = 2 + (v15 + (msg.data[v15 + 1] >> 248));
                    v27 = v29 = msg.data[v15 + 2] >> (msg.data[v15] >> 248);
                } else if (1 == varg14 >> 248) {
                    v30 = (varg5 >> 96).getReserves().gas(msg.gas);
                    require(v30);
                    v31 = v32 = 0;
                    v31 = v33 = MEM[32];
                    v31 = v34 = MEM[64];
                    if (v32 != varg15 >> 248) {
                        if (1 != varg15 >> 248) {
                        }
                    }
                    v15 = v35 = v15 + 1;
                    v27 = v36 = (v31 * v13 * (varg17 >> 224) / ((v31 - v13) * (varg21 >> 224)) + 1) * (msg.data[v15] >> 248) / 100 + (v31 * v13 * (varg17 >> 224) / ((v31 - v13) * (varg21 >> 224)) + 1);
                }
                v37 = v18.transfer(varg5 >> 96, v27).gas(msg.gas);
                require(v37);
            }
            if (!(varg15 >> 248)) {
                if (3 != msg.data[v10] >> 248) {
                    v38 = (varg5 >> 96).swap(v13, 0, msg.sender, 128, 0).gas(msg.gas);
                    require(v38);
                }
            } else if (3 != msg.data[v10] >> 248) {
                v39 = (varg5 >> 96).swap(0, v13, msg.sender, 128, 0).gas(msg.gas);
                require(v39);
            }
            CALLDATACOPY(164, v15 + 23, msg.data[v15 + 21] >> 240);
            v40 = (varg5 >> 96).swap(0, v13, v13, 0, this, 128, 128, msg.data[v15 + 21] >> 240).gas(msg.gas);
            require(v40);
            if (msg.data[20 + v15] >> 248) {
                v41 = (msg.data[v15] >> 96).balanceOf(this).gas(msg.gas);
                require(v41);
                v13 = v42 = uint256.max + MEM[36];
            }
            v43 = (msg.data[v15] >> 96).transfer(msg.sender, v13).gas(msg.gas);
            require(v43);
        } else if (3 == varg4 >> 248) {
            v44 = v45 = 0;
            if (v45 != varg14 >> 248) {
            }
            v46 = v47 = 157;
            if (varg15 >> 248 == v45) {
                v44 = varg18 >> (varg16 >> 248);
                v46 = (varg17 >> 248) + v3 + 24;
            } else if (1 == varg15 >> 248) {
                v44 = v48 = v45 - v7;
            }
            CALLDATACOPY(196, v46 + 2, msg.data[v46] >> 240);
            v49 = (varg5 >> 96).swap(msg.sender, varg14 >> 248, v44, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, msg.data[v46] >> 240).value(v45).gas(msg.gas);
            require(v49);
        } else if (4 == varg4 >> 248) {
            CALLDATACOPY(0, 158, varg15 >> 240);
            if (varg14 >> 248 != 1) {
            }
            v50 = (varg5 >> 96).delegatecall(v51, v7).gas(msg.gas);
            require(v50);
        } else if (1 == varg4 >> 248) {
            v52 = v53 = 0;
            if (v53 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v52 = v54 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
            } else if (2 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v52 = v55 = 0x6b175474e89094c44da98b954eedeac495271d0f;
            } else if (3 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v52 = v56 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
            } else if (4 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v52 = v57 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
            } else if (5 == varg5 >> 248) {
                v52 = v58 = varg6 >> 96;
            }
            v59 = v52.transfer(msg.sender, v7).value(v53).gas(msg.gas);
            require(v59);
        } else if (5 == varg4 >> 248) {
            v60 = v61 = (varg6 >> 248) + v3 + 4;
            if (1 == msg.data[(varg6 >> 248) + v3 + 2] >> 248) {
                v62 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg7 >> (varg5 >> 248), varg7 >> (varg5 >> 248), varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v62);
            } else {
                v60 = (varg6 >> 248) + v3 + 5;
                if (1 == msg.data[v61] >> 248) {
                    v60 = v63 = (varg6 >> 248) + v3 + 25;
                    v64 = (msg.data[v63] >> 96).approve(msg.data[v60] >> 96, uint256.max).gas(msg.gas);
                    require(v64);
                } else if (2 == msg.data[v61] >> 248) {
                    v65 = (msg.data[v60] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                    require(v65);
                }
            }
            v66 = v67 = 228;
            v68 = 0;
            while (v68 < msg.data[(varg6 >> 248) + v3 + 3] >> 248) {
                MEM[v66] = msg.data[v60] >> 96;
                v60 = v60 + 20;
                v66 = v66 + 32;
                v68 = v68 + 1;
            }
            if (1 == msg.data[(varg6 >> 248) + v3 + 2] >> 248) {
                v69 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg7 >> (varg5 >> 248), uint256.max + v7, msg.sender, 0, 0, msg.data[(varg6 >> 248) + v3 + 3] >> 248).value(varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v69);
            } else {
                v70 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg7 >> (varg5 >> 248), uint256.max + v7, msg.sender, 0, 0, msg.data[(varg6 >> 248) + v3 + 3] >> 248).gas(msg.gas);
                require(v70);
            }
        } else if (6 == varg4 >> 248) {
            v71 = v72 = 137;
            v73 = v74 = 0;
            v75 = v76 = 0;
            if (0 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v75 = varg7 >> 96;
                v71 = 157;
                v73 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg5 >> 248) {
                v73 = v77 = varg7 >> 96;
                v75 = v78 = varg16 >> 96;
                v71 = v79 = 177;
            }
            if (msg.data[v71] >> 248 == 2) {
                v80 = v73.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
                require(v80);
            }
            if (varg6 >> 248) {
                if (1 != varg6 >> 248) {
                }
            }
            v81 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(224, 224, 224, this, 0, msg.sender, 0, v7, uint256.max, uint256.max, msg.data[v71 + 1], 1, 0, v73, v75, v7, msg.data[v71 + 35] >> (msg.data[v71 + 33] >> 248), 192, 0).gas(msg.gas);
            require(v81);
        } else if (7 == varg4 >> 248) {
            v82 = v83 = 137;
            v84 = v85 = 0;
            v86 = v87 = 0;
            if (0 == varg5 >> 248) {
                MEM[0] = MEM[0];
                v86 = varg7 >> 96;
                v82 = 157;
                v84 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg5 >> 248) {
                v86 = v88 = varg16 >> 96;
                v82 = v89 = 177;
                v84 = v90 = varg7 >> 96;
            }
            if (msg.data[v82 + 20] >> 248 == 2) {
                v91 = v84.approve(msg.data[v82] >> 96, uint256.max).gas(msg.gas);
                require(v91);
            }
            if (varg6 >> 248) {
                if (1 != varg6 >> 248) {
                }
            }
            v92 = (msg.data[v82] >> 96).swapExactAmountIn(0x8201aa3f00000000000000000000000000000000000000000000000000000000, v84, 0x7c5e9ea400000000000000000000000000000000000000000000000000000000, v84, 0x8201aa3f00000000000000000000000000000000000000000000000000000000, uint256.max, msg.data[v82 + 23] >> (msg.data[v82 + 21] >> 248), v86, v86, v7, v7 - 1, uint256.max).gas(msg.gas);
            require(v92);
            v93 = v86.transfer(msg.sender, v7).gas(msg.gas);
            require(v93);
        } else if (8 == varg4 >> 248) {
            CALLDATACOPY(68, v3 + (varg6 >> 248) + 5, msg.data[v3 + (varg6 >> 248) + 3] >> 240);
            MEM[(msg.data[v3 + (varg6 >> 248) + 3] >> 240) + 68] = varg7 >> (varg5 >> 248);
            v94 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, (msg.data[v3 + (varg6 >> 248) + 3] >> 240) + 32).gas(msg.gas);
            require(v94);
        } else if (9 == varg4 >> 248) {
            if (msg.data[v3 + (varg15 >> 248) + 63] >> 248 == 1) {
                v95 = (msg.data[v3 + (varg15 >> 248) + 43] >> 96).approve(varg5 >> 96, uint256.max).gas(msg.gas);
                require(v95);
            }
            if (1 != msg.data[v3 + (varg15 >> 248) + 22] >> 248) {
            }
            v96 = (varg5 >> 96).enter(0x67dfd4c900000000000000000000000000000000000000000000000000000000, 0xa59f3e0c00000000000000000000000000000000000000000000000000000000, varg16 >> (varg14 >> 248), 0x67dfd4c900000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            require(v96);
            v97 = (msg.data[v3 + (varg15 >> 248) + 23] >> 96).transfer(msg.sender, v7).gas(msg.gas);
            require(v97);
        } else if (10 == varg4 >> 248) {
            if (msg.data[(varg6 >> 248) + v3 + 5] >> 248 != 1) {
            }
            if (!(msg.data[(varg6 >> 248) + v3 + 2] >> 248)) {
                if (msg.data[(varg6 >> 248) + v3 + 5] >> 248 == 1) {
                    v98 = 0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v98);
                }
                v99 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg7 >> (varg5 >> 248), msg.data[(varg6 >> 248) + v3 + 3] >> 248, msg.data[(varg6 >> 248) + v3 + 4] >> 248).gas(msg.gas);
                require(v99);
            } else if (1 == msg.data[(varg6 >> 248) + v3 + 2] >> 248) {
                v100 = v101 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f;
                if (msg.data[(varg6 >> 248) + v3 + 3] >> 248 == 1) {
                    v100 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460;
                }
                if (msg.data[(varg6 >> 248) + v3 + 5] >> 248 == 1) {
                    v102 = v100.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v102);
                }
                v103 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg7 >> (varg5 >> 248), msg.data[(varg6 >> 248) + v3 + 4] >> 248, msg.data[(varg6 >> 248) + v3 + 3] >> 248).gas(msg.gas);
                require(v103);
            } else if (2 == msg.data[(varg6 >> 248) + v3 + 2] >> 248) {
                if (msg.data[(varg6 >> 248) + v3 + 5] >> 248 == 1) {
                    v104 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v104);
                }
                v105 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v105);
            } else {
                if (msg.data[(varg6 >> 248) + v3 + 5] >> 248 == 1) {
                    v106 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v106);
                }
                v107 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v107);
            }
        } else if (11 == varg4 >> 248) {
            v108 = v109 = 0;
            v110 = v111 = 137;
            if (!(varg6 >> 248)) {
                v108 = varg9 >> (varg7 >> 248);
                v110 = (varg8 >> 248) + v3 + 4;
            }
            v112 = v113 = 0;
            v114 = v115 = 0;
            if (1 == varg5 >> 248) {
                v112 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                v116 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v108, v108, v108).gas(msg.gas);
                require(v116);
                v114 = msg.data[v110] >> 96;
                v110 = v117 = 20 + v110;
            } else if (!(varg5 >> 248)) {
                v114 = v118 = msg.data[v110 + 20] >> 96;
                v112 = v119 = msg.data[v110] >> 96;
                v110 = v120 = 40 + v110;
            }
            if (1 == msg.data[v110] >> 248) {
                v121 = v112.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint256.max).gas(msg.gas);
                require(v121);
            }
            if (!(varg6 >> 248)) {
                MEM[0] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
            } else if (1 == varg6 >> 248) {
                MEM[0] = 0x45d6602c00000000000000000000000000000000000000000000000000000000;
            }
            if (1 == varg5 >> 248) {
                v122 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v112, v112, v114, v114, v7, v108, uint256.max, uint256.max + v7, uint256.max, uint256.max, msg.sender, msg.sender).value(v108).gas(msg.gas);
                require(v122);
            } else {
                v123 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v112, v112, v114, v114, v7, v108, uint256.max, uint256.max + v7, uint256.max, uint256.max, msg.sender, msg.sender).gas(msg.gas);
                require(v123);
            }
        } else if (12 == varg4 >> 248) {
            v124 = varg5 >> 248;
            v125 = varg6 >> 248;
            v126 = varg9 >> (varg7 >> 248);
            v127 = msg.data[(varg8 >> 248) + v3 + 4] >> 96;
            v128 = v129 = (varg8 >> 248) + v3 + 25;
            if (1 == msg.data[(varg8 >> 248) + v3 + 24] >> 248) {
                v130 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v127, v127, v127, v126).gas(msg.gas);
                require(v130);
            } else if (2 == msg.data[(varg8 >> 248) + v3 + 24] >> 248) {
                v128 = (varg8 >> 248) + v3 + 45;
                v131 = (msg.data[v129] >> 96).approve(v127, uint256.max).gas(msg.gas);
                require(v131);
            }
            if (!(msg.data[v128] >> 248)) {
                if (1 == msg.data[v128 + 1] >> 248) {
                    v132 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v126, v126, v126).gas(msg.gas);
                    require(v132);
                    v133 = v127.exchange(v124, v125, v126, v7).value(v126).gas(msg.gas);
                    require(v133);
                    v134 = v135 = 0;
                    v136 = v137 = 2;
                } else {
                    v138 = v127.exchange(v124, v125, v126, v7).gas(msg.gas);
                    require(v138);
                    v134 = v139 = 0;
                    v136 = v140 = 2;
                }
                v141 = (msg.data[v128 + v136] >> 96).transfer(msg.sender, v7).value(v134).gas(msg.gas);
                require(v141);
            } else if (1 == msg.data[v128] >> 248) {
                v142 = v127.setMetaGold(v124, v125, v126, v7).gas(msg.gas);
                require(v142);
                v143 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v143);
            } else if (2 == msg.data[v128] >> 248) {
                v144 = v127.exchange(v124, v125, v126, v7, 0, msg.sender).gas(msg.gas);
                require(v144);
            } else if (3 == msg.data[v128] >> 248) {
                if (1 == msg.data[v128 + 1] >> 248) {
                    v145 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v126, v126, v126).gas(msg.gas);
                    require(v145);
                    v146 = v127.exchange(v124, v125, v126, v7, msg.sender).value(v126).gas(msg.gas);
                    require(v146);
                } else {
                    v147 = v127.exchange(v124, v125, v126, v7, msg.sender).gas(msg.gas);
                    require(v147);
                }
            } else if (4 == msg.data[v128] >> 248) {
                v148 = v127.exchange_underlying(v124, v125, v126, v7, msg.sender).gas(msg.gas);
                require(v148);
            } else if (5 == msg.data[v128] >> 248) {
                v149 = v127.exchange_underlying(v124, v125, v126, v7, msg.sender).gas(msg.gas);
                require(v149);
            } else if (6 == msg.data[v128] >> 248) {
                v150 = v127.exchange_underlying(v124, v125, v126, v7).gas(msg.gas);
                require(v150);
                v151 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v151);
            } else if (7 == msg.data[v128] >> 248) {
                v152 = v127.exchange_underlying(v124, v125, v126, v7).gas(msg.gas);
                require(v152);
                v153 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v153);
            } else if (8 == msg.data[v128] >> 248) {
                if (0 != v124) {
                    if (1 != v124) {
                    }
                }
                v154 = v127.add_liquidity(v126, 0, v126, 0, v126, 0, v7).gas(msg.gas);
                require(v154);
                v155 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v155);
            } else if (9 == msg.data[v128] >> 248) {
                if (0 != v124) {
                }
                v156 = v127.add_liquidity(v126, 0, v126, 0, v7).gas(msg.gas);
                require(v156);
                v157 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v157);
            } else if (10 == msg.data[v128] >> 248) {
                v158 = v127.remove_liquidity_one_coin(v126, v125, v7).gas(msg.gas);
                require(v158);
                v159 = (msg.data[v128 + 1] >> 96).transfer(msg.sender, v7).gas(msg.gas);
                require(v159);
            }
        } else if (13 == varg4 >> 248) {
            v160 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, varg7 >> (varg5 >> 248)).gas(msg.gas);
            require(v160);
            v161 = (msg.data[(varg6 >> 248) + v3 + 2] >> 96).ethToTokenTransferOutput(v7, uint256.max, msg.sender).value(varg7 >> (varg5 >> 248)).gas(msg.gas);
            require(v161);
        } else if (14 == varg4 >> 248) {
            v162 = v163 = 0;
            v164 = v165 = (varg6 >> 248) + v3 + 43;
            if (0 == msg.data[(varg6 >> 248) + v3 + 22] >> 248) {
                v166 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg7 >> (varg5 >> 248), varg7 >> (varg5 >> 248), varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v166);
                v167 = v168 = 1;
            } else {
                v167 = v169 = 1;
                v162 = v170 = msg.data[v165] >> 96;
                v164 = v171 = (varg6 >> 248) + v3 + 63;
            }
            if (msg.data[v164] >> 248 == v167) {
                v172 = v162.approve(msg.data[(varg6 >> 248) + v3 + 2] >> 96, uint256.max).gas(msg.gas);
                require(v172);
            }
            if (0 == msg.data[(varg6 >> 248) + v3 + 22] >> 248) {
                v173 = (msg.data[(varg6 >> 248) + v3 + 2] >> 96).swap(v162, msg.data[(varg6 >> 248) + v3 + 23] >> 96, varg7 >> (varg5 >> 248), v7, 0).value(varg7 >> (varg5 >> 248)).gas(msg.gas);
                require(v173);
                v174 = v175 = 0;
            } else {
                v176 = (msg.data[(varg6 >> 248) + v3 + 2] >> 96).swap(v162, msg.data[(varg6 >> 248) + v3 + 23] >> 96, varg7 >> (varg5 >> 248), v7, 0).gas(msg.gas);
                require(v176);
                v174 = v177 = 0;
            }
            v178 = (msg.data[(varg6 >> 248) + v3 + 23] >> 96).transfer(msg.sender, v7).value(v174).gas(msg.gas);
            require(v178);
        } else {
            require(15 == varg4 >> 248);
            CALLDATACOPY(0, 158, varg15 >> 240);
            if (varg14 >> 248 != 1) {
            }
            v179 = (varg5 >> 96).call(v51, v7).gas(msg.gas);
            require(v179);
        }
    } else if (1 == varg2 >> 248) {
        require(v0 >= varg4 >> 232 << (varg3 >> 248));
        v180 = 139;
        if (!(varg8 >> 248)) {
            v181 = v182 = varg11 >> 240;
            CALLDATACOPY(0, 143, v182);
            if (varg9 >> 248 == 1) {
                MEM[v182] = v0 - v0 * (varg10 >> 248) / 100;
                v181 = v183 = v182 + 32;
            }
            if (1 == varg7 >> 248) {
                MEM[v181] = v184;
                v181 = v185 = 32 + v181;
            }
            v186 = this.delegatecall(MEM[0:v5709_0x1V0x57b6V0x364d], MEM[0:0]).gas(msg.gas);
            require(v186);
        } else if (2 == varg8 >> 248) {
            v187 = v188 = 170;
            if (varg20 >> 248 == 1) {
                v187 = v189 = 171;
                v13 = v190 = v184 * (varg24 >> 248) / 100 + v184;
            }
            v191 = v192 = v187 + 1;
            if (msg.data[v187] >> 248 == 1) {
                v191 = v193 = v187 + 2;
                v194 = v195 = 0;
                if (!(msg.data[v192] >> 248)) {
                    MEM[0] = MEM[0];
                    v194 = v196 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == msg.data[v192] >> 248) {
                    MEM[0] = MEM[0];
                    v194 = v197 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (2 == msg.data[v192] >> 248) {
                    MEM[0] = MEM[0];
                    v194 = v198 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else if (3 == msg.data[v192] >> 248) {
                    MEM[0] = MEM[0];
                    v194 = v199 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == msg.data[v192] >> 248) {
                    MEM[0] = MEM[0];
                    v194 = v200 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                } else if (5 == msg.data[v192] >> 248) {
                    v191 = v201 = 22 + v187;
                    v194 = v202 = msg.data[v193] >> 96;
                }
                v203 = 0;
                if (!(varg18 >> 248)) {
                    v191 = v204 = 2 + (v191 + (msg.data[v191 + 1] >> 248));
                    v203 = v205 = msg.data[v191 + 2] >> (msg.data[v191] >> 248);
                } else if (1 == varg18 >> 248) {
                    v206 = (varg9 >> 96).getReserves().gas(msg.gas);
                    require(v206);
                    v207 = v208 = 0;
                    v207 = v209 = MEM[32];
                    v207 = v210 = MEM[64];
                    if (v208 != varg19 >> 248) {
                        if (1 != varg19 >> 248) {
                        }
                    }
                    v191 = v211 = v191 + 1;
                    v203 = v212 = (v207 * v13 * (varg21 >> 224) / ((v207 - v13) * (varg23 >> 224)) + 1) * (msg.data[v191] >> 248) / 100 + (v207 * v13 * (varg21 >> 224) / ((v207 - v13) * (varg23 >> 224)) + 1);
                }
                v213 = v194.transfer(varg9 >> 96, v203).gas(msg.gas);
                require(v213);
            }
            if (!(varg19 >> 248)) {
                if (3 != msg.data[v187] >> 248) {
                    v214 = (varg9 >> 96).swap(v13, 0, msg.sender, 128, 0).gas(msg.gas);
                    require(v214);
                }
            } else if (3 != msg.data[v187] >> 248) {
                v215 = (varg9 >> 96).swap(0, v13, msg.sender, 128, 0).gas(msg.gas);
                require(v215);
            }
            CALLDATACOPY(164, v191 + 23, msg.data[v191 + 21] >> 240);
            v216 = (varg9 >> 96).swap(0, v13, v13, 0, this, 128, 128, msg.data[v191 + 21] >> 240).gas(msg.gas);
            require(v216);
            if (msg.data[20 + v191] >> 248) {
                v217 = (msg.data[v191] >> 96).balanceOf(this).gas(msg.gas);
                require(v217);
                v13 = v218 = uint256.max + MEM[36];
            }
            v219 = (msg.data[v191] >> 96).transfer(msg.sender, v13).gas(msg.gas);
            require(v219);
        } else if (3 == varg8 >> 248) {
            v220 = v221 = 0;
            if (v221 != varg18 >> 248) {
            }
            v222 = v223 = 161;
            if (varg19 >> 248 == v221) {
                v220 = varg22 >> (varg20 >> 248);
                v222 = (varg21 >> 248) + v180 + 24;
            } else if (1 == varg19 >> 248) {
                v220 = v224 = v221 - v184;
            }
            CALLDATACOPY(196, v222 + 2, msg.data[v222] >> 240);
            v225 = (varg9 >> 96).swap(msg.sender, varg18 >> 248, v220, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, msg.data[v222] >> 240).value(v221).gas(msg.gas);
            require(v225);
        } else if (4 == varg8 >> 248) {
            CALLDATACOPY(0, 162, varg19 >> 240);
            if (varg18 >> 248 != 1) {
            }
            v226 = (varg9 >> 96).delegatecall(v51, v184).gas(msg.gas);
            require(v226);
        } else if (1 == varg8 >> 248) {
            v227 = v228 = 0;
            if (v228 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v227 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v227 = v229 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
            } else if (2 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v227 = v230 = 0x6b175474e89094c44da98b954eedeac495271d0f;
            } else if (3 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v227 = v231 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
            } else if (4 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v227 = v232 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
            } else if (5 == varg9 >> 248) {
                v227 = v233 = varg10 >> 96;
            }
            v234 = v227.transfer(msg.sender, v184).value(v228).gas(msg.gas);
            require(v234);
        } else if (5 == varg8 >> 248) {
            v235 = v236 = (varg10 >> 248) + v180 + 4;
            if (1 == msg.data[(varg10 >> 248) + v180 + 2] >> 248) {
                v237 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v237);
            } else {
                v235 = (varg10 >> 248) + v180 + 5;
                if (1 == msg.data[v236] >> 248) {
                    v235 = v238 = (varg10 >> 248) + v180 + 25;
                    v239 = (msg.data[v238] >> 96).approve(msg.data[v235] >> 96, uint256.max).gas(msg.gas);
                    require(v239);
                } else if (2 == msg.data[v236] >> 248) {
                    v240 = (msg.data[v235] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                    require(v240);
                }
            }
            v241 = v242 = 228;
            v243 = 0;
            while (v243 < msg.data[(varg10 >> 248) + v180 + 3] >> 248) {
                MEM[v241] = msg.data[v235] >> 96;
                v235 = v235 + 20;
                v241 = v241 + 32;
                v243 = v243 + 1;
            }
            if (1 == msg.data[(varg10 >> 248) + v180 + 2] >> 248) {
                v244 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248), uint256.max + v184, msg.sender, 0, 0, msg.data[(varg10 >> 248) + v180 + 3] >> 248).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v244);
            } else {
                v245 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248), uint256.max + v184, msg.sender, 0, 0, msg.data[(varg10 >> 248) + v180 + 3] >> 248).gas(msg.gas);
                require(v245);
            }
        } else if (6 == varg8 >> 248) {
            v246 = v247 = 141;
            v248 = v249 = 0;
            v250 = v251 = 0;
            if (0 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v250 = varg11 >> 96;
                v246 = 161;
                v248 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                v248 = v252 = varg11 >> 96;
                v250 = v253 = varg20 >> 96;
                v246 = v254 = 181;
            }
            if (msg.data[v246] >> 248 == 2) {
                v255 = v248.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
                require(v255);
            }
            if (varg10 >> 248) {
                if (1 != varg10 >> 248) {
                }
            }
            v256 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(224, 224, 224, this, 0, msg.sender, 0, v184, uint256.max, uint256.max, msg.data[v246 + 1], 1, 0, v248, v250, v184, msg.data[v246 + 35] >> (msg.data[v246 + 33] >> 248), 192, 0).gas(msg.gas);
            require(v256);
        } else if (7 == varg8 >> 248) {
            v257 = v258 = 141;
            v259 = v260 = 0;
            v261 = v262 = 0;
            if (0 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v261 = varg11 >> 96;
                v257 = 161;
                v259 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                v261 = v263 = varg20 >> 96;
                v257 = v264 = 181;
                v259 = v265 = varg11 >> 96;
            }
            if (msg.data[v257 + 20] >> 248 == 2) {
                v266 = v259.approve(msg.data[v257] >> 96, uint256.max).gas(msg.gas);
                require(v266);
            }
            if (varg10 >> 248) {
                if (1 != varg10 >> 248) {
                }
            }
            v267 = (msg.data[v257] >> 96).swapExactAmountIn(0x8201aa3f00000000000000000000000000000000000000000000000000000000, v259, 0x7c5e9ea400000000000000000000000000000000000000000000000000000000, v259, 0x8201aa3f00000000000000000000000000000000000000000000000000000000, uint256.max, msg.data[v257 + 23] >> (msg.data[v257 + 21] >> 248), v261, v261, v184, v184 - 1, uint256.max).gas(msg.gas);
            require(v267);
            v268 = v261.transfer(msg.sender, v184).gas(msg.gas);
            require(v268);
        } else if (8 == varg8 >> 248) {
            CALLDATACOPY(68, v180 + (varg10 >> 248) + 5, msg.data[v180 + (varg10 >> 248) + 3] >> 240);
            MEM[(msg.data[v180 + (varg10 >> 248) + 3] >> 240) + 68] = varg11 >> (varg9 >> 248);
            v269 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, (msg.data[v180 + (varg10 >> 248) + 3] >> 240) + 32).gas(msg.gas);
            require(v269);
        } else if (9 == varg8 >> 248) {
            if (msg.data[v180 + (varg19 >> 248) + 63] >> 248 == 1) {
                v270 = (msg.data[v180 + (varg19 >> 248) + 43] >> 96).approve(varg9 >> 96, uint256.max).gas(msg.gas);
                require(v270);
            }
            if (1 != msg.data[v180 + (varg19 >> 248) + 22] >> 248) {
            }
            v271 = (varg9 >> 96).enter(0x67dfd4c900000000000000000000000000000000000000000000000000000000, 0xa59f3e0c00000000000000000000000000000000000000000000000000000000, varg20 >> (varg18 >> 248), 0x67dfd4c900000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            require(v271);
            v272 = (msg.data[v180 + (varg19 >> 248) + 23] >> 96).transfer(msg.sender, v184).gas(msg.gas);
            require(v272);
        } else if (10 == varg8 >> 248) {
            if (msg.data[(varg10 >> 248) + v180 + 5] >> 248 != 1) {
            }
            if (!(msg.data[(varg10 >> 248) + v180 + 2] >> 248)) {
                if (msg.data[(varg10 >> 248) + v180 + 5] >> 248 == 1) {
                    v273 = 0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v273);
                }
                v274 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248), msg.data[(varg10 >> 248) + v180 + 3] >> 248, msg.data[(varg10 >> 248) + v180 + 4] >> 248).gas(msg.gas);
                require(v274);
            } else if (1 == msg.data[(varg10 >> 248) + v180 + 2] >> 248) {
                v275 = v276 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f;
                if (msg.data[(varg10 >> 248) + v180 + 3] >> 248 == 1) {
                    v275 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460;
                }
                if (msg.data[(varg10 >> 248) + v180 + 5] >> 248 == 1) {
                    v277 = v275.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v277);
                }
                v278 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248), msg.data[(varg10 >> 248) + v180 + 4] >> 248, msg.data[(varg10 >> 248) + v180 + 3] >> 248).gas(msg.gas);
                require(v278);
            } else if (2 == msg.data[(varg10 >> 248) + v180 + 2] >> 248) {
                if (msg.data[(varg10 >> 248) + v180 + 5] >> 248 == 1) {
                    v279 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v279);
                }
                v280 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v280);
            } else {
                if (msg.data[(varg10 >> 248) + v180 + 5] >> 248 == 1) {
                    v281 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v281);
                }
                v282 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v282);
            }
        } else if (11 == varg8 >> 248) {
            v283 = v284 = 0;
            v285 = v286 = 141;
            if (!(varg10 >> 248)) {
                v283 = varg13 >> (varg11 >> 248);
                v285 = (varg12 >> 248) + v180 + 4;
            }
            v287 = v288 = 0;
            v289 = v290 = 0;
            if (1 == varg9 >> 248) {
                v287 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                v291 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v283, v283, v283).gas(msg.gas);
                require(v291);
                v289 = msg.data[v285] >> 96;
                v285 = v292 = 20 + v285;
            } else if (!(varg9 >> 248)) {
                v289 = v293 = msg.data[v285 + 20] >> 96;
                v287 = v294 = msg.data[v285] >> 96;
                v285 = v295 = 40 + v285;
            }
            if (1 == msg.data[v285] >> 248) {
                v296 = v287.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint256.max).gas(msg.gas);
                require(v296);
            }
            if (!(varg10 >> 248)) {
                MEM[0] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
            } else if (1 == varg10 >> 248) {
                MEM[0] = 0x45d6602c00000000000000000000000000000000000000000000000000000000;
            }
            if (1 == varg9 >> 248) {
                v297 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v287, v287, v289, v289, v184, v283, uint256.max, uint256.max + v184, uint256.max, uint256.max, msg.sender, msg.sender).value(v283).gas(msg.gas);
                require(v297);
            } else {
                v298 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v287, v287, v289, v289, v184, v283, uint256.max, uint256.max + v184, uint256.max, uint256.max, msg.sender, msg.sender).gas(msg.gas);
                require(v298);
            }
        } else if (12 == varg8 >> 248) {
            v299 = varg9 >> 248;
            v300 = varg10 >> 248;
            v301 = varg13 >> (varg11 >> 248);
            v302 = msg.data[(varg12 >> 248) + v180 + 4] >> 96;
            v303 = v304 = (varg12 >> 248) + v180 + 25;
            if (1 == msg.data[(varg12 >> 248) + v180 + 24] >> 248) {
                v305 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v302, v302, v302, v301).gas(msg.gas);
                require(v305);
            } else if (2 == msg.data[(varg12 >> 248) + v180 + 24] >> 248) {
                v303 = (varg12 >> 248) + v180 + 45;
                v306 = (msg.data[v304] >> 96).approve(v302, uint256.max).gas(msg.gas);
                require(v306);
            }
            if (!(msg.data[v303] >> 248)) {
                if (1 == msg.data[v303 + 1] >> 248) {
                    v307 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v301, v301, v301).gas(msg.gas);
                    require(v307);
                    v308 = v302.exchange(v299, v300, v301, v184).value(v301).gas(msg.gas);
                    require(v308);
                    v309 = v310 = 0;
                    v311 = v312 = 2;
                } else {
                    v313 = v302.exchange(v299, v300, v301, v184).gas(msg.gas);
                    require(v313);
                    v309 = v314 = 0;
                    v311 = v315 = 2;
                }
                v316 = (msg.data[v303 + v311] >> 96).transfer(msg.sender, v184).value(v309).gas(msg.gas);
                require(v316);
            } else if (1 == msg.data[v303] >> 248) {
                v317 = v302.setMetaGold(v299, v300, v301, v184).gas(msg.gas);
                require(v317);
                v318 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v318);
            } else if (2 == msg.data[v303] >> 248) {
                v319 = v302.exchange(v299, v300, v301, v184, 0, msg.sender).gas(msg.gas);
                require(v319);
            } else if (3 == msg.data[v303] >> 248) {
                if (1 == msg.data[v303 + 1] >> 248) {
                    v320 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v301, v301, v301).gas(msg.gas);
                    require(v320);
                    v321 = v302.exchange(v299, v300, v301, v184, msg.sender).value(v301).gas(msg.gas);
                    require(v321);
                } else {
                    v322 = v302.exchange(v299, v300, v301, v184, msg.sender).gas(msg.gas);
                    require(v322);
                }
            } else if (4 == msg.data[v303] >> 248) {
                v323 = v302.exchange_underlying(v299, v300, v301, v184, msg.sender).gas(msg.gas);
                require(v323);
            } else if (5 == msg.data[v303] >> 248) {
                v324 = v302.exchange_underlying(v299, v300, v301, v184, msg.sender).gas(msg.gas);
                require(v324);
            } else if (6 == msg.data[v303] >> 248) {
                v325 = v302.exchange_underlying(v299, v300, v301, v184).gas(msg.gas);
                require(v325);
                v326 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v326);
            } else if (7 == msg.data[v303] >> 248) {
                v327 = v302.exchange_underlying(v299, v300, v301, v184).gas(msg.gas);
                require(v327);
                v328 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v328);
            } else if (8 == msg.data[v303] >> 248) {
                if (0 != v299) {
                    if (1 != v299) {
                    }
                }
                v329 = v302.add_liquidity(v301, 0, v301, 0, v301, 0, v184).gas(msg.gas);
                require(v329);
                v330 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v330);
            } else if (9 == msg.data[v303] >> 248) {
                if (0 != v299) {
                }
                v331 = v302.add_liquidity(v301, 0, v301, 0, v184).gas(msg.gas);
                require(v331);
                v332 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v332);
            } else if (10 == msg.data[v303] >> 248) {
                v333 = v302.remove_liquidity_one_coin(v301, v300, v184).gas(msg.gas);
                require(v333);
                v334 = (msg.data[v303 + 1] >> 96).transfer(msg.sender, v184).gas(msg.gas);
                require(v334);
            }
        } else if (13 == varg8 >> 248) {
            v335 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248)).gas(msg.gas);
            require(v335);
            v336 = (msg.data[(varg10 >> 248) + v180 + 2] >> 96).ethToTokenTransferOutput(v184, uint256.max, msg.sender).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
            require(v336);
        } else if (14 == varg8 >> 248) {
            v337 = v338 = 0;
            v339 = v340 = (varg10 >> 248) + v180 + 43;
            if (0 == msg.data[(varg10 >> 248) + v180 + 22] >> 248) {
                v341 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v341);
                v342 = v343 = 1;
            } else {
                v342 = v344 = 1;
                v337 = v345 = msg.data[v340] >> 96;
                v339 = v346 = (varg10 >> 248) + v180 + 63;
            }
            if (msg.data[v339] >> 248 == v342) {
                v347 = v337.approve(msg.data[(varg10 >> 248) + v180 + 2] >> 96, uint256.max).gas(msg.gas);
                require(v347);
            }
            if (0 == msg.data[(varg10 >> 248) + v180 + 22] >> 248) {
                v348 = (msg.data[(varg10 >> 248) + v180 + 2] >> 96).swap(v337, msg.data[(varg10 >> 248) + v180 + 23] >> 96, varg11 >> (varg9 >> 248), v184, 0).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v348);
                v349 = v350 = 0;
            } else {
                v351 = (msg.data[(varg10 >> 248) + v180 + 2] >> 96).swap(v337, msg.data[(varg10 >> 248) + v180 + 23] >> 96, varg11 >> (varg9 >> 248), v184, 0).gas(msg.gas);
                require(v351);
                v349 = v352 = 0;
            }
            v353 = (msg.data[(varg10 >> 248) + v180 + 23] >> 96).transfer(msg.sender, v184).value(v349).gas(msg.gas);
            require(v353);
        } else {
            require(15 == varg8 >> 248);
            CALLDATACOPY(0, 162, varg19 >> 240);
            if (varg18 >> 248 != 1) {
            }
            v354 = (varg9 >> 96).call(v51, v184).gas(msg.gas);
            require(v354);
        }
    } else {
        require(varg1 >= varg4 >> 232 << (varg3 >> 248));
        v355 = 139;
        if (!(varg8 >> 248)) {
            v356 = v357 = varg11 >> 240;
            CALLDATACOPY(0, 143, v357);
            if (varg9 >> 248 == 1) {
                MEM[v357] = varg1 - varg1 * (varg10 >> 248) / 100;
                v356 = v358 = v357 + 32;
            }
            if (1 == varg7 >> 248) {
                MEM[v356] = v359;
                v356 = v360 = 32 + v356;
            }
            v361 = this.delegatecall(MEM[0:v5709_0x1V0x578aV0x364d], MEM[0:0]).gas(msg.gas);
            require(v361);
        } else if (2 == varg8 >> 248) {
            v362 = v363 = 170;
            if (varg20 >> 248 == 1) {
                v362 = v364 = 171;
                v13 = v365 = v359 * (varg24 >> 248) / 100 + v359;
            }
            v366 = v367 = v362 + 1;
            if (msg.data[v362] >> 248 == 1) {
                v366 = v368 = v362 + 2;
                v369 = v370 = 0;
                if (!(msg.data[v367] >> 248)) {
                    MEM[0] = MEM[0];
                    v369 = v371 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                } else if (1 == msg.data[v367] >> 248) {
                    MEM[0] = MEM[0];
                    v369 = v372 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                } else if (2 == msg.data[v367] >> 248) {
                    MEM[0] = MEM[0];
                    v369 = v373 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else if (3 == msg.data[v367] >> 248) {
                    MEM[0] = MEM[0];
                    v369 = v374 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                } else if (4 == msg.data[v367] >> 248) {
                    MEM[0] = MEM[0];
                    v369 = v375 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                } else if (5 == msg.data[v367] >> 248) {
                    v366 = v376 = 22 + v362;
                    v369 = v377 = msg.data[v368] >> 96;
                }
                v378 = 0;
                if (!(varg18 >> 248)) {
                    v366 = v379 = 2 + (v366 + (msg.data[v366 + 1] >> 248));
                    v378 = v380 = msg.data[v366 + 2] >> (msg.data[v366] >> 248);
                } else if (1 == varg18 >> 248) {
                    v381 = (varg9 >> 96).getReserves().gas(msg.gas);
                    require(v381);
                    v382 = v383 = 0;
                    v382 = v384 = MEM[32];
                    v382 = v385 = MEM[64];
                    if (v383 != varg19 >> 248) {
                        if (1 != varg19 >> 248) {
                        }
                    }
                    v366 = v386 = v366 + 1;
                    v378 = v387 = (v382 * v13 * (varg21 >> 224) / ((v382 - v13) * (varg23 >> 224)) + 1) * (msg.data[v366] >> 248) / 100 + (v382 * v13 * (varg21 >> 224) / ((v382 - v13) * (varg23 >> 224)) + 1);
                }
                v388 = v369.transfer(varg9 >> 96, v378).gas(msg.gas);
                require(v388);
            }
            if (!(varg19 >> 248)) {
                if (3 != msg.data[v362] >> 248) {
                    v389 = (varg9 >> 96).swap(v13, 0, msg.sender, 128, 0).gas(msg.gas);
                    require(v389);
                }
            } else if (3 != msg.data[v362] >> 248) {
                v390 = (varg9 >> 96).swap(0, v13, msg.sender, 128, 0).gas(msg.gas);
                require(v390);
            }
            CALLDATACOPY(164, v366 + 23, msg.data[v366 + 21] >> 240);
            v391 = (varg9 >> 96).swap(0, v13, v13, 0, this, 128, 128, msg.data[v366 + 21] >> 240).gas(msg.gas);
            require(v391);
            if (msg.data[20 + v366] >> 248) {
                v392 = (msg.data[v366] >> 96).balanceOf(this).gas(msg.gas);
                require(v392);
                v13 = v393 = uint256.max + MEM[36];
            }
            v394 = (msg.data[v366] >> 96).transfer(msg.sender, v13).gas(msg.gas);
            require(v394);
        } else if (3 == varg8 >> 248) {
            v395 = v396 = 0;
            if (v396 != varg18 >> 248) {
            }
            v397 = v398 = 161;
            if (varg19 >> 248 == v396) {
                v395 = varg22 >> (varg20 >> 248);
                v397 = (varg21 >> 248) + v355 + 24;
            } else if (1 == varg19 >> 248) {
                v395 = v399 = v396 - v359;
            }
            CALLDATACOPY(196, v397 + 2, msg.data[v397] >> 240);
            v400 = (varg9 >> 96).swap(msg.sender, varg18 >> 248, v395, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, msg.data[v397] >> 240).value(v396).gas(msg.gas);
            require(v400);
        } else if (4 == varg8 >> 248) {
            CALLDATACOPY(0, 162, varg19 >> 240);
            if (varg18 >> 248 != 1) {
            }
            v401 = (varg9 >> 96).delegatecall(v51, v359).gas(msg.gas);
            require(v401);
        } else if (1 == varg8 >> 248) {
            v402 = v403 = 0;
            if (v403 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v402 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v402 = v404 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
            } else if (2 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v402 = v405 = 0x6b175474e89094c44da98b954eedeac495271d0f;
            } else if (3 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v402 = v406 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
            } else if (4 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v402 = v407 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
            } else if (5 == varg9 >> 248) {
                v402 = v408 = varg10 >> 96;
            }
            v409 = v402.transfer(msg.sender, v359).value(v403).gas(msg.gas);
            require(v409);
        } else if (5 == varg8 >> 248) {
            v410 = v411 = (varg10 >> 248) + v355 + 4;
            if (1 == msg.data[(varg10 >> 248) + v355 + 2] >> 248) {
                v412 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v412);
            } else {
                v410 = (varg10 >> 248) + v355 + 5;
                if (1 == msg.data[v411] >> 248) {
                    v410 = v413 = (varg10 >> 248) + v355 + 25;
                    v414 = (msg.data[v413] >> 96).approve(msg.data[v410] >> 96, uint256.max).gas(msg.gas);
                    require(v414);
                } else if (2 == msg.data[v411] >> 248) {
                    v415 = (msg.data[v410] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                    require(v415);
                }
            }
            v416 = v417 = 228;
            v418 = 0;
            while (v418 < msg.data[(varg10 >> 248) + v355 + 3] >> 248) {
                MEM[v416] = msg.data[v410] >> 96;
                v410 = v410 + 20;
                v416 = v416 + 32;
                v418 = v418 + 1;
            }
            if (1 == msg.data[(varg10 >> 248) + v355 + 2] >> 248) {
                v419 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248), uint256.max + v359, msg.sender, 0, 0, msg.data[(varg10 >> 248) + v355 + 3] >> 248).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v419);
            } else {
                v420 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(0xb77d239b00000000000000000000000000000000000000000000000000000000, 192, 0xb77d239b00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248), uint256.max + v359, msg.sender, 0, 0, msg.data[(varg10 >> 248) + v355 + 3] >> 248).gas(msg.gas);
                require(v420);
            }
        } else if (6 == varg8 >> 248) {
            v421 = v422 = 141;
            v423 = v424 = 0;
            v425 = v426 = 0;
            if (0 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v425 = varg11 >> 96;
                v421 = 161;
                v423 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                v423 = v427 = varg11 >> 96;
                v425 = v428 = varg20 >> 96;
                v421 = v429 = 181;
            }
            if (msg.data[v421] >> 248 == 2) {
                v430 = v423.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
                require(v430);
            }
            if (varg10 >> 248) {
                if (1 != varg10 >> 248) {
                }
            }
            v431 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(224, 224, 224, this, 0, msg.sender, 0, v359, uint256.max, uint256.max, msg.data[v421 + 1], 1, 0, v423, v425, v359, msg.data[v421 + 35] >> (msg.data[v421 + 33] >> 248), 192, 0).gas(msg.gas);
            require(v431);
        } else if (7 == varg8 >> 248) {
            v432 = v433 = 141;
            v434 = v435 = 0;
            v436 = v437 = 0;
            if (0 == varg9 >> 248) {
                MEM[0] = MEM[0];
                v436 = varg11 >> 96;
                v432 = 161;
                v434 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (1 == varg9 >> 248) {
                v436 = v438 = varg20 >> 96;
                v432 = v439 = 181;
                v434 = v440 = varg11 >> 96;
            }
            if (msg.data[v432 + 20] >> 248 == 2) {
                v441 = v434.approve(msg.data[v432] >> 96, uint256.max).gas(msg.gas);
                require(v441);
            }
            if (varg10 >> 248) {
                if (1 != varg10 >> 248) {
                }
            }
            v442 = (msg.data[v432] >> 96).swapExactAmountIn(0x8201aa3f00000000000000000000000000000000000000000000000000000000, v434, 0x7c5e9ea400000000000000000000000000000000000000000000000000000000, v434, 0x8201aa3f00000000000000000000000000000000000000000000000000000000, uint256.max, msg.data[v432 + 23] >> (msg.data[v432 + 21] >> 248), v436, v436, v359, v359 - 1, uint256.max).gas(msg.gas);
            require(v442);
            v443 = v436.transfer(msg.sender, v359).gas(msg.gas);
            require(v443);
        } else if (8 == varg8 >> 248) {
            CALLDATACOPY(68, v355 + (varg10 >> 248) + 5, msg.data[v355 + (varg10 >> 248) + 3] >> 240);
            MEM[(msg.data[v355 + (varg10 >> 248) + 3] >> 240) + 68] = varg11 >> (varg9 >> 248);
            v444 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, (msg.data[v355 + (varg10 >> 248) + 3] >> 240) + 32).gas(msg.gas);
            require(v444);
        } else if (9 == varg8 >> 248) {
            if (msg.data[v355 + (varg19 >> 248) + 63] >> 248 == 1) {
                v445 = (msg.data[v355 + (varg19 >> 248) + 43] >> 96).approve(varg9 >> 96, uint256.max).gas(msg.gas);
                require(v445);
            }
            if (1 != msg.data[v355 + (varg19 >> 248) + 22] >> 248) {
            }
            v446 = (varg9 >> 96).enter(0x67dfd4c900000000000000000000000000000000000000000000000000000000, 0xa59f3e0c00000000000000000000000000000000000000000000000000000000, varg20 >> (varg18 >> 248), 0x67dfd4c900000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            require(v446);
            v447 = (msg.data[v355 + (varg19 >> 248) + 23] >> 96).transfer(msg.sender, v359).gas(msg.gas);
            require(v447);
        } else if (10 == varg8 >> 248) {
            if (msg.data[(varg10 >> 248) + v355 + 5] >> 248 != 1) {
            }
            if (!(msg.data[(varg10 >> 248) + v355 + 2] >> 248)) {
                if (msg.data[(varg10 >> 248) + v355 + 5] >> 248 == 1) {
                    v448 = 0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v448);
                }
                v449 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248), msg.data[(varg10 >> 248) + v355 + 3] >> 248, msg.data[(varg10 >> 248) + v355 + 4] >> 248).gas(msg.gas);
                require(v449);
            } else if (1 == msg.data[(varg10 >> 248) + v355 + 2] >> 248) {
                v450 = v451 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f;
                if (msg.data[(varg10 >> 248) + v355 + 3] >> 248 == 1) {
                    v450 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460;
                }
                if (msg.data[(varg10 >> 248) + v355 + 5] >> 248 == 1) {
                    v452 = v450.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v452);
                }
                v453 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248), msg.data[(varg10 >> 248) + v355 + 4] >> 248, msg.data[(varg10 >> 248) + v355 + 3] >> 248).gas(msg.gas);
                require(v453);
            } else if (2 == msg.data[(varg10 >> 248) + v355 + 2] >> 248) {
                if (msg.data[(varg10 >> 248) + v355 + 5] >> 248 == 1) {
                    v454 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v454);
                }
                v455 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v455);
            } else {
                if (msg.data[(varg10 >> 248) + v355 + 5] >> 248 == 1) {
                    v456 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xb63cac384247597756545b500253ff8e607a8020, uint256.max).gas(msg.gas);
                    require(v456);
                }
                v457 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(msg.sender, msg.sender, msg.sender, varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v457);
            }
        } else if (11 == varg8 >> 248) {
            v458 = v459 = 0;
            v460 = v461 = 141;
            if (!(varg10 >> 248)) {
                v458 = varg13 >> (varg11 >> 248);
                v460 = (varg12 >> 248) + v355 + 4;
            }
            v462 = v463 = 0;
            v464 = v465 = 0;
            if (1 == varg9 >> 248) {
                v462 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                v466 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v458, v458, v458).gas(msg.gas);
                require(v466);
                v464 = msg.data[v460] >> 96;
                v460 = v467 = 20 + v460;
            } else if (!(varg9 >> 248)) {
                v464 = v468 = msg.data[v460 + 20] >> 96;
                v462 = v469 = msg.data[v460] >> 96;
                v460 = v470 = 40 + v460;
            }
            if (1 == msg.data[v460] >> 248) {
                v471 = v462.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint256.max).gas(msg.gas);
                require(v471);
            }
            if (!(varg10 >> 248)) {
                MEM[0] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
            } else if (1 == varg10 >> 248) {
                MEM[0] = 0x45d6602c00000000000000000000000000000000000000000000000000000000;
            }
            if (1 == varg9 >> 248) {
                v472 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v462, v462, v464, v464, v359, v458, uint256.max, uint256.max + v359, uint256.max, uint256.max, msg.sender, msg.sender).value(v458).gas(msg.gas);
                require(v472);
            } else {
                v473 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0], v462, v462, v464, v464, v359, v458, uint256.max, uint256.max + v359, uint256.max, uint256.max, msg.sender, msg.sender).gas(msg.gas);
                require(v473);
            }
        } else if (12 == varg8 >> 248) {
            v474 = varg9 >> 248;
            v475 = varg10 >> 248;
            v476 = varg13 >> (varg11 >> 248);
            v477 = msg.data[(varg12 >> 248) + v355 + 4] >> 96;
            v478 = v479 = (varg12 >> 248) + v355 + 25;
            if (1 == msg.data[(varg12 >> 248) + v355 + 24] >> 248) {
                v480 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v477, v477, v477, v476).gas(msg.gas);
                require(v480);
            } else if (2 == msg.data[(varg12 >> 248) + v355 + 24] >> 248) {
                v478 = (varg12 >> 248) + v355 + 45;
                v481 = (msg.data[v479] >> 96).approve(v477, uint256.max).gas(msg.gas);
                require(v481);
            }
            if (!(msg.data[v478] >> 248)) {
                if (1 == msg.data[v478 + 1] >> 248) {
                    v482 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v476, v476, v476).gas(msg.gas);
                    require(v482);
                    v483 = v477.exchange(v474, v475, v476, v359).value(v476).gas(msg.gas);
                    require(v483);
                    v484 = v485 = 0;
                    v486 = v487 = 2;
                } else {
                    v488 = v477.exchange(v474, v475, v476, v359).gas(msg.gas);
                    require(v488);
                    v484 = v489 = 0;
                    v486 = v490 = 2;
                }
                v491 = (msg.data[v478 + v486] >> 96).transfer(msg.sender, v359).value(v484).gas(msg.gas);
                require(v491);
            } else if (1 == msg.data[v478] >> 248) {
                v492 = v477.setMetaGold(v474, v475, v476, v359).gas(msg.gas);
                require(v492);
                v493 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v493);
            } else if (2 == msg.data[v478] >> 248) {
                v494 = v477.exchange(v474, v475, v476, v359, 0, msg.sender).gas(msg.gas);
                require(v494);
            } else if (3 == msg.data[v478] >> 248) {
                if (1 == msg.data[v478 + 1] >> 248) {
                    v495 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(v476, v476, v476).gas(msg.gas);
                    require(v495);
                    v496 = v477.exchange(v474, v475, v476, v359, msg.sender).value(v476).gas(msg.gas);
                    require(v496);
                } else {
                    v497 = v477.exchange(v474, v475, v476, v359, msg.sender).gas(msg.gas);
                    require(v497);
                }
            } else if (4 == msg.data[v478] >> 248) {
                v498 = v477.exchange_underlying(v474, v475, v476, v359, msg.sender).gas(msg.gas);
                require(v498);
            } else if (5 == msg.data[v478] >> 248) {
                v499 = v477.exchange_underlying(v474, v475, v476, v359, msg.sender).gas(msg.gas);
                require(v499);
            } else if (6 == msg.data[v478] >> 248) {
                v500 = v477.exchange_underlying(v474, v475, v476, v359).gas(msg.gas);
                require(v500);
                v501 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v501);
            } else if (7 == msg.data[v478] >> 248) {
                v502 = v477.exchange_underlying(v474, v475, v476, v359).gas(msg.gas);
                require(v502);
                v503 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v503);
            } else if (8 == msg.data[v478] >> 248) {
                if (0 != v474) {
                    if (1 != v474) {
                    }
                }
                v504 = v477.add_liquidity(v476, 0, v476, 0, v476, 0, v359).gas(msg.gas);
                require(v504);
                v505 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v505);
            } else if (9 == msg.data[v478] >> 248) {
                if (0 != v474) {
                }
                v506 = v477.add_liquidity(v476, 0, v476, 0, v359).gas(msg.gas);
                require(v506);
                v507 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v507);
            } else if (10 == msg.data[v478] >> 248) {
                v508 = v477.remove_liquidity_one_coin(v476, v475, v359).gas(msg.gas);
                require(v508);
                v509 = (msg.data[v478 + 1] >> 96).transfer(msg.sender, v359).gas(msg.gas);
                require(v509);
            }
        } else if (13 == varg8 >> 248) {
            v510 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, varg11 >> (varg9 >> 248)).gas(msg.gas);
            require(v510);
            v511 = (msg.data[(varg10 >> 248) + v355 + 2] >> 96).ethToTokenTransferOutput(v359, uint256.max, msg.sender).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
            require(v511);
        } else if (14 == varg8 >> 248) {
            v512 = v513 = 0;
            v514 = v515 = (varg10 >> 248) + v355 + 43;
            if (0 == msg.data[(varg10 >> 248) + v355 + 22] >> 248) {
                v516 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248), varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v516);
                v517 = v518 = 1;
            } else {
                v517 = v519 = 1;
                v512 = v520 = msg.data[v515] >> 96;
                v514 = v521 = (varg10 >> 248) + v355 + 63;
            }
            if (msg.data[v514] >> 248 == v517) {
                v522 = v512.approve(msg.data[(varg10 >> 248) + v355 + 2] >> 96, uint256.max).gas(msg.gas);
                require(v522);
            }
            if (0 == msg.data[(varg10 >> 248) + v355 + 22] >> 248) {
                v523 = (msg.data[(varg10 >> 248) + v355 + 2] >> 96).swap(v512, msg.data[(varg10 >> 248) + v355 + 23] >> 96, varg11 >> (varg9 >> 248), v359, 0).value(varg11 >> (varg9 >> 248)).gas(msg.gas);
                require(v523);
                v524 = v525 = 0;
            } else {
                v526 = (msg.data[(varg10 >> 248) + v355 + 2] >> 96).swap(v512, msg.data[(varg10 >> 248) + v355 + 23] >> 96, varg11 >> (varg9 >> 248), v359, 0).gas(msg.gas);
                require(v526);
                v524 = v527 = 0;
            }
            v528 = (msg.data[(varg10 >> 248) + v355 + 23] >> 96).transfer(msg.sender, v359).value(v524).gas(msg.gas);
            require(v528);
        } else {
            require(15 == varg8 >> 248);
            CALLDATACOPY(0, 162, varg19 >> 240);
            if (varg18 >> 248 != 1) {
            }
            v529 = (varg9 >> 96).call(v51, v359).gas(msg.gas);
            require(v529);
        }
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    if (0xfa461e33 != function_selector >> 224) {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x923b8a2a != function_selector >> 224) {
                if (0xa1dab4eb != function_selector >> 224) {
                    if (0x3a1c453c != function_selector >> 224) {
                        if (0x10d1e85c == function_selector >> 224) {
                            uniswapV2Call(address,uint256,uint256,bytes);
                        } else if (0xf04f2707 == function_selector >> 224) {
                            receiveFlashLoan(address[],uint256[],uint256[],bytes);
                        } else if (0x31f57072 == function_selector >> 224) {
                            onMorphoFlashLoan(uint256,bytes);
                        } else if (0x91dd7346 == function_selector >> 224) {
                            unlockCallback(bytes);
                        } else if (!(function_selector >> 224)) {
                            exit;
                        } else if (0x99999999 == function_selector >> 224) {
                            0x99999999(function_selector >> 224, function_selector >> 224);
                        } else if (0x22222222 == function_selector >> 224) {
                            0x22222222(function_selector >> 224);
                        } else {
                            if (0xd7e1236c08731c3632519dcd1a581bfe6876a3b2 - tx.origin) {
                                if (0x65fb9db5fc926eb22ac5ae86e74242e0df44718c - tx.origin) {
                                    if (0xb19c265d240326578eeb346189ebd96ae84949a9 - tx.origin) {
                                        if (0xdf8adfe10d4a4d9f0fc4d3e377a6e8d5730eb40c - tx.origin) {
                                            if (tx.origin != 0x5884b2faa9ad6f38010831e2290e515af17a7d47) {
                                                if (tx.origin != 0x333c92538e7f47d17c79e5975d4e40e901427558) {
                                                    if (0x9307514e06a07b149471ccfd690d0e3e6ace8df2 - tx.origin) {
                                                        if (tx.origin != 0x1b1548763f8d5d6d3c37ad500f389b57e107bbff) {
                                                            if (tx.origin != 0x84e03f3b74b10c70db109cae6523c09a01552186) {
                                                                require(tx.origin == 0xf07b4d27cae6571857e51ab3fb209f5226de2d88);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            if (STORAGE[0]) {
                                if (___function_selector__ == function_selector >> 224) {
                                    CALLDATACOPY(0, 0, msg.data.length);
                                    if (1 == (tstor_0_27_27 == 17)) {
                                        v0 = tstor_0_0_19.delegatecall(MEM[0:msg.data.length], MEM[36:68]).gas(msg.gas);
                                        require(v0);
                                    } else {
                                        v1 = tstor_0_0_19.call(MEM[0:msg.data.length], MEM[36:68]).gas(msg.gas);
                                        require(v1);
                                    }
                                    return MEM[36];
                                }
                            }
                            v2 = v3 = 2;
                            if (0 == varg1 >> 248) {
                                require(block.timestamp == msg.value);
                            } else if (1 == varg1 >> 248) {
                                v2 = v4 = 3;
                                if (0 == varg2 >> 248) {
                                    if (msg.sender != this) {
                                        v5 = (msg.data[varg3 >> 240] >> 96).getReserves().gas(msg.gas);
                                        require(v5);
                                        require(!((varg4 >> 144) - MEM[32]));
                                        v2 = v6 = 33;
                                        require(!((varg5 >> 144) - MEM[64]));
                                    } else {
                                        v2 = v7 = 33;
                                    }
                                } else if (1 == varg2 >> 248) {
                                    if (msg.sender != this) {
                                        v8 = (msg.data[varg3 >> 240] >> 96).slot0().gas(msg.gas);
                                        require(v8);
                                        v2 = v9 = 25;
                                        require(varg4 >> 96 == MEM[32]);
                                    } else {
                                        v2 = v10 = 25;
                                    }
                                }
                                // Unknown jump to Block 0x2e30. Refer to 3-address code (TAC);
                            } else if (3 == varg1 >> 248) {
                                v2 = v11 = 4;
                                if (!(uint16(block.coinbase.balance) - (varg2 >> 240))) {
                                    while (msg.gas > msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff63c0) {
                                        MEM[0] = 3;
                                    }
                                    exit;
                                }
                            }
                            v12 = v13 = v2 + 1;
                            v14 = v15 = 0;
                            while (v14 < msg.data[v2] >> 248) {
                                v16 = v12 + 1;
                                v17 = msg.data[v12] >> 248;
                                if (!v17) {
                                    v18 = msg.data[v12 + 21] >> 240;
                                    CALLDATACOPY(0, v12 + 23, v18);
                                    v19 = (msg.data[v16] >> 96).staticcall(MEM[0:v29ac], MEM[32:64]).gas(msg.gas);
                                    require(v19);
                                    v20 = v21 = 1;
                                    v12 = v12 + v18 + 23;
                                    MEM[0] = MEM[32];
                                    break;
                                } else if (1 == v17) {
                                    v22 = v16 + 1;
                                    v23 = v24 = 0;
                                    if (!(msg.data[v16] >> 248)) {
                                        MEM[0] = MEM[0];
                                        break;
                                        v23 = v25 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                    } else if (1 == msg.data[v16] >> 248) {
                                        MEM[0] = MEM[0];
                                        break;
                                        v23 = v26 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                                    } else if (2 == msg.data[v16] >> 248) {
                                        MEM[0] = MEM[0];
                                        break;
                                        v23 = v27 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                                    } else if (3 == msg.data[v16] >> 248) {
                                        MEM[0] = MEM[0];
                                        break;
                                        v23 = v28 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                                    } else if (4 == msg.data[v16] >> 248) {
                                        MEM[0] = MEM[0];
                                        break;
                                        v23 = v29 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                                    } else if (5 == msg.data[v16] >> 248) {
                                        v22 = 21 + v16;
                                        v23 = v30 = msg.data[v22] >> 96;
                                        break;
                                    } else {
                                        break;
                                    }
                                    v31 = v32 = msg.data[v22 + 2] >> (msg.data[v22] >> 248);
                                    v12 = v22 + (msg.data[v22 + 1] >> 248) + 3;
                                    v33 = v34 = 0;
                                    v35 = msg.data[v22 + (msg.data[v22 + 1] >> 248) + 2] >> 248;
                                    if (0 == v35) {
                                        v36 = v37 = 68;
                                        v38 = v39 = 0;
                                        v33 = v40 = msg.sender;
                                        break;
                                    } else if (1 == v35) {
                                        v36 = v41 = 68;
                                        v38 = v42 = 0;
                                        v33 = v43 = tx.origin;
                                        break;
                                    } else if (2 == v35) {
                                        v38 = v44 = 0;
                                        v36 = v45 = 68;
                                        v33 = v46 = msg.sender;
                                        v31 = v47 = msg.data[msg.data.length - 32];
                                        break;
                                    } else if (3 == v35) {
                                        v33 = v48 = tx.origin;
                                        v49 = v23.balanceOf(this).gas(msg.gas);
                                        require(v49);
                                        v38 = v50 = 0;
                                        v36 = v51 = 68;
                                        if (1 == MEM[36] > v32) {
                                            v31 = v52 = uint256.max + MEM[36];
                                            break;
                                        } else {
                                            break;
                                        }
                                        break;
                                    } else if (4 == v35) {
                                        v33 = v53 = tx.origin;
                                        v54 = v23.balanceOf(this).gas(msg.gas);
                                        require(v54);
                                        v55 = v56 = 0;
                                        if (MEM[36] > v32 == 1) {
                                            v55 = v57 = MEM[36] - v32;
                                        }
                                        v12 = v22 + (msg.data[v22 + 1] >> 248) + (msg.data[v22 + (msg.data[v22 + 1] >> 248) + 4] >> 248) + 5;
                                        v31 = v58 = (msg.data[v22 + (msg.data[v22 + 1] >> 248) + 5] >> (msg.data[v12] >> 248)) + v55;
                                        v59 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[36] - v58, MEM[36] - v58, MEM[36] - v58).gas(msg.gas);
                                        require(v59);
                                        v60 = block.coinbase.call().value(MEM[36] - v58).gas(msg.gas);
                                        require(v60);
                                        v38 = v61 = 0;
                                        v36 = v62 = 68;
                                    } else if (5 == v35) {
                                        v12 = v12 + 1;
                                        if (!(msg.data[v12] >> 248)) {
                                            v36 = v63 = 68;
                                            v38 = v64 = 0;
                                            MEM[0] = MEM[0];
                                            v33 = v65 = 0xba12222222228d8ba445958a75a0704d566bf2c8;
                                        } else {
                                            v38 = v66 = 0;
                                            v36 = v67 = 68;
                                            v33 = v68 = msg.data[v12] >> 96;
                                            v12 = v12 + 21;
                                        }
                                    } else {
                                        v38 = v69 = 0;
                                        v36 = v70 = 68;
                                        if (6 == v35) {
                                            v31 = v71 = MEM[v69];
                                            v12 = v12 + 20;
                                            v33 = v72 = msg.data[v12] >> 96;
                                        }
                                    }
                                    MEM[v38] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                    MEM[4] = v33;
                                    MEM[36] = v31;
                                    v73 = v23.call(MEM[v277f_0x7:v277f_0x7 + v277f_0x5], MEM[v277f_0x7:v277f_0x7 + v277f_0x7]).value(v38).gas(msg.gas);
                                    require(v73);
                                    v20 = v74 = 1;
                                    break;
                                } else {
                                    if (2 == v17) {
                                        v75 = v76 = 0;
                                        v77 = v16 + 23;
                                        if (0 == msg.data[v16 + 22] >> 248) {
                                            v75 = v78 = msg.data[v16 + 25] >> (msg.data[v77] >> 248);
                                            v77 = (msg.data[v16 + 24] >> 248) + v16 + 25;
                                            break;
                                        } else if (1 == msg.data[v16 + 22] >> 248) {
                                            v75 = v79 = msg.data[msg.data.length - 32];
                                            break;
                                        } else if (2 == msg.data[v16 + 22] >> 248) {
                                            v75 = v80 = MEM[0];
                                            break;
                                        } else {
                                            break;
                                        }
                                        v81 = v82 = 0;
                                        if (msg.data[v16 + 20] >> 248 == 1) {
                                            v83 = v77 + 1;
                                            v84 = v85 = 0;
                                            if (!(msg.data[v77] >> 248)) {
                                                MEM[0] = MEM[0];
                                                break;
                                                v84 = v86 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            } else if (1 == msg.data[v77] >> 248) {
                                                MEM[0] = MEM[0];
                                                break;
                                                v84 = v87 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                                            } else if (2 == msg.data[v77] >> 248) {
                                                MEM[0] = MEM[0];
                                                break;
                                                v84 = v88 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                                            } else if (3 == msg.data[v77] >> 248) {
                                                MEM[0] = MEM[0];
                                                break;
                                                v84 = v89 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                                            } else if (4 == msg.data[v77] >> 248) {
                                                MEM[0] = MEM[0];
                                                v84 = v90 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                                            } else if (5 == msg.data[v77] >> 248) {
                                                v83 = 21 + v77;
                                                v84 = v91 = msg.data[v83] >> 96;
                                            }
                                            v77 = v83 + 1;
                                            v92 = v93 = 0;
                                            if (!(msg.data[v83] >> 248)) {
                                                v77 = 3 + (v83 + (msg.data[v83 + 2] >> 248));
                                                v92 = v94 = msg.data[v83 + 3] >> (msg.data[v77] >> 248);
                                                break;
                                            } else if (1 == msg.data[v83] >> 248) {
                                                v95 = (msg.data[v16] >> 96).getReserves().gas(msg.gas);
                                                require(v95);
                                                v96 = v97 = MEM[32];
                                                v96 = v98 = MEM[64];
                                                v96 = v99 = 0;
                                                if (!(msg.data[v16 + 21] >> 248)) {
                                                    break;
                                                } else if (1 != msg.data[v16 + 21] >> 248) {
                                                }
                                                v100 = 1 + (msg.data[v77] >> 224) * (v75 * v96) / ((msg.data[v77 + 4] >> 224) * (v96 - v75));
                                                v77 += 9;
                                                v92 = v101 = v100 * (msg.data[v77 + 8] >> 248) / 100 + v100;
                                                break;
                                            } else if (2 == msg.data[v83] >> 248) {
                                                v77 += 1;
                                                v92 = v102 = msg.data[msg.data.length - 32] * (msg.data[v77] >> 248) / 100 + msg.data[msg.data.length - 32];
                                                break;
                                            } else if (3 == msg.data[v83] >> 248) {
                                                v77 += 1;
                                                v92 = v103 = msg.data[msg.data.length - 64] * (msg.data[v77] >> 248) / 100 + msg.data[msg.data.length - 64];
                                                break;
                                            } else if (4 == msg.data[v83] >> 248) {
                                                v77 = v77 + 1;
                                                v92 = v104 = MEM[0] * (msg.data[v77] >> 248) / 100 + MEM[0];
                                            }
                                            v105 = v84.transfer(msg.data[v16] >> 96, v92).gas(msg.gas);
                                            require(v105);
                                            break;
                                        } else {
                                            break;
                                        }
                                        v106 = v77 + 1;
                                        if (msg.data[v77] >> 248 == 1) {
                                            v107 = v77 + 11;
                                            v108 = v109 = 0;
                                            v110 = msg.data[v77 + 10] >> 248;
                                            if (0 == v110) {
                                                v108 = v111 = msg.data[v77 + 13] >> (msg.data[v107] >> 248);
                                                v107 = v77 + (msg.data[v77 + 12] >> 248) + 13;
                                                break;
                                            } else if (1 == v110) {
                                                v108 = v112 = MEM[0];
                                                break;
                                            } else if (2 == v110) {
                                                v108 = v113 = msg.data[msg.data.length - 32];
                                                break;
                                            } else if (3 == v110) {
                                                CALLDATACOPY(0, v107 + 22, msg.data[v107 + 20] >> 240);
                                                v114 = (msg.data[v107] >> 96).staticcall(MEM[0:msg.data[v23db_0x4 + 20] >> 240], MEM[32:64]).gas(msg.gas);
                                                require(v114);
                                                v108 = v115 = MEM[32];
                                                v107 = 22 + (v107 + (msg.data[v107 + 20] >> 240));
                                            } else if (4 == v110) {
                                                v108 = v116 = msg.data[msg.data.length - 64];
                                            } else if (5 == v110) {
                                                v108 = v117 = MEM[0];
                                            }
                                            v118 = (msg.data[v16] >> 96).getReserves().gas(msg.gas);
                                            require(v118);
                                            v119 = v120 = MEM[32];
                                            v119 = v121 = MEM[64];
                                            v119 = v122 = 0;
                                            if (!(msg.data[v16 + 21] >> 248)) {
                                                break;
                                            } else if (1 == msg.data[v16 + 21] >> 248) {
                                                break;
                                            } else {
                                                break;
                                            }
                                            v123 = (v108 - v108 * (msg.data[v77 + 9] >> 248) / 100) * (msg.data[v77 + 5] >> 224);
                                            v75 = v124 = v123 * v119 / (v119 * (msg.data[v106] >> 224) + v123);
                                            v81 = v125 = msg.data[v107] >> 248;
                                            v106 = v107 + 1;
                                            break;
                                        } else {
                                            break;
                                        }
                                        MEM[0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                                        if (!(msg.data[v16 + 21] >> 248)) {
                                            MEM[4] = v75;
                                            MEM[36] = 0;
                                        } else {
                                            MEM[4] = 0;
                                            MEM[36] = v75;
                                        }
                                        v12 = v106 + 1;
                                        if (!(msg.data[v106] >> 248)) {
                                            v126 = v127 = 0;
                                            MEM[68] = this;
                                        } else if (1 == msg.data[v106] >> 248) {
                                            v126 = v128 = 0;
                                            MEM[68] = msg.data[v106 + 2] >> 96;
                                        } else if (3 == msg.data[v106] >> 248) {
                                            v126 = v129 = 0;
                                            MEM[68] = msg.sender;
                                        } else {
                                            v126 = v130 = 0;
                                            v12 = v106 + 3;
                                            MEM[68] = msg.data[msg.data[v12] >> 240] >> 96;
                                        }
                                        MEM[100] = 128;
                                        if (3 == msg.data[v16 + 20] >> 248) {
                                            MEM[132] = msg.data[v12] >> 240;
                                            CALLDATACOPY(164, v12 + 2, msg.data[v12] >> 240);
                                            v12 = v12 + (msg.data[v12] >> 240) + 2;
                                            v131 = (msg.data[v16] >> 96).call(MEM[v22bc_0x2:v22bc_0x2 + 196 + msg.data[v2d6a_0x0] >> 240], MEM[v22bc_0x2:v22bc_0x2 + v22bc_0x2]).value(v126).gas(msg.gas);
                                            require(v131);
                                            v20 = v132 = 1;
                                        } else {
                                            MEM[132] = v126;
                                            v133 = (msg.data[v16] >> 96).call(MEM[v22bc_0x2:v22bc_0x2 + 164], MEM[v22bc_0x2:v22bc_0x2 + v22bc_0x2]).value(v126).gas(msg.gas);
                                            require(v133);
                                            v20 = v134 = 1;
                                        }
                                        if (v81 == v20) {
                                            v12 = v12 + v20;
                                            MEM[0] = v75 - v75 * (msg.data[v12] >> 248) / 100;
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else if (3 == v17) {
                                        v135 = v136 = 0;
                                        v137 = v16 + 23;
                                        if (0 == msg.data[v16 + 22] >> 248) {
                                            v135 = v138 = msg.data[v16 + 25] >> (msg.data[v137] >> 248);
                                            v137 = (msg.data[v16 + 24] >> 248) + v16 + 25;
                                            break;
                                        } else if (1 == msg.data[v16 + 22] >> 248) {
                                            v135 = v139 = msg.data[msg.data.length - 32];
                                            break;
                                        } else if (2 == msg.data[v16 + 22] >> 248) {
                                            v135 = v140 = uint256.max + MEM[0];
                                            break;
                                        } else if (3 == msg.data[v16 + 22] >> 248) {
                                            CALLDATACOPY(0, v137 + 22, msg.data[v137 + 20] >> 240);
                                            v141 = (msg.data[v137] >> 96).staticcall(MEM[0:msg.data[v2104_0x0 + 20] >> 240], MEM[32:64]).gas(msg.gas);
                                            require(v141);
                                            v135 = v142 = MEM[32];
                                            v137 = 22 + (v137 + (msg.data[v137 + 20] >> 240));
                                        } else if (4 == msg.data[v16 + 22] >> 248) {
                                            v135 = v143 = msg.data[msg.data.length - 64];
                                        } else if (5 == msg.data[v16 + 22] >> 248) {
                                            v135 = v144 = MEM[0];
                                        }
                                        if (msg.data[v16 + 21] >> 248 == 1) {
                                            v135 = v145 = 0 - v135;
                                            break;
                                        } else {
                                            break;
                                        }
                                        v146 = v137 + 1;
                                        if (msg.data[v137] >> 248 == 2) {
                                            v146 = v137 + 21;
                                            v147 = (msg.data[v146] >> 96).approve(msg.data[v16] >> 96, uint256.max).gas(msg.gas);
                                            require(v147);
                                            break;
                                        } else {
                                            break;
                                        }
                                        if (0 == msg.data[v16 + 20] >> 248) {
                                            MEM[100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        } else {
                                            MEM[100] = 0x1000276a4;
                                        }
                                        MEM[68] = v135;
                                        v148 = v146 + 2;
                                        v149 = v150 = 0;
                                        v151 = v152 = 0;
                                        if (0 == msg.data[v146 + 1] >> 248) {
                                            v149 = v153 = this;
                                            v151 = v154 = msg.data[v148] >> 240;
                                            v148 = 4 + v146;
                                            break;
                                        } else if (1 == msg.data[v146 + 1] >> 248) {
                                            v151 = v155 = msg.data[v148] >> 240;
                                            v149 = v156 = msg.data[3 + (v148 + v155)] >> 96;
                                            v148 += 2;
                                            break;
                                        } else if (2 == msg.data[v146 + 1] >> 248) {
                                            v149 = v157 = msg.data[msg.data[v148] >> 240] >> 96;
                                            v151 = v158 = msg.data[v148 + 2] >> 240;
                                            v148 += 4;
                                            break;
                                        } else if (3 == msg.data[v146 + 1] >> 248) {
                                            v149 = v159 = msg.sender;
                                            v151 = v160 = msg.data[v148] >> 240;
                                            v148 += 2;
                                            break;
                                        } else {
                                            break;
                                        }
                                        CALLDATACOPY(196, v148, v151);
                                        v12 = v148 + v151;
                                        v161 = (msg.data[v16] >> 96).swap(v149, msg.data[v16 + 20] >> 248, v162, v162, 160, v151).gas(msg.gas);
                                        require(v161);
                                        v20 = v163 = 1;
                                        if ((msg.data[v146] >> 248) - v163) {
                                            break;
                                        } else {
                                            if (MEM[292] < 0) {
                                                MEM[0] = 0 - MEM[292];
                                                break;
                                            } else {
                                                break;
                                            }
                                            if (MEM[324] < 0) {
                                                MEM[0] = 0 - MEM[324];
                                                break;
                                            } else {
                                                break;
                                            }
                                        }
                                    } else if (4 == v17) {
                                        v164 = v165 = 0;
                                        if (1 == msg.data[v16 + 20] >> 248) {
                                            v164 = v166 = msg.data[msg.data.length - 32];
                                            break;
                                        } else if (2 == msg.data[v16 + 20] >> 248) {
                                            v164 = v167 = MEM[v165];
                                            break;
                                        } else if (3 == msg.data[v16 + 20] >> 248) {
                                            v164 = v168 = msg.data[msg.data.length - 64];
                                            break;
                                        } else if (4 == msg.data[v16 + 20] >> 248) {
                                            v164 = v169 = MEM[v165];
                                        }
                                        CALLDATACOPY(v165, v16 + 23, msg.data[v16 + 21] >> 240);
                                        if (msg.data[v16 + 20] >> 248) {
                                            MEM[1] = v164;
                                            break;
                                        } else {
                                            break;
                                        }
                                        v12 = v16 + (msg.data[v16 + 21] >> 240) + 23;
                                        v170 = (msg.data[v16] >> 96).delegatecall(MEM[v1eb9:v1eb9 + msg.data[vce + 21] >> 240], MEM[36:68]).gas(msg.gas);
                                        require(v170);
                                        v20 = v171 = 1;
                                        MEM[0] = MEM[36];
                                        break;
                                    } else {
                                        if (5 == v17) {
                                            v172 = v16 + 1;
                                            v173 = v174 = 0;
                                            if (msg.data[v16] >> 248 != 1) {
                                                v173 = v175 = msg.data[v16 + 3] >> (msg.data[v172] >> 248);
                                                v172 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                break;
                                            } else if (1 == (msg.data[v16] >> 248 == 1)) {
                                                v173 = v176 = uint256.max + MEM[0];
                                                break;
                                            } else if (2 == (msg.data[v16] >> 248 == 1)) {
                                                v173 = v177 = msg.data[msg.data.length - 64];
                                            } else if (3 == (msg.data[v16] >> 248 == 1)) {
                                                v173 = v178 = msg.data[msg.data.length - 32];
                                            } else if (4 == (msg.data[v16] >> 248 == 1)) {
                                                v173 = v179 = MEM[0];
                                            }
                                            v180 = v172 + 2;
                                            v181 = v182 = 0;
                                            if (0 == msg.data[v172 + 1] >> 248) {
                                                v181 = v183 = this;
                                                break;
                                            } else if (1 == msg.data[v172 + 1] >> 248) {
                                                v181 = v184 = msg.data[msg.data[v180] >> 240] >> 96;
                                                v180 = 4 + v172;
                                                break;
                                            } else if (3 == msg.data[v172 + 1] >> 248) {
                                                v181 = v185 = msg.sender;
                                            }
                                            v186 = v180 + 2;
                                            v187 = v188 = 1;
                                            if (msg.data[v180 + 1] >> 248 == v188) {
                                                v187 = v189 = msg.data[v180 + 3] >> 232 << (msg.data[v186] >> 248);
                                                v186 = v180 + 6;
                                                break;
                                            } else {
                                                break;
                                            }
                                            v190 = v186 + 1;
                                            if (msg.data[v186] >> 248 == 1) {
                                                MEM[132] = msg.data[v190] >> 96;
                                                v190 = v186 + 21;
                                                break;
                                            } else {
                                                break;
                                            }
                                            if (1 == msg.data[v172] >> 248) {
                                                v191 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v173).gas(msg.gas);
                                                require(v191);
                                                break;
                                            } else {
                                                v190 = v190 + 1;
                                                MEM[100] = v190;
                                                if (1 == msg.data[v190] >> 248) {
                                                    v192 = (msg.data[v190] >> 96).approve(MEM[132], uint256.max).gas(msg.gas);
                                                    require(v192);
                                                } else if (2 == msg.data[v190] >> 248) {
                                                    v193 = (msg.data[MEM[100]] >> 96).call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint256.max).gas(msg.gas);
                                                    require(v193);
                                                }
                                            }
                                            MEM[0] = 0xb77d239b00000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 192;
                                            MEM[36] = v173;
                                            MEM[68] = v187;
                                            MEM[100] = v181;
                                            MEM[132] = 0;
                                            MEM[164] = 0;
                                            MEM[196] = msg.data[v180] >> 248;
                                            v194 = v195 = 228;
                                            v196 = v197 = 0;
                                            while (v196 < msg.data[v180] >> 248) {
                                                MEM[v194] = msg.data[v190] >> 96;
                                                v190 = v190 + 20;
                                                v194 = v194 + 32;
                                                v196 = v196 + 1;
                                            }
                                            if (1 == msg.data[v172] >> 248) {
                                                v198 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[0]).value(v173).gas(msg.gas);
                                                require(v198);
                                                v20 = v199 = 1;
                                            } else if (2 == msg.data[v172] >> 248) {
                                                v200 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[0]).gas(msg.gas);
                                                require(v200);
                                                v201 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(MEM[292]).gas(msg.gas);
                                                require(v201);
                                                v20 = v202 = 1;
                                            } else {
                                                v203 = 0x0000000000000000000000002f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[0]).gas(msg.gas);
                                                require(v203);
                                                v20 = v204 = 1;
                                                v12 = v190 + v204;
                                                if (!((msg.data[v190] >> 248) - v204)) {
                                                    MEM[0] = MEM[292];
                                                }
                                            }
                                        } else if (6 == v17) {
                                            v205 = v206 = 0;
                                            v207 = v16 + 1;
                                            if (!(msg.data[v16] >> 248)) {
                                                v205 = v208 = msg.data[v16 + 3] >> (msg.data[v207] >> 248);
                                                v207 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                break;
                                            } else if (1 == msg.data[v16] >> 248) {
                                                v205 = v209 = uint256.max + MEM[0];
                                            } else if (2 == msg.data[v16] >> 248) {
                                                v205 = v210 = msg.data[msg.data.length - 64];
                                            } else if (3 == msg.data[v16] >> 248) {
                                                v205 = v211 = msg.data[msg.data.length - 32];
                                            } else if (4 == msg.data[v16] >> 248) {
                                                v205 = v212 = MEM[0];
                                            }
                                            MEM[0] = MEM[0];
                                            if (0 == msg.data[v207] >> 248) {
                                                v213 = v214 = msg.data[v207 + 2] >> 96;
                                                v215 = v207 + 22;
                                            } else if (1 == msg.data[v207] >> 248) {
                                                v213 = v216 = msg.data[v207 + 2] >> 96;
                                                v215 = v207 + 2 + 40;
                                                v213 = v217 = msg.data[20 + (v207 + 2)] >> 96;
                                            } else {
                                                v213 = v218 = msg.data[v207 + 2] >> 96;
                                                v215 = v207 + 2 + 20;
                                            }
                                            v213 = v219 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            if (msg.data[v215] >> 248 == 2) {
                                                v220 = v213.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, uint256.max).gas(msg.gas);
                                                require(v220);
                                            } else {
                                                break;
                                            }
                                            v221 = v215 + 35;
                                            v222 = v223 = 1;
                                            if (msg.data[v215 + 34] >> 248 == v223) {
                                                v221 = v215 + 39;
                                                v222 = v224 = msg.data[v215 + 36] >> 232 << (msg.data[v221] >> 248);
                                                break;
                                            } else {
                                                break;
                                            }
                                            v225 = v226 = this;
                                            if (1 == msg.data[v215 + 33] >> 248) {
                                                v221 = v221 + 2;
                                                v225 = v227 = msg.data[msg.data[v221] >> 240] >> 96;
                                                break;
                                            } else if (3 == msg.data[v215 + 33] >> 248) {
                                                v225 = v228 = msg.sender;
                                            }
                                            MEM[0] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                            MEM[4] = 224;
                                            MEM[36] = this;
                                            MEM[68] = 0;
                                            MEM[100] = v225;
                                            MEM[132] = 0;
                                            MEM[196] = uint256.max;
                                            MEM[228] = msg.data[v215 + 1];
                                            MEM[292] = v213;
                                            MEM[324] = v213;
                                            if (0 == msg.data[v207 + 1] >> 248) {
                                                MEM[164] = v222;
                                                MEM[260] = 0;
                                                MEM[356] = v205;
                                                break;
                                            } else if (1 == msg.data[v207 + 1] >> 248) {
                                                MEM[164] = uint256.max;
                                                MEM[260] = 1;
                                                MEM[356] = msg.data[msg.data.length - 32];
                                            }
                                            v229 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[0], v162, v162, v162, v162, v162, v162, v162, v162, v162, v162, v162, v162, 192, 0).gas(msg.gas);
                                            require(v229);
                                            v20 = v230 = 1;
                                            v12 = v221 + v230;
                                            if (!((msg.data[v221] >> 248) - v230)) {
                                                MEM[0] = MEM[452];
                                            }
                                        } else {
                                            if (7 == v17) {
                                                v231 = v232 = 0;
                                                v233 = v16 + 1;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v231 = v234 = msg.data[v16 + 3] >> (msg.data[v233] >> 248);
                                                    v233 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v231 = v235 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v231 = v236 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v231 = v237 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v231 = v238 = MEM[0];
                                                }
                                                if (0 == msg.data[v233] >> 248) {
                                                    v239 = 22 + v233;
                                                    MEM[0] = MEM[0];
                                                    v240 = v241 = msg.data[v233 + 2] >> 96;
                                                    v242 = v243 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                } else if (1 == msg.data[v233] >> 248) {
                                                    v239 = v233 + 2 + 40;
                                                    v242 = v244 = msg.data[v233 + 2] >> 96;
                                                    v240 = v245 = msg.data[20 + (v233 + 2)] >> 96;
                                                } else {
                                                    v242 = v246 = msg.data[v233 + 2] >> 96;
                                                    v239 = v233 + 2 + 20;
                                                    MEM[0] = MEM[0];
                                                    v240 = v247 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                }
                                                if (msg.data[v239 + 20] >> 248 == 2) {
                                                    v248 = v242.approve(msg.data[v239] >> 96, uint256.max).gas(msg.gas);
                                                    require(v248);
                                                }
                                                v249 = v239 + 22;
                                                v250 = v251 = 1;
                                                if (msg.data[v239 + 21] >> 248 == v251) {
                                                    v250 = v252 = msg.data[v239 + 24] >> (msg.data[v249] >> 248);
                                                    v249 = 24 + ((msg.data[v239 + 23] >> 248) + v239);
                                                }
                                                if (0 == msg.data[v233 + 1] >> 248) {
                                                    MEM[0] = 0x8201aa3f00000000000000000000000000000000000000000000000000000000;
                                                    MEM[4] = v242;
                                                    MEM[36] = v231;
                                                    MEM[68] = v240;
                                                    MEM[100] = v250;
                                                } else if (1 == msg.data[v233 + 1] >> 248) {
                                                    MEM[0] = 0x7c5e9ea400000000000000000000000000000000000000000000000000000000;
                                                    MEM[4] = v242;
                                                    MEM[36] = uint256.max;
                                                    MEM[68] = v240;
                                                    MEM[100] = msg.data[msg.data.length - 32];
                                                }
                                                v253 = (msg.data[v239] >> 96).call(v162, v162, v162, v162, v162, uint256.max).gas(msg.gas);
                                                require(v253);
                                                v12 = v249 + 2;
                                                v254 = v255 = MEM[164];
                                                if (1 == msg.data[v249] >> 248) {
                                                    v12 = 4 + v249;
                                                    if (1 == msg.data[v233 + 1] >> 248) {
                                                        v254 = v256 = msg.data[msg.data.length - 32];
                                                    }
                                                    v257 = MEM[0x44].transfer(msg.data[msg.data[v12] >> 240] >> 96, v254).gas(msg.gas);
                                                    require(v257);
                                                } else if (3 == msg.data[v249] >> 248) {
                                                    if (1 == msg.data[v233 + 1] >> 248) {
                                                        v254 = v258 = msg.data[msg.data.length - 32];
                                                    }
                                                    v259 = MEM[0x44].transfer(msg.sender, v254).gas(msg.gas);
                                                    require(v259);
                                                }
                                                v20 = v260 = 1;
                                                if (msg.data[v249 + 1] >> 248 != v260) {
                                                }
                                            } else if (8 == v17) {
                                                v261 = v262 = 0;
                                                v263 = v16 + 1;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v261 = v264 = msg.data[v16 + 3] >> (msg.data[v263] >> 248);
                                                    v263 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v261 = v265 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v261 = v266 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v261 = v267 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v261 = v268 = MEM[0];
                                                }
                                                v12 = v263 + 5;
                                                CALLDATACOPY(68, v12, msg.data[v263 + 3] >> 240);
                                                MEM[(msg.data[v263 + 3] >> 240) + 68] = v261;
                                                v269 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, (msg.data[v263 + 3] >> 240) + 32).gas(msg.gas);
                                                require(v269);
                                                v254 = v270 = MEM[32];
                                                if (msg.data[v263 + 2] >> 248 == 1) {
                                                    v271 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(v270).gas(msg.gas);
                                                    require(v271);
                                                }
                                                v20 = v272 = 1;
                                                if (msg.data[v263] >> 248 != v272) {
                                                }
                                            } else if (9 == v17) {
                                                v273 = v16 + 21;
                                                v274 = v275 = 0;
                                                if (!(msg.data[v16 + 20] >> 248)) {
                                                    v274 = v276 = msg.data[v16 + 23] >> (msg.data[v273] >> 248);
                                                    v273 = (msg.data[v16 + 22] >> 248) + v16 + 23;
                                                } else if (1 == msg.data[v16 + 20] >> 248) {
                                                    v274 = v277 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16 + 20] >> 248) {
                                                    v274 = v278 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16 + 20] >> 248) {
                                                    v274 = v279 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16 + 20] >> 248) {
                                                    v274 = v280 = MEM[0];
                                                }
                                                v281 = v282 = this;
                                                v254 = v283 = 0;
                                                v284 = v273 + 43;
                                                if (msg.data[v273 + 42] >> 248 == 1) {
                                                    v254 = v285 = msg.data[v273 + 45] >> (msg.data[v284] >> 248);
                                                    v284 = (msg.data[v273 + 44] >> 248) + v273 + 45;
                                                }
                                                if (1 == msg.data[v273 + 41] >> 248) {
                                                    v284 = v284 + 2;
                                                    v281 = v286 = msg.data[msg.data[v284] >> 240] >> 96;
                                                } else if (3 == msg.data[v273 + 41] >> 248) {
                                                    v281 = v287 = msg.sender;
                                                }
                                                if (msg.data[v284] >> 248 == 1) {
                                                    v288 = (msg.data[v273 + 21] >> 96).approve(msg.data[v16] >> 96, uint256.max).gas(msg.gas);
                                                    require(v288);
                                                }
                                                v12 = v284 + 2;
                                                if (!v254) {
                                                    v289 = (msg.data[v273 + 1] >> 96).balanceOf(this).gas(msg.gas);
                                                    require(v289);
                                                    v254 = v290 = MEM[36];
                                                }
                                                if (1 == msg.data[v273] >> 248) {
                                                    MEM[0] = 0x67dfd4c900000000000000000000000000000000000000000000000000000000;
                                                } else {
                                                    MEM[0] = 0xa59f3e0c00000000000000000000000000000000000000000000000000000000;
                                                }
                                                v291 = (msg.data[v16] >> 96).call(v162, v274).gas(msg.gas);
                                                require(v291);
                                                if (msg.data[v273 + 41] >> 248) {
                                                    v292 = (msg.data[v273 + 1] >> 96).transfer(v281, v254).gas(msg.gas);
                                                    require(v292);
                                                }
                                                v20 = v293 = 1;
                                                if (msg.data[v284 + 1] >> 248 != v293) {
                                                }
                                            } else if (10 == v17) {
                                                v294 = v16 + 1;
                                                v295 = v296 = 0;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v295 = v297 = msg.data[v16 + 3] >> (msg.data[v294] >> 248);
                                                    v294 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v295 = v298 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v295 = v299 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v295 = v300 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v295 = v301 = MEM[0];
                                                }
                                                v302 = v294 + 2;
                                                v303 = v304 = this;
                                                if (1 == msg.data[v294 + 1] >> 248) {
                                                    v302 = 4 + v294;
                                                    v303 = v305 = msg.data[msg.data[v302] >> 240] >> 96;
                                                } else if (3 == msg.data[v294 + 1] >> 248) {
                                                    v303 = v306 = msg.sender;
                                                }
                                                if (msg.data[v302 + 2] >> 248 == 1) {
                                                    MEM[0] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
                                                    MEM[4] = 0xb63cac384247597756545b500253ff8e607a8020;
                                                    MEM[36] = uint256.max;
                                                }
                                                v12 = v302 + 4;
                                                if (0 == msg.data[v294] >> 248) {
                                                    if (msg.data[v302 + 2] >> 248 == 1) {
                                                        v307 = 0x64aa3364f17a4d01c6f1751fd97c2bd3d7e7f1d5.call(MEM[0:68], MEM[0:0]).gas(msg.gas);
                                                        require(v307);
                                                    }
                                                    v308 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(0xd866c9d800000000000000000000000000000000000000000000000000000000, 0xd866c9d800000000000000000000000000000000000000000000000000000000, v303, v295, msg.data[v302] >> 248, msg.data[v302 + 1] >> 248).gas(msg.gas);
                                                    require(v308);
                                                    v20 = v309 = 1;
                                                    if (!((msg.data[v302 + 3] >> 248) - v309)) {
                                                        MEM[0] = MEM[132];
                                                    }
                                                } else if (1 == msg.data[v294] >> 248) {
                                                    v310 = v311 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f;
                                                    if (msg.data[v302] >> 248 == 1) {
                                                        v310 = v312 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460;
                                                    }
                                                    if (msg.data[v302 + 2] >> 248 == 1) {
                                                        v313 = v310.call(MEM[0:68], MEM[0:0]).gas(msg.gas);
                                                        require(v313);
                                                    }
                                                    v314 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(0x990966d500000000000000000000000000000000000000000000000000000000, 0x990966d500000000000000000000000000000000000000000000000000000000, v303, v295, msg.data[v302 + 1] >> 248, msg.data[v302] >> 248).gas(msg.gas);
                                                    require(v314);
                                                    v20 = v315 = 1;
                                                    if (!((msg.data[v302 + 3] >> 248) - v315)) {
                                                        MEM[0] = MEM[132];
                                                    }
                                                } else if (2 == msg.data[v294] >> 248) {
                                                    if (msg.data[v302 + 2] >> 248 == 1) {
                                                        v316 = 0x4906695d6d12cf5459975d7c3c03356e4ccd460.call(MEM[0:68], MEM[0:0]).gas(msg.gas);
                                                        require(v316);
                                                    }
                                                    v317 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(0xbf376c7a00000000000000000000000000000000000000000000000000000000, 0xbf376c7a00000000000000000000000000000000000000000000000000000000, v303, v295).gas(msg.gas);
                                                    require(v317);
                                                    v20 = v318 = 1;
                                                    if (!((msg.data[v302 + 3] >> 248) - v318)) {
                                                        MEM[0] = MEM[68];
                                                    }
                                                } else {
                                                    if (msg.data[v302 + 2] >> 248 == 1) {
                                                        v319 = 0xab87046fbb341d058f17cbc4c1133f25a20a52f.call(MEM[0:68], MEM[0:0]).gas(msg.gas);
                                                        require(v319);
                                                    }
                                                    v320 = 0x000000000000000000000000b63cac384247597756545b500253ff8e607a8020.call(0x39f4769300000000000000000000000000000000000000000000000000000000, 0x39f4769300000000000000000000000000000000000000000000000000000000, v303, v295).gas(msg.gas);
                                                    require(v320);
                                                    v20 = v321 = 1;
                                                    if (!((msg.data[v302 + 3] >> 248) - v321)) {
                                                        MEM[0] = MEM[68];
                                                    }
                                                }
                                            } else if (11 == v17) {
                                                v322 = v16 + 1;
                                                v323 = v324 = 0;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v323 = v325 = msg.data[v16 + 3] >> (msg.data[v322] >> 248);
                                                    v322 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v323 = v326 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v323 = v327 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v323 = v328 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v323 = v329 = MEM[0];
                                                }
                                                v330 = v322 + 3;
                                                v331 = v332 = this;
                                                if (1 == msg.data[v322 + 2] >> 248) {
                                                    v331 = v333 = msg.data[msg.data[v330] >> 240] >> 96;
                                                    v330 = 5 + v322;
                                                } else if (3 == msg.data[v322 + 2] >> 248) {
                                                    v331 = v334 = msg.sender;
                                                }
                                                if (1 == msg.data[v322] >> 248) {
                                                    v335 = v336 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                    v337 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v323).gas(msg.gas);
                                                    require(v337);
                                                    v338 = v339 = msg.data[v330] >> 96;
                                                    v340 = v330 + 20;
                                                } else if (!(msg.data[v322] >> 248)) {
                                                    v335 = v341 = msg.data[v330] >> 96;
                                                    v338 = v342 = msg.data[v330 + 20] >> 96;
                                                    v340 = v330 + 40;
                                                } else {
                                                    v338 = v343 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                                                    v335 = v344 = msg.data[v330] >> 96;
                                                    v340 = 20 + v330;
                                                }
                                                if (msg.data[v340] >> 248 == 1) {
                                                    v345 = v335.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint256.max).gas(msg.gas);
                                                    require(v345);
                                                }
                                                v190 = v340 + 2;
                                                v346 = v347 = 1;
                                                if (v347 == msg.data[v347 + v340] >> 248) {
                                                    v190 = v340 + 6;
                                                    v346 = v348 = msg.data[v340 + 3] >> 232 << (msg.data[v190] >> 248);
                                                }
                                                if (!(msg.data[v322 + 1] >> 248)) {
                                                    MEM[0] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
                                                    MEM[4] = v335;
                                                    MEM[36] = v338;
                                                    MEM[132] = uint256.max;
                                                    MEM[164] = v331;
                                                    MEM[68] = v323;
                                                    MEM[100] = v346;
                                                } else if (1 == msg.data[v322 + 1] >> 248) {
                                                    MEM[0] = 0x45d6602c00000000000000000000000000000000000000000000000000000000;
                                                    MEM[4] = v335;
                                                    MEM[36] = v338;
                                                    MEM[132] = uint256.max;
                                                    MEM[164] = v331;
                                                    MEM[68] = msg.data[msg.data.length - 32];
                                                    MEM[100] = uint256.max;
                                                }
                                                if (1 == msg.data[v322] >> 248) {
                                                    v349 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0]).value(v323).gas(msg.gas);
                                                    require(v349);
                                                    v20 = v350 = 1;
                                                } else if (2 == msg.data[v322] >> 248) {
                                                    v351 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0]).gas(msg.gas);
                                                    require(v351);
                                                    v352 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(MEM[292]).gas(msg.gas);
                                                    require(v352);
                                                    v20 = v353 = 1;
                                                } else {
                                                    v354 = 0x000000000000000000000000eef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[0]).gas(msg.gas);
                                                    require(v354);
                                                    v20 = v355 = 1;
                                                }
                                            } else if (12 == v17) {
                                                v356 = msg.data[v16] >> 248;
                                                v357 = v358 = 0;
                                                v359 = msg.data[v16 + 1] >> 248;
                                                v360 = v16 + 3;
                                                if (!(msg.data[v16 + 2] >> 248)) {
                                                    v357 = v361 = msg.data[v16 + 5] >> (msg.data[v360] >> 248);
                                                    v360 = (msg.data[v16 + 4] >> 248) + v16 + 5;
                                                } else if (1 == msg.data[v16 + 2] >> 248) {
                                                    v357 = v362 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16 + 2] >> 248) {
                                                    v357 = v363 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16 + 2] >> 248) {
                                                    v357 = v364 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16 + 2] >> 248) {
                                                    v357 = v365 = MEM[0];
                                                }
                                                v366 = v360 + 21;
                                                v367 = msg.data[v360] >> 96;
                                                if (msg.data[v360 + 20] >> 248 == 2) {
                                                    v366 = v360 + 41;
                                                    v368 = (msg.data[v366] >> 96).approve(v367, uint256.max).gas(msg.gas);
                                                    require(v368);
                                                }
                                                v369 = v366 + 1;
                                                v370 = v371 = this;
                                                if (1 == msg.data[v366] >> 248) {
                                                    v369 = 3 + v366;
                                                    v370 = v372 = msg.data[msg.data[v369] >> 240] >> 96;
                                                } else if (3 == msg.data[v366] >> 248) {
                                                    v370 = v373 = msg.sender;
                                                }
                                                v374 = (msg.data[v369 + 2] >> 248) + v369 + 3;
                                                v254 = v375 = 0;
                                                if (0 == msg.data[v369] >> 248) {
                                                    MEM[132] = 0;
                                                    v374 = (msg.data[v369 + 2] >> 248) + v369 + 4;
                                                    if (1 == msg.data[v374] >> 248) {
                                                        v376 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v357).gas(msg.gas);
                                                        require(v376);
                                                        v377 = v367.exchange(v356, v359, v357, 1).value(v357).gas(msg.gas);
                                                        require(v377);
                                                        v254 = v378 = MEM[132];
                                                    } else {
                                                        v379 = v367.exchange(v356, v359, v357, 1).gas(msg.gas);
                                                        require(v379);
                                                        v254 = v380 = MEM[132];
                                                    }
                                                } else if (1 == msg.data[v369] >> 248) {
                                                    MEM[132] = 0;
                                                    v381 = v367.setMetaGold(v356, v359, v357, 1).gas(msg.gas);
                                                    require(v381);
                                                    v254 = v382 = MEM[132];
                                                } else if (2 == msg.data[v369] >> 248) {
                                                    MEM[196] = 0;
                                                    v383 = v367.exchange(v356, v359, v357, 1, 0, v370).gas(msg.gas);
                                                    require(v383);
                                                    v254 = v384 = MEM[196];
                                                } else if (3 == msg.data[v369] >> 248) {
                                                    MEM[164] = 0;
                                                    v374 = v374 + 1;
                                                    if (1 == msg.data[v374] >> 248) {
                                                        v385 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v357).gas(msg.gas);
                                                        require(v385);
                                                        v386 = v367.exchange(v356, v359, v357, 1, v370).value(v357).gas(msg.gas);
                                                        require(v386);
                                                        v254 = v387 = MEM[164];
                                                    } else {
                                                        v388 = v367.exchange(v356, v359, v357, 1, v370).gas(msg.gas);
                                                        require(v388);
                                                        v254 = v389 = MEM[164];
                                                    }
                                                } else if (4 == msg.data[v369] >> 248) {
                                                    MEM[164] = 0;
                                                    v390 = v367.exchange_underlying(v356, v359, v357, 1, v370).gas(msg.gas);
                                                    require(v390);
                                                    v254 = v391 = MEM[164];
                                                } else if (5 == msg.data[v369] >> 248) {
                                                    MEM[164] = 0;
                                                    v392 = v367.exchange_underlying(v356, v359, v357, 1, v370).gas(msg.gas);
                                                    require(v392);
                                                    v254 = v393 = MEM[164];
                                                } else if (6 == msg.data[v369] >> 248) {
                                                    MEM[164] = 0;
                                                    v394 = v367.exchange_underlying(v356, v359, v357, 1).gas(msg.gas);
                                                    require(v394);
                                                    v254 = v395 = MEM[132];
                                                } else if (7 == msg.data[v369] >> 248) {
                                                    MEM[132] = 0;
                                                    v396 = v367.exchange_underlying(v356, v359, v357, 1).gas(msg.gas);
                                                    require(v396);
                                                    v254 = v397 = MEM[132];
                                                } else if (8 == msg.data[v369] >> 248) {
                                                    MEM[132] = 0;
                                                    MEM[0] = 0x4515cef300000000000000000000000000000000000000000000000000000000;
                                                    if (!v356) {
                                                        MEM[4] = v357;
                                                        MEM[36] = 0;
                                                        MEM[68] = 0;
                                                    } else if (1 == v356) {
                                                        MEM[4] = 0;
                                                        MEM[36] = v357;
                                                        MEM[68] = 0;
                                                    } else {
                                                        MEM[4] = 0;
                                                        MEM[36] = 0;
                                                        MEM[68] = v357;
                                                    }
                                                    v398 = v367.call(v162, v162, v162, v162, 1).gas(msg.gas);
                                                    require(v398);
                                                    v254 = v399 = MEM[132];
                                                } else if (9 == msg.data[v369] >> 248) {
                                                    MEM[100] = 0;
                                                    MEM[0] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000;
                                                    if (!v356) {
                                                        MEM[4] = v357;
                                                        MEM[36] = 0;
                                                    } else {
                                                        MEM[4] = 0;
                                                        MEM[36] = v357;
                                                    }
                                                    v400 = v367.call(v162, v162, v162, 1).gas(msg.gas);
                                                    require(v400);
                                                    v254 = v401 = MEM[100];
                                                } else if (10 == msg.data[v369] >> 248) {
                                                    MEM[100] = 0;
                                                    v402 = v367.remove_liquidity_one_coin(v357, v359, 1).gas(msg.gas);
                                                    require(v402);
                                                    v254 = v403 = MEM[100];
                                                }
                                                if (!v254) {
                                                    if ((msg.data[v374] >> 248) - 1) {
                                                        v404 = (msg.data[v374 + 1] >> 96).balanceOf(this).gas(msg.gas);
                                                        require(v404);
                                                        v254 = v405 = MEM[36];
                                                    } else {
                                                        v254 = v406 = this.balance;
                                                    }
                                                }
                                                if (1 == msg.data[v374] >> 248) {
                                                    v407 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(v254).gas(msg.gas);
                                                    require(v407);
                                                }
                                                if (msg.data[v374 + 21] >> 248 == 1) {
                                                    v408 = (msg.data[v374 + 1] >> 96).transfer(v370, v254).gas(msg.gas);
                                                    require(v408);
                                                }
                                                v20 = v409 = 1;
                                                v12 = v374 + 23;
                                                if (msg.data[v374 + 22] >> 248 != v409) {
                                                }
                                                break;
                                            } else if (13 == v17) {
                                                v410 = v411 = 0;
                                                v412 = v16 + 1;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v410 = v413 = msg.data[v16 + 3] >> (msg.data[v412] >> 248);
                                                    v412 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v410 = v414 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v410 = v415 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v410 = v416 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v410 = v417 = MEM[0];
                                                }
                                                v418 = v412 + 21;
                                                v419 = v420 = 0;
                                                v421 = v422 = this;
                                                if (!(msg.data[v412] >> 248)) {
                                                    v423 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v410).gas(msg.gas);
                                                    require(v423);
                                                    v419 = v424 = msg.data[v412 + 23] >> (msg.data[v418] >> 248);
                                                    v418 = (msg.data[v412 + 22] >> 248) + v412 + 24;
                                                    if (1 == msg.data[(msg.data[v412 + 22] >> 248) + v412 + 23] >> 248) {
                                                        v418 = 26 + ((msg.data[v412 + 22] >> 248) + v412);
                                                        v421 = v425 = msg.data[msg.data[v418] >> 240] >> 96;
                                                    } else if (!(3 - (msg.data[(msg.data[v412 + 22] >> 248) + v412 + 23] >> 248))) {
                                                        v421 = v426 = msg.sender;
                                                    }
                                                } else if (1 == msg.data[v412] >> 248) {
                                                    v419 = v427 = msg.data[v418] >> 96;
                                                    v419 = v428 = msg.data[v418 + 22] >> (msg.data[v418 + 20] >> 248);
                                                    v418 = (msg.data[v418 + 21] >> 248) + v418 + 22;
                                                }
                                                if (msg.data[v418] >> 248 == 1) {
                                                    v429 = v419.approve(msg.data[v412 + 1] >> 96, uint256.max).gas(msg.gas);
                                                    require(v429);
                                                }
                                                v254 = v430 = 0;
                                                if (!(msg.data[v412] >> 248)) {
                                                    v431 = (msg.data[v412 + 1] >> 96).ethToTokenTransferOutput(v419, uint256.max, v421).value(v410).gas(msg.gas);
                                                    require(v431);
                                                    v254 = v432 = MEM[100];
                                                } else if (1 == msg.data[v412] >> 248) {
                                                    v433 = (msg.data[v412 + 1] >> 96).tokenToEthSwapInput(v410, v419, uint256.max).gas(msg.gas);
                                                    require(v433);
                                                    v254 = v434 = MEM[100];
                                                    v435 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(v419).gas(msg.gas);
                                                    require(v435);
                                                }
                                                v12 = v418 + 2;
                                                v20 = v436 = 1;
                                                if (v436 != msg.data[v436 + v418] >> 248) {
                                                }
                                            } else if (14 == v17) {
                                                v437 = v438 = 0;
                                                v439 = v16 + 1;
                                                if (!(msg.data[v16] >> 248)) {
                                                    v437 = v440 = msg.data[v16 + 3] >> (msg.data[v439] >> 248);
                                                    v439 = (msg.data[v16 + 2] >> 248) + v16 + 3;
                                                } else if (1 == msg.data[v16] >> 248) {
                                                    v437 = v441 = uint256.max + MEM[0];
                                                } else if (2 == msg.data[v16] >> 248) {
                                                    v437 = v442 = msg.data[msg.data.length - 64];
                                                } else if (3 == msg.data[v16] >> 248) {
                                                    v437 = v443 = msg.data[msg.data.length - 32];
                                                } else if (4 == msg.data[v16] >> 248) {
                                                    v437 = v444 = MEM[0];
                                                }
                                                v445 = v439 + 1;
                                                v446 = v447 = 0;
                                                if (1 == msg.data[v439] >> 248) {
                                                    v446 = v448 = msg.data[msg.data[v445] >> 240] >> 96;
                                                    v445 = 3 + v439;
                                                } else if (3 == msg.data[v439] >> 248) {
                                                    v446 = v449 = msg.sender;
                                                }
                                                v450 = v451 = 0;
                                                v452 = v453 = 0;
                                                if (0 == msg.data[v445 + 20] >> 248) {
                                                    v454 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, v437).gas(msg.gas);
                                                    require(v454);
                                                    v452 = v455 = msg.data[v445 + 21] >> 96;
                                                    v456 = 41 + v445;
                                                } else if (1 == msg.data[v445 + 20] >> 248) {
                                                    v450 = v457 = msg.data[v445 + 21] >> 96;
                                                    v456 = v445 + 21 + 20;
                                                } else {
                                                    v450 = v458 = msg.data[v445 + 21] >> 96;
                                                    v452 = v459 = msg.data[v445 + 21 + 20] >> 96;
                                                    v456 = v445 + 21 + 40;
                                                }
                                                if (msg.data[v456] >> 248 == 1) {
                                                    v460 = v450.approve(msg.data[v445] >> 96, uint256.max).gas(msg.gas);
                                                    require(v460);
                                                }
                                                v461 = v456 + 2;
                                                v462 = v463 = 1;
                                                if (v463 == msg.data[v463 + v456] >> 248) {
                                                    v461 = 4 + (v456 + (msg.data[v456 + 3] >> 248));
                                                    v462 = v464 = msg.data[v456 + 4] >> (msg.data[v461] >> 248);
                                                }
                                                MEM[0] = 0xd5bcb9b500000000000000000000000000000000000000000000000000000000;
                                                MEM[4] = v450;
                                                MEM[36] = v452;
                                                MEM[68] = v437;
                                                MEM[100] = v462;
                                                MEM[132] = 0;
                                                if (0 == msg.data[v445 + 20] >> 248) {
                                                    v465 = (msg.data[v445] >> 96).call(MEM[0:164], MEM[164:196]).value(v437).gas(msg.gas);
                                                    require(v465);
                                                    v254 = v466 = MEM[164];
                                                } else if (1 == msg.data[v445 + 20] >> 248) {
                                                    v467 = (msg.data[v445] >> 96).call(MEM[0:164], MEM[164:196]).gas(msg.gas);
                                                    require(v467);
                                                    v254 = v468 = MEM[164];
                                                    v469 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(v462).gas(msg.gas);
                                                    require(v469);
                                                } else {
                                                    v470 = (msg.data[v445] >> 96).call(MEM[0:164], MEM[164:196]).gas(msg.gas);
                                                    require(v470);
                                                    v254 = v471 = MEM[164];
                                                }
                                                if (msg.data[v439] >> 248) {
                                                    v472 = v452.transfer(v446, v462).gas(msg.gas);
                                                    require(v472);
                                                }
                                                v20 = v473 = 1;
                                                v12 = v461 + v473;
                                                if (msg.data[v461] >> 248 == v473) {
                                                    break;
                                                }
                                            } else {
                                                require(15 == v17);
                                                v474 = v475 = 0;
                                                if (1 == msg.data[v16 + 20] >> 248) {
                                                    v474 = v476 = msg.data[msg.data.length - 32];
                                                } else if (2 == msg.data[v16 + 20] >> 248) {
                                                    v474 = v477 = MEM[v475];
                                                } else if (3 == msg.data[v16 + 20] >> 248) {
                                                    v474 = v478 = msg.data[msg.data.length - 64];
                                                } else if (4 == msg.data[v16 + 20] >> 248) {
                                                    v474 = v479 = MEM[v475];
                                                }
                                                CALLDATACOPY(v475, v16 + 23, msg.data[v16 + 21] >> 240);
                                                if (msg.data[v16 + 20] >> 248) {
                                                    MEM[1] = v474;
                                                }
                                                v12 = v16 + (msg.data[v16 + 21] >> 240) + 23;
                                                v480 = (msg.data[v16] >> 96).call(MEM[v161:v161 + msg.data[vce + 21] >> 240], MEM[36:68]).value(v475).gas(msg.gas);
                                                require(v480);
                                                v20 = v481 = 1;
                                                MEM[0] = MEM[36];
                                            }
                                            MEM[0] = v254;
                                            break;
                                        }
                                        v12 = v190 + v20;
                                        if ((msg.data[v190] >> 248) - v20) {
                                            break;
                                        } else {
                                            MEM[0] = MEM[292];
                                            break;
                                        }
                                    }
                                    break;
                                }
                                v14 = v14 + v20;
                            }
                            if (function_selector >> 248 == 1) {
                                v482 = msg.data[v12] >> 248;
                                v483 = v484 = v12 + 1;
                                v485 = v486 = 0;
                                if (0 == v482) {
                                    MEM[0] = MEM[0];
                                    v485 = v487 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                } else if (1 == v482) {
                                    MEM[0] = MEM[0];
                                    v485 = v488 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                                } else if (2 == v482) {
                                    MEM[0] = MEM[0];
                                    v485 = v489 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                                } else if (3 == v482) {
                                    MEM[0] = MEM[0];
                                    v485 = v490 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
                                } else if (4 == v482) {
                                    MEM[0] = MEM[0];
                                    v485 = v491 = 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                                } else if (5 == v482) {
                                    v483 = v492 = 21 + v12;
                                    v485 = v493 = msg.data[v484] >> 96;
                                }
                                v494 = v495 = v483 + 1;
                                v496 = v497 = 0;
                                if (msg.data[v483] >> 248 == 1) {
                                    v496 = v498 = msg.data[v483 + 3] >> (msg.data[v495] >> 248);
                                    v494 = v499 = (msg.data[v483 + 2] >> 248) + v483 + 3;
                                }
                                if (v482) {
                                    v500 = v485.balanceOf(this).gas(msg.gas);
                                    require(v500);
                                    if (0 == msg.data[v494] >> 248) {
                                        v501 = MEM[36] - v496 - (msg.data[v494 + 29] >> 248) * (uint256.max + (MEM[36] - v496)) / 100 - 1;
                                        v494 = v502 = v494 + 31;
                                        v503 = (msg.data[v494 + 1] >> 96).getReserves().gas(msg.gas);
                                        require(v503);
                                        v504 = v505 = 0;
                                        v504 = v506 = MEM[32];
                                        v504 = v507 = MEM[64];
                                        if (v505 != msg.data[v494 + 30] >> 248) {
                                            if (1 != msg.data[v494 + 30] >> 248) {
                                            }
                                        }
                                        v508 = v501 * (msg.data[25 + v494] >> 224) * v504 / (v504 * (msg.data[v494 + 21] >> 224) + v501 * (msg.data[25 + v494] >> 224));
                                        v509 = v485.transfer(msg.data[v494 + 1] >> 96, v501).value(v505).gas(msg.gas);
                                        require(v509);
                                        if (0 != msg.data[v494 + 30] >> 248) {
                                        }
                                        v510 = (msg.data[v494 + 1] >> 96).swap(v508, 0, v508, 0, this, 128, 0).gas(msg.gas);
                                        require(v510);
                                    } else if (1 == msg.data[v494] >> 248) {
                                        if (0 != msg.data[v494 + 21] >> 248) {
                                        }
                                        CALLDATACOPY(196, v494 + 21 + 3, msg.data[v494 + 21 + 1] >> 240);
                                        v511 = (msg.data[v494 + 1] >> 96).swap(this, msg.data[v494 + 21] >> 248, uint256.max + (MEM[36] - v496), 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, 160, msg.data[v494 + 21 + 1] >> 240).gas(msg.gas);
                                        require(v511);
                                        v494 = v512 = 3 + ((msg.data[v494 + 21 + 1] >> 240) + (v494 + 21));
                                    } else {
                                        CALLDATACOPY(0, v494 + 21 + 2, msg.data[v494 + 21] >> 240);
                                        v494 = v513 = v494 + 21 + (msg.data[v494 + 21] >> 240) + 2;
                                        v514 = (msg.data[v494 + 1] >> 96).delegatecall(v162, uint256.max + (MEM[36] - v496)).gas(msg.gas);
                                        require(v514);
                                    }
                                    v496 = v515 = 0;
                                }
                                v516 = v517 = tx.origin;
                                v518 = v519 = v494 + 2;
                                if (msg.data[v494 + 1] >> 248 == 1) {
                                    v516 = v520 = msg.data[v519] >> 96;
                                    v518 = v521 = 22 + v494;
                                }
                                v522 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x70a0823100000000000000000000000000000000000000000000000000000000, this, 0x70a0823100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                                require(v522);
                                v523 = v524 = 0;
                                if (1 == MEM[36] - v496 - 1 > msg.data[v518 + 2] >> (msg.data[v518] >> 248)) {
                                    v523 = v525 = MEM[36] - v496 - (msg.data[v518 + 2] >> (msg.data[v518] >> 248)) - (msg.data[v494] >> 248) * (MEM[36] - v496 - (msg.data[v518 + 2] >> (msg.data[v518] >> 248)) - 1) / 100 - 1;
                                }
                                v526 = (msg.data[(msg.data[v518 + 1] >> 248) + v518 + 4] >> (msg.data[(msg.data[v518 + 1] >> 248) + v518 + 2] >> 248)) + v523;
                                require(MEM[36] - v496 - v526 - 1 >= 0);
                                v527 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[36] - v496 - 1, MEM[36] - v496 - 1, MEM[36] - v496 - 1).gas(msg.gas);
                                require(v527);
                                v528 = block.coinbase.call().value(MEM[36] - v496 - v526 - 1).gas(msg.gas);
                                require(v528);
                                v529 = v516.call().value(v526).gas(msg.gas);
                                require(v529);
                                exit;
                            } else {
                                exit;
                            }
                        }
                    }
                }
            }
        }
    }
    swapCallback(uint256,uint256,bytes);
}
