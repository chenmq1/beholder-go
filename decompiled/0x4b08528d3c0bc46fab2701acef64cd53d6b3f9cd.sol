// Decompiled by library.dedaub.com
// 2025.12.14 09:57 UTC
// Compiled using the solidity compiler version 0.8.25





function uniswapV2Call(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require((tx.origin == 0xffa0f7e5db34224ee41c29a3fa1e122c8431027e) | (tx.origin == 0x1a642f386a5179c81070f12bcf236a44b75c1919));
    v0 = v1 = 197;
    while (v0 < 164 + varg2) {
        v2 = v3 = 0;
        v4 = v5 = 128;
        while (v2 < msg.data[v0] >> 84 & 0x7) {
            v6 = msg.data[v0];
            if (v6 >> 76 & 0x1f & 0x7 == 0) {
                v7 = v8 = this;
                v0 = v0 + 23;
                if (!v2) {
                    if (!varg0) {
                    }
                }
            } else if (v6 >> 76 & 0x1f & 0x7 == 1) {
                v7 = v9 = this;
                v2 = v10 = uint40(v6 >> 32) >> 8 << uint8(uint40(v6 >> 32));
                v0 = v0 + 28;
            } else if (v6 >> 76 & 0x1f & 0x7 == 4) {
                v0 = v0 + 23;
                v7 = v11 = msg.data[v0] >> 96;
                if (!v2) {
                    if (!varg0) {
                    }
                }
            } else {
                v0 = v0 + 28;
                v7 = v12 = msg.data[v0] >> 96;
                v2 = v13 = uint40(v6 >> 32) >> 8 << uint8(uint40(v6 >> 32));
            }
            if ((v6 >> 76 & 0x1f) >> 4 == 0) {
                MEM[v5] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[132] = v7;
                MEM[164] = (v6 >> 76 & 0x1f) >> 3 & 0x1;
                MEM[196] = v2;
                if ((v6 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    MEM[228] = 0x1000276a4;
                } else {
                    MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM8[324] = v6 >> 72 & 0xFF;
                v14 = (v6 >> 96).call(v15, v15, v15, v15, v15, 160, 1).gas(msg.gas);
                if ((v6 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    v2 = v16 = 0 - MEM[32];
                } else {
                    v2 = v17 = 0 - MEM[0];
                }
            } else {
                if (v6 >> 72 & 0x3 == 1) {
                    v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transferFrom(this, v6 >> 96, v2).gas(msg.gas);
                } else if (v6 >> 72 & 0x3 == 2) {
                    v19 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(v6 >> 96, v2).gas(msg.gas);
                } else {
                    if ((v6 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                        MEM[0] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
                    } else {
                        MEM[0] = 0xd21220a700000000000000000000000000000000000000000000000000000000;
                    }
                    v20 = (v6 >> 96).staticcall(MEM[0:4], MEM[0:32]).gas(msg.gas);
                    v21 = MEM[0x0].transfer(v6 >> 96, v2).gas(msg.gas);
                }
                v22 = (v6 >> 96).getReserves().gas(msg.gas);
                if ((v6 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    v2 = v2 * 997 * MEM[32] / (MEM[0] * 1000 + v2 * 997);
                } else {
                    v2 = v2 * 997 * MEM[0] / (MEM[32] * 1000 + v2 * 997);
                }
                MEM[v5] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if ((v6 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    MEM[132] = 0;
                    MEM[164] = v2;
                } else {
                    MEM[132] = v2;
                    MEM[164] = 0;
                }
                v23 = (v6 >> 96).call(v15, v15, v15, v7, 128, 0).gas(msg.gas);
            }
            v2 = v2 + 1;
        }
        v24 = v25 = msg.sender;
        v26 = v27 = 0x7 & msg.data[v0] >> 81;
        v28 = v29 = 0;
        while (v28 < v26) {
            v30 = msg.data[v0];
            v24 = v31 = v30 >> 96;
            v0 = v32 = 0;
            if (!((v30 >> 76 & 0x1f) >> 4)) {
                v0 = v0 + (v30 >> 87 & 0x1ff);
            }
            if (v30 >> 76 & 0x1f & 0x7 == 1) {
                v24 = v33 = this;
                v2 = v34 = uint40(v30 >> 32) >> 8 << uint8(uint40(v30 >> 32));
                v0 = v0 + 28;
            } else if (v30 >> 76 & 0x1f & 0x7 == 3) {
                v24 = v35 = msg.sender;
                v2 = v36 = uint40(v30 >> 32) >> 8 << uint8(uint40(v30 >> 32));
                v0 = v0 + 28;
            } else if (v30 >> 76 & 0x1f & 0x7 == 4) {
                v0 = v0 + 23;
            } else {
                v2 = v37 = uint40(v30 >> 32) >> 8 << uint8(uint40(v30 >> 32));
                v0 = v0 + 28;
            }
            if ((v30 >> 76 & 0x1f) >> 4 == 0) {
                MEM[v4] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v4 + 4] = v24;
                MEM[v4 + 36] = (v30 >> 76 & 0x1f) >> 3 & 0x1;
                MEM[v4 + 68] = 0 - v2;
                if ((v30 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    MEM[v4 + 100] = 0x1000276a4;
                } else {
                    MEM[v4 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM[v4 + 132] = 160;
                MEM[v4 + 164] = 1 + (v0 - v0);
                MEM8[v4 + 196] = v30 >> 72 & 0xFF;
                CALLDATACOPY(v4 + 197, v0, v0 - v0);
                v38 = v31.call(MEM[v198f_0x5:v198f_0x5 + 197 + v18dc_0xf - v18dc_0xf], MEM[0:0]).gas(msg.gas);
                v26 = v26 - 1;
            } else {
                MEM[v4] = v24;
                MEM[v4 + 32] = v31;
                MEM[v4 + 64] = v2;
                MEM8[v4 + 96] = (v30 >> 76 & 0x1f) >> 3 & 0x1 & 0xFF;
                v4 = v4 + 97;
                v39 = v31.getReserves().gas(msg.gas);
                if ((v30 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                    v2 = 1000 * (MEM[0] * v2) / (997 * (MEM[32] - v2)) + 1;
                } else {
                    v2 = 1000 * (MEM[32] * v2) / (997 * (MEM[0] - v2)) + 1;
                }
                if (v30 >> 72 & 0x3 == 1) {
                    MEM[v4] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
                    MEM[v4 + 4] = this;
                    MEM[v4 + 36] = v31;
                    MEM[v4 + 68] = v2;
                    v40 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v198f_0x5:v198f_0x5 + 100], MEM[0:0]).gas(msg.gas);
                } else if (v30 >> 72 & 0x3 == 2) {
                    MEM[v4] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v4 + 4] = v31;
                    MEM[v4 + 36] = v2;
                    v41 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.call(MEM[v198f_0x5:v198f_0x5 + 68], MEM[0:0]).gas(msg.gas);
                } else if (v30 >> 72 & 0x3 == 3) {
                    if ((v30 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                        MEM[0] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
                    } else {
                        MEM[0] = 0xd21220a700000000000000000000000000000000000000000000000000000000;
                    }
                    v42 = msg.sender.staticcall(MEM[0:4], MEM[v198f_0x5 + 68:v198f_0x5 + 68 + 32]).gas(msg.gas);
                    MEM[v4] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v4 + 4] = v31;
                    MEM[v4 + 36] = v2;
                    v43 = MEM[v4 + 68].call(MEM[v198f_0x5:v198f_0x5 + 68], MEM[0:0]).gas(msg.gas);
                }
            }
            v28 = v28 + 1;
        }
        while (v26) {
            MEM[v4] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (MEM[v4 - 32] & 0x1 == 1) {
                MEM[v4 + 4] = 0;
                MEM[v4 + 36] = MEM[v4 - 33];
            } else {
                MEM[v4 + 4] = MEM[v4 - 33];
                MEM[v4 + 36] = 0;
            }
            MEM[v4 + 68] = MEM[v4 - 97];
            MEM[v4 + 100] = 128;
            MEM[v4 + 132] = 0;
            v44 = MEM[v4 - 65].call(MEM[v198f_0x5:v198f_0x5 + 164], MEM[0:0]).gas(msg.gas);
            v26 = v26 - 1;
            v4 = v4 - 97;
        }
    }
    if (varg3 >> 248 & 0x3 == 1) {
        v45 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transferFrom(this, msg.sender, varg4).gas(msg.gas);
        exit;
    } else if (varg3 >> 248 & 0x3 == 2) {
        v46 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(msg.sender, varg4).gas(msg.gas);
        exit;
    } else if (varg3 >> 248 & 0x3 == 3) {
        v47 = v48 = 0;
        if (!varg0) {
            v47 = v49 = 1;
        }
        if (v47 != 1) {
        }
        v50 = msg.sender.token0(0xdfe168100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        v51 = MEM[0x44].transfer(msg.sender, varg4).gas(msg.gas);
        exit;
    } else {
        exit;
    }
}

function sendToOwner(address _assetAddress, uint256 _amount) public payable { 
    require(msg.sender == 0xffa0f7e5db34224ee41c29a3fa1e122c8431027e);
    if (_assetAddress >> 96 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
        if (_amount >> 152) {
            v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(_amount >> 152).gas(msg.gas);
        }
        v1 = 0xffa0f7e5db34224ee41c29a3fa1e122c8431027e.call().value(this.balance).gas(msg.gas);
        exit;
    } else {
        v2 = (_assetAddress >> 96).transfer(0xffa0f7e5db34224ee41c29a3fa1e122c8431027e, _amount >> 152).gas(msg.gas);
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length) {
        if (!((function_selector >> 224 == 0xfa461e33) | (function_selector >> 224 == 0x23a69e75))) {
            if (function_selector >> 224 == 0x10d1e85c) {
                uniswapV2Call(address,uint256,uint256,bytes);
            } else if (function_selector >> 224 == 0xbe61b268) {
                sendToOwner(address,uint256);
            } else {
                require((msg.sender == 0xffa0f7e5db34224ee41c29a3fa1e122c8431027e) | (msg.sender == 0x1a642f386a5179c81070f12bcf236a44b75c1919));
                require(!(block.number & 0x1f ^ msg.value & 0x1f));
                if (msg.value & 0x20 == 0) {
                    v0 = v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    v2 = v3 = 42;
                } else {
                    v0 = v4 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    v2 = v5 = 14;
                }
                v6 = v0.balanceOf(this).gas(msg.gas);
                v7 = v8 = 0;
                v9 = v10 = 0;
                while (v7 < msg.data.length) {
                    v11 = uint24(msg.data[v7] >> 72);
                    v7 = v7 + (v11 >> 9);
                    if (v11 >> 8 & 0x1 == 0) {
                        if (!(v11 >> 3 & 0x3)) {
                            MEM[196] = v9;
                            v12 = v13 = v7 + 23;
                        } else if (v11 >> 3 & 0x3 == 2) {
                            MEM[196] = uint32(msg.data[v7] >> 40) << uint8(msg.data[v7] >> 32);
                            v12 = v14 = v7 + 28;
                        } else {
                            MEM[196] = 0 - (uint32(msg.data[v7] >> 40) << uint8(msg.data[v7] >> 32));
                            v12 = v15 = v7 + 28;
                        }
                        MEM[128] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        if (v11 >> 5 & 0x3 == 0) {
                            MEM[132] = this;
                        } else {
                            MEM[132] = msg.data[v12] >> 96;
                        }
                        MEM[164] = v11 >> 7 & 0x1;
                        if (v11 >> 7 & 0x1 == 1) {
                            MEM[228] = 0x1000276a4;
                        } else {
                            MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        MEM8[324] = v11 & 0xFF;
                        CALLDATACOPY(325, v12, v7 - v12);
                        v16 = (msg.data[v7] >> 96).call(v17, v17, v17, v17, v17, 160, v7 - v12 + 1).gas(msg.gas);
                        if (v7 - v12) {
                            break;
                        } else if (v11 >> 7 & 0x1 == 1) {
                            v9 = v18 = 0 - MEM[32];
                        } else {
                            v9 = v19 = 0 - MEM[0];
                        }
                    } else {
                        if (v11 >> 3 & 0x3 == 0) {
                            v20 = (msg.data[v7] >> 96).getReserves().gas(msg.gas);
                            if (v11 >> 7 & 0x1 == 1) {
                                v9 = v9 * 997 * MEM[32] / (MEM[0] * 1000 + v9 * 997);
                            } else {
                                v9 = v9 * 997 * MEM[0] / (MEM[32] * 1000 + v9 * 997);
                            }
                            v21 = v22 = v7 + 23;
                        } else if (v11 >> 3 & 0x3 == 2) {
                            v9 = v23 = uint32(msg.data[v7] >> 40) << uint8(msg.data[v7] >> 32);
                            v24 = (msg.data[v7] >> 96).getReserves().gas(msg.gas);
                            if (v11 >> 7 & 0x1 == 1) {
                                v9 = v25 = v23 * 997 * MEM[32] / (MEM[0] * 1000 + v23 * 997);
                            } else {
                                v9 = v26 = v23 * 997 * MEM[0] / (MEM[32] * 1000 + v23 * 997);
                            }
                            v21 = v27 = v7 + 28;
                        } else {
                            v9 = v28 = uint32(msg.data[v7] >> 40) << uint8(msg.data[v7] >> 32);
                            v29 = (msg.data[v7] >> 96).getReserves().gas(msg.gas);
                            if (v11 >> 7 & 0x1 == 1) {
                                v9 = v30 = 1000 * (MEM[0] * v28) / (997 * (MEM[32] - v28)) + 1;
                            } else {
                                v9 = v31 = 1000 * (MEM[32] * v28) / (997 * (MEM[0] - v28)) + 1;
                            }
                            v21 = v32 = v7 + 28;
                        }
                        MEM[128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        if (v11 >> 7 & 0x1 == 1) {
                            MEM[132] = 0;
                            MEM[164] = v9;
                        } else {
                            MEM[132] = v9;
                            MEM[164] = 0;
                        }
                        if (v11 >> 5 & 0x3 == 0) {
                            MEM[196] = this;
                        } else {
                            MEM[196] = msg.data[v21] >> 96;
                        }
                        MEM[228] = 128;
                        v33 = v34 = 0;
                        if (v11 >> 2 & 0x1 == 0) {
                            v33 = v35 = v7 - v21;
                            if (!v35 == 0) {
                                MEM8[292] = v11 & 0xFF;
                                MEM[293] = v9;
                                CALLDATACOPY(325, v21, v35);
                                v33 = v36 = v35 + 33;
                                MEM[260] = v36;
                            } else {
                                MEM[260] = 0;
                            }
                        } else if (v11 & 0x3 == 1) {
                            v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transferFrom(this, msg.data[v7] >> 96, v9).gas(msg.gas);
                            MEM[260] = 0;
                        } else if (v11 & 0x3 == 2) {
                            v38 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(msg.data[v7] >> 96, v9).gas(msg.gas);
                            MEM[260] = 0;
                        } else {
                            if (v11 >> 7 & 0x1 == 1) {
                                MEM[0] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
                            } else {
                                MEM[0] = 0xd21220a700000000000000000000000000000000000000000000000000000000;
                            }
                            v39 = (msg.data[v7] >> 96).staticcall(MEM[0:4], MEM[0:32]).gas(msg.gas);
                            v40 = MEM[0x0].transfer(msg.data[v7] >> 96, v9).gas(msg.gas);
                            MEM[260] = 0;
                        }
                        v41 = (msg.data[v7] >> 96).call(MEM[128:292 + vf9a_0x1], MEM[0:0]).gas(msg.gas);
                    }
                }
                v42 = v0.balanceOf(this).gas(msg.gas);
                require(MEM[0] >= MEM[0] + (msg.value >> 6 << v2));
                exit;
            }
        } else {
            require((tx.origin == 0xffa0f7e5db34224ee41c29a3fa1e122c8431027e) | (tx.origin == 0x1a642f386a5179c81070f12bcf236a44b75c1919));
            v43 = v44 = 133;
            while (v43 < 132 + varg3) {
                v45 = v46 = 0;
                v47 = v48 = 128;
                while (v45 < msg.data[v43] >> 84 & 0x7) {
                    v49 = msg.data[v43];
                    if (v49 >> 76 & 0x1f & 0x7 == 0) {
                        v50 = v51 = this;
                        v43 = v43 + 23;
                        if (!v45) {
                            if (varg1 > 0) {
                            }
                            v45 = v52 = 0 - v53;
                        }
                    } else if (v49 >> 76 & 0x1f & 0x7 == 1) {
                        v50 = v54 = this;
                        v45 = v55 = uint40(v49 >> 32) >> 8 << uint8(uint40(v49 >> 32));
                        v43 = v43 + 28;
                    } else if (v49 >> 76 & 0x1f & 0x7 == 4) {
                        v43 = v43 + 23;
                        v50 = v56 = msg.data[v43] >> 96;
                        if (!v45) {
                            if (varg1 > 0) {
                            }
                            v45 = v57 = 0 - v58;
                        }
                    } else {
                        v43 = v43 + 28;
                        v50 = v59 = msg.data[v43] >> 96;
                        v45 = v60 = uint40(v49 >> 32) >> 8 << uint8(uint40(v49 >> 32));
                    }
                    if ((v49 >> 76 & 0x1f) >> 4 == 0) {
                        MEM[v48] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[132] = v50;
                        MEM[164] = (v49 >> 76 & 0x1f) >> 3 & 0x1;
                        MEM[196] = v45;
                        if ((v49 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            MEM[228] = 0x1000276a4;
                        } else {
                            MEM[228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        MEM8[324] = v49 >> 72 & 0xFF;
                        v61 = (v49 >> 96).call(v17, v17, v17, v17, v17, 160, 1).gas(msg.gas);
                        if ((v49 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            v45 = v62 = 0 - MEM[32];
                        } else {
                            v45 = v63 = 0 - MEM[0];
                        }
                    } else {
                        if (v49 >> 72 & 0x3 == 1) {
                            v64 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transferFrom(this, v49 >> 96, v45).gas(msg.gas);
                        } else if (v49 >> 72 & 0x3 == 2) {
                            v65 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(v49 >> 96, v45).gas(msg.gas);
                        } else if (v49 >> 72 & 0x3 == 3) {
                            if ((v49 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                                MEM[0] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
                            } else {
                                MEM[0] = 0xd21220a700000000000000000000000000000000000000000000000000000000;
                            }
                            v66 = (v49 >> 96).staticcall(MEM[0:4], MEM[0:32]).gas(msg.gas);
                            v67 = MEM[0x0].transfer(v49 >> 96, v45).gas(msg.gas);
                        }
                        v68 = (v49 >> 96).getReserves().gas(msg.gas);
                        if ((v49 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            v45 = v45 * 997 * MEM[32] / (MEM[0] * 1000 + v45 * 997);
                        } else {
                            v45 = v45 * 997 * MEM[0] / (MEM[32] * 1000 + v45 * 997);
                        }
                        MEM[v48] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                        if ((v49 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            MEM[132] = 0;
                            MEM[164] = v45;
                        } else {
                            MEM[132] = v45;
                            MEM[164] = 0;
                        }
                        v69 = (v49 >> 96).call(v17, v17, v17, v50, 128, 0).gas(msg.gas);
                    }
                    v45 = v45 + 1;
                }
                v70 = v71 = msg.sender;
                v72 = v73 = 0x7 & msg.data[v43] >> 81;
                v74 = v75 = 0;
                while (v74 < v72) {
                    v76 = msg.data[v43];
                    v70 = v77 = v76 >> 96;
                    v43 = v78 = 0;
                    if (!((v76 >> 76 & 0x1f) >> 4)) {
                        v43 = v43 + (v76 >> 87 & 0x1ff);
                    }
                    if (v76 >> 76 & 0x1f & 0x7 == 1) {
                        v70 = v79 = this;
                        v45 = v80 = uint40(v76 >> 32) >> 8 << uint8(uint40(v76 >> 32));
                        v43 = v43 + 28;
                    } else if (v76 >> 76 & 0x1f & 0x7 == 3) {
                        v70 = v81 = msg.sender;
                        v45 = v82 = uint40(v76 >> 32) >> 8 << uint8(uint40(v76 >> 32));
                        v43 = v43 + 28;
                    } else if (v76 >> 76 & 0x1f & 0x7 == 4) {
                        v43 = v43 + 23;
                        if (!v74) {
                            if (varg1 < 0) {
                            }
                        }
                    } else {
                        v45 = v83 = uint40(v76 >> 32) >> 8 << uint8(uint40(v76 >> 32));
                        v43 = v43 + 28;
                    }
                    if ((v76 >> 76 & 0x1f) >> 4 == 0) {
                        MEM[v47] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[v47 + 4] = v70;
                        MEM[v47 + 36] = (v76 >> 76 & 0x1f) >> 3 & 0x1;
                        MEM[v47 + 68] = 0 - v45;
                        if ((v76 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            MEM[v47 + 100] = 0x1000276a4;
                        } else {
                            MEM[v47 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        }
                        MEM[v47 + 132] = 160;
                        MEM[v47 + 164] = 1 + (v43 - v43);
                        MEM8[v47 + 196] = v76 >> 72 & 0xFF;
                        CALLDATACOPY(v47 + 197, v43, v43 - v43);
                        v84 = v77.call(MEM[v897_0x5:v897_0x5 + 197 + v7e4_0xe - v7e4_0xe], MEM[0:0]).gas(msg.gas);
                        v72 = v72 - 1;
                    } else {
                        MEM[v47] = v70;
                        MEM[v47 + 32] = v77;
                        MEM[v47 + 64] = v45;
                        MEM8[v47 + 96] = (v76 >> 76 & 0x1f) >> 3 & 0x1 & 0xFF;
                        v47 = v47 + 97;
                        v85 = v77.getReserves().gas(msg.gas);
                        if ((v76 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                            v45 = 1000 * (MEM[0] * v45) / (997 * (MEM[32] - v45)) + 1;
                        } else {
                            v45 = 1000 * (MEM[32] * v45) / (997 * (MEM[0] - v45)) + 1;
                        }
                        if (v76 >> 72 & 0x3 == 1) {
                            MEM[v47] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
                            MEM[v47 + 4] = this;
                            MEM[v47 + 36] = v77;
                            MEM[v47 + 68] = v45;
                            v86 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(MEM[v897_0x5:v897_0x5 + 100], MEM[0:0]).gas(msg.gas);
                        } else if (v76 >> 72 & 0x3 == 2) {
                            MEM[v47] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v47 + 4] = v77;
                            MEM[v47 + 36] = v45;
                            v87 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.call(MEM[v897_0x5:v897_0x5 + 68], MEM[0:0]).gas(msg.gas);
                        } else if (v76 >> 72 & 0x3 == 3) {
                            if ((v76 >> 76 & 0x1f) >> 3 & 0x1 == 1) {
                                MEM[0] = 0xdfe168100000000000000000000000000000000000000000000000000000000;
                            } else {
                                MEM[0] = 0xd21220a700000000000000000000000000000000000000000000000000000000;
                            }
                            v88 = msg.sender.staticcall(MEM[0:4], MEM[v897_0x5 + 68:v897_0x5 + 68 + 32]).gas(msg.gas);
                            MEM[v47] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                            MEM[v47 + 4] = v77;
                            MEM[v47 + 36] = v45;
                            v89 = MEM[v47 + 68].call(MEM[v897_0x5:v897_0x5 + 68], MEM[0:0]).gas(msg.gas);
                        }
                    }
                    v74 = v74 + 1;
                }
                while (v72) {
                    MEM[v47] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    if (MEM[v47 - 32] & 0x1 == 1) {
                        MEM[v47 + 4] = 0;
                        MEM[v47 + 36] = MEM[v47 - 33];
                    } else {
                        MEM[v47 + 4] = MEM[v47 - 33];
                        MEM[v47 + 36] = 0;
                    }
                    MEM[v47 + 68] = MEM[v47 - 97];
                    MEM[v47 + 100] = 128;
                    MEM[v47 + 132] = 0;
                    v90 = MEM[v47 - 65].call(MEM[v897_0x5:v897_0x5 + 164], MEM[0:0]).gas(msg.gas);
                    v72 = v72 - 1;
                    v47 = v47 - 97;
                }
            }
            if (varg4 >> 248 & 0x3 == 1) {
                if (varg1 < 0) {
                }
                v91 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transferFrom(this, msg.sender, v92).gas(msg.gas);
                exit;
            } else if (varg4 >> 248 & 0x3 == 2) {
                if (varg1 < 0) {
                }
                v93 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48.transfer(msg.sender, v94).gas(msg.gas);
                exit;
            } else if (varg4 >> 248 & 0x3 == 3) {
                v95 = v96 = 0;
                if (varg2 < v96) {
                    v95 = v97 = 1;
                }
                if (v95 != 1) {
                }
                v98 = msg.sender.token0(0xdfe168100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                v99 = MEM[0x44].transfer(msg.sender, v100).gas(msg.gas);
                exit;
            } else {
                exit;
            }
        }
    } else {
        exit;
    }
}
