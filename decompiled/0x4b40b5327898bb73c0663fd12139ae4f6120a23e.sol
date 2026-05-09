// Decompiled by library.dedaub.com
// 2026.04.16 04:02 UTC
// Compiled using the solidity compiler version 0.8.30





function 0x1926() private { 
    v0 = v1 = msg.data.length - 1;
    if (msg.data[v1]) {
        v2 = v3 = byte(msg.data[v1], 0x0);
        while (v2) {
            v0 = v0 - 40;
            v4 = (msg.data[v0] >> 96).approve(msg.data[v0 - 20] >> 96, uint256.max).gas(msg.gas);
            require(v4, Error(32, 2, 0x4143000000000000000000000000000000000000000000000000000000000000));
            v2 += uint256.max;
        }
        return ;
    } else {
        return ;
    }
}

function 0x1aba(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    varg0 = v0 = byte(msg.data[varg2], 0x0);
    if (!v0) {
        return ;
    } else {
        v1 = 1 + varg2;
        while (1) {
            varg0 = v2 = byte(msg.data[v1], 0x0);
            varg0 = v1 + 1;
            if (bool(v2) >= 13) {
                if (bool(v2) - 13) {
                    if (14 - bool(v2)) {
                        v1 = v1 + 3;
                        if (v2 & 0x40) {
                            if (0x80 & v2) {
                                v3 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v3, Error(32, 6, 'ST:EC3'));
                            }
                            v4 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[varg0] >> 240) + v1)] >> 96).gas(msg.gas);
                            require(v4, Error(32, 6, 'SY:EC3'));
                        }
                        v5 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[varg0] >> 240) + v1)] >> 96, varg0, varg0).gas(msg.gas);
                        require(v5, Error(32, 5, 'SN:EC'));
                        v6 = v7 = uint256.max;
                        MEM[96] = 0;
                    } else {
                        if (0x40 & v2) {
                            v8 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v8, Error(32, 5, 'ST:EC'));
                        }
                        v9 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg0 + (msg.data[varg0] >> 240)] >> 96, varg0, varg0).gas(msg.gas);
                        require(v9, Error(32, 5, 'TK:EC'));
                        MEM[96] = 0;
                        v1 = 2 + varg0;
                        v6 = v10 = uint256.max;
                    }
                } else {
                    v11 = (msg.data[varg0 + (msg.data[varg0] >> 240)] >> 96).transfer(varg0, varg0).gas(msg.gas);
                    if (!v11) {
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v12, MEM[36] + 7, 'TR:EC: ');
                    } else {
                        v1 = 2 + varg0;
                        v6 = uint256.max;
                    }
                }
                varg0 = varg0 + v6;
                if (!varg0) {
                    return ;
                }
            } else {
                if (v2 & 0xc0) {
                    if (64 - (v2 & 0xc0)) {
                        varg0 = varg0 + 32;
                        varg0 = v13 = msg.data[varg0];
                    } else {
                        varg0 = varg0 + 3;
                        varg0 = varg0 * (msg.data[varg0] >> 232) >> 24;
                    }
                }
                if (v2 & 0x20) {
                    varg0 = v14 = this;
                }
                varg0 = varg0 + 2;
                if (0 == !bool(v2)) {
                    if (bool(v2) - 1) {
                        if (bool(v2) - 2) {
                            if (bool(v2) - 3) {
                                if (bool(v2) - 4) {
                                    if (6 - bool(v2)) {
                                        v15 = v16 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + varg0, msg.data[varg0 + 20] >> 240);
                                        v17 = (msg.data[varg0] >> 96).delegatecall(this, varg0, varg0).gas(msg.gas);
                                        if (!v17) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v12, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        varg0 = v18 = 7053;
                                        varg0 = 0x3068(varg0, varg0, varg0);
                                        varg0 = v19 = varg0 + 1;
                                        if ((byte(msg.data[varg0], 0x0)) & 0x80) {
                                            if ((byte(msg.data[varg0], 0x0)) & 0x40) {
                                                v20 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v20, Error(32, 5, 'ST:4S'));
                                            }
                                            v21 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg0 + (msg.data[v19] >> 240) + 1] >> 96, varg0, varg0).gas(msg.gas);
                                            require(v21, Error(32, 5, 'TK:4S'));
                                            MEM[96] = 0;
                                            varg0 = v22 = 3 + varg0;
                                        }
                                        if (0x3f & (byte(msg.data[varg0], 0x0))) {
                                            if (msg.data[varg0] >> 240 & 0x1) {
                                                varg0 = v23 = msg.data[2 + varg0];
                                                varg0 = v24 = varg0 + 34;
                                            } else {
                                                varg0 = v25 = 2 + varg0 + 3;
                                                varg0 = v26 = varg0 * (msg.data[2 + varg0] >> 232) >> 24;
                                            }
                                        }
                                    }
                                } else {
                                    v27 = varg0 + 2;
                                    if (msg.data[varg0] >> 240 & 0x3) {
                                        v28 = v29 = 4;
                                        v30 = v31 = 7;
                                    } else {
                                        varg0 = v32 = msg.data[v27];
                                        v27 = v33 = varg0 + 34;
                                        v30 = 7;
                                        v28 = 4;
                                    }
                                    MEM[MEM[64]] = msg.data[v27];
                                    v34 = MEM[64] + v28;
                                    v35 = v27 + v30;
                                    v36 = msg.data[4 + v27] >> 232;
                                    while (v36) {
                                        if (!(v36 & 0x3)) {
                                            MEM[v34] = varg0;
                                            v34 += 32;
                                        } else if (1 == v36 & 0x3) {
                                            MEM[v34] = varg0;
                                            v34 += 32;
                                        } else if (2 == v36 & 0x3) {
                                            MEM[v34] = byte(msg.data[v35], 0x0);
                                            v34 += 32;
                                            v35 = v35 + 1;
                                        } else {
                                            CALLDATACOPY(v34, v35 + 1, byte(msg.data[v35], 0x0));
                                            v34 = v34 + (byte(msg.data[v35], 0x0));
                                            v35 = v35 + (byte(msg.data[v35], 0x0)) + 1;
                                        }
                                        v36 = v36 >> 3;
                                    }
                                    if (msg.data[varg0] >> 240 & 0x100) {
                                        if (msg.data[varg0] >> 240 & 0x200) {
                                            v37 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v37, Error(32, 5, 'ST:CR'));
                                        }
                                        v38 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v35 + (msg.data[v35] >> 240)] >> 96, this, varg0).gas(msg.gas);
                                        require(v38, Error(32, 5, 'TK:CR'));
                                        MEM[96] = 0;
                                        v35 = v39 = 2 + v35;
                                    }
                                    v40 = 0;
                                    if (msg.data[v35] >> 240) {
                                        v40 = v41 = msg.data[2 + (v35 + (msg.data[v35] >> 240))] >> 96;
                                    }
                                    0x1aba(this, varg0, v35 + 22);
                                    if (msg.data[varg0] >> 240 & 0x400) {
                                        if (msg.data[varg0] >> 240 & 0x800) {
                                            v42 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v42, Error(32, 5, 'ST:CR'));
                                        }
                                        v43 = 0x4444c5dc75cb358380d2e3de08a90.sync(v40).gas(msg.gas);
                                        require(v43, Error(32, 5, 'SY:CR'));
                                    }
                                    varg0 = v44 = 0;
                                    if (msg.data[varg0] >> 240 & 0x8) {
                                        if (msg.data[varg0] >> 240 & 0x10) {
                                            v45 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
                                            require(v45, Error(32, 5, 'WI:CR'));
                                        }
                                    }
                                    v46 = (msg.data[v35 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + v1aba0x322f - MEM[64]], MEM[0:0]).value(varg0).gas(msg.gas);
                                    if (!v46) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v12, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if (msg.data[varg0] >> 240 & 0x20) {
                                            v40 = v47 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            v48 = v47.deposit().value(varg0).gas(msg.gas);
                                            require(v48, Error(32, 5, 'DE:CR'));
                                        }
                                        if (0x40 & msg.data[varg0] >> 240) {
                                            if (!v40) {
                                                v49 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg0).gas(msg.gas);
                                                require(v49, Error(32, 5, 'SE:CF'));
                                            } else {
                                                v50 = v40.transfer(varg0, varg0).gas(msg.gas);
                                                if (!v50) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v12, MEM[36] + 7, 'TR:CF: ');
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                varg0 = v51 = 7053;
                                0x37d0(varg0, varg0, varg0);
                                v52 = varg0 + 1;
                                v53 = byte(msg.data[varg0], 0x0);
                                if (v53 & 0x20) {
                                    v52 = v54 = varg0 + 3;
                                    v55 = msg.data[1 + ((msg.data[v52] >> 240) + varg0)] >> 96;
                                    if (v53 & 0x40) {
                                        if (v53 & 0x80) {
                                            v56 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v56, Error(32, 6, 'ST:B3R'));
                                        }
                                        v57 = 0x4444c5dc75cb358380d2e3de08a90.sync(v55).gas(msg.gas);
                                        require(v57, Error(32, 6, 'SY:B3R'));
                                    }
                                    v58 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v55, varg0, varg0).gas(msg.gas);
                                    require(v58, Error(32, 5, 'SN:R3'));
                                    MEM[96] = 0;
                                }
                                v59 = bool(v53);
                                while (v59) {
                                    if ((byte(msg.data[v52], 0x0)) - 2) {
                                        v60 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(1, byte(msg.data[v52], 0x0), msg.data[v52 + (msg.data[v52 + 1] >> 240) + 1] >> 96, varg0, uint256.max).gas(msg.gas);
                                        if (!v60) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:R'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v12, MEM[36] + 7, 'B3B:R: ');
                                        } else {
                                            v61 = v62 = uint256.max;
                                            varg0 = v63 = MEM[0];
                                            v52 = v52 + 3;
                                        }
                                    } else {
                                        v64 = new uint256[](1);
                                        MEM[v64.data] = msg.data[v52 + 1] >> 96;
                                        MEM[MEM[64] + 100] = msg.data[v52 + 1 + (msg.data[v52 + 1 + 20] >> 240)] >> 96;
                                        v65 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v64, v12, v12, v12, msg.data[v52 + 1 + (msg.data[v52 + 1 + 22] >> 240)] >> 96, varg0, uint256.max, 224, 0).gas(msg.gas);
                                        if (!v65) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:R'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v12, MEM[36] + 7, 'B3S:R: ');
                                        } else {
                                            v61 = uint256.max;
                                            varg0 = v66 = MEM[0];
                                            v52 = v52 + 1 + 24;
                                        }
                                    }
                                    v59 = v59 + v61;
                                }
                            }
                        } else {
                            varg0 = v67 = 7053;
                            0x3c89(varg0, varg0);
                            v68 = varg0 + 2;
                            MEM[MEM[64] + bool(msg.data[varg0] >> 240) * 65] = varg0;
                            MEM[64] = MEM[64] + bool(msg.data[varg0] >> 240) * 65 + 32;
                            if (bool(msg.data[varg0] >> 240)) {
                                v69 = MEM[64] + (bool(msg.data[varg0] >> 240) - 1) * 65;
                                MEM[v69] = msg.data[v68] >> 96;
                                MEM8[v69 + 32] = (byte(msg.data[v68 + 20], 0x0)) & 0x1 & 0xFF;
                                MEM[v69 + 33] = varg0;
                            }
                        }
                    } else {
                        varg0 = v70 = 7053;
                        0x3faa(varg0, varg0, varg0);
                    }
                    v15 = v71 = uint256.max;
                    v72 = varg0 + 1;
                    if ((byte(msg.data[varg0], 0x0)) & 0x10) {
                        if (0x40 & (byte(msg.data[varg0], 0x0))) {
                            v73 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v73, Error(32, 5, 'ST:V4'));
                        }
                        v74 = msg.data[varg0 + (msg.data[v72] >> 240) + 1] >> 96;
                        v75 = 0x4444c5dc75cb358380d2e3de08a90.take(v74, varg0, varg0).gas(msg.gas);
                        require(v75, Error(32, 5, 'TK:V4'));
                        MEM[96] = 0;
                        v72 = v76 = varg0 + 3;
                    }
                    v77 = new uint256[](0);
                    if (bool(byte(msg.data[varg0], 0x0))) {
                        if (0 != 0x2 & (byte(msg.data[v72], 0x0))) {
                        }
                        if (0x1 & (byte(msg.data[v72], 0x0))) {
                        }
                        v78 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v72 + (msg.data[1 + v72] >> 240)] >> 96, msg.data[v72 + (msg.data[3 + v72] >> 240)] >> 96, msg.data[v72 + 5] >> 232, msg.data[v72 + 8] >> 232, 0, msg.data[v72] >> 96, 0x1 & (byte(msg.data[v72], 0x0)), varg0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v77).gas(msg.gas);
                        if (!v78) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v12, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                        } else if (0x1 & (byte(msg.data[v72], 0x0))) {
                        }
                    }
                } else {
                    v15 = uint256.max;
                    v79 = v80 = varg0 + 1;
                    if ((byte(msg.data[varg0], 0x0)) & 0x2) {
                        if ((byte(msg.data[varg0], 0x0)) & 0x8) {
                            v81 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v81, Error(32, 5, 'ST:V3'));
                        }
                        v82 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[varg0 + (msg.data[v80] >> 240) + 1] >> 96).gas(msg.gas);
                        require(v82, Error(32, 5, 'SY:V3'));
                        v79 = v83 = 3 + varg0;
                    }
                    if (0 == (byte(msg.data[varg0], 0x0)) & 0x80) {
                        MEM[MEM[64] + 68] = 0 - varg0;
                        if (0 != (byte(msg.data[varg0], 0x0)) & 0x1) {
                            MEM[MEM[64] + 100] = 0x1000276a4;
                        }
                    } else {
                        MEM[MEM[64] + 68] = varg0;
                        if (0 != (byte(msg.data[varg0], 0x0)) & 0x1) {
                            v84 = new uint256[]((msg.data[v79 + 20] >> 240) + 1);
                            MEM8[v85.data] = (byte(msg.data[varg0], 0x0)) & 0xFF;
                            CALLDATACOPY(MEM[64] + 197, 22 + v79, msg.data[v79 + 20] >> 240);
                            v86 = (msg.data[v79] >> 96).swap(varg0, (byte(msg.data[varg0], 0x0)) & 0x1, v12, 0x1000276a4, v84).gas(msg.gas);
                            if (v86) {
                            }
                        }
                    }
                    v85 = new uint256[]((msg.data[v79 + 20] >> 240) + 1);
                    MEM8[v85.data] = (byte(msg.data[varg0], 0x0)) & 0xFF;
                    CALLDATACOPY(MEM[64] + 197, 22 + v79, msg.data[v79 + 20] >> 240);
                    v87 = (msg.data[v79] >> 96).swap(varg0, (byte(msg.data[varg0], 0x0)) & 0x1, v12, v12, v85).gas(msg.gas);
                    if (v87) {
                    }
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v12, MEM[36] + 7, 'V3:RE: ');
                    MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    // Unknown jump to Block 0x24bd0x25c8B0x1b0e0x1aba. Refer to 3-address code (TAC);
                }
                varg0 = varg0 + v15;
                if (!varg0) {
                    return ;
                } else {
                    v1 = 2 + ((msg.data[varg0] >> 240) + varg0);
                    if (!(0x10 & varg0)) {
                        v88 = varg0 > varg0;
                        require(!bool(v88), Error(20304));
                        varg0 = varg0 - varg0;
                    }
                }
            }
        }
    }
}

function 0xfc000000(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    0x1aba(varg0, varg1, 68);
}

function 0x2cae(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = new uint256[](msg.data.length - varg2 + 68);
    MEM[v0.data] = 0x6200000000000000000000000000000000000000000000000000000000000000;
    CALLDATACOPY(MEM[64] + 136, varg2, msg.data.length - varg2);
    v1 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock(v0, v2, varg0, varg1).gas(msg.gas);
    if (!v1) {
        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3:MU'));
        RETURNDATACOPY(0, 0, 68);
        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
        revert(v2, MEM[36] + 7, 'B3:MU: ');
    } else {
        return ;
    }
}

function 0x2ee6(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (0 == !varg3) {
        if (2 - varg3) {
            v0 = 9975;
            v1 = 0;
            v2 = 10000;
        } else {
            v3 = varg0.executeVirtualOrders(block.timestamp).gas(msg.gas);
            if (!v3) {
                require(RETURNDATASIZE() > 68);
                revert(0, RETURNDATASIZE());
            } else {
                v4 = varg0.fee().gas(msg.gas);
                if (!v4) {
                    require(RETURNDATASIZE() > 68);
                    revert(0, RETURNDATASIZE());
                } else {
                    v0 = v5 = MEM[0];
                    v1 = v6 = 0;
                    v2 = v7 = 10000;
                }
            }
        }
        v8 = varg0.getReserves().gas(msg.gas);
        if (v8) {
            v9 = 1;
            v10 = v11 = 11880;
            if (varg1) {
                v12 = MEM[0];
                v13 = MEM[32];
            }
        }
    } else {
        v0 = v14 = 997;
        v2 = v15 = 1000;
        v16 = varg0.getReserves().gas(msg.gas);
        if (v16) {
            v9 = v17 = 1;
            v10 = v18 = 11880;
            if (varg1) {
                v19 = v20 = (MEM[32] - varg2) * v14;
                v21 = v22 = MEM[0] * varg2 * v15;
            }
        }
    }
    require(RETURNDATASIZE() > 68);
    revert(0, RETURNDATASIZE());
    v12 = v23 = MEM[32];
    v13 = v24 = MEM[0];
    v19 = (v13 - varg2) * v0;
    v21 = v12 * varg2 * v2;
    require(v19, Panic(18)); // division by zero
    return v21 / v19 + v9;
}

function 0x3068(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg2 + 1;
    if ((byte(msg.data[varg2], 0x0)) & 0x80) {
        if ((byte(msg.data[varg2], 0x0)) & 0x40) {
            v2 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v2, Error(32, 5, 'ST:4S'));
        }
        v3 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg2 + (msg.data[v1] >> 240) + 1] >> 96, varg0, varg1).gas(msg.gas);
        require(v3, Error(32, 5, 'TK:4S'));
        MEM[96] = 0;
        v0 = v4 = 3 + varg2;
    }
    v5 = 0x3f & (byte(msg.data[varg2], 0x0));
    while (1) {
        if (!v5) {
            v6 = v7 = 10509;
            break;
        } else if (msg.data[v0] >> 240 & 0x1) {
            v8, v9, v0, varg0, varg1 = 0x30b5(varg1, msg.data[2 + v0], v0 + 34, 12477, v0 + 34, msg.data[v0] >> 240, v0, varg0);
            v0 = (v9 >> 1) + v8;
            v5 = v5 - 1;
        } else {
            v0 = v10 = 2 + v0 + 3;
            v6 = v11 = 12477;
            varg1 = v12 = varg1 * (msg.data[2 + v0] >> 232) >> 24;
            break;
        }
    }
    v13 = v0 + 1;
    v14 = bool(byte(msg.data[v0], 0x0));
    if ((byte(msg.data[v0], 0x0)) & 0x10) {
        if (0x40 & (byte(msg.data[v0], 0x0))) {
            v15 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v15, Error(32, 5, 'ST:V4'));
        }
        v16 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v13] >> 240) + 1] >> 96, varg0, varg1).gas(msg.gas);
        require(v16, Error(32, 5, 'TK:V4'));
        MEM[96] = 0;
        v13 = v17 = v0 + 3;
    }
    v18 = new uint256[](0);
    while (v14) {
        if (0 == 0x2 & (byte(msg.data[v13], 0x0))) {
            MEM[MEM[64] + 132] = 0;
            v13 += 11;
        } else {
            MEM[MEM[64] + 132] = msg.data[v13] >> 96;
            v13 += 31;
        }
        if (!(0x1 & (byte(msg.data[v13], 0x0)))) {
            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            MEM[MEM[64] + 228] = 0x1000276a4;
        }
        v19 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v13 + (msg.data[1 + v13] >> 240)] >> 96, msg.data[v13 + (msg.data[3 + v13] >> 240)] >> 96, msg.data[v13 + 5] >> 232, msg.data[v13 + 8] >> 232, v20, 0x1 & (byte(msg.data[v13], 0x0)), varg1, v20, v18).gas(msg.gas);
        if (!v19) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v20, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
        } else if (!(0x1 & (byte(msg.data[v13], 0x0)))) {
            varg1 = v21 = 0 - int128(MEM[0]);
            v14 = 0x3f52(v14);
        } else {
            varg1 = v22 = 0 - (MEM[0] >> 128);
            v14 = 0x3f52(v14);
        }
    }
    0x1aba(0x4444c5dc75cb358380d2e3de08a90, varg1, v13);
    return v0;
}

function 0x30b5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = varg2 + 1;
    v1 = bool(byte(msg.data[varg2], 0x0));
    if ((byte(msg.data[varg2], 0x0)) & 0x10) {
        if (0x40 & (byte(msg.data[varg2], 0x0))) {
            v2 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v2, Error(32, 5, 'ST:V4'));
        }
        v3 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg2 + (msg.data[v0] >> 240) + 1] >> 96, varg7, v4).gas(msg.gas);
        require(v3, Error(32, 5, 'TK:V4'));
        MEM[96] = 0;
        v0 = v5 = varg2 + 3;
    }
    v6 = new uint256[](0);
    while (v1) {
        if (0 == 0x2 & (byte(msg.data[v0], 0x0))) {
            MEM[MEM[64] + 132] = 0;
            v0 += 11;
        } else {
            MEM[MEM[64] + 132] = msg.data[v0] >> 96;
            v0 += 31;
        }
        if (!(0x1 & (byte(msg.data[v0], 0x0)))) {
            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            MEM[MEM[64] + 228] = 0x1000276a4;
        }
        v7 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v0 + (msg.data[1 + v0] >> 240)] >> 96, msg.data[v0 + (msg.data[3 + v0] >> 240)] >> 96, msg.data[v0 + 5] >> 232, msg.data[v0 + 8] >> 232, v8, 0x1 & (byte(msg.data[v0], 0x0)), v4, v8, v6).gas(msg.gas);
        if (!v7) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v8, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
        } else if (!(0x1 & (byte(msg.data[v0], 0x0)))) {
            v4 = v9 = 0 - int128(MEM[0]);
            v1 = 0x3f52(v1);
        } else {
            v4 = v10 = 0 - (MEM[0] >> 128);
            v1 = 0x3f52(v1);
        }
    }
    0x1aba(0x4444c5dc75cb358380d2e3de08a90, v4, v0);
    return varg4, varg5, varg6, varg7, varg0 - varg1;
}

function 0x37d0(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg2 + 1;
    if ((byte(msg.data[varg2], 0x0)) & 0x20) {
        v0 = v2 = varg2 + 3;
        v3 = msg.data[1 + ((msg.data[v1] >> 240) + varg2)] >> 96;
        if ((byte(msg.data[varg2], 0x0)) & 0x40) {
            if ((byte(msg.data[varg2], 0x0)) & 0x80) {
                v4 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v4, Error(32, 6, 'ST:B3R'));
            }
            v5 = 0x4444c5dc75cb358380d2e3de08a90.sync(v3).gas(msg.gas);
            require(v5, Error(32, 6, 'SY:B3R'));
        }
        v6 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v3, varg0, varg1).gas(msg.gas);
        require(v6, Error(32, 5, 'SN:R3'));
        MEM[96] = 0;
    }
    v7 = bool(byte(msg.data[varg2], 0x0));
    while (v7) {
        if ((byte(msg.data[v0], 0x0)) - 2) {
            v8 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(1, byte(msg.data[v0], 0x0), msg.data[v0 + (msg.data[v0 + 1] >> 240) + 1] >> 96, varg1, uint256.max).gas(msg.gas);
            if (!v8) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:R'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v9, MEM[36] + 7, 'B3B:R: ');
            } else {
                v10 = v11 = uint256.max;
                varg1 = v12 = MEM[0];
                v0 = v0 + 3;
            }
        } else {
            v13 = new uint256[](1);
            MEM[v13.data] = msg.data[v0 + 1] >> 96;
            MEM[MEM[64] + 100] = msg.data[v0 + 1 + (msg.data[v0 + 1 + 20] >> 240)] >> 96;
            v14 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v13, v9, v9, v9, msg.data[v0 + 1 + (msg.data[v0 + 1 + 22] >> 240)] >> 96, varg1, uint256.max, 224, 0).gas(msg.gas);
            if (!v14) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:R'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v9, MEM[36] + 7, 'B3S:R: ');
            } else {
                v10 = uint256.max;
                varg1 = v15 = MEM[0];
                v0 = v0 + 1 + 24;
            }
        }
        v7 = v7 + v10;
    }
    0x1aba(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1, v0);
    return ;
}

function 0x3c89(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = msg.data[v2] >> 240;
    v3 = v4 = v2 + 2;
    varg1 = v5 = bool(v1);
    v6 = v7 = MEM[64];
    MEM[v7 + v5 * 65] = varg0;
    while (varg1) {
        v3 = v8 = 16202;
        v6 = uint256.max;
        varg1 = v9 = msg.data[v3] >> 96;
        v6 = v10 = (byte(msg.data[v3 + 20], 0x0)) & 0x1;
        v3 = v3 + 21;
        MEM[v6 + (varg1 + v6) * 65] = v9;
        MEM8[v6 + (varg1 + v6) * 65 + 32] = v10 & 0xFF;
        MEM[v6 + (varg1 + v6) * 65 + 33] = varg1;
        v0 = (byte(msg.data[v3 + 20], 0x0)) & 0x6;
        varg1 = 0x2ee6(v9, v10, varg1, v0);
        varg1 = varg1 + v6;
    }
    0x1aba(MEM[v6], varg1, v3 + 2);
    if (msg.data[v3] >> 240) {
        if (0x40 & v0) {
            v11 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v11, Error(32, 5, 'ST:V2'));
        }
        v12 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v3 + (msg.data[v3] >> 240) + 2] >> 96).gas(msg.gas);
        require(v12, Error(32, 5, 'SY:V2'));
    }
    v13 = v14 = 0;
    while (v13 < varg1) {
        if (0 == (byte(MEM[v6 + v13 * 65 + 32], 0x0))) {
            MEM[4 + (v7 + v5 * 65 + 32)] = MEM[v6 + v13 * 65 + 33];
            MEM[36 + (v7 + v5 * 65 + 32)] = 0;
            MEM[100 + (v7 + v5 * 65 + 32)] = 32;
        } else {
            MEM[4 + (v7 + v5 * 65 + 32)] = 0;
            MEM[36 + (v7 + v5 * 65 + 32)] = MEM[v6 + v13 * 65 + 33];
            MEM[100 + (v7 + v5 * 65 + 32)] = 0;
        }
        v15 = MEM[v6 + v13 * 65].swap(v16, v16, MEM[v6 + v13 * 65 + 65]).gas(msg.gas);
        if (!v15) {
            require(RETURNDATASIZE() >= 68, Error(32, 5, 'V2:RV'));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
            revert(v16, MEM[36] + 7, 'V2:RV: ');
        } else {
            v13 += 1;
        }
    }
    return ;
    if (0 == !v0) {
        if (2 - v0) {
            v17 = 0;
        } else {
            v18 = varg1.executeVirtualOrders(block.timestamp).gas(msg.gas);
            if (!v18) {
                require(RETURNDATASIZE() > 68);
                revert(0, RETURNDATASIZE());
            } else {
                v19 = varg1.fee().gas(msg.gas);
                if (!v19) {
                    require(RETURNDATASIZE() > 68);
                    revert(0, RETURNDATASIZE());
                } else {
                    v17 = v20 = 0;
                }
            }
        }
        v21 = varg1.getReserves().gas(msg.gas);
        if (v21) {
        }
    } else {
        v22 = varg1.getReserves().gas(msg.gas);
        if (v22) {
        }
    }
    require(RETURNDATASIZE() > 68);
    revert(0, RETURNDATASIZE());
}

function 0x3f52(uint256 varg0) private { 
    require(varg0, Panic(17)); // arithmetic overflow or underflow
    return uint256.max + varg0;
}

function 0x3faa(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg2 + 1;
    v2 = v3 = bool(byte(msg.data[varg2], 0x0));
    if ((byte(msg.data[varg2], 0x0)) & 0x10) {
        if (0x40 & (byte(msg.data[varg2], 0x0))) {
            v4 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v4, Error(32, 5, 'ST:V4'));
        }
        v5 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[varg2 + (msg.data[v1] >> 240) + 1] >> 96, varg0, varg1).gas(msg.gas);
        require(v5, Error(32, 5, 'TK:V4'));
        MEM[96] = 0;
        v0 = v6 = varg2 + 3;
    }
    v7 = new uint256[](0);
    while (v2) {
        if (0 == 0x2 & (byte(msg.data[v0], 0x0))) {
            MEM[MEM[64] + 132] = 0;
            v0 += 11;
        } else {
            MEM[MEM[64] + 132] = msg.data[v0] >> 96;
            v0 += 31;
        }
        if (!(0x1 & (byte(msg.data[v0], 0x0)))) {
            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            MEM[MEM[64] + 228] = 0x1000276a4;
        }
        v8 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v0 + (msg.data[1 + v0] >> 240)] >> 96, msg.data[v0 + (msg.data[3 + v0] >> 240)] >> 96, msg.data[v0 + 5] >> 232, msg.data[v0 + 8] >> 232, v9, 0x1 & (byte(msg.data[v0], 0x0)), varg1, v9, v7).gas(msg.gas);
        if (!v8) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v9, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
        } else if (!(0x1 & (byte(msg.data[v0], 0x0)))) {
            varg1 = v10 = 0 - int128(MEM[0]);
            v2 = 0x3f52(v2);
        } else {
            varg1 = v11 = 0 - (MEM[0] >> 128);
            v2 = 0x3f52(v2);
        }
    }
    0x1aba(0x4444c5dc75cb358380d2e3de08a90, varg1, v0);
    return ;
}

function 0x42d5(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = msg.data[varg2] >> 240;
    v1 = v2 = 0;
    v3 = v4 = varg2 + 4;
    if (msg.data[varg2 + 2] >> 240) {
        v1 = v5 = msg.data[4 + (varg2 + (msg.data[varg2 + 2] >> 240))] >> 96;
    }
    varg1 = v6 = 0;
    if (v0 & 0x3) {
        if ((v0 & 0x3) - 1) {
            if ((v0 & 0x3) - 2) {
                v7 = v1.balanceOf(varg0).gas(msg.gas);
                require(v7, Error(32, 5, 'BA:CF'));
                varg1 = v8 = MEM[0];
            }
            v9 = v10 = 7;
        } else {
            v9 = v11 = 7;
            varg1 = v12 = msg.data[v4];
            v3 = varg2 + 36;
        }
    } else {
        v9 = 7;
    }
    v13 = v3 + v9;
    v14 = MEM[64] + 4;
    v15 = msg.data[v3 + 4] >> 232;
    while (v15) {
        if (!(v15 & 0x3)) {
            MEM[v14] = varg1;
            v14 = v14 + 32;
        } else if (1 == v15 & 0x3) {
            MEM[v14] = varg0;
            v14 = v14 + 32;
        } else if (2 == v15 & 0x3) {
            MEM[v14] = byte(msg.data[v13], 0x0);
            v14 = v14 + 32;
            v13 = v13 + 1;
        } else {
            CALLDATACOPY(v14, v13 + 1, byte(msg.data[v13], 0x0));
            v14 = v14 + (byte(msg.data[v13], 0x0));
            v13 = v13 + (byte(msg.data[v13], 0x0)) + 1;
        }
        v15 = v15 >> 3;
    }
    if (v0 & 0x100) {
        if (v0 & 0x200) {
            v16 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v16, Error(32, 5, 'ST:CF'));
        }
        v17 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v13 + (msg.data[v13] >> 240)] >> 96, this, varg1).gas(msg.gas);
        require(v17, Error(32, 5, 'TK:CF'));
        MEM[96] = 0;
        v13 = v18 = 2 + v13;
    }
    if (v0 & 0x400) {
        if (v0 & 0x800) {
            v19 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v19, Error(32, 5, 'ST:CF'));
        }
        v20 = 0x4444c5dc75cb358380d2e3de08a90.sync(v1).gas(msg.gas);
        require(v20, Error(32, 5, 'SY:CF'));
    }
    varg1 = v21 = 0;
    if (v0 & 0x8) {
        if (v0 & 0x10) {
            v22 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
            require(v22, Error(32, 5, 'WI:CT'));
        }
    }
    v23 = (msg.data[v13] >> 96).call(msg.data[v3]).value(varg1).gas(msg.gas);
    if (!v23) {
        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
        RETURNDATACOPY(0, 0, 68);
        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
        revert(v24, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
    } else {
        if ((v0 & 0x3) - 2) {
            if (!((v0 & 0x3) - 3)) {
                v25 = v1.balanceOf(varg0).gas(msg.gas);
                require(v25, Error(32, 5, 'BA:CD'));
                varg1 = v26 = MEM[0] - varg1;
            }
        } else if (address(v1)) {
            v27 = v1.balanceOf(this).gas(msg.gas);
            require(v27, Error(32, 5, 'BA:CT'));
            if (!(v0 & 0x4)) {
                varg1 = v28 = MEM[0] - 1;
            } else {
                varg1 = v29 = MEM[0];
            }
        } else {
            varg1 = v30 = this.balance;
        }
        if (v0 & 0x20) {
            v1 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            v31 = v1.deposit().value(varg1).gas(msg.gas);
            require(v31, Error(32, 5, 'DE:CT'));
        }
        if (0x40 & v0) {
            if (!v1) {
                v32 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                require(v32, Error(32, 5, 'SE:CF'));
            } else {
                v33 = v1.transfer(varg0, varg1).gas(msg.gas);
                if (!v33) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v24, MEM[36] + 7, 'TR:CF: ');
                }
            }
        }
        v34 = v35 = 10509;
        varg1 = v36 = byte(msg.data[20 + v13], 0x0);
        if (v36) {
            v37 = v38 = 21 + v13;
            while (1) {
                varg1 = v37 + 2;
                v39 = msg.data[v37] >> 240;
                if (v39 & 0x1c0) {
                    if ((v39 & 0x1c0) - 64) {
                        if (128 - (v39 & 0x1c0)) {
                            varg1 = 22 + v37;
                            if (msg.data[varg1] >> 96) {
                                v40, /* uint256 */ varg1 = (msg.data[varg1] >> 96).balanceOf(this).gas(msg.gas);
                                if (!v40) {
                                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    varg1 = v41 = 0;
                                    if (v40) {
                                        v42 = 32;
                                        if (v42 > RETURNDATASIZE()) {
                                            v42 = v43 = RETURNDATASIZE();
                                        }
                                        require(!((MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        require(MEM[64] + v42 - MEM[64] >= 32);
                                    }
                                }
                            } else {
                                varg1 = v44 = this.balance;
                            }
                            if (!(v39 & 0x100)) {
                                varg1 = v45 = uint256.max + varg1;
                            }
                        } else {
                            varg1 = v46 = msg.data[varg1];
                            varg1 = varg1 + 32;
                        }
                    } else {
                        varg1 = varg1 + 3;
                        varg1 = varg1 * (msg.data[varg1] >> 232) >> 24;
                    }
                }
                if (!(v39 & 0x30)) {
                    varg1 = v47 = this;
                } else if (16 == v39 & 0x30) {
                    varg1 = v48 = 0x4444c5dc75cb358380d2e3de08a90;
                } else if (32 == v39 & 0x30) {
                    varg1 = varg1 + 2;
                    varg1 = v49 = msg.data[(msg.data[varg1] >> 240) + varg1] >> 96;
                } else {
                    varg1 = v50 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                }
                v34 = v51 = varg1 + 2;
                if (bool(v39)) {
                    if (bool(v39) - 1) {
                        if (bool(v39) - 2) {
                            if (bool(v39) - 3) {
                                if (4 - bool(v39)) {
                                    v52 = v53 = uint256.max;
                                    CALLDATACOPY(MEM[64] + 96, 22 + v51, msg.data[v51 + 20] >> 240);
                                    v54 = (msg.data[v51] >> 96).delegatecall(this, varg1, varg1).gas(msg.gas);
                                    if (!v54) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v24, MEM[36] + 7, 'EE:RE: ');
                                    }
                                } else {
                                    v39 = v55 = 8490;
                                    0x42d5(varg1, varg1, v51);
                                    v56 = 0;
                                    v57 = v58 = v34 + 4;
                                    if (msg.data[v34 + 2] >> 240) {
                                        v56 = v59 = msg.data[4 + (v34 + (msg.data[v34 + 2] >> 240))] >> 96;
                                    }
                                    varg1 = v60 = 0;
                                    if (msg.data[v34] >> 240 & 0x3) {
                                        if ((msg.data[v34] >> 240 & 0x3) - 1) {
                                            if ((msg.data[v34] >> 240 & 0x3) - 2) {
                                                v61 = v56.balanceOf(varg1).gas(msg.gas);
                                                require(v61, Error(32, 5, 'BA:CF'));
                                                varg1 = v62 = MEM[0];
                                            }
                                            v63 = v64 = 7;
                                        } else {
                                            v63 = v65 = 7;
                                            varg1 = v66 = msg.data[v58];
                                            v57 = v67 = v34 + 36;
                                        }
                                    } else {
                                        v63 = 7;
                                    }
                                    v68 = v69 = v57 + v63;
                                    v70 = v71 = MEM[64] + 4;
                                    v72 = msg.data[v57 + 4] >> 232;
                                    while (v72) {
                                        if (!(v72 & 0x3)) {
                                            MEM[v70] = varg1;
                                            v70 = v70 + 32;
                                        } else if (1 == v72 & 0x3) {
                                            MEM[v70] = varg1;
                                            v70 = v70 + 32;
                                        } else if (2 == v72 & 0x3) {
                                            MEM[v70] = byte(msg.data[v68], 0x0);
                                            v70 = v70 + 32;
                                            v68 = v68 + 1;
                                        } else {
                                            CALLDATACOPY(v70, v68 + 1, byte(msg.data[v68], 0x0));
                                            v70 = v70 + (byte(msg.data[v68], 0x0));
                                            v68 = v68 + (byte(msg.data[v68], 0x0)) + 1;
                                        }
                                        v72 = v72 >> 3;
                                    }
                                    if (msg.data[v34] >> 240 & 0x100) {
                                        if (msg.data[v34] >> 240 & 0x200) {
                                            v73 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v73, Error(32, 5, 'ST:CF'));
                                        }
                                        v74 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v68 + (msg.data[v68] >> 240)] >> 96, this, varg1).gas(msg.gas);
                                        require(v74, Error(32, 5, 'TK:CF'));
                                        MEM[96] = 0;
                                        v68 = v75 = 2 + v68;
                                    }
                                    if (msg.data[v34] >> 240 & 0x400) {
                                        if (msg.data[v34] >> 240 & 0x800) {
                                            v76 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v76, Error(32, 5, 'ST:CF'));
                                        }
                                        v77 = 0x4444c5dc75cb358380d2e3de08a90.sync(v56).gas(msg.gas);
                                        require(v77, Error(32, 5, 'SY:CF'));
                                    }
                                    varg1 = v78 = 0;
                                    if (msg.data[v34] >> 240 & 0x8) {
                                        if (msg.data[v34] >> 240 & 0x10) {
                                            v79 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                                            require(v79, Error(32, 5, 'WI:CT'));
                                        }
                                    }
                                    v80 = (msg.data[v68] >> 96).call(msg.data[v57]).value(varg1).gas(msg.gas);
                                    if (!v80) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v24, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if ((msg.data[v34] >> 240 & 0x3) - 2) {
                                            if (!((msg.data[v34] >> 240 & 0x3) - 3)) {
                                                v81 = v56.balanceOf(varg1).gas(msg.gas);
                                                require(v81, Error(32, 5, 'BA:CD'));
                                                varg1 = v82 = MEM[0] - varg1;
                                            }
                                        } else if (address(v56)) {
                                            v83 = v56.balanceOf(this).gas(msg.gas);
                                            require(v83, Error(32, 5, 'BA:CT'));
                                            if (!(msg.data[v34] >> 240 & 0x4)) {
                                                varg1 = v84 = MEM[0] - 1;
                                            } else {
                                                varg1 = v85 = MEM[0];
                                            }
                                        } else {
                                            varg1 = v86 = this.balance;
                                        }
                                        if (msg.data[v34] >> 240 & 0x20) {
                                            v56 = v87 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            v88 = v87.deposit().value(varg1).gas(msg.gas);
                                            require(v88, Error(32, 5, 'DE:CT'));
                                        }
                                        if (0x40 & msg.data[v34] >> 240) {
                                            if (!v56) {
                                                v89 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                                                require(v89, Error(32, 5, 'SE:CF'));
                                            } else {
                                                v90 = v56.transfer(varg1, varg1).gas(msg.gas);
                                                if (!v90) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v24, MEM[36] + 7, 'TR:CF: ');
                                                }
                                            }
                                        }
                                        // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                                    }
                                }
                            } else {
                                v39 = v91 = 8490;
                                0x4990(varg1, varg1, v51);
                                v92 = v34 + 2;
                                if (msg.data[v34] >> 240 & 0x10) {
                                    if (!(msg.data[v34] >> 240 & 0x100)) {
                                        v93 = (msg.data[v34 + (msg.data[v92] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                        if (!v93) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                            revert(v24, MEM[36] + 8, 'TR:B3F: ');
                                        } else {
                                            v92 = v94 = v34 + 4;
                                        }
                                    } else {
                                        if (msg.data[v34] >> 240 & 0x200) {
                                            v95 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v95, Error(32, 6, 'ST:B3F'));
                                        }
                                        v96 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v92 + (msg.data[v92] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                        require(v96, Error(32, 6, 'TK:B3F'));
                                        MEM[96] = 0;
                                        v92 = v97 = v92 + 2;
                                    }
                                }
                                v98 = bool(msg.data[v34] >> 240);
                                while (v98) {
                                    if ((byte(msg.data[v92], 0x0)) - 2) {
                                        v99 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v92], 0x0), msg.data[v92 + (msg.data[v92 + 1] >> 240) + 1] >> 96, varg1, 0).gas(msg.gas);
                                        if (!v99) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v24, MEM[36] + 7, 'B3B:F: ');
                                        } else {
                                            v100 = v101 = uint256.max;
                                            varg1 = v102 = MEM[0];
                                            v92 = v92 + 3;
                                        }
                                    } else {
                                        v103 = new uint256[](0);
                                        MEM[v103.data] = msg.data[v92 + 1] >> 96;
                                        v104 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v103, v24, v24, msg.data[v92 + 1 + (msg.data[v92 + 1 + 20] >> 240)] >> 96, msg.data[v92 + 1 + (msg.data[v92 + 1 + 22] >> 240)] >> 96, varg1, 0, 0).gas(msg.gas);
                                        if (!v104) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v24, MEM[36] + 7, 'B3S:F: ');
                                        } else {
                                            v100 = v105 = uint256.max;
                                            varg1 = v106 = MEM[0];
                                            v92 = v92 + 1 + 24;
                                        }
                                    }
                                    v98 = v98 + v100;
                                }
                                if (msg.data[v34] >> 240 & 0x20) {
                                    v107 = msg.data[v92 + (msg.data[v92] >> 240)] >> 96;
                                    if (msg.data[v34] >> 240 & 0x40) {
                                        if (0x80 & msg.data[v34] >> 240) {
                                            v108 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v108, Error(32, 7, 'ST:B3FS'));
                                        }
                                        v109 = 0x4444c5dc75cb358380d2e3de08a90.sync(v107).gas(msg.gas);
                                        require(v109, Error(32, 6, 'SY:B3F'));
                                    }
                                    v110 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v107, varg1, varg1).gas(msg.gas);
                                    require(v110, Error(32, 5, 'SN:F3'));
                                    MEM[96] = 0;
                                }
                                // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                            }
                        } else {
                            v39 = v111 = 8490;
                            0x5008(varg1, varg1, v51);
                            v112 = v113 = v34 + 22;
                            if (msg.data[v34] >> 240 & 0x10) {
                                v112 = v114 = v34 + 24;
                                if (!(msg.data[v34] >> 240 & 0x20)) {
                                    v115 = (msg.data[22 + ((msg.data[v113] >> 240) + v34)] >> 96).transfer(msg.data[v34 + 2] >> 96, varg1).gas(msg.gas);
                                    if (!v115) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v24, MEM[36] + 7, 'TR:2F: ');
                                    }
                                } else {
                                    if (msg.data[v34] >> 240 & 0x40) {
                                        v116 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v116, Error(32, 5, 'ST:2F'));
                                    }
                                    v117 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v113] >> 240) + v34)] >> 96, msg.data[v34 + 2] >> 96, varg1).gas(msg.gas);
                                    require(v117, Error(32, 5, 'TK:2F'));
                                    MEM[96] = 0;
                                }
                            }
                            if (msg.data[v34] >> 240 & 0x100) {
                                if (msg.data[v34] >> 240 & 0x200) {
                                    v118 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v118, Error(32, 5, 'ST:22'));
                                }
                                v119 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v112 + (msg.data[v112] >> 240)] >> 96).gas(msg.gas);
                                require(v119, Error(32, 5, 'SY:2F'));
                            }
                            if (bool(msg.data[v34] >> 240)) {
                                if (0 == (bool(msg.data[v34] >> 240) == 1)) {
                                    // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                                }
                            } else {
                                // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                            }
                        }
                    } else {
                        v39 = v120 = 8490;
                        0x5470(varg1, varg1, v51);
                        v121 = 0;
                        v122 = v123 = v34 + 1;
                        v124 = v121 - varg1;
                        while (v121 < bool(byte(msg.data[v34], v121))) {
                            if (0 == 0x2 & (byte(msg.data[v122], 0x0))) {
                                MEM[MEM[64] + 132] = 0;
                                v122 += 11;
                            } else {
                                MEM[MEM[64] + 132] = msg.data[v122] >> 96;
                                v122 += 31;
                            }
                            if (!(0x1 & (byte(msg.data[v122], 0x0)))) {
                                MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                            } else {
                                MEM[MEM[64] + 228] = 0x1000276a4;
                            }
                            v125 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v122 + (msg.data[1 + v122] >> 240)] >> 96, msg.data[v122 + (msg.data[3 + v122] >> 240)] >> 96, msg.data[v122 + 5] >> 232, msg.data[v122 + 8] >> 232, v24, 0x1 & (byte(msg.data[v122], 0x0)), v124, v24, 288, v121).gas(msg.gas);
                            if (!v125) {
                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                RETURNDATACOPY(0, 0, 68);
                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                revert(v24, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                            } else {
                                if (!(0x1 & (byte(msg.data[v122], 0x0)))) {
                                    v126 = v127 = 1;
                                    v124 = v128 = 0 - (MEM[0] >> 128);
                                } else {
                                    v126 = v129 = 1;
                                    v124 = v130 = 0 - int128(MEM[0]);
                                }
                                v121 = v121 + v126;
                            }
                        }
                        if ((byte(msg.data[v34], v121)) & 0x10) {
                            if (0x40 & (byte(msg.data[v34], v121))) {
                                v131 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v131, Error(32, 5, 'ST:F4'));
                            }
                            v132 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v122 + (msg.data[v122] >> 240)] >> 96, varg1, 0 - v124).gas(msg.gas);
                            require(v132, Error(32, 5, 'TK:F4'));
                            MEM[96] = 0;
                        }
                        // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                    }
                    v52 = v133 = uint256.max;
                } else {
                    v39 = v134 = 8372;
                    0x5784(varg1, varg1, v51);
                    v52 = uint256.max;
                    v135 = v34 + 1;
                    if ((byte(msg.data[v34], 0x0)) & 0x2) {
                        if ((byte(msg.data[v34], 0x0)) & 0x8) {
                            v136 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v136, Error(32, 5, 'ST:F3'));
                        }
                        v137 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v34 + (msg.data[v135] >> 240) + 1] >> 96).gas(msg.gas);
                        require(v137, Error(32, 5, 'SY:F3'));
                        v135 = v138 = 3 + v34;
                    }
                    if (0 != (byte(msg.data[v34], 0x0)) & 0x1) {
                    }
                    v139 = new uint256[](25);
                    MEM8[MEM[64] + 198] = (byte(msg.data[v135], 0x2)) & 0xFF;
                    v140 = (msg.data[v135 + 3] >> 96).swap(varg1, (byte(msg.data[v34], 0x0)) & 0x1, varg1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v139, v24, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v135 + (msg.data[v135] >> 240)]).gas(msg.gas);
                    if (!v140) {
                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                        revert(v24, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                    }
                }
                varg1 = varg1 + v52;
                if (!varg1) {
                    // Unknown jump to Block 0x290d0x42d5. Refer to 3-address code (TAC);
                } else {
                    v37 = 2 + ((msg.data[varg1] >> 240) + varg1);
                    if (!(0x200 & v39)) {
                        require(varg1 <= varg1, Error(20304));
                        varg1 = varg1 - varg1;
                    }
                }
            }
        }
        return ;
    }
}

function 0x4990(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = msg.data[varg2] >> 240;
    v1 = v2 = varg2 + 2;
    if (v0 & 0x10) {
        if (!(v0 & 0x100)) {
            v3 = (msg.data[varg2 + (msg.data[v2] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
            if (!v3) {
                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                revert(v4, MEM[36] + 8, 'TR:B3F: ');
            } else {
                v1 = v5 = varg2 + 4;
            }
        } else {
            if (v0 & 0x200) {
                v6 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v6, Error(32, 6, 'ST:B3F'));
            }
            v7 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v2 + (msg.data[v2] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
            require(v7, Error(32, 6, 'TK:B3F'));
            MEM[96] = 0;
            v1 = v8 = v2 + 2;
        }
    }
    v9 = bool(v0);
    while (v9) {
        if ((byte(msg.data[v1], 0x0)) - 2) {
            v10 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v1], 0x0), msg.data[v1 + (msg.data[v1 + 1] >> 240) + 1] >> 96, varg1, 0).gas(msg.gas);
            if (!v10) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v4, MEM[36] + 7, 'B3B:F: ');
            } else {
                v11 = v12 = uint256.max;
                varg1 = v13 = MEM[0];
                v1 = v1 + 3;
            }
        } else {
            v14 = new uint256[](0);
            MEM[v14.data] = msg.data[v1 + 1] >> 96;
            v15 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v14, v4, v4, msg.data[v1 + 1 + (msg.data[v1 + 1 + 20] >> 240)] >> 96, msg.data[v1 + 1 + (msg.data[v1 + 1 + 22] >> 240)] >> 96, varg1, 0, 0).gas(msg.gas);
            if (!v15) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v4, MEM[36] + 7, 'B3S:F: ');
            } else {
                v11 = uint256.max;
                varg1 = v16 = MEM[0];
                v1 = v1 + 1 + 24;
            }
        }
        v9 = v9 + v11;
    }
    if (v0 & 0x20) {
        v17 = msg.data[v1 + (msg.data[v1] >> 240)] >> 96;
        v1 = v18 = v1 + 2;
        if (v0 & 0x40) {
            if (0x80 & v0) {
                v19 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v19, Error(32, 7, 'ST:B3FS'));
            }
            v20 = 0x4444c5dc75cb358380d2e3de08a90.sync(v17).gas(msg.gas);
            require(v20, Error(32, 6, 'SY:B3F'));
        }
        v21 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v17, varg0, varg1).gas(msg.gas);
        require(v21, Error(32, 5, 'SN:F3'));
        MEM[96] = 0;
    }
    v22 = v23 = 10509;
    varg1 = v24 = byte(msg.data[v1], 0x0);
    if (v24) {
        v25 = v26 = 1 + v1;
        while (1) {
            varg1 = v25 + 2;
            v27 = msg.data[v25] >> 240;
            if (v27 & 0x1c0) {
                if ((v27 & 0x1c0) - 64) {
                    if (128 - (v27 & 0x1c0)) {
                        varg1 = 22 + v25;
                        if (msg.data[varg1] >> 96) {
                            v28, /* uint256 */ varg1 = (msg.data[varg1] >> 96).balanceOf(this).gas(msg.gas);
                            if (!v28) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                varg1 = v29 = 0;
                                if (v28) {
                                    v30 = 32;
                                    if (v30 > RETURNDATASIZE()) {
                                        v30 = v31 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v30 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v30 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            varg1 = v32 = this.balance;
                        }
                        if (!(v27 & 0x100)) {
                            varg1 = v33 = uint256.max + varg1;
                        }
                    } else {
                        varg1 = v34 = msg.data[varg1];
                        varg1 = varg1 + 32;
                    }
                } else {
                    varg1 = varg1 + 3;
                    varg1 = varg1 * (msg.data[varg1] >> 232) >> 24;
                }
            }
            if (!(v27 & 0x30)) {
                varg1 = v35 = this;
            } else if (16 == v27 & 0x30) {
                varg1 = v36 = 0x4444c5dc75cb358380d2e3de08a90;
            } else if (32 == v27 & 0x30) {
                varg1 = varg1 + 2;
                varg1 = v37 = msg.data[(msg.data[varg1] >> 240) + varg1] >> 96;
            } else {
                varg1 = v38 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
            }
            v22 = v39 = varg1 + 2;
            if (bool(v27)) {
                if (bool(v27) - 1) {
                    if (bool(v27) - 2) {
                        if (bool(v27) - 3) {
                            if (4 - bool(v27)) {
                                v40 = v41 = uint256.max;
                                CALLDATACOPY(MEM[64] + 96, 22 + v39, msg.data[v39 + 20] >> 240);
                                v42 = (msg.data[v39] >> 96).delegatecall(this, varg1, varg1).gas(msg.gas);
                                if (!v42) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v4, MEM[36] + 7, 'EE:RE: ');
                                }
                            } else {
                                v27 = v43 = 8490;
                                0x42d5(varg1, varg1, v39);
                                v44 = 0;
                                v45 = v46 = v22 + 4;
                                if (msg.data[v22 + 2] >> 240) {
                                    v44 = v47 = msg.data[4 + (v22 + (msg.data[v22 + 2] >> 240))] >> 96;
                                }
                                varg1 = v48 = 0;
                                if (msg.data[v22] >> 240 & 0x3) {
                                    if ((msg.data[v22] >> 240 & 0x3) - 1) {
                                        if ((msg.data[v22] >> 240 & 0x3) - 2) {
                                            v49 = v44.balanceOf(varg1).gas(msg.gas);
                                            require(v49, Error(32, 5, 'BA:CF'));
                                            varg1 = v50 = MEM[0];
                                        }
                                        v51 = v52 = 7;
                                    } else {
                                        v51 = v53 = 7;
                                        varg1 = v54 = msg.data[v46];
                                        v45 = v55 = v22 + 36;
                                    }
                                } else {
                                    v51 = 7;
                                }
                                v56 = v57 = v45 + v51;
                                v58 = v59 = MEM[64] + 4;
                                v60 = msg.data[v45 + 4] >> 232;
                                while (v60) {
                                    if (!(v60 & 0x3)) {
                                        MEM[v58] = varg1;
                                        v58 = v58 + 32;
                                    } else if (1 == v60 & 0x3) {
                                        MEM[v58] = varg1;
                                        v58 = v58 + 32;
                                    } else if (2 == v60 & 0x3) {
                                        MEM[v58] = byte(msg.data[v56], 0x0);
                                        v58 = v58 + 32;
                                        v56 = v56 + 1;
                                    } else {
                                        CALLDATACOPY(v58, v56 + 1, byte(msg.data[v56], 0x0));
                                        v58 = v58 + (byte(msg.data[v56], 0x0));
                                        v56 = v56 + (byte(msg.data[v56], 0x0)) + 1;
                                    }
                                    v60 = v60 >> 3;
                                }
                                if (msg.data[v22] >> 240 & 0x100) {
                                    if (msg.data[v22] >> 240 & 0x200) {
                                        v61 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v61, Error(32, 5, 'ST:CF'));
                                    }
                                    v62 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v56 + (msg.data[v56] >> 240)] >> 96, this, varg1).gas(msg.gas);
                                    require(v62, Error(32, 5, 'TK:CF'));
                                    MEM[96] = 0;
                                    v56 = v63 = 2 + v56;
                                }
                                if (msg.data[v22] >> 240 & 0x400) {
                                    if (msg.data[v22] >> 240 & 0x800) {
                                        v64 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v64, Error(32, 5, 'ST:CF'));
                                    }
                                    v65 = 0x4444c5dc75cb358380d2e3de08a90.sync(v44).gas(msg.gas);
                                    require(v65, Error(32, 5, 'SY:CF'));
                                }
                                varg1 = v66 = 0;
                                if (msg.data[v22] >> 240 & 0x8) {
                                    if (msg.data[v22] >> 240 & 0x10) {
                                        v67 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                                        require(v67, Error(32, 5, 'WI:CT'));
                                    }
                                }
                                v68 = (msg.data[v56] >> 96).call(msg.data[v45]).value(varg1).gas(msg.gas);
                                if (!v68) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v4, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if ((msg.data[v22] >> 240 & 0x3) - 2) {
                                        if (!((msg.data[v22] >> 240 & 0x3) - 3)) {
                                            v69 = v44.balanceOf(varg1).gas(msg.gas);
                                            require(v69, Error(32, 5, 'BA:CD'));
                                            varg1 = v70 = MEM[0] - varg1;
                                        }
                                    } else if (address(v44)) {
                                        v71 = v44.balanceOf(this).gas(msg.gas);
                                        require(v71, Error(32, 5, 'BA:CT'));
                                        if (!(msg.data[v22] >> 240 & 0x4)) {
                                            varg1 = v72 = MEM[0] - 1;
                                        } else {
                                            varg1 = v73 = MEM[0];
                                        }
                                    } else {
                                        varg1 = v74 = this.balance;
                                    }
                                    if (msg.data[v22] >> 240 & 0x20) {
                                        v44 = v75 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        v76 = v75.deposit().value(varg1).gas(msg.gas);
                                        require(v76, Error(32, 5, 'DE:CT'));
                                    }
                                    if (0x40 & msg.data[v22] >> 240) {
                                        if (!v44) {
                                            v77 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                                            require(v77, Error(32, 5, 'SE:CF'));
                                        } else {
                                            v78 = v44.transfer(varg1, varg1).gas(msg.gas);
                                            if (!v78) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v4, MEM[36] + 7, 'TR:CF: ');
                                            }
                                        }
                                    }
                                    // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v27 = v79 = 8490;
                            0x4990(varg1, varg1, v39);
                            v80 = v22 + 2;
                            if (msg.data[v22] >> 240 & 0x10) {
                                if (!(msg.data[v22] >> 240 & 0x100)) {
                                    v81 = (msg.data[v22 + (msg.data[v80] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                    if (!v81) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                        revert(v4, MEM[36] + 8, 'TR:B3F: ');
                                    } else {
                                        v80 = v82 = v22 + 4;
                                    }
                                } else {
                                    if (msg.data[v22] >> 240 & 0x200) {
                                        v83 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v83, Error(32, 6, 'ST:B3F'));
                                    }
                                    v84 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v80 + (msg.data[v80] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                    require(v84, Error(32, 6, 'TK:B3F'));
                                    MEM[96] = 0;
                                    v80 = v85 = v80 + 2;
                                }
                            }
                            v86 = bool(msg.data[v22] >> 240);
                            while (v86) {
                                if ((byte(msg.data[v80], 0x0)) - 2) {
                                    v87 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v80], 0x0), msg.data[v80 + (msg.data[v80 + 1] >> 240) + 1] >> 96, varg1, 0).gas(msg.gas);
                                    if (!v87) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v4, MEM[36] + 7, 'B3B:F: ');
                                    } else {
                                        v88 = v89 = uint256.max;
                                        varg1 = v90 = MEM[0];
                                        v80 = v80 + 3;
                                    }
                                } else {
                                    v91 = new uint256[](0);
                                    MEM[v91.data] = msg.data[v80 + 1] >> 96;
                                    v92 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v91, v4, v4, msg.data[v80 + 1 + (msg.data[v80 + 1 + 20] >> 240)] >> 96, msg.data[v80 + 1 + (msg.data[v80 + 1 + 22] >> 240)] >> 96, varg1, 0, 0).gas(msg.gas);
                                    if (!v92) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v4, MEM[36] + 7, 'B3S:F: ');
                                    } else {
                                        v88 = v93 = uint256.max;
                                        varg1 = v94 = MEM[0];
                                        v80 = v80 + 1 + 24;
                                    }
                                }
                                v86 = v86 + v88;
                            }
                            if (msg.data[v22] >> 240 & 0x20) {
                                v95 = msg.data[v80 + (msg.data[v80] >> 240)] >> 96;
                                if (msg.data[v22] >> 240 & 0x40) {
                                    if (0x80 & msg.data[v22] >> 240) {
                                        v96 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v96, Error(32, 7, 'ST:B3FS'));
                                    }
                                    v97 = 0x4444c5dc75cb358380d2e3de08a90.sync(v95).gas(msg.gas);
                                    require(v97, Error(32, 6, 'SY:B3F'));
                                }
                                v98 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v95, varg1, varg1).gas(msg.gas);
                                require(v98, Error(32, 5, 'SN:F3'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
                        }
                    } else {
                        v27 = v99 = 8490;
                        0x5008(varg1, varg1, v39);
                        v100 = v101 = v22 + 22;
                        if (msg.data[v22] >> 240 & 0x10) {
                            v100 = v102 = v22 + 24;
                            if (!(msg.data[v22] >> 240 & 0x20)) {
                                v103 = (msg.data[22 + ((msg.data[v101] >> 240) + v22)] >> 96).transfer(msg.data[v22 + 2] >> 96, varg1).gas(msg.gas);
                                if (!v103) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v4, MEM[36] + 7, 'TR:2F: ');
                                }
                            } else {
                                if (msg.data[v22] >> 240 & 0x40) {
                                    v104 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v104, Error(32, 5, 'ST:2F'));
                                }
                                v105 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v101] >> 240) + v22)] >> 96, msg.data[v22 + 2] >> 96, varg1).gas(msg.gas);
                                require(v105, Error(32, 5, 'TK:2F'));
                                MEM[96] = 0;
                            }
                        }
                        if (msg.data[v22] >> 240 & 0x100) {
                            if (msg.data[v22] >> 240 & 0x200) {
                                v106 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v106, Error(32, 5, 'ST:22'));
                            }
                            v107 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v100 + (msg.data[v100] >> 240)] >> 96).gas(msg.gas);
                            require(v107, Error(32, 5, 'SY:2F'));
                        }
                        if (bool(msg.data[v22] >> 240)) {
                            if (0 == (bool(msg.data[v22] >> 240) == 1)) {
                                // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
                            }
                        } else {
                            // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
                        }
                    }
                } else {
                    v27 = v108 = 8490;
                    0x5470(varg1, varg1, v39);
                    v109 = 0;
                    v110 = v111 = v22 + 1;
                    v112 = v109 - varg1;
                    while (v109 < bool(byte(msg.data[v22], v109))) {
                        if (0 == 0x2 & (byte(msg.data[v110], 0x0))) {
                            MEM[MEM[64] + 132] = 0;
                            v110 += 11;
                        } else {
                            MEM[MEM[64] + 132] = msg.data[v110] >> 96;
                            v110 += 31;
                        }
                        if (!(0x1 & (byte(msg.data[v110], 0x0)))) {
                            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            MEM[MEM[64] + 228] = 0x1000276a4;
                        }
                        v113 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v110 + (msg.data[1 + v110] >> 240)] >> 96, msg.data[v110 + (msg.data[3 + v110] >> 240)] >> 96, msg.data[v110 + 5] >> 232, msg.data[v110 + 8] >> 232, v4, 0x1 & (byte(msg.data[v110], 0x0)), v112, v4, 288, v109).gas(msg.gas);
                        if (!v113) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v4, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                        } else {
                            if (!(0x1 & (byte(msg.data[v110], 0x0)))) {
                                v114 = v115 = 1;
                                v112 = v116 = 0 - (MEM[0] >> 128);
                            } else {
                                v114 = v117 = 1;
                                v112 = v118 = 0 - int128(MEM[0]);
                            }
                            v109 = v109 + v114;
                        }
                    }
                    if ((byte(msg.data[v22], v109)) & 0x10) {
                        if (0x40 & (byte(msg.data[v22], v109))) {
                            v119 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v119, Error(32, 5, 'ST:F4'));
                        }
                        v120 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v110 + (msg.data[v110] >> 240)] >> 96, varg1, 0 - v112).gas(msg.gas);
                        require(v120, Error(32, 5, 'TK:F4'));
                        MEM[96] = 0;
                    }
                    // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
                }
                v40 = v121 = uint256.max;
            } else {
                v27 = v122 = 8372;
                0x5784(varg1, varg1, v39);
                v40 = uint256.max;
                v123 = v22 + 1;
                if ((byte(msg.data[v22], 0x0)) & 0x2) {
                    if ((byte(msg.data[v22], 0x0)) & 0x8) {
                        v124 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        require(v124, Error(32, 5, 'ST:F3'));
                    }
                    v125 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v22 + (msg.data[v123] >> 240) + 1] >> 96).gas(msg.gas);
                    require(v125, Error(32, 5, 'SY:F3'));
                    v123 = v126 = 3 + v22;
                }
                if (0 != (byte(msg.data[v22], 0x0)) & 0x1) {
                }
                v127 = new uint256[](25);
                MEM8[MEM[64] + 198] = (byte(msg.data[v123], 0x2)) & 0xFF;
                v128 = (msg.data[v123 + 3] >> 96).swap(varg1, (byte(msg.data[v22], 0x0)) & 0x1, varg1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v127, v4, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v123 + (msg.data[v123] >> 240)]).gas(msg.gas);
                if (!v128) {
                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                    revert(v4, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                }
            }
            varg1 = varg1 + v40;
            if (!varg1) {
                // Unknown jump to Block 0x290d0x4990. Refer to 3-address code (TAC);
            } else {
                v25 = 2 + ((msg.data[varg1] >> 240) + varg1);
                if (!(0x200 & v27)) {
                    require(varg1 <= varg1, Error(20304));
                    varg1 = varg1 - varg1;
                }
            }
        }
    }
    return ;
}

function 0x5008(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = msg.data[varg2 + 2] >> 96;
    v0 = v2 = varg2 + 22;
    v3 = msg.data[varg2] >> 240;
    if (v3 & 0x10) {
        v0 = v4 = varg2 + 24;
        if (!(v3 & 0x20)) {
            v5 = (msg.data[22 + ((msg.data[v2] >> 240) + varg2)] >> 96).transfer(v1, varg1).gas(msg.gas);
            if (!v5) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v6, MEM[36] + 7, 'TR:2F: ');
            }
        } else {
            if (v3 & 0x40) {
                v7 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v7, Error(32, 5, 'ST:2F'));
            }
            v8 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v2] >> 240) + varg2)] >> 96, v1, varg1).gas(msg.gas);
            require(v8, Error(32, 5, 'TK:2F'));
            MEM[96] = 0;
        }
    }
    if (v3 & 0x100) {
        if (v3 & 0x200) {
            v9 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v9, Error(32, 5, 'ST:22'));
        }
        v10 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v0] >> 240)] >> 96).gas(msg.gas);
        require(v10, Error(32, 5, 'SY:2F'));
        v0 = v11 = 2 + v0;
    }
    v0 = v12 = bool(v3);
    while (v0) {
        v0 = v13 = 0;
        v0 = v14 = 132;
        v0 = v15 = byte(msg.data[v0], v13);
        if (v13 == (v0 == 1)) {
            v0 = v16 = 20603;
            v0 = v17 = msg.data[v0 + 1] >> 96;
            v0 = v0 + 21;
            varg1, v0 = v18, v0 = v19, v0 = v20, v0 = v21, v0 = v22, v0 = v23, v0, v0 = 0x506b(varg1, v16, v13, v15, v14, v13, v13, v17, v0);
        } else {
            v0 = v24 = 20603;
            v0 = v0 + 1;
        }
        v0 = v25 = v0 & 0x1;
        if (0 == !(v0 & 0x6)) {
            if (2 - (v0 & 0x6)) {
                v26 = v27 = 9975;
                v28 = v29 = 64;
                v30 = v31 = 0;
                v32 = v33 = 4;
                v34 = v35 = 28;
                v36 = v37 = 10000;
            } else {
                v38 = v0.executeVirtualOrders(block.timestamp).gas(msg.gas);
                if (!v38) {
                    require(RETURNDATASIZE() > 68);
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v39 = v0.fee().gas(msg.gas);
                    if (!v39) {
                        require(RETURNDATASIZE() > 68);
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    } else {
                        v26 = v40 = MEM[0];
                        v28 = v41 = 64;
                        v30 = v42 = 0;
                        v32 = v43 = 4;
                        v34 = v44 = 28;
                        v36 = v45 = 10000;
                    }
                }
            }
        } else {
            v26 = 997;
            v28 = 64;
            v30 = 0;
            v32 = 4;
            v34 = 28;
            v36 = 1000;
        }
        MEM[v30] = 0x902f1ac;
        v46 = v0.staticcall(MEM[v50080x5a51:v50080x5a51 + v50080x5a4f], MEM[v50080x5a4e:v50080x5a4e + v50080x5a4c]).gas(msg.gas);
        if (!v46) {
            require(RETURNDATASIZE() > 68);
            RETURNDATACOPY(0, 0, RETURNDATASIZE());
            revert(0, RETURNDATASIZE());
        } else {
            if (!v25) {
                v47 = v48 = MEM[32];
                v49 = v50 = MEM[0];
            } else {
                v47 = MEM[0];
                v49 = MEM[32];
            }
            require(v47 * v36 + varg1 * v26, Panic(18)); // division by zero
            varg1 = varg1 * v26 * v49 / (v47 * v36 + varg1 * v26);
            // Unknown jump to Block 0x507b. Refer to 3-address code (TAC);
        }
        if (v0 == v0) {
            MEM[4 + MEM[64]] = varg1;
            MEM[36 + MEM[64]] = v0;
            MEM[MEM[64] + 100] = 32;
        } else {
            MEM[4 + MEM[64]] = v0;
            MEM[36 + MEM[64]] = varg1;
            MEM[MEM[64] + 100] = v0;
        }
        v51 = v0.swap(v6, v6, v0).value(v0).gas(msg.gas);
        if (!v51) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56323a4600000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v6, MEM[36] + 6, 0x56323a463a200000000000000000000000000000000000000000000000000000);
        } else {
            v0 = v0 - 1;
        }
    }
    v52 = v53 = 10509;
    varg1 = v54 = byte(msg.data[v0], 0x0);
    if (v54) {
        v55 = v56 = 1 + v0;
        while (1) {
            varg1 = v55 + 2;
            v57 = msg.data[v55] >> 240;
            if (v57 & 0x1c0) {
                if ((v57 & 0x1c0) - 64) {
                    if (128 - (v57 & 0x1c0)) {
                        varg1 = 22 + v55;
                        if (msg.data[varg1] >> 96) {
                            v58, /* uint256 */ varg1 = (msg.data[varg1] >> 96).balanceOf(this).gas(msg.gas);
                            if (!v58) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                varg1 = v59 = 0;
                                if (v58) {
                                    v60 = 32;
                                    if (v60 > RETURNDATASIZE()) {
                                        v60 = v61 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v60 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v60 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            varg1 = v62 = this.balance;
                        }
                        if (!(v57 & 0x100)) {
                            varg1 = v63 = uint256.max + varg1;
                        }
                    } else {
                        varg1 = v64 = msg.data[varg1];
                        varg1 = varg1 + 32;
                    }
                } else {
                    varg1 = varg1 + 3;
                    varg1 = varg1 * (msg.data[varg1] >> 232) >> 24;
                }
            }
            if (!(v57 & 0x30)) {
                varg1 = v65 = this;
            } else if (16 == v57 & 0x30) {
                varg1 = v66 = 0x4444c5dc75cb358380d2e3de08a90;
            } else if (32 == v57 & 0x30) {
                varg1 = varg1 + 2;
                varg1 = v67 = msg.data[(msg.data[varg1] >> 240) + varg1] >> 96;
            } else {
                varg1 = v68 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
            }
            v52 = v69 = varg1 + 2;
            if (bool(v57)) {
                if (bool(v57) - 1) {
                    if (bool(v57) - 2) {
                        if (bool(v57) - 3) {
                            if (4 - bool(v57)) {
                                v70 = v71 = uint256.max;
                                CALLDATACOPY(MEM[64] + 96, 22 + v69, msg.data[v69 + 20] >> 240);
                                v72 = (msg.data[v69] >> 96).delegatecall(this, varg1, varg1).gas(msg.gas);
                                if (!v72) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v6, MEM[36] + 7, 'EE:RE: ');
                                }
                            } else {
                                v57 = v73 = 8490;
                                0x42d5(varg1, varg1, v69);
                                v74 = 0;
                                v75 = v76 = v52 + 4;
                                if (msg.data[v52 + 2] >> 240) {
                                    v74 = v77 = msg.data[4 + (v52 + (msg.data[v52 + 2] >> 240))] >> 96;
                                }
                                varg1 = v78 = 0;
                                if (msg.data[v52] >> 240 & 0x3) {
                                    if ((msg.data[v52] >> 240 & 0x3) - 1) {
                                        if ((msg.data[v52] >> 240 & 0x3) - 2) {
                                            v79 = v74.balanceOf(varg1).gas(msg.gas);
                                            require(v79, Error(32, 5, 'BA:CF'));
                                            varg1 = v80 = MEM[0];
                                        }
                                        v81 = v82 = 7;
                                    } else {
                                        v81 = v83 = 7;
                                        varg1 = v84 = msg.data[v76];
                                        v75 = v85 = v52 + 36;
                                    }
                                } else {
                                    v81 = 7;
                                }
                                v86 = v87 = v75 + v81;
                                v88 = v89 = MEM[64] + 4;
                                v90 = msg.data[v75 + 4] >> 232;
                                while (v90) {
                                    if (!(v90 & 0x3)) {
                                        MEM[v88] = varg1;
                                        v88 = v88 + 32;
                                    } else if (1 == v90 & 0x3) {
                                        MEM[v88] = varg1;
                                        v88 = v88 + 32;
                                    } else if (2 == v90 & 0x3) {
                                        MEM[v88] = byte(msg.data[v86], 0x0);
                                        v88 = v88 + 32;
                                        v86 = v86 + 1;
                                    } else {
                                        CALLDATACOPY(v88, v86 + 1, byte(msg.data[v86], 0x0));
                                        v88 = v88 + (byte(msg.data[v86], 0x0));
                                        v86 = v86 + (byte(msg.data[v86], 0x0)) + 1;
                                    }
                                    v90 = v90 >> 3;
                                }
                                if (msg.data[v52] >> 240 & 0x100) {
                                    if (msg.data[v52] >> 240 & 0x200) {
                                        v91 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v91, Error(32, 5, 'ST:CF'));
                                    }
                                    v92 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v86 + (msg.data[v86] >> 240)] >> 96, this, varg1).gas(msg.gas);
                                    require(v92, Error(32, 5, 'TK:CF'));
                                    MEM[96] = 0;
                                    v86 = v93 = 2 + v86;
                                }
                                if (msg.data[v52] >> 240 & 0x400) {
                                    if (msg.data[v52] >> 240 & 0x800) {
                                        v94 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v94, Error(32, 5, 'ST:CF'));
                                    }
                                    v95 = 0x4444c5dc75cb358380d2e3de08a90.sync(v74).gas(msg.gas);
                                    require(v95, Error(32, 5, 'SY:CF'));
                                }
                                varg1 = v96 = 0;
                                if (msg.data[v52] >> 240 & 0x8) {
                                    if (msg.data[v52] >> 240 & 0x10) {
                                        v97 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                                        require(v97, Error(32, 5, 'WI:CT'));
                                    }
                                }
                                v98 = (msg.data[v86] >> 96).call(msg.data[v75]).value(varg1).gas(msg.gas);
                                if (!v98) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v6, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if ((msg.data[v52] >> 240 & 0x3) - 2) {
                                        if (!((msg.data[v52] >> 240 & 0x3) - 3)) {
                                            v99 = v74.balanceOf(varg1).gas(msg.gas);
                                            require(v99, Error(32, 5, 'BA:CD'));
                                            varg1 = v100 = MEM[0] - varg1;
                                        }
                                    } else if (address(v74)) {
                                        v101 = v74.balanceOf(this).gas(msg.gas);
                                        require(v101, Error(32, 5, 'BA:CT'));
                                        if (!(msg.data[v52] >> 240 & 0x4)) {
                                            varg1 = v102 = MEM[0] - 1;
                                        } else {
                                            varg1 = v103 = MEM[0];
                                        }
                                    } else {
                                        varg1 = v104 = this.balance;
                                    }
                                    if (msg.data[v52] >> 240 & 0x20) {
                                        v74 = v105 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        v106 = v105.deposit().value(varg1).gas(msg.gas);
                                        require(v106, Error(32, 5, 'DE:CT'));
                                    }
                                    if (0x40 & msg.data[v52] >> 240) {
                                        if (!v74) {
                                            v107 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                                            require(v107, Error(32, 5, 'SE:CF'));
                                        } else {
                                            v108 = v74.transfer(varg1, varg1).gas(msg.gas);
                                            if (!v108) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v6, MEM[36] + 7, 'TR:CF: ');
                                            }
                                        }
                                    }
                                    // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v57 = v109 = 8490;
                            0x4990(varg1, varg1, v69);
                            v110 = v52 + 2;
                            if (msg.data[v52] >> 240 & 0x10) {
                                if (!(msg.data[v52] >> 240 & 0x100)) {
                                    v111 = (msg.data[v52 + (msg.data[v110] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                    if (!v111) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                        revert(v6, MEM[36] + 8, 'TR:B3F: ');
                                    } else {
                                        v110 = v112 = v52 + 4;
                                    }
                                } else {
                                    if (msg.data[v52] >> 240 & 0x200) {
                                        v113 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v113, Error(32, 6, 'ST:B3F'));
                                    }
                                    v114 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v110 + (msg.data[v110] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                    require(v114, Error(32, 6, 'TK:B3F'));
                                    MEM[96] = 0;
                                    v110 = v115 = v110 + 2;
                                }
                            }
                            v116 = bool(msg.data[v52] >> 240);
                            while (v116) {
                                if ((byte(msg.data[v110], 0x0)) - 2) {
                                    v117 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v110], 0x0), msg.data[v110 + (msg.data[v110 + 1] >> 240) + 1] >> 96, varg1, 0).gas(msg.gas);
                                    if (!v117) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v6, MEM[36] + 7, 'B3B:F: ');
                                    } else {
                                        v118 = v119 = uint256.max;
                                        varg1 = v120 = MEM[0];
                                        v110 = v110 + 3;
                                    }
                                } else {
                                    v121 = new uint256[](0);
                                    MEM[v121.data] = msg.data[v110 + 1] >> 96;
                                    v122 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v121, v6, v6, msg.data[v110 + 1 + (msg.data[v110 + 1 + 20] >> 240)] >> 96, msg.data[v110 + 1 + (msg.data[v110 + 1 + 22] >> 240)] >> 96, varg1, 0, 0).gas(msg.gas);
                                    if (!v122) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v6, MEM[36] + 7, 'B3S:F: ');
                                    } else {
                                        v118 = v123 = uint256.max;
                                        varg1 = v124 = MEM[0];
                                        v110 = v110 + 1 + 24;
                                    }
                                }
                                v116 = v116 + v118;
                            }
                            if (msg.data[v52] >> 240 & 0x20) {
                                v125 = msg.data[v110 + (msg.data[v110] >> 240)] >> 96;
                                if (msg.data[v52] >> 240 & 0x40) {
                                    if (0x80 & msg.data[v52] >> 240) {
                                        v126 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v126, Error(32, 7, 'ST:B3FS'));
                                    }
                                    v127 = 0x4444c5dc75cb358380d2e3de08a90.sync(v125).gas(msg.gas);
                                    require(v127, Error(32, 6, 'SY:B3F'));
                                }
                                v128 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v125, varg1, varg1).gas(msg.gas);
                                require(v128, Error(32, 5, 'SN:F3'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
                        }
                    } else {
                        v57 = v129 = 8490;
                        0x5008(varg1, varg1, v69);
                        v130 = v131 = v52 + 22;
                        if (msg.data[v52] >> 240 & 0x10) {
                            v130 = v132 = v52 + 24;
                            if (!(msg.data[v52] >> 240 & 0x20)) {
                                v133 = (msg.data[22 + ((msg.data[v131] >> 240) + v52)] >> 96).transfer(msg.data[v52 + 2] >> 96, varg1).gas(msg.gas);
                                if (!v133) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v6, MEM[36] + 7, 'TR:2F: ');
                                }
                            } else {
                                if (msg.data[v52] >> 240 & 0x40) {
                                    v134 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v134, Error(32, 5, 'ST:2F'));
                                }
                                v135 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v131] >> 240) + v52)] >> 96, msg.data[v52 + 2] >> 96, varg1).gas(msg.gas);
                                require(v135, Error(32, 5, 'TK:2F'));
                                MEM[96] = 0;
                            }
                        }
                        if (msg.data[v52] >> 240 & 0x100) {
                            if (msg.data[v52] >> 240 & 0x200) {
                                v136 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v136, Error(32, 5, 'ST:22'));
                            }
                            v137 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v130 + (msg.data[v130] >> 240)] >> 96).gas(msg.gas);
                            require(v137, Error(32, 5, 'SY:2F'));
                        }
                        if (bool(msg.data[v52] >> 240)) {
                            if (0 == (bool(msg.data[v52] >> 240) == 1)) {
                                // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
                            }
                        } else {
                            // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
                        }
                    }
                } else {
                    v57 = v138 = 8490;
                    0x5470(varg1, varg1, v69);
                    v139 = 0;
                    v140 = v141 = v52 + 1;
                    v142 = v139 - varg1;
                    while (v139 < bool(byte(msg.data[v52], v139))) {
                        if (0 == 0x2 & (byte(msg.data[v140], 0x0))) {
                            MEM[MEM[64] + 132] = 0;
                            v140 += 11;
                        } else {
                            MEM[MEM[64] + 132] = msg.data[v140] >> 96;
                            v140 += 31;
                        }
                        if (!(0x1 & (byte(msg.data[v140], 0x0)))) {
                            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            MEM[MEM[64] + 228] = 0x1000276a4;
                        }
                        v143 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v140 + (msg.data[1 + v140] >> 240)] >> 96, msg.data[v140 + (msg.data[3 + v140] >> 240)] >> 96, msg.data[v140 + 5] >> 232, msg.data[v140 + 8] >> 232, v6, 0x1 & (byte(msg.data[v140], 0x0)), v142, v6, 288, v139).gas(msg.gas);
                        if (!v143) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v6, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                        } else {
                            if (!(0x1 & (byte(msg.data[v140], 0x0)))) {
                                v144 = v145 = 1;
                                v142 = v146 = 0 - (MEM[0] >> 128);
                            } else {
                                v144 = v147 = 1;
                                v142 = v148 = 0 - int128(MEM[0]);
                            }
                            v139 = v139 + v144;
                        }
                    }
                    if ((byte(msg.data[v52], v139)) & 0x10) {
                        if (0x40 & (byte(msg.data[v52], v139))) {
                            v149 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v149, Error(32, 5, 'ST:F4'));
                        }
                        v150 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v140 + (msg.data[v140] >> 240)] >> 96, varg1, 0 - v142).gas(msg.gas);
                        require(v150, Error(32, 5, 'TK:F4'));
                        MEM[96] = 0;
                    }
                    // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
                }
                v70 = v151 = uint256.max;
            } else {
                v57 = v152 = 8372;
                0x5784(varg1, varg1, v69);
                v70 = uint256.max;
                v153 = v52 + 1;
                if ((byte(msg.data[v52], 0x0)) & 0x2) {
                    if ((byte(msg.data[v52], 0x0)) & 0x8) {
                        v154 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        require(v154, Error(32, 5, 'ST:F3'));
                    }
                    v155 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v52 + (msg.data[v153] >> 240) + 1] >> 96).gas(msg.gas);
                    require(v155, Error(32, 5, 'SY:F3'));
                    v153 = v156 = 3 + v52;
                }
                if (0 != (byte(msg.data[v52], 0x0)) & 0x1) {
                }
                v157 = new uint256[](25);
                MEM8[MEM[64] + 198] = (byte(msg.data[v153], 0x2)) & 0xFF;
                v158 = (msg.data[v153 + 3] >> 96).swap(varg1, (byte(msg.data[v52], 0x0)) & 0x1, varg1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v157, v6, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v153 + (msg.data[v153] >> 240)]).gas(msg.gas);
                if (!v158) {
                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                    revert(v6, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                }
            }
            varg1 = varg1 + v70;
            if (!varg1) {
                // Unknown jump to Block 0x290d0x5008. Refer to 3-address code (TAC);
            } else {
                v55 = 2 + ((msg.data[varg1] >> 240) + varg1);
                if (!(0x200 & v57)) {
                    require(varg1 <= varg1, Error(20304));
                    varg1 = varg1 - varg1;
                }
            }
        }
    }
    return ;
}

function 0x506b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    if (0 == !(varg3 & 0x6)) {
        if (2 - (varg3 & 0x6)) {
            v0 = v1 = 9975;
            v2 = v3 = 64;
            v4 = v5 = 0;
            v6 = v7 = 4;
            v8 = v9 = 28;
            v10 = v11 = 10000;
        } else {
            v12 = v13.executeVirtualOrders(block.timestamp).gas(msg.gas);
            if (!v12) {
                require(RETURNDATASIZE() > 68);
                revert(0, RETURNDATASIZE());
            } else {
                v14 = v13.fee().gas(msg.gas);
                if (!v14) {
                    require(RETURNDATASIZE() > 68);
                    revert(0, RETURNDATASIZE());
                } else {
                    v0 = v15 = MEM[0];
                    v2 = v16 = 64;
                    v4 = v17 = 0;
                    v6 = v18 = 4;
                    v8 = v19 = 28;
                    v10 = v20 = 10000;
                }
            }
        }
    } else {
        v0 = 997;
        v2 = 64;
        v4 = 0;
        v6 = 4;
        v8 = 28;
        v10 = 1000;
    }
    MEM[v4] = 0x902f1ac;
    v21 = v13.staticcall(MEM[v506b0x5a51:v506b0x5a51 + v506b0x5a4f], MEM[v506b0x5a4e:v506b0x5a4e + v506b0x5a4c]).gas(msg.gas);
    if (!v21) {
        require(RETURNDATASIZE() > 68);
        revert(0, RETURNDATASIZE());
    } else {
        if (!(varg3 & 0x1)) {
            v22 = v23 = MEM[32];
            v24 = v25 = MEM[0];
        } else {
            v22 = MEM[0];
            v24 = MEM[32];
        }
        require(v22 * v10 + varg0 * v0, Panic(18)); // division by zero
        return varg0 * v0 * v24 / (v22 * v10 + varg0 * v0), varg2, varg3 & 0x1, varg4, varg5, varg6, varg7, varg8, v13;
    }
}

function 0x5470(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    v2 = v3 = varg2 + 1;
    v4 = v5 = v1 - varg1;
    while (v0 < bool(byte(msg.data[varg2], v1))) {
        if (0 == 0x2 & (byte(msg.data[v2], 0x0))) {
            MEM[MEM[64] + 132] = 0;
            v2 += 11;
        } else {
            MEM[MEM[64] + 132] = msg.data[v2] >> 96;
            v2 += 31;
        }
        if (!(0x1 & (byte(msg.data[v2], 0x0)))) {
            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        } else {
            MEM[MEM[64] + 228] = 0x1000276a4;
        }
        v6 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v2 + (msg.data[1 + v2] >> 240)] >> 96, msg.data[v2 + (msg.data[3 + v2] >> 240)] >> 96, msg.data[v2 + 5] >> 232, msg.data[v2 + 8] >> 232, v7, 0x1 & (byte(msg.data[v2], 0x0)), v4, v7, 288, v1).gas(msg.gas);
        if (!v6) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v7, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
        } else {
            if (!(0x1 & (byte(msg.data[v2], 0x0)))) {
                v8 = v9 = 1;
                v4 = v10 = 0 - (MEM[0] >> 128);
            } else {
                v8 = 1;
                v4 = 0 - int128(MEM[0]);
            }
            v0 = v0 + v8;
        }
    }
    v11 = v12 = 0 - v4;
    if ((byte(msg.data[varg2], v1)) & 0x10) {
        if (0x40 & (byte(msg.data[varg2], v1))) {
            v13 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v13, Error(32, 5, 'ST:F4'));
        }
        v14 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v2 + (msg.data[v2] >> 240)] >> 96, varg0, v12).gas(msg.gas);
        require(v14, Error(32, 5, 'TK:F4'));
        MEM[96] = 0;
        v2 = v2 + 2;
    }
    v15 = v16 = 10509;
    v11 = v17 = byte(msg.data[v2], 0x0);
    if (v17) {
        v18 = v19 = 1 + v2;
        while (1) {
            v11 = v18 + 2;
            v20 = msg.data[v18] >> 240;
            if (v20 & 0x1c0) {
                if ((v20 & 0x1c0) - 64) {
                    if (128 - (v20 & 0x1c0)) {
                        v11 = 22 + v18;
                        if (msg.data[v11] >> 96) {
                            v21, v11 = (msg.data[v11] >> 96).balanceOf(this).gas(msg.gas);
                            if (!v21) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v11 = v22 = 0;
                                if (v21) {
                                    v23 = 32;
                                    if (v23 > RETURNDATASIZE()) {
                                        v23 = v24 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v23 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v11 = this.balance;
                        }
                        if (!(v20 & 0x100)) {
                            v11 = v25 = uint256.max + v11;
                        }
                    } else {
                        v11 = v26 = msg.data[v11];
                        v11 = v11 + 32;
                    }
                } else {
                    v11 = v11 + 3;
                    v11 = v11 * (msg.data[v11] >> 232) >> 24;
                }
            }
            if (!(v20 & 0x30)) {
                v11 = v27 = this;
            } else if (16 == v20 & 0x30) {
                v11 = v28 = 0x4444c5dc75cb358380d2e3de08a90;
            } else if (32 == v20 & 0x30) {
                v11 = v11 + 2;
                v11 = v29 = msg.data[(msg.data[v11] >> 240) + v11] >> 96;
            } else {
                v11 = v30 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
            }
            v15 = v31 = v11 + 2;
            if (bool(v20)) {
                if (bool(v20) - 1) {
                    if (bool(v20) - 2) {
                        if (bool(v20) - 3) {
                            if (4 - bool(v20)) {
                                v32 = v33 = uint256.max;
                                CALLDATACOPY(MEM[64] + 96, 22 + v31, msg.data[v31 + 20] >> 240);
                                v34 = (msg.data[v31] >> 96).delegatecall(this, v11, v11).gas(msg.gas);
                                if (!v34) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v7, MEM[36] + 7, 'EE:RE: ');
                                }
                            } else {
                                v20 = v35 = 8490;
                                0x42d5(v11, v11, v31);
                                v36 = 0;
                                v37 = v38 = v15 + 4;
                                if (msg.data[v15 + 2] >> 240) {
                                    v36 = v39 = msg.data[4 + (v15 + (msg.data[v15 + 2] >> 240))] >> 96;
                                }
                                v11 = v40 = 0;
                                if (msg.data[v15] >> 240 & 0x3) {
                                    if ((msg.data[v15] >> 240 & 0x3) - 1) {
                                        if ((msg.data[v15] >> 240 & 0x3) - 2) {
                                            v41 = v36.balanceOf(v11).gas(msg.gas);
                                            require(v41, Error(32, 5, 'BA:CF'));
                                            v11 = v42 = MEM[0];
                                        }
                                        v43 = v44 = 7;
                                    } else {
                                        v43 = v45 = 7;
                                        v11 = v46 = msg.data[v38];
                                        v37 = v47 = v15 + 36;
                                    }
                                } else {
                                    v43 = 7;
                                }
                                v48 = v49 = v37 + v43;
                                v50 = v51 = MEM[64] + 4;
                                v52 = msg.data[v37 + 4] >> 232;
                                while (v52) {
                                    if (!(v52 & 0x3)) {
                                        MEM[v50] = v11;
                                        v50 = v50 + 32;
                                    } else if (1 == v52 & 0x3) {
                                        MEM[v50] = v11;
                                        v50 = v50 + 32;
                                    } else if (2 == v52 & 0x3) {
                                        MEM[v50] = byte(msg.data[v48], 0x0);
                                        v50 = v50 + 32;
                                        v48 = v48 + 1;
                                    } else {
                                        CALLDATACOPY(v50, v48 + 1, byte(msg.data[v48], 0x0));
                                        v50 = v50 + (byte(msg.data[v48], 0x0));
                                        v48 = v48 + (byte(msg.data[v48], 0x0)) + 1;
                                    }
                                    v52 = v52 >> 3;
                                }
                                if (msg.data[v15] >> 240 & 0x100) {
                                    if (msg.data[v15] >> 240 & 0x200) {
                                        v53 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v53, Error(32, 5, 'ST:CF'));
                                    }
                                    v54 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v48 + (msg.data[v48] >> 240)] >> 96, this, v11).gas(msg.gas);
                                    require(v54, Error(32, 5, 'TK:CF'));
                                    MEM[96] = 0;
                                    v48 = v55 = 2 + v48;
                                }
                                if (msg.data[v15] >> 240 & 0x400) {
                                    if (msg.data[v15] >> 240 & 0x800) {
                                        v56 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v56, Error(32, 5, 'ST:CF'));
                                    }
                                    v57 = 0x4444c5dc75cb358380d2e3de08a90.sync(v36).gas(msg.gas);
                                    require(v57, Error(32, 5, 'SY:CF'));
                                }
                                v11 = v58 = 0;
                                if (msg.data[v15] >> 240 & 0x8) {
                                    if (msg.data[v15] >> 240 & 0x10) {
                                        v59 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v11).gas(msg.gas);
                                        require(v59, Error(32, 5, 'WI:CT'));
                                    }
                                }
                                v60 = (msg.data[v48] >> 96).call(msg.data[v37]).value(v11).gas(msg.gas);
                                if (!v60) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v7, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if ((msg.data[v15] >> 240 & 0x3) - 2) {
                                        if (!((msg.data[v15] >> 240 & 0x3) - 3)) {
                                            v61 = v36.balanceOf(v11).gas(msg.gas);
                                            require(v61, Error(32, 5, 'BA:CD'));
                                            v11 = v62 = MEM[0] - v11;
                                        }
                                    } else if (address(v36)) {
                                        v63 = v36.balanceOf(this).gas(msg.gas);
                                        require(v63, Error(32, 5, 'BA:CT'));
                                        if (!(msg.data[v15] >> 240 & 0x4)) {
                                            v11 = v64 = MEM[0] - 1;
                                        } else {
                                            v11 = v65 = MEM[0];
                                        }
                                    } else {
                                        v11 = v66 = this.balance;
                                    }
                                    if (msg.data[v15] >> 240 & 0x20) {
                                        v36 = v67 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        v68 = v67.deposit().value(v11).gas(msg.gas);
                                        require(v68, Error(32, 5, 'DE:CT'));
                                    }
                                    if (0x40 & msg.data[v15] >> 240) {
                                        if (!v36) {
                                            v69 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v11).gas(msg.gas);
                                            require(v69, Error(32, 5, 'SE:CF'));
                                        } else {
                                            v70 = v36.transfer(v11, v11).gas(msg.gas);
                                            if (!v70) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v7, MEM[36] + 7, 'TR:CF: ');
                                            }
                                        }
                                    }
                                    // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v20 = v71 = 8490;
                            0x4990(v11, v11, v31);
                            v72 = v15 + 2;
                            if (msg.data[v15] >> 240 & 0x10) {
                                if (!(msg.data[v15] >> 240 & 0x100)) {
                                    v73 = (msg.data[v15 + (msg.data[v72] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v11).gas(msg.gas);
                                    if (!v73) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                        revert(v7, MEM[36] + 8, 'TR:B3F: ');
                                    } else {
                                        v72 = v74 = v15 + 4;
                                    }
                                } else {
                                    if (msg.data[v15] >> 240 & 0x200) {
                                        v75 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v75, Error(32, 6, 'ST:B3F'));
                                    }
                                    v76 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v72 + (msg.data[v72] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v11).gas(msg.gas);
                                    require(v76, Error(32, 6, 'TK:B3F'));
                                    MEM[96] = 0;
                                    v72 = v77 = v72 + 2;
                                }
                            }
                            v78 = bool(msg.data[v15] >> 240);
                            while (v78) {
                                if ((byte(msg.data[v72], 0x0)) - 2) {
                                    v79 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v72], 0x0), msg.data[v72 + (msg.data[v72 + 1] >> 240) + 1] >> 96, v11, 0).gas(msg.gas);
                                    if (!v79) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v7, MEM[36] + 7, 'B3B:F: ');
                                    } else {
                                        v80 = v81 = uint256.max;
                                        v11 = v82 = MEM[0];
                                        v72 = v72 + 3;
                                    }
                                } else {
                                    v83 = new uint256[](0);
                                    MEM[v83.data] = msg.data[v72 + 1] >> 96;
                                    v84 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v83, v7, v7, msg.data[v72 + 1 + (msg.data[v72 + 1 + 20] >> 240)] >> 96, msg.data[v72 + 1 + (msg.data[v72 + 1 + 22] >> 240)] >> 96, v11, 0, 0).gas(msg.gas);
                                    if (!v84) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v7, MEM[36] + 7, 'B3S:F: ');
                                    } else {
                                        v80 = v85 = uint256.max;
                                        v11 = v86 = MEM[0];
                                        v72 = v72 + 1 + 24;
                                    }
                                }
                                v78 = v78 + v80;
                            }
                            if (msg.data[v15] >> 240 & 0x20) {
                                v87 = msg.data[v72 + (msg.data[v72] >> 240)] >> 96;
                                if (msg.data[v15] >> 240 & 0x40) {
                                    if (0x80 & msg.data[v15] >> 240) {
                                        v88 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v88, Error(32, 7, 'ST:B3FS'));
                                    }
                                    v89 = 0x4444c5dc75cb358380d2e3de08a90.sync(v87).gas(msg.gas);
                                    require(v89, Error(32, 6, 'SY:B3F'));
                                }
                                v90 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v87, v11, v11).gas(msg.gas);
                                require(v90, Error(32, 5, 'SN:F3'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
                        }
                    } else {
                        v20 = v91 = 8490;
                        0x5008(v11, v11, v31);
                        v92 = v93 = v15 + 22;
                        if (msg.data[v15] >> 240 & 0x10) {
                            v92 = v94 = v15 + 24;
                            if (!(msg.data[v15] >> 240 & 0x20)) {
                                v95 = (msg.data[22 + ((msg.data[v93] >> 240) + v15)] >> 96).transfer(msg.data[v15 + 2] >> 96, v11).gas(msg.gas);
                                if (!v95) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v7, MEM[36] + 7, 'TR:2F: ');
                                }
                            } else {
                                if (msg.data[v15] >> 240 & 0x40) {
                                    v96 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v96, Error(32, 5, 'ST:2F'));
                                }
                                v97 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v93] >> 240) + v15)] >> 96, msg.data[v15 + 2] >> 96, v11).gas(msg.gas);
                                require(v97, Error(32, 5, 'TK:2F'));
                                MEM[96] = 0;
                            }
                        }
                        if (msg.data[v15] >> 240 & 0x100) {
                            if (msg.data[v15] >> 240 & 0x200) {
                                v98 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v98, Error(32, 5, 'ST:22'));
                            }
                            v99 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v92 + (msg.data[v92] >> 240)] >> 96).gas(msg.gas);
                            require(v99, Error(32, 5, 'SY:2F'));
                        }
                        if (bool(msg.data[v15] >> 240)) {
                            if (0 == (bool(msg.data[v15] >> 240) == 1)) {
                                // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
                            }
                        } else {
                            // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
                        }
                    }
                } else {
                    v20 = v100 = 8490;
                    0x5470(v11, v11, v31);
                    v101 = 0;
                    v102 = v103 = v15 + 1;
                    v104 = v101 - v11;
                    while (v101 < bool(byte(msg.data[v15], v101))) {
                        if (0 == 0x2 & (byte(msg.data[v102], 0x0))) {
                            MEM[MEM[64] + 132] = 0;
                            v102 += 11;
                        } else {
                            MEM[MEM[64] + 132] = msg.data[v102] >> 96;
                            v102 += 31;
                        }
                        if (!(0x1 & (byte(msg.data[v102], 0x0)))) {
                            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            MEM[MEM[64] + 228] = 0x1000276a4;
                        }
                        v105 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v102 + (msg.data[1 + v102] >> 240)] >> 96, msg.data[v102 + (msg.data[3 + v102] >> 240)] >> 96, msg.data[v102 + 5] >> 232, msg.data[v102 + 8] >> 232, v7, 0x1 & (byte(msg.data[v102], 0x0)), v104, v7, 288, v101).gas(msg.gas);
                        if (!v105) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v7, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                        } else {
                            if (!(0x1 & (byte(msg.data[v102], 0x0)))) {
                                v106 = v107 = 1;
                                v104 = v108 = 0 - (MEM[0] >> 128);
                            } else {
                                v106 = v109 = 1;
                                v104 = v110 = 0 - int128(MEM[0]);
                            }
                            v101 = v101 + v106;
                        }
                    }
                    if ((byte(msg.data[v15], v101)) & 0x10) {
                        if (0x40 & (byte(msg.data[v15], v101))) {
                            v111 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v111, Error(32, 5, 'ST:F4'));
                        }
                        v112 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v102 + (msg.data[v102] >> 240)] >> 96, v11, 0 - v104).gas(msg.gas);
                        require(v112, Error(32, 5, 'TK:F4'));
                        MEM[96] = 0;
                    }
                    // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
                }
                v32 = v113 = uint256.max;
            } else {
                v20 = v114 = 8372;
                0x5784(v11, v11, v31);
                v32 = uint256.max;
                v115 = v15 + 1;
                if ((byte(msg.data[v15], 0x0)) & 0x2) {
                    if ((byte(msg.data[v15], 0x0)) & 0x8) {
                        v116 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        require(v116, Error(32, 5, 'ST:F3'));
                    }
                    v117 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v15 + (msg.data[v115] >> 240) + 1] >> 96).gas(msg.gas);
                    require(v117, Error(32, 5, 'SY:F3'));
                    v115 = v118 = 3 + v15;
                }
                if (0 != (byte(msg.data[v15], 0x0)) & 0x1) {
                }
                v119 = new uint256[](25);
                MEM8[MEM[64] + 198] = (byte(msg.data[v115], 0x2)) & 0xFF;
                v120 = (msg.data[v115 + 3] >> 96).swap(v11, (byte(msg.data[v15], 0x0)) & 0x1, v11, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v119, v7, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v115 + (msg.data[v115] >> 240)]).gas(msg.gas);
                if (!v120) {
                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                    revert(v7, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                }
            }
            v11 = v11 + v32;
            if (!v11) {
                // Unknown jump to Block 0x290d0x5470. Refer to 3-address code (TAC);
            } else {
                v18 = 2 + ((msg.data[v11] >> 240) + v11);
                if (!(0x200 & v20)) {
                    require(v11 <= v11, Error(20304));
                    v11 = v11 - v11;
                }
            }
        }
    }
    return ;
}

function 0x5784(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    while (1) {
        v0 = v1 + 1;
        if ((byte(msg.data[v1], 0x0)) & 0x2) {
            if ((byte(msg.data[v1], 0x0)) & 0x8) {
                v2 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v2, Error(32, 5, 'ST:F3'));
            }
            v3 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v1 + (msg.data[v0] >> 240) + 1] >> 96).gas(msg.gas);
            require(v3, Error(32, 5, 'SY:F3'));
            v0 = 3 + v1;
        }
        v4 = (byte(msg.data[v1], 0x0)) & 0x1;
        if (0 == v4) {
            MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            MEM[MEM[64] + 196] = 0x1000002000000000000000000000000000000000000000000000000000000;
        } else {
            MEM[MEM[64] + 100] = 0x1000276a4;
            MEM[MEM[64] + 196] = 0x101000002000000000000000000000000000000000000000000000000000000;
        }
        v5 = new uint256[](25);
        MEM8[MEM[64] + 198] = (byte(msg.data[v0], 0x2)) & 0xFF;
        v6 = (msg.data[v0 + 3] >> 96).swap(varg1, v4, varg1, v7, v5, v7, msg.data[v0 + (msg.data[v0] >> 240)]).gas(msg.gas);
        if (!v6) {
            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
            revert(v7, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
        } else {
            v1 = v8 = 10509;
            if (!v4) {
                v9 = v10 = 23;
                varg1 = v11 = 0 - MEM[0];
            } else {
                v9 = v12 = 23;
                varg1 = v13 = 0 - MEM[32];
            }
            varg1 = v14 = byte(msg.data[v0 + v9], 0x0);
            if (!v14) {
                break;
            } else {
                v15 = 1 + (v0 + v9);
                while (1) {
                    varg1 = v15 + 2;
                    v1 = v16 = msg.data[v15] >> 240;
                    if (v16 & 0x1c0) {
                        if ((v16 & 0x1c0) - 64) {
                            if (128 - (v16 & 0x1c0)) {
                                varg1 = 22 + v15;
                                if (msg.data[varg1] >> 96) {
                                    v17, /* uint256 */ varg1 = (msg.data[varg1] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v17) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        varg1 = v18 = 0;
                                        if (v17) {
                                            v19 = 32;
                                            if (v19 > RETURNDATASIZE()) {
                                                v19 = v20 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v19 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    varg1 = v21 = this.balance;
                                }
                                if (!(v16 & 0x100)) {
                                    varg1 = v22 = uint256.max + varg1;
                                }
                            } else {
                                varg1 = v23 = msg.data[varg1];
                                varg1 = varg1 + 32;
                            }
                        } else {
                            varg1 = varg1 + 3;
                            varg1 = varg1 * (msg.data[varg1] >> 232) >> 24;
                        }
                    }
                    if (!(v16 & 0x30)) {
                        varg1 = v24 = this;
                    } else if (16 == v16 & 0x30) {
                        varg1 = v25 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v16 & 0x30) {
                        varg1 = varg1 + 2;
                        varg1 = v26 = msg.data[(msg.data[varg1] >> 240) + varg1] >> 96;
                    } else {
                        varg1 = v27 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v1 = varg1 + 2;
                    if (bool(v16)) {
                        if (bool(v16) - 1) {
                            if (bool(v16) - 2) {
                                if (bool(v16) - 3) {
                                    if (4 - bool(v16)) {
                                        v28 = v29 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v1, msg.data[v1 + 20] >> 240);
                                        v30 = (msg.data[v1] >> 96).delegatecall(this, varg1, varg1).gas(msg.gas);
                                        if (!v30) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v7, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v1 = v31 = 8490;
                                        0x42d5(varg1, varg1, v1);
                                        v32 = 0;
                                        v33 = v1 + 4;
                                        if (msg.data[v1 + 2] >> 240) {
                                            v32 = v34 = msg.data[4 + (v1 + (msg.data[v1 + 2] >> 240))] >> 96;
                                        }
                                        varg1 = v35 = 0;
                                        if (msg.data[v1] >> 240 & 0x3) {
                                            if ((msg.data[v1] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v1] >> 240 & 0x3) - 2) {
                                                    v36 = v32.balanceOf(varg1).gas(msg.gas);
                                                    require(v36, Error(32, 5, 'BA:CF'));
                                                    varg1 = v37 = MEM[0];
                                                }
                                                v38 = v39 = 7;
                                            } else {
                                                v38 = v40 = 7;
                                                varg1 = v41 = msg.data[v33];
                                                v33 = v42 = v1 + 36;
                                            }
                                        } else {
                                            v38 = 7;
                                        }
                                        v43 = v33 + v38;
                                        v44 = MEM[64] + 4;
                                        v45 = msg.data[v33 + 4] >> 232;
                                        while (1) {
                                            if (v45) {
                                                if (!(v45 & 0x3)) {
                                                    MEM[v44] = varg1;
                                                    v44 = v44 + 32;
                                                } else if (1 == v45 & 0x3) {
                                                    MEM[v44] = varg1;
                                                    v44 = v44 + 32;
                                                } else if (2 == v45 & 0x3) {
                                                    MEM[v44] = byte(msg.data[v43], 0x0);
                                                    v44 = v44 + 32;
                                                    v43 = v43 + 1;
                                                } else {
                                                    CALLDATACOPY(v44, v43 + 1, byte(msg.data[v43], 0x0));
                                                    v44 = v44 + (byte(msg.data[v43], 0x0));
                                                    v43 = v43 + (byte(msg.data[v43], 0x0)) + 1;
                                                }
                                                v45 = v45 >> 3;
                                                continue;
                                            } else {
                                                if (msg.data[v1] >> 240 & 0x100) {
                                                    if (msg.data[v1] >> 240 & 0x200) {
                                                        v46 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v46, Error(32, 5, 'ST:CF'));
                                                    }
                                                    v47 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v43 + (msg.data[v43] >> 240)] >> 96, this, varg1).gas(msg.gas);
                                                    require(v47, Error(32, 5, 'TK:CF'));
                                                    MEM[96] = 0;
                                                    v43 = v48 = 2 + v43;
                                                }
                                                if (msg.data[v1] >> 240 & 0x400) {
                                                    if (msg.data[v1] >> 240 & 0x800) {
                                                        v49 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v49, Error(32, 5, 'ST:CF'));
                                                    }
                                                    v50 = 0x4444c5dc75cb358380d2e3de08a90.sync(v32).gas(msg.gas);
                                                    require(v50, Error(32, 5, 'SY:CF'));
                                                }
                                                varg1 = v51 = 0;
                                                if (msg.data[v1] >> 240 & 0x8) {
                                                    if (msg.data[v1] >> 240 & 0x10) {
                                                        v52 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
                                                        require(v52, Error(32, 5, 'WI:CT'));
                                                    }
                                                }
                                                v53 = (msg.data[v43] >> 96).call(msg.data[v33]).value(varg1).gas(msg.gas);
                                                if (!v53) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v7, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                                } else {
                                                    if ((msg.data[v1] >> 240 & 0x3) - 2) {
                                                        if (!((msg.data[v1] >> 240 & 0x3) - 3)) {
                                                            v54 = v32.balanceOf(varg1).gas(msg.gas);
                                                            require(v54, Error(32, 5, 'BA:CD'));
                                                            varg1 = v55 = MEM[0] - varg1;
                                                        }
                                                    } else if (address(v32)) {
                                                        v56 = v32.balanceOf(this).gas(msg.gas);
                                                        require(v56, Error(32, 5, 'BA:CT'));
                                                        if (!(msg.data[v1] >> 240 & 0x4)) {
                                                            varg1 = v57 = MEM[0] - 1;
                                                        } else {
                                                            varg1 = v58 = MEM[0];
                                                        }
                                                    } else {
                                                        varg1 = v59 = this.balance;
                                                    }
                                                    if (msg.data[v1] >> 240 & 0x20) {
                                                        v32 = v60 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                        v61 = v60.deposit().value(varg1).gas(msg.gas);
                                                        require(v61, Error(32, 5, 'DE:CT'));
                                                    }
                                                    if (0x40 & msg.data[v1] >> 240) {
                                                        if (!v32) {
                                                            v62 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                                                            require(v62, Error(32, 5, 'SE:CF'));
                                                        } else {
                                                            v63 = v32.transfer(varg1, varg1).gas(msg.gas);
                                                            if (!v63) {
                                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                                RETURNDATACOPY(0, 0, 68);
                                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                                revert(v7, MEM[36] + 7, 'TR:CF: ');
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    v1 = v64 = 8490;
                                    0x4990(varg1, varg1, v1);
                                    v65 = v1 + 2;
                                    if (msg.data[v1] >> 240 & 0x10) {
                                        if (!(msg.data[v1] >> 240 & 0x100)) {
                                            v66 = (msg.data[v1 + (msg.data[v65] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                            if (!v66) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v7, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v65 = v67 = v1 + 4;
                                            }
                                        } else {
                                            if (msg.data[v1] >> 240 & 0x200) {
                                                v68 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v68, Error(32, 6, 'ST:B3F'));
                                            }
                                            v69 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v65 + (msg.data[v65] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, varg1).gas(msg.gas);
                                            require(v69, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v65 = v70 = v65 + 2;
                                        }
                                    }
                                    v71 = bool(msg.data[v1] >> 240);
                                    while (1) {
                                        if (!v71) {
                                            if (msg.data[v1] >> 240 & 0x20) {
                                                v72 = msg.data[v65 + (msg.data[v65] >> 240)] >> 96;
                                                if (msg.data[v1] >> 240 & 0x40) {
                                                    if (0x80 & msg.data[v1] >> 240) {
                                                        v73 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v73, Error(32, 7, 'ST:B3FS'));
                                                    }
                                                    v74 = 0x4444c5dc75cb358380d2e3de08a90.sync(v72).gas(msg.gas);
                                                    require(v74, Error(32, 6, 'SY:B3F'));
                                                }
                                                v75 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v72, varg1, varg1).gas(msg.gas);
                                                require(v75, Error(32, 5, 'SN:F3'));
                                                MEM[96] = 0;
                                            }
                                        } else {
                                            if ((byte(msg.data[v65], 0x0)) - 2) {
                                                v76 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v65], 0x0), msg.data[v65 + (msg.data[v65 + 1] >> 240) + 1] >> 96, varg1, 0).gas(msg.gas);
                                                if (!v76) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v7, MEM[36] + 7, 'B3B:F: ');
                                                } else {
                                                    v77 = v78 = uint256.max;
                                                    varg1 = v79 = MEM[0];
                                                    v65 = v65 + 3;
                                                }
                                            } else {
                                                v80 = new uint256[](0);
                                                MEM[v80.data] = msg.data[v65 + 1] >> 96;
                                                v81 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v80, v7, v7, msg.data[v65 + 1 + (msg.data[v65 + 1 + 20] >> 240)] >> 96, msg.data[v65 + 1 + (msg.data[v65 + 1 + 22] >> 240)] >> 96, varg1, 0, 0).gas(msg.gas);
                                                if (!v81) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v7, MEM[36] + 7, 'B3S:F: ');
                                                } else {
                                                    v77 = uint256.max;
                                                    varg1 = v82 = MEM[0];
                                                    v65 = v65 + 1 + 24;
                                                }
                                            }
                                            v71 = v71 + v77;
                                            continue;
                                        }
                                    }
                                }
                            } else {
                                v1 = v83 = 8490;
                                0x5008(varg1, varg1, v1);
                                v84 = v1 + 22;
                                if (msg.data[v1] >> 240 & 0x10) {
                                    v84 = v85 = v1 + 24;
                                    if (!(msg.data[v1] >> 240 & 0x20)) {
                                        v86 = (msg.data[22 + ((msg.data[v84] >> 240) + v1)] >> 96).transfer(msg.data[v1 + 2] >> 96, varg1).gas(msg.gas);
                                        if (!v86) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v7, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v1] >> 240 & 0x40) {
                                            v87 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v87, Error(32, 5, 'ST:2F'));
                                        }
                                        v88 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v84] >> 240) + v1)] >> 96, msg.data[v1 + 2] >> 96, varg1).gas(msg.gas);
                                        require(v88, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v1] >> 240 & 0x100) {
                                    if (msg.data[v1] >> 240 & 0x200) {
                                        v89 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v89, Error(32, 5, 'ST:22'));
                                    }
                                    v90 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v84 + (msg.data[v84] >> 240)] >> 96).gas(msg.gas);
                                    require(v90, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v1] >> 240)) {
                                    if (0 != (bool(msg.data[v1] >> 240) == 1)) {
                                    }
                                }
                            }
                        } else {
                            v1 = v91 = 8490;
                            0x5470(varg1, varg1, v1);
                            v92 = 0;
                            v93 = v1 + 1;
                            v94 = v92 - varg1;
                            while (1) {
                                if (v92 < bool(byte(msg.data[v1], v92))) {
                                    if (0 == 0x2 & (byte(msg.data[v93], 0x0))) {
                                        MEM[MEM[64] + 132] = 0;
                                        v93 += 11;
                                    } else {
                                        MEM[MEM[64] + 132] = msg.data[v93] >> 96;
                                        v93 += 31;
                                    }
                                    if (!(0x1 & (byte(msg.data[v93], 0x0)))) {
                                        MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                    } else {
                                        MEM[MEM[64] + 228] = 0x1000276a4;
                                    }
                                    v95 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v93 + (msg.data[1 + v93] >> 240)] >> 96, msg.data[v93 + (msg.data[3 + v93] >> 240)] >> 96, msg.data[v93 + 5] >> 232, msg.data[v93 + 8] >> 232, v7, 0x1 & (byte(msg.data[v93], 0x0)), v94, v7, 288, v92).gas(msg.gas);
                                    if (!v95) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v7, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if (!(0x1 & (byte(msg.data[v93], 0x0)))) {
                                            v96 = v97 = 1;
                                            v94 = v98 = 0 - (MEM[0] >> 128);
                                        } else {
                                            v96 = 1;
                                            v94 = v99 = 0 - int128(MEM[0]);
                                        }
                                        v92 = v92 + v96;
                                    }
                                } else if ((byte(msg.data[v1], v92)) & 0x10) {
                                    if (0x40 & (byte(msg.data[v1], v92))) {
                                        v100 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v100, Error(32, 5, 'ST:F4'));
                                    }
                                    v101 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v93 + (msg.data[v93] >> 240)] >> 96, varg1, 0 - v94).gas(msg.gas);
                                    require(v101, Error(32, 5, 'TK:F4'));
                                    MEM[96] = 0;
                                }
                            }
                        }
                        v28 = v102 = uint256.max;
                        // Unknown jump to Block 0x20d70x5784. Refer to 3-address code (TAC);
                    } else {
                        v1 = v103 = 8372;
                        0x5784(varg1, varg1, v1);
                        v28 = uint256.max;
                    }
                    varg1 = varg1 + v28;
                    if (!varg1) {
                        // Unknown jump to Block 0x290d0x5784. Refer to 3-address code (TAC);
                    } else {
                        v15 = 2 + ((msg.data[varg1] >> 240) + varg1);
                        if (!(0x200 & v1)) {
                            require(varg1 <= varg1, Error(20304));
                            varg1 = varg1 - varg1;
                        }
                    }
                }
            }
            return ;
        }
    }
}

function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 24;
    v2 = v3 = 133;
    if ((byte(varg2, 0x0)) & 0x10) {
        if (!((byte(varg2, 0x0)) & 0x1)) {
            v4 = v5 = 960;
            v6 = v7 = 0 - varg0;
            v6 = v8 = byte(varg4, 0x0);
            if (v8) {
                v9 = v10 = 136;
                while (1) {
                    v6 = v9 + 2;
                    v11 = msg.data[v9] >> 240;
                    if (v11 & 0x1c0) {
                        if ((v11 & 0x1c0) - 64) {
                            if (128 - (v11 & 0x1c0)) {
                                v6 = 22 + v9;
                                if (msg.data[v6] >> 96) {
                                    v12, v6 = (msg.data[v6] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v12) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v6 = v13 = 0;
                                        if (v12) {
                                            v14 = 32;
                                            if (v14 > RETURNDATASIZE()) {
                                                v14 = v15 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v14 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v6 = this.balance;
                                }
                                if (!(v11 & 0x100)) {
                                    v6 = v16 = uint256.max + v6;
                                }
                            } else {
                                v6 = v17 = msg.data[v6];
                                v6 = v6 + 32;
                            }
                        } else {
                            v6 = v6 + 3;
                            v6 = v6 * (msg.data[v6] >> 232) >> 24;
                        }
                    }
                    if (!(v11 & 0x30)) {
                        v6 = v18 = this;
                    } else if (16 == v11 & 0x30) {
                        v6 = v19 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v11 & 0x30) {
                        v6 = v6 + 2;
                        v6 = v20 = msg.data[(msg.data[v6] >> 240) + v6] >> 96;
                    } else {
                        v6 = v21 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v4 = v22 = v6 + 2;
                    if (bool(v11)) {
                        if (bool(v11) - 1) {
                            if (bool(v11) - 2) {
                                if (bool(v11) - 3) {
                                    if (4 - bool(v11)) {
                                        v23 = v24 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v22, msg.data[v22 + 20] >> 240);
                                        v25 = (msg.data[v22] >> 96).delegatecall(this, v6, v6).gas(msg.gas);
                                        if (!v25) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v11 = v27 = 8490;
                                        0x42d5(v6, v6, v22);
                                        v28 = 0;
                                        v29 = v30 = v4 + 4;
                                        if (msg.data[v4 + 2] >> 240) {
                                            v28 = v31 = msg.data[4 + (v4 + (msg.data[v4 + 2] >> 240))] >> 96;
                                        }
                                        v6 = v32 = 0;
                                        if (msg.data[v4] >> 240 & 0x3) {
                                            if ((msg.data[v4] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v4] >> 240 & 0x3) - 2) {
                                                    v33 = v28.balanceOf(v6).gas(msg.gas);
                                                    require(v33, Error(32, 5, 'BA:CF'));
                                                    v6 = v34 = MEM[0];
                                                }
                                                v35 = v36 = 7;
                                            } else {
                                                v35 = v37 = 7;
                                                v6 = v38 = msg.data[v30];
                                                v29 = v39 = v4 + 36;
                                            }
                                        } else {
                                            v35 = 7;
                                        }
                                        v40 = v41 = v29 + v35;
                                        v42 = v43 = MEM[64] + 4;
                                        v44 = msg.data[v29 + 4] >> 232;
                                        while (v44) {
                                            if (!(v44 & 0x3)) {
                                                MEM[v42] = v6;
                                                v42 = v42 + 32;
                                            } else if (1 == v44 & 0x3) {
                                                MEM[v42] = v6;
                                                v42 = v42 + 32;
                                            } else if (2 == v44 & 0x3) {
                                                MEM[v42] = byte(msg.data[v40], 0x0);
                                                v42 = v42 + 32;
                                                v40 = v40 + 1;
                                            } else {
                                                CALLDATACOPY(v42, v40 + 1, byte(msg.data[v40], 0x0));
                                                v42 = v42 + (byte(msg.data[v40], 0x0));
                                                v40 = v40 + (byte(msg.data[v40], 0x0)) + 1;
                                            }
                                            v44 = v44 >> 3;
                                        }
                                        if (msg.data[v4] >> 240 & 0x100) {
                                            if (msg.data[v4] >> 240 & 0x200) {
                                                v45 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v45, Error(32, 5, 'ST:CF'));
                                            }
                                            v46 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v40 + (msg.data[v40] >> 240)] >> 96, this, v6).gas(msg.gas);
                                            require(v46, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v40 = v47 = 2 + v40;
                                        }
                                        if (msg.data[v4] >> 240 & 0x400) {
                                            if (msg.data[v4] >> 240 & 0x800) {
                                                v48 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v48, Error(32, 5, 'ST:CF'));
                                            }
                                            v49 = 0x4444c5dc75cb358380d2e3de08a90.sync(v28).gas(msg.gas);
                                            require(v49, Error(32, 5, 'SY:CF'));
                                        }
                                        v6 = v50 = 0;
                                        if (msg.data[v4] >> 240 & 0x8) {
                                            if (msg.data[v4] >> 240 & 0x10) {
                                                v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v6).gas(msg.gas);
                                                require(v51, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v52 = (msg.data[v40] >> 96).call(msg.data[v29]).value(v6).gas(msg.gas);
                                        if (!v52) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v4] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v4] >> 240 & 0x3) - 3)) {
                                                    v53 = v28.balanceOf(v6).gas(msg.gas);
                                                    require(v53, Error(32, 5, 'BA:CD'));
                                                    v6 = v54 = MEM[0] - v6;
                                                }
                                            } else if (address(v28)) {
                                                v55 = v28.balanceOf(this).gas(msg.gas);
                                                require(v55, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v4] >> 240 & 0x4)) {
                                                    v6 = v56 = MEM[0] - 1;
                                                } else {
                                                    v6 = v57 = MEM[0];
                                                }
                                            } else {
                                                v6 = v58 = this.balance;
                                            }
                                            if (msg.data[v4] >> 240 & 0x20) {
                                                v28 = v59 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v60 = v59.deposit().value(v6).gas(msg.gas);
                                                require(v60, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v4] >> 240) {
                                                if (!v28) {
                                                    v61 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v6).gas(msg.gas);
                                                    require(v61, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v62 = v28.transfer(v6, v6).gas(msg.gas);
                                                    if (!v62) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v26, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v11 = v63 = 8490;
                                    0x4990(v6, v6, v22);
                                    v64 = v4 + 2;
                                    if (msg.data[v4] >> 240 & 0x10) {
                                        if (!(msg.data[v4] >> 240 & 0x100)) {
                                            v65 = (msg.data[v4 + (msg.data[v64] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v6).gas(msg.gas);
                                            if (!v65) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v64 = v66 = v4 + 4;
                                            }
                                        } else {
                                            if (msg.data[v4] >> 240 & 0x200) {
                                                v67 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v67, Error(32, 6, 'ST:B3F'));
                                            }
                                            v68 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v64 + (msg.data[v64] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v6).gas(msg.gas);
                                            require(v68, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v64 = v69 = v64 + 2;
                                        }
                                    }
                                    v70 = bool(msg.data[v4] >> 240);
                                    while (v70) {
                                        if ((byte(msg.data[v64], 0x0)) - 2) {
                                            v71 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v64], 0x0), msg.data[v64 + (msg.data[v64 + 1] >> 240) + 1] >> 96, v6, 0).gas(msg.gas);
                                            if (!v71) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v72 = v73 = uint256.max;
                                                v6 = v74 = MEM[0];
                                                v64 = v64 + 3;
                                            }
                                        } else {
                                            v75 = new uint256[](0);
                                            MEM[v75.data] = msg.data[v64 + 1] >> 96;
                                            v76 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v75, v26, v26, msg.data[v64 + 1 + (msg.data[v64 + 1 + 20] >> 240)] >> 96, msg.data[v64 + 1 + (msg.data[v64 + 1 + 22] >> 240)] >> 96, v6, 0, 0).gas(msg.gas);
                                            if (!v76) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v72 = v77 = uint256.max;
                                                v6 = v78 = MEM[0];
                                                v64 = v64 + 1 + 24;
                                            }
                                        }
                                        v70 = v70 + v72;
                                    }
                                    if (msg.data[v4] >> 240 & 0x20) {
                                        v79 = msg.data[v64 + (msg.data[v64] >> 240)] >> 96;
                                        if (msg.data[v4] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v4] >> 240) {
                                                v80 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v80, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v81 = 0x4444c5dc75cb358380d2e3de08a90.sync(v79).gas(msg.gas);
                                            require(v81, Error(32, 6, 'SY:B3F'));
                                        }
                                        v82 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v79, v6, v6).gas(msg.gas);
                                        require(v82, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                }
                            } else {
                                v11 = v83 = 8490;
                                0x5008(v6, v6, v22);
                                v84 = v85 = v4 + 22;
                                if (msg.data[v4] >> 240 & 0x10) {
                                    v84 = v86 = v4 + 24;
                                    if (!(msg.data[v4] >> 240 & 0x20)) {
                                        v87 = (msg.data[22 + ((msg.data[v85] >> 240) + v4)] >> 96).transfer(msg.data[v4 + 2] >> 96, v6).gas(msg.gas);
                                        if (!v87) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v4] >> 240 & 0x40) {
                                            v88 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v88, Error(32, 5, 'ST:2F'));
                                        }
                                        v89 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v85] >> 240) + v4)] >> 96, msg.data[v4 + 2] >> 96, v6).gas(msg.gas);
                                        require(v89, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v4] >> 240 & 0x100) {
                                    if (msg.data[v4] >> 240 & 0x200) {
                                        v90 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v90, Error(32, 5, 'ST:22'));
                                    }
                                    v91 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v84 + (msg.data[v84] >> 240)] >> 96).gas(msg.gas);
                                    require(v91, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v4] >> 240)) {
                                    if (0 == (bool(msg.data[v4] >> 240) == 1)) {
                                        // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v11 = v92 = 8490;
                            0x5470(v6, v6, v22);
                            v93 = 0;
                            v94 = v95 = v4 + 1;
                            v96 = v93 - v6;
                            while (v93 < bool(byte(msg.data[v4], v93))) {
                                if (0 == 0x2 & (byte(msg.data[v94], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v94 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v94] >> 96;
                                    v94 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v94], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v97 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v94 + (msg.data[1 + v94] >> 240)] >> 96, msg.data[v94 + (msg.data[3 + v94] >> 240)] >> 96, msg.data[v94 + 5] >> 232, msg.data[v94 + 8] >> 232, v26, 0x1 & (byte(msg.data[v94], 0x0)), v96, v26, 288, v93).gas(msg.gas);
                                if (!v97) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v26, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v94], 0x0)))) {
                                        v98 = v99 = 1;
                                        v96 = v100 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v98 = v101 = 1;
                                        v96 = v102 = 0 - int128(MEM[0]);
                                    }
                                    v93 = v93 + v98;
                                }
                            }
                            if ((byte(msg.data[v4], v93)) & 0x10) {
                                if (0x40 & (byte(msg.data[v4], v93))) {
                                    v103 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v103, Error(32, 5, 'ST:F4'));
                                }
                                v104 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v94 + (msg.data[v94] >> 240)] >> 96, v6, 0 - v96).gas(msg.gas);
                                require(v104, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                        }
                        v23 = v105 = uint256.max;
                    } else {
                        v11 = v106 = 8372;
                        0x5784(v6, v6, v22);
                        v23 = uint256.max;
                        v107 = v4 + 1;
                        if ((byte(msg.data[v4], 0x0)) & 0x2) {
                            if ((byte(msg.data[v4], 0x0)) & 0x8) {
                                v108 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v108, Error(32, 5, 'ST:F3'));
                            }
                            v109 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v4 + (msg.data[v107] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v109, Error(32, 5, 'SY:F3'));
                            v107 = v110 = 3 + v4;
                        }
                        if (0 != (byte(msg.data[v4], 0x0)) & 0x1) {
                        }
                        v111 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v107], 0x2)) & 0xFF;
                        v112 = (msg.data[v107 + 3] >> 96).swap(v6, (byte(msg.data[v4], 0x0)) & 0x1, v6, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v111, v26, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v107 + (msg.data[v107] >> 240)]).gas(msg.gas);
                        if (!v112) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v26, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v6 = v6 + v23;
                    if (!v6) {
                        // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                    } else {
                        v9 = 2 + ((msg.data[v6] >> 240) + v6);
                        if (!(0x200 & v11)) {
                            require(v6 <= v6, Error(20304));
                            v6 = v6 - v6;
                        }
                    }
                }
            }
        } else {
            v113 = v114 = 960;
            v115 = v116 = 0 - varg1;
            v115 = v117 = byte(varg4, 0x0);
            if (v117) {
                v118 = v119 = 136;
                while (1) {
                    v115 = v118 + 2;
                    v120 = msg.data[v118] >> 240;
                    if (v120 & 0x1c0) {
                        if ((v120 & 0x1c0) - 64) {
                            if (128 - (v120 & 0x1c0)) {
                                v115 = 22 + v118;
                                if (msg.data[v115] >> 96) {
                                    v121, v115 = (msg.data[v115] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v121) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v115 = v122 = 0;
                                        if (v121) {
                                            v123 = 32;
                                            if (v123 > RETURNDATASIZE()) {
                                                v123 = v124 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v123 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v123 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v123 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v123 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v115 = this.balance;
                                }
                                if (!(v120 & 0x100)) {
                                    v115 = v125 = uint256.max + v115;
                                }
                            } else {
                                v115 = v126 = msg.data[v115];
                                v115 = v115 + 32;
                            }
                        } else {
                            v115 = v115 + 3;
                            v115 = v115 * (msg.data[v115] >> 232) >> 24;
                        }
                    }
                    if (!(v120 & 0x30)) {
                        v115 = v127 = this;
                    } else if (16 == v120 & 0x30) {
                        v115 = v128 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v120 & 0x30) {
                        v115 = v115 + 2;
                        v115 = v129 = msg.data[(msg.data[v115] >> 240) + v115] >> 96;
                    } else {
                        v115 = v130 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v113 = v131 = v115 + 2;
                    if (bool(v120)) {
                        if (bool(v120) - 1) {
                            if (bool(v120) - 2) {
                                if (bool(v120) - 3) {
                                    if (4 - bool(v120)) {
                                        v132 = v133 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v131, msg.data[v131 + 20] >> 240);
                                        v134 = (msg.data[v131] >> 96).delegatecall(this, v115, v115).gas(msg.gas);
                                        if (!v134) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v120 = v135 = 8490;
                                        0x42d5(v115, v115, v131);
                                        v136 = 0;
                                        v137 = v138 = v113 + 4;
                                        if (msg.data[v113 + 2] >> 240) {
                                            v136 = v139 = msg.data[4 + (v113 + (msg.data[v113 + 2] >> 240))] >> 96;
                                        }
                                        v115 = v140 = 0;
                                        if (msg.data[v113] >> 240 & 0x3) {
                                            if ((msg.data[v113] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v113] >> 240 & 0x3) - 2) {
                                                    v141 = v136.balanceOf(v115).gas(msg.gas);
                                                    require(v141, Error(32, 5, 'BA:CF'));
                                                    v115 = v142 = MEM[0];
                                                }
                                                v143 = v144 = 7;
                                            } else {
                                                v143 = v145 = 7;
                                                v115 = v146 = msg.data[v138];
                                                v137 = v147 = v113 + 36;
                                            }
                                        } else {
                                            v143 = 7;
                                        }
                                        v148 = v149 = v137 + v143;
                                        v150 = v151 = MEM[64] + 4;
                                        v152 = msg.data[v137 + 4] >> 232;
                                        while (v152) {
                                            if (!(v152 & 0x3)) {
                                                MEM[v150] = v115;
                                                v150 = v150 + 32;
                                            } else if (1 == v152 & 0x3) {
                                                MEM[v150] = v115;
                                                v150 = v150 + 32;
                                            } else if (2 == v152 & 0x3) {
                                                MEM[v150] = byte(msg.data[v148], 0x0);
                                                v150 = v150 + 32;
                                                v148 = v148 + 1;
                                            } else {
                                                CALLDATACOPY(v150, v148 + 1, byte(msg.data[v148], 0x0));
                                                v150 = v150 + (byte(msg.data[v148], 0x0));
                                                v148 = v148 + (byte(msg.data[v148], 0x0)) + 1;
                                            }
                                            v152 = v152 >> 3;
                                        }
                                        if (msg.data[v113] >> 240 & 0x100) {
                                            if (msg.data[v113] >> 240 & 0x200) {
                                                v153 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v153, Error(32, 5, 'ST:CF'));
                                            }
                                            v154 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v148 + (msg.data[v148] >> 240)] >> 96, this, v115).gas(msg.gas);
                                            require(v154, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v148 = v155 = 2 + v148;
                                        }
                                        if (msg.data[v113] >> 240 & 0x400) {
                                            if (msg.data[v113] >> 240 & 0x800) {
                                                v156 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v156, Error(32, 5, 'ST:CF'));
                                            }
                                            v157 = 0x4444c5dc75cb358380d2e3de08a90.sync(v136).gas(msg.gas);
                                            require(v157, Error(32, 5, 'SY:CF'));
                                        }
                                        v115 = v158 = 0;
                                        if (msg.data[v113] >> 240 & 0x8) {
                                            if (msg.data[v113] >> 240 & 0x10) {
                                                v159 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v115).gas(msg.gas);
                                                require(v159, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v160 = (msg.data[v148] >> 96).call(msg.data[v137]).value(v115).gas(msg.gas);
                                        if (!v160) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v113] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v113] >> 240 & 0x3) - 3)) {
                                                    v161 = v136.balanceOf(v115).gas(msg.gas);
                                                    require(v161, Error(32, 5, 'BA:CD'));
                                                    v115 = v162 = MEM[0] - v115;
                                                }
                                            } else if (address(v136)) {
                                                v163 = v136.balanceOf(this).gas(msg.gas);
                                                require(v163, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v113] >> 240 & 0x4)) {
                                                    v115 = v164 = MEM[0] - 1;
                                                } else {
                                                    v115 = v165 = MEM[0];
                                                }
                                            } else {
                                                v115 = v166 = this.balance;
                                            }
                                            if (msg.data[v113] >> 240 & 0x20) {
                                                v136 = v167 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v168 = v167.deposit().value(v115).gas(msg.gas);
                                                require(v168, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v113] >> 240) {
                                                if (!v136) {
                                                    v169 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v115).gas(msg.gas);
                                                    require(v169, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v170 = v136.transfer(v115, v115).gas(msg.gas);
                                                    if (!v170) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v26, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v120 = v171 = 8490;
                                    0x4990(v115, v115, v131);
                                    v172 = v113 + 2;
                                    if (msg.data[v113] >> 240 & 0x10) {
                                        if (!(msg.data[v113] >> 240 & 0x100)) {
                                            v173 = (msg.data[v113 + (msg.data[v172] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v115).gas(msg.gas);
                                            if (!v173) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v172 = v174 = v113 + 4;
                                            }
                                        } else {
                                            if (msg.data[v113] >> 240 & 0x200) {
                                                v175 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v175, Error(32, 6, 'ST:B3F'));
                                            }
                                            v176 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v172 + (msg.data[v172] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v115).gas(msg.gas);
                                            require(v176, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v172 = v177 = v172 + 2;
                                        }
                                    }
                                    v178 = bool(msg.data[v113] >> 240);
                                    while (v178) {
                                        if ((byte(msg.data[v172], 0x0)) - 2) {
                                            v179 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v172], 0x0), msg.data[v172 + (msg.data[v172 + 1] >> 240) + 1] >> 96, v115, 0).gas(msg.gas);
                                            if (!v179) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v180 = v181 = uint256.max;
                                                v115 = v182 = MEM[0];
                                                v172 = v172 + 3;
                                            }
                                        } else {
                                            v183 = new uint256[](0);
                                            MEM[v183.data] = msg.data[v172 + 1] >> 96;
                                            v184 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v183, v26, v26, msg.data[v172 + 1 + (msg.data[v172 + 1 + 20] >> 240)] >> 96, msg.data[v172 + 1 + (msg.data[v172 + 1 + 22] >> 240)] >> 96, v115, 0, 0).gas(msg.gas);
                                            if (!v184) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v180 = v185 = uint256.max;
                                                v115 = v186 = MEM[0];
                                                v172 = v172 + 1 + 24;
                                            }
                                        }
                                        v178 = v178 + v180;
                                    }
                                    if (msg.data[v113] >> 240 & 0x20) {
                                        v187 = msg.data[v172 + (msg.data[v172] >> 240)] >> 96;
                                        if (msg.data[v113] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v113] >> 240) {
                                                v188 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v188, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v189 = 0x4444c5dc75cb358380d2e3de08a90.sync(v187).gas(msg.gas);
                                            require(v189, Error(32, 6, 'SY:B3F'));
                                        }
                                        v190 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v187, v115, v115).gas(msg.gas);
                                        require(v190, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                }
                            } else {
                                v120 = v191 = 8490;
                                0x5008(v115, v115, v131);
                                v192 = v193 = v113 + 22;
                                if (msg.data[v113] >> 240 & 0x10) {
                                    v192 = v194 = v113 + 24;
                                    if (!(msg.data[v113] >> 240 & 0x20)) {
                                        v195 = (msg.data[22 + ((msg.data[v193] >> 240) + v113)] >> 96).transfer(msg.data[v113 + 2] >> 96, v115).gas(msg.gas);
                                        if (!v195) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v113] >> 240 & 0x40) {
                                            v196 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v196, Error(32, 5, 'ST:2F'));
                                        }
                                        v197 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v193] >> 240) + v113)] >> 96, msg.data[v113 + 2] >> 96, v115).gas(msg.gas);
                                        require(v197, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v113] >> 240 & 0x100) {
                                    if (msg.data[v113] >> 240 & 0x200) {
                                        v198 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v198, Error(32, 5, 'ST:22'));
                                    }
                                    v199 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v192 + (msg.data[v192] >> 240)] >> 96).gas(msg.gas);
                                    require(v199, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v113] >> 240)) {
                                    if (0 == (bool(msg.data[v113] >> 240) == 1)) {
                                        // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v120 = v200 = 8490;
                            0x5470(v115, v115, v131);
                            v201 = 0;
                            v202 = v203 = v113 + 1;
                            v204 = v201 - v115;
                            while (v201 < bool(byte(msg.data[v113], v201))) {
                                if (0 == 0x2 & (byte(msg.data[v202], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v202 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v202] >> 96;
                                    v202 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v202], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v205 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v202 + (msg.data[1 + v202] >> 240)] >> 96, msg.data[v202 + (msg.data[3 + v202] >> 240)] >> 96, msg.data[v202 + 5] >> 232, msg.data[v202 + 8] >> 232, v26, 0x1 & (byte(msg.data[v202], 0x0)), v204, v26, 288, v201).gas(msg.gas);
                                if (!v205) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v26, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v202], 0x0)))) {
                                        v206 = v207 = 1;
                                        v204 = v208 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v206 = v209 = 1;
                                        v204 = v210 = 0 - int128(MEM[0]);
                                    }
                                    v201 = v201 + v206;
                                }
                            }
                            if ((byte(msg.data[v113], v201)) & 0x10) {
                                if (0x40 & (byte(msg.data[v113], v201))) {
                                    v211 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v211, Error(32, 5, 'ST:F4'));
                                }
                                v212 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v202 + (msg.data[v202] >> 240)] >> 96, v115, 0 - v204).gas(msg.gas);
                                require(v212, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                        }
                        v132 = v213 = uint256.max;
                    } else {
                        v120 = v214 = 8372;
                        0x5784(v115, v115, v131);
                        v132 = uint256.max;
                        v215 = v113 + 1;
                        if ((byte(msg.data[v113], 0x0)) & 0x2) {
                            if ((byte(msg.data[v113], 0x0)) & 0x8) {
                                v216 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v216, Error(32, 5, 'ST:F3'));
                            }
                            v217 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v113 + (msg.data[v215] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v217, Error(32, 5, 'SY:F3'));
                            v215 = v218 = 3 + v113;
                        }
                        if (0 != (byte(msg.data[v113], 0x0)) & 0x1) {
                        }
                        v219 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v215], 0x2)) & 0xFF;
                        v220 = (msg.data[v215 + 3] >> 96).swap(v115, (byte(msg.data[v113], 0x0)) & 0x1, v115, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v219, v26, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v215 + (msg.data[v215] >> 240)]).gas(msg.gas);
                        if (!v220) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v26, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v115 = v115 + v132;
                    if (!v115) {
                        // Unknown jump to Block 0x3c0. Refer to 3-address code (TAC);
                    } else {
                        v118 = 2 + ((msg.data[v115] >> 240) + v115);
                        if (!(0x200 & v120)) {
                            require(v115 <= v115, Error(20304));
                            v115 = v115 - v115;
                        }
                    }
                }
            }
        }
        v2 = v221 = (varg3 >> 240) + 135;
    }
    if ((byte(varg2, 0x0)) & 0x1) {
    }
    v0 = v222 = msg.sender;
    v0 = byte(msg.data[v2], 0x0);
    if (v0) {
        v223 = 1 + v2;
        while (1) {
            v0 = v224 = byte(msg.data[v223], 0x0);
            v0 = v223 + 1;
            if (bool(v224) >= 13) {
                if (bool(v224) - 13) {
                    if (14 - bool(v224)) {
                        v223 = v223 + 3;
                        if (v224 & 0x40) {
                            if (0x80 & v224) {
                                v225 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v225, Error(32, 6, 'ST:EC3'));
                            }
                            v226 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[v0] >> 240) + v223)] >> 96).gas(msg.gas);
                            require(v226, Error(32, 6, 'SY:EC3'));
                        }
                        v227 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[v0] >> 240) + v223)] >> 96, v0, v0).gas(msg.gas);
                        require(v227, Error(32, 5, 'SN:EC'));
                        v228 = v229 = uint256.max;
                        MEM[96] = 0;
                    } else {
                        if (0x40 & v224) {
                            v230 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v230, Error(32, 5, 'ST:EC'));
                        }
                        v231 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v0] >> 240)] >> 96, v0, v0).gas(msg.gas);
                        require(v231, Error(32, 5, 'TK:EC'));
                        MEM[96] = 0;
                        v223 = 2 + v0;
                        v228 = v232 = uint256.max;
                    }
                } else {
                    v233 = (msg.data[v0 + (msg.data[v0] >> 240)] >> 96).transfer(v0, v0).gas(msg.gas);
                    if (!v233) {
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v26, MEM[36] + 7, 'TR:EC: ');
                    } else {
                        v223 = 2 + v0;
                        v228 = uint256.max;
                    }
                }
                v0 = v0 + v228;
                if (!v0) {
                    // Unknown jump to Block 0x180xc3. Refer to 3-address code (TAC);
                }
            } else {
                if (v224 & 0xc0) {
                    if (64 - (v224 & 0xc0)) {
                        v0 = v0 + 32;
                        v0 = v234 = msg.data[v0];
                    } else {
                        v0 = v0 + 3;
                        v0 = v0 * (msg.data[v0] >> 232) >> 24;
                    }
                }
                if (v224 & 0x20) {
                    v0 = v235 = this;
                }
                v0 = v0 + 2;
                if (0 == !bool(v224)) {
                    if (bool(v224) - 1) {
                        if (bool(v224) - 2) {
                            if (bool(v224) - 3) {
                                if (bool(v224) - 4) {
                                    if (6 - bool(v224)) {
                                        v236 = v237 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v0, msg.data[v0 + 20] >> 240);
                                        v238 = (msg.data[v0] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                        if (!v238) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v26, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v0 = v239 = 7053;
                                        v0 = 0x3068(v0, v0, v0);
                                        v240 = v0 + 1;
                                        if ((byte(msg.data[v0], 0x0)) & 0x80) {
                                            if ((byte(msg.data[v0], 0x0)) & 0x40) {
                                                v241 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v241, Error(32, 5, 'ST:4S'));
                                            }
                                            v242 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v240] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                            require(v242, Error(32, 5, 'TK:4S'));
                                            MEM[96] = 0;
                                            v240 = v243 = 3 + v0;
                                        }
                                        if (0x3f & (byte(msg.data[v0], 0x0))) {
                                            if (msg.data[v240] >> 240 & 0x1) {
                                                v0 = v244 = msg.data[2 + v240];
                                                v240 = v245 = v240 + 34;
                                            } else {
                                                v240 = v246 = 2 + v240 + 3;
                                                v0 = v247 = v0 * (msg.data[2 + v240] >> 232) >> 24;
                                            }
                                        }
                                        v248 = v240 + 1;
                                        if ((byte(msg.data[v240], 0x0)) & 0x10) {
                                            if (0x40 & (byte(msg.data[v240], 0x0))) {
                                                v249 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v249, Error(32, 5, 'ST:V4'));
                                            }
                                            v250 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v240 + (msg.data[v248] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                            require(v250, Error(32, 5, 'TK:V4'));
                                            MEM[96] = 0;
                                            v248 = v251 = v240 + 3;
                                        }
                                        v252 = new uint256[](0);
                                        if (bool(byte(msg.data[v240], 0x0))) {
                                            if (0 != 0x2 & (byte(msg.data[v248], 0x0))) {
                                            }
                                            if (0x1 & (byte(msg.data[v248], 0x0))) {
                                            }
                                            v253 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v248 + (msg.data[1 + v248] >> 240)] >> 96, msg.data[v248 + (msg.data[3 + v248] >> 240)] >> 96, msg.data[v248 + 5] >> 232, msg.data[v248 + 8] >> 232, 0, msg.data[v248] >> 96, 0x1 & (byte(msg.data[v248], 0x0)), v0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v252).gas(msg.gas);
                                            if (!v253) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                revert(v26, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                                            } else if (0x1 & (byte(msg.data[v248], 0x0))) {
                                            }
                                        }
                                    }
                                } else {
                                    v254 = v0 + 2;
                                    if (msg.data[v0] >> 240 & 0x3) {
                                        v255 = v256 = 4;
                                        v257 = v258 = 7;
                                    } else {
                                        v0 = v259 = msg.data[v254];
                                        v254 = v260 = v0 + 34;
                                        v257 = 7;
                                        v255 = 4;
                                    }
                                    MEM[MEM[64]] = msg.data[v254];
                                    v261 = MEM[64] + v255;
                                    v262 = v254 + v257;
                                    v263 = msg.data[4 + v254] >> 232;
                                    while (v263) {
                                        if (!(v263 & 0x3)) {
                                            MEM[v261] = v0;
                                            v261 += 32;
                                        } else if (1 == v263 & 0x3) {
                                            MEM[v261] = v0;
                                            v261 += 32;
                                        } else if (2 == v263 & 0x3) {
                                            MEM[v261] = byte(msg.data[v262], 0x0);
                                            v261 += 32;
                                            v262 = v262 + 1;
                                        } else {
                                            CALLDATACOPY(v261, v262 + 1, byte(msg.data[v262], 0x0));
                                            v261 = v261 + (byte(msg.data[v262], 0x0));
                                            v262 = v262 + (byte(msg.data[v262], 0x0)) + 1;
                                        }
                                        v263 = v263 >> 3;
                                    }
                                    if (msg.data[v0] >> 240 & 0x100) {
                                        if (msg.data[v0] >> 240 & 0x200) {
                                            v264 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v264, Error(32, 5, 'ST:CR'));
                                        }
                                        v265 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v262 + (msg.data[v262] >> 240)] >> 96, this, v0).gas(msg.gas);
                                        require(v265, Error(32, 5, 'TK:CR'));
                                        MEM[96] = 0;
                                        v262 = v266 = 2 + v262;
                                    }
                                    v267 = 0;
                                    if (msg.data[v262] >> 240) {
                                        v267 = v268 = msg.data[2 + (v262 + (msg.data[v262] >> 240))] >> 96;
                                    }
                                    0x1aba(this, v0, v262 + 22);
                                    if (msg.data[v0] >> 240 & 0x400) {
                                        if (msg.data[v0] >> 240 & 0x800) {
                                            v269 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v269, Error(32, 5, 'ST:CR'));
                                        }
                                        v270 = 0x4444c5dc75cb358380d2e3de08a90.sync(v267).gas(msg.gas);
                                        require(v270, Error(32, 5, 'SY:CR'));
                                    }
                                    v0 = v271 = 0;
                                    if (msg.data[v0] >> 240 & 0x8) {
                                        if (msg.data[v0] >> 240 & 0x10) {
                                            v272 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                            require(v272, Error(32, 5, 'WI:CR'));
                                        }
                                    }
                                    v273 = (msg.data[v262 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + vc30x322f - MEM[64]], MEM[0:0]).value(v0).gas(msg.gas);
                                    if (!v273) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v26, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if (msg.data[v0] >> 240 & 0x20) {
                                            v267 = v274 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                            v275 = v274.deposit().value(v0).gas(msg.gas);
                                            require(v275, Error(32, 5, 'DE:CR'));
                                        }
                                        if (0x40 & msg.data[v0] >> 240) {
                                            if (!v267) {
                                                v276 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                require(v276, Error(32, 5, 'SE:CF'));
                                            } else {
                                                v277 = v267.transfer(v0, v0).gas(msg.gas);
                                                if (!v277) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v26, MEM[36] + 7, 'TR:CF: ');
                                                }
                                            }
                                        }
                                    }
                                }
                            } else {
                                0x37d0(v0, v0, v0);
                            }
                        } else {
                            v0 = v278 = 7053;
                            0x3c89(v0, v0);
                        }
                    } else {
                        0x3faa(v0, v0, v0);
                    }
                    v236 = v279 = uint256.max;
                } else {
                    v236 = uint256.max;
                    v280 = v281 = v0 + 1;
                    if ((byte(msg.data[v0], 0x0)) & 0x2) {
                        if ((byte(msg.data[v0], 0x0)) & 0x8) {
                            v282 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v282, Error(32, 5, 'ST:V3'));
                        }
                        v283 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v281] >> 240) + 1] >> 96).gas(msg.gas);
                        require(v283, Error(32, 5, 'SY:V3'));
                        v280 = v284 = 3 + v0;
                    }
                    if (0 == (byte(msg.data[v0], 0x0)) & 0x80) {
                        MEM[MEM[64] + 68] = 0 - v0;
                        if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                            MEM[MEM[64] + 100] = 0x1000276a4;
                        }
                    } else {
                        MEM[MEM[64] + 68] = v0;
                        if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                            v285 = new uint256[]((msg.data[v280 + 20] >> 240) + 1);
                            MEM8[v286.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                            CALLDATACOPY(MEM[64] + 197, 22 + v280, msg.data[v280 + 20] >> 240);
                            v287 = (msg.data[v280] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v26, 0x1000276a4, v285).gas(msg.gas);
                            if (v287) {
                            }
                        }
                    }
                    v286 = new uint256[]((msg.data[v280 + 20] >> 240) + 1);
                    MEM8[v286.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                    CALLDATACOPY(MEM[64] + 197, 22 + v280, msg.data[v280 + 20] >> 240);
                    v288 = (msg.data[v280] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v26, v26, v286).gas(msg.gas);
                    if (v288) {
                    }
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v26, MEM[36] + 7, 'V3:RE: ');
                    MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    // Unknown jump to Block 0x24bd0x25c8B0x1b0e0xc3. Refer to 3-address code (TAC);
                }
                v0 = v0 + v236;
                if (!v0) {
                    // Unknown jump to Block 0x180xc3. Refer to 3-address code (TAC);
                } else {
                    v223 = 2 + ((msg.data[v0] >> 240) + v0);
                    if (!(0x10 & v0)) {
                        require(v0 <= v0, Error(20304));
                        v0 = v0 - v0;
                    }
                }
            }
        }
    }
}

function 0xf4000000(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 5883;
    v0 = v2 = varg5 >> 232;
    v3 = v4 = 109;
    if (!(v2 & 0x30)) {
        v0 = v5 = this;
    } else if (16 == v2 & 0x30) {
        v0 = v6 = 0x4444c5dc75cb358380d2e3de08a90;
    } else if (32 == v2 & 0x30) {
        v3 = v7 = 111;
        v0 = v8 = msg.data[(varg6 >> 240) + v4] >> 96;
    } else {
        v0 = v9 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
    }
    if (v2 & 0x7) {
        if ((v2 & 0x7) - 1) {
            if (2 - (v2 & 0x7)) {
                v10 = v11 = 1735;
                0x1aba(v0, varg4, v3 + 2);
                v0 = v12 = byte(msg.data[(msg.data[v3] >> 240) + v3 + 2], 0x0);
                if (v12) {
                    v13 = v14 = 1 + ((msg.data[v3] >> 240) + v3 + 2);
                    while (1) {
                        v0 = v13 + 2;
                        v15 = msg.data[v13] >> 240;
                        if (v15 & 0x1c0) {
                            if ((v15 & 0x1c0) - 64) {
                                if (128 - (v15 & 0x1c0)) {
                                    v0 = 22 + v13;
                                    if (msg.data[v0] >> 96) {
                                        v16, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                        if (!v16) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v0 = v17 = 0;
                                            if (v16) {
                                                v18 = 32;
                                                if (v18 > RETURNDATASIZE()) {
                                                    v18 = v19 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + v18 - MEM[64] >= 32);
                                            }
                                        }
                                    } else {
                                        v0 = this.balance;
                                    }
                                    if (!(v15 & 0x100)) {
                                        v0 = v20 = uint256.max + v0;
                                    }
                                } else {
                                    v0 = v21 = msg.data[v0];
                                    v0 = v0 + 32;
                                }
                            } else {
                                v0 = v0 + 3;
                                v0 = v0 * (msg.data[v0] >> 232) >> 24;
                            }
                        }
                        if (!(v15 & 0x30)) {
                            v0 = v22 = this;
                        } else if (16 == v15 & 0x30) {
                            v0 = v23 = 0x4444c5dc75cb358380d2e3de08a90;
                        } else if (32 == v15 & 0x30) {
                            v0 = v0 + 2;
                            v0 = v24 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                        } else {
                            v0 = v25 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                        }
                        v10 = v26 = v0 + 2;
                        if (bool(v15)) {
                            if (bool(v15) - 1) {
                                if (bool(v15) - 2) {
                                    if (bool(v15) - 3) {
                                        if (4 - bool(v15)) {
                                            v27 = v28 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v26, msg.data[v26 + 20] >> 240);
                                            v29 = (msg.data[v26] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                            if (!v29) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v15 = v31 = 8490;
                                            0x42d5(v0, v0, v26);
                                            v32 = 0;
                                            v33 = v34 = v10 + 4;
                                            if (msg.data[v10 + 2] >> 240) {
                                                v32 = v35 = msg.data[4 + (v10 + (msg.data[v10 + 2] >> 240))] >> 96;
                                            }
                                            v0 = v36 = 0;
                                            if (msg.data[v10] >> 240 & 0x3) {
                                                if ((msg.data[v10] >> 240 & 0x3) - 1) {
                                                    if ((msg.data[v10] >> 240 & 0x3) - 2) {
                                                        v37 = v32.balanceOf(v0).gas(msg.gas);
                                                        require(v37, Error(32, 5, 'BA:CF'));
                                                        v0 = v38 = MEM[0];
                                                    }
                                                    v39 = v40 = 7;
                                                } else {
                                                    v39 = v41 = 7;
                                                    v0 = v42 = msg.data[v34];
                                                    v33 = v43 = v10 + 36;
                                                }
                                            } else {
                                                v39 = 7;
                                            }
                                            v44 = v45 = v33 + v39;
                                            v46 = v47 = MEM[64] + 4;
                                            v48 = msg.data[v33 + 4] >> 232;
                                            while (v48) {
                                                if (!(v48 & 0x3)) {
                                                    MEM[v46] = v0;
                                                    v46 = v46 + 32;
                                                } else if (1 == v48 & 0x3) {
                                                    MEM[v46] = v0;
                                                    v46 = v46 + 32;
                                                } else if (2 == v48 & 0x3) {
                                                    MEM[v46] = byte(msg.data[v44], 0x0);
                                                    v46 = v46 + 32;
                                                    v44 = v44 + 1;
                                                } else {
                                                    CALLDATACOPY(v46, v44 + 1, byte(msg.data[v44], 0x0));
                                                    v46 = v46 + (byte(msg.data[v44], 0x0));
                                                    v44 = v44 + (byte(msg.data[v44], 0x0)) + 1;
                                                }
                                                v48 = v48 >> 3;
                                            }
                                            if (msg.data[v10] >> 240 & 0x100) {
                                                if (msg.data[v10] >> 240 & 0x200) {
                                                    v49 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v49, Error(32, 5, 'ST:CF'));
                                                }
                                                v50 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v44 + (msg.data[v44] >> 240)] >> 96, this, v0).gas(msg.gas);
                                                require(v50, Error(32, 5, 'TK:CF'));
                                                MEM[96] = 0;
                                                v44 = v51 = 2 + v44;
                                            }
                                            if (msg.data[v10] >> 240 & 0x400) {
                                                if (msg.data[v10] >> 240 & 0x800) {
                                                    v52 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v52, Error(32, 5, 'ST:CF'));
                                                }
                                                v53 = 0x4444c5dc75cb358380d2e3de08a90.sync(v32).gas(msg.gas);
                                                require(v53, Error(32, 5, 'SY:CF'));
                                            }
                                            v0 = v54 = 0;
                                            if (msg.data[v10] >> 240 & 0x8) {
                                                if (msg.data[v10] >> 240 & 0x10) {
                                                    v55 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                    require(v55, Error(32, 5, 'WI:CT'));
                                                }
                                            }
                                            v56 = (msg.data[v44] >> 96).call(msg.data[v33]).value(v0).gas(msg.gas);
                                            if (!v56) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                            } else {
                                                if ((msg.data[v10] >> 240 & 0x3) - 2) {
                                                    if (!((msg.data[v10] >> 240 & 0x3) - 3)) {
                                                        v57 = v32.balanceOf(v0).gas(msg.gas);
                                                        require(v57, Error(32, 5, 'BA:CD'));
                                                        v0 = v58 = MEM[0] - v0;
                                                    }
                                                } else if (address(v32)) {
                                                    v59 = v32.balanceOf(this).gas(msg.gas);
                                                    require(v59, Error(32, 5, 'BA:CT'));
                                                    if (!(msg.data[v10] >> 240 & 0x4)) {
                                                        v0 = v60 = MEM[0] - 1;
                                                    } else {
                                                        v0 = v61 = MEM[0];
                                                    }
                                                } else {
                                                    v0 = v62 = this.balance;
                                                }
                                                if (msg.data[v10] >> 240 & 0x20) {
                                                    v32 = v63 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                    v64 = v63.deposit().value(v0).gas(msg.gas);
                                                    require(v64, Error(32, 5, 'DE:CT'));
                                                }
                                                if (0x40 & msg.data[v10] >> 240) {
                                                    if (!v32) {
                                                        v65 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                        require(v65, Error(32, 5, 'SE:CF'));
                                                    } else {
                                                        v66 = v32.transfer(v0, v0).gas(msg.gas);
                                                        if (!v66) {
                                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                            RETURNDATACOPY(0, 0, 68);
                                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                            revert(v30, MEM[36] + 7, 'TR:CF: ');
                                                        }
                                                    }
                                                }
                                                // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                                            }
                                        }
                                    } else {
                                        v15 = v67 = 8490;
                                        0x4990(v0, v0, v26);
                                        v68 = v10 + 2;
                                        if (msg.data[v10] >> 240 & 0x10) {
                                            if (!(msg.data[v10] >> 240 & 0x100)) {
                                                v69 = (msg.data[v10 + (msg.data[v68] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                if (!v69) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                    revert(v30, MEM[36] + 8, 'TR:B3F: ');
                                                } else {
                                                    v68 = v70 = v10 + 4;
                                                }
                                            } else {
                                                if (msg.data[v10] >> 240 & 0x200) {
                                                    v71 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v71, Error(32, 6, 'ST:B3F'));
                                                }
                                                v72 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v68 + (msg.data[v68] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                require(v72, Error(32, 6, 'TK:B3F'));
                                                MEM[96] = 0;
                                                v68 = v73 = v68 + 2;
                                            }
                                        }
                                        v74 = bool(msg.data[v10] >> 240);
                                        while (v74) {
                                            if ((byte(msg.data[v68], 0x0)) - 2) {
                                                v75 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v68], 0x0), msg.data[v68 + (msg.data[v68 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                                if (!v75) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v30, MEM[36] + 7, 'B3B:F: ');
                                                } else {
                                                    v76 = v77 = uint256.max;
                                                    v0 = v78 = MEM[0];
                                                    v68 = v68 + 3;
                                                }
                                            } else {
                                                v79 = new uint256[](0);
                                                MEM[v79.data] = msg.data[v68 + 1] >> 96;
                                                v80 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v79, v30, v30, msg.data[v68 + 1 + (msg.data[v68 + 1 + 20] >> 240)] >> 96, msg.data[v68 + 1 + (msg.data[v68 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                                if (!v80) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v30, MEM[36] + 7, 'B3S:F: ');
                                                } else {
                                                    v76 = v81 = uint256.max;
                                                    v0 = v82 = MEM[0];
                                                    v68 = v68 + 1 + 24;
                                                }
                                            }
                                            v74 = v74 + v76;
                                        }
                                        if (msg.data[v10] >> 240 & 0x20) {
                                            v83 = msg.data[v68 + (msg.data[v68] >> 240)] >> 96;
                                            if (msg.data[v10] >> 240 & 0x40) {
                                                if (0x80 & msg.data[v10] >> 240) {
                                                    v84 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v84, Error(32, 7, 'ST:B3FS'));
                                                }
                                                v85 = 0x4444c5dc75cb358380d2e3de08a90.sync(v83).gas(msg.gas);
                                                require(v85, Error(32, 6, 'SY:B3F'));
                                            }
                                            v86 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v83, v0, v0).gas(msg.gas);
                                            require(v86, Error(32, 5, 'SN:F3'));
                                            MEM[96] = 0;
                                        }
                                        // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    v15 = v87 = 8490;
                                    0x5008(v0, v0, v26);
                                    v88 = v89 = v10 + 22;
                                    if (msg.data[v10] >> 240 & 0x10) {
                                        v88 = v90 = v10 + 24;
                                        if (!(msg.data[v10] >> 240 & 0x20)) {
                                            v91 = (msg.data[22 + ((msg.data[v89] >> 240) + v10)] >> 96).transfer(msg.data[v10 + 2] >> 96, v0).gas(msg.gas);
                                            if (!v91) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 7, 'TR:2F: ');
                                            }
                                        } else {
                                            if (msg.data[v10] >> 240 & 0x40) {
                                                v92 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v92, Error(32, 5, 'ST:2F'));
                                            }
                                            v93 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v89] >> 240) + v10)] >> 96, msg.data[v10 + 2] >> 96, v0).gas(msg.gas);
                                            require(v93, Error(32, 5, 'TK:2F'));
                                            MEM[96] = 0;
                                        }
                                    }
                                    if (msg.data[v10] >> 240 & 0x100) {
                                        if (msg.data[v10] >> 240 & 0x200) {
                                            v94 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v94, Error(32, 5, 'ST:22'));
                                        }
                                        v95 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v88 + (msg.data[v88] >> 240)] >> 96).gas(msg.gas);
                                        require(v95, Error(32, 5, 'SY:2F'));
                                    }
                                    if (bool(msg.data[v10] >> 240)) {
                                        if (0 == (bool(msg.data[v10] >> 240) == 1)) {
                                            // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                                        }
                                    } else {
                                        // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                                    }
                                }
                            } else {
                                v15 = v96 = 8490;
                                0x5470(v0, v0, v26);
                                v97 = 0;
                                v98 = v99 = v10 + 1;
                                v100 = v97 - v0;
                                while (v97 < bool(byte(msg.data[v10], v97))) {
                                    if (0 == 0x2 & (byte(msg.data[v98], 0x0))) {
                                        MEM[MEM[64] + 132] = 0;
                                        v98 += 11;
                                    } else {
                                        MEM[MEM[64] + 132] = msg.data[v98] >> 96;
                                        v98 += 31;
                                    }
                                    if (!(0x1 & (byte(msg.data[v98], 0x0)))) {
                                        MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                    } else {
                                        MEM[MEM[64] + 228] = 0x1000276a4;
                                    }
                                    v101 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v98 + (msg.data[1 + v98] >> 240)] >> 96, msg.data[v98 + (msg.data[3 + v98] >> 240)] >> 96, msg.data[v98 + 5] >> 232, msg.data[v98 + 8] >> 232, v30, 0x1 & (byte(msg.data[v98], 0x0)), v100, v30, 288, v97).gas(msg.gas);
                                    if (!v101) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v30, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if (!(0x1 & (byte(msg.data[v98], 0x0)))) {
                                            v102 = v103 = 1;
                                            v100 = v104 = 0 - (MEM[0] >> 128);
                                        } else {
                                            v102 = v105 = 1;
                                            v100 = v106 = 0 - int128(MEM[0]);
                                        }
                                        v97 = v97 + v102;
                                    }
                                }
                                if ((byte(msg.data[v10], v97)) & 0x10) {
                                    if (0x40 & (byte(msg.data[v10], v97))) {
                                        v107 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v107, Error(32, 5, 'ST:F4'));
                                    }
                                    v108 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v98 + (msg.data[v98] >> 240)] >> 96, v0, 0 - v100).gas(msg.gas);
                                    require(v108, Error(32, 5, 'TK:F4'));
                                    MEM[96] = 0;
                                }
                                // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                            }
                            v27 = v109 = uint256.max;
                        } else {
                            v15 = v110 = 8372;
                            0x5784(v0, v0, v26);
                            v27 = uint256.max;
                            v111 = v10 + 1;
                            if ((byte(msg.data[v10], 0x0)) & 0x2) {
                                if ((byte(msg.data[v10], 0x0)) & 0x8) {
                                    v112 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v112, Error(32, 5, 'ST:F3'));
                                }
                                v113 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v10 + (msg.data[v111] >> 240) + 1] >> 96).gas(msg.gas);
                                require(v113, Error(32, 5, 'SY:F3'));
                                v111 = v114 = 3 + v10;
                            }
                            if (0 != (byte(msg.data[v10], 0x0)) & 0x1) {
                            }
                            v115 = new uint256[](25);
                            MEM8[MEM[64] + 198] = (byte(msg.data[v111], 0x2)) & 0xFF;
                            v116 = (msg.data[v111 + 3] >> 96).swap(v0, (byte(msg.data[v10], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v115, v30, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v111 + (msg.data[v111] >> 240)]).gas(msg.gas);
                            if (!v116) {
                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                                RETURNDATACOPY(0, 0, 68);
                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                revert(v30, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                            }
                        }
                        v0 = v0 + v27;
                        if (!v0) {
                            // Unknown jump to Block 0x6c70xc8. Refer to 3-address code (TAC);
                        } else {
                            v13 = 2 + ((msg.data[v0] >> 240) + v0);
                            if (!(0x200 & v15)) {
                                require(v0 <= v0, Error(20304));
                                v0 = v0 - v0;
                            }
                        }
                    }
                }
            } else {
                if ((byte(msg.data[v3 + 22], 0x0)) & 0x80) {
                    if (0 == !((byte(msg.data[v3 + 22], 0x0)) & 0x6)) {
                        if (2 - ((byte(msg.data[v3 + 22], 0x0)) & 0x6)) {
                            v117 = 9975;
                            v118 = 64;
                            v119 = 0;
                            v120 = 4;
                            v121 = 28;
                            v122 = 10000;
                        } else {
                            v123 = (msg.data[v3] >> 96).executeVirtualOrders(block.timestamp).gas(msg.gas);
                            if (!v123) {
                                require(RETURNDATASIZE() > 68);
                                revert(0, RETURNDATASIZE());
                            } else {
                                v124 = (msg.data[v3] >> 96).fee().gas(msg.gas);
                                if (!v124) {
                                    require(RETURNDATASIZE() > 68);
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    v117 = v125 = MEM[0];
                                    v118 = v126 = 64;
                                    v119 = v127 = 0;
                                    v120 = v128 = 4;
                                    v121 = v129 = 28;
                                    v122 = v130 = 10000;
                                }
                            }
                        }
                    } else {
                        v117 = v131 = 997;
                        v118 = v132 = 64;
                        v119 = v133 = 0;
                        v120 = v134 = 4;
                        v121 = v135 = 28;
                        v122 = v136 = 1000;
                    }
                    MEM[v119] = 0x902f1ac;
                    v137 = (msg.data[v3] >> 96).staticcall(MEM[v5a3c0x5b24V0x2436V0x180d:v5a3c0x5b24V0x2436V0x180d + v5a3c0x5b22V0x2436V0x180d], MEM[v5a3c0x5b21V0x2436V0x180d:v5a3c0x5b21V0x2436V0x180d + v5a3c0x5b1fV0x2436V0x180d]).gas(msg.gas);
                    if (!v137) {
                        require(RETURNDATASIZE() > 68);
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!((byte(msg.data[v3 + 22], 0x0)) & 0x1)) {
                            v138 = MEM[32];
                            v139 = MEM[0];
                        } else {
                            v138 = v140 = MEM[0];
                            v139 = v141 = MEM[32];
                        }
                        require(v138 * v122 + varg4 * v117, Panic(18)); // division by zero
                        v0 = v142 = varg4 * v117 * v139 / (v138 * v122 + varg4 * v117);
                    }
                }
                if (0 != (byte(msg.data[v3 + 22], 0x0)) & 0x1) {
                }
                v143 = new uint256[](msg.data[v3 + 20] >> 240);
                CALLDATACOPY(v143.data, v3 + 22, msg.data[v3 + 20] >> 240);
                v144 = (msg.data[v3] >> 96).swap(0, v0, 0, v0, this, v143).gas(msg.gas);
                if (!v144) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'V2:RT'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v30, MEM[36] + 7, 'V2:RT: ');
                }
            }
        } else {
            v145 = v146 = v3 + 1;
            if ((byte(msg.data[v3], 0x0)) & 0x2) {
                if ((byte(msg.data[v3], 0x0)) & 0x8) {
                    v147 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    require(v147, Error(32, 5, 'ST:V3'));
                }
                v148 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v3 + (msg.data[v146] >> 240) + 1] >> 96).gas(msg.gas);
                require(v148, Error(32, 5, 'SY:V3'));
                v145 = v149 = 3 + v3;
            }
            if (0 == (byte(msg.data[v3], 0x0)) & 0x80) {
                if (0 != (byte(msg.data[v3], 0x0)) & 0x1) {
                }
            } else if (0 != (byte(msg.data[v3], 0x0)) & 0x1) {
                v150 = new uint256[]((msg.data[v145 + 20] >> 240) + 1);
                MEM8[v151.data] = (byte(msg.data[v3], 0x0)) & 0xFF;
                CALLDATACOPY(MEM[64] + 197, 22 + v145, msg.data[v145 + 20] >> 240);
                v152 = (msg.data[v145] >> 96).swap(v0, (byte(msg.data[v3], 0x0)) & 0x1, varg4, 0x1000276a4, v150).gas(msg.gas);
                if (v152) {
                }
            }
            v151 = new uint256[]((msg.data[v145 + 20] >> 240) + 1);
            MEM8[v151.data] = (byte(msg.data[v3], 0x0)) & 0xFF;
            CALLDATACOPY(MEM[64] + 197, 22 + v145, msg.data[v145 + 20] >> 240);
            v153 = (msg.data[v145] >> 96).swap(v0, (byte(msg.data[v3], 0x0)) & 0x1, varg4, 0 - varg4, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v151).gas(msg.gas);
            if (v153) {
            }
            require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
            revert(v30, MEM[36] + 7, 'V3:RE: ');
            // Unknown jump to Block 0x24bd0x25c8B0x17fa. Refer to 3-address code (TAC);
        }
    } else {
        v0 = v154 = 1425;
        if (v2 & 0x8) {
            v155 = v156 = 4755;
            v0 = v157 = byte(msg.data[v3 + 2], 0x0);
            if (v157) {
                v158 = v159 = 1 + (v3 + 2);
                while (1) {
                    v0 = v158 + 2;
                    v160 = msg.data[v158] >> 240;
                    if (v160 & 0x1c0) {
                        if ((v160 & 0x1c0) - 64) {
                            if (128 - (v160 & 0x1c0)) {
                                v0 = 22 + v158;
                                if (msg.data[v0] >> 96) {
                                    v161, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v161) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v0 = v162 = 0;
                                        if (v161) {
                                            v163 = 32;
                                            if (v163 > RETURNDATASIZE()) {
                                                v163 = v164 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v163 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v163 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v163 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v163 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v0 = v165 = this.balance;
                                }
                                if (!(v160 & 0x100)) {
                                    v0 = v166 = uint256.max + v0;
                                }
                            } else {
                                v0 = v167 = msg.data[v0];
                                v0 = v0 + 32;
                            }
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (!(v160 & 0x30)) {
                        v0 = v168 = this;
                    } else if (16 == v160 & 0x30) {
                        v0 = v169 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v160 & 0x30) {
                        v0 = v0 + 2;
                        v0 = v170 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                    } else {
                        v0 = v171 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v155 = v172 = v0 + 2;
                    if (bool(v160)) {
                        if (bool(v160) - 1) {
                            if (bool(v160) - 2) {
                                if (bool(v160) - 3) {
                                    if (4 - bool(v160)) {
                                        v173 = v174 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v172, msg.data[v172 + 20] >> 240);
                                        v175 = (msg.data[v172] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                        if (!v175) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v30, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v160 = v176 = 8490;
                                        0x42d5(v0, v0, v172);
                                        v177 = 0;
                                        v178 = v179 = v155 + 4;
                                        if (msg.data[v155 + 2] >> 240) {
                                            v177 = v180 = msg.data[4 + (v155 + (msg.data[v155 + 2] >> 240))] >> 96;
                                        }
                                        v0 = v181 = 0;
                                        if (msg.data[v155] >> 240 & 0x3) {
                                            if ((msg.data[v155] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v155] >> 240 & 0x3) - 2) {
                                                    v182 = v177.balanceOf(v0).gas(msg.gas);
                                                    require(v182, Error(32, 5, 'BA:CF'));
                                                    v0 = v183 = MEM[0];
                                                }
                                                v184 = v185 = 7;
                                            } else {
                                                v184 = v186 = 7;
                                                v0 = v187 = msg.data[v179];
                                                v178 = v188 = v155 + 36;
                                            }
                                        } else {
                                            v184 = 7;
                                        }
                                        v189 = v190 = v178 + v184;
                                        v191 = v192 = MEM[64] + 4;
                                        v193 = msg.data[v178 + 4] >> 232;
                                        while (v193) {
                                            if (!(v193 & 0x3)) {
                                                MEM[v191] = v0;
                                                v191 = v191 + 32;
                                            } else if (1 == v193 & 0x3) {
                                                MEM[v191] = v0;
                                                v191 = v191 + 32;
                                            } else if (2 == v193 & 0x3) {
                                                MEM[v191] = byte(msg.data[v189], 0x0);
                                                v191 = v191 + 32;
                                                v189 = v189 + 1;
                                            } else {
                                                CALLDATACOPY(v191, v189 + 1, byte(msg.data[v189], 0x0));
                                                v191 = v191 + (byte(msg.data[v189], 0x0));
                                                v189 = v189 + (byte(msg.data[v189], 0x0)) + 1;
                                            }
                                            v193 = v193 >> 3;
                                        }
                                        if (msg.data[v155] >> 240 & 0x100) {
                                            if (msg.data[v155] >> 240 & 0x200) {
                                                v194 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v194, Error(32, 5, 'ST:CF'));
                                            }
                                            v195 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v189 + (msg.data[v189] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v195, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v189 = v196 = 2 + v189;
                                        }
                                        if (msg.data[v155] >> 240 & 0x400) {
                                            if (msg.data[v155] >> 240 & 0x800) {
                                                v197 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v197, Error(32, 5, 'ST:CF'));
                                            }
                                            v198 = 0x4444c5dc75cb358380d2e3de08a90.sync(v177).gas(msg.gas);
                                            require(v198, Error(32, 5, 'SY:CF'));
                                        }
                                        v0 = v199 = 0;
                                        if (msg.data[v155] >> 240 & 0x8) {
                                            if (msg.data[v155] >> 240 & 0x10) {
                                                v200 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v200, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v201 = (msg.data[v189] >> 96).call(msg.data[v178]).value(v0).gas(msg.gas);
                                        if (!v201) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v30, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v155] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v155] >> 240 & 0x3) - 3)) {
                                                    v202 = v177.balanceOf(v0).gas(msg.gas);
                                                    require(v202, Error(32, 5, 'BA:CD'));
                                                    v0 = v203 = MEM[0] - v0;
                                                }
                                            } else if (address(v177)) {
                                                v204 = v177.balanceOf(this).gas(msg.gas);
                                                require(v204, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v155] >> 240 & 0x4)) {
                                                    v0 = v205 = MEM[0] - 1;
                                                } else {
                                                    v0 = v206 = MEM[0];
                                                }
                                            } else {
                                                v0 = v207 = this.balance;
                                            }
                                            if (msg.data[v155] >> 240 & 0x20) {
                                                v177 = v208 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v209 = v208.deposit().value(v0).gas(msg.gas);
                                                require(v209, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v155] >> 240) {
                                                if (!v177) {
                                                    v210 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v210, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v211 = v177.transfer(v0, v0).gas(msg.gas);
                                                    if (!v211) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v30, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v160 = v212 = 8490;
                                    0x4990(v0, v0, v172);
                                    v213 = v155 + 2;
                                    if (msg.data[v155] >> 240 & 0x10) {
                                        if (!(msg.data[v155] >> 240 & 0x100)) {
                                            v214 = (msg.data[v155 + (msg.data[v213] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            if (!v214) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v213 = v215 = v155 + 4;
                                            }
                                        } else {
                                            if (msg.data[v155] >> 240 & 0x200) {
                                                v216 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v216, Error(32, 6, 'ST:B3F'));
                                            }
                                            v217 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v213 + (msg.data[v213] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            require(v217, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v213 = v218 = v213 + 2;
                                        }
                                    }
                                    v219 = bool(msg.data[v155] >> 240);
                                    while (v219) {
                                        if ((byte(msg.data[v213], 0x0)) - 2) {
                                            v220 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v213], 0x0), msg.data[v213 + (msg.data[v213 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                            if (!v220) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v221 = v222 = uint256.max;
                                                v0 = v223 = MEM[0];
                                                v213 = v213 + 3;
                                            }
                                        } else {
                                            v224 = new uint256[](0);
                                            MEM[v224.data] = msg.data[v213 + 1] >> 96;
                                            v225 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v224, v30, v30, msg.data[v213 + 1 + (msg.data[v213 + 1 + 20] >> 240)] >> 96, msg.data[v213 + 1 + (msg.data[v213 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                            if (!v225) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v221 = v226 = uint256.max;
                                                v0 = v227 = MEM[0];
                                                v213 = v213 + 1 + 24;
                                            }
                                        }
                                        v219 = v219 + v221;
                                    }
                                    if (msg.data[v155] >> 240 & 0x20) {
                                        v228 = msg.data[v213 + (msg.data[v213] >> 240)] >> 96;
                                        if (msg.data[v155] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v155] >> 240) {
                                                v229 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v229, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v230 = 0x4444c5dc75cb358380d2e3de08a90.sync(v228).gas(msg.gas);
                                            require(v230, Error(32, 6, 'SY:B3F'));
                                        }
                                        v231 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v228, v0, v0).gas(msg.gas);
                                        require(v231, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                                }
                            } else {
                                v160 = v232 = 8490;
                                0x5008(v0, v0, v172);
                                v233 = v234 = v155 + 22;
                                if (msg.data[v155] >> 240 & 0x10) {
                                    v233 = v235 = v155 + 24;
                                    if (!(msg.data[v155] >> 240 & 0x20)) {
                                        v236 = (msg.data[22 + ((msg.data[v234] >> 240) + v155)] >> 96).transfer(msg.data[v155 + 2] >> 96, v0).gas(msg.gas);
                                        if (!v236) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v30, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v155] >> 240 & 0x40) {
                                            v237 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v237, Error(32, 5, 'ST:2F'));
                                        }
                                        v238 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v234] >> 240) + v155)] >> 96, msg.data[v155 + 2] >> 96, v0).gas(msg.gas);
                                        require(v238, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v155] >> 240 & 0x100) {
                                    if (msg.data[v155] >> 240 & 0x200) {
                                        v239 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v239, Error(32, 5, 'ST:22'));
                                    }
                                    v240 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v233 + (msg.data[v233] >> 240)] >> 96).gas(msg.gas);
                                    require(v240, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v155] >> 240)) {
                                    if (0 == (bool(msg.data[v155] >> 240) == 1)) {
                                        // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v160 = v241 = 8490;
                            0x5470(v0, v0, v172);
                            v242 = 0;
                            v243 = v244 = v155 + 1;
                            v245 = v242 - v0;
                            while (v242 < bool(byte(msg.data[v155], v242))) {
                                if (0 == 0x2 & (byte(msg.data[v243], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v243 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v243] >> 96;
                                    v243 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v243], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v246 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v243 + (msg.data[1 + v243] >> 240)] >> 96, msg.data[v243 + (msg.data[3 + v243] >> 240)] >> 96, msg.data[v243 + 5] >> 232, msg.data[v243 + 8] >> 232, v30, 0x1 & (byte(msg.data[v243], 0x0)), v245, v30, 288, v242).gas(msg.gas);
                                if (!v246) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v30, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v243], 0x0)))) {
                                        v247 = v248 = 1;
                                        v245 = v249 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v247 = v250 = 1;
                                        v245 = v251 = 0 - int128(MEM[0]);
                                    }
                                    v242 = v242 + v247;
                                }
                            }
                            if ((byte(msg.data[v155], v242)) & 0x10) {
                                if (0x40 & (byte(msg.data[v155], v242))) {
                                    v252 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v252, Error(32, 5, 'ST:F4'));
                                }
                                v253 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v243 + (msg.data[v243] >> 240)] >> 96, v0, 0 - v245).gas(msg.gas);
                                require(v253, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                        }
                        v173 = v254 = uint256.max;
                    } else {
                        v160 = v255 = 8372;
                        0x5784(v0, v0, v172);
                        v173 = uint256.max;
                        v256 = v155 + 1;
                        if ((byte(msg.data[v155], 0x0)) & 0x2) {
                            if ((byte(msg.data[v155], 0x0)) & 0x8) {
                                v257 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v257, Error(32, 5, 'ST:F3'));
                            }
                            v258 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v155 + (msg.data[v256] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v258, Error(32, 5, 'SY:F3'));
                            v256 = v259 = 3 + v155;
                        }
                        if (0 != (byte(msg.data[v155], 0x0)) & 0x1) {
                        }
                        v260 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v256], 0x2)) & 0xFF;
                        v261 = (msg.data[v256 + 3] >> 96).swap(v0, (byte(msg.data[v155], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v260, v30, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v256 + (msg.data[v256] >> 240)]).gas(msg.gas);
                        if (!v261) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v30, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v0 = v0 + v173;
                    if (!v0) {
                        // Unknown jump to Block 0x12930xc8. Refer to 3-address code (TAC);
                    } else {
                        v158 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x200 & v160)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
            v3 = (msg.data[v3] >> 240) + v3 + 2;
        }
        v0 = v262 = byte(msg.data[v3], 0x0);
        if (v262) {
            v263 = 1 + v3;
            while (1) {
                v0 = v264 = byte(msg.data[v263], 0x0);
                v0 = v263 + 1;
                if (bool(v264) >= 13) {
                    if (bool(v264) - 13) {
                        if (14 - bool(v264)) {
                            v263 = v263 + 3;
                            if (v264 & 0x40) {
                                if (0x80 & v264) {
                                    v265 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v265, Error(32, 6, 'ST:EC3'));
                                }
                                v266 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[v0] >> 240) + v263)] >> 96).gas(msg.gas);
                                require(v266, Error(32, 6, 'SY:EC3'));
                            }
                            v267 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[v0] >> 240) + v263)] >> 96, v0, v0).gas(msg.gas);
                            require(v267, Error(32, 5, 'SN:EC'));
                            v268 = v269 = uint256.max;
                            MEM[96] = 0;
                        } else {
                            if (0x40 & v264) {
                                v270 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v270, Error(32, 5, 'ST:EC'));
                            }
                            v271 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v0] >> 240)] >> 96, v0, v0).gas(msg.gas);
                            require(v271, Error(32, 5, 'TK:EC'));
                            MEM[96] = 0;
                            v263 = 2 + v0;
                            v268 = v272 = uint256.max;
                        }
                    } else {
                        v273 = (msg.data[v0 + (msg.data[v0] >> 240)] >> 96).transfer(v0, v0).gas(msg.gas);
                        if (!v273) {
                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                            revert(v30, MEM[36] + 7, 'TR:EC: ');
                        } else {
                            v263 = 2 + v0;
                            v268 = uint256.max;
                        }
                    }
                    v0 = v0 + v268;
                    if (!v0) {
                        // Unknown jump to Block 0x5910xc8. Refer to 3-address code (TAC);
                    }
                } else {
                    if (v264 & 0xc0) {
                        if (64 - (v264 & 0xc0)) {
                            v0 = v0 + 32;
                            v0 = v274 = msg.data[v0];
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (v264 & 0x20) {
                        v0 = v275 = this;
                    }
                    v0 = v0 + 2;
                    if (0 == !bool(v264)) {
                        if (bool(v264) - 1) {
                            if (bool(v264) - 2) {
                                if (bool(v264) - 3) {
                                    if (bool(v264) - 4) {
                                        if (6 - bool(v264)) {
                                            v276 = v277 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v0, msg.data[v0 + 20] >> 240);
                                            v278 = (msg.data[v0] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                            if (!v278) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v30, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v0 = v279 = 7053;
                                            v0 = 0x3068(v0, v0, v0);
                                            v280 = v0 + 1;
                                            if ((byte(msg.data[v0], 0x0)) & 0x80) {
                                                if ((byte(msg.data[v0], 0x0)) & 0x40) {
                                                    v281 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v281, Error(32, 5, 'ST:4S'));
                                                }
                                                v282 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v280] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v282, Error(32, 5, 'TK:4S'));
                                                MEM[96] = 0;
                                                v280 = v283 = 3 + v0;
                                            }
                                            if (0x3f & (byte(msg.data[v0], 0x0))) {
                                                if (msg.data[v280] >> 240 & 0x1) {
                                                    v0 = v284 = msg.data[2 + v280];
                                                    v280 = v285 = v280 + 34;
                                                } else {
                                                    v280 = v286 = 2 + v280 + 3;
                                                    v0 = v287 = v0 * (msg.data[2 + v280] >> 232) >> 24;
                                                }
                                            }
                                            v288 = v280 + 1;
                                            if ((byte(msg.data[v280], 0x0)) & 0x10) {
                                                if (0x40 & (byte(msg.data[v280], 0x0))) {
                                                    v289 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v289, Error(32, 5, 'ST:V4'));
                                                }
                                                v290 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v280 + (msg.data[v288] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v290, Error(32, 5, 'TK:V4'));
                                                MEM[96] = 0;
                                                v288 = v291 = v280 + 3;
                                            }
                                            v292 = new uint256[](0);
                                            if (bool(byte(msg.data[v280], 0x0))) {
                                                if (0 != 0x2 & (byte(msg.data[v288], 0x0))) {
                                                }
                                                if (0x1 & (byte(msg.data[v288], 0x0))) {
                                                }
                                                v293 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v288 + (msg.data[1 + v288] >> 240)] >> 96, msg.data[v288 + (msg.data[3 + v288] >> 240)] >> 96, msg.data[v288 + 5] >> 232, msg.data[v288 + 8] >> 232, 0, msg.data[v288] >> 96, 0x1 & (byte(msg.data[v288], 0x0)), v0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v292).gas(msg.gas);
                                                if (!v293) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v30, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                                                } else if (0x1 & (byte(msg.data[v288], 0x0))) {
                                                }
                                            }
                                        }
                                    } else {
                                        v294 = v0 + 2;
                                        if (msg.data[v0] >> 240 & 0x3) {
                                            v295 = v296 = 4;
                                            v297 = v298 = 7;
                                        } else {
                                            v0 = v299 = msg.data[v294];
                                            v294 = v300 = v0 + 34;
                                            v297 = 7;
                                            v295 = 4;
                                        }
                                        MEM[MEM[64]] = msg.data[v294];
                                        v301 = MEM[64] + v295;
                                        v302 = v294 + v297;
                                        v303 = msg.data[4 + v294] >> 232;
                                        while (v303) {
                                            if (!(v303 & 0x3)) {
                                                MEM[v301] = v0;
                                                v301 += 32;
                                            } else if (1 == v303 & 0x3) {
                                                MEM[v301] = v0;
                                                v301 += 32;
                                            } else if (2 == v303 & 0x3) {
                                                MEM[v301] = byte(msg.data[v302], 0x0);
                                                v301 += 32;
                                                v302 = v302 + 1;
                                            } else {
                                                CALLDATACOPY(v301, v302 + 1, byte(msg.data[v302], 0x0));
                                                v301 = v301 + (byte(msg.data[v302], 0x0));
                                                v302 = v302 + (byte(msg.data[v302], 0x0)) + 1;
                                            }
                                            v303 = v303 >> 3;
                                        }
                                        if (msg.data[v0] >> 240 & 0x100) {
                                            if (msg.data[v0] >> 240 & 0x200) {
                                                v304 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v304, Error(32, 5, 'ST:CR'));
                                            }
                                            v305 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v302 + (msg.data[v302] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v305, Error(32, 5, 'TK:CR'));
                                            MEM[96] = 0;
                                            v302 = v306 = 2 + v302;
                                        }
                                        v307 = 0;
                                        if (msg.data[v302] >> 240) {
                                            v307 = v308 = msg.data[2 + (v302 + (msg.data[v302] >> 240))] >> 96;
                                        }
                                        0x1aba(this, v0, v302 + 22);
                                        if (msg.data[v0] >> 240 & 0x400) {
                                            if (msg.data[v0] >> 240 & 0x800) {
                                                v309 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v309, Error(32, 5, 'ST:CR'));
                                            }
                                            v310 = 0x4444c5dc75cb358380d2e3de08a90.sync(v307).gas(msg.gas);
                                            require(v310, Error(32, 5, 'SY:CR'));
                                        }
                                        v0 = v311 = 0;
                                        if (msg.data[v0] >> 240 & 0x8) {
                                            if (msg.data[v0] >> 240 & 0x10) {
                                                v312 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v312, Error(32, 5, 'WI:CR'));
                                            }
                                        }
                                        v313 = (msg.data[v302 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + vc80x322f - MEM[64]], MEM[0:0]).value(v0).gas(msg.gas);
                                        if (!v313) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v30, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if (msg.data[v0] >> 240 & 0x20) {
                                                v307 = v314 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v315 = v314.deposit().value(v0).gas(msg.gas);
                                                require(v315, Error(32, 5, 'DE:CR'));
                                            }
                                            if (0x40 & msg.data[v0] >> 240) {
                                                if (!v307) {
                                                    v316 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v316, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v317 = v307.transfer(v0, v0).gas(msg.gas);
                                                    if (!v317) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v30, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    0x37d0(v0, v0, v0);
                                }
                            } else {
                                v0 = v318 = 7053;
                                0x3c89(v0, v0);
                            }
                        } else {
                            0x3faa(v0, v0, v0);
                        }
                        v276 = v319 = uint256.max;
                    } else {
                        v276 = uint256.max;
                        v320 = v321 = v0 + 1;
                        if ((byte(msg.data[v0], 0x0)) & 0x2) {
                            if ((byte(msg.data[v0], 0x0)) & 0x8) {
                                v322 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v322, Error(32, 5, 'ST:V3'));
                            }
                            v323 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v321] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v323, Error(32, 5, 'SY:V3'));
                            v320 = v324 = 3 + v0;
                        }
                        if (0 == (byte(msg.data[v0], 0x0)) & 0x80) {
                            MEM[MEM[64] + 68] = 0 - v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                MEM[MEM[64] + 100] = 0x1000276a4;
                            }
                        } else {
                            MEM[MEM[64] + 68] = v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                v325 = new uint256[]((msg.data[v320 + 20] >> 240) + 1);
                                MEM8[v326.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                                CALLDATACOPY(MEM[64] + 197, 22 + v320, msg.data[v320 + 20] >> 240);
                                v327 = (msg.data[v320] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v30, 0x1000276a4, v325).gas(msg.gas);
                                if (v327) {
                                }
                            }
                        }
                        v326 = new uint256[]((msg.data[v320 + 20] >> 240) + 1);
                        MEM8[v326.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                        CALLDATACOPY(MEM[64] + 197, 22 + v320, msg.data[v320 + 20] >> 240);
                        v328 = (msg.data[v320] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v30, v30, v326).gas(msg.gas);
                        if (v328) {
                        }
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v30, MEM[36] + 7, 'V3:RE: ');
                        MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        // Unknown jump to Block 0x24bd0x25c8B0x1b0e0xc8. Refer to 3-address code (TAC);
                    }
                    v0 = v0 + v276;
                    if (!v0) {
                        // Unknown jump to Block 0x5910xc8. Refer to 3-address code (TAC);
                    } else {
                        v263 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x10 & v0)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
        }
    }
    if (v0 >> 6) {
        v329 = v330 = byte(msg.data[v0 >> 6], 0x0);
        v331 = v332 = 1 + (v0 >> 6);
        while (v329) {
            v331 = v331 + 20;
            v333 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(msg.data[v331] >> 96, uint256.max).gas(msg.gas);
            require(v333, Error(32, 6, 'ST3:B3'));
            v329 = v329 - 1;
        }
    }
    v334 = msg.data[72 + (varg3 >> 240)] >> 96;
    if (0 == !((byte(varg0, 0x0)) & 0x2)) {
        if ((byte(varg0, 0x0)) & 0x4) {
            v335 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.getTokenDelta(v334).gas(msg.gas);
            require(v335, Error(32, 5, 'TD:PR'));
            require(0 - MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('BAL3SLIP'));
            if ((byte(varg0, 0x0)) & 0x1) {
                v336 = v337 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v336 = v338 = tx.origin;
            }
            v339 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v334, v336, 0 - MEM[0]).gas(msg.gas);
            require(v339, Error(32, 5, 'SN:PR'));
            MEM[96] = 0;
        } else {
            v340 = v334.balanceOf(this).gas(msg.gas);
            require(v340, Error(32, 5, 'BA:PR'));
            require(MEM[0] - 1 >= varg2 >> 240 << (byte(varg1, 0x0)), Error(0x534c4950));
            if (0 == !((byte(varg0, 0x0)) & 0x1)) {
                v341 = v342 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v341 = v343 = tx.origin;
            }
            v344 = v334.transfer(v341, MEM[0] - 1).gas(msg.gas);
            if (!v344) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:PR'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v30, MEM[36] + 7, 'TR:PR: ');
            }
        }
    } else {
        v345 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, v334)).gas(msg.gas);
        require(v345, Error(32, 5, 'CD:PR'));
        require(MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('V4SLIP'));
        if (address(v334)) {
            v346 = 0x4444c5dc75cb358380d2e3de08a90.mint(tx.origin, v334, MEM[0]).gas(msg.gas);
            require(v346, Error(32, 5, 'MN:PR'));
            MEM[96] = 0;
        } else {
            if (0x1 & (byte(varg0, 0x0))) {
                v347 = v348 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v347 = v349 = tx.origin;
            }
            v350 = 0x4444c5dc75cb358380d2e3de08a90.take(v334, v347, MEM[0]).gas(msg.gas);
            require(v350, Error(32, 5, 'TK:PR'));
            MEM[96] = 0;
        }
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v351 = new uint256[](0);
    MCOPY(v351.data, MEM[64] + 32, 0);
    MEM[v351.data] = 0;
    return v351;
}

function 0xc4000000() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    0x1926();
    CALLDATACOPY(28, 0, msg.data.length);
    v0 = msg.data.length;
    v1 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.unlock().gas(msg.gas);
    require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function 0xc1000000(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    0x1926();
    v0 = v1 = 107;
    if ((byte(varg5, 0x0)) & 0x2) {
        if ((byte(varg5, 0x0)) & 0x8) {
            v2 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            require(v2, Error(32, 5, 'ST:V3'));
        }
        v3 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[(varg6 >> 240) + v1] >> 96).gas(msg.gas);
        require(v3, Error(32, 5, 'SY:V3'));
        v0 = v4 = 109;
    }
    if (0 != (byte(varg5, 0x0)) & 0x80) {
    }
    if (0 != (byte(varg5, 0x0)) & 0x1) {
    }
    v5 = new uint256[]((msg.data[v0 + 20] >> 240) + 1);
    MEM8[v5.data] = (byte(varg5, 0x0)) & 0xFF;
    CALLDATACOPY(MEM[64] + 197, 22 + v0, msg.data[v0 + 20] >> 240);
    v6 = (msg.data[v0] >> 96).swap(this, (byte(varg5, 0x0)) & 0x1, varg4, 0 - varg4, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v5).gas(msg.gas);
    if (!v6) {
        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
        RETURNDATACOPY(0, 0, 68);
        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
        revert(v7, MEM[36] + 7, 'V3:RE: ');
    } else {
        v8 = msg.data[72 + (varg3 >> 240)] >> 96;
        if (0 == !((byte(varg0, 0x0)) & 0x2)) {
            if ((byte(varg0, 0x0)) & 0x4) {
                v9 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.getTokenDelta(v8).gas(msg.gas);
                require(v9, Error(32, 5, 'TD:PR'));
                require(0 - MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('BAL3SLIP'));
                if ((byte(varg0, 0x0)) & 0x1) {
                    v10 = v11 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v10 = v12 = tx.origin;
                }
                v13 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v8, v10, 0 - MEM[0]).gas(msg.gas);
                require(v13, Error(32, 5, 'SN:PR'));
                MEM[96] = 0;
            } else {
                v14 = v8.balanceOf(this).gas(msg.gas);
                require(v14, Error(32, 5, 'BA:PR'));
                require(MEM[0] - 1 >= varg2 >> 240 << (byte(varg1, 0x0)), Error(0x534c4950));
                if (0 == !((byte(varg0, 0x0)) & 0x1)) {
                    v15 = v16 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v15 = v17 = tx.origin;
                }
                v18 = v8.transfer(v15, MEM[0] - 1).gas(msg.gas);
                if (!v18) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:PR'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v7, MEM[36] + 7, 'TR:PR: ');
                }
            }
        } else {
            v19 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, v8)).gas(msg.gas);
            require(v19, Error(32, 5, 'CD:PR'));
            require(MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('V4SLIP'));
            if (address(v8)) {
                v20 = 0x4444c5dc75cb358380d2e3de08a90.mint(tx.origin, v8, MEM[0]).gas(msg.gas);
                require(v20, Error(32, 5, 'MN:PR'));
                MEM[96] = 0;
            } else {
                if (0x1 & (byte(varg0, 0x0))) {
                    v21 = v22 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v21 = v23 = tx.origin;
                }
                v24 = 0x4444c5dc75cb358380d2e3de08a90.take(v8, v21, MEM[0]).gas(msg.gas);
                require(v24, Error(32, 5, 'TK:PR'));
                MEM[96] = 0;
            }
        }
        exit;
    }
}

function 0xab000000(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 24;
    v2 = v3 = byte(varg1, 0x0);
    if (v3) {
        v4 = v5 = 37;
        while (1) {
            v2 = v4 + 2;
            v6 = msg.data[v4] >> 240;
            if (v6 & 0x1c0) {
                if ((v6 & 0x1c0) - 64) {
                    if (128 - (v6 & 0x1c0)) {
                        v2 = 22 + v4;
                        if (msg.data[v2] >> 96) {
                            v7, v2 = (msg.data[v2] >> 96).balanceOf(this).gas(msg.gas);
                            if (!v7) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v2 = v8 = 0;
                                if (v7) {
                                    v9 = 32;
                                    if (v9 > RETURNDATASIZE()) {
                                        v9 = v10 = RETURNDATASIZE();
                                    }
                                    require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + v9 - MEM[64] >= 32);
                                }
                            }
                        } else {
                            v2 = this.balance;
                        }
                        if (!(v6 & 0x100)) {
                            v2 = v11 = uint256.max + v2;
                        }
                    } else {
                        v2 = v12 = msg.data[v2];
                        v2 = v2 + 32;
                    }
                } else {
                    v2 = v2 + 3;
                    v2 = v2 * (msg.data[v2] >> 232) >> 24;
                }
            }
            if (!(v6 & 0x30)) {
                v2 = v13 = this;
            } else if (16 == v6 & 0x30) {
                v2 = v14 = 0x4444c5dc75cb358380d2e3de08a90;
            } else if (32 == v6 & 0x30) {
                v2 = v2 + 2;
                v2 = v15 = msg.data[(msg.data[v2] >> 240) + v2] >> 96;
            } else {
                v2 = v16 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
            }
            v0 = v17 = v2 + 2;
            if (bool(v6)) {
                if (bool(v6) - 1) {
                    if (bool(v6) - 2) {
                        if (bool(v6) - 3) {
                            if (4 - bool(v6)) {
                                v18 = v19 = uint256.max;
                                CALLDATACOPY(MEM[64] + 96, 22 + v17, msg.data[v17 + 20] >> 240);
                                v20 = (msg.data[v17] >> 96).delegatecall(this, v2, v2).gas(msg.gas);
                                if (!v20) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v21, MEM[36] + 7, 'EE:RE: ');
                                }
                            } else {
                                v6 = v22 = 8490;
                                0x42d5(v2, v2, v17);
                                v23 = 0;
                                v24 = v25 = v0 + 4;
                                if (msg.data[v0 + 2] >> 240) {
                                    v23 = v26 = msg.data[4 + (v0 + (msg.data[v0 + 2] >> 240))] >> 96;
                                }
                                v2 = v27 = 0;
                                if (msg.data[v0] >> 240 & 0x3) {
                                    if ((msg.data[v0] >> 240 & 0x3) - 1) {
                                        if ((msg.data[v0] >> 240 & 0x3) - 2) {
                                            v28 = v23.balanceOf(v2).gas(msg.gas);
                                            require(v28, Error(32, 5, 'BA:CF'));
                                            v2 = v29 = MEM[0];
                                        }
                                        v30 = v31 = 7;
                                    } else {
                                        v30 = v32 = 7;
                                        v2 = v33 = msg.data[v25];
                                        v24 = v34 = v0 + 36;
                                    }
                                } else {
                                    v30 = 7;
                                }
                                v35 = v36 = v24 + v30;
                                v37 = v38 = MEM[64] + 4;
                                v39 = msg.data[v24 + 4] >> 232;
                                while (v39) {
                                    if (!(v39 & 0x3)) {
                                        MEM[v37] = v2;
                                        v37 = v37 + 32;
                                    } else if (1 == v39 & 0x3) {
                                        MEM[v37] = v2;
                                        v37 = v37 + 32;
                                    } else if (2 == v39 & 0x3) {
                                        MEM[v37] = byte(msg.data[v35], 0x0);
                                        v37 = v37 + 32;
                                        v35 = v35 + 1;
                                    } else {
                                        CALLDATACOPY(v37, v35 + 1, byte(msg.data[v35], 0x0));
                                        v37 = v37 + (byte(msg.data[v35], 0x0));
                                        v35 = v35 + (byte(msg.data[v35], 0x0)) + 1;
                                    }
                                    v39 = v39 >> 3;
                                }
                                if (msg.data[v0] >> 240 & 0x100) {
                                    if (msg.data[v0] >> 240 & 0x200) {
                                        v40 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v40, Error(32, 5, 'ST:CF'));
                                    }
                                    v41 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v35 + (msg.data[v35] >> 240)] >> 96, this, v2).gas(msg.gas);
                                    require(v41, Error(32, 5, 'TK:CF'));
                                    MEM[96] = 0;
                                    v35 = v42 = 2 + v35;
                                }
                                if (msg.data[v0] >> 240 & 0x400) {
                                    if (msg.data[v0] >> 240 & 0x800) {
                                        v43 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v43, Error(32, 5, 'ST:CF'));
                                    }
                                    v44 = 0x4444c5dc75cb358380d2e3de08a90.sync(v23).gas(msg.gas);
                                    require(v44, Error(32, 5, 'SY:CF'));
                                }
                                v2 = v45 = 0;
                                if (msg.data[v0] >> 240 & 0x8) {
                                    if (msg.data[v0] >> 240 & 0x10) {
                                        v46 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v2).gas(msg.gas);
                                        require(v46, Error(32, 5, 'WI:CT'));
                                    }
                                }
                                v47 = (msg.data[v35] >> 96).call(msg.data[v24]).value(v2).gas(msg.gas);
                                if (!v47) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v21, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if ((msg.data[v0] >> 240 & 0x3) - 2) {
                                        if (!((msg.data[v0] >> 240 & 0x3) - 3)) {
                                            v48 = v23.balanceOf(v2).gas(msg.gas);
                                            require(v48, Error(32, 5, 'BA:CD'));
                                            v2 = v49 = MEM[0] - v2;
                                        }
                                    } else if (address(v23)) {
                                        v50 = v23.balanceOf(this).gas(msg.gas);
                                        require(v50, Error(32, 5, 'BA:CT'));
                                        if (!(msg.data[v0] >> 240 & 0x4)) {
                                            v2 = v51 = MEM[0] - 1;
                                        } else {
                                            v2 = v52 = MEM[0];
                                        }
                                    } else {
                                        v2 = v53 = this.balance;
                                    }
                                    if (msg.data[v0] >> 240 & 0x20) {
                                        v23 = v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                        v55 = v54.deposit().value(v2).gas(msg.gas);
                                        require(v55, Error(32, 5, 'DE:CT'));
                                    }
                                    if (0x40 & msg.data[v0] >> 240) {
                                        if (!v23) {
                                            v56 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v2).gas(msg.gas);
                                            require(v56, Error(32, 5, 'SE:CF'));
                                        } else {
                                            v57 = v23.transfer(v2, v2).gas(msg.gas);
                                            if (!v57) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v21, MEM[36] + 7, 'TR:CF: ');
                                            }
                                        }
                                    }
                                    // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v6 = v58 = 8490;
                            0x4990(v2, v2, v17);
                            v59 = v0 + 2;
                            if (msg.data[v0] >> 240 & 0x10) {
                                if (!(msg.data[v0] >> 240 & 0x100)) {
                                    v60 = (msg.data[v0 + (msg.data[v59] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v2).gas(msg.gas);
                                    if (!v60) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                        revert(v21, MEM[36] + 8, 'TR:B3F: ');
                                    } else {
                                        v59 = v61 = v0 + 4;
                                    }
                                } else {
                                    if (msg.data[v0] >> 240 & 0x200) {
                                        v62 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v62, Error(32, 6, 'ST:B3F'));
                                    }
                                    v63 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v59 + (msg.data[v59] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v2).gas(msg.gas);
                                    require(v63, Error(32, 6, 'TK:B3F'));
                                    MEM[96] = 0;
                                    v59 = v64 = v59 + 2;
                                }
                            }
                            v65 = bool(msg.data[v0] >> 240);
                            while (v65) {
                                if ((byte(msg.data[v59], 0x0)) - 2) {
                                    v66 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v59], 0x0), msg.data[v59 + (msg.data[v59 + 1] >> 240) + 1] >> 96, v2, 0).gas(msg.gas);
                                    if (!v66) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v21, MEM[36] + 7, 'B3B:F: ');
                                    } else {
                                        v67 = v68 = uint256.max;
                                        v2 = v69 = MEM[0];
                                        v59 = v59 + 3;
                                    }
                                } else {
                                    v70 = new uint256[](0);
                                    MEM[v70.data] = msg.data[v59 + 1] >> 96;
                                    v71 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v70, v21, v21, msg.data[v59 + 1 + (msg.data[v59 + 1 + 20] >> 240)] >> 96, msg.data[v59 + 1 + (msg.data[v59 + 1 + 22] >> 240)] >> 96, v2, 0, 0).gas(msg.gas);
                                    if (!v71) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                        revert(v21, MEM[36] + 7, 'B3S:F: ');
                                    } else {
                                        v67 = v72 = uint256.max;
                                        v2 = v73 = MEM[0];
                                        v59 = v59 + 1 + 24;
                                    }
                                }
                                v65 = v65 + v67;
                            }
                            if (msg.data[v0] >> 240 & 0x20) {
                                v74 = msg.data[v59 + (msg.data[v59] >> 240)] >> 96;
                                if (msg.data[v0] >> 240 & 0x40) {
                                    if (0x80 & msg.data[v0] >> 240) {
                                        v75 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v75, Error(32, 7, 'ST:B3FS'));
                                    }
                                    v76 = 0x4444c5dc75cb358380d2e3de08a90.sync(v74).gas(msg.gas);
                                    require(v76, Error(32, 6, 'SY:B3F'));
                                }
                                v77 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v74, v2, v2).gas(msg.gas);
                                require(v77, Error(32, 5, 'SN:F3'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
                        }
                    } else {
                        v6 = v78 = 8490;
                        0x5008(v2, v2, v17);
                        v79 = v80 = v0 + 22;
                        if (msg.data[v0] >> 240 & 0x10) {
                            v79 = v81 = v0 + 24;
                            if (!(msg.data[v0] >> 240 & 0x20)) {
                                v82 = (msg.data[22 + ((msg.data[v80] >> 240) + v0)] >> 96).transfer(msg.data[v0 + 2] >> 96, v2).gas(msg.gas);
                                if (!v82) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                    revert(v21, MEM[36] + 7, 'TR:2F: ');
                                }
                            } else {
                                if (msg.data[v0] >> 240 & 0x40) {
                                    v83 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v83, Error(32, 5, 'ST:2F'));
                                }
                                v84 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v80] >> 240) + v0)] >> 96, msg.data[v0 + 2] >> 96, v2).gas(msg.gas);
                                require(v84, Error(32, 5, 'TK:2F'));
                                MEM[96] = 0;
                            }
                        }
                        if (msg.data[v0] >> 240 & 0x100) {
                            if (msg.data[v0] >> 240 & 0x200) {
                                v85 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v85, Error(32, 5, 'ST:22'));
                            }
                            v86 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v79 + (msg.data[v79] >> 240)] >> 96).gas(msg.gas);
                            require(v86, Error(32, 5, 'SY:2F'));
                        }
                        if (bool(msg.data[v0] >> 240)) {
                            if (0 == (bool(msg.data[v0] >> 240) == 1)) {
                                // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
                            }
                        } else {
                            // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
                        }
                    }
                } else {
                    v6 = v87 = 8490;
                    0x5470(v2, v2, v17);
                    v88 = 0;
                    v89 = v90 = v0 + 1;
                    v91 = v88 - v2;
                    while (v88 < bool(byte(msg.data[v0], v88))) {
                        if (0 == 0x2 & (byte(msg.data[v89], 0x0))) {
                            MEM[MEM[64] + 132] = 0;
                            v89 += 11;
                        } else {
                            MEM[MEM[64] + 132] = msg.data[v89] >> 96;
                            v89 += 31;
                        }
                        if (!(0x1 & (byte(msg.data[v89], 0x0)))) {
                            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            MEM[MEM[64] + 228] = 0x1000276a4;
                        }
                        v92 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v89 + (msg.data[1 + v89] >> 240)] >> 96, msg.data[v89 + (msg.data[3 + v89] >> 240)] >> 96, msg.data[v89 + 5] >> 232, msg.data[v89 + 8] >> 232, v21, 0x1 & (byte(msg.data[v89], 0x0)), v91, v21, 288, v88).gas(msg.gas);
                        if (!v92) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v21, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                        } else {
                            if (!(0x1 & (byte(msg.data[v89], 0x0)))) {
                                v93 = v94 = 1;
                                v91 = v95 = 0 - (MEM[0] >> 128);
                            } else {
                                v93 = v96 = 1;
                                v91 = v97 = 0 - int128(MEM[0]);
                            }
                            v88 = v88 + v93;
                        }
                    }
                    if ((byte(msg.data[v0], v88)) & 0x10) {
                        if (0x40 & (byte(msg.data[v0], v88))) {
                            v98 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                            require(v98, Error(32, 5, 'ST:F4'));
                        }
                        v99 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v89 + (msg.data[v89] >> 240)] >> 96, v2, 0 - v91).gas(msg.gas);
                        require(v99, Error(32, 5, 'TK:F4'));
                        MEM[96] = 0;
                    }
                    // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
                }
                v18 = v100 = uint256.max;
            } else {
                v6 = v101 = 8372;
                0x5784(v2, v2, v17);
                v18 = uint256.max;
                v102 = v0 + 1;
                if ((byte(msg.data[v0], 0x0)) & 0x2) {
                    if ((byte(msg.data[v0], 0x0)) & 0x8) {
                        v103 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        require(v103, Error(32, 5, 'ST:F3'));
                    }
                    v104 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v102] >> 240) + 1] >> 96).gas(msg.gas);
                    require(v104, Error(32, 5, 'SY:F3'));
                    v102 = v105 = 3 + v0;
                }
                if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                }
                v106 = new uint256[](25);
                MEM8[MEM[64] + 198] = (byte(msg.data[v102], 0x2)) & 0xFF;
                v107 = (msg.data[v102 + 3] >> 96).swap(v2, (byte(msg.data[v0], 0x0)) & 0x1, v2, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v106, v21, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v102 + (msg.data[v102] >> 240)]).gas(msg.gas);
                if (!v107) {
                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                    revert(v21, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                }
            }
            v2 = v2 + v18;
            if (!v2) {
                // Unknown jump to Block 0x180xd7. Refer to 3-address code (TAC);
            } else {
                v4 = 2 + ((msg.data[v2] >> 240) + v2);
                if (!(0x200 & v6)) {
                    require(v2 <= v2, Error(20304));
                    v2 = v2 - v2;
                }
            }
        }
    }
}

function unlockCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = varg5 >> 232;
    v2 = v3 = 109;
    if (!(v1 & 0x30)) {
        v0 = v4 = this;
    } else if (16 == v1 & 0x30) {
        v0 = v5 = 0x4444c5dc75cb358380d2e3de08a90;
    } else if (32 == v1 & 0x30) {
        v0 = v6 = msg.data[(varg6 >> 240) + v3] >> 96;
        v2 = v7 = 111;
    } else {
        v0 = v8 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
    }
    if (v1 & 0x7) {
        if ((v1 & 0x7) - 1) {
            if ((v1 & 0x7) - 2) {
                if (3 - (v1 & 0x7)) {
                    0x2cae(v0, varg4, v2);
                } else {
                    v9 = v10 = 4786;
                    0x1aba(v0, varg4, v2 + 2);
                    v0 = v11 = byte(msg.data[(msg.data[v2] >> 240) + v2 + 2], 0x0);
                    if (v11) {
                        v12 = v13 = 1 + ((msg.data[v2] >> 240) + v2 + 2);
                        while (1) {
                            v0 = v12 + 2;
                            v14 = msg.data[v12] >> 240;
                            if (v14 & 0x1c0) {
                                if ((v14 & 0x1c0) - 64) {
                                    if (128 - (v14 & 0x1c0)) {
                                        v0 = 22 + v12;
                                        if (msg.data[v0] >> 96) {
                                            v15, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                            if (!v15) {
                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                revert(MEM[64], RETURNDATASIZE());
                                            } else {
                                                v0 = v16 = 0;
                                                if (v15) {
                                                    v17 = 32;
                                                    if (v17 > RETURNDATASIZE()) {
                                                        v17 = v18 = RETURNDATASIZE();
                                                    }
                                                    require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                    MEM[64] = MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                    require(MEM[64] + v17 - MEM[64] >= 32);
                                                }
                                            }
                                        } else {
                                            v0 = this.balance;
                                        }
                                        if (!(v14 & 0x100)) {
                                            v0 = v19 = uint256.max + v0;
                                        }
                                    } else {
                                        v0 = v20 = msg.data[v0];
                                        v0 = v0 + 32;
                                    }
                                } else {
                                    v0 = v0 + 3;
                                    v0 = v0 * (msg.data[v0] >> 232) >> 24;
                                }
                            }
                            if (!(v14 & 0x30)) {
                                v0 = v21 = this;
                            } else if (16 == v14 & 0x30) {
                                v0 = v22 = 0x4444c5dc75cb358380d2e3de08a90;
                            } else if (32 == v14 & 0x30) {
                                v0 = v0 + 2;
                                v0 = v23 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                            } else {
                                v0 = v24 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                            }
                            v9 = v25 = v0 + 2;
                            if (bool(v14)) {
                                if (bool(v14) - 1) {
                                    if (bool(v14) - 2) {
                                        if (bool(v14) - 3) {
                                            if (4 - bool(v14)) {
                                                v26 = v27 = uint256.max;
                                                CALLDATACOPY(MEM[64] + 96, 22 + v25, msg.data[v25 + 20] >> 240);
                                                v28 = (msg.data[v25] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                                if (!v28) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v29, MEM[36] + 7, 'EE:RE: ');
                                                }
                                            } else {
                                                v14 = v30 = 8490;
                                                0x42d5(v0, v0, v25);
                                                v31 = 0;
                                                v32 = v33 = v9 + 4;
                                                if (msg.data[v9 + 2] >> 240) {
                                                    v31 = v34 = msg.data[4 + (v9 + (msg.data[v9 + 2] >> 240))] >> 96;
                                                }
                                                v0 = v35 = 0;
                                                if (msg.data[v9] >> 240 & 0x3) {
                                                    if ((msg.data[v9] >> 240 & 0x3) - 1) {
                                                        if ((msg.data[v9] >> 240 & 0x3) - 2) {
                                                            v36 = v31.balanceOf(v0).gas(msg.gas);
                                                            require(v36, Error(32, 5, 'BA:CF'));
                                                            v0 = v37 = MEM[0];
                                                        }
                                                        v38 = v39 = 7;
                                                    } else {
                                                        v38 = v40 = 7;
                                                        v0 = v41 = msg.data[v33];
                                                        v32 = v42 = v9 + 36;
                                                    }
                                                } else {
                                                    v38 = 7;
                                                }
                                                v43 = v44 = v32 + v38;
                                                v45 = v46 = MEM[64] + 4;
                                                v47 = msg.data[v32 + 4] >> 232;
                                                while (v47) {
                                                    if (!(v47 & 0x3)) {
                                                        MEM[v45] = v0;
                                                        v45 = v45 + 32;
                                                    } else if (1 == v47 & 0x3) {
                                                        MEM[v45] = v0;
                                                        v45 = v45 + 32;
                                                    } else if (2 == v47 & 0x3) {
                                                        MEM[v45] = byte(msg.data[v43], 0x0);
                                                        v45 = v45 + 32;
                                                        v43 = v43 + 1;
                                                    } else {
                                                        CALLDATACOPY(v45, v43 + 1, byte(msg.data[v43], 0x0));
                                                        v45 = v45 + (byte(msg.data[v43], 0x0));
                                                        v43 = v43 + (byte(msg.data[v43], 0x0)) + 1;
                                                    }
                                                    v47 = v47 >> 3;
                                                }
                                                if (msg.data[v9] >> 240 & 0x100) {
                                                    if (msg.data[v9] >> 240 & 0x200) {
                                                        v48 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v48, Error(32, 5, 'ST:CF'));
                                                    }
                                                    v49 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v43 + (msg.data[v43] >> 240)] >> 96, this, v0).gas(msg.gas);
                                                    require(v49, Error(32, 5, 'TK:CF'));
                                                    MEM[96] = 0;
                                                    v43 = v50 = 2 + v43;
                                                }
                                                if (msg.data[v9] >> 240 & 0x400) {
                                                    if (msg.data[v9] >> 240 & 0x800) {
                                                        v51 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v51, Error(32, 5, 'ST:CF'));
                                                    }
                                                    v52 = 0x4444c5dc75cb358380d2e3de08a90.sync(v31).gas(msg.gas);
                                                    require(v52, Error(32, 5, 'SY:CF'));
                                                }
                                                v0 = v53 = 0;
                                                if (msg.data[v9] >> 240 & 0x8) {
                                                    if (msg.data[v9] >> 240 & 0x10) {
                                                        v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                        require(v54, Error(32, 5, 'WI:CT'));
                                                    }
                                                }
                                                v55 = (msg.data[v43] >> 96).call(msg.data[v32]).value(v0).gas(msg.gas);
                                                if (!v55) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v29, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                                } else {
                                                    if ((msg.data[v9] >> 240 & 0x3) - 2) {
                                                        if (!((msg.data[v9] >> 240 & 0x3) - 3)) {
                                                            v56 = v31.balanceOf(v0).gas(msg.gas);
                                                            require(v56, Error(32, 5, 'BA:CD'));
                                                            v0 = v57 = MEM[0] - v0;
                                                        }
                                                    } else if (address(v31)) {
                                                        v58 = v31.balanceOf(this).gas(msg.gas);
                                                        require(v58, Error(32, 5, 'BA:CT'));
                                                        if (!(msg.data[v9] >> 240 & 0x4)) {
                                                            v0 = v59 = MEM[0] - 1;
                                                        } else {
                                                            v0 = v60 = MEM[0];
                                                        }
                                                    } else {
                                                        v0 = v61 = this.balance;
                                                    }
                                                    if (msg.data[v9] >> 240 & 0x20) {
                                                        v31 = v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                        v63 = v62.deposit().value(v0).gas(msg.gas);
                                                        require(v63, Error(32, 5, 'DE:CT'));
                                                    }
                                                    if (0x40 & msg.data[v9] >> 240) {
                                                        if (!v31) {
                                                            v64 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                            require(v64, Error(32, 5, 'SE:CF'));
                                                        } else {
                                                            v65 = v31.transfer(v0, v0).gas(msg.gas);
                                                            if (!v65) {
                                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                                RETURNDATACOPY(0, 0, 68);
                                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                                revert(v29, MEM[36] + 7, 'TR:CF: ');
                                                            }
                                                        }
                                                    }
                                                    // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                                                }
                                            }
                                        } else {
                                            v14 = v66 = 8490;
                                            0x4990(v0, v0, v25);
                                            v67 = v9 + 2;
                                            if (msg.data[v9] >> 240 & 0x10) {
                                                if (!(msg.data[v9] >> 240 & 0x100)) {
                                                    v68 = (msg.data[v9 + (msg.data[v67] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                    if (!v68) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                        revert(v29, MEM[36] + 8, 'TR:B3F: ');
                                                    } else {
                                                        v67 = v69 = v9 + 4;
                                                    }
                                                } else {
                                                    if (msg.data[v9] >> 240 & 0x200) {
                                                        v70 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v70, Error(32, 6, 'ST:B3F'));
                                                    }
                                                    v71 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v67 + (msg.data[v67] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                    require(v71, Error(32, 6, 'TK:B3F'));
                                                    MEM[96] = 0;
                                                    v67 = v72 = v67 + 2;
                                                }
                                            }
                                            v73 = bool(msg.data[v9] >> 240);
                                            while (v73) {
                                                if ((byte(msg.data[v67], 0x0)) - 2) {
                                                    v74 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v67], 0x0), msg.data[v67 + (msg.data[v67 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                                    if (!v74) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v29, MEM[36] + 7, 'B3B:F: ');
                                                    } else {
                                                        v75 = v76 = uint256.max;
                                                        v0 = v77 = MEM[0];
                                                        v67 = v67 + 3;
                                                    }
                                                } else {
                                                    v78 = new uint256[](0);
                                                    MEM[v78.data] = msg.data[v67 + 1] >> 96;
                                                    v79 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v78, v29, v29, msg.data[v67 + 1 + (msg.data[v67 + 1 + 20] >> 240)] >> 96, msg.data[v67 + 1 + (msg.data[v67 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                                    if (!v79) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v29, MEM[36] + 7, 'B3S:F: ');
                                                    } else {
                                                        v75 = v80 = uint256.max;
                                                        v0 = v81 = MEM[0];
                                                        v67 = v67 + 1 + 24;
                                                    }
                                                }
                                                v73 = v73 + v75;
                                            }
                                            if (msg.data[v9] >> 240 & 0x20) {
                                                v82 = msg.data[v67 + (msg.data[v67] >> 240)] >> 96;
                                                if (msg.data[v9] >> 240 & 0x40) {
                                                    if (0x80 & msg.data[v9] >> 240) {
                                                        v83 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                        require(v83, Error(32, 7, 'ST:B3FS'));
                                                    }
                                                    v84 = 0x4444c5dc75cb358380d2e3de08a90.sync(v82).gas(msg.gas);
                                                    require(v84, Error(32, 6, 'SY:B3F'));
                                                }
                                                v85 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v82, v0, v0).gas(msg.gas);
                                                require(v85, Error(32, 5, 'SN:F3'));
                                                MEM[96] = 0;
                                            }
                                            // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                                        }
                                    } else {
                                        v14 = v86 = 8490;
                                        0x5008(v0, v0, v25);
                                        v87 = v88 = v9 + 22;
                                        if (msg.data[v9] >> 240 & 0x10) {
                                            v87 = v89 = v9 + 24;
                                            if (!(msg.data[v9] >> 240 & 0x20)) {
                                                v90 = (msg.data[22 + ((msg.data[v88] >> 240) + v9)] >> 96).transfer(msg.data[v9 + 2] >> 96, v0).gas(msg.gas);
                                                if (!v90) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v29, MEM[36] + 7, 'TR:2F: ');
                                                }
                                            } else {
                                                if (msg.data[v9] >> 240 & 0x40) {
                                                    v91 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v91, Error(32, 5, 'ST:2F'));
                                                }
                                                v92 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v88] >> 240) + v9)] >> 96, msg.data[v9 + 2] >> 96, v0).gas(msg.gas);
                                                require(v92, Error(32, 5, 'TK:2F'));
                                                MEM[96] = 0;
                                            }
                                        }
                                        if (msg.data[v9] >> 240 & 0x100) {
                                            if (msg.data[v9] >> 240 & 0x200) {
                                                v93 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v93, Error(32, 5, 'ST:22'));
                                            }
                                            v94 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v87 + (msg.data[v87] >> 240)] >> 96).gas(msg.gas);
                                            require(v94, Error(32, 5, 'SY:2F'));
                                        }
                                        if (bool(msg.data[v9] >> 240)) {
                                            if (0 == (bool(msg.data[v9] >> 240) == 1)) {
                                                // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                                            }
                                        } else {
                                            // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v14 = v95 = 8490;
                                    0x5470(v0, v0, v25);
                                    v96 = 0;
                                    v97 = v98 = v9 + 1;
                                    v99 = v96 - v0;
                                    while (v96 < bool(byte(msg.data[v9], v96))) {
                                        if (0 == 0x2 & (byte(msg.data[v97], 0x0))) {
                                            MEM[MEM[64] + 132] = 0;
                                            v97 += 11;
                                        } else {
                                            MEM[MEM[64] + 132] = msg.data[v97] >> 96;
                                            v97 += 31;
                                        }
                                        if (!(0x1 & (byte(msg.data[v97], 0x0)))) {
                                            MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                        } else {
                                            MEM[MEM[64] + 228] = 0x1000276a4;
                                        }
                                        v100 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v97 + (msg.data[1 + v97] >> 240)] >> 96, msg.data[v97 + (msg.data[3 + v97] >> 240)] >> 96, msg.data[v97 + 5] >> 232, msg.data[v97 + 8] >> 232, v29, 0x1 & (byte(msg.data[v97], 0x0)), v99, v29, 288, v96).gas(msg.gas);
                                        if (!v100) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v29, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if (!(0x1 & (byte(msg.data[v97], 0x0)))) {
                                                v101 = v102 = 1;
                                                v99 = v103 = 0 - (MEM[0] >> 128);
                                            } else {
                                                v101 = v104 = 1;
                                                v99 = v105 = 0 - int128(MEM[0]);
                                            }
                                            v96 = v96 + v101;
                                        }
                                    }
                                    if ((byte(msg.data[v9], v96)) & 0x10) {
                                        if (0x40 & (byte(msg.data[v9], v96))) {
                                            v106 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v106, Error(32, 5, 'ST:F4'));
                                        }
                                        v107 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v97 + (msg.data[v97] >> 240)] >> 96, v0, 0 - v99).gas(msg.gas);
                                        require(v107, Error(32, 5, 'TK:F4'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                                }
                                v26 = v108 = uint256.max;
                            } else {
                                v14 = v109 = 8372;
                                0x5784(v0, v0, v25);
                                v26 = uint256.max;
                                v110 = v9 + 1;
                                if ((byte(msg.data[v9], 0x0)) & 0x2) {
                                    if ((byte(msg.data[v9], 0x0)) & 0x8) {
                                        v111 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v111, Error(32, 5, 'ST:F3'));
                                    }
                                    v112 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v9 + (msg.data[v110] >> 240) + 1] >> 96).gas(msg.gas);
                                    require(v112, Error(32, 5, 'SY:F3'));
                                    v110 = v113 = 3 + v9;
                                }
                                if (0 != (byte(msg.data[v9], 0x0)) & 0x1) {
                                }
                                v114 = new uint256[](25);
                                MEM8[MEM[64] + 198] = (byte(msg.data[v110], 0x2)) & 0xFF;
                                v115 = (msg.data[v110 + 3] >> 96).swap(v0, (byte(msg.data[v9], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v114, v29, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v110 + (msg.data[v110] >> 240)]).gas(msg.gas);
                                if (!v115) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v29, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                                }
                            }
                            v0 = v0 + v26;
                            if (!v0) {
                                // Unknown jump to Block 0x12b2. Refer to 3-address code (TAC);
                            } else {
                                v12 = 2 + ((msg.data[v0] >> 240) + v0);
                                if (!(0x200 & v14)) {
                                    require(v0 <= v0, Error(20304));
                                    v0 = v0 - v0;
                                }
                            }
                        }
                    }
                }
            } else {
                if ((byte(msg.data[v2 + 22], 0x0)) & 0x80) {
                    if (0 == !((byte(msg.data[v2 + 22], 0x0)) & 0x6)) {
                        if (2 - ((byte(msg.data[v2 + 22], 0x0)) & 0x6)) {
                            v116 = 9975;
                            v117 = 64;
                            v118 = 0;
                            v119 = 4;
                            v120 = 28;
                            v121 = 10000;
                        } else {
                            v122 = (msg.data[v2] >> 96).executeVirtualOrders(block.timestamp).gas(msg.gas);
                            if (!v122) {
                                require(RETURNDATASIZE() > 68);
                                revert(0, RETURNDATASIZE());
                            } else {
                                v123 = (msg.data[v2] >> 96).fee().gas(msg.gas);
                                if (!v123) {
                                    require(RETURNDATASIZE() > 68);
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    v116 = v124 = MEM[0];
                                    v117 = v125 = 64;
                                    v118 = v126 = 0;
                                    v119 = v127 = 4;
                                    v120 = v128 = 28;
                                    v121 = v129 = 10000;
                                }
                            }
                        }
                    } else {
                        v116 = v130 = 997;
                        v117 = v131 = 64;
                        v118 = v132 = 0;
                        v119 = v133 = 4;
                        v120 = v134 = 28;
                        v121 = v135 = 1000;
                    }
                    MEM[v118] = 0x902f1ac;
                    v136 = (msg.data[v2] >> 96).staticcall(MEM[v5a3c0x5b24V0x2436V0x12c0:v5a3c0x5b24V0x2436V0x12c0 + v5a3c0x5b22V0x2436V0x12c0], MEM[v5a3c0x5b21V0x2436V0x12c0:v5a3c0x5b21V0x2436V0x12c0 + v5a3c0x5b1fV0x2436V0x12c0]).gas(msg.gas);
                    if (!v136) {
                        require(RETURNDATASIZE() > 68);
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!((byte(msg.data[v2 + 22], 0x0)) & 0x1)) {
                            v137 = MEM[32];
                            v138 = MEM[0];
                        } else {
                            v137 = v139 = MEM[0];
                            v138 = v140 = MEM[32];
                        }
                        require(v137 * v121 + varg4 * v116, Panic(18)); // division by zero
                        v0 = v141 = varg4 * v116 * v138 / (v137 * v121 + varg4 * v116);
                    }
                }
                if (0 != (byte(msg.data[v2 + 22], 0x0)) & 0x1) {
                }
                v142 = new uint256[](msg.data[v2 + 20] >> 240);
                CALLDATACOPY(v142.data, v2 + 22, msg.data[v2 + 20] >> 240);
                v143 = (msg.data[v2] >> 96).swap(0, v0, 0, v0, this, v142).gas(msg.gas);
                if (!v143) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'V2:RT'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v29, MEM[36] + 7, 'V2:RT: ');
                }
            }
        } else {
            v144 = v145 = v2 + 1;
            if ((byte(msg.data[v2], 0x0)) & 0x2) {
                if ((byte(msg.data[v2], 0x0)) & 0x8) {
                    v146 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    require(v146, Error(32, 5, 'ST:V3'));
                }
                v147 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v2 + (msg.data[v145] >> 240) + 1] >> 96).gas(msg.gas);
                require(v147, Error(32, 5, 'SY:V3'));
                v144 = v148 = 3 + v2;
            }
            if (0 == (byte(msg.data[v2], 0x0)) & 0x80) {
                if (0 != (byte(msg.data[v2], 0x0)) & 0x1) {
                }
            } else if (0 != (byte(msg.data[v2], 0x0)) & 0x1) {
                v149 = new uint256[]((msg.data[v144 + 20] >> 240) + 1);
                MEM8[v150.data] = (byte(msg.data[v2], 0x0)) & 0xFF;
                CALLDATACOPY(MEM[64] + 197, 22 + v144, msg.data[v144 + 20] >> 240);
                v151 = (msg.data[v144] >> 96).swap(v0, (byte(msg.data[v2], 0x0)) & 0x1, varg4, 0x1000276a4, v149).gas(msg.gas);
                if (v151) {
                }
            }
            v150 = new uint256[]((msg.data[v144 + 20] >> 240) + 1);
            MEM8[v150.data] = (byte(msg.data[v2], 0x0)) & 0xFF;
            CALLDATACOPY(MEM[64] + 197, 22 + v144, msg.data[v144 + 20] >> 240);
            v152 = (msg.data[v144] >> 96).swap(v0, (byte(msg.data[v2], 0x0)) & 0x1, varg4, 0 - varg4, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v150).gas(msg.gas);
            if (v152) {
            }
            require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
            revert(v29, MEM[36] + 7, 'V3:RE: ');
            // Unknown jump to Block 0x24bd0x25c8B0x12a9. Refer to 3-address code (TAC);
        }
    } else {
        v0 = v153 = 2330;
        if (v1 & 0x8) {
            v154 = v155 = 4755;
            v0 = v156 = byte(msg.data[v2 + 2], 0x0);
            if (v156) {
                v157 = v158 = 1 + (v2 + 2);
                while (1) {
                    v0 = v157 + 2;
                    v159 = msg.data[v157] >> 240;
                    if (v159 & 0x1c0) {
                        if ((v159 & 0x1c0) - 64) {
                            if (128 - (v159 & 0x1c0)) {
                                v0 = 22 + v157;
                                if (msg.data[v0] >> 96) {
                                    v160, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v160) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v0 = v161 = 0;
                                        if (v160) {
                                            v162 = 32;
                                            if (v162 > RETURNDATASIZE()) {
                                                v162 = v163 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v162 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v162 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v0 = v164 = this.balance;
                                }
                                if (!(v159 & 0x100)) {
                                    v0 = v165 = uint256.max + v0;
                                }
                            } else {
                                v0 = v166 = msg.data[v0];
                                v0 = v0 + 32;
                            }
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (!(v159 & 0x30)) {
                        v0 = v167 = this;
                    } else if (16 == v159 & 0x30) {
                        v0 = v168 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v159 & 0x30) {
                        v0 = v0 + 2;
                        v0 = v169 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                    } else {
                        v0 = v170 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v154 = v171 = v0 + 2;
                    if (bool(v159)) {
                        if (bool(v159) - 1) {
                            if (bool(v159) - 2) {
                                if (bool(v159) - 3) {
                                    if (4 - bool(v159)) {
                                        v172 = v173 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v171, msg.data[v171 + 20] >> 240);
                                        v174 = (msg.data[v171] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                        if (!v174) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v29, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v159 = v175 = 8490;
                                        0x42d5(v0, v0, v171);
                                        v176 = 0;
                                        v177 = v178 = v154 + 4;
                                        if (msg.data[v154 + 2] >> 240) {
                                            v176 = v179 = msg.data[4 + (v154 + (msg.data[v154 + 2] >> 240))] >> 96;
                                        }
                                        v0 = v180 = 0;
                                        if (msg.data[v154] >> 240 & 0x3) {
                                            if ((msg.data[v154] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v154] >> 240 & 0x3) - 2) {
                                                    v181 = v176.balanceOf(v0).gas(msg.gas);
                                                    require(v181, Error(32, 5, 'BA:CF'));
                                                    v0 = v182 = MEM[0];
                                                }
                                                v183 = v184 = 7;
                                            } else {
                                                v183 = v185 = 7;
                                                v0 = v186 = msg.data[v178];
                                                v177 = v187 = v154 + 36;
                                            }
                                        } else {
                                            v183 = 7;
                                        }
                                        v188 = v189 = v177 + v183;
                                        v190 = v191 = MEM[64] + 4;
                                        v192 = msg.data[v177 + 4] >> 232;
                                        while (v192) {
                                            if (!(v192 & 0x3)) {
                                                MEM[v190] = v0;
                                                v190 = v190 + 32;
                                            } else if (1 == v192 & 0x3) {
                                                MEM[v190] = v0;
                                                v190 = v190 + 32;
                                            } else if (2 == v192 & 0x3) {
                                                MEM[v190] = byte(msg.data[v188], 0x0);
                                                v190 = v190 + 32;
                                                v188 = v188 + 1;
                                            } else {
                                                CALLDATACOPY(v190, v188 + 1, byte(msg.data[v188], 0x0));
                                                v190 = v190 + (byte(msg.data[v188], 0x0));
                                                v188 = v188 + (byte(msg.data[v188], 0x0)) + 1;
                                            }
                                            v192 = v192 >> 3;
                                        }
                                        if (msg.data[v154] >> 240 & 0x100) {
                                            if (msg.data[v154] >> 240 & 0x200) {
                                                v193 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v193, Error(32, 5, 'ST:CF'));
                                            }
                                            v194 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v188 + (msg.data[v188] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v194, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v188 = v195 = 2 + v188;
                                        }
                                        if (msg.data[v154] >> 240 & 0x400) {
                                            if (msg.data[v154] >> 240 & 0x800) {
                                                v196 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v196, Error(32, 5, 'ST:CF'));
                                            }
                                            v197 = 0x4444c5dc75cb358380d2e3de08a90.sync(v176).gas(msg.gas);
                                            require(v197, Error(32, 5, 'SY:CF'));
                                        }
                                        v0 = v198 = 0;
                                        if (msg.data[v154] >> 240 & 0x8) {
                                            if (msg.data[v154] >> 240 & 0x10) {
                                                v199 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v199, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v200 = (msg.data[v188] >> 96).call(msg.data[v177]).value(v0).gas(msg.gas);
                                        if (!v200) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v29, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v154] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v154] >> 240 & 0x3) - 3)) {
                                                    v201 = v176.balanceOf(v0).gas(msg.gas);
                                                    require(v201, Error(32, 5, 'BA:CD'));
                                                    v0 = v202 = MEM[0] - v0;
                                                }
                                            } else if (address(v176)) {
                                                v203 = v176.balanceOf(this).gas(msg.gas);
                                                require(v203, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v154] >> 240 & 0x4)) {
                                                    v0 = v204 = MEM[0] - 1;
                                                } else {
                                                    v0 = v205 = MEM[0];
                                                }
                                            } else {
                                                v0 = v206 = this.balance;
                                            }
                                            if (msg.data[v154] >> 240 & 0x20) {
                                                v176 = v207 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v208 = v207.deposit().value(v0).gas(msg.gas);
                                                require(v208, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v154] >> 240) {
                                                if (!v176) {
                                                    v209 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v209, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v210 = v176.transfer(v0, v0).gas(msg.gas);
                                                    if (!v210) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v29, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v159 = v211 = 8490;
                                    0x4990(v0, v0, v171);
                                    v212 = v154 + 2;
                                    if (msg.data[v154] >> 240 & 0x10) {
                                        if (!(msg.data[v154] >> 240 & 0x100)) {
                                            v213 = (msg.data[v154 + (msg.data[v212] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            if (!v213) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v29, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v212 = v214 = v154 + 4;
                                            }
                                        } else {
                                            if (msg.data[v154] >> 240 & 0x200) {
                                                v215 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v215, Error(32, 6, 'ST:B3F'));
                                            }
                                            v216 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v212 + (msg.data[v212] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            require(v216, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v212 = v217 = v212 + 2;
                                        }
                                    }
                                    v218 = bool(msg.data[v154] >> 240);
                                    while (v218) {
                                        if ((byte(msg.data[v212], 0x0)) - 2) {
                                            v219 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v212], 0x0), msg.data[v212 + (msg.data[v212 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                            if (!v219) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v29, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v220 = v221 = uint256.max;
                                                v0 = v222 = MEM[0];
                                                v212 = v212 + 3;
                                            }
                                        } else {
                                            v223 = new uint256[](0);
                                            MEM[v223.data] = msg.data[v212 + 1] >> 96;
                                            v224 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v223, v29, v29, msg.data[v212 + 1 + (msg.data[v212 + 1 + 20] >> 240)] >> 96, msg.data[v212 + 1 + (msg.data[v212 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                            if (!v224) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v29, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v220 = v225 = uint256.max;
                                                v0 = v226 = MEM[0];
                                                v212 = v212 + 1 + 24;
                                            }
                                        }
                                        v218 = v218 + v220;
                                    }
                                    if (msg.data[v154] >> 240 & 0x20) {
                                        v227 = msg.data[v212 + (msg.data[v212] >> 240)] >> 96;
                                        if (msg.data[v154] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v154] >> 240) {
                                                v228 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v228, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v229 = 0x4444c5dc75cb358380d2e3de08a90.sync(v227).gas(msg.gas);
                                            require(v229, Error(32, 6, 'SY:B3F'));
                                        }
                                        v230 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v227, v0, v0).gas(msg.gas);
                                        require(v230, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                                }
                            } else {
                                v159 = v231 = 8490;
                                0x5008(v0, v0, v171);
                                v232 = v233 = v154 + 22;
                                if (msg.data[v154] >> 240 & 0x10) {
                                    v232 = v234 = v154 + 24;
                                    if (!(msg.data[v154] >> 240 & 0x20)) {
                                        v235 = (msg.data[22 + ((msg.data[v233] >> 240) + v154)] >> 96).transfer(msg.data[v154 + 2] >> 96, v0).gas(msg.gas);
                                        if (!v235) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v29, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v154] >> 240 & 0x40) {
                                            v236 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v236, Error(32, 5, 'ST:2F'));
                                        }
                                        v237 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v233] >> 240) + v154)] >> 96, msg.data[v154 + 2] >> 96, v0).gas(msg.gas);
                                        require(v237, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v154] >> 240 & 0x100) {
                                    if (msg.data[v154] >> 240 & 0x200) {
                                        v238 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v238, Error(32, 5, 'ST:22'));
                                    }
                                    v239 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v232 + (msg.data[v232] >> 240)] >> 96).gas(msg.gas);
                                    require(v239, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v154] >> 240)) {
                                    if (0 == (bool(msg.data[v154] >> 240) == 1)) {
                                        // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v159 = v240 = 8490;
                            0x5470(v0, v0, v171);
                            v241 = 0;
                            v242 = v243 = v154 + 1;
                            v244 = v241 - v0;
                            while (v241 < bool(byte(msg.data[v154], v241))) {
                                if (0 == 0x2 & (byte(msg.data[v242], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v242 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v242] >> 96;
                                    v242 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v242], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v245 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v242 + (msg.data[1 + v242] >> 240)] >> 96, msg.data[v242 + (msg.data[3 + v242] >> 240)] >> 96, msg.data[v242 + 5] >> 232, msg.data[v242 + 8] >> 232, v29, 0x1 & (byte(msg.data[v242], 0x0)), v244, v29, 288, v241).gas(msg.gas);
                                if (!v245) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v29, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v242], 0x0)))) {
                                        v246 = v247 = 1;
                                        v244 = v248 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v246 = v249 = 1;
                                        v244 = v250 = 0 - int128(MEM[0]);
                                    }
                                    v241 = v241 + v246;
                                }
                            }
                            if ((byte(msg.data[v154], v241)) & 0x10) {
                                if (0x40 & (byte(msg.data[v154], v241))) {
                                    v251 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v251, Error(32, 5, 'ST:F4'));
                                }
                                v252 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v242 + (msg.data[v242] >> 240)] >> 96, v0, 0 - v244).gas(msg.gas);
                                require(v252, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                        }
                        v172 = v253 = uint256.max;
                    } else {
                        v159 = v254 = 8372;
                        0x5784(v0, v0, v171);
                        v172 = uint256.max;
                        v255 = v154 + 1;
                        if ((byte(msg.data[v154], 0x0)) & 0x2) {
                            if ((byte(msg.data[v154], 0x0)) & 0x8) {
                                v256 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v256, Error(32, 5, 'ST:F3'));
                            }
                            v257 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v154 + (msg.data[v255] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v257, Error(32, 5, 'SY:F3'));
                            v255 = v258 = 3 + v154;
                        }
                        if (0 != (byte(msg.data[v154], 0x0)) & 0x1) {
                        }
                        v259 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v255], 0x2)) & 0xFF;
                        v260 = (msg.data[v255 + 3] >> 96).swap(v0, (byte(msg.data[v154], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v259, v29, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v255 + (msg.data[v255] >> 240)]).gas(msg.gas);
                        if (!v260) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v29, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v0 = v0 + v172;
                    if (!v0) {
                        // Unknown jump to Block 0x12930xdc. Refer to 3-address code (TAC);
                    } else {
                        v157 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x200 & v159)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
            v2 = (msg.data[v2] >> 240) + v2 + 2;
        }
        v0 = v261 = byte(msg.data[v2], 0x0);
        if (v261) {
            v262 = 1 + v2;
            while (1) {
                v0 = v263 = byte(msg.data[v262], 0x0);
                v0 = v262 + 1;
                if (bool(v263) >= 13) {
                    if (bool(v263) - 13) {
                        if (14 - bool(v263)) {
                            v262 = v262 + 3;
                            if (v263 & 0x40) {
                                if (0x80 & v263) {
                                    v264 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v264, Error(32, 6, 'ST:EC3'));
                                }
                                v265 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[v0] >> 240) + v262)] >> 96).gas(msg.gas);
                                require(v265, Error(32, 6, 'SY:EC3'));
                            }
                            v266 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[v0] >> 240) + v262)] >> 96, v0, v0).gas(msg.gas);
                            require(v266, Error(32, 5, 'SN:EC'));
                            v267 = v268 = uint256.max;
                            MEM[96] = 0;
                        } else {
                            if (0x40 & v263) {
                                v269 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v269, Error(32, 5, 'ST:EC'));
                            }
                            v270 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v0] >> 240)] >> 96, v0, v0).gas(msg.gas);
                            require(v270, Error(32, 5, 'TK:EC'));
                            MEM[96] = 0;
                            v262 = 2 + v0;
                            v267 = v271 = uint256.max;
                        }
                    } else {
                        v272 = (msg.data[v0 + (msg.data[v0] >> 240)] >> 96).transfer(v0, v0).gas(msg.gas);
                        if (!v272) {
                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                            revert(v29, MEM[36] + 7, 'TR:EC: ');
                        } else {
                            v262 = 2 + v0;
                            v267 = uint256.max;
                        }
                    }
                    v0 = v0 + v267;
                    if (!v0) {
                        // Unknown jump to Block 0x91a. Refer to 3-address code (TAC);
                    }
                } else {
                    if (v263 & 0xc0) {
                        if (64 - (v263 & 0xc0)) {
                            v0 = v0 + 32;
                            v0 = v273 = msg.data[v0];
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (v263 & 0x20) {
                        v0 = v274 = this;
                    }
                    v0 = v0 + 2;
                    if (0 == !bool(v263)) {
                        if (bool(v263) - 1) {
                            if (bool(v263) - 2) {
                                if (bool(v263) - 3) {
                                    if (bool(v263) - 4) {
                                        if (6 - bool(v263)) {
                                            v275 = v276 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v0, msg.data[v0 + 20] >> 240);
                                            v277 = (msg.data[v0] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                            if (!v277) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v29, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v0 = v278 = 7053;
                                            v0 = 0x3068(v0, v0, v0);
                                            v279 = v0 + 1;
                                            if ((byte(msg.data[v0], 0x0)) & 0x80) {
                                                if ((byte(msg.data[v0], 0x0)) & 0x40) {
                                                    v280 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v280, Error(32, 5, 'ST:4S'));
                                                }
                                                v281 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v279] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v281, Error(32, 5, 'TK:4S'));
                                                MEM[96] = 0;
                                                v279 = v282 = 3 + v0;
                                            }
                                            if (0x3f & (byte(msg.data[v0], 0x0))) {
                                                if (msg.data[v279] >> 240 & 0x1) {
                                                    v0 = v283 = msg.data[2 + v279];
                                                    v279 = v284 = v279 + 34;
                                                } else {
                                                    v279 = v285 = 2 + v279 + 3;
                                                    v0 = v286 = v0 * (msg.data[2 + v279] >> 232) >> 24;
                                                }
                                            }
                                            v287 = v279 + 1;
                                            if ((byte(msg.data[v279], 0x0)) & 0x10) {
                                                if (0x40 & (byte(msg.data[v279], 0x0))) {
                                                    v288 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v288, Error(32, 5, 'ST:V4'));
                                                }
                                                v289 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v279 + (msg.data[v287] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v289, Error(32, 5, 'TK:V4'));
                                                MEM[96] = 0;
                                                v287 = v290 = v279 + 3;
                                            }
                                            v291 = new uint256[](0);
                                            if (bool(byte(msg.data[v279], 0x0))) {
                                                if (0 != 0x2 & (byte(msg.data[v287], 0x0))) {
                                                }
                                                if (0x1 & (byte(msg.data[v287], 0x0))) {
                                                }
                                                v292 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v287 + (msg.data[1 + v287] >> 240)] >> 96, msg.data[v287 + (msg.data[3 + v287] >> 240)] >> 96, msg.data[v287 + 5] >> 232, msg.data[v287 + 8] >> 232, 0, msg.data[v287] >> 96, 0x1 & (byte(msg.data[v287], 0x0)), v0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v291).gas(msg.gas);
                                                if (!v292) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v29, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                                                } else if (0x1 & (byte(msg.data[v287], 0x0))) {
                                                }
                                            }
                                        }
                                    } else {
                                        v293 = v0 + 2;
                                        if (msg.data[v0] >> 240 & 0x3) {
                                            v294 = v295 = 4;
                                            v296 = v297 = 7;
                                        } else {
                                            v0 = v298 = msg.data[v293];
                                            v293 = v299 = v0 + 34;
                                            v296 = 7;
                                            v294 = 4;
                                        }
                                        MEM[MEM[64]] = msg.data[v293];
                                        v300 = MEM[64] + v294;
                                        v301 = v293 + v296;
                                        v302 = msg.data[4 + v293] >> 232;
                                        while (v302) {
                                            if (!(v302 & 0x3)) {
                                                MEM[v300] = v0;
                                                v300 += 32;
                                            } else if (1 == v302 & 0x3) {
                                                MEM[v300] = v0;
                                                v300 += 32;
                                            } else if (2 == v302 & 0x3) {
                                                MEM[v300] = byte(msg.data[v301], 0x0);
                                                v300 += 32;
                                                v301 = v301 + 1;
                                            } else {
                                                CALLDATACOPY(v300, v301 + 1, byte(msg.data[v301], 0x0));
                                                v300 = v300 + (byte(msg.data[v301], 0x0));
                                                v301 = v301 + (byte(msg.data[v301], 0x0)) + 1;
                                            }
                                            v302 = v302 >> 3;
                                        }
                                        if (msg.data[v0] >> 240 & 0x100) {
                                            if (msg.data[v0] >> 240 & 0x200) {
                                                v303 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v303, Error(32, 5, 'ST:CR'));
                                            }
                                            v304 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v301 + (msg.data[v301] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v304, Error(32, 5, 'TK:CR'));
                                            MEM[96] = 0;
                                            v301 = v305 = 2 + v301;
                                        }
                                        v306 = 0;
                                        if (msg.data[v301] >> 240) {
                                            v306 = v307 = msg.data[2 + (v301 + (msg.data[v301] >> 240))] >> 96;
                                        }
                                        0x1aba(this, v0, v301 + 22);
                                        if (msg.data[v0] >> 240 & 0x400) {
                                            if (msg.data[v0] >> 240 & 0x800) {
                                                v308 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v308, Error(32, 5, 'ST:CR'));
                                            }
                                            v309 = 0x4444c5dc75cb358380d2e3de08a90.sync(v306).gas(msg.gas);
                                            require(v309, Error(32, 5, 'SY:CR'));
                                        }
                                        v0 = v310 = 0;
                                        if (msg.data[v0] >> 240 & 0x8) {
                                            if (msg.data[v0] >> 240 & 0x10) {
                                                v311 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v311, Error(32, 5, 'WI:CR'));
                                            }
                                        }
                                        v312 = (msg.data[v301 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + vdc0x322f - MEM[64]], MEM[0:0]).value(v0).gas(msg.gas);
                                        if (!v312) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v29, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if (msg.data[v0] >> 240 & 0x20) {
                                                v306 = v313 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v314 = v313.deposit().value(v0).gas(msg.gas);
                                                require(v314, Error(32, 5, 'DE:CR'));
                                            }
                                            if (0x40 & msg.data[v0] >> 240) {
                                                if (!v306) {
                                                    v315 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v315, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v316 = v306.transfer(v0, v0).gas(msg.gas);
                                                    if (!v316) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v29, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    0x37d0(v0, v0, v0);
                                }
                            } else {
                                v0 = v317 = 7053;
                                0x3c89(v0, v0);
                            }
                        } else {
                            0x3faa(v0, v0, v0);
                        }
                        v275 = v318 = uint256.max;
                    } else {
                        v275 = uint256.max;
                        v319 = v320 = v0 + 1;
                        if ((byte(msg.data[v0], 0x0)) & 0x2) {
                            if ((byte(msg.data[v0], 0x0)) & 0x8) {
                                v321 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v321, Error(32, 5, 'ST:V3'));
                            }
                            v322 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v320] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v322, Error(32, 5, 'SY:V3'));
                            v319 = v323 = 3 + v0;
                        }
                        if (0 == (byte(msg.data[v0], 0x0)) & 0x80) {
                            MEM[MEM[64] + 68] = 0 - v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                MEM[MEM[64] + 100] = 0x1000276a4;
                            }
                        } else {
                            MEM[MEM[64] + 68] = v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                v324 = new uint256[]((msg.data[v319 + 20] >> 240) + 1);
                                MEM8[v325.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                                CALLDATACOPY(MEM[64] + 197, 22 + v319, msg.data[v319 + 20] >> 240);
                                v326 = (msg.data[v319] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v29, 0x1000276a4, v324).gas(msg.gas);
                                if (v326) {
                                }
                            }
                        }
                        v325 = new uint256[]((msg.data[v319 + 20] >> 240) + 1);
                        MEM8[v325.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                        CALLDATACOPY(MEM[64] + 197, 22 + v319, msg.data[v319 + 20] >> 240);
                        v327 = (msg.data[v319] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v29, v29, v325).gas(msg.gas);
                        if (v327) {
                        }
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v29, MEM[36] + 7, 'V3:RE: ');
                        MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        // Unknown jump to Block 0x24bd0x25c8B0x1b0e0xdc. Refer to 3-address code (TAC);
                    }
                    v0 = v0 + v275;
                    if (!v0) {
                        // Unknown jump to Block 0x91a. Refer to 3-address code (TAC);
                    } else {
                        v262 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x10 & v0)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
        }
    }
    if (v0 & 0x40) {
        v328 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        require(v328, Error(32, 5, 'ST:V4'));
    }
    v329 = msg.data[72 + (varg3 >> 240)] >> 96;
    if (v0 & 0x80) {
        v330 = v331 = 0;
        v332 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).gas(msg.gas);
        require(v332, Error(32, 5, 'CD:WR'));
        v333 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(v333, Error(32, 5, 'BA:WR'));
        v334 = v335 = MEM[0] - bool(MEM[0]);
        if (v329) {
            v336 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, 0)).gas(msg.gas);
            require(v336, Error(32, 5, 'CD:ER'));
            v330 = v337 = MEM[0];
        }
        if (MEM[0]) {
            if (MEM[0] <= 0) {
                if (MEM[0] < 0) {
                    v330 = v338 = 0;
                    if (v330 <= v338) {
                        if (v338 - (MEM[0] + v335) > 0) {
                            v330 = v339 = 0 - (this.balance + (MEM[0] + v335));
                        }
                    }
                    if (v330 > 0) {
                        v340 = 0x4444c5dc75cb358380d2e3de08a90.take(0, this, v330).gas(msg.gas);
                        require(v340, Error(32, 5, 'TK:ER'));
                        MEM[96] = 0;
                    }
                    if (v338 - (MEM[0] + v335) > 0) {
                        v341 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v338 - (MEM[0] + v335)).gas(msg.gas);
                        require(v341, Error(32, 5, 'DE:WR'));
                        v334 = v342 = v335 + (v338 - (MEM[0] + v335));
                    }
                    v343 = 0x4444c5dc75cb358380d2e3de08a90.sync(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).gas(msg.gas);
                    require(v343, Error(32, 5, 'SY:WR'));
                    v344 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0x4444c5dc75cb358380d2e3de08a90, 0 - MEM[0]).gas(msg.gas);
                    if (!v344) {
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:WR'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v29, MEM[36] + 7, 'TR:WR: ');
                    } else {
                        v345 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                        require(v345, Error(32, 5, 'ST:WR'));
                        v334 = v346 = v334 + MEM[0];
                    }
                }
            } else {
                v347 = 0x4444c5dc75cb358380d2e3de08a90.take(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, this, MEM[0]).gas(msg.gas);
                require(v347, Error(32, 5, 'TK:WR'));
                MEM[96] = 0;
                v334 = v348 = v335 + MEM[0];
            }
        }
        v349 = this.balance;
        v350 = v351 = v349 + v334;
        if (v329) {
            if (v330 >= 0) {
                v350 = v352 = 0;
            } else {
                v350 = v353 = 0 - v330;
            }
        }
        if (v350) {
            if (v334) {
                v354 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v334).gas(msg.gas);
                require(v354, Error(32, 5, 'WI:WR'));
            }
            v355 = 0x4444c5dc75cb358380d2e3de08a90.sync(0).gas(msg.gas);
            require(v355, Error(32, 5, 'SY:ER'));
            v356 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v350).gas(msg.gas);
            require(v356, Error(32, 5, 'ST:ER'));
        }
    }
    if (v0 >> 8) {
        v357 = v358 = (v0 >> 8) + 1;
        v359 = v360 = byte(msg.data[v0 >> 8], 0x0);
        while (v359) {
            v357 = v357 + 20;
            v361 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v357] >> 96).gas(msg.gas);
            require(v361, Error(32, 5, 'SY:RC'));
            v362 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, msg.data[v357] >> 96)).gas(msg.gas);
            require(v362, Error(32, 5, 'CD:RC'));
            v363 = (msg.data[v357] >> 96).transfer(0x4444c5dc75cb358380d2e3de08a90, 0 - MEM[0]).gas(msg.gas);
            if (!v363) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:RC'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v29, MEM[36] + 7, 'TR:RC: ');
            } else {
                v364 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                require(v364, Error(32, 5, 'ST:RC'));
                v359 += uint256.max;
            }
        }
    }
    if (0 == !((byte(varg0, 0x0)) & 0x2)) {
        if ((byte(varg0, 0x0)) & 0x4) {
            v365 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.getTokenDelta(v329).gas(msg.gas);
            require(v365, Error(32, 5, 'TD:PR'));
            require(0 - MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('BAL3SLIP'));
            if ((byte(varg0, 0x0)) & 0x1) {
                v366 = v367 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v366 = v368 = tx.origin;
            }
            v369 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v329, v366, 0 - MEM[0]).gas(msg.gas);
            require(v369, Error(32, 5, 'SN:PR'));
            MEM[96] = 0;
        } else {
            v370 = v329.balanceOf(this).gas(msg.gas);
            require(v370, Error(32, 5, 'BA:PR'));
            require(MEM[0] - 1 >= varg2 >> 240 << (byte(varg1, 0x0)), Error(0x534c4950));
            if (0 == !((byte(varg0, 0x0)) & 0x1)) {
                v371 = v372 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v371 = v373 = tx.origin;
            }
            v374 = v329.transfer(v371, MEM[0] - 1).gas(msg.gas);
            if (!v374) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:PR'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v29, MEM[36] + 7, 'TR:PR: ');
            }
        }
    } else {
        v375 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, v329)).gas(msg.gas);
        require(v375, Error(32, 5, 'CD:PR'));
        require(MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('V4SLIP'));
        if (address(v329)) {
            v376 = 0x4444c5dc75cb358380d2e3de08a90.mint(tx.origin, v329, MEM[0]).gas(msg.gas);
            require(v376, Error(32, 5, 'MN:PR'));
            MEM[96] = 0;
        } else {
            if (0x1 & (byte(varg0, 0x0))) {
                v377 = v378 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
            } else {
                v377 = v379 = tx.origin;
            }
            v380 = 0x4444c5dc75cb358380d2e3de08a90.take(v329, v377, MEM[0]).gas(msg.gas);
            require(v380, Error(32, 5, 'TK:PR'));
            MEM[96] = 0;
        }
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v381 = new uint256[](0);
    MCOPY(v381.data, MEM[64] + 32, 0);
    MEM[v381.data] = 0;
    return v381;
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    if ((byte(_amount1, 0x0)) & 0x1) {
    }
    v0 = v1 = 165;
    if ((byte(_amount1, 0x0)) & 0x8) {
        v0 = v2 = 167;
        v3 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[(_data >> 240) + v1] >> 96).gas(msg.gas);
        require(v3, Error(32, 5, 'SY:R2'));
        v4 = (msg.data[(_data >> 240) + v1] >> 96).transfer(0x4444c5dc75cb358380d2e3de08a90, v5).gas(msg.gas);
        if (!v4) {
            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:R2'));
            RETURNDATACOPY(0, 0, 68);
            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
            revert(v6, MEM[36] + 7, 'TR:R2: ');
        }
    }
    v7 = v8 = 24;
    if (0 == !((byte(_amount1, 0x0)) & 0x6)) {
        if (2 - ((byte(_amount1, 0x0)) & 0x6)) {
            v9 = 9975;
            v10 = 64;
            v11 = 0;
            v12 = 4;
            v13 = 28;
            v14 = 10000;
        } else {
            v15 = msg.sender.fee().gas(msg.gas);
            if (!v15) {
                require(RETURNDATASIZE() > 68);
                revert(0, RETURNDATASIZE());
            } else {
                v9 = v16 = MEM[0];
                v10 = v17 = 64;
                v11 = v18 = 0;
                v12 = v19 = 4;
                v13 = v20 = 28;
                v14 = v21 = 10000;
            }
        }
    } else {
        v9 = v22 = 997;
        v10 = v23 = 64;
        v11 = v24 = 0;
        v12 = v25 = 4;
        v13 = v26 = 28;
        v14 = v27 = 1000;
    }
    MEM[v11] = 0x902f1ac;
    v28 = msg.sender.staticcall(MEM[v2e200x2edcV0x1b0:v2e200x2edcV0x1b0 + v2e200x2edaV0x1b0], MEM[v2e200x2ed9V0x1b0:v2e200x2ed9V0x1b0 + v2e200x2ed7V0x1b0]).gas(msg.gas);
    if (!v28) {
        require(RETURNDATASIZE() > 68);
        revert(0, RETURNDATASIZE());
    } else {
        if (!((byte(_amount1, 0x0)) & 0x1)) {
            v29 = MEM[32];
            v30 = MEM[0];
        } else {
            v29 = v31 = MEM[0];
            v30 = v32 = MEM[32];
        }
        require((v30 - v5) * v9, Panic(18)); // division by zero
        v7 = v29 * v5 * v14 / ((v30 - v5) * v9) + 1;
        if ((byte(_amount1, 0x0)) & 0x10) {
            v33 = v34 = 485;
            v5 = v35 = byte(msg.data[v0 + 2], 0x0);
            if (v35) {
                v36 = v37 = 1 + (v0 + 2);
                while (1) {
                    v5 = v36 + 2;
                    v38 = msg.data[v36] >> 240;
                    if (v38 & 0x1c0) {
                        if ((v38 & 0x1c0) - 64) {
                            if (128 - (v38 & 0x1c0)) {
                                v5 = 22 + v36;
                                if (msg.data[v5] >> 96) {
                                    v39, v5 = (msg.data[v5] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v39) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v5 = v40 = 0;
                                        if (v39) {
                                            v41 = 32;
                                            if (v41 > RETURNDATASIZE()) {
                                                v41 = v42 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v41 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v5 = this.balance;
                                }
                                if (!(v38 & 0x100)) {
                                    v5 = v43 = uint256.max + v5;
                                }
                            } else {
                                v5 = v44 = msg.data[v5];
                                v5 = v5 + 32;
                            }
                        } else {
                            v5 = v5 + 3;
                            v5 = v5 * (msg.data[v5] >> 232) >> 24;
                        }
                    }
                    if (!(v38 & 0x30)) {
                        v5 = v45 = this;
                    } else if (16 == v38 & 0x30) {
                        v5 = v46 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v38 & 0x30) {
                        v5 = v5 + 2;
                        v5 = v47 = msg.data[(msg.data[v5] >> 240) + v5] >> 96;
                    } else {
                        v5 = v48 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v33 = v49 = v5 + 2;
                    if (bool(v38)) {
                        if (bool(v38) - 1) {
                            if (bool(v38) - 2) {
                                if (bool(v38) - 3) {
                                    if (4 - bool(v38)) {
                                        v50 = v51 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v49, msg.data[v49 + 20] >> 240);
                                        v52 = (msg.data[v49] >> 96).delegatecall(this, v5, v5).gas(msg.gas);
                                        if (!v52) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v6, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v38 = v53 = 8490;
                                        0x42d5(v5, v5, v49);
                                        v54 = 0;
                                        v55 = v56 = v33 + 4;
                                        if (msg.data[v33 + 2] >> 240) {
                                            v54 = v57 = msg.data[4 + (v33 + (msg.data[v33 + 2] >> 240))] >> 96;
                                        }
                                        v5 = v58 = 0;
                                        if (msg.data[v33] >> 240 & 0x3) {
                                            if ((msg.data[v33] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v33] >> 240 & 0x3) - 2) {
                                                    v59 = v54.balanceOf(v5).gas(msg.gas);
                                                    require(v59, Error(32, 5, 'BA:CF'));
                                                    v5 = v60 = MEM[0];
                                                }
                                                v61 = v62 = 7;
                                            } else {
                                                v61 = v63 = 7;
                                                v5 = v64 = msg.data[v56];
                                                v55 = v65 = v33 + 36;
                                            }
                                        } else {
                                            v61 = 7;
                                        }
                                        v66 = v67 = v55 + v61;
                                        v68 = v69 = MEM[64] + 4;
                                        v70 = msg.data[v55 + 4] >> 232;
                                        while (v70) {
                                            if (!(v70 & 0x3)) {
                                                MEM[v68] = v5;
                                                v68 = v68 + 32;
                                            } else if (1 == v70 & 0x3) {
                                                MEM[v68] = v5;
                                                v68 = v68 + 32;
                                            } else if (2 == v70 & 0x3) {
                                                MEM[v68] = byte(msg.data[v66], 0x0);
                                                v68 = v68 + 32;
                                                v66 = v66 + 1;
                                            } else {
                                                CALLDATACOPY(v68, v66 + 1, byte(msg.data[v66], 0x0));
                                                v68 = v68 + (byte(msg.data[v66], 0x0));
                                                v66 = v66 + (byte(msg.data[v66], 0x0)) + 1;
                                            }
                                            v70 = v70 >> 3;
                                        }
                                        if (msg.data[v33] >> 240 & 0x100) {
                                            if (msg.data[v33] >> 240 & 0x200) {
                                                v71 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v71, Error(32, 5, 'ST:CF'));
                                            }
                                            v72 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v66 + (msg.data[v66] >> 240)] >> 96, this, v5).gas(msg.gas);
                                            require(v72, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v66 = v73 = 2 + v66;
                                        }
                                        if (msg.data[v33] >> 240 & 0x400) {
                                            if (msg.data[v33] >> 240 & 0x800) {
                                                v74 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v74, Error(32, 5, 'ST:CF'));
                                            }
                                            v75 = 0x4444c5dc75cb358380d2e3de08a90.sync(v54).gas(msg.gas);
                                            require(v75, Error(32, 5, 'SY:CF'));
                                        }
                                        v5 = v76 = 0;
                                        if (msg.data[v33] >> 240 & 0x8) {
                                            if (msg.data[v33] >> 240 & 0x10) {
                                                v77 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v5).gas(msg.gas);
                                                require(v77, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v78 = (msg.data[v66] >> 96).call(msg.data[v55]).value(v5).gas(msg.gas);
                                        if (!v78) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v6, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v33] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v33] >> 240 & 0x3) - 3)) {
                                                    v79 = v54.balanceOf(v5).gas(msg.gas);
                                                    require(v79, Error(32, 5, 'BA:CD'));
                                                    v5 = v80 = MEM[0] - v5;
                                                }
                                            } else if (address(v54)) {
                                                v81 = v54.balanceOf(this).gas(msg.gas);
                                                require(v81, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v33] >> 240 & 0x4)) {
                                                    v5 = v82 = MEM[0] - 1;
                                                } else {
                                                    v5 = v83 = MEM[0];
                                                }
                                            } else {
                                                v5 = v84 = this.balance;
                                            }
                                            if (msg.data[v33] >> 240 & 0x20) {
                                                v54 = v85 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v86 = v85.deposit().value(v5).gas(msg.gas);
                                                require(v86, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v33] >> 240) {
                                                if (!v54) {
                                                    v87 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v5).gas(msg.gas);
                                                    require(v87, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v88 = v54.transfer(v5, v5).gas(msg.gas);
                                                    if (!v88) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v6, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v38 = v89 = 8490;
                                    0x4990(v5, v5, v49);
                                    v90 = v33 + 2;
                                    if (msg.data[v33] >> 240 & 0x10) {
                                        if (!(msg.data[v33] >> 240 & 0x100)) {
                                            v91 = (msg.data[v33 + (msg.data[v90] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v5).gas(msg.gas);
                                            if (!v91) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v6, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v90 = v92 = v33 + 4;
                                            }
                                        } else {
                                            if (msg.data[v33] >> 240 & 0x200) {
                                                v93 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v93, Error(32, 6, 'ST:B3F'));
                                            }
                                            v94 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v90 + (msg.data[v90] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v5).gas(msg.gas);
                                            require(v94, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v90 = v95 = v90 + 2;
                                        }
                                    }
                                    v96 = bool(msg.data[v33] >> 240);
                                    while (v96) {
                                        if ((byte(msg.data[v90], 0x0)) - 2) {
                                            v97 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v90], 0x0), msg.data[v90 + (msg.data[v90 + 1] >> 240) + 1] >> 96, v5, 0).gas(msg.gas);
                                            if (!v97) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v6, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v98 = v99 = uint256.max;
                                                v5 = v100 = MEM[0];
                                                v90 = v90 + 3;
                                            }
                                        } else {
                                            v101 = new uint256[](0);
                                            MEM[v101.data] = msg.data[v90 + 1] >> 96;
                                            v102 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v101, v6, v6, msg.data[v90 + 1 + (msg.data[v90 + 1 + 20] >> 240)] >> 96, msg.data[v90 + 1 + (msg.data[v90 + 1 + 22] >> 240)] >> 96, v5, 0, 0).gas(msg.gas);
                                            if (!v102) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v6, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v98 = v103 = uint256.max;
                                                v5 = v104 = MEM[0];
                                                v90 = v90 + 1 + 24;
                                            }
                                        }
                                        v96 = v96 + v98;
                                    }
                                    if (msg.data[v33] >> 240 & 0x20) {
                                        v105 = msg.data[v90 + (msg.data[v90] >> 240)] >> 96;
                                        if (msg.data[v33] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v33] >> 240) {
                                                v106 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v106, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v107 = 0x4444c5dc75cb358380d2e3de08a90.sync(v105).gas(msg.gas);
                                            require(v107, Error(32, 6, 'SY:B3F'));
                                        }
                                        v108 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v105, v5, v5).gas(msg.gas);
                                        require(v108, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                                }
                            } else {
                                v38 = v109 = 8490;
                                0x5008(v5, v5, v49);
                                v110 = v111 = v33 + 22;
                                if (msg.data[v33] >> 240 & 0x10) {
                                    v110 = v112 = v33 + 24;
                                    if (!(msg.data[v33] >> 240 & 0x20)) {
                                        v113 = (msg.data[22 + ((msg.data[v111] >> 240) + v33)] >> 96).transfer(msg.data[v33 + 2] >> 96, v5).gas(msg.gas);
                                        if (!v113) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v6, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v33] >> 240 & 0x40) {
                                            v114 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v114, Error(32, 5, 'ST:2F'));
                                        }
                                        v115 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v111] >> 240) + v33)] >> 96, msg.data[v33 + 2] >> 96, v5).gas(msg.gas);
                                        require(v115, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v33] >> 240 & 0x100) {
                                    if (msg.data[v33] >> 240 & 0x200) {
                                        v116 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v116, Error(32, 5, 'ST:22'));
                                    }
                                    v117 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v110 + (msg.data[v110] >> 240)] >> 96).gas(msg.gas);
                                    require(v117, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v33] >> 240)) {
                                    if (0 == (bool(msg.data[v33] >> 240) == 1)) {
                                        // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v38 = v118 = 8490;
                            0x5470(v5, v5, v49);
                            v119 = 0;
                            v120 = v121 = v33 + 1;
                            v122 = v119 - v5;
                            while (v119 < bool(byte(msg.data[v33], v119))) {
                                if (0 == 0x2 & (byte(msg.data[v120], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v120 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v120] >> 96;
                                    v120 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v120], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v123 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v120 + (msg.data[1 + v120] >> 240)] >> 96, msg.data[v120 + (msg.data[3 + v120] >> 240)] >> 96, msg.data[v120 + 5] >> 232, msg.data[v120 + 8] >> 232, v6, 0x1 & (byte(msg.data[v120], 0x0)), v122, v6, 288, v119).gas(msg.gas);
                                if (!v123) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v6, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v120], 0x0)))) {
                                        v124 = v125 = 1;
                                        v122 = v126 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v124 = v127 = 1;
                                        v122 = v128 = 0 - int128(MEM[0]);
                                    }
                                    v119 = v119 + v124;
                                }
                            }
                            if ((byte(msg.data[v33], v119)) & 0x10) {
                                if (0x40 & (byte(msg.data[v33], v119))) {
                                    v129 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v129, Error(32, 5, 'ST:F4'));
                                }
                                v130 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v120 + (msg.data[v120] >> 240)] >> 96, v5, 0 - v122).gas(msg.gas);
                                require(v130, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                        }
                        v50 = v131 = uint256.max;
                    } else {
                        v38 = v132 = 8372;
                        0x5784(v5, v5, v49);
                        v50 = uint256.max;
                        v133 = v33 + 1;
                        if ((byte(msg.data[v33], 0x0)) & 0x2) {
                            if ((byte(msg.data[v33], 0x0)) & 0x8) {
                                v134 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v134, Error(32, 5, 'ST:F3'));
                            }
                            v135 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v33 + (msg.data[v133] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v135, Error(32, 5, 'SY:F3'));
                            v133 = v136 = 3 + v33;
                        }
                        if (0 != (byte(msg.data[v33], 0x0)) & 0x1) {
                        }
                        v137 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v133], 0x2)) & 0xFF;
                        v138 = (msg.data[v133 + 3] >> 96).swap(v5, (byte(msg.data[v33], 0x0)) & 0x1, v5, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v137, v6, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v133 + (msg.data[v133] >> 240)]).gas(msg.gas);
                        if (!v138) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v6, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v5 = v5 + v50;
                    if (!v5) {
                        // Unknown jump to Block 0x1e5. Refer to 3-address code (TAC);
                    } else {
                        v36 = 2 + ((msg.data[v5] >> 240) + v5);
                        if (!(0x200 & v38)) {
                            require(v5 <= v5, Error(20304));
                            v5 = v5 - v5;
                        }
                    }
                }
            }
            v0 = v139 = (msg.data[v0] >> 240) + v0 + 2;
        }
        v7 = v140 = msg.sender;
        v7 = v141 = byte(msg.data[v0], 0x0);
        if (v141) {
            v142 = 1 + v0;
            while (1) {
                v7 = v143 = byte(msg.data[v142], 0x0);
                v7 = v142 + 1;
                if (bool(v143) >= 13) {
                    if (bool(v143) - 13) {
                        if (14 - bool(v143)) {
                            v142 = v142 + 3;
                            if (v143 & 0x40) {
                                if (0x80 & v143) {
                                    v144 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v144, Error(32, 6, 'ST:EC3'));
                                }
                                v145 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[v7] >> 240) + v142)] >> 96).gas(msg.gas);
                                require(v145, Error(32, 6, 'SY:EC3'));
                            }
                            v146 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[v7] >> 240) + v142)] >> 96, v7, v7).gas(msg.gas);
                            require(v146, Error(32, 5, 'SN:EC'));
                            v147 = v148 = uint256.max;
                            MEM[96] = 0;
                        } else {
                            if (0x40 & v143) {
                                v149 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v149, Error(32, 5, 'ST:EC'));
                            }
                            v150 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v7 + (msg.data[v7] >> 240)] >> 96, v7, v7).gas(msg.gas);
                            require(v150, Error(32, 5, 'TK:EC'));
                            MEM[96] = 0;
                            v142 = 2 + v7;
                            v147 = v151 = uint256.max;
                        }
                    } else {
                        v152 = (msg.data[v7 + (msg.data[v7] >> 240)] >> 96).transfer(v7, v7).gas(msg.gas);
                        if (!v152) {
                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                            revert(v6, MEM[36] + 7, 'TR:EC: ');
                        } else {
                            v142 = 2 + v7;
                            v147 = uint256.max;
                        }
                    }
                    v7 = v7 + v147;
                    if (!v7) {
                        // Unknown jump to Block 0x180xe1. Refer to 3-address code (TAC);
                    }
                } else {
                    if (v143 & 0xc0) {
                        if (64 - (v143 & 0xc0)) {
                            v7 = v7 + 32;
                            v7 = v153 = msg.data[v7];
                        } else {
                            v7 = v7 + 3;
                            v7 = v7 * (msg.data[v7] >> 232) >> 24;
                        }
                    }
                    if (v143 & 0x20) {
                        v7 = v154 = this;
                    }
                    v7 = v7 + 2;
                    if (0 == !bool(v143)) {
                        if (bool(v143) - 1) {
                            if (bool(v143) - 2) {
                                if (bool(v143) - 3) {
                                    if (bool(v143) - 4) {
                                        if (6 - bool(v143)) {
                                            v155 = v156 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v7, msg.data[v7 + 20] >> 240);
                                            v157 = (msg.data[v7] >> 96).delegatecall(this, v7, v7).gas(msg.gas);
                                            if (!v157) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v6, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v7 = v158 = 7053;
                                            v7 = 0x3068(v7, v7, v7);
                                            v159 = v7 + 1;
                                            if ((byte(msg.data[v7], 0x0)) & 0x80) {
                                                if ((byte(msg.data[v7], 0x0)) & 0x40) {
                                                    v160 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v160, Error(32, 5, 'ST:4S'));
                                                }
                                                v161 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v7 + (msg.data[v159] >> 240) + 1] >> 96, v7, v7).gas(msg.gas);
                                                require(v161, Error(32, 5, 'TK:4S'));
                                                MEM[96] = 0;
                                                v159 = v162 = 3 + v7;
                                            }
                                            if (0x3f & (byte(msg.data[v7], 0x0))) {
                                                if (msg.data[v159] >> 240 & 0x1) {
                                                    v7 = v163 = msg.data[2 + v159];
                                                    v159 = v164 = v159 + 34;
                                                } else {
                                                    v159 = v165 = 2 + v159 + 3;
                                                    v7 = v166 = v7 * (msg.data[2 + v159] >> 232) >> 24;
                                                }
                                            }
                                            v167 = v159 + 1;
                                            if ((byte(msg.data[v159], 0x0)) & 0x10) {
                                                if (0x40 & (byte(msg.data[v159], 0x0))) {
                                                    v168 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v168, Error(32, 5, 'ST:V4'));
                                                }
                                                v169 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v159 + (msg.data[v167] >> 240) + 1] >> 96, v7, v7).gas(msg.gas);
                                                require(v169, Error(32, 5, 'TK:V4'));
                                                MEM[96] = 0;
                                                v167 = v170 = v159 + 3;
                                            }
                                            v171 = new uint256[](0);
                                            if (bool(byte(msg.data[v159], 0x0))) {
                                                if (0 != 0x2 & (byte(msg.data[v167], 0x0))) {
                                                }
                                                if (0x1 & (byte(msg.data[v167], 0x0))) {
                                                }
                                                v172 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v167 + (msg.data[1 + v167] >> 240)] >> 96, msg.data[v167 + (msg.data[3 + v167] >> 240)] >> 96, msg.data[v167 + 5] >> 232, msg.data[v167 + 8] >> 232, 0, msg.data[v167] >> 96, 0x1 & (byte(msg.data[v167], 0x0)), v7, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v171).gas(msg.gas);
                                                if (!v172) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v6, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                                                } else if (0x1 & (byte(msg.data[v167], 0x0))) {
                                                }
                                            }
                                        }
                                    } else {
                                        v173 = v7 + 2;
                                        if (msg.data[v7] >> 240 & 0x3) {
                                            v174 = v175 = 4;
                                            v176 = v177 = 7;
                                        } else {
                                            v7 = v178 = msg.data[v173];
                                            v173 = v179 = v7 + 34;
                                            v176 = 7;
                                            v174 = 4;
                                        }
                                        MEM[MEM[64]] = msg.data[v173];
                                        v180 = MEM[64] + v174;
                                        v181 = v173 + v176;
                                        v182 = msg.data[4 + v173] >> 232;
                                        while (v182) {
                                            if (!(v182 & 0x3)) {
                                                MEM[v180] = v7;
                                                v180 += 32;
                                            } else if (1 == v182 & 0x3) {
                                                MEM[v180] = v7;
                                                v180 += 32;
                                            } else if (2 == v182 & 0x3) {
                                                MEM[v180] = byte(msg.data[v181], 0x0);
                                                v180 += 32;
                                                v181 = v181 + 1;
                                            } else {
                                                CALLDATACOPY(v180, v181 + 1, byte(msg.data[v181], 0x0));
                                                v180 = v180 + (byte(msg.data[v181], 0x0));
                                                v181 = v181 + (byte(msg.data[v181], 0x0)) + 1;
                                            }
                                            v182 = v182 >> 3;
                                        }
                                        if (msg.data[v7] >> 240 & 0x100) {
                                            if (msg.data[v7] >> 240 & 0x200) {
                                                v183 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v183, Error(32, 5, 'ST:CR'));
                                            }
                                            v184 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v181 + (msg.data[v181] >> 240)] >> 96, this, v7).gas(msg.gas);
                                            require(v184, Error(32, 5, 'TK:CR'));
                                            MEM[96] = 0;
                                            v181 = v185 = 2 + v181;
                                        }
                                        v186 = 0;
                                        if (msg.data[v181] >> 240) {
                                            v186 = v187 = msg.data[2 + (v181 + (msg.data[v181] >> 240))] >> 96;
                                        }
                                        0x1aba(this, v7, v181 + 22);
                                        if (msg.data[v7] >> 240 & 0x400) {
                                            if (msg.data[v7] >> 240 & 0x800) {
                                                v188 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v188, Error(32, 5, 'ST:CR'));
                                            }
                                            v189 = 0x4444c5dc75cb358380d2e3de08a90.sync(v186).gas(msg.gas);
                                            require(v189, Error(32, 5, 'SY:CR'));
                                        }
                                        v7 = v190 = 0;
                                        if (msg.data[v7] >> 240 & 0x8) {
                                            if (msg.data[v7] >> 240 & 0x10) {
                                                v191 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v7).gas(msg.gas);
                                                require(v191, Error(32, 5, 'WI:CR'));
                                            }
                                        }
                                        v192 = (msg.data[v181 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + ve10x322f - MEM[64]], MEM[0:0]).value(v7).gas(msg.gas);
                                        if (!v192) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v6, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if (msg.data[v7] >> 240 & 0x20) {
                                                v186 = v193 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v194 = v193.deposit().value(v7).gas(msg.gas);
                                                require(v194, Error(32, 5, 'DE:CR'));
                                            }
                                            if (0x40 & msg.data[v7] >> 240) {
                                                if (!v186) {
                                                    v195 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v7).gas(msg.gas);
                                                    require(v195, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v196 = v186.transfer(v7, v7).gas(msg.gas);
                                                    if (!v196) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v6, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    0x37d0(v7, v7, v7);
                                }
                            } else {
                                v7 = v197 = 7053;
                                0x3c89(v7, v7);
                            }
                        } else {
                            0x3faa(v7, v7, v7);
                        }
                        v155 = v198 = uint256.max;
                    } else {
                        v155 = uint256.max;
                        v199 = v200 = v7 + 1;
                        if ((byte(msg.data[v7], 0x0)) & 0x2) {
                            if ((byte(msg.data[v7], 0x0)) & 0x8) {
                                v201 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v201, Error(32, 5, 'ST:V3'));
                            }
                            v202 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v7 + (msg.data[v200] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v202, Error(32, 5, 'SY:V3'));
                            v199 = v203 = 3 + v7;
                        }
                        if (0 == (byte(msg.data[v7], 0x0)) & 0x80) {
                            MEM[MEM[64] + 68] = 0 - v7;
                            if (0 != (byte(msg.data[v7], 0x0)) & 0x1) {
                                MEM[MEM[64] + 100] = 0x1000276a4;
                            }
                        } else {
                            MEM[MEM[64] + 68] = v7;
                            if (0 != (byte(msg.data[v7], 0x0)) & 0x1) {
                                v204 = new uint256[]((msg.data[v199 + 20] >> 240) + 1);
                                MEM8[v205.data] = (byte(msg.data[v7], 0x0)) & 0xFF;
                                CALLDATACOPY(MEM[64] + 197, 22 + v199, msg.data[v199 + 20] >> 240);
                                v206 = (msg.data[v199] >> 96).swap(v7, (byte(msg.data[v7], 0x0)) & 0x1, v6, 0x1000276a4, v204).gas(msg.gas);
                                if (v206) {
                                }
                            }
                        }
                        v205 = new uint256[]((msg.data[v199 + 20] >> 240) + 1);
                        MEM8[v205.data] = (byte(msg.data[v7], 0x0)) & 0xFF;
                        CALLDATACOPY(MEM[64] + 197, 22 + v199, msg.data[v199 + 20] >> 240);
                        v207 = (msg.data[v199] >> 96).swap(v7, (byte(msg.data[v7], 0x0)) & 0x1, v6, v6, v205).gas(msg.gas);
                        if (v207) {
                        }
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v6, MEM[36] + 7, 'V3:RE: ');
                        MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        // Unknown jump to Block 0x24bd0x25c8B0x1b0e0xe1. Refer to 3-address code (TAC);
                    }
                    v7 = v7 + v155;
                    if (!v7) {
                        // Unknown jump to Block 0x180xe1. Refer to 3-address code (TAC);
                    } else {
                        v142 = 2 + ((msg.data[v7] >> 240) + v7);
                        if (!(0x10 & v7)) {
                            require(v7 <= v7, Error(20304));
                            v7 = v7 - v7;
                        }
                    }
                }
            }
        }
        exit;
    }
}

function 0x7e000000(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    0x1926();
    if ((byte(varg7, 0x0)) & 0x80) {
        if (0 == !((byte(varg7, 0x0)) & 0x6)) {
            if (2 - ((byte(varg7, 0x0)) & 0x6)) {
                v0 = 9975;
                v1 = 64;
                v2 = 0;
                v3 = 4;
                v4 = 28;
                v5 = 10000;
            } else {
                v6 = (varg5 >> 96).executeVirtualOrders(block.timestamp).gas(msg.gas);
                if (!v6) {
                    require(RETURNDATASIZE() > 68);
                    revert(0, RETURNDATASIZE());
                } else {
                    v7 = (varg5 >> 96).fee().gas(msg.gas);
                    if (!v7) {
                        require(RETURNDATASIZE() > 68);
                        revert(0, RETURNDATASIZE());
                    } else {
                        v0 = v8 = MEM[0];
                        v1 = v9 = 64;
                        v2 = v10 = 0;
                        v3 = v11 = 4;
                        v4 = v12 = 28;
                        v5 = v13 = 10000;
                    }
                }
            }
        } else {
            v0 = v14 = 997;
            v1 = v15 = 64;
            v2 = v16 = 0;
            v3 = v17 = 4;
            v4 = v18 = 28;
            v5 = v19 = 1000;
        }
        MEM[v2] = 0x902f1ac;
        v20 = (varg5 >> 96).staticcall(MEM[v5a3c0x5b24V0x880:v5a3c0x5b24V0x880 + v5a3c0x5b22V0x880], MEM[v5a3c0x5b21V0x880:v5a3c0x5b21V0x880 + v5a3c0x5b1fV0x880]).gas(msg.gas);
        if (!v20) {
            require(RETURNDATASIZE() > 68);
            revert(0, RETURNDATASIZE());
        } else {
            if (!((byte(varg7, 0x0)) & 0x1)) {
                v21 = MEM[32];
                v22 = MEM[0];
            } else {
                v21 = v23 = MEM[0];
                v22 = v24 = MEM[32];
            }
            require(v21 * v5 + varg4 * v0, Panic(18)); // division by zero
            v25 = varg4 * v0 * v22 / (v21 * v5 + varg4 * v0);
        }
    }
    if (0 != (byte(varg7, 0x0)) & 0x1) {
    }
    v26 = new uint256[](varg6 >> 240);
    CALLDATACOPY(v26.data, 128, varg6 >> 240);
    v27 = (varg5 >> 96).swap(0, v25, 0, v25, this, v26).gas(msg.gas);
    if (!v27) {
        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V2:RT'));
        RETURNDATACOPY(0, 0, 68);
        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
        revert(v28, MEM[36] + 7, 'V2:RT: ');
    } else {
        v29 = msg.data[72 + (varg3 >> 240)] >> 96;
        if (0 == !((byte(varg0, 0x0)) & 0x2)) {
            if ((byte(varg0, 0x0)) & 0x4) {
                v30 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.getTokenDelta(v29).gas(msg.gas);
                require(v30, Error(32, 5, 'TD:PR'));
                require(0 - MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('BAL3SLIP'));
                if ((byte(varg0, 0x0)) & 0x1) {
                    v31 = v32 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v31 = v33 = tx.origin;
                }
                v34 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v29, v31, 0 - MEM[0]).gas(msg.gas);
                require(v34, Error(32, 5, 'SN:PR'));
                MEM[96] = 0;
            } else {
                v35 = v29.balanceOf(this).gas(msg.gas);
                require(v35, Error(32, 5, 'BA:PR'));
                require(MEM[0] - 1 >= varg2 >> 240 << (byte(varg1, 0x0)), Error(0x534c4950));
                if (0 == !((byte(varg0, 0x0)) & 0x1)) {
                    v36 = v37 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v36 = v38 = tx.origin;
                }
                v39 = v29.transfer(v36, MEM[0] - 1).gas(msg.gas);
                if (!v39) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:PR'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v28, MEM[36] + 7, 'TR:PR: ');
                }
            }
        } else {
            v40 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(this, v29)).gas(msg.gas);
            require(v40, Error(32, 5, 'CD:PR'));
            require(MEM[0] >= varg2 >> 240 << (byte(varg1, 0x0)), Error('V4SLIP'));
            if (address(v29)) {
                v41 = 0x4444c5dc75cb358380d2e3de08a90.mint(tx.origin, v29, MEM[0]).gas(msg.gas);
                require(v41, Error(32, 5, 'MN:PR'));
                MEM[96] = 0;
            } else {
                if (0x1 & (byte(varg0, 0x0))) {
                    v42 = v43 = 0x9b19f7f92e60c1fe20d6080ec390c7aa6bb72811;
                } else {
                    v42 = v44 = tx.origin;
                }
                v45 = 0x4444c5dc75cb358380d2e3de08a90.take(v29, v42, MEM[0]).gas(msg.gas);
                require(v45, Error(32, 5, 'TK:PR'));
                MEM[96] = 0;
            }
        }
        exit;
    }
}

function 0x62000000(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 1431;
    v0 = v2 = varg2 >> 232;
    if (v2 & 0x7) {
        if ((v2 & 0x7) - 1) {
            if (2 - (v2 & 0x7)) {
                v3 = v4 = 1735;
                0x1aba(varg0, varg1, 73);
                v0 = v5 = byte(msg.data[(varg3 >> 240) + 73], 0x0);
                if (v5) {
                    v6 = v7 = 1 + ((varg3 >> 240) + 73);
                    while (1) {
                        v0 = v6 + 2;
                        v8 = msg.data[v6] >> 240;
                        if (v8 & 0x1c0) {
                            if ((v8 & 0x1c0) - 64) {
                                if (128 - (v8 & 0x1c0)) {
                                    v0 = 22 + v6;
                                    if (msg.data[v0] >> 96) {
                                        v9, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                        if (!v9) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            revert(MEM[64], RETURNDATASIZE());
                                        } else {
                                            v0 = v10 = 0;
                                            if (v9) {
                                                v11 = 32;
                                                if (v11 > RETURNDATASIZE()) {
                                                    v11 = v12 = RETURNDATASIZE();
                                                }
                                                require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                MEM[64] = MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                require(MEM[64] + v11 - MEM[64] >= 32);
                                            }
                                        }
                                    } else {
                                        v0 = this.balance;
                                    }
                                    if (!(v8 & 0x100)) {
                                        v0 = v13 = uint256.max + v0;
                                    }
                                } else {
                                    v0 = v14 = msg.data[v0];
                                    v0 = v0 + 32;
                                }
                            } else {
                                v0 = v0 + 3;
                                v0 = v0 * (msg.data[v0] >> 232) >> 24;
                            }
                        }
                        if (!(v8 & 0x30)) {
                            v0 = v15 = this;
                        } else if (16 == v8 & 0x30) {
                            v0 = v16 = 0x4444c5dc75cb358380d2e3de08a90;
                        } else if (32 == v8 & 0x30) {
                            v0 = v0 + 2;
                            v0 = v17 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                        } else {
                            v0 = v18 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                        }
                        v3 = v19 = v0 + 2;
                        if (bool(v8)) {
                            if (bool(v8) - 1) {
                                if (bool(v8) - 2) {
                                    if (bool(v8) - 3) {
                                        if (4 - bool(v8)) {
                                            v20 = v21 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v19, msg.data[v19 + 20] >> 240);
                                            v22 = (msg.data[v19] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                            if (!v22) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v8 = v24 = 8490;
                                            0x42d5(v0, v0, v19);
                                            v25 = 0;
                                            v26 = v27 = v3 + 4;
                                            if (msg.data[v3 + 2] >> 240) {
                                                v25 = v28 = msg.data[4 + (v3 + (msg.data[v3 + 2] >> 240))] >> 96;
                                            }
                                            v0 = v29 = 0;
                                            if (msg.data[v3] >> 240 & 0x3) {
                                                if ((msg.data[v3] >> 240 & 0x3) - 1) {
                                                    if ((msg.data[v3] >> 240 & 0x3) - 2) {
                                                        v30 = v25.balanceOf(v0).gas(msg.gas);
                                                        require(v30, Error(32, 5, 'BA:CF'));
                                                        v0 = v31 = MEM[0];
                                                    }
                                                    v32 = v33 = 7;
                                                } else {
                                                    v32 = v34 = 7;
                                                    v0 = v35 = msg.data[v27];
                                                    v26 = v36 = v3 + 36;
                                                }
                                            } else {
                                                v32 = 7;
                                            }
                                            v37 = v38 = v26 + v32;
                                            v39 = v40 = MEM[64] + 4;
                                            v41 = msg.data[v26 + 4] >> 232;
                                            while (v41) {
                                                if (!(v41 & 0x3)) {
                                                    MEM[v39] = v0;
                                                    v39 = v39 + 32;
                                                } else if (1 == v41 & 0x3) {
                                                    MEM[v39] = v0;
                                                    v39 = v39 + 32;
                                                } else if (2 == v41 & 0x3) {
                                                    MEM[v39] = byte(msg.data[v37], 0x0);
                                                    v39 = v39 + 32;
                                                    v37 = v37 + 1;
                                                } else {
                                                    CALLDATACOPY(v39, v37 + 1, byte(msg.data[v37], 0x0));
                                                    v39 = v39 + (byte(msg.data[v37], 0x0));
                                                    v37 = v37 + (byte(msg.data[v37], 0x0)) + 1;
                                                }
                                                v41 = v41 >> 3;
                                            }
                                            if (msg.data[v3] >> 240 & 0x100) {
                                                if (msg.data[v3] >> 240 & 0x200) {
                                                    v42 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v42, Error(32, 5, 'ST:CF'));
                                                }
                                                v43 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v37 + (msg.data[v37] >> 240)] >> 96, this, v0).gas(msg.gas);
                                                require(v43, Error(32, 5, 'TK:CF'));
                                                MEM[96] = 0;
                                                v37 = v44 = 2 + v37;
                                            }
                                            if (msg.data[v3] >> 240 & 0x400) {
                                                if (msg.data[v3] >> 240 & 0x800) {
                                                    v45 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v45, Error(32, 5, 'ST:CF'));
                                                }
                                                v46 = 0x4444c5dc75cb358380d2e3de08a90.sync(v25).gas(msg.gas);
                                                require(v46, Error(32, 5, 'SY:CF'));
                                            }
                                            v0 = v47 = 0;
                                            if (msg.data[v3] >> 240 & 0x8) {
                                                if (msg.data[v3] >> 240 & 0x10) {
                                                    v48 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                    require(v48, Error(32, 5, 'WI:CT'));
                                                }
                                            }
                                            v49 = (msg.data[v37] >> 96).call(msg.data[v26]).value(v0).gas(msg.gas);
                                            if (!v49) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                            } else {
                                                if ((msg.data[v3] >> 240 & 0x3) - 2) {
                                                    if (!((msg.data[v3] >> 240 & 0x3) - 3)) {
                                                        v50 = v25.balanceOf(v0).gas(msg.gas);
                                                        require(v50, Error(32, 5, 'BA:CD'));
                                                        v0 = v51 = MEM[0] - v0;
                                                    }
                                                } else if (address(v25)) {
                                                    v52 = v25.balanceOf(this).gas(msg.gas);
                                                    require(v52, Error(32, 5, 'BA:CT'));
                                                    if (!(msg.data[v3] >> 240 & 0x4)) {
                                                        v0 = v53 = MEM[0] - 1;
                                                    } else {
                                                        v0 = v54 = MEM[0];
                                                    }
                                                } else {
                                                    v0 = v55 = this.balance;
                                                }
                                                if (msg.data[v3] >> 240 & 0x20) {
                                                    v25 = v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                    v57 = v56.deposit().value(v0).gas(msg.gas);
                                                    require(v57, Error(32, 5, 'DE:CT'));
                                                }
                                                if (0x40 & msg.data[v3] >> 240) {
                                                    if (!v25) {
                                                        v58 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                        require(v58, Error(32, 5, 'SE:CF'));
                                                    } else {
                                                        v59 = v25.transfer(v0, v0).gas(msg.gas);
                                                        if (!v59) {
                                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                            RETURNDATACOPY(0, 0, 68);
                                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                            revert(v23, MEM[36] + 7, 'TR:CF: ');
                                                        }
                                                    }
                                                }
                                                // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                                            }
                                        }
                                    } else {
                                        v8 = v60 = 8490;
                                        0x4990(v0, v0, v19);
                                        v61 = v3 + 2;
                                        if (msg.data[v3] >> 240 & 0x10) {
                                            if (!(msg.data[v3] >> 240 & 0x100)) {
                                                v62 = (msg.data[v3 + (msg.data[v61] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                if (!v62) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                    revert(v23, MEM[36] + 8, 'TR:B3F: ');
                                                } else {
                                                    v61 = v63 = v3 + 4;
                                                }
                                            } else {
                                                if (msg.data[v3] >> 240 & 0x200) {
                                                    v64 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v64, Error(32, 6, 'ST:B3F'));
                                                }
                                                v65 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v61 + (msg.data[v61] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                                require(v65, Error(32, 6, 'TK:B3F'));
                                                MEM[96] = 0;
                                                v61 = v66 = v61 + 2;
                                            }
                                        }
                                        v67 = bool(msg.data[v3] >> 240);
                                        while (v67) {
                                            if ((byte(msg.data[v61], 0x0)) - 2) {
                                                v68 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v61], 0x0), msg.data[v61 + (msg.data[v61 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                                if (!v68) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v23, MEM[36] + 7, 'B3B:F: ');
                                                } else {
                                                    v69 = v70 = uint256.max;
                                                    v0 = v71 = MEM[0];
                                                    v61 = v61 + 3;
                                                }
                                            } else {
                                                v72 = new uint256[](0);
                                                MEM[v72.data] = msg.data[v61 + 1] >> 96;
                                                v73 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v72, v23, v23, msg.data[v61 + 1 + (msg.data[v61 + 1 + 20] >> 240)] >> 96, msg.data[v61 + 1 + (msg.data[v61 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                                if (!v73) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                    revert(v23, MEM[36] + 7, 'B3S:F: ');
                                                } else {
                                                    v69 = v74 = uint256.max;
                                                    v0 = v75 = MEM[0];
                                                    v61 = v61 + 1 + 24;
                                                }
                                            }
                                            v67 = v67 + v69;
                                        }
                                        if (msg.data[v3] >> 240 & 0x20) {
                                            v76 = msg.data[v61 + (msg.data[v61] >> 240)] >> 96;
                                            if (msg.data[v3] >> 240 & 0x40) {
                                                if (0x80 & msg.data[v3] >> 240) {
                                                    v77 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v77, Error(32, 7, 'ST:B3FS'));
                                                }
                                                v78 = 0x4444c5dc75cb358380d2e3de08a90.sync(v76).gas(msg.gas);
                                                require(v78, Error(32, 6, 'SY:B3F'));
                                            }
                                            v79 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v76, v0, v0).gas(msg.gas);
                                            require(v79, Error(32, 5, 'SN:F3'));
                                            MEM[96] = 0;
                                        }
                                        // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    v8 = v80 = 8490;
                                    0x5008(v0, v0, v19);
                                    v81 = v82 = v3 + 22;
                                    if (msg.data[v3] >> 240 & 0x10) {
                                        v81 = v83 = v3 + 24;
                                        if (!(msg.data[v3] >> 240 & 0x20)) {
                                            v84 = (msg.data[22 + ((msg.data[v82] >> 240) + v3)] >> 96).transfer(msg.data[v3 + 2] >> 96, v0).gas(msg.gas);
                                            if (!v84) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 7, 'TR:2F: ');
                                            }
                                        } else {
                                            if (msg.data[v3] >> 240 & 0x40) {
                                                v85 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v85, Error(32, 5, 'ST:2F'));
                                            }
                                            v86 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v82] >> 240) + v3)] >> 96, msg.data[v3 + 2] >> 96, v0).gas(msg.gas);
                                            require(v86, Error(32, 5, 'TK:2F'));
                                            MEM[96] = 0;
                                        }
                                    }
                                    if (msg.data[v3] >> 240 & 0x100) {
                                        if (msg.data[v3] >> 240 & 0x200) {
                                            v87 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v87, Error(32, 5, 'ST:22'));
                                        }
                                        v88 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v81 + (msg.data[v81] >> 240)] >> 96).gas(msg.gas);
                                        require(v88, Error(32, 5, 'SY:2F'));
                                    }
                                    if (bool(msg.data[v3] >> 240)) {
                                        if (0 == (bool(msg.data[v3] >> 240) == 1)) {
                                            // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                                        }
                                    } else {
                                        // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                                    }
                                }
                            } else {
                                v8 = v89 = 8490;
                                0x5470(v0, v0, v19);
                                v90 = 0;
                                v91 = v92 = v3 + 1;
                                v93 = v90 - v0;
                                while (v90 < bool(byte(msg.data[v3], v90))) {
                                    if (0 == 0x2 & (byte(msg.data[v91], 0x0))) {
                                        MEM[MEM[64] + 132] = 0;
                                        v91 += 11;
                                    } else {
                                        MEM[MEM[64] + 132] = msg.data[v91] >> 96;
                                        v91 += 31;
                                    }
                                    if (!(0x1 & (byte(msg.data[v91], 0x0)))) {
                                        MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                    } else {
                                        MEM[MEM[64] + 228] = 0x1000276a4;
                                    }
                                    v94 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v91 + (msg.data[1 + v91] >> 240)] >> 96, msg.data[v91 + (msg.data[3 + v91] >> 240)] >> 96, msg.data[v91 + 5] >> 232, msg.data[v91 + 8] >> 232, v23, 0x1 & (byte(msg.data[v91], 0x0)), v93, v23, 288, v90).gas(msg.gas);
                                    if (!v94) {
                                        require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                        RETURNDATACOPY(0, 0, 68);
                                        RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                        revert(v23, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                    } else {
                                        if (!(0x1 & (byte(msg.data[v91], 0x0)))) {
                                            v95 = v96 = 1;
                                            v93 = v97 = 0 - (MEM[0] >> 128);
                                        } else {
                                            v95 = v98 = 1;
                                            v93 = v99 = 0 - int128(MEM[0]);
                                        }
                                        v90 = v90 + v95;
                                    }
                                }
                                if ((byte(msg.data[v3], v90)) & 0x10) {
                                    if (0x40 & (byte(msg.data[v3], v90))) {
                                        v100 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v100, Error(32, 5, 'ST:F4'));
                                    }
                                    v101 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v91 + (msg.data[v91] >> 240)] >> 96, v0, 0 - v93).gas(msg.gas);
                                    require(v101, Error(32, 5, 'TK:F4'));
                                    MEM[96] = 0;
                                }
                                // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                            }
                            v20 = v102 = uint256.max;
                        } else {
                            v8 = v103 = 8372;
                            0x5784(v0, v0, v19);
                            v20 = uint256.max;
                            v104 = v3 + 1;
                            if ((byte(msg.data[v3], 0x0)) & 0x2) {
                                if ((byte(msg.data[v3], 0x0)) & 0x8) {
                                    v105 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v105, Error(32, 5, 'ST:F3'));
                                }
                                v106 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v3 + (msg.data[v104] >> 240) + 1] >> 96).gas(msg.gas);
                                require(v106, Error(32, 5, 'SY:F3'));
                                v104 = v107 = 3 + v3;
                            }
                            if (0 != (byte(msg.data[v3], 0x0)) & 0x1) {
                            }
                            v108 = new uint256[](25);
                            MEM8[MEM[64] + 198] = (byte(msg.data[v104], 0x2)) & 0xFF;
                            v109 = (msg.data[v104 + 3] >> 96).swap(v0, (byte(msg.data[v3], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v108, v23, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v104 + (msg.data[v104] >> 240)]).gas(msg.gas);
                            if (!v109) {
                                require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                                RETURNDATACOPY(0, 0, 68);
                                RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                revert(v23, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                            }
                        }
                        v0 = v0 + v20;
                        if (!v0) {
                            // Unknown jump to Block 0x6c70xeb. Refer to 3-address code (TAC);
                        } else {
                            v6 = 2 + ((msg.data[v0] >> 240) + v0);
                            if (!(0x200 & v8)) {
                                require(v0 <= v0, Error(20304));
                                v0 = v0 - v0;
                            }
                        }
                    }
                }
            } else {
                if ((byte(varg7, 0x0)) & 0x80) {
                    if (0 == !((byte(varg7, 0x0)) & 0x6)) {
                        if (2 - ((byte(varg7, 0x0)) & 0x6)) {
                            v110 = 9975;
                            v111 = 64;
                            v112 = 0;
                            v113 = 4;
                            v114 = 28;
                            v115 = 10000;
                        } else {
                            v116 = (varg3 >> 96).executeVirtualOrders(block.timestamp).gas(msg.gas);
                            if (!v116) {
                                require(RETURNDATASIZE() > 68);
                                revert(0, RETURNDATASIZE());
                            } else {
                                v117 = (varg3 >> 96).fee().gas(msg.gas);
                                if (!v117) {
                                    require(RETURNDATASIZE() > 68);
                                    revert(0, RETURNDATASIZE());
                                } else {
                                    v110 = v118 = MEM[0];
                                    v111 = v119 = 64;
                                    v112 = v120 = 0;
                                    v113 = v121 = 4;
                                    v114 = v122 = 28;
                                    v115 = v123 = 10000;
                                }
                            }
                        }
                    } else {
                        v110 = v124 = 997;
                        v111 = v125 = 64;
                        v112 = v126 = 0;
                        v113 = v127 = 4;
                        v114 = v128 = 28;
                        v115 = v129 = 1000;
                    }
                    MEM[v112] = 0x902f1ac;
                    v130 = (varg3 >> 96).staticcall(MEM[v5a3c0x5b24V0x2385V0x6d4:v5a3c0x5b24V0x2385V0x6d4 + v5a3c0x5b22V0x2385V0x6d4], MEM[v5a3c0x5b21V0x2385V0x6d4:v5a3c0x5b21V0x2385V0x6d4 + v5a3c0x5b1fV0x2385V0x6d4]).gas(msg.gas);
                    if (!v130) {
                        require(RETURNDATASIZE() > 68);
                        revert(0, RETURNDATASIZE());
                    } else {
                        if (!((byte(varg7, 0x0)) & 0x1)) {
                            v131 = MEM[32];
                            v132 = MEM[0];
                        } else {
                            v131 = v133 = MEM[0];
                            v132 = v134 = MEM[32];
                        }
                        require(v131 * v115 + varg1 * v110, Panic(18)); // division by zero
                        v0 = v135 = varg1 * v110 * v132 / (v131 * v115 + varg1 * v110);
                    }
                }
                if (0 != (byte(varg7, 0x0)) & 0x1) {
                }
                v136 = new uint256[](varg6 >> 240);
                CALLDATACOPY(v136.data, 93, varg6 >> 240);
                v137 = (varg3 >> 96).swap(0, v0, 0, v0, this, v136).gas(msg.gas);
                if (!v137) {
                    require(RETURNDATASIZE() >= 68, Error(32, 5, 'V2:RT'));
                    RETURNDATACOPY(0, 0, 68);
                    RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                    revert(v23, MEM[36] + 7, 'V2:RT: ');
                }
            }
        } else {
            v138 = v139 = 72;
            if ((byte(varg3, 0x0)) & 0x2) {
                if ((byte(varg3, 0x0)) & 0x8) {
                    v140 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                    require(v140, Error(32, 5, 'ST:V3'));
                }
                v141 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[(varg4 >> 240) + v139] >> 96).gas(msg.gas);
                require(v141, Error(32, 5, 'SY:V3'));
                v138 = v142 = 74;
            }
            if (0 != (byte(varg3, 0x0)) & 0x80) {
            }
            if (0 != (byte(varg3, 0x0)) & 0x1) {
            }
            v143 = new uint256[]((msg.data[v138 + 20] >> 240) + 1);
            MEM8[v143.data] = (byte(varg3, 0x0)) & 0xFF;
            CALLDATACOPY(MEM[64] + 197, 22 + v138, msg.data[v138 + 20] >> 240);
            v144 = (msg.data[v138] >> 96).swap(varg0, (byte(varg3, 0x0)) & 0x1, varg1, 0 - varg1, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v143).gas(msg.gas);
            if (!v144) {
                require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                RETURNDATACOPY(0, 0, 68);
                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                revert(v23, MEM[36] + 7, 'V3:RE: ');
            }
        }
    } else {
        v0 = v145 = 1425;
        v146 = v147 = 71;
        if (v2 & 0x8) {
            v148 = v149 = 1702;
            v0 = v150 = byte(varg5, 0x0);
            if (v150) {
                v151 = v152 = 74;
                while (1) {
                    v0 = v151 + 2;
                    v153 = msg.data[v151] >> 240;
                    if (v153 & 0x1c0) {
                        if ((v153 & 0x1c0) - 64) {
                            if (128 - (v153 & 0x1c0)) {
                                v0 = 22 + v151;
                                if (msg.data[v0] >> 96) {
                                    v154, v0 = (msg.data[v0] >> 96).balanceOf(this).gas(msg.gas);
                                    if (!v154) {
                                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                        revert(MEM[64], RETURNDATASIZE());
                                    } else {
                                        v0 = v155 = 0;
                                        if (v154) {
                                            v156 = 32;
                                            if (v156 > RETURNDATASIZE()) {
                                                v156 = v157 = RETURNDATASIZE();
                                            }
                                            require(!((MEM[64] + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + v156 - MEM[64] >= 32);
                                        }
                                    }
                                } else {
                                    v0 = v158 = this.balance;
                                }
                                if (!(v153 & 0x100)) {
                                    v0 = v159 = uint256.max + v0;
                                }
                            } else {
                                v0 = v160 = msg.data[v0];
                                v0 = v0 + 32;
                            }
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (!(v153 & 0x30)) {
                        v0 = v161 = this;
                    } else if (16 == v153 & 0x30) {
                        v0 = v162 = 0x4444c5dc75cb358380d2e3de08a90;
                    } else if (32 == v153 & 0x30) {
                        v0 = v0 + 2;
                        v0 = v163 = msg.data[(msg.data[v0] >> 240) + v0] >> 96;
                    } else {
                        v0 = v164 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
                    }
                    v148 = v165 = v0 + 2;
                    if (bool(v153)) {
                        if (bool(v153) - 1) {
                            if (bool(v153) - 2) {
                                if (bool(v153) - 3) {
                                    if (4 - bool(v153)) {
                                        v166 = v167 = uint256.max;
                                        CALLDATACOPY(MEM[64] + 96, 22 + v165, msg.data[v165 + 20] >> 240);
                                        v168 = (msg.data[v165] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                        if (!v168) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v23, MEM[36] + 7, 'EE:RE: ');
                                        }
                                    } else {
                                        v153 = v169 = 8490;
                                        0x42d5(v0, v0, v165);
                                        v170 = 0;
                                        v171 = v172 = v148 + 4;
                                        if (msg.data[v148 + 2] >> 240) {
                                            v170 = v173 = msg.data[4 + (v148 + (msg.data[v148 + 2] >> 240))] >> 96;
                                        }
                                        v0 = v174 = 0;
                                        if (msg.data[v148] >> 240 & 0x3) {
                                            if ((msg.data[v148] >> 240 & 0x3) - 1) {
                                                if ((msg.data[v148] >> 240 & 0x3) - 2) {
                                                    v175 = v170.balanceOf(v0).gas(msg.gas);
                                                    require(v175, Error(32, 5, 'BA:CF'));
                                                    v0 = v176 = MEM[0];
                                                }
                                                v177 = v178 = 7;
                                            } else {
                                                v177 = v179 = 7;
                                                v0 = v180 = msg.data[v172];
                                                v171 = v181 = v148 + 36;
                                            }
                                        } else {
                                            v177 = 7;
                                        }
                                        v182 = v183 = v171 + v177;
                                        v184 = v185 = MEM[64] + 4;
                                        v186 = msg.data[v171 + 4] >> 232;
                                        while (v186) {
                                            if (!(v186 & 0x3)) {
                                                MEM[v184] = v0;
                                                v184 = v184 + 32;
                                            } else if (1 == v186 & 0x3) {
                                                MEM[v184] = v0;
                                                v184 = v184 + 32;
                                            } else if (2 == v186 & 0x3) {
                                                MEM[v184] = byte(msg.data[v182], 0x0);
                                                v184 = v184 + 32;
                                                v182 = v182 + 1;
                                            } else {
                                                CALLDATACOPY(v184, v182 + 1, byte(msg.data[v182], 0x0));
                                                v184 = v184 + (byte(msg.data[v182], 0x0));
                                                v182 = v182 + (byte(msg.data[v182], 0x0)) + 1;
                                            }
                                            v186 = v186 >> 3;
                                        }
                                        if (msg.data[v148] >> 240 & 0x100) {
                                            if (msg.data[v148] >> 240 & 0x200) {
                                                v187 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v187, Error(32, 5, 'ST:CF'));
                                            }
                                            v188 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v182 + (msg.data[v182] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v188, Error(32, 5, 'TK:CF'));
                                            MEM[96] = 0;
                                            v182 = v189 = 2 + v182;
                                        }
                                        if (msg.data[v148] >> 240 & 0x400) {
                                            if (msg.data[v148] >> 240 & 0x800) {
                                                v190 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v190, Error(32, 5, 'ST:CF'));
                                            }
                                            v191 = 0x4444c5dc75cb358380d2e3de08a90.sync(v170).gas(msg.gas);
                                            require(v191, Error(32, 5, 'SY:CF'));
                                        }
                                        v0 = v192 = 0;
                                        if (msg.data[v148] >> 240 & 0x8) {
                                            if (msg.data[v148] >> 240 & 0x10) {
                                                v193 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v193, Error(32, 5, 'WI:CT'));
                                            }
                                        }
                                        v194 = (msg.data[v182] >> 96).call(msg.data[v171]).value(v0).gas(msg.gas);
                                        if (!v194) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a4600000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v23, MEM[36] + 6, 0x43433a463a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if ((msg.data[v148] >> 240 & 0x3) - 2) {
                                                if (!((msg.data[v148] >> 240 & 0x3) - 3)) {
                                                    v195 = v170.balanceOf(v0).gas(msg.gas);
                                                    require(v195, Error(32, 5, 'BA:CD'));
                                                    v0 = v196 = MEM[0] - v0;
                                                }
                                            } else if (address(v170)) {
                                                v197 = v170.balanceOf(this).gas(msg.gas);
                                                require(v197, Error(32, 5, 'BA:CT'));
                                                if (!(msg.data[v148] >> 240 & 0x4)) {
                                                    v0 = v198 = MEM[0] - 1;
                                                } else {
                                                    v0 = v199 = MEM[0];
                                                }
                                            } else {
                                                v0 = v200 = this.balance;
                                            }
                                            if (msg.data[v148] >> 240 & 0x20) {
                                                v170 = v201 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v202 = v201.deposit().value(v0).gas(msg.gas);
                                                require(v202, Error(32, 5, 'DE:CT'));
                                            }
                                            if (0x40 & msg.data[v148] >> 240) {
                                                if (!v170) {
                                                    v203 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v203, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v204 = v170.transfer(v0, v0).gas(msg.gas);
                                                    if (!v204) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v23, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                            // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                                        }
                                    }
                                } else {
                                    v153 = v205 = 8490;
                                    0x4990(v0, v0, v165);
                                    v206 = v148 + 2;
                                    if (msg.data[v148] >> 240 & 0x10) {
                                        if (!(msg.data[v148] >> 240 & 0x100)) {
                                            v207 = (msg.data[v148 + (msg.data[v206] >> 240) + 2] >> 96).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            if (!v207) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 6, 'TR:B3F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(76, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 8, 'TR:B3F: ');
                                            } else {
                                                v206 = v208 = v148 + 4;
                                            }
                                        } else {
                                            if (msg.data[v148] >> 240 & 0x200) {
                                                v209 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v209, Error(32, 6, 'ST:B3F'));
                                            }
                                            v210 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v206 + (msg.data[v206] >> 240)] >> 96, 0xba1333333333a1ba1108e8412f11850a5c319ba9, v0).gas(msg.gas);
                                            require(v210, Error(32, 6, 'TK:B3F'));
                                            MEM[96] = 0;
                                            v206 = v211 = v206 + 2;
                                        }
                                    }
                                    v212 = bool(msg.data[v148] >> 240);
                                    while (v212) {
                                        if ((byte(msg.data[v206], 0x0)) - 2) {
                                            v213 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.erc4626BufferWrapOrUnwrap(0, byte(msg.data[v206], 0x0), msg.data[v206 + (msg.data[v206 + 1] >> 240) + 1] >> 96, v0, 0).gas(msg.gas);
                                            if (!v213) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3B:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 7, 'B3B:F: ');
                                            } else {
                                                v214 = v215 = uint256.max;
                                                v0 = v216 = MEM[0];
                                                v206 = v206 + 3;
                                            }
                                        } else {
                                            v217 = new uint256[](0);
                                            MEM[v217.data] = msg.data[v206 + 1] >> 96;
                                            v218 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v217, v23, v23, msg.data[v206 + 1 + (msg.data[v206 + 1 + 20] >> 240)] >> 96, msg.data[v206 + 1 + (msg.data[v206 + 1 + 22] >> 240)] >> 96, v0, 0, 0).gas(msg.gas);
                                            if (!v218) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'B3S:F'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 7, 'B3S:F: ');
                                            } else {
                                                v214 = v219 = uint256.max;
                                                v0 = v220 = MEM[0];
                                                v206 = v206 + 1 + 24;
                                            }
                                        }
                                        v212 = v212 + v214;
                                    }
                                    if (msg.data[v148] >> 240 & 0x20) {
                                        v221 = msg.data[v206 + (msg.data[v206] >> 240)] >> 96;
                                        if (msg.data[v148] >> 240 & 0x40) {
                                            if (0x80 & msg.data[v148] >> 240) {
                                                v222 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v222, Error(32, 7, 'ST:B3FS'));
                                            }
                                            v223 = 0x4444c5dc75cb358380d2e3de08a90.sync(v221).gas(msg.gas);
                                            require(v223, Error(32, 6, 'SY:B3F'));
                                        }
                                        v224 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(v221, v0, v0).gas(msg.gas);
                                        require(v224, Error(32, 5, 'SN:F3'));
                                        MEM[96] = 0;
                                    }
                                    // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                                }
                            } else {
                                v153 = v225 = 8490;
                                0x5008(v0, v0, v165);
                                v226 = v227 = v148 + 22;
                                if (msg.data[v148] >> 240 & 0x10) {
                                    v226 = v228 = v148 + 24;
                                    if (!(msg.data[v148] >> 240 & 0x20)) {
                                        v229 = (msg.data[22 + ((msg.data[v227] >> 240) + v148)] >> 96).transfer(msg.data[v148 + 2] >> 96, v0).gas(msg.gas);
                                        if (!v229) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:2F'));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                            revert(v23, MEM[36] + 7, 'TR:2F: ');
                                        }
                                    } else {
                                        if (msg.data[v148] >> 240 & 0x40) {
                                            v230 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                            require(v230, Error(32, 5, 'ST:2F'));
                                        }
                                        v231 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[22 + ((msg.data[v227] >> 240) + v148)] >> 96, msg.data[v148 + 2] >> 96, v0).gas(msg.gas);
                                        require(v231, Error(32, 5, 'TK:2F'));
                                        MEM[96] = 0;
                                    }
                                }
                                if (msg.data[v148] >> 240 & 0x100) {
                                    if (msg.data[v148] >> 240 & 0x200) {
                                        v232 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                        require(v232, Error(32, 5, 'ST:22'));
                                    }
                                    v233 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v226 + (msg.data[v226] >> 240)] >> 96).gas(msg.gas);
                                    require(v233, Error(32, 5, 'SY:2F'));
                                }
                                if (bool(msg.data[v148] >> 240)) {
                                    if (0 == (bool(msg.data[v148] >> 240) == 1)) {
                                        // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                                    }
                                } else {
                                    // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                                }
                            }
                        } else {
                            v153 = v234 = 8490;
                            0x5470(v0, v0, v165);
                            v235 = 0;
                            v236 = v237 = v148 + 1;
                            v238 = v235 - v0;
                            while (v235 < bool(byte(msg.data[v148], v235))) {
                                if (0 == 0x2 & (byte(msg.data[v236], 0x0))) {
                                    MEM[MEM[64] + 132] = 0;
                                    v236 += 11;
                                } else {
                                    MEM[MEM[64] + 132] = msg.data[v236] >> 96;
                                    v236 += 31;
                                }
                                if (!(0x1 & (byte(msg.data[v236], 0x0)))) {
                                    MEM[MEM[64] + 228] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                } else {
                                    MEM[MEM[64] + 228] = 0x1000276a4;
                                }
                                v239 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v236 + (msg.data[1 + v236] >> 240)] >> 96, msg.data[v236 + (msg.data[3 + v236] >> 240)] >> 96, msg.data[v236 + 5] >> 232, msg.data[v236 + 8] >> 232, v23, 0x1 & (byte(msg.data[v236], 0x0)), v238, v23, 288, v235).gas(msg.gas);
                                if (!v239) {
                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a4600000000000000000000000000000000000000000000000000000000));
                                    RETURNDATACOPY(0, 0, 68);
                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                    revert(v23, MEM[36] + 6, 0x56343a463a200000000000000000000000000000000000000000000000000000);
                                } else {
                                    if (!(0x1 & (byte(msg.data[v236], 0x0)))) {
                                        v240 = v241 = 1;
                                        v238 = v242 = 0 - (MEM[0] >> 128);
                                    } else {
                                        v240 = v243 = 1;
                                        v238 = v244 = 0 - int128(MEM[0]);
                                    }
                                    v235 = v235 + v240;
                                }
                            }
                            if ((byte(msg.data[v148], v235)) & 0x10) {
                                if (0x40 & (byte(msg.data[v148], v235))) {
                                    v245 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v245, Error(32, 5, 'ST:F4'));
                                }
                                v246 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v236 + (msg.data[v236] >> 240)] >> 96, v0, 0 - v238).gas(msg.gas);
                                require(v246, Error(32, 5, 'TK:F4'));
                                MEM[96] = 0;
                            }
                            // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                        }
                        v166 = v247 = uint256.max;
                    } else {
                        v153 = v248 = 8372;
                        0x5784(v0, v0, v165);
                        v166 = uint256.max;
                        v249 = v148 + 1;
                        if ((byte(msg.data[v148], 0x0)) & 0x2) {
                            if ((byte(msg.data[v148], 0x0)) & 0x8) {
                                v250 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v250, Error(32, 5, 'ST:F3'));
                            }
                            v251 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v148 + (msg.data[v249] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v251, Error(32, 5, 'SY:F3'));
                            v249 = v252 = 3 + v148;
                        }
                        if (0 != (byte(msg.data[v148], 0x0)) & 0x1) {
                        }
                        v253 = new uint256[](25);
                        MEM8[MEM[64] + 198] = (byte(msg.data[v249], 0x2)) & 0xFF;
                        v254 = (msg.data[v249 + 3] >> 96).swap(v0, (byte(msg.data[v148], 0x0)) & 0x1, v0, 0x1000276a4, 0xfffd8963efd1fc6a506488495d951d5263988d25, v253, v23, 0x101000002000000000000000000000000000000000000000000000000000000, 0x1000002000000000000000000000000000000000000000000000000000000, msg.data[v249 + (msg.data[v249] >> 240)]).gas(msg.gas);
                        if (!v254) {
                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56333a4600000000000000000000000000000000000000000000000000000000));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                            revert(v23, MEM[36] + 6, 0x56333a463a200000000000000000000000000000000000000000000000000000);
                        }
                    }
                    v0 = v0 + v166;
                    if (!v0) {
                        // Unknown jump to Block 0x6a6. Refer to 3-address code (TAC);
                    } else {
                        v151 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x200 & v153)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
            v146 = v255 = (varg3 >> 240) + 73;
        }
        v0 = v256 = byte(msg.data[v146], 0x0);
        if (v256) {
            v257 = 1 + v146;
            while (1) {
                v0 = v258 = byte(msg.data[v257], 0x0);
                v0 = v257 + 1;
                if (bool(v258) >= 13) {
                    if (bool(v258) - 13) {
                        if (14 - bool(v258)) {
                            v257 = v257 + 3;
                            if (v258 & 0x40) {
                                if (0x80 & v258) {
                                    v259 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                    require(v259, Error(32, 6, 'ST:EC3'));
                                }
                                v260 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[1 + ((msg.data[v0] >> 240) + v257)] >> 96).gas(msg.gas);
                                require(v260, Error(32, 6, 'SY:EC3'));
                            }
                            v261 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.sendTo(msg.data[1 + ((msg.data[v0] >> 240) + v257)] >> 96, v0, v0).gas(msg.gas);
                            require(v261, Error(32, 5, 'SN:EC'));
                            v262 = v263 = uint256.max;
                            MEM[96] = 0;
                        } else {
                            if (0x40 & v258) {
                                v264 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v264, Error(32, 5, 'ST:EC'));
                            }
                            v265 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v0] >> 240)] >> 96, v0, v0).gas(msg.gas);
                            require(v265, Error(32, 5, 'TK:EC'));
                            MEM[96] = 0;
                            v257 = 2 + v0;
                            v262 = v266 = uint256.max;
                        }
                    } else {
                        v267 = (msg.data[v0 + (msg.data[v0] >> 240)] >> 96).transfer(v0, v0).gas(msg.gas);
                        if (!v267) {
                            require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:EC'));
                            RETURNDATACOPY(0, 0, 68);
                            RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                            revert(v23, MEM[36] + 7, 'TR:EC: ');
                        } else {
                            v257 = 2 + v0;
                            v262 = uint256.max;
                        }
                    }
                    v0 = v0 + v262;
                    if (!v0) {
                        // Unknown jump to Block 0x5910xeb. Refer to 3-address code (TAC);
                    }
                } else {
                    if (v258 & 0xc0) {
                        if (64 - (v258 & 0xc0)) {
                            v0 = v0 + 32;
                            v0 = v268 = msg.data[v0];
                        } else {
                            v0 = v0 + 3;
                            v0 = v0 * (msg.data[v0] >> 232) >> 24;
                        }
                    }
                    if (v258 & 0x20) {
                        v0 = v269 = this;
                    }
                    v0 = v0 + 2;
                    if (0 == !bool(v258)) {
                        if (bool(v258) - 1) {
                            if (bool(v258) - 2) {
                                if (bool(v258) - 3) {
                                    if (bool(v258) - 4) {
                                        if (6 - bool(v258)) {
                                            v270 = v271 = uint256.max;
                                            CALLDATACOPY(MEM[64] + 96, 22 + v0, msg.data[v0 + 20] >> 240);
                                            v272 = (msg.data[v0] >> 96).delegatecall(this, v0, v0).gas(msg.gas);
                                            if (!v272) {
                                                require(RETURNDATASIZE() >= 68, Error(32, 5, 'EE:RE'));
                                                RETURNDATACOPY(0, 0, 68);
                                                RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                revert(v23, MEM[36] + 7, 'EE:RE: ');
                                            }
                                        } else {
                                            v0 = v273 = 7053;
                                            v0 = 0x3068(v0, v0, v0);
                                            v274 = v0 + 1;
                                            if ((byte(msg.data[v0], 0x0)) & 0x80) {
                                                if ((byte(msg.data[v0], 0x0)) & 0x40) {
                                                    v275 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v275, Error(32, 5, 'ST:4S'));
                                                }
                                                v276 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v0 + (msg.data[v274] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v276, Error(32, 5, 'TK:4S'));
                                                MEM[96] = 0;
                                                v274 = v277 = 3 + v0;
                                            }
                                            if (0x3f & (byte(msg.data[v0], 0x0))) {
                                                if (msg.data[v274] >> 240 & 0x1) {
                                                    v0 = v278 = msg.data[2 + v274];
                                                    v274 = v279 = v274 + 34;
                                                } else {
                                                    v274 = v280 = 2 + v274 + 3;
                                                    v0 = v281 = v0 * (msg.data[2 + v274] >> 232) >> 24;
                                                }
                                            }
                                            v282 = v274 + 1;
                                            if ((byte(msg.data[v274], 0x0)) & 0x10) {
                                                if (0x40 & (byte(msg.data[v274], 0x0))) {
                                                    v283 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                    require(v283, Error(32, 5, 'ST:V4'));
                                                }
                                                v284 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v274 + (msg.data[v282] >> 240) + 1] >> 96, v0, v0).gas(msg.gas);
                                                require(v284, Error(32, 5, 'TK:V4'));
                                                MEM[96] = 0;
                                                v282 = v285 = v274 + 3;
                                            }
                                            v286 = new uint256[](0);
                                            if (bool(byte(msg.data[v274], 0x0))) {
                                                if (0 != 0x2 & (byte(msg.data[v282], 0x0))) {
                                                }
                                                if (0x1 & (byte(msg.data[v282], 0x0))) {
                                                }
                                                v287 = 0x4444c5dc75cb358380d2e3de08a90.swap(msg.data[v282 + (msg.data[1 + v282] >> 240)] >> 96, msg.data[v282 + (msg.data[3 + v282] >> 240)] >> 96, msg.data[v282 + 5] >> 232, msg.data[v282 + 8] >> 232, 0, msg.data[v282] >> 96, 0x1 & (byte(msg.data[v282], 0x0)), v0, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v286).gas(msg.gas);
                                                if (!v287) {
                                                    require(RETURNDATASIZE() >= 68, Error(32, 4, 0x56343a5200000000000000000000000000000000000000000000000000000000));
                                                    RETURNDATACOPY(0, 0, 68);
                                                    RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                                    revert(v23, MEM[36] + 6, 0x56343a523a200000000000000000000000000000000000000000000000000000);
                                                } else if (0x1 & (byte(msg.data[v282], 0x0))) {
                                                }
                                            }
                                        }
                                    } else {
                                        v288 = v0 + 2;
                                        if (msg.data[v0] >> 240 & 0x3) {
                                            v289 = v290 = 4;
                                            v291 = v292 = 7;
                                        } else {
                                            v0 = v293 = msg.data[v288];
                                            v288 = v294 = v0 + 34;
                                            v291 = 7;
                                            v289 = 4;
                                        }
                                        MEM[MEM[64]] = msg.data[v288];
                                        v295 = MEM[64] + v289;
                                        v296 = v288 + v291;
                                        v297 = msg.data[4 + v288] >> 232;
                                        while (v297) {
                                            if (!(v297 & 0x3)) {
                                                MEM[v295] = v0;
                                                v295 += 32;
                                            } else if (1 == v297 & 0x3) {
                                                MEM[v295] = v0;
                                                v295 += 32;
                                            } else if (2 == v297 & 0x3) {
                                                MEM[v295] = byte(msg.data[v296], 0x0);
                                                v295 += 32;
                                                v296 = v296 + 1;
                                            } else {
                                                CALLDATACOPY(v295, v296 + 1, byte(msg.data[v296], 0x0));
                                                v295 = v295 + (byte(msg.data[v296], 0x0));
                                                v296 = v296 + (byte(msg.data[v296], 0x0)) + 1;
                                            }
                                            v297 = v297 >> 3;
                                        }
                                        if (msg.data[v0] >> 240 & 0x100) {
                                            if (msg.data[v0] >> 240 & 0x200) {
                                                v298 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v298, Error(32, 5, 'ST:CR'));
                                            }
                                            v299 = 0x4444c5dc75cb358380d2e3de08a90.take(msg.data[v296 + (msg.data[v296] >> 240)] >> 96, this, v0).gas(msg.gas);
                                            require(v299, Error(32, 5, 'TK:CR'));
                                            MEM[96] = 0;
                                            v296 = v300 = 2 + v296;
                                        }
                                        v301 = 0;
                                        if (msg.data[v296] >> 240) {
                                            v301 = v302 = msg.data[2 + (v296 + (msg.data[v296] >> 240))] >> 96;
                                        }
                                        0x1aba(this, v0, v296 + 22);
                                        if (msg.data[v0] >> 240 & 0x400) {
                                            if (msg.data[v0] >> 240 & 0x800) {
                                                v303 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                                require(v303, Error(32, 5, 'ST:CR'));
                                            }
                                            v304 = 0x4444c5dc75cb358380d2e3de08a90.sync(v301).gas(msg.gas);
                                            require(v304, Error(32, 5, 'SY:CR'));
                                        }
                                        v0 = v305 = 0;
                                        if (msg.data[v0] >> 240 & 0x8) {
                                            if (msg.data[v0] >> 240 & 0x10) {
                                                v306 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v0).gas(msg.gas);
                                                require(v306, Error(32, 5, 'WI:CR'));
                                            }
                                        }
                                        v307 = (msg.data[v296 + 2] >> 96).call(MEM[MEM[64]:MEM[64] + veb0x322f - MEM[64]], MEM[0:0]).value(v0).gas(msg.gas);
                                        if (!v307) {
                                            require(RETURNDATASIZE() >= 68, Error(32, 4, 0x43433a5200000000000000000000000000000000000000000000000000000000));
                                            RETURNDATACOPY(0, 0, 68);
                                            RETURNDATACOPY(74, 68, RETURNDATASIZE() - 68);
                                            revert(v23, MEM[36] + 6, 0x43433a523a200000000000000000000000000000000000000000000000000000);
                                        } else {
                                            if (msg.data[v0] >> 240 & 0x20) {
                                                v301 = v308 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                                                v309 = v308.deposit().value(v0).gas(msg.gas);
                                                require(v309, Error(32, 5, 'DE:CR'));
                                            }
                                            if (0x40 & msg.data[v0] >> 240) {
                                                if (!v301) {
                                                    v310 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v0).gas(msg.gas);
                                                    require(v310, Error(32, 5, 'SE:CF'));
                                                } else {
                                                    v311 = v301.transfer(v0, v0).gas(msg.gas);
                                                    if (!v311) {
                                                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'TR:CF'));
                                                        RETURNDATACOPY(0, 0, 68);
                                                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                                                        revert(v23, MEM[36] + 7, 'TR:CF: ');
                                                    }
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    0x37d0(v0, v0, v0);
                                }
                            } else {
                                v0 = v312 = 7053;
                                0x3c89(v0, v0);
                            }
                        } else {
                            0x3faa(v0, v0, v0);
                        }
                        v270 = v313 = uint256.max;
                    } else {
                        v270 = uint256.max;
                        v314 = v315 = v0 + 1;
                        if ((byte(msg.data[v0], 0x0)) & 0x2) {
                            if ((byte(msg.data[v0], 0x0)) & 0x8) {
                                v316 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                                require(v316, Error(32, 5, 'ST:V3'));
                            }
                            v317 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[v0 + (msg.data[v315] >> 240) + 1] >> 96).gas(msg.gas);
                            require(v317, Error(32, 5, 'SY:V3'));
                            v314 = v318 = 3 + v0;
                        }
                        if (0 == (byte(msg.data[v0], 0x0)) & 0x80) {
                            MEM[MEM[64] + 68] = 0 - v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                MEM[MEM[64] + 100] = 0x1000276a4;
                            }
                        } else {
                            MEM[MEM[64] + 68] = v0;
                            if (0 != (byte(msg.data[v0], 0x0)) & 0x1) {
                                v319 = new uint256[]((msg.data[v314 + 20] >> 240) + 1);
                                MEM8[v320.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                                CALLDATACOPY(MEM[64] + 197, 22 + v314, msg.data[v314 + 20] >> 240);
                                v321 = (msg.data[v314] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v23, 0x1000276a4, v319).gas(msg.gas);
                                if (v321) {
                                }
                            }
                        }
                        v320 = new uint256[]((msg.data[v314 + 20] >> 240) + 1);
                        MEM8[v320.data] = (byte(msg.data[v0], 0x0)) & 0xFF;
                        CALLDATACOPY(MEM[64] + 197, 22 + v314, msg.data[v314 + 20] >> 240);
                        v322 = (msg.data[v314] >> 96).swap(v0, (byte(msg.data[v0], 0x0)) & 0x1, v23, v23, v320).gas(msg.gas);
                        if (v322) {
                        }
                        require(RETURNDATASIZE() >= 68, Error(32, 5, 'V3:RE'));
                        RETURNDATACOPY(0, 0, 68);
                        RETURNDATACOPY(75, 68, RETURNDATASIZE() - 68);
                        revert(v23, MEM[36] + 7, 'V3:RE: ');
                        MEM[MEM[64] + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        // Unknown jump to Block 0x24bd0x25c8B0x1b0e0xeb. Refer to 3-address code (TAC);
                    }
                    v0 = v0 + v270;
                    if (!v0) {
                        // Unknown jump to Block 0x5910xeb. Refer to 3-address code (TAC);
                    } else {
                        v257 = 2 + ((msg.data[v0] >> 240) + v0);
                        if (!(0x10 & v0)) {
                            require(v0 <= v0, Error(20304));
                            v0 = v0 - v0;
                        }
                    }
                }
            }
        }
    }
    if (v0 >> 6) {
        v323 = v324 = byte(msg.data[v0 >> 6], 0x0);
        v325 = v326 = 1 + (v0 >> 6);
        while (v323) {
            v325 = v325 + 2;
            v327 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.settle(msg.data[v325 + (msg.data[v325] >> 240)] >> 96, uint256.max).gas(msg.gas);
            require(v327, Error(32, 6, 'ST3:MN'));
            v323 = v323 - 1;
        }
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v328 = new uint256[](0);
    MCOPY(v328.data, MEM[64] + 32, 0);
    MEM[v328.data] = 0;
    return v328;
}

function 0x4c262e47(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = 5;
    v2 = v3 = byte(varg0, 0x0);
    while (v2) {
        v0 = v0 + 40;
        v4 = (msg.data[v0] >> 96).approve(msg.data[v0 + 20] >> 96, uint256.max).gas(msg.gas - 255);
        require(v4, Error(32, 2, 0x4145000000000000000000000000000000000000000000000000000000000000));
        v2 += uint256.max;
    }
    exit;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (!(function_selector >> 224)) {
            require(!msg.value);
            require(msg.data.length - 4 >= 0);
            0x1926();
            CALLDATACOPY(28, 0, msg.data.length);
            v0 = msg.data.length;
            v1 = 0x4444c5dc75cb358380d2e3de08a90.unlock().gas(msg.gas);
            require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            exit;
        } else {
            if (0x10d1e85c != function_selector >> 224) {
                if (0x23a69e75 != function_selector >> 224) {
                    if (0x4c262e47 == function_selector >> 224) {
                        0x4c262e47();
                    } else if (0x62000000 == function_selector >> 224) {
                        0x62000000();
                    } else if (0x7e000000 == function_selector >> 224) {
                        0x7e000000();
                    } else if (0x84800812 != function_selector >> 224) {
                        if (0x91dd7346 == function_selector >> 224) {
                            unlockCallback(bytes);
                        } else if (0xab000000 == function_selector >> 224) {
                            0xab000000();
                        } else if (0xc1000000 == function_selector >> 224) {
                            0xc1000000();
                        } else if (0xc4000000 == function_selector >> 224) {
                            0xc4000000();
                        } else if (0xf4000000 == function_selector >> 224) {
                            0xf4000000();
                        } else if (0xf40a74a8 != function_selector >> 224) {
                            if (0xfa461e33 != function_selector >> 224) {
                                if (!(0xfc000000 - (function_selector >> 224))) {
                                    0xfc000000();
                                }
                            }
                        }
                    }
                }
                uniswapV3SwapCallback(int256,int256,bytes);
            }
            pancakeCall(address,uint256,uint256,bytes);
        }
    }
    require(!msg.data.length);
}
