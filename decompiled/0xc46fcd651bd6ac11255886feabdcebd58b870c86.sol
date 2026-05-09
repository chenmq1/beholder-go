// Decompiled by library.dedaub.com
// 2025.12.09 14:53 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
uint256 _smardexSwapCallback; // TRANSIENT_STORAGE[0x0]



function receive() public payable { 
    v0 = v1 = msg.value > 0;
    if (v1) {
        v0 = v2 = address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) != tx.origin;
    }
    if (v0) {
        v0 = v3 = address(0x315d2ee4fccda0def532ef4108ff57204f8d9eba) != tx.origin;
    }
    if (!v0) {
        exit;
    } else {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v4 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(msg.value).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        exit;
    }
}

function 0x0d4fb622(address varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) == msg.sender;
    if (address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) != msg.sender) {
        v0 = address(0x315d2ee4fccda0def532ef4108ff57204f8d9eba) == msg.sender;
    }
    require(v0);
    if (this.balance) {
        v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(this.balance).gas(msg.gas - 5000);
        require(v2, 3, 3);
    }
    v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas - 5000);
    require(v3, 3, 3);
    if (MEM[128]) {
        v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, MEM[128] - 1).gas(msg.gas - 5000);
        require(v4, 3, 3);
    }
    v5 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.balanceOf(this).gas(msg.gas - 5000);
    require(v5, 3, 3);
    if (MEM[128]) {
        v6 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(varg0, MEM[128] - 1).gas(msg.gas - 5000);
        require(v6, 3, 3);
    }
    v7 = 0xdac17f958d2ee523a2206206994597c13d831ec7.balanceOf(this).gas(msg.gas - 5000);
    require(v7, 3, 3);
    if (MEM[128]) {
        v8 = 0xdac17f958d2ee523a2206206994597c13d831ec7.transfer(varg0, MEM[128] - 1).gas(msg.gas - 5000);
        require(v8, 3, 3);
    }
    v9 = 0x6b175474e89094c44da98b954eedeac495271d0f.balanceOf(this).gas(msg.gas - 5000);
    require(v9, 3, 3);
    if (MEM[128]) {
        v10 = 0x6b175474e89094c44da98b954eedeac495271d0f.transfer(varg0, MEM[128] - 1).gas(msg.gas - 5000);
        require(v10, 3, 3);
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(msg.data.length > 4 + data + 31);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 63 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data.length >= 32 + (data.length + (4 + data)));
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    require(msg.sender == _smardexSwapCallback, 3, 3);
    if (v0.length == 20 == 1) {
        v1 = v2 = 0;
        v3 = data.length.transfer(_smardexSwapCallback, v1).gas(msg.gas - 5000);
        require(v3, 3, 3);
    } else if (v0.length != 20) {
        v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        if (msg.data[1 + (v0 + 3)] >> 248 == 1) {
            v4 = v6 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
        } else if (msg.data[1 + (v0 + 3)] >> 248 == 2) {
            v4 = v7 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
        } else if (msg.data[1 + (v0 + 3)] >> 248 == 3) {
            v4 = v8 = 0x6b175474e89094c44da98b954eedeac495271d0f;
        } else if (msg.data[1 + (v0 + 3)] >> 248 == 4) {
            v4 = v9 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        }
        v10 = v11 = msg.data[2 + (v0 + 3)] >> 128;
        v12 = msg.data[18 + (v0 + 3)] >> 248;
        v13 = 19 + (v0 + 3);
        v14 = v15 = v0 + 3 + (18 + v12 * 20);
        v16 = v17 = 0;
        while (1) {
            exit;
            if (v16 >= v12) {
                break;
            } else {
                v14 = v14 + 1;
                v18 = msg.data[v14] >> 248;
                if (v18 == 0) {
                    v19 = v4.transfer(msg.data[v13 + 20 * v16] >> 96, v10).gas(msg.gas - 5000);
                    require(v19, 3, 3);
                } else if (v18 == 1) {
                    v14 = v14 + 20;
                    v20 = msg.data[v14 + 1] >> 96;
                    v21 = msg.data[21 + v14] >> 248;
                    if (v21 != 8) {
                        if (v21 == 10) {
                            v22 = v20.approve(0x22d473030f116ddee9f6b43ac78ba3, int256.max).gas(msg.gas - 5000);
                            if (!v22) {
                                v23 = v20.approve(0x22d473030f116ddee9f6b43ac78ba3, uint96.max).gas(msg.gas - 5000);
                                require(v23, 3, 3);
                            }
                            v24 = 0x22d473030f116ddee9f6b43ac78ba3.approve(v20, 0x66a9893cc07d91d95644aedd05d03f95e1dba8af, uint160.max, uint48.max).gas(msg.gas - 5000);
                            require(v24, 3, 3);
                        } else if (v21 != 12) {
                            if (v21 != 13) {
                                if (v21 != 14) {
                                    if (v21 != 15) {
                                        if (v21 != 16) {
                                            if (v21 != 17) {
                                                if (v21 != 18) {
                                                    if (v21 != 19) {
                                                        if (v21 == 20) {
                                                            v25 = v20.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, int256.max).gas(msg.gas - 5000);
                                                            if (!v25) {
                                                                v26 = v20.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, uint96.max).gas(msg.gas - 5000);
                                                                require(v26, 3, 3);
                                                            }
                                                        } else if (v21 == 21) {
                                                            v27 = v20.approve(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, int256.max).gas(msg.gas - 5000);
                                                            if (!v27) {
                                                                v28 = v20.approve(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint96.max).gas(msg.gas - 5000);
                                                                require(v28, 3, 3);
                                                            }
                                                        } else if (v21 == 22) {
                                                            v29 = v20.approve(0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, int256.max).gas(msg.gas - 5000);
                                                            if (!v29) {
                                                                v30 = v20.approve(0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint96.max).gas(msg.gas - 5000);
                                                                require(v30, 3, 3);
                                                            }
                                                        } else if (v21 == 25) {
                                                            v31 = v20.approve(msg.data[v13 + 20 * v16] >> 96, int256.min).gas(msg.gas - 5000);
                                                            if (!v31) {
                                                                v32 = v20.approve(msg.data[v13 + 20 * v16] >> 96, uint96.max).gas(msg.gas - 5000);
                                                                require(v32, 3, 3);
                                                            }
                                                        } else if (v21 != 27) {
                                                            if (v21 == 29) {
                                                                v33 = v20.approve(0xcedd366065a146a039b92db35756ecd7688fcc77, int256.max).gas(msg.gas - 5000);
                                                                if (!v33) {
                                                                    v34 = v20.approve(0xcedd366065a146a039b92db35756ecd7688fcc77, uint96.max).gas(msg.gas - 5000);
                                                                    require(v34, 3, 3);
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
                    v35 = v20.approve(msg.data[v13 + 20 * v16] >> 96, int256.max).gas(msg.gas - 5000);
                    if (!v35) {
                        v36 = v20.approve(msg.data[v13 + 20 * v16] >> 96, uint96.max).gas(msg.gas - 5000);
                        require(v36, 3, 3);
                    }
                    // Unknown jump to Block 0x4dc6B0x513B0x194. Refer to 3-address code (TAC);
                } else if (v18 == 2) {
                    v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v10).gas(msg.gas - 5000);
                    require(v37, 3, 3);
                } else if (v18 == 3) {
                    v38 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v10).gas(msg.gas - 5000);
                    require(v38, 3, 3);
                } else if (v18 == 4) {
                    v10 = v39 = msg.data[1 + v14] >> 128;
                    MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    if (msg.data[17 + v14] >> 248 == 0) {
                        MEM[132] = v39;
                        MEM[164] = 0;
                    } else if (msg.data[17 + v14] >> 248 == 1) {
                        MEM[132] = 0;
                        MEM[164] = v39;
                    }
                    if (!(msg.data[v14 + 18] >> 248)) {
                        MEM[196] = this;
                    } else if (msg.data[v14 + 18] >> 248 == 1) {
                        if (v16 != v12 - 1) {
                            MEM[196] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                        } else if (v16 == v12 - 1 == 1) {
                            MEM[196] = _smardexSwapCallback;
                        }
                    }
                    v40 = (msg.data[v13 + 20 * v16] >> 96).call(v41, v41, v41, v41, 128, 0).gas(msg.gas - 5000);
                    require(v40, 3, 3);
                    v14 = v14 + 18;
                    v16 = v16 + 1;
                } else if (v18 == 5) {
                    v10 = v42 = msg.data[17 + v14] >> 128;
                    MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    if (msg.data[33 + v14] >> 248 == 0) {
                        MEM[132] = msg.data[1 + v14] >> 128;
                        MEM[164] = 0;
                    } else if (msg.data[33 + v14] >> 248 == 1) {
                        MEM[132] = 0;
                        MEM[164] = msg.data[1 + v14] >> 128;
                    }
                    if (!(msg.data[v14 + 34] >> 248)) {
                        MEM[196] = this;
                    } else if (msg.data[v14 + 34] >> 248 == 1) {
                        if (v16 != v12 - 1) {
                            MEM[196] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                        } else if (v16 == v12 - 1 == 1) {
                            MEM[196] = _smardexSwapCallback;
                        }
                    }
                    v43 = (msg.data[v13 + 20 * v16] >> 96).call(v41, v41, v41, v41, 128, 0).gas(msg.gas - 5000);
                    require(v43, 3, 3);
                    v14 = v14 + 34;
                    v16 = v16 + 1;
                } else {
                    if (v18 == 6) {
                        v44 = v45 = msg.data[1 + v14] >> 248;
                        MEM[128] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        if (msg.data[2 + v14] >> 248 == 0) {
                            MEM[132] = this;
                        } else if (msg.data[2 + v14] >> 248 == 1) {
                            if (v16 != v12 - 1) {
                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[132] = _smardexSwapCallback;
                            }
                        }
                        if (v45 == 0) {
                            MEM[164] = 0;
                            MEM[196] = v10;
                            MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else if (v45 == 1) {
                            MEM[164] = 1;
                            MEM[196] = v10;
                            MEM[228] = 0x1000276a4;
                        }
                        CALLDATACOPY(324, v14 + 5, msg.data[v14 + 3] >> 240);
                        v14 = 4 + ((msg.data[v14 + 3] >> 240) + v14);
                        _smardexSwapCallback = msg.data[v13 + (v16 << 2)] >> 96;
                        v46 = (msg.data[v13 + (v16 << 2)] >> 96).call(v41, v41, v41, v41, v41, 160, msg.data[v14 + 3] >> 240).gas(msg.gas);
                        require(v46, 3, 3);
                    } else if (v18 == 7) {
                        v10 = v47 = msg.data[1 + v14] >> 128;
                        MEM[128] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        if (msg.data[18 + v14] >> 248 == 0) {
                            MEM[132] = this;
                        } else if (msg.data[18 + v14] >> 248 == 1) {
                            if (v16 != v12 - 1) {
                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[132] = _smardexSwapCallback;
                            }
                        }
                        if (msg.data[17 + v14] >> 248 == 0) {
                            MEM[164] = 0;
                            MEM[196] = v10;
                            MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else if (msg.data[17 + v14] >> 248 == 1) {
                            MEM[164] = 1;
                            MEM[196] = v10;
                            MEM[228] = 0x1000276a4;
                        }
                        CALLDATACOPY(324, v14 + 21, msg.data[v14 + 19] >> 240);
                        v14 = 20 + ((msg.data[v14 + 19] >> 240) + v14);
                        _smardexSwapCallback = msg.data[v13 + v16 * 20] >> 96;
                        v48 = (msg.data[v13 + v16 * 20] >> 96).call(v41, v41, v41, v41, v41, 160, msg.data[v14 + 19] >> 240).gas(msg.gas);
                        require(v48, 3, 3);
                        if (!(msg.data[17 + v14] >> 248)) {
                            if (MEM[128] < 0) {
                            }
                        } else if (msg.data[17 + v14] >> 248 == 1) {
                            if (MEM[160] < 0) {
                            }
                        }
                        v16 = v16 + 1;
                    } else if (v18 == 8) {
                        MEM[128] = 0xc31b8d7a00000000000000000000000000000000000000000000000000000000;
                        if (msg.data[2 + v14] >> 248 == 0) {
                            MEM[132] = this;
                        } else if (msg.data[2 + v14] >> 248 == 1) {
                            if (v16 != v12 - 1) {
                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[132] = _smardexSwapCallback;
                            }
                        }
                        if (msg.data[1 + v14] >> 248 == 0) {
                            MEM[164] = 0;
                            MEM[196] = v10;
                            MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else if (msg.data[1 + v14] >> 248 == 1) {
                            MEM[164] = 1;
                            MEM[196] = v10;
                            MEM[228] = 0x1000276a4;
                        }
                        MEM[292] = 0;
                        v49 = (msg.data[v13 + 20 * v16] >> 96).call(v41, v41, v41, v41, v41, 160).gas(msg.gas);
                        require(v49, 3, 3);
                        if (!(msg.data[1 + v14] >> 248)) {
                            v10 = v50 = MEM[128];
                            if (v50 < 0) {
                                v10 = v51 = 0 - v50;
                            }
                        } else if (msg.data[1 + v14] >> 248 == 1) {
                            v10 = v52 = MEM[160];
                            if (v52 < 0) {
                                v10 = 0 - v52;
                            }
                        }
                        v14 = v14 + 2;
                        v16 = v16 + 1;
                    } else if (v18 == 10) {
                        CALLDATACOPY(128, v14 + 4, msg.data[2 + v14] >> 240);
                        v4 = v53 = msg.data[v14 + 915] >> 96;
                        if (bool(v53)) {
                            v54 = 0x66a9893cc07d91d95644aedd05d03f95e1dba8af.call(MEM[128:128 + msg.data[2 + v4dbdV0x513V0x194] >> 240], MEM[0:0]).gas(msg.gas - 5000);
                            require(v54, 3, 3);
                        } else if (!v53 == 1) {
                            v55 = 0x66a9893cc07d91d95644aedd05d03f95e1dba8af.call(MEM[128:128 + msg.data[2 + v4dbdV0x513V0x194] >> 240], MEM[0:0]).value(msg.data[936 + v14]).gas(msg.gas - 5000);
                            require(v55, 3, 3);
                        }
                        v10 = v56 = msg.data[1032 + v14];
                        if (msg.data[1 + v14] >> 248) {
                            MEM[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            if (v16 != v12 - 1) {
                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[132] = _smardexSwapCallback;
                            }
                            v57 = (msg.data[1012 + v14] >> 96).call(v41, v41, v56).gas(msg.gas - 5000);
                            require(v57, 3, 3);
                        }
                        v14 = v14 + (3 + (msg.data[2 + v14] >> 240));
                        v16 = v16 + 1;
                    } else {
                        if (v18 == 12) {
                            v10 = v58 = msg.data[3 + v14] >> 128;
                            v59 = v60 = msg.data[19 + v14] >> 96;
                            MEM[128] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v14] >> 248;
                            MEM[164] = msg.data[2 + v14] >> 248;
                            MEM[196] = v10;
                            MEM[228] = v58;
                            v61 = v62 = msg.data[v13 + 20 * v16] >> 96;
                            if (msg.data[39 + v14] >> 248 != 0) {
                                if (msg.data[39 + v14] >> 248 != 1) {
                                }
                            }
                        } else {
                            if (v18 == 13) {
                                MEM[128] = 0xddc1f59d00000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[v14 + 1] >> 248;
                                MEM[164] = msg.data[v14 + 2] >> 248;
                                MEM[196] = v10;
                                v10 = v63 = msg.data[v14 + 3] >> 128;
                                MEM[228] = v63;
                                v64 = v65 = msg.data[v14 + 19] >> 248;
                                if (msg.data[v14 + 20] >> 248) {
                                    if (msg.data[v14 + 20] >> 248 != 1) {
                                    }
                                }
                            } else if (v18 == 14) {
                                v10 = v66 = msg.data[3 + v14] >> 128;
                                v59 = v67 = msg.data[19 + v14] >> 96;
                                MEM[128] = 0x5b41b90800000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[1 + v14] >> 248;
                                MEM[164] = msg.data[2 + v14] >> 248;
                                MEM[196] = v10;
                                MEM[228] = v66;
                                v61 = v68 = msg.data[v13 + 20 * v16] >> 96;
                                if (msg.data[39 + v14] >> 248 != 0) {
                                    if (msg.data[39 + v14] >> 248 != 1) {
                                    }
                                }
                            } else if (v18 == 15) {
                                v10 = v69 = msg.data[3 + v14] >> 128;
                                v59 = v70 = msg.data[19 + v14] >> 96;
                                MEM[128] = 0x394747c500000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[1 + v14] >> 248;
                                MEM[164] = msg.data[2 + v14] >> 248;
                                MEM[196] = v10;
                                MEM[228] = v69;
                                MEM[260] = msg.data[39 + v14] >> 248;
                                if (msg.data[39 + v14] >> 248 == 0) {
                                    v71 = (msg.data[v13 + 20 * v16] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas - 5000);
                                    require(v71, 3, 3);
                                } else if (msg.data[39 + v14] >> 248 == 1) {
                                    v72 = (msg.data[v13 + 20 * v16] >> 96).call(MEM[128:292], MEM[0:0]).value(v10).gas(msg.gas - 5000);
                                    require(v72, 3, 3);
                                }
                            } else if (v18 == 16) {
                                MEM[128] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[v14 + 1] >> 248;
                                MEM[164] = msg.data[v14 + 2] >> 248;
                                MEM[196] = v10;
                                v10 = v73 = msg.data[v14 + 3] >> 128;
                                MEM[228] = v73;
                                MEM[260] = msg.data[v14 + 19] >> 248;
                                if (!(msg.data[v14 + 20] >> 248)) {
                                    MEM[292] = this;
                                } else if (msg.data[v14 + 20] >> 248 == 1) {
                                    if (v16 != v12 - 1) {
                                        MEM[292] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[292] = _smardexSwapCallback;
                                    }
                                }
                                if (!(msg.data[v14 + 19] >> 248)) {
                                    v74 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:324], MEM[0:0]).gas(msg.gas - 5000);
                                    require(v74, 3, 3);
                                } else if (msg.data[v14 + 19] >> 248 == 1) {
                                    v75 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:324], MEM[0:0]).value(v10).gas(msg.gas - 5000);
                                    require(v75, 3, 3);
                                }
                            } else if (v18 == 17) {
                                MEM[128] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[v14 + 1] >> 248;
                                MEM[164] = msg.data[v14 + 2] >> 248;
                                MEM[196] = v10;
                                v10 = v76 = msg.data[v14 + 3] >> 128;
                                MEM[228] = v76;
                                v64 = v77 = msg.data[v14 + 19] >> 248;
                                if (msg.data[v14 + 20] >> 248) {
                                    if (msg.data[v14 + 20] >> 248 != 1) {
                                    }
                                }
                            } else if (v18 == 18) {
                                v10 = v78 = msg.data[3 + v14] >> 128;
                                v79 = (msg.data[v13 + 20 * v16] >> 96).exchange_underlying(msg.data[1 + v14] >> 248, msg.data[2 + v14] >> 248, v10, v78).gas(msg.gas - 5000);
                                require(v79, 3, 3);
                                if (msg.data[39 + v14] >> 248) {
                                    MEM[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                    if (v16 != v12 - 1) {
                                        MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[132] = _smardexSwapCallback;
                                    }
                                    v80 = (msg.data[19 + v14] >> 96).call(v41, v41, v78).gas(msg.gas - 5000);
                                    require(v80, 3, 3);
                                }
                                v14 = v14 + 39;
                                v16 = v16 + 1;
                            } else if (v18 == 19) {
                                v10 = v81 = msg.data[3 + v14] >> 128;
                                MEM[128] = 0x44ee198600000000000000000000000000000000000000000000000000000000;
                                MEM[132] = msg.data[1 + v14] >> 248;
                                MEM[164] = msg.data[2 + v14] >> 248;
                                MEM[196] = v10;
                                MEM[228] = v81;
                                if (msg.data[19 + v14] >> 248 == 1) {
                                    if (v16 != v12 - 1) {
                                        MEM[260] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[260] = _smardexSwapCallback;
                                    }
                                } else if (!(msg.data[19 + v14] >> 248)) {
                                    MEM[260] = this;
                                }
                                v82 = (msg.data[v13 + 20 * v16] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas - 5000);
                                require(v82, 3, 3);
                                v14 = v14 + 19;
                                v16 = v16 + 1;
                            } else if (v18 == 20) {
                                MEM[128] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                                MEM[132] = 224;
                                MEM[164] = this;
                                MEM[196] = 0;
                                v4 = v83 = msg.data[v14 + 33] >> 96;
                                if (!(msg.data[v14 + 73] >> 248)) {
                                    MEM[228] = this;
                                } else if (msg.data[v14 + 73] >> 248 == 1) {
                                    if (v16 != v12 - 1) {
                                        MEM[228] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[228] = _smardexSwapCallback;
                                    }
                                }
                                v84 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(v41, v41, v41, v41, v41, 0, 0, 60 + block.timestamp, msg.data[v14 + 1], 0, v83, msg.data[v14 + 53] >> 96, v10, 192, 0).gas(msg.gas - 5000);
                                require(v84, 3, 3);
                                v10 = v85 = MEM[128];
                                v14 = v14 + 73;
                                v16 = v16 + 1;
                            } else if (v18 == 21) {
                                MEM[128] = 0xb77d239b00000000000000000000000000000000000000000000000000000000;
                                MEM[132] = 192;
                                MEM[164] = v10;
                                MEM[196] = 1;
                                v4 = v86 = msg.data[v14 + 1] >> 96;
                                if (!(msg.data[v14 + 61] >> 248)) {
                                    MEM[228] = this;
                                } else if (msg.data[v14 + 61] >> 248 == 1) {
                                    if (v16 != v12 - 1) {
                                        MEM[228] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[228] = _smardexSwapCallback;
                                    }
                                }
                                MEM[260] = 0;
                                MEM[292] = 0;
                                MEM[324] = 3;
                                MEM[356] = v86;
                                MEM[388] = msg.data[v14 + 21] >> 96;
                                MEM[420] = msg.data[v14 + 41] >> 96;
                                if (v86 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                    v87 = 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[128:452], MEM[128:160]).gas(msg.gas - 5000);
                                    require(v87, 3, 3);
                                } else if (v86 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == 1) {
                                    v88 = 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[128:452], MEM[128:160]).value(v10).gas(msg.gas - 5000);
                                    require(v88, 3, 3);
                                }
                                v10 = v89 = MEM[128];
                                v14 = v14 + 61;
                                v16 = v16 + 1;
                            } else {
                                if (v18 == 22) {
                                    MEM[128] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
                                    v4 = v90 = msg.data[v14 + 1] >> 96;
                                    MEM[132] = v90;
                                    MEM[164] = msg.data[v14 + 21] >> 96;
                                    MEM[196] = v10;
                                    MEM[228] = 1;
                                    MEM[260] = 60 + block.timestamp;
                                    if (!(msg.data[v14 + 41] >> 248)) {
                                        MEM[292] = this;
                                    } else if (msg.data[v14 + 41] >> 248 == 1) {
                                        if (v16 != v12 - 1) {
                                            MEM[292] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                        } else if (v16 == v12 - 1 == 1) {
                                            MEM[292] = _smardexSwapCallback;
                                        }
                                    }
                                    if (v90 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                        v91 = 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[128:324], MEM[128:160]).gas(msg.gas - 5000);
                                        require(v91, 3, 3);
                                    } else if (v90 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == 1) {
                                        v92 = 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[128:324], MEM[128:160]).value(v10).gas(msg.gas - 5000);
                                        require(v92, 3, 3);
                                    }
                                } else {
                                    if (v18 == 23) {
                                        MEM[128] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                                        if (msg.data[v14 + 1] >> 248) {
                                            if (msg.data[v14 + 1] >> 248 != 1) {
                                            }
                                        }
                                    } else if (v18 == 24) {
                                        MEM[128] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                                        if (msg.data[v14 + 1] >> 248) {
                                            if (msg.data[v14 + 1] >> 248 != 1) {
                                            }
                                        }
                                    } else if (v18 == 25) {
                                        v4 = v93 = msg.data[1 + v14] >> 96;
                                        v94 = (msg.data[v13 + 20 * v16] >> 96).swapExactAmountIn(v93, v10, msg.data[21 + v14] >> 96, 0, uint256.max).gas(msg.gas - 5000);
                                        require(v94, 3, 3);
                                        v10 = v95 = MEM[128];
                                        if (msg.data[41 + v14] >> 248) {
                                            MEM[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                            if (v16 != v12 - 1) {
                                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                            } else if (v16 == v12 - 1 == 1) {
                                                MEM[132] = _smardexSwapCallback;
                                            }
                                            v96 = (msg.data[21 + v14] >> 96).call(v41, v41, v95).gas(msg.gas - 5000);
                                            require(v96, 3, 3);
                                        }
                                        v14 = v14 + 41;
                                        v16 = v16 + 1;
                                    } else if (v18 == 26) {
                                        v44 = v97 = msg.data[1 + v14] >> 248;
                                        MEM[128] = 0x1f18b37100000000000000000000000000000000000000000000000000000000;
                                        if (msg.data[2 + v14] >> 248 == 0) {
                                            MEM[132] = this;
                                        } else if (msg.data[2 + v14] >> 248 == 1) {
                                            if (v16 != v12 - 1) {
                                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                            } else if (v16 == v12 - 1 == 1) {
                                                MEM[132] = _smardexSwapCallback;
                                            }
                                        }
                                        if (v97 == 0) {
                                            MEM[164] = 0;
                                        } else if (v97 == 1) {
                                            MEM[164] = 1;
                                        }
                                        CALLDATACOPY(292, v14 + 5, msg.data[v14 + 3] >> 240);
                                        v14 = 4 + ((msg.data[v14 + 3] >> 240) + v14);
                                        _smardexSwapCallback = msg.data[v13 + v16 * 20] >> 96;
                                        v98 = (msg.data[v13 + v16 * 20] >> 96).call(v41, v41, v41, v10, 128, msg.data[v14 + 3] >> 240).gas(msg.gas);
                                        require(v98, 3, 3);
                                    } else if (v18 == 27) {
                                        MEM[128] = 0xe331d03900000000000000000000000000000000000000000000000000000000;
                                        v4 = v99 = msg.data[v14 + 1] >> 96;
                                        MEM[132] = v99;
                                        MEM[164] = msg.data[v14 + 21] >> 96;
                                        MEM[196] = v10;
                                        MEM[228] = 0;
                                        MEM[260] = 0;
                                        if (!(msg.data[v14 + 41] >> 248)) {
                                            MEM[292] = this;
                                        } else if (msg.data[v14 + 41] >> 248 == 1) {
                                            if (v16 != v12 - 1) {
                                                MEM[292] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                            } else if (v16 == v12 - 1 == 1) {
                                                MEM[292] = _smardexSwapCallback;
                                            }
                                        }
                                        if (bool(v99)) {
                                            v100 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:324], MEM[128:160]).gas(msg.gas - 5000);
                                            require(v100, 3, 3);
                                        } else if (!v99 == 1) {
                                            v101 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:324], MEM[128:160]).value(v10).gas(msg.gas - 5000);
                                            v10 = v102 = MEM[128];
                                            v14 = v14 + 41;
                                            v16 = v16 + 1;
                                        }
                                    } else if (v18 == 28) {
                                        v10 = v103 = msg.data[21 + v14] >> 128;
                                        MEM[128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000;
                                        MEM[132] = v103;
                                        MEM[164] = 128;
                                        if (msg.data[22 + v14] >> 248 == 0) {
                                            MEM[196] = this;
                                        } else if (msg.data[22 + v14] >> 248 == 1) {
                                            if (v16 != v12 - 1) {
                                                MEM[196] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                            } else if (v16 == v12 - 1 == 1) {
                                                MEM[196] = _smardexSwapCallback;
                                            }
                                        }
                                        v104 = 0xcedd366065a146a039b92db35756ecd7688fcc77.call(v41, v41, v41, v41, 60 + block.timestamp, 2, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, msg.data[1 + v14] >> 96).value(v10).gas(msg.gas - 5000);
                                        require(v104, 3, 3);
                                        v14 = v14 + 37;
                                        v16 = v16 + 1;
                                    } else if (v18 == 29) {
                                        v4 = msg.data[1 + v14] >> 96;
                                        v10 = v105 = msg.data[21 + v14] >> 128;
                                        v106 = (msg.data[v13 + 20 * v16] >> 96).sellTotalFee(msg.data[v13 + 20 * v16] >> 96).gas(msg.gas - 5000);
                                        require(v106, 3, 3);
                                        v107 = 0xcedd366065a146a039b92db35756ecd7688fcc77.usdcToEth(MEM[128]).gas(msg.gas - 5000);
                                        require(v107, 3, 3);
                                        MEM[128] = 0x791ac94700000000000000000000000000000000000000000000000000000000;
                                        MEM[132] = v10;
                                        MEM[164] = v105;
                                        MEM[196] = 160;
                                        if (!(msg.data[22 + v14] >> 248)) {
                                            MEM[228] = this;
                                        } else if (msg.data[22 + v14] >> 248 == 1) {
                                            if (v16 != v12 - 1) {
                                                MEM[228] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                            } else if (v16 == v12 - 1 == 1) {
                                                MEM[228] = _smardexSwapCallback;
                                            }
                                        }
                                        v108 = 0xcedd366065a146a039b92db35756ecd7688fcc77.call(v41, v41, v41, v41, v41, 60 + block.timestamp, 2, v4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).value(MEM[128]).gas(msg.gas - 5000);
                                        emit 0x0(msg.sender);
                                        require(v108, 3, 3);
                                        v14 = v14 + 37;
                                        v16 = v16 + 1;
                                    }
                                    MEM[132] = this;
                                    v109 = (msg.data[v13 + 20 * v16] >> 96).call(MEM[128:164], MEM[128:160]).gas(msg.gas - 5000);
                                    require(v109, 3, 3);
                                    v10 = v110 = MEM[128];
                                    v14 = v14 + 1;
                                    v16 = v16 + 1;
                                    if (v16 != v12 - 1) {
                                        MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                                    } else if (v16 == v12 - 1 == 1) {
                                        MEM[132] = _smardexSwapCallback;
                                    }
                                }
                                v10 = v111 = MEM[128];
                                v14 = v14 + 41;
                                v16 = v16 + 1;
                            }
                            if (!v64) {
                                v112 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas - 5000);
                                require(v112, 3, 3);
                            } else if (v64 == 1) {
                                v113 = (msg.data[v13 + v16 * 20] >> 96).call(MEM[128:292], MEM[0:0]).value(v10).gas(msg.gas - 5000);
                                require(v113, 3, 3);
                            }
                            v14 = v14 + 20;
                            v16 = v16 + 1;
                            // Unknown jump to Block 0x3de9B0x513B0x194. Refer to 3-address code (TAC);
                            if (v16 != v12 - 1) {
                                MEM[260] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[260] = _smardexSwapCallback;
                            }
                            MEM[260] = this;
                            // Unknown jump to Block 0x3d8fB0x513B0x194. Refer to 3-address code (TAC);
                        }
                        if (msg.data[40 + v14] >> 248) {
                            MEM[128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            if (v16 != v12 - 1) {
                                MEM[132] = msg.data[v13 + (v16 + 1) * 20] >> 96;
                            } else if (v16 == v12 - 1 == 1) {
                                MEM[132] = _smardexSwapCallback;
                            }
                            v114 = v59.call(v41, v41, v10).gas(msg.gas - 5000);
                            require(v114, 3, 3);
                        }
                        v14 = v14 + 40;
                        v16 = v16 + 1;
                        v115 = v61.call(MEM[128:260], MEM[0:0]).value(v10).gas(msg.gas - 5000);
                        require(v115, 3, 3);
                        v116 = v61.call(MEM[128:260], MEM[0:0]).gas(msg.gas - 5000);
                        require(v116, 3, 3);
                        // Unknown jump to Block 0x3c4eB0x513B0x194. Refer to 3-address code (TAC);
                    }
                    if (!v44) {
                        v10 = v117 = MEM[128];
                        if (v117 < 0) {
                            v10 = v118 = 0 - v117;
                        }
                    } else if (v44 == 1) {
                        v10 = v119 = MEM[160];
                        if (v119 < 0) {
                            v10 = v120 = 0 - v119;
                        }
                    }
                    v16 = v16 + 1;
                }
                if (!((msg.data[v14 + 1] >> 248) - 2)) {
                    v14 = v14 + 1;
                    v121 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit(v10).gas(msg.gas - 5000);
                    require(v121, 3, 3);
                }
                continue;
            }
        }
    }
}

function 0x742a7783(uint256 varg0) public payable { 
    v0 = v1 = address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) == msg.sender;
    if (address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) != msg.sender) {
        v0 = address(0x315d2ee4fccda0def532ef4108ff57204f8d9eba) == msg.sender;
    }
    require(v0);
    v2 = v3 = varg0 >> 248;
    v4 = v5 = 4;
    while (v2) {
        v6 = v7 = this;
        v8 = v4 + 1;
        if (1 - (msg.data[v8] >> 248)) {
            break;
        } else {
            v6 = v9 = msg.data[v4 + 2] >> 96;
            v8 = v4 + 21;
        }
        v10 = v11 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        if (msg.data[1 + v8] >> 248 == 1) {
            v10 = v12 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
        } else if (msg.data[1 + v8] >> 248 == 2) {
            v10 = v13 = 0xdac17f958d2ee523a2206206994597c13d831ec7;
        } else if (msg.data[1 + v8] >> 248 == 3) {
            v10 = v14 = 0x6b175474e89094c44da98b954eedeac495271d0f;
        } else if (msg.data[1 + v8] >> 248 == 4) {
            v10 = v15 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
        } else {
            break;
        }
        v16 = v17 = msg.data[2 + v8] >> 128;
        v16 = v18 = msg.data[18 + v8] >> 128;
        if (v18) {
            break;
        }
        v19 = msg.data[34 + v8] >> 248;
        v4 = v8 + v19 * 20 + 34;
        v20 = v21 = 0;
        while (v20 < v19) {
            v4 = v4 + 1;
            v22 = msg.data[v4] >> 248;
            if (!v22) {
                v23 = v10.transfer(msg.data[v8 + 20 * v20 + 35] >> 96, v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                require(v23, getKeeperWhitelistPosition__2u3w());
                break;
            } else if (v22 == 1) {
                v24 = msg.data[v4 + 2] >> 96;
                v4 = v4 + 21;
                v25 = msg.data[v4 + 22] >> 248;
                if (v25 == 8) {
                    break;
                } else {
                    if (v25 == 10) {
                        v26 = v24.approve(0x22d473030f116ddee9f6b43ac78ba3, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        if (v26) {
                            break;
                        } else {
                            v27 = v24.approve(0x22d473030f116ddee9f6b43ac78ba3, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v27, getKeeperWhitelistPosition__2u3w());
                            break;
                        }
                        v28 = 0x22d473030f116ddee9f6b43ac78ba3.approve(v24, 0x66a9893cc07d91d95644aedd05d03f95e1dba8af, uint160.max, uint48.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        require(v28, getKeeperWhitelistPosition__2u3w());
                        break;
                    } else if (v25 == 12) {
                        break;
                    } else if (v25 == 13) {
                        break;
                    } else if (v25 == 14) {
                        break;
                    } else if (v25 == 15) {
                        break;
                    } else if (v25 != 16) {
                        if (v25 != 17) {
                            if (v25 != 18) {
                                if (v25 != 19) {
                                    if (v25 == 20) {
                                        v29 = v24.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                        if (!v29) {
                                            v30 = v24.approve(0xba12222222228d8ba445958a75a0704d566bf2c8, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                            require(v30, getKeeperWhitelistPosition__2u3w());
                                        }
                                    } else if (v25 == 21) {
                                        v31 = v24.approve(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                        if (!v31) {
                                            v32 = v24.approve(0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                            require(v32, getKeeperWhitelistPosition__2u3w());
                                        }
                                    } else if (v25 == 22) {
                                        v33 = v24.approve(0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                        if (!v33) {
                                            v34 = v24.approve(0xeef417e1d5cc832e619ae18d2f140de2999dd4fb, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                            require(v34, getKeeperWhitelistPosition__2u3w());
                                        }
                                    } else if (v25 == 25) {
                                        v35 = v24.approve(msg.data[v8 + 20 * v20 + 35] >> 96, int256.min).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                        if (!v35) {
                                            v36 = v24.approve(msg.data[v8 + 20 * v20 + 35] >> 96, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                            require(v36, getKeeperWhitelistPosition__2u3w());
                                        }
                                    } else if (v25 != 27) {
                                        if (v25 == 29) {
                                            v37 = v24.approve(0xcedd366065a146a039b92db35756ecd7688fcc77, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                            if (!v37) {
                                                v38 = v24.approve(0xcedd366065a146a039b92db35756ecd7688fcc77, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                                require(v38, getKeeperWhitelistPosition__2u3w());
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    break;
                }
                v39 = v24.approve(msg.data[v8 + 20 * v20 + 35] >> 96, int256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                if (v39) {
                    break;
                } else {
                    v40 = v24.approve(msg.data[v8 + 20 * v20 + 35] >> 96, uint96.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v40, getKeeperWhitelistPosition__2u3w());
                    break;
                }
                break;
                // Unknown jump to Block 0x297dB0x199. Refer to 3-address code (TAC);
            } else if (v22 == 2) {
                v41 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                require(v41, getKeeperWhitelistPosition__2u3w());
                break;
            } else if (v22 == 3) {
                v42 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                require(v42, getKeeperWhitelistPosition__2u3w());
                break;
            } else if (v22 == 4) {
                v16 = v43 = msg.data[1 + v4] >> 128;
                MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (msg.data[17 + v4] >> 248 == 0) {
                    MEM[132] = v43;
                    MEM[164] = 0;
                } else if (msg.data[17 + v4] >> 248 == 1) {
                    MEM[132] = 0;
                    MEM[164] = v43;
                } else {
                    break;
                }
                if (!(msg.data[v4 + 18] >> 248)) {
                    if (v20 != v19 - 1) {
                        MEM[196] = this;
                    } else if (v20 == v19 - 1 == 1) {
                        MEM[196] = v6;
                    } else {
                        break;
                    }
                } else if (msg.data[v4 + 18] >> 248 == 1) {
                    MEM[196] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                } else {
                    break;
                }
                v44 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v45, 128, 0).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                require(v44, getKeeperWhitelistPosition__2u3w());
                v4 = v4 + 18;
                v20 = v20 + 1;
            } else if (v22 == 5) {
                v16 = v46 = msg.data[17 + v4] >> 128;
                MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (msg.data[33 + v4] >> 248 == 0) {
                    MEM[132] = msg.data[1 + v4] >> 128;
                    MEM[164] = 0;
                } else if (msg.data[33 + v4] >> 248 == 1) {
                    MEM[132] = 0;
                    MEM[164] = msg.data[1 + v4] >> 128;
                } else {
                    break;
                }
                if (!(msg.data[v4 + 34] >> 248)) {
                    if (v20 != v19 - 1) {
                        MEM[196] = this;
                    } else if (v20 == v19 - 1 == 1) {
                        MEM[196] = v6;
                    }
                } else if (msg.data[v4 + 34] >> 248 == 1) {
                    MEM[196] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                } else {
                    break;
                }
                v47 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v45, 128, 0).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                require(v47, getKeeperWhitelistPosition__2u3w());
                v4 = v4 + 34;
                v20 = v20 + 1;
            } else {
                if (v22 == 6) {
                    v48 = v49 = msg.data[1 + v4] >> 248;
                    MEM[128] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    if (msg.data[2 + v4] >> 248 == 0) {
                        if (v20 != v19 - 1) {
                            MEM[132] = this;
                        } else if (v20 == v19 - 1 == 1) {
                            MEM[132] = v6;
                        }
                    } else if (msg.data[2 + v4] >> 248 == 1) {
                        MEM[132] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                    }
                    if (!v49) {
                        MEM[164] = 0;
                        MEM[196] = v16;
                        MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else if (v49 == 1) {
                        MEM[164] = 1;
                        MEM[196] = v16;
                        MEM[228] = 0x1000276a4;
                    }
                    CALLDATACOPY(324, v4 + 5, msg.data[3 + v4] >> 240);
                    v4 = 4 + ((msg.data[3 + v4] >> 240) + v4);
                    _smardexSwapCallback = msg.data[v8 + (v20 << 2) + 35] >> 96;
                    v50 = (msg.data[v8 + (v20 << 2) + 35] >> 96).call(v45, v45, v45, v45, v45, 160, msg.data[3 + v4] >> 240).gas(msg.gas);
                    require(v50, getKeeperWhitelistPosition__2u3w());
                    break;
                } else if (v22 == 7) {
                    v16 = v51 = msg.data[1 + v4] >> 128;
                    MEM[128] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                    if (msg.data[18 + v4] >> 248 == 0) {
                        if (v20 != v19 - 1) {
                            MEM[132] = this;
                        } else if (v20 == v19 - 1 == 1) {
                            MEM[132] = v6;
                        }
                    } else if (msg.data[18 + v4] >> 248 == 1) {
                        MEM[132] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                    }
                    if (!(msg.data[17 + v4] >> 248)) {
                        MEM[164] = 0;
                        MEM[196] = v16;
                        MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else if (msg.data[17 + v4] >> 248 == 1) {
                        MEM[164] = 1;
                        MEM[196] = v16;
                        MEM[228] = 0x1000276a4;
                    }
                    CALLDATACOPY(324, v4 + 21, msg.data[19 + v4] >> 240);
                    v4 = 20 + ((msg.data[19 + v4] >> 240) + v4);
                    _smardexSwapCallback = msg.data[v8 + 20 * v20 + 35] >> 96;
                    v52 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v45, v45, 160, msg.data[19 + v4] >> 240).gas(msg.gas);
                    require(v52, getKeeperWhitelistPosition__2u3w());
                    if (msg.data[17 + v4] >> 248 != 0) {
                        if (msg.data[17 + v4] >> 248 != 1) {
                        }
                    }
                    v20 = v20 + 1;
                } else if (v22 == 8) {
                    MEM[128] = 0xc31b8d7a00000000000000000000000000000000000000000000000000000000;
                    if (!(msg.data[v4 + 2] >> 248)) {
                        if (v20 != v19 - 1) {
                            MEM[132] = this;
                        } else if (v20 == v19 - 1 == 1) {
                            MEM[132] = v6;
                        }
                    } else if (msg.data[v4 + 2] >> 248 == 1) {
                        MEM[132] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                    }
                    if (!(msg.data[v4 + 1] >> 248)) {
                        MEM[164] = 0;
                        MEM[196] = v16;
                        MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else if (msg.data[v4 + 1] >> 248 == 1) {
                        MEM[164] = 1;
                        MEM[196] = v16;
                        MEM[228] = 0x1000276a4;
                    }
                    MEM[292] = 0;
                    v53 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v45, v45, 160).gas(msg.gas);
                    require(v53, getKeeperWhitelistPosition__2u3w());
                    if (!(msg.data[v4 + 1] >> 248)) {
                        v16 = v54 = MEM[128];
                        if (v54 < 0) {
                            v16 = v55 = 0 - v54;
                        }
                    } else if (msg.data[v4 + 1] >> 248 == 1) {
                        v16 = v56 = MEM[160];
                        if (v56 < 0) {
                            v16 = 0 - v56;
                        }
                    }
                    v4 = v4 + 2;
                    v20 = v20 + 1;
                } else if (v22 == 9) {
                    v57 = (msg.data[v8 + 20 * v20 + 35] >> 96).getReserves().gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v57, getKeeperWhitelistPosition__2u3w());
                    if (!(msg.data[v4 + 17] >> 248)) {
                        v16 = v16 * MEM[128] * 997 / (MEM[160] * 1000 + v16 * 997);
                        require(v16 >= msg.data[v4 + 1] >> 128, getKeeperWhitelistPosition__2u3w());
                        MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = v16;
                        MEM[164] = 0;
                    } else if (msg.data[v4 + 17] >> 248 == 1) {
                        v16 = v16 * MEM[160] * 997 / (MEM[128] * 1000 + v16 * 997);
                        require(v16 >= msg.data[v4 + 1] >> 128, getKeeperWhitelistPosition__2u3w());
                        MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        MEM[132] = 0;
                        MEM[164] = v16;
                    }
                    v58 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v6, 128, 0).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v58, getKeeperWhitelistPosition__2u3w());
                    v4 = v4 + 17;
                    v20 = v20 + 1;
                } else if (v22 == 10) {
                    CALLDATACOPY(128, v4 + 4, msg.data[2 + v4] >> 240);
                    v10 = v59 = msg.data[v4 + 915] >> 96;
                    if (bool(v59)) {
                        v60 = 0x66a9893cc07d91d95644aedd05d03f95e1dba8af.call(MEM[128:128 + msg.data[2 + v2974V0x199] >> 240], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        require(v60, getKeeperWhitelistPosition__2u3w());
                    } else if (!v59 == 1) {
                        v61 = 0x66a9893cc07d91d95644aedd05d03f95e1dba8af.call(MEM[128:128 + msg.data[2 + v2974V0x199] >> 240], MEM[0:0]).value(msg.data[936 + v4]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        require(v61, getKeeperWhitelistPosition__2u3w());
                    }
                    v16 = v62 = msg.data[v4 + 1032];
                    if (!(msg.data[v4 + 1] >> 248)) {
                        if ((v6 != this) & (v20 == v19 - 1)) {
                            v63 = (msg.data[v4 + 1012] >> 96).transfer(v6, v62).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v63, getKeeperWhitelistPosition__2u3w());
                        }
                    } else if (msg.data[v4 + 1] >> 248 == 1) {
                        v64 = (msg.data[v4 + 1012] >> 96).transfer(msg.data[v8 + 20 * (v20 + 1) + 35] >> 96, v62).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        require(v64, getKeeperWhitelistPosition__2u3w());
                    }
                    v4 = v4 + (msg.data[2 + v4] >> 240) + 3;
                    v20 = v20 + 1;
                } else {
                    if (v22 == 12) {
                        v16 = v65 = msg.data[3 + v4] >> 128;
                        v66 = v67 = msg.data[19 + v4] >> 96;
                        MEM[128] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
                        MEM[132] = msg.data[1 + v4] >> 248;
                        MEM[164] = msg.data[2 + v4] >> 248;
                        MEM[196] = v16;
                        MEM[228] = v65;
                        v68 = v69 = msg.data[v8 + 20 * v20 + 35] >> 96;
                        if (msg.data[39 + v4] >> 248 != 0) {
                            if (msg.data[39 + v4] >> 248 != 1) {
                            }
                        }
                    } else {
                        if (v22 == 13) {
                            v16 = v70 = msg.data[3 + v4] >> 128;
                            MEM[128] = 0xddc1f59d00000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = v70;
                            if (msg.data[20 + v4] >> 248 != 0) {
                                if (msg.data[20 + v4] >> 248 != 1) {
                                }
                            }
                        } else if (v22 == 14) {
                            v16 = v71 = msg.data[3 + v4] >> 128;
                            v66 = v72 = msg.data[19 + v4] >> 96;
                            MEM[128] = 0x5b41b90800000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = v71;
                            v68 = v73 = msg.data[v8 + 20 * v20 + 35] >> 96;
                            if (msg.data[39 + v4] >> 248 != 0) {
                                if (msg.data[39 + v4] >> 248 != 1) {
                                }
                            }
                        } else if (v22 == 15) {
                            v16 = v74 = msg.data[3 + v4] >> 128;
                            v66 = v75 = msg.data[19 + v4] >> 96;
                            MEM[128] = 0x394747c500000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = v74;
                            MEM[260] = msg.data[39 + v4] >> 248;
                            if (msg.data[39 + v4] >> 248 == 0) {
                                v76 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v76, getKeeperWhitelistPosition__2u3w());
                            } else if (msg.data[39 + v4] >> 248 == 1) {
                                v77 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(MEM[128:292], MEM[0:0]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v77, getKeeperWhitelistPosition__2u3w());
                            }
                            if (msg.data[40 + v4] >> 248 != 0) {
                                if (msg.data[40 + v4] >> 248 != 1) {
                                }
                            }
                        } else if (v22 == 16) {
                            v16 = v78 = msg.data[3 + v4] >> 128;
                            MEM[128] = 0xce7d650300000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = v78;
                            MEM[260] = msg.data[19 + v4] >> 248;
                            if (msg.data[20 + v4] >> 248 == 0) {
                                if (v20 != v19 - 1) {
                                    MEM[292] = this;
                                } else if (v20 == v19 - 1 == 1) {
                                    MEM[292] = v6;
                                }
                            } else if (msg.data[20 + v4] >> 248 == 1) {
                                MEM[292] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                            }
                            if (!(msg.data[19 + v4] >> 248)) {
                                v79 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:324], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v79, getKeeperWhitelistPosition__2u3w());
                            } else if (msg.data[19 + v4] >> 248 == 1) {
                                v80 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:324], MEM[0:0]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v80, getKeeperWhitelistPosition__2u3w());
                            }
                            v4 = v4 + 20;
                            v20 = v20 + 1;
                        } else if (v22 == 17) {
                            v16 = v81 = msg.data[3 + v4] >> 128;
                            MEM[128] = 0xa64833a000000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = v81;
                            if (msg.data[20 + v4] >> 248 != 0) {
                                if (msg.data[20 + v4] >> 248 != 1) {
                                }
                            }
                        } else if (v22 == 18) {
                            v82 = (msg.data[v8 + 20 * v20 + 35] >> 96).exchange_underlying(msg.data[1 + v4] >> 248, msg.data[2 + v4] >> 248, v16, msg.data[3 + v4] >> 128).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v82, getKeeperWhitelistPosition__2u3w());
                            v16 = v83 = MEM[228];
                            if (!(msg.data[v4 + 39] >> 248)) {
                                if ((v6 != this) & (v20 == v19 - 1)) {
                                    v84 = (msg.data[v4 + 19] >> 96).transfer(v6, v83).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                    require(v84, getKeeperWhitelistPosition__2u3w());
                                }
                            } else if (msg.data[v4 + 39] >> 248 == 1) {
                                v85 = (msg.data[v4 + 19] >> 96).transfer(msg.data[v8 + 20 * (v20 + 1) + 35] >> 96, v83).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v85, getKeeperWhitelistPosition__2u3w());
                            }
                            v4 = v4 + 39;
                            v20 = v20 + 1;
                        } else if (v22 == 19) {
                            MEM[128] = 0x44ee198600000000000000000000000000000000000000000000000000000000;
                            MEM[132] = msg.data[1 + v4] >> 248;
                            MEM[164] = msg.data[2 + v4] >> 248;
                            MEM[196] = v16;
                            MEM[228] = msg.data[3 + v4] >> 128;
                            if (msg.data[19 + v4] >> 248 == 0) {
                                if (v20 != v19 - 1) {
                                    MEM[260] = this;
                                } else if (v20 == v19 - 1 == 1) {
                                    MEM[260] = v6;
                                }
                            } else if (msg.data[19 + v4] >> 248 == 1) {
                                MEM[260] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                            }
                            v86 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v86, getKeeperWhitelistPosition__2u3w());
                            v16 = v87 = MEM[228];
                            v4 = v4 + 19;
                            v20 = v20 + 1;
                        } else if (v22 == 20) {
                            MEM[128] = 0x52bbbe2900000000000000000000000000000000000000000000000000000000;
                            MEM[132] = 224;
                            MEM[164] = this;
                            MEM[196] = 0;
                            v10 = v88 = msg.data[v4 + 33] >> 96;
                            if (!(msg.data[v4 + 73] >> 248)) {
                                if (v20 != v19 - 1) {
                                    MEM[228] = this;
                                } else if (v20 == v19 - 1 == 1) {
                                    MEM[228] = v6;
                                }
                            } else if (msg.data[v4 + 73] >> 248 == 1) {
                                MEM[228] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                            }
                            v89 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(v45, v45, v45, v45, v45, 0, 0, block.timestamp + 60, msg.data[1 + v4], 0, v88, msg.data[53 + v4] >> 96, v16, 192, 0).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v89, getKeeperWhitelistPosition__2u3w());
                            v16 = v90 = MEM[128];
                            v4 = v4 + 73;
                            v20 = v20 + 1;
                        } else if (v22 == 21) {
                            v10 = v91 = msg.data[1 + v4] >> 96;
                            MEM[128] = 0xb77d239b00000000000000000000000000000000000000000000000000000000;
                            MEM[132] = 192;
                            MEM[164] = v16;
                            MEM[196] = 1;
                            if (msg.data[61 + v4] >> 248 == 0) {
                                if (v20 != v19 - 1) {
                                    MEM[228] = this;
                                } else if (v20 == v19 - 1 == 1) {
                                    MEM[228] = v6;
                                }
                            } else if (msg.data[61 + v4] >> 248 == 1) {
                                MEM[228] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                            }
                            MEM[260] = 0;
                            MEM[292] = 0;
                            MEM[324] = 3;
                            MEM[356] = v91;
                            MEM[388] = msg.data[21 + v4] >> 96;
                            MEM[420] = msg.data[41 + v4] >> 96;
                            if (v91 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == 0) {
                                v92 = 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[128:452], MEM[128:160]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v92, getKeeperWhitelistPosition__2u3w());
                            } else if (v91 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == 1) {
                                v93 = 0x2f9ec37d6ccfff1cab21733bdadede11c823ccb0.call(MEM[128:452], MEM[128:160]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v93, getKeeperWhitelistPosition__2u3w());
                            }
                            v16 = v94 = MEM[128];
                            v4 = v4 + 61;
                            v20 = v20 + 1;
                        } else if (v22 == 22) {
                            v10 = v95 = msg.data[1 + v4] >> 96;
                            MEM[128] = 0xd3a4acd300000000000000000000000000000000000000000000000000000000;
                            MEM[132] = v95;
                            MEM[164] = msg.data[21 + v4] >> 96;
                            MEM[196] = v16;
                            MEM[228] = 1;
                            MEM[260] = block.timestamp + 60;
                            if (msg.data[41 + v4] >> 248 == 0) {
                                if (v20 != v19 - 1) {
                                    MEM[292] = this;
                                } else if (v20 == v19 - 1 == 1) {
                                    MEM[292] = v6;
                                }
                            } else if (msg.data[41 + v4] >> 248 == 1) {
                                MEM[292] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                            }
                            if (v95 != 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                                v96 = 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[128:324], MEM[128:160]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v96, getKeeperWhitelistPosition__2u3w());
                            } else if (v95 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == 1) {
                                v97 = 0xeef417e1d5cc832e619ae18d2f140de2999dd4fb.call(MEM[128:324], MEM[128:160]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v97, getKeeperWhitelistPosition__2u3w());
                            }
                            v16 = v98 = MEM[128];
                            v4 = v4 + 41;
                            v20 = v20 + 1;
                        } else {
                            if (v22 == 23) {
                                MEM[128] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                                if (msg.data[v4 + 1] >> 248) {
                                    if (msg.data[v4 + 1] >> 248 != 1) {
                                    }
                                }
                            } else if (v22 == 24) {
                                MEM[128] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                                if (msg.data[v4 + 1] >> 248) {
                                    if (msg.data[v4 + 1] >> 248 != 1) {
                                    }
                                }
                            } else if (v22 == 25) {
                                v10 = v99 = msg.data[1 + v4] >> 96;
                                v100 = msg.data[21 + v4] >> 96;
                                v101 = (msg.data[v8 + 20 * v20 + 35] >> 96).swapExactAmountIn(v99, v16, v100, 0, uint256.max).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v101, getKeeperWhitelistPosition__2u3w());
                                v16 = v102 = MEM[128];
                                if (!(msg.data[v4 + 41] >> 248)) {
                                    if ((v6 != this) & (v20 == v19 - 1)) {
                                        v103 = v100.transfer(v6, v102).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                        require(v103, getKeeperWhitelistPosition__2u3w());
                                    }
                                } else if (msg.data[v4 + 41] >> 248 == 1) {
                                    v104 = v100.transfer(msg.data[v8 + 20 * (v20 + 1) + 35] >> 96, v102).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                    require(v104, getKeeperWhitelistPosition__2u3w());
                                }
                                v4 = v4 + 41;
                                v20 = v20 + 1;
                            } else if (v22 == 26) {
                                v48 = v105 = msg.data[1 + v4] >> 248;
                                MEM[128] = 0x1f18b37100000000000000000000000000000000000000000000000000000000;
                                if (msg.data[2 + v4] >> 248 == 0) {
                                    if (v20 != v19 - 1) {
                                        MEM[132] = this;
                                    } else if (v20 == v19 - 1 == 1) {
                                        MEM[132] = v6;
                                    }
                                } else if (msg.data[2 + v4] >> 248 == 1) {
                                    MEM[132] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                                }
                                if (!v105) {
                                    MEM[164] = 0;
                                } else if (v105 == 1) {
                                    MEM[164] = 1;
                                }
                                CALLDATACOPY(292, v4 + 5, msg.data[3 + v4] >> 240);
                                v4 = 4 + ((msg.data[3 + v4] >> 240) + v4);
                                _smardexSwapCallback = msg.data[v8 + 20 * v20 + 35] >> 96;
                                v106 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(v45, v45, v45, v16, 128, msg.data[3 + v4] >> 240).gas(msg.gas);
                                require(v106, getKeeperWhitelistPosition__2u3w());
                            } else if (v22 == 27) {
                                v10 = v107 = msg.data[1 + v4] >> 96;
                                MEM[128] = 0xe331d03900000000000000000000000000000000000000000000000000000000;
                                MEM[132] = v107;
                                MEM[164] = msg.data[21 + v4] >> 96;
                                MEM[196] = v16;
                                MEM[228] = 0;
                                MEM[260] = 0;
                                if (msg.data[41 + v4] >> 248 == 0) {
                                    if (v20 != v19 - 1) {
                                        MEM[292] = this;
                                    } else if (v20 == v19 - 1 == 1) {
                                        MEM[292] = v6;
                                    }
                                } else if (msg.data[41 + v4] >> 248 == 1) {
                                    MEM[292] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                                }
                                if (bool(v107)) {
                                    v108 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:324], MEM[128:160]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                    require(v108, getKeeperWhitelistPosition__2u3w());
                                } else if (!v107 == 1) {
                                    v109 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:324], MEM[128:160]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                }
                                v16 = v110 = MEM[128];
                                v4 = v4 + 41;
                                v20 = v20 + 1;
                            } else if (v22 == 28) {
                                v16 = v111 = msg.data[21 + v4] >> 128;
                                MEM[128] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000;
                                MEM[132] = v111;
                                MEM[164] = 128;
                                if (msg.data[22 + v4] >> 248 == 0) {
                                    if (v20 != v19 - 1) {
                                        MEM[196] = this;
                                    } else if (v20 == v19 - 1 == 1) {
                                        MEM[196] = v6;
                                    }
                                } else if (msg.data[22 + v4] >> 248 == 1) {
                                    MEM[196] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                                }
                                v112 = 0xcedd366065a146a039b92db35756ecd7688fcc77.call(v45, v45, v45, v45, block.timestamp + 60, 2, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, msg.data[1 + v4] >> 96).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v112, getKeeperWhitelistPosition__2u3w());
                                v4 = v4 + 37;
                                v20 = v20 + 1;
                            } else if (v22 == 29) {
                                v10 = msg.data[1 + v4] >> 96;
                                v16 = v113 = msg.data[21 + v4] >> 128;
                                v114 = (msg.data[v8 + 20 * v20 + 35] >> 96).sellTotalFee(msg.data[v8 + 20 * v20 + 35] >> 96).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v114, getKeeperWhitelistPosition__2u3w());
                                v115 = 0xcedd366065a146a039b92db35756ecd7688fcc77.usdcToEth(MEM[128]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v115, getKeeperWhitelistPosition__2u3w());
                                MEM[128] = 0x791ac94700000000000000000000000000000000000000000000000000000000;
                                MEM[132] = v16;
                                MEM[164] = v113;
                                MEM[196] = 160;
                                if (msg.data[22 + v4] >> 248 == 0) {
                                    if (v20 != v19 - 1) {
                                        MEM[228] = this;
                                    } else if (v20 == v19 - 1 == 1) {
                                        MEM[228] = v6;
                                    }
                                } else if (msg.data[22 + v4] >> 248 == 1) {
                                    MEM[228] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                                }
                                v116 = 0xcedd366065a146a039b92db35756ecd7688fcc77.call(v45, v45, v45, v45, v45, block.timestamp + 60, 2, v10, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).value(MEM[128]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                emit 0x0(msg.sender);
                                require(v116, getKeeperWhitelistPosition__2u3w());
                                v4 = v4 + 37;
                                v20 = v20 + 1;
                            } else if (v22 == 30) {
                                v117 = (msg.data[1 + v4] >> 96).transfer(v6, v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                                require(v117, getKeeperWhitelistPosition__2u3w());
                                v4 = v4 + 20;
                                v20 = v20 + 1;
                            }
                            if (v20 != v19 - 1) {
                                MEM[132] = this;
                            } else if (v20 == v19 - 1 == 1) {
                                MEM[132] = v6;
                            }
                            v118 = (msg.data[v8 + 20 * v20 + 35] >> 96).call(MEM[128:164], MEM[128:160]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v118, getKeeperWhitelistPosition__2u3w());
                            v16 = v119 = MEM[128];
                            v4 = v4 + 1;
                            v20 = v20 + 1;
                            MEM[132] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                        }
                        if (!(msg.data[v4 + 19] >> 248)) {
                            v120 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:292], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v120, getKeeperWhitelistPosition__2u3w());
                        } else if (msg.data[v4 + 19] >> 248 == 1) {
                            v121 = (msg.data[35 + (v8 + v20 * 20)] >> 96).call(MEM[128:292], MEM[0:0]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                            require(v121, getKeeperWhitelistPosition__2u3w());
                        }
                        v4 = v4 + 20;
                        v20 = v20 + 1;
                        MEM[260] = msg.data[v8 + 20 * (v20 + 1) + 35] >> 96;
                        if (v20 != v19 - 1) {
                            MEM[260] = this;
                        } else if (v20 == v19 - 1 == 1) {
                            MEM[260] = v6;
                        }
                        // Unknown jump to Block 0x1905B0x199. Refer to 3-address code (TAC);
                    }
                    if (msg.data[40 + v4] >> 248 != 0) {
                        if (msg.data[40 + v4] >> 248 != 1) {
                        }
                    }
                    v4 = v4 + 40;
                    v20 = v20 + 1;
                    v122 = v66.transfer(msg.data[v8 + 20 * (v20 + 1) + 35] >> 96, v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v122, getKeeperWhitelistPosition__2u3w());
                    if ((v6 != this) & (v20 == v19 - 1)) {
                        v123 = v66.transfer(v6, v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                        require(v123, getKeeperWhitelistPosition__2u3w());
                    }
                    break;
                    v124 = v68.call(MEM[128:260], MEM[0:0]).value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v124, getKeeperWhitelistPosition__2u3w());
                    v125 = v68.call(MEM[128:260], MEM[0:0]).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
                    require(v125, getKeeperWhitelistPosition__2u3w());
                }
                if (v48 == 0) {
                    v16 = v126 = MEM[128];
                    if (v126 >= 0) {
                        break;
                    } else {
                        v16 = v127 = 0 - v126;
                    }
                    break;
                } else if (v48 == 1) {
                    v16 = v128 = MEM[160];
                    if (v128 < 0) {
                        v16 = v129 = 0 - v128;
                    }
                } else {
                    break;
                }
                v20 = v20 + 1;
            }
        }
        if ((msg.data[v4 + 1] >> 248) - 2) {
            break;
        } else {
            v4 = v4 + 1;
            v130 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v16).gas(msg.gas + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffec78);
            require(v130, getKeeperWhitelistPosition__2u3w());
            break;
        }
        require(v16 >= v16, getKeeperWhitelistPosition__2u3w());
        v2 = v2 - 1;
    }
    if (msg.value) {
        v131 = block.coinbase.call().value(msg.value).gas(2300 * !msg.value);
        require(bool(v131), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function 0x8e50f343(address varg0, address varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    v0 = v1 = address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) == msg.sender;
    if (address(0x4e9141d2fb79b2a94a0256283f1547c7d6a12e7f) != msg.sender) {
        v0 = address(0x315d2ee4fccda0def532ef4108ff57204f8d9eba) == msg.sender;
    }
    require(v0);
    v2 = varg1.transfer(varg0, varg2).gas(msg.gas - 5000);
    require(v2, 3, 3);
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
    } else {
        if (0x8e50f343 > function_selector >> 224) {
            if (0xd4fb622 == function_selector >> 224) {
                0x0d4fb622();
            } else if (0x23a69e75 != function_selector >> 224) {
                if (0x742a7783 == function_selector >> 224) {
                    0x742a7783();
                } else {
                    exit;
                }
            }
        } else if (0x8e50f343 == function_selector >> 224) {
            0x8e50f343();
        } else if (0xa1dab4eb != function_selector >> 224) {
            if (0xfa461e33 != function_selector >> 224) {
                exit;
            }
        }
        smardexSwapCallback(int256,int256,bytes);
    }
}
