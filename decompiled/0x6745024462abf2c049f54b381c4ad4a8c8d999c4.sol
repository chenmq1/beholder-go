// Decompiled by library.dedaub.com
// 2025.12.15 05:46 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
uint256 _takerInteraction; // TRANSIENT_STORAGE[0x0]



function 0x13fa(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (!uint8(msg.data[varg0] >> 48)) {
        v0 = 0x170a(varg0, varg1, uint112.max, varg2, varg3);
        return uint112.max - MEM[0];
    } else if (1 == uint8(msg.data[varg0] >> 48)) {
        v1 = 0xdf9(varg0);
        if (1 == msg.data[v1] >> uint8.max) {
            v2 = v3 = 5237;
            v4 = v5 = 0x186a0 - ((0x7fff & msg.data[v1] >> 240) + 10 * (0x3fff & varg0 >> 26));
            v6 = v7 = 0xea1(MEM[varg1 + 32], varg3 - 10 ** 18, 10 ** 18);
        } else {
            v2 = v8 = 5237;
            v4 = v9 = 0x186a0 - ((0x7fff & msg.data[v1] >> 240) + 10 * (0x3fff & varg0 >> 26));
            v6 = v10 = 0xea1(MEM[varg1 + 64], varg3 - 10 ** 18, 10 ** 18);
        }
        v11 = 0xea1(0x186a0, v6, v4);
        return v11;
    } else {
        return 0;
    }
}

function 0x14(uint256 varg0, uint256 varg1) private { 
    if (1 == varg1) {
        v0 = v1 = 5;
        v2 = v3 = msg.sender;
    } else {
        v0 = v4 = 5;
        v2 = v5 = tx.origin;
    }
    if (!(varg0 % v0)) {
        require(!(0xcbc76807fdc08e28ad16ec905a10205f9092bbe9 - v2), wipeBlockchain_EkJWPe());
        return ;
    } else if (1 == varg0 % v0) {
        require(!(0x9ad2b40b5e0c42af493bb1a4ff9dbaa40c20a9e2 - v2), wipeBlockchain_EkJWPe());
        return ;
    } else if (2 == varg0 % v0) {
        require(!(0x8d7b8b84c1c11e123590ec13cf7b0db2be89b866 - v2), wipeBlockchain_EkJWPe());
        return ;
    } else if (3 == varg0 % v0) {
        require(!(0xa1de68d07945b1ff1222a73418fa295cf02ed102 - v2), wipeBlockchain_EkJWPe());
        return ;
    } else {
        require(!(0x4eacca2e8590151791da0ee35653063e855a4a8f - v2), wipeBlockchain_EkJWPe());
        return ;
    }
}

function 0x170a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = 0;
    v0 = v2 = varg3 + 32;
    v0 = v3 = MEM[varg1 + 32];
    v0 = v4 = MEM[varg1 + 64];
    v0 = v5 = MEM[varg1 + 96];
    v6 = 0xdf9(varg0);
    v0 = v7 = msg.data[v6];
    v0 = v8 = 0xfffff;
    while ((v0 > 0) & ((v0 <= 0xfffd8963efd1fc6a506488495d951d5263988d25) & (v0 >= 0x1000276a4))) {
        v9 = v0 / uint24(v0 >> 211);
        if ((v0 < 0) & bool(v0 % uint24(v0 >> 211))) {
            v9 = v9 - 1;
        }
        if (1 == v0 >> uint8.max) {
            v0 = v9 >> 8;
            v10 = v9 % (uint8.max + 1);
            if (v10 < 0) {
                v10 += uint8.max + 1;
            }
            if (1 == !MEM[v0]) {
                if (1 == (v0 == v0)) {
                    v11 = v12 = MEM[v0 - 64];
                    MEM[v0] = v12;
                } else {
                    v13 = address(msg.data[v0] >> 56).tickBitmap(v0).gas(msg.gas);
                    v11 = v14 = MEM[v0];
                }
            } else {
                v11 = v15 = MEM[v0];
            }
            v16 = v17 = uint256.max + ((1 << v10) + (1 << v10)) & v11;
            v0 = bool(v17);
            v18 = v19 = 0;
            if ((v17 == uint128.max + 1) | (v17 > uint128.max + 1)) {
                v18 = v20 = 128;
                v16 = v21 = v17 >> v20;
            }
            if ((v16 > uint64.max + 1) | (v16 == uint64.max + 1)) {
                v18 = v22 = 64 + v18;
                v16 = v23 = v16 >> 64;
            }
            if ((v16 > uint32.max + 1) | (v16 == uint32.max + 1)) {
                v18 = v24 = 32 + v18;
                v16 = v25 = v16 >> 32;
            }
            if ((v16 > uint16.max + 1) | (v16 == uint16.max + 1)) {
                v18 = v26 = 16 + v18;
                v16 = v27 = v16 >> 16;
            }
            if ((v16 > uint8.max + 1) | (v16 == uint8.max + 1)) {
                v18 = v28 = 8 + v18;
                v16 = v29 = v16 >> 8;
            }
            if ((v16 > 16) | (v16 == 16)) {
                v18 = v30 = 4 + v18;
                v16 = v31 = v16 >> 4;
            }
            if ((v16 > 4) | (v16 == 4)) {
                v18 = v32 = 2 + v18;
                v16 = v33 = v16 >> 2;
            }
            if ((v16 > 2) | (v16 == 2)) {
                v18 = v34 = 1 + v18;
            }
            if (1 == v0) {
                v0 = (v9 - (v10 - v18)) * uint24(v0 >> 211);
            } else {
                v0 = uint24(v0 >> 211) * (v9 - v10);
            }
        } else {
            v35 = (v9 + 1) % (uint8.max + 1);
            v0 = v9 + 1 >> 8;
            if (v35 < 0) {
                v35 += uint8.max + 1;
            }
            if (1 == !MEM[v0]) {
                if (1 == (v0 == v0)) {
                    v36 = v37 = MEM[v0 - 64];
                    MEM[v0] = v37;
                } else {
                    v38 = address(msg.data[v0] >> 56).tickBitmap(v0).gas(msg.gas);
                    v36 = v39 = MEM[v0];
                }
            } else {
                v36 = v40 = MEM[v0];
            }
            v41 = v42 = ~((1 << v35) - 1) & v36;
            v0 = bool(v42);
            v43 = v44 = uint8.max;
            if (1 == uint128(v42) > 0) {
                v43 = v45 = int8.max;
            } else {
                v41 = v46 = v42 >> 128;
            }
            if (1 == uint64(v41) > 0) {
                v43 = v47 = v43 - 64;
            } else {
                v41 = v48 = v41 >> 64;
            }
            if (1 == uint32(v41) > 0) {
                v43 = v49 = v43 - 32;
            } else {
                v41 = v50 = v41 >> 32;
            }
            if (1 == uint16(v41) > 0) {
                v43 = v51 = v43 - 16;
            } else {
                v41 = v52 = v41 >> 16;
            }
            if (1 == uint8(v41) > 0) {
                v43 = v53 = v43 - 8;
            } else {
                v41 = v54 = v41 >> 8;
            }
            if (1 == bool(v41) > 0) {
                v43 = v55 = v43 - 4;
            } else {
                v41 = v56 = v41 >> 4;
            }
            if (1 == v41 & 0x3 > 0) {
                v57 = v58 = 1;
                v59 = v60 = 0;
                v43 = v61 = v43 - 2;
            } else {
                v57 = v62 = 1;
                v59 = v63 = 0;
                v41 = v64 = v41 >> 2;
            }
            if (v41 & v57 > v59) {
                v43 = v65 = uint256.max + v43;
            }
            if (1 == v0) {
                v0 = (v9 + 1 + (v43 - v35)) * uint24(v0 >> 211);
            } else {
                v0 = (v9 + 1 + (uint8.max - v35)) * uint24(v0 >> 211);
            }
        }
        if (v0 < 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618) {
            v0 = v66 = 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffff27618;
        }
        if (v0 > 0xd89e8) {
            v0 = v67 = 0xd89e8;
        }
        if (v0 < 0) {
            v0 = v68 = 0 - v0;
        }
        if (!(v0 & 0x1)) {
            v69 = v70 = uint128.max + 1;
        } else {
            v69 = v71 = 0xfffcb933bd6fad37aa2d162d1a594001;
        }
        if (v0 & 0x2) {
            v69 = v72 = 0xfff97272373d413259a46990580e213a * v69 >> 128;
        }
        if (v0 & 0x4) {
            v69 = v73 = 0xfff2e50f5f656932ef12357cf3c7fdcc * v69 >> 128;
        }
        if (v0 & 0x8) {
            v69 = v74 = 0xffe5caca7e10e4e61c3624eaa0941cd0 * v69 >> 128;
        }
        if (v0 & 0x10) {
            v69 = v75 = 0xffcb9843d60f6159c9db58835c926644 * v69 >> 128;
        }
        if (v0 & 0x20) {
            v69 = v76 = 0xff973b41fa98c081472e6896dfb254c0 * v69 >> 128;
        }
        if (v0 & 0x40) {
            v69 = v77 = 0xff2ea16466c96a3843ec78b326b52861 * v69 >> 128;
        }
        if (v0 & 0x80) {
            v69 = v78 = 0xfe5dee046a99a2a811c461f1969c3053 * v69 >> 128;
        }
        if (v0 & 0x100) {
            v69 = v79 = 0xfcbe86c7900a88aedcffc83b479aa3a4 * v69 >> 128;
        }
        if (v0 & 0x200) {
            v69 = v80 = 0xf987a7253ac413176f2b074cf7815e54 * v69 >> 128;
        }
        if (v0 & 0x400) {
            v69 = v81 = 0xf3392b0822b70005940c7a398e4b70f3 * v69 >> 128;
        }
        if (v0 & 0x800) {
            v69 = v82 = 0xe7159475a2c29b7443b29c7fa6e889d9 * v69 >> 128;
        }
        if (v0 & 0x1000) {
            v69 = v83 = 0xd097f3bdfd2022b8845ad8f792aa5825 * v69 >> 128;
        }
        if (v0 & 0x2000) {
            v69 = v84 = 0xa9f746462d870fdf8a65dc1f90e061e5 * v69 >> 128;
        }
        if (v0 & 0x4000) {
            v69 = v85 = 0x70d869a156d2a1b890bb3df62baf32f7 * v69 >> 128;
        }
        if (v0 & 0x8000) {
            v69 = v86 = 0x31be135f97d08fd981231505542fcfa6 * v69 >> 128;
        }
        if (v0 & 0x10000) {
            v69 = v87 = 0x9aa508b5b7a84e1c677de54f3e99bc9 * v69 >> 128;
        }
        if (v0 & 0x20000) {
            v69 = v88 = 0x5d6af8dedb81196699c329225ee604 * v69 >> 128;
        }
        if (v0 & 0x40000) {
            v69 = v89 = v69 * 0x2216e584f5fa1ea926041bedfe98 >> 128;
        }
        if (0x80000 & v0) {
            v69 = v90 = 0x48a170391f7dc42444e8fa2 * v69 >> 128;
        }
        if (v0 > 0) {
            v69 = v91 = uint256.max / v69;
        }
        v0 = v92 = v69 >> 32;
        if (v69 % (uint32.max + 1)) {
            v0 = v93 = v92 + 1;
        }
        v0 = v94 = 6632;
        v0 = 0xea1(v0, 10 ** 6 - (0xfffff & v0 >> 235), 10 ** 6);
        if (1 == v0 >> uint8.max) {
            v0 = v95 = 5892;
            v0 = v96 = 5635;
            v0 = v97 = v0 - v0;
            v98 = v99 = v0 << 96;
            v98 = v100 = 0xf3f(v99, v97, v0);
        } else {
            v0 = v101 = 5395;
            v0 = v102 = uint96.max + 1;
            v0 = v103 = v0 - v0;
            v0 = v104 = 0xf3f(v0, v103, v102);
        }
        if (1 == v0 < v0) {
            if (1 == v0 >> uint8.max) {
                if (v0 > 0) {
                    v105 = v0 << 96;
                    v106 = v107 = 0;
                    if (v0 * v0 / v0 == v0) {
                        if ((v105 + v0 * v0 > v105) | (v105 + v0 * v0 == v105)) {
                            v0 = 0xf3f(v105, v0, v105 + v0 * v0);
                            v106 = v108 = 1;
                        }
                    }
                    if (!v106) {
                        v109 = v105 / v0 + v0;
                        v0 = v105 / v109 + (v105 % v109 > 0);
                    }
                }
            } else if (1 == v0 > uint160.max) {
                v110 = 0xea1(v0, uint96.max + 1, v0);
                v0 = v0 + v110;
            } else {
                v0 = v0 + (v0 << 96) / v0;
            }
        }
        v0 = v0 == v0;
        if (1 == v0 >> uint8.max) {
            if (v0 != v0) {
                v0 = v111 = 5588;
                v0 = v112 = 5647;
                v0 = v113 = uint96.max + 1;
                v98 = v114 = 0xf3f(v0 << 96, v0 - v0, v0);
            }
        } else {
            if (v0 != v0) {
                v0 = v115 = 0xf3f(v0, v0 - v0, uint96.max + 1);
            }
            v116 = 0xea1(v0 << 96, v0 - v0, v0);
            v0 = v116 / v0;
        }
        v0 = v117 = v98 / v0 + (v98 % v0 > 0);
        // Unknown jump to Block ['0x160f', '0x1704']. Refer to 3-address code (TAC);
        v0 = 0xea1(v0, v0 - v0, uint96.max + 1);
        if (1 == v0) {
            v0 = v118 = 5506;
            v0 = v119 = 0xfffff & v0 >> 235;
            v0 = v120 = 10 ** 6 - v119;
            v0 = v121 = 0xf3f(v0, v119, v120);
        } else {
            v0 = v122 = v0 - v0;
        }
        MEM[0] = v0;
        v123 = v0 - (v0 + v0);
        v0 = v124 = MEM[0];
        v0 = v125 = MEM[64];
        if (v124 == v0) {
            if (v0) {
                if (1 == !MEM[v0]) {
                    v126 = address(msg.data[v0] >> 56).ticks(v0).gas(msg.gas);
                    v127 = v128 = MEM[32];
                    if (v0 >> uint8.max) {
                        v127 = v129 = 0 - v128;
                    }
                    MEM[v0 + 32] = v127;
                } else {
                    v127 = v130 = MEM[v0 + 32];
                }
                v0 = v0 + v127;
            }
            if (1 == v0 >> uint8.max) {
                v0 += uint256.max;
            }
        }
        v0 += 64;
        if (1 == v0 >> uint8.max) {
            v131 = 0xea1(MEM[v0 + 32], 10 ** 9, v124);
            if (v131 * v131 > v0) {
                break;
            }
        } else {
            v132 = 0xea1(v124, 10 ** 9, MEM[v0 + 32]);
            if (v132 * v132 > v0) {
                break;
            }
        }
        if (v0 - v0 <= 7200) {
        }
        break;
        // Unknown jump to Block 0x1515. Refer to 3-address code (TAC);
    }
    MEM[0] = v0;
    if (!MEM[v0]) {
        MEM[v0] = v0 - v0;
    }
    return 0 - v0;
}

function 0x20d6(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0xdf9(varg0);
    if (1 == msg.data[v0] >> uint8.max) {
        v1 = v2 = MEM[varg2 + 64] * ((0x186a0 - (0x7fff & msg.data[v0] >> 240)) * varg1) / (MEM[varg2 + 32] * 0x186a0 + (0x186a0 - (0x7fff & msg.data[v0] >> 240)) * varg1);
    } else {
        v1 = v3 = MEM[varg2 + 32] * ((0x186a0 - (0x7fff & msg.data[v0] >> 240)) * varg1) / (MEM[varg2 + 64] * 0x186a0 + (0x186a0 - (0x7fff & msg.data[v0] >> 240)) * varg1);
    }
    if (1 == !(v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % uint256.max - v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) - (v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % uint256.max < v1 * (10000 - (0x1fff & msg.data[varg0] >> 27))))) {
        v4 = v5 = v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) / 10000;
    } else {
        v6 = 0xffffffffffffffffffffffffffffffffffffffffffffff5d1e82623719fb7e91;
        v7 = 0xfe605d300c7ba84c6220e05979a9f39d5b51d3d8930be0ded288ce703afb7e91;
        v4 = 0xbc01a36e2eb1c432ca57a786c226809d495182a9930be0ded288ce703afb7e91 * (v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % uint256.max - v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) - (v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % uint256.max < v1 * (10000 - (0x1fff & msg.data[varg0] >> 27))) - (v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % 10000 > v1 * (10000 - (0x1fff & msg.data[varg0] >> 27))) << 252 | v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) - v1 * (10000 - (0x1fff & msg.data[varg0] >> 27)) % 10000 >> 4);
    }
    return v4;
}

function sendToOwner(address _assetAddress, uint256 _amount) public payable { 
    require(!(msg.sender - 0xc3f272e1c0467a6a586ab230643460542d2b89a));
    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 == _assetAddress >> 96) {
        if (_amount >> 152 > 0) {
            v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(_amount >> 152).gas(msg.gas);
        }
        v1 = 0xc3f272e1c0467a6a586ab230643460542d2b89a.call().value(this.balance).gas(msg.gas);
    } else {
        v2 = (_assetAddress >> 96).transfer(0xc3f272e1c0467a6a586ab230643460542d2b89a, _amount >> 152).gas(msg.gas);
    }
}

function receiveFlashLoan(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    v0 = v1 = varg3 >> 160;
    v0 = v2 = 96;
    v0 = v3 = 368;
    require(!(msg.sender + 0xffffffffffffffffffffffff45eddddddddd72745bba6a758a5f8fb2a9940d38), wipeBlockchain_EkJWPe());
    v0 = v4 = 68;
    v0 = v5 = 160;
    v0 = v6 = 13902;
    v0 = v7 = 0;
    0x14(0x7f & v1 >> 88, v7);
    MEM[224] = 0x7f & v1 >> 88;
    MEM[v2] = varg1;
    MEM[128] = v7;
    MEM[160] = v7;
    if (0x1 & varg4 >> 17) {
        v8 = 0xdf9(v3);
        v9 = (msg.data[v8 - 20] >> v2).balanceOf(this).gas(msg.gas);
    }
    v0 = v10 = 356 + varg2;
    v0 = v11 = 0;
    v0 = v12 = uint8.max + 1;
    v0 = v13 = msg.sender;
    while (v0 < v0) {
        v0 = v14 = msg.data[v0];
        v0 = v15 = 0;
        if (0 == 0x7 & v14 >> 24) {
            v0 = v16 = this;
            break;
        } else if (1 == 0x7 & v14 >> 24) {
            break;
        } else if (2 == 0x7 & v14 >> 24) {
            v17 = v0 + (v14 >> 240);
            while (v17 < v0) {
                if (!(0x1 & msg.data[v17] >> 216)) {
                    break;
                } else {
                    v17 += msg.data[v17] >> 240;
                }
            }
            v0 = v18 = msg.data[5 + v17] >> 96;
            break;
        } else if (4 == 0x7 & v14 >> 24) {
            v0 = v19 = msg.sender;
            break;
        } else {
            break;
        }
        if (0 == 0x3 & v14 >> 222) {
            v20 = v21 = MEM[v0];
            break;
        } else if (1 == 0x3 & v14 >> 222) {
            v20 = v22 = MEM[v0 + 32];
            break;
        } else if (2 == 0x3 & v14 >> 222) {
            v20 = v23 = MEM[v0 + 64];
            break;
        } else {
            MEM[v0] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 4] = this;
            v0 = v24 = 32;
            v0 = v25 = 36;
            v0 = v26 = 20;
            v0 = v27 = 848;
            v0 = v28 = 0xdf9(v0);
            v29 = (msg.data[v0 - v0] >> 96).staticcall(MEM[v35ccarg0x1:v35ccarg0x1 + v35ccarg0x1], MEM[v35ccarg0x1:v35ccarg0x1 + v35ccarg0x1]).gas(msg.gas);
            v20 = MEM[v0] - MEM[v0 + 96];
            if (0x1 & v0 >> 16) {
                v20 = v30 = v20 - _takerInteraction;
                break;
            } else {
                break;
            }
            require(v20 >= 0, unknowneR__8w03R());
            break;
            v31 = v0 + 30;
            if (uint8(msg.data[v0] >> 48) == uint8.max) {
                v31 = v32 = 20 + v31;
            }
            if (msg.data[v0] >> 24 & 0x3 != 3) {
            }
            if (!((msg.data[v0] >> 21 & 0x7 == 2) | (msg.data[v0] >> 21 & 0x7 == 4) | 0x1 & msg.data[v0] >> 221)) {
            }
            if (!(0x1 & msg.data[v0] >> 220)) {
            }
            if (!((msg.data[v0] >> 19 & 0x3 == 2) | (msg.data[v0] >> 19 & 0x3 == 3))) {
            }
            if (!(0x1 & msg.data[v0] >> 17)) {
            }
        }
        v0 = v33 = address(v0 >> 56);
        if (0 == uint8(v0 >> 48)) {
            if (!v0) {
                v0 = v34 = msg.data[v0 + 30];
                break;
            } else {
                break;
            }
            MEM[v0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 4] = v0;
            v35 = 0xdf9(v0);
            MEM[v0 + 36] = msg.data[v35] >> uint8.max;
            if (0 == 0x1 & v0 >> 219) {
                MEM[v0 + 68] = v20;
            } else {
                MEM[v0 + 68] = 0 - v20;
            }
            if (1 == msg.data[v35] >> uint8.max) {
                MEM[v0 + 100] = 0x1000276a4;
            } else {
                MEM[v0 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM[v0 + 132] = 160;
            v36 = 3 + (v0 + 196);
            v37 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
            if (0) {
                v37 = v38 = 4 + v37;
                break;
            } else {
                break;
            }
            if (0) {
                v37 = v39 = 2 + v37;
                break;
            } else {
                break;
            }
            if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                v37 = v40 = 0xffffdf & v37;
                break;
            } else {
                break;
            }
            MEM[v0 + 196] = v37 << 232;
            if (0) {
                MEM[v36] = 0;
                v36 = v41 = v36 + 14;
                break;
            } else {
                break;
            }
            v42 = 30 + v0;
            if (uint8.max == uint8(msg.data[v0] >> 48)) {
                v42 = v43 = 20 + v42;
                break;
            } else {
                break;
            }
            if (3 == 0x7 & msg.data[v0] >> 24) {
                v42 = v44 = 20 + v42;
                break;
            } else {
                break;
            }
            if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                    MEM[v36] = msg.data[v42];
                    v36 = v45 = v36 + 20;
                    break;
                } else {
                    break;
                }
                v42 = v46 = 20 + v42;
                break;
            } else {
                break;
            }
            if (0x1 & msg.data[v0] >> 220) {
                v42 = v47 = 20 + v42;
                break;
            } else {
                break;
            }
            if (2 == 0x3 & msg.data[v0] >> 19) {
                MEM[v36] = msg.data[v42];
                v36 = v48 = 20 + v36;
                break;
            } else if (3 == 0x3 & msg.data[v0] >> 19) {
                break;
            } else {
                break;
            }
            if (0x1 & v37 >> 5 | 0x1 & v37 >> 4) {
                MEM[v36] = MEM[v0 + 96] << 144;
                v36 = v49 = v36 + 14;
                break;
            } else {
                break;
            }
            if (0) {
                MEM[v36] = 0;
                MEM[v36 + 14] = 0;
                v36 = v50 = v36 + 28;
                break;
            } else {
                break;
            }
            MEM8[v0 + 196] = v36 - (v0 + 196) & 0xFF;
            MEM[v0 + 164] = (MEM[v0 + 196] >> 248) + (uint16(v0 >> 224) - (v0 >> 240));
            CALLDATACOPY(v36, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
            v0 = v51 = v33.call(MEM[v35ccarg0x1:v35ccarg0x1 + vebV0xcc70x35cc + uint16(v35ccarg0x1 >> 224) - v35ccarg0x1 >> 240 - v35ccarg0x1], MEM[v35ccarg0x1:v35ccarg0x1 + 64]).gas(msg.gas);
            if (1 == msg.data[v35] >> uint8.max) {
                MEM[v0] = MEM[v0 + 32];
            } else {
                MEM[v0] = MEM[v0];
            }
            if (MEM[v0] < 0) {
                MEM[v0] = 0 - MEM[v0];
                break;
            } else {
                break;
            }
        } else if (1 == uint8(v0 >> 48)) {
            v52 = v0 + 30;
            if (!v0) {
                v0 = v53 = msg.data[v52];
                v52 = v54 = v52 + 20;
                break;
            } else {
                break;
            }
            v55 = v33.getReserves().gas(msg.gas);
            v20 = v56 = 0;
            v57 = 0xdf9(v0);
            v58 = MEM[v0];
            v59 = MEM[v0 + 32];
            if (0x1 & v0 >> 219) {
                if (1 == msg.data[v57] >> uint8.max) {
                    v20 = v60 = 0x186a0 * (v58 * v20) / ((0x186a0 - (0x7fff & msg.data[v57] >> 240)) * (v59 - v20)) + 1;
                    break;
                } else {
                    v20 = v61 = 0x186a0 * (v59 * v20) / ((0x186a0 - (0x7fff & msg.data[v57] >> 240)) * (v58 - v20)) + 1;
                }
                break;
            } else {
                break;
            }
            if (((1 == 0x7 & v0 >> 21) | (2 == 0x7 & v0 >> 21)) & (0x3 & v0 >> 19 == 1)) {
                v62 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (2 == 0x7 & v0 >> 21) {
                    v62 = v63 = msg.data[v52] >> 96;
                    break;
                } else {
                    break;
                }
                MEM[v0] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v0 + 4] = v33;
                MEM[v0 + 36] = v20;
                v64 = v62.call(MEM[v35ccarg0x1:v35ccarg0x1 + 68], MEM[0:0]).gas(msg.gas);
                break;
            } else {
                break;
            }
            if (0x1 & v0 >> 221) {
                v65 = (msg.data[v52] >> 96).balanceOf(v33).gas(msg.gas);
                if (1 == msg.data[v57] >> uint8.max) {
                    v20 = v66 = MEM[0] - v58;
                    break;
                } else {
                    v20 = v67 = MEM[0] - v59;
                    break;
                }
            } else {
                break;
            }
            if ((2 == 0x7 & v0 >> 21) | 0x1 & v0 >> 221) {
                v52 = v68 = 20 + v52;
                break;
            } else {
                break;
            }
            if (!(0x1 & v0 >> 219)) {
                if (1 == msg.data[v57] >> uint8.max) {
                    v20 = v69 = v20 * (0x186a0 - (0x7fff & msg.data[v57] >> 240)) * v59 / (v58 * 0x186a0 + v20 * (0x186a0 - (0x7fff & msg.data[v57] >> 240)));
                    break;
                } else {
                    v20 = v70 = v20 * (0x186a0 - (0x7fff & msg.data[v57] >> 240)) * v58 / (v59 * 0x186a0 + v20 * (0x186a0 - (0x7fff & msg.data[v57] >> 240)));
                }
                break;
            } else {
                break;
            }
            MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == msg.data[v57] >> uint8.max) {
                MEM[v0 + 4] = 0;
                MEM[v0 + 36] = v20;
            } else {
                MEM[v0 + 4] = v20;
                MEM[v0 + 36] = 0;
            }
            MEM[v0 + 68] = v0;
            MEM[v0 + 100] = 128;
            v71 = 164;
            if (uint8(v0 >> 224) - (v0 >> 240)) {
                v72 = 3 + (v0 + v71);
                v73 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                if (MEM[v0]) {
                    v73 = v74 = 4 + v73;
                    break;
                } else {
                    break;
                }
                if (0) {
                    v73 = v75 = 2 + v73;
                    break;
                } else {
                    break;
                }
                if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                    v73 = v76 = 0xffffdf & v73;
                    break;
                } else {
                    break;
                }
                MEM[v0 + v71] = v73 << 232;
                if (MEM[v0]) {
                    MEM[v72] = MEM[v0] << 144;
                    v72 = v72 + 14;
                    break;
                } else {
                    break;
                }
                v77 = 30 + v0;
                if (uint8.max == uint8(msg.data[v0] >> 48)) {
                    v77 = v78 = 20 + v77;
                    break;
                } else {
                    break;
                }
                if (3 == 0x7 & msg.data[v0] >> 24) {
                    v77 = v79 = 20 + v77;
                    break;
                } else {
                    break;
                }
                if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                        MEM[v72] = msg.data[v77];
                        v72 = v72 + 20;
                        break;
                    } else {
                        break;
                    }
                    v77 = v80 = 20 + v77;
                    break;
                } else {
                    break;
                }
                if (0x1 & msg.data[v0] >> 220) {
                    v77 = v81 = 20 + v77;
                    break;
                } else {
                    break;
                }
                if (2 == 0x3 & msg.data[v0] >> 19) {
                    MEM[v72] = msg.data[v77];
                    v72 += 20;
                    break;
                } else if (3 == 0x3 & msg.data[v0] >> 19) {
                    break;
                } else {
                    break;
                }
                if (0x1 & v73 >> 5 | 0x1 & v73 >> 4) {
                    MEM[v72] = MEM[v0 + 96] << 144;
                    v72 = v72 + 14;
                    break;
                } else {
                    break;
                }
                if (0) {
                    MEM[v72] = 0;
                    MEM[v72 + 14] = 0;
                    v72 = v72 + 28;
                    break;
                } else {
                    break;
                }
                MEM8[v0 + v71] = v72 - (v0 + v71) & 0xFF;
                CALLDATACOPY(v72, v0 + (v0 >> 240), uint8(v0 >> 224) - (v0 >> 240));
                v71 = v72 - v0 + (uint8(v0 >> 224) - (v0 >> 240));
                break;
            } else {
                break;
            }
            MEM[v0 + 132] = v71 - 164;
            if (1 == 0x1 & v0 >> 218) {
                v82 = 0;
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v83 = (msg.data[v52] >> 96).balanceOf(v0).gas(msg.gas);
                    v82 = v84 = MEM[0];
                    break;
                } else {
                    break;
                }
                v0 = v85 = v33.call(MEM[v35ccarg0x1:v35ccarg0x1 + v35cc0x99c], MEM[0:0]).gas(msg.gas);
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v86 = (msg.data[v52] >> 96).balanceOf(v0).gas(msg.gas);
                    v20 = v87 = MEM[0] - v82;
                    break;
                } else {
                    break;
                }
            } else {
                MEM[v0 + v71] = (v33 << 16) + (32 + v71);
                v0 = 32 + (v0 + v71);
            }
            if (0 == 0x1 & v0 >> 219) {
                MEM[v0] = v20;
                break;
            } else {
                MEM[v0] = v20;
                break;
            }
        } else if (2 == uint8(v0 >> 48)) {
            v88 = v0 + 30;
            if (!v0) {
                v88 = v89 = v88 + 20;
                v0 = v90 = msg.data[v88];
                break;
            } else {
                break;
            }
            if (4 == 0x7 & v0 >> 21) {
                v88 = v91 = 20 + v88;
                break;
            } else {
                break;
            }
            if (!v20) {
                v0 += v0 >> 240;
            } else {
                v92 = 0xdf9(v0);
                v93 = 0;
                if (1 == msg.data[v92 + 240] >> uint8.max) {
                    MEM[v0] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = msg.data[v92 + 32];
                    MEM[v0 + 36] = msg.data[v92 + 64] >> 96;
                    MEM[v0 + 68] = msg.data[v92 + 84] >> 96;
                    MEM[v0 + 100] = msg.data[v92 + 104] >> 96;
                    MEM[v0 + 132] = msg.data[v92 + 124] >> 96;
                    MEM[v0 + 164] = msg.data[v92 + 144];
                    MEM[v0 + 196] = msg.data[v92 + 176];
                    MEM[v0 + 228] = msg.data[v92 + 208];
                    MEM[v0 + 260] = 384;
                    MEM[v0 + 292] = v20;
                    MEM[v0 + 388] = 0x7fff & msg.data[v92 + 240] >> 240;
                    CALLDATACOPY(v0 + 420, v92 + 242, 0x7fff & msg.data[v92 + 240] >> 240);
                    v94 = v0 + 420 + (0x7fff & msg.data[v92 + 240] >> 240);
                    MEM[v0 + 356] = v94 - (v0 + 4);
                    if (0x1 & msg.data[242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92] >> 251) {
                        MEM[v94] = v0 << 96;
                        v94 = v95 = v94 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92] >> 224)) {
                        CALLDATACOPY(v94, 242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92 + 4, uint24(msg.data[242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92] >> 224));
                        v94 = v96 = v94 + uint24(msg.data[242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v94] = this << 96;
                    v97 = 3 + (v94 + 20);
                    v98 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                    if (v20) {
                        v98 = v99 = 4 + v98;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v98 = v100 = 2 + v98;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                        v98 = v101 = 0xffffdf & v98;
                        break;
                    } else {
                        break;
                    }
                    MEM[v94 + 20] = v98 << 232;
                    if (v20) {
                        MEM[v97] = v20 << 144;
                        v97 = v102 = v97 + 14;
                        break;
                    } else {
                        break;
                    }
                    v103 = 30 + v0;
                    if (uint8.max == uint8(msg.data[v0] >> 48)) {
                        v103 = v104 = 20 + v103;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v0] >> 24) {
                        v103 = v105 = 20 + v103;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                            MEM[v97] = msg.data[v103];
                            v97 = v106 = v97 + 20;
                            break;
                        } else {
                            break;
                        }
                        v103 = v107 = 20 + v103;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v0] >> 220) {
                        v103 = v108 = 20 + v103;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v0] >> 19) {
                        MEM[v97] = msg.data[v103];
                        v97 = v109 = 20 + v97;
                        break;
                    } else if (3 == 0x3 & msg.data[v0] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v98 >> 5 | 0x1 & v98 >> 4) {
                        MEM[v97] = MEM[v0 + 96] << 144;
                        v97 = v110 = v97 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v97] = MEM[v0 + 32] << 144;
                        MEM[v97 + 14] = MEM[v0 + 64] << 144;
                        v97 = v111 = v97 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v94 + 20] = v97 - (v94 + 20) & 0xFF;
                    CALLDATACOPY(v97, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
                    v93 = v112 = uint16(v0 >> 224) - (v0 >> 240) + v97;
                    MEM[v0 + 324] = bytes4(msg.data[242 + (0x7fff & msg.data[v92 + 240] >> 240) + v92]) + (v112 - v94 << 200) << 200;
                    MEM[v94] = v112 - (v94 + 32);
                    break;
                } else if (!(msg.data[v92 + 240] >> uint8.max)) {
                    MEM[v0] = 0xf497df7500000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = msg.data[v92 + 32];
                    MEM[v0 + 36] = msg.data[v92 + 64] >> 96;
                    MEM[v0 + 68] = msg.data[v92 + 84] >> 96;
                    MEM[v0 + 100] = msg.data[v92 + 104] >> 96;
                    MEM[v0 + 132] = msg.data[v92 + 124] >> 96;
                    MEM[v0 + 164] = msg.data[v92 + 144];
                    MEM[v0 + 196] = msg.data[v92 + 176];
                    MEM[v0 + 228] = msg.data[v92 + 208];
                    MEM[v0 + 260] = msg.data[v92 + 242];
                    MEM[v0 + 292] = msg.data[v92 + 274];
                    MEM[v0 + 324] = v20;
                    MEM[v0 + 388] = 416;
                    v113 = v0 + 452;
                    if (0x1 & msg.data[306 + v92] >> 251) {
                        MEM[v113] = v0 << 96;
                        v113 = v114 = v113 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[306 + v92] >> 224)) {
                        CALLDATACOPY(v113, 306 + v92 + 4, uint24(msg.data[306 + v92] >> 224));
                        v113 = v115 = v113 + uint24(msg.data[306 + v92] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v113] = this << 96;
                    v116 = 3 + (v113 + 20);
                    v117 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                    if (v20) {
                        v117 = v118 = 4 + v117;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v117 = v119 = 2 + v117;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                        v117 = v120 = 0xffffdf & v117;
                        break;
                    } else {
                        break;
                    }
                    MEM[v113 + 20] = v117 << 232;
                    if (v20) {
                        MEM[v116] = v20 << 144;
                        v116 = v121 = v116 + 14;
                        break;
                    } else {
                        break;
                    }
                    v122 = 30 + v0;
                    if (uint8.max == uint8(msg.data[v0] >> 48)) {
                        v122 = v123 = 20 + v122;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v0] >> 24) {
                        v122 = v124 = 20 + v122;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                            MEM[v116] = msg.data[v122];
                            v116 = v125 = v116 + 20;
                            break;
                        } else {
                            break;
                        }
                        v122 = v126 = 20 + v122;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v0] >> 220) {
                        v122 = v127 = 20 + v122;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v0] >> 19) {
                        MEM[v116] = msg.data[v122];
                        v116 = v128 = 20 + v116;
                        break;
                    } else if (3 == 0x3 & msg.data[v0] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v117 >> 5 | 0x1 & v117 >> 4) {
                        MEM[v116] = MEM[v0 + 96] << 144;
                        v116 = v129 = v116 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v116] = MEM[v0 + 32] << 144;
                        MEM[v116 + 14] = MEM[v0 + 64] << 144;
                        v116 = v130 = v116 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v113 + 20] = v116 - (v113 + 20) & 0xFF;
                    CALLDATACOPY(v116, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
                    v93 = v131 = uint16(v0 >> 224) - (v0 >> 240) + v116;
                    MEM[v0 + 356] = bytes4(msg.data[306 + v92]) + (v131 - v113 << 200);
                    MEM[v0 + 420] = v131 - (v0 + 452);
                    break;
                } else {
                    break;
                }
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v132 = msg.data[v88].balanceOf(v0).gas(msg.gas);
                    break;
                } else {
                    break;
                }
                v0 = v133 = v33.call(MEM[v35ccarg0x1:v35ccarg0x1 + v35cc0x40d - v35ccarg0x1], MEM[0:32]).gas(msg.gas);
                if (1 == v133) {
                    MEM[v0 + 64] += MEM[0];
                    if (0x1 & (v133 & ((v0 == this) & v0 >> 220))) {
                        v134 = msg.data[v88].balanceOf(v0).gas(msg.gas);
                        break;
                    } else {
                        break;
                    }
                    break;
                } else {
                    v0 += v0 >> 240;
                    if (((MEM[v0 + 64] > 0) | 0x1 & msg.data[v0] >> 216) & (msg.gas + 0x3d090 > msg.gas)) {
                        break;
                    } else {
                        v0 = v135 = 160 + v0;
                        break;
                    }
                }
            }
        } else if (uint8.max == uint8(v0 >> 48)) {
            if (!v0) {
                break;
            } else {
                break;
            }
        } else {
            break;
        }
        v0 += uint16(v0 >> 224);
        continue;
        break;
    }
    while (v0 + 160 - v0) {
        v136 = (MEM[v0 - 32] >> 16).call(MEM[v35ccarg0x1 - uint16(MEM[v35ccarg0x1 - 32]):v35ccarg0x1 - uint16(MEM[v35ccarg0x1 - 32]) + uint16(MEM[v35ccarg0x1 - 32]) - 32], MEM[0:0]).gas(msg.gas);
        v0 = v0 - uint16(MEM[v0 - 32]);
    }
    MEM[v0 + v0] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 164] = 0xba12222222228d8ba445958a75a0704d566bf2c8;
    MEM[v0 + 196] = varg1;
    v137 = varg0.call(MEM[v35ccarg0x1 + v35ccarg0x1:v35ccarg0x1 + v35ccarg0x1 + v35ccarg0x1], MEM[v35ccarg0x1:v35ccarg0x1 + v35ccarg0x1]).value(v0).gas(msg.gas);
    if (!(v0 >> 95)) {
        v138 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(MEM[0] >= uint88(v0), unknowneR__8w03R());
    }
}

function takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256) varg0, bytes varg1, bytes32 varg2) public payable { 
    require(!(msg.sender - 0x111111125421ca6dc452d289314280a0f8842a65), wipeBlockchain_EkJWPe());
    0x14(0x1f & msg.data[varg2 + 36] >> 243, 0);
    MEM[96] = (msg.data[varg2 + 36 + 3] >> 144) - varg0;
    v0 = v1 = varg2 + 36 + 3 + 14;
    v2 = v3 = 0;
    if (3 == msg.data[varg2 + 36] >> 232 >> 8 & 0x7) {
        v2 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (4 == msg.data[varg2 + 36] >> 232 >> 8 & 0x7) {
        v0 = v5 = v1 + 20;
        v2 = v6 = msg.data[v1] >> 96;
    }
    if (msg.data[varg2 + 36] >> 232 >> 5 & 0x1 | msg.data[varg2 + 36] >> 232 >> 4 & 0x1) {
        MEM[192] = msg.data[v0] >> 144;
        v0 = v7 = 14 + v0;
    }
    v8 = v9 = v0 + 14 + 14;
    _takerInteraction = varg1 + (msg.data[v0] >> 144);
    v10 = uint8.max + 1;
    v11 = msg.sender;
    while (v8 < msg.data[varg2 + 36 - 32] + (varg2 + 36)) {
        v12 = msg.data[v8];
        v11 = v13 = 0;
        if (0 == 0x7 & v12 >> 24) {
            v11 = v14 = this;
            break;
        } else if (1 == 0x7 & v12 >> 24) {
            break;
        } else if (2 == 0x7 & v12 >> 24) {
            v15 = v8 + (v12 >> 240);
            while (v15 < msg.data[varg2 + 36 - 32] + (varg2 + 36)) {
                if (!(0x1 & msg.data[v15] >> 216)) {
                    break;
                } else {
                    v15 += msg.data[v15] >> 240;
                }
            }
            v11 = v16 = msg.data[5 + v15] >> 96;
            break;
        } else if (4 == 0x7 & v12 >> 24) {
            v11 = v17 = msg.sender;
            break;
        } else {
            break;
        }
        if (0 == 0x3 & v12 >> 222) {
            v18 = v19 = MEM[96];
            break;
        } else if (1 == 0x3 & v12 >> 222) {
            break;
        } else if (2 == 0x3 & v12 >> 222) {
            v18 = v20 = MEM[160];
            break;
        } else {
            MEM[v10] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[v10 + 4] = this;
            v21 = 0xdf9(v8);
            v22 = (msg.data[v21 - 20] >> 96).staticcall(MEM[v374c0x285:v374c0x285 + 36], MEM[v374c0x285:v374c0x285 + 32]).gas(msg.gas);
            v18 = MEM[v10] - MEM[192];
            if (0x1 & v12 >> 16) {
                v18 = v23 = v18 - _takerInteraction;
                break;
            } else {
                break;
            }
            require(v18 >= 0, unknowneR__8w03R());
            break;
        }
        v11 = v24 = address(v12 >> 56);
        if (0 == uint8(v12 >> 48)) {
            if (!v11) {
                v11 = v25 = msg.data[v8 + 30];
                break;
            } else {
                break;
            }
            MEM[v10] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v10 + 4] = v11;
            v26 = 0xdf9(v8);
            MEM[v10 + 36] = msg.data[v26] >> uint8.max;
            if (0 == 0x1 & v12 >> 219) {
                MEM[v10 + 68] = v18;
            } else {
                MEM[v10 + 68] = 0 - v18;
            }
            if (1 == msg.data[v26] >> uint8.max) {
                MEM[v10 + 100] = 0x1000276a4;
            } else {
                MEM[v10 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM[v10 + 132] = 160;
            v27 = 3 + (v10 + 196);
            v28 = (uint8(msg.data[v8] >> 16) << 3) + ((0x1f & msg.data[varg2 + 36] >> 243) << 11);
            if (0) {
                v28 = v29 = 4 + v28;
                break;
            } else {
                break;
            }
            if (0) {
                v28 = v30 = 2 + v28;
                break;
            } else {
                break;
            }
            if (False & (0x0 & (0x1 & msg.data[v8] >> 18))) {
                v28 = v31 = 0xffffdf & v28;
                break;
            } else {
                break;
            }
            MEM[v10 + 196] = v28 << 232;
            if (0) {
                MEM[v27] = 0;
                v27 = v32 = v27 + 14;
                break;
            } else {
                break;
            }
            v33 = 30 + v8;
            if (uint8.max == uint8(msg.data[v8] >> 48)) {
                v33 = v34 = 20 + v33;
                break;
            } else {
                break;
            }
            if (3 == 0x7 & msg.data[v8] >> 24) {
                v33 = v35 = 20 + v33;
                break;
            } else {
                break;
            }
            if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21) | 0x1 & msg.data[v8] >> 221) {
                if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21)) {
                    MEM[v27] = msg.data[v33];
                    v27 = v36 = v27 + 20;
                    break;
                } else {
                    break;
                }
                v33 = v37 = 20 + v33;
                break;
            } else {
                break;
            }
            if (0x1 & msg.data[v8] >> 220) {
                v33 = v38 = 20 + v33;
                break;
            } else {
                break;
            }
            if (2 == 0x3 & msg.data[v8] >> 19) {
                MEM[v27] = msg.data[v33];
                v27 = v39 = 20 + v27;
                break;
            } else if (3 == 0x3 & msg.data[v8] >> 19) {
                break;
            } else {
                break;
            }
            if (0x1 & v28 >> 5 | 0x1 & v28 >> 4) {
                MEM[v27] = MEM[192] << 144;
                v27 = v40 = v27 + 14;
                break;
            } else {
                break;
            }
            if (0) {
                MEM[v27] = 0;
                MEM[v27 + 14] = 0;
                v27 = v41 = v27 + 28;
                break;
            } else {
                break;
            }
            MEM8[v10 + 196] = v27 - (v10 + 196) & 0xFF;
            MEM[v10 + 164] = (MEM[v10 + 196] >> 248) + (uint16(v12 >> 224) - (v12 >> 240));
            CALLDATACOPY(v27, v8 + (v12 >> 240), uint16(v12 >> 224) - (v12 >> 240));
            v42 = v24.call(MEM[v374c0x285:v374c0x285 + vebV0xcc70x374c + uint16(v374c0x2cf >> 224) - v374c0x2cf >> 240 - v374c0x285], MEM[v374c0x285:v374c0x285 + 64]).gas(msg.gas);
            if (1 == msg.data[v26] >> uint8.max) {
                MEM[96] = MEM[v10 + 32];
            } else {
                MEM[96] = MEM[v10];
            }
            if (MEM[96] < 0) {
                MEM[96] = 0 - MEM[96];
                break;
            } else {
                break;
            }
        } else if (1 == uint8(v12 >> 48)) {
            v43 = v8 + 30;
            if (!v11) {
                v11 = v44 = msg.data[v43];
                v43 = v45 = v43 + 20;
                break;
            } else {
                break;
            }
            v46 = v24.getReserves().gas(msg.gas);
            v18 = v47 = 0;
            v48 = 0xdf9(v8);
            if (0x1 & v12 >> 219) {
                if (1 == msg.data[v48] >> uint8.max) {
                    v18 = v49 = 0x186a0 * (MEM[v10] * v18) / ((0x186a0 - (0x7fff & msg.data[v48] >> 240)) * (MEM[v10 + 32] - v18)) + 1;
                    break;
                } else {
                    v18 = v50 = 0x186a0 * (MEM[v10 + 32] * v18) / ((0x186a0 - (0x7fff & msg.data[v48] >> 240)) * (MEM[v10] - v18)) + 1;
                }
                break;
            } else {
                break;
            }
            if (((1 == 0x7 & v12 >> 21) | (2 == 0x7 & v12 >> 21)) & (0x3 & v12 >> 19 == 1)) {
                v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (2 == 0x7 & v12 >> 21) {
                    v51 = v52 = msg.data[v43] >> 96;
                    break;
                } else {
                    break;
                }
                MEM[v10] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v10 + 4] = v24;
                MEM[v10 + 36] = v18;
                v53 = v51.call(MEM[v374c0x285:v374c0x285 + 68], MEM[0:0]).gas(msg.gas);
                break;
            } else {
                break;
            }
            if (0x1 & v12 >> 221) {
                v54 = (msg.data[v43] >> 96).balanceOf(v24).gas(msg.gas);
                if (1 == msg.data[v48] >> uint8.max) {
                    v18 = v55 = MEM[0] - MEM[v10];
                    break;
                } else {
                    v18 = v56 = MEM[0] - MEM[v10 + 32];
                    break;
                }
            } else {
                break;
            }
            if ((2 == 0x7 & v12 >> 21) | 0x1 & v12 >> 221) {
                v43 = v57 = 20 + v43;
                break;
            } else {
                break;
            }
            if (!(0x1 & v12 >> 219)) {
                if (1 == msg.data[v48] >> uint8.max) {
                    v18 = v58 = v18 * (0x186a0 - (0x7fff & msg.data[v48] >> 240)) * MEM[v10 + 32] / (MEM[v10] * 0x186a0 + v18 * (0x186a0 - (0x7fff & msg.data[v48] >> 240)));
                    break;
                } else {
                    v18 = v59 = v18 * (0x186a0 - (0x7fff & msg.data[v48] >> 240)) * MEM[v10] / (MEM[v10 + 32] * 0x186a0 + v18 * (0x186a0 - (0x7fff & msg.data[v48] >> 240)));
                }
                break;
            } else {
                break;
            }
            MEM[v10] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == msg.data[v48] >> uint8.max) {
                MEM[v10 + 4] = 0;
                MEM[v10 + 36] = v18;
            } else {
                MEM[v10 + 4] = v18;
                MEM[v10 + 36] = 0;
            }
            MEM[v10 + 68] = v11;
            MEM[v10 + 100] = 128;
            v60 = 164;
            if (uint8(v12 >> 224) - (v12 >> 240)) {
                v61 = 3 + (v10 + v60);
                v62 = (uint8(msg.data[v8] >> 16) << 3) + ((0x1f & msg.data[varg2 + 36] >> 243) << 11);
                if (MEM[96]) {
                    v62 = v63 = 4 + v62;
                    break;
                } else {
                    break;
                }
                if (0) {
                    v62 = v64 = 2 + v62;
                    break;
                } else {
                    break;
                }
                if (False & (0x0 & (0x1 & msg.data[v8] >> 18))) {
                    v62 = v65 = 0xffffdf & v62;
                    break;
                } else {
                    break;
                }
                MEM[v10 + v60] = v62 << 232;
                if (MEM[96]) {
                    MEM[v61] = MEM[96] << 144;
                    v61 = v61 + 14;
                    break;
                } else {
                    break;
                }
                v66 = 30 + v8;
                if (uint8.max == uint8(msg.data[v8] >> 48)) {
                    v66 = v67 = 20 + v66;
                    break;
                } else {
                    break;
                }
                if (3 == 0x7 & msg.data[v8] >> 24) {
                    v66 = v68 = 20 + v66;
                    break;
                } else {
                    break;
                }
                if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21) | 0x1 & msg.data[v8] >> 221) {
                    if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21)) {
                        MEM[v61] = msg.data[v66];
                        v61 = v61 + 20;
                        break;
                    } else {
                        break;
                    }
                    v66 = v69 = 20 + v66;
                    break;
                } else {
                    break;
                }
                if (0x1 & msg.data[v8] >> 220) {
                    v66 = v70 = 20 + v66;
                    break;
                } else {
                    break;
                }
                if (2 == 0x3 & msg.data[v8] >> 19) {
                    MEM[v61] = msg.data[v66];
                    v61 += 20;
                    break;
                } else if (3 == 0x3 & msg.data[v8] >> 19) {
                    break;
                } else {
                    break;
                }
                if (0x1 & v62 >> 5 | 0x1 & v62 >> 4) {
                    MEM[v61] = MEM[192] << 144;
                    v61 = v61 + 14;
                    break;
                } else {
                    break;
                }
                if (0) {
                    MEM[v61] = 0;
                    MEM[v61 + 14] = 0;
                    v61 = v61 + 28;
                    break;
                } else {
                    break;
                }
                MEM8[v10 + v60] = v61 - (v10 + v60) & 0xFF;
                CALLDATACOPY(v61, v8 + (v12 >> 240), uint8(v12 >> 224) - (v12 >> 240));
                v60 = v61 - v10 + (uint8(v12 >> 224) - (v12 >> 240));
                break;
            } else {
                break;
            }
            MEM[v10 + 132] = v60 - 164;
            if (1 == 0x1 & v12 >> 218) {
                v71 = 0;
                if (0x1 & v12 >> 220 & (v11 == this)) {
                    v72 = (msg.data[v43] >> 96).balanceOf(v11).gas(msg.gas);
                    v71 = v73 = MEM[0];
                    break;
                } else {
                    break;
                }
                v74 = v24.call(MEM[v374c0x285:v374c0x285 + v374c0x99c], MEM[0:0]).gas(msg.gas);
                if (0x1 & v12 >> 220 & (v11 == this)) {
                    v75 = (msg.data[v43] >> 96).balanceOf(v11).gas(msg.gas);
                    v18 = v76 = MEM[0] - v71;
                    break;
                } else {
                    break;
                }
            } else {
                MEM[v10 + v60] = (v24 << 16) + (32 + v60);
                v10 = 32 + (v10 + v60);
            }
            if (0 == 0x1 & v12 >> 219) {
                MEM[96] = v18;
                break;
            } else {
                MEM[96] = v18;
                break;
            }
        } else if (2 == uint8(v12 >> 48)) {
            v77 = v8 + 30;
            if (!v11) {
                v77 = v78 = v77 + 20;
                v11 = v79 = msg.data[v77];
                break;
            } else {
                break;
            }
            if (4 == 0x7 & v12 >> 21) {
                v77 = v80 = 20 + v77;
                break;
            } else {
                break;
            }
            if (!v18) {
                v8 += v12 >> 240;
            } else {
                v81 = 0xdf9(v8);
                v82 = 0;
                if (1 == msg.data[v81 + 240] >> uint8.max) {
                    MEM[v10] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
                    MEM[v10 + 4] = msg.data[v81 + 32];
                    MEM[v10 + 36] = msg.data[v81 + 64] >> 96;
                    MEM[v10 + 68] = msg.data[v81 + 84] >> 96;
                    MEM[v10 + 100] = msg.data[v81 + 104] >> 96;
                    MEM[v10 + 132] = msg.data[v81 + 124] >> 96;
                    MEM[v10 + 164] = msg.data[v81 + 144];
                    MEM[v10 + 196] = msg.data[v81 + 176];
                    MEM[v10 + 228] = msg.data[v81 + 208];
                    MEM[v10 + 260] = 384;
                    MEM[v10 + 292] = v18;
                    MEM[v10 + 388] = 0x7fff & msg.data[v81 + 240] >> 240;
                    CALLDATACOPY(v10 + 420, v81 + 242, 0x7fff & msg.data[v81 + 240] >> 240);
                    v83 = v10 + 420 + (0x7fff & msg.data[v81 + 240] >> 240);
                    MEM[v10 + 356] = v83 - (v10 + 4);
                    if (0x1 & msg.data[242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81] >> 251) {
                        MEM[v83] = v11 << 96;
                        v83 = v84 = v83 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81] >> 224)) {
                        CALLDATACOPY(v83, 242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81 + 4, uint24(msg.data[242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81] >> 224));
                        v83 = v85 = v83 + uint24(msg.data[242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v83] = this << 96;
                    v86 = 3 + (v83 + 20);
                    v87 = (uint8(msg.data[v8] >> 16) << 3) + ((0x1f & msg.data[varg2 + 36] >> 243) << 11);
                    if (v18) {
                        v87 = v88 = 4 + v87;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v87 = v89 = 2 + v87;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[160]) & (0x1 & (0x1 & msg.data[v8] >> 18))) {
                        v87 = v90 = 0xffffdf & v87;
                        break;
                    } else {
                        break;
                    }
                    MEM[v83 + 20] = v87 << 232;
                    if (v18) {
                        MEM[v86] = v18 << 144;
                        v86 = v91 = v86 + 14;
                        break;
                    } else {
                        break;
                    }
                    v92 = 30 + v8;
                    if (uint8.max == uint8(msg.data[v8] >> 48)) {
                        v92 = v93 = 20 + v92;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v8] >> 24) {
                        v92 = v94 = 20 + v92;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21) | 0x1 & msg.data[v8] >> 221) {
                        if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21)) {
                            MEM[v86] = msg.data[v92];
                            v86 = v95 = v86 + 20;
                            break;
                        } else {
                            break;
                        }
                        v92 = v96 = 20 + v92;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v8] >> 220) {
                        v92 = v97 = 20 + v92;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v8] >> 19) {
                        MEM[v86] = msg.data[v92];
                        v86 = v98 = 20 + v86;
                        break;
                    } else if (3 == 0x3 & msg.data[v8] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v87 >> 5 | 0x1 & v87 >> 4) {
                        MEM[v86] = MEM[192] << 144;
                        v86 = v99 = v86 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v86] = varg1 + (msg.data[v0] >> 144) << 144;
                        MEM[v86 + 14] = MEM[160] << 144;
                        v86 = v100 = v86 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v83 + 20] = v86 - (v83 + 20) & 0xFF;
                    CALLDATACOPY(v86, v8 + (v12 >> 240), uint16(v12 >> 224) - (v12 >> 240));
                    v82 = v101 = uint16(v12 >> 224) - (v12 >> 240) + v86;
                    MEM[v10 + 324] = bytes4(msg.data[242 + (0x7fff & msg.data[v81 + 240] >> 240) + v81]) + (v101 - v83 << 200) << 200;
                    MEM[v83] = v101 - (v83 + 32);
                    break;
                } else if (!(msg.data[v81 + 240] >> uint8.max)) {
                    MEM[v10] = 0xf497df7500000000000000000000000000000000000000000000000000000000;
                    MEM[v10 + 4] = msg.data[v81 + 32];
                    MEM[v10 + 36] = msg.data[v81 + 64] >> 96;
                    MEM[v10 + 68] = msg.data[v81 + 84] >> 96;
                    MEM[v10 + 100] = msg.data[v81 + 104] >> 96;
                    MEM[v10 + 132] = msg.data[v81 + 124] >> 96;
                    MEM[v10 + 164] = msg.data[v81 + 144];
                    MEM[v10 + 196] = msg.data[v81 + 176];
                    MEM[v10 + 228] = msg.data[v81 + 208];
                    MEM[v10 + 260] = msg.data[v81 + 242];
                    MEM[v10 + 292] = msg.data[v81 + 274];
                    MEM[v10 + 324] = v18;
                    MEM[v10 + 388] = 416;
                    v102 = v10 + 452;
                    if (0x1 & msg.data[306 + v81] >> 251) {
                        MEM[v102] = v11 << 96;
                        v102 = v103 = v102 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[306 + v81] >> 224)) {
                        CALLDATACOPY(v102, 306 + v81 + 4, uint24(msg.data[306 + v81] >> 224));
                        v102 = v104 = v102 + uint24(msg.data[306 + v81] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v102] = this << 96;
                    v105 = 3 + (v102 + 20);
                    v106 = (uint8(msg.data[v8] >> 16) << 3) + ((0x1f & msg.data[varg2 + 36] >> 243) << 11);
                    if (v18) {
                        v106 = v107 = 4 + v106;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v106 = v108 = 2 + v106;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[160]) & (0x1 & (0x1 & msg.data[v8] >> 18))) {
                        v106 = v109 = 0xffffdf & v106;
                        break;
                    } else {
                        break;
                    }
                    MEM[v102 + 20] = v106 << 232;
                    if (v18) {
                        MEM[v105] = v18 << 144;
                        v105 = v110 = v105 + 14;
                        break;
                    } else {
                        break;
                    }
                    v111 = 30 + v8;
                    if (uint8.max == uint8(msg.data[v8] >> 48)) {
                        v111 = v112 = 20 + v111;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v8] >> 24) {
                        v111 = v113 = 20 + v111;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21) | 0x1 & msg.data[v8] >> 221) {
                        if ((2 == 0x7 & msg.data[v8] >> 21) | (4 == 0x7 & msg.data[v8] >> 21)) {
                            MEM[v105] = msg.data[v111];
                            v105 = v114 = v105 + 20;
                            break;
                        } else {
                            break;
                        }
                        v111 = v115 = 20 + v111;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v8] >> 220) {
                        v111 = v116 = 20 + v111;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v8] >> 19) {
                        MEM[v105] = msg.data[v111];
                        v105 = v117 = 20 + v105;
                        break;
                    } else if (3 == 0x3 & msg.data[v8] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v106 >> 5 | 0x1 & v106 >> 4) {
                        MEM[v105] = MEM[192] << 144;
                        v105 = v118 = v105 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v105] = varg1 + (msg.data[v0] >> 144) << 144;
                        MEM[v105 + 14] = MEM[160] << 144;
                        v105 = v119 = v105 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v102 + 20] = v105 - (v102 + 20) & 0xFF;
                    CALLDATACOPY(v105, v8 + (v12 >> 240), uint16(v12 >> 224) - (v12 >> 240));
                    v82 = v120 = uint16(v12 >> 224) - (v12 >> 240) + v105;
                    MEM[v10 + 356] = bytes4(msg.data[306 + v81]) + (v120 - v102 << 200);
                    MEM[v10 + 420] = v120 - (v10 + 452);
                    break;
                } else {
                    break;
                }
                if (0x1 & v12 >> 220 & (v11 == this)) {
                    v121 = msg.data[v77].balanceOf(v11).gas(msg.gas);
                    break;
                } else {
                    break;
                }
                v122 = v24.call(MEM[v374c0x285:v374c0x285 + v374c0x40d - v374c0x285], MEM[0:32]).gas(msg.gas);
                if (1 == v122) {
                    MEM[160] = MEM[0] + (varg0 + (msg.data[v0 + 14] >> 144));
                    if (0x1 & (v122 & ((v11 == this) & v12 >> 220))) {
                        v123 = msg.data[v77].balanceOf(v11).gas(msg.gas);
                        break;
                    } else {
                        break;
                    }
                    break;
                } else {
                    v8 += v12 >> 240;
                    if (((MEM[160] > 0) | 0x1 & msg.data[v8] >> 216) & (msg.gas + 0x3d090 > msg.gas)) {
                        break;
                    } else {
                        v10 = v124 = uint8.max + 1;
                        break;
                    }
                }
            }
        } else if (uint8.max == uint8(v12 >> 48)) {
            if (!v11) {
                break;
            } else {
                break;
            }
        } else {
            break;
        }
        v8 += uint16(v12 >> 224);
        continue;
        break;
    }
    while (uint8.max + 1 - v10) {
        v125 = (MEM[v10 - 32] >> 16).call(MEM[v374c0x285 - uint16(MEM[v374c0x285 - 32]):v374c0x285 - uint16(MEM[v374c0x285 - 32]) + uint16(MEM[v374c0x285 - 32]) - 32], MEM[0:0]).gas(msg.gas);
        v10 = v10 - uint16(MEM[v10 - 32]);
    }
    if (v2) {
        v126 = v2.approve(msg.sender, uint256.max).gas(msg.gas);
    }
    if (msg.data[varg2 + 36] >> 232 >> 5 & 0x1) {
        v127 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        v128 = v129 = MEM[192];
        if (0x1 & msg.data[varg2 + 36] >> 232 >> 3) {
            v128 = v130 = varg1 + v129;
        }
        require(MEM[0] >= v128, unknowneR__8w03R());
    }
}

function uniswapV2Call(bool varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    v0 = v1 = 96;
    v0 = v2 = 1;
    v0 = v3 = varg3 >> 232;
    0x14(0x1f & v3 >> 11, 0);
    MEM[224] = 0x1f & v3 >> 11;
    if (v2 == varg0) {
        MEM[128] = varg4 >> 144;
        MEM[160] = varg0;
    } else {
        MEM[128] = varg4 >> 144;
        MEM[160] = varg1;
    }
    v0 = v4 = 181;
    v0 = v5 = 0;
    if (v2 == v3 >> 8 & 0x7) {
        v0 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else if (2 == v3 >> 8 & 0x7) {
        v0 = v7 = 201;
        v0 = v8 = varg5 >> v1;
    }
    v0 = v9 = 14774;
    if (v3 >> 5 & v2 | v3 >> 4 & v2) {
        MEM[192] = msg.data[v0] >> 144;
        v0 = v10 = 14 + v0;
    }
    if (v3 >> 5 & v2) {
        _takerInteraction = MEM[128];
    }
    v0 = v11 = 164 + varg2;
    v0 = v12 = 0;
    v0 = v13 = uint8.max + 1;
    v0 = v14 = msg.sender;
    while (v0 < v0) {
        v0 = v15 = msg.data[v0];
        v0 = v16 = 0;
        if (0 == 0x7 & v15 >> 24) {
            v0 = v17 = this;
            break;
        } else if (1 == 0x7 & v15 >> 24) {
            break;
        } else if (2 == 0x7 & v15 >> 24) {
            v18 = v0 + (v15 >> 240);
            while (v18 < v0) {
                if (!(0x1 & msg.data[v18] >> 216)) {
                    break;
                } else {
                    v18 += msg.data[v18] >> 240;
                }
            }
            v0 = v19 = msg.data[5 + v18] >> 96;
            break;
        } else if (4 == 0x7 & v15 >> 24) {
            v0 = v20 = msg.sender;
            break;
        } else {
            break;
        }
        if (0 == 0x3 & v15 >> 222) {
            v21 = v22 = MEM[v0];
            break;
        } else if (1 == 0x3 & v15 >> 222) {
            v21 = v23 = MEM[v0 + 32];
            break;
        } else if (2 == 0x3 & v15 >> 222) {
            v21 = v24 = MEM[v0 + 64];
            break;
        } else {
            MEM[v0] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 4] = this;
            v0 = v25 = 32;
            v0 = v26 = 36;
            v0 = v27 = 20;
            v0 = v28 = 848;
            v0 = v29 = 0xdf9(v0);
            v30 = (msg.data[v0 - v0] >> 96).staticcall(MEM[v392carg0x1:v392carg0x1 + v392carg0x1], MEM[v392carg0x1:v392carg0x1 + v392carg0x1]).gas(msg.gas);
            v21 = MEM[v0] - MEM[v0 + 96];
            if (0x1 & v0 >> 16) {
                v21 = v31 = v21 - _takerInteraction;
                break;
            } else {
                break;
            }
            require(v21 >= 0, unknowneR__8w03R());
            break;
            v32 = msg.data[v0];
            v33 = v0 + 30;
            if (uint8(v32 >> 48) == uint8.max) {
                v33 = v34 = 20 + v33;
            }
            if (v32 >> 24 & 0x3 != 3) {
            }
            if (!((v32 >> 21 & 0x7 == 2) | (v32 >> 21 & 0x7 == 4) | 0x1 & v32 >> 221)) {
            }
            if (!(0x1 & v32 >> 220)) {
            }
            if (!((v32 >> 19 & 0x3 == 2) | (v32 >> 19 & 0x3 == 3))) {
            }
            if (!(0x1 & v32 >> 17)) {
            }
        }
        v0 = v35 = address(v0 >> 56);
        if (0 == uint8(v0 >> 48)) {
            if (!v0) {
                v0 = v36 = msg.data[v0 + 30];
                break;
            } else {
                break;
            }
            MEM[v0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 4] = v0;
            v37 = 0xdf9(v0);
            MEM[v0 + 36] = msg.data[v37] >> uint8.max;
            if (0 == 0x1 & v0 >> 219) {
                MEM[v0 + 68] = v21;
            } else {
                MEM[v0 + 68] = 0 - v21;
            }
            if (1 == msg.data[v37] >> uint8.max) {
                MEM[v0 + 100] = 0x1000276a4;
            } else {
                MEM[v0 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM[v0 + 132] = 160;
            v38 = 3 + (v0 + 196);
            v39 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
            if (0) {
                v39 = v40 = 4 + v39;
                break;
            } else {
                break;
            }
            if (0) {
                v39 = v41 = 2 + v39;
                break;
            } else {
                break;
            }
            if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                v39 = v42 = 0xffffdf & v39;
                break;
            } else {
                break;
            }
            MEM[v0 + 196] = v39 << 232;
            if (0) {
                MEM[v38] = 0;
                v38 = v43 = v38 + 14;
                break;
            } else {
                break;
            }
            v44 = 30 + v0;
            if (uint8.max == uint8(msg.data[v0] >> 48)) {
                v44 = v45 = 20 + v44;
                break;
            } else {
                break;
            }
            if (3 == 0x7 & msg.data[v0] >> 24) {
                v44 = v46 = 20 + v44;
                break;
            } else {
                break;
            }
            if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                    MEM[v38] = msg.data[v44];
                    v38 = v47 = v38 + 20;
                    break;
                } else {
                    break;
                }
                v44 = v48 = 20 + v44;
                break;
            } else {
                break;
            }
            if (0x1 & msg.data[v0] >> 220) {
                v44 = v49 = 20 + v44;
                break;
            } else {
                break;
            }
            if (2 == 0x3 & msg.data[v0] >> 19) {
                MEM[v38] = msg.data[v44];
                v38 = v50 = 20 + v38;
                break;
            } else if (3 == 0x3 & msg.data[v0] >> 19) {
                break;
            } else {
                break;
            }
            if (0x1 & v39 >> 5 | 0x1 & v39 >> 4) {
                MEM[v38] = MEM[v0 + 96] << 144;
                v38 = v51 = v38 + 14;
                break;
            } else {
                break;
            }
            if (0) {
                MEM[v38] = 0;
                MEM[v38 + 14] = 0;
                v38 = v52 = v38 + 28;
                break;
            } else {
                break;
            }
            MEM8[v0 + 196] = v38 - (v0 + 196) & 0xFF;
            MEM[v0 + 164] = (MEM[v0 + 196] >> 248) + (uint16(v0 >> 224) - (v0 >> 240));
            CALLDATACOPY(v38, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
            v0 = v53 = v35.call(MEM[v392carg0x1:v392carg0x1 + vebV0xcc70x392c + uint16(v392carg0x1 >> 224) - v392carg0x1 >> 240 - v392carg0x1], MEM[v392carg0x1:v392carg0x1 + 64]).gas(msg.gas);
            if (1 == msg.data[v37] >> uint8.max) {
                MEM[v0] = MEM[v0 + 32];
            } else {
                MEM[v0] = MEM[v0];
            }
            if (MEM[v0] < 0) {
                MEM[v0] = 0 - MEM[v0];
                break;
            } else {
                break;
            }
        } else if (1 == uint8(v0 >> 48)) {
            v54 = v0 + 30;
            if (!v0) {
                v0 = v55 = msg.data[v54];
                v54 = v56 = v54 + 20;
                break;
            } else {
                break;
            }
            v57 = v35.getReserves().gas(msg.gas);
            v21 = v58 = 0;
            v59 = 0xdf9(v0);
            v60 = MEM[v0];
            v61 = MEM[v0 + 32];
            if (0x1 & v0 >> 219) {
                if (1 == msg.data[v59] >> uint8.max) {
                    v21 = v62 = 0x186a0 * (v60 * v21) / ((0x186a0 - (0x7fff & msg.data[v59] >> 240)) * (v61 - v21)) + 1;
                    break;
                } else {
                    v21 = v63 = 0x186a0 * (v61 * v21) / ((0x186a0 - (0x7fff & msg.data[v59] >> 240)) * (v60 - v21)) + 1;
                }
                break;
            } else {
                break;
            }
            if (((1 == 0x7 & v0 >> 21) | (2 == 0x7 & v0 >> 21)) & (0x3 & v0 >> 19 == 1)) {
                v64 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (2 == 0x7 & v0 >> 21) {
                    v64 = v65 = msg.data[v54] >> 96;
                    break;
                } else {
                    break;
                }
                MEM[v0] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v0 + 4] = v35;
                MEM[v0 + 36] = v21;
                v66 = v64.call(MEM[v392carg0x1:v392carg0x1 + 68], MEM[0:0]).gas(msg.gas);
                break;
            } else {
                break;
            }
            if (0x1 & v0 >> 221) {
                v67 = (msg.data[v54] >> 96).balanceOf(v35).gas(msg.gas);
                if (1 == msg.data[v59] >> uint8.max) {
                    v21 = v68 = MEM[0] - v60;
                    break;
                } else {
                    v21 = v69 = MEM[0] - v61;
                    break;
                }
            } else {
                break;
            }
            if ((2 == 0x7 & v0 >> 21) | 0x1 & v0 >> 221) {
                v54 = v70 = 20 + v54;
                break;
            } else {
                break;
            }
            if (!(0x1 & v0 >> 219)) {
                if (1 == msg.data[v59] >> uint8.max) {
                    v21 = v71 = v21 * (0x186a0 - (0x7fff & msg.data[v59] >> 240)) * v61 / (v60 * 0x186a0 + v21 * (0x186a0 - (0x7fff & msg.data[v59] >> 240)));
                    break;
                } else {
                    v21 = v72 = v21 * (0x186a0 - (0x7fff & msg.data[v59] >> 240)) * v60 / (v61 * 0x186a0 + v21 * (0x186a0 - (0x7fff & msg.data[v59] >> 240)));
                }
                break;
            } else {
                break;
            }
            MEM[v0] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
            if (1 == msg.data[v59] >> uint8.max) {
                MEM[v0 + 4] = 0;
                MEM[v0 + 36] = v21;
            } else {
                MEM[v0 + 4] = v21;
                MEM[v0 + 36] = 0;
            }
            MEM[v0 + 68] = v0;
            MEM[v0 + 100] = 128;
            v73 = 164;
            if (uint8(v0 >> 224) - (v0 >> 240)) {
                v74 = 3 + (v0 + v73);
                v75 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                if (MEM[v0]) {
                    v75 = v76 = 4 + v75;
                    break;
                } else {
                    break;
                }
                if (0) {
                    v75 = v77 = 2 + v75;
                    break;
                } else {
                    break;
                }
                if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                    v75 = v78 = 0xffffdf & v75;
                    break;
                } else {
                    break;
                }
                MEM[v0 + v73] = v75 << 232;
                if (MEM[v0]) {
                    MEM[v74] = MEM[v0] << 144;
                    v74 = v74 + 14;
                    break;
                } else {
                    break;
                }
                v79 = 30 + v0;
                if (uint8.max == uint8(msg.data[v0] >> 48)) {
                    v79 = v80 = 20 + v79;
                    break;
                } else {
                    break;
                }
                if (3 == 0x7 & msg.data[v0] >> 24) {
                    v79 = v81 = 20 + v79;
                    break;
                } else {
                    break;
                }
                if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                        MEM[v74] = msg.data[v79];
                        v74 = v74 + 20;
                        break;
                    } else {
                        break;
                    }
                    v79 = v82 = 20 + v79;
                    break;
                } else {
                    break;
                }
                if (0x1 & msg.data[v0] >> 220) {
                    v79 = v83 = 20 + v79;
                    break;
                } else {
                    break;
                }
                if (2 == 0x3 & msg.data[v0] >> 19) {
                    MEM[v74] = msg.data[v79];
                    v74 += 20;
                    break;
                } else if (3 == 0x3 & msg.data[v0] >> 19) {
                    break;
                } else {
                    break;
                }
                if (0x1 & v75 >> 5 | 0x1 & v75 >> 4) {
                    MEM[v74] = MEM[v0 + 96] << 144;
                    v74 = v74 + 14;
                    break;
                } else {
                    break;
                }
                if (0) {
                    MEM[v74] = 0;
                    MEM[v74 + 14] = 0;
                    v74 = v74 + 28;
                    break;
                } else {
                    break;
                }
                MEM8[v0 + v73] = v74 - (v0 + v73) & 0xFF;
                CALLDATACOPY(v74, v0 + (v0 >> 240), uint8(v0 >> 224) - (v0 >> 240));
                v73 = v74 - v0 + (uint8(v0 >> 224) - (v0 >> 240));
                break;
            } else {
                break;
            }
            MEM[v0 + 132] = v73 - 164;
            if (1 == 0x1 & v0 >> 218) {
                v84 = 0;
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v85 = (msg.data[v54] >> 96).balanceOf(v0).gas(msg.gas);
                    v84 = v86 = MEM[0];
                    break;
                } else {
                    break;
                }
                v0 = v87 = v35.call(MEM[v392carg0x1:v392carg0x1 + v392c0x99c], MEM[0:0]).gas(msg.gas);
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v88 = (msg.data[v54] >> 96).balanceOf(v0).gas(msg.gas);
                    v21 = v89 = MEM[0] - v84;
                    break;
                } else {
                    break;
                }
            } else {
                MEM[v0 + v73] = (v35 << 16) + (32 + v73);
                v0 = 32 + (v0 + v73);
            }
            if (0 == 0x1 & v0 >> 219) {
                MEM[v0] = v21;
                break;
            } else {
                MEM[v0] = v21;
                break;
            }
        } else if (2 == uint8(v0 >> 48)) {
            v90 = v0 + 30;
            if (!v0) {
                v90 = v91 = v90 + 20;
                v0 = v92 = msg.data[v90];
                break;
            } else {
                break;
            }
            if (4 == 0x7 & v0 >> 21) {
                v90 = v93 = 20 + v90;
                break;
            } else {
                break;
            }
            if (!v21) {
                v0 += v0 >> 240;
            } else {
                v94 = 0xdf9(v0);
                v95 = 0;
                if (1 == msg.data[v94 + 240] >> uint8.max) {
                    MEM[v0] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = msg.data[v94 + 32];
                    MEM[v0 + 36] = msg.data[v94 + 64] >> 96;
                    MEM[v0 + 68] = msg.data[v94 + 84] >> 96;
                    MEM[v0 + 100] = msg.data[v94 + 104] >> 96;
                    MEM[v0 + 132] = msg.data[v94 + 124] >> 96;
                    MEM[v0 + 164] = msg.data[v94 + 144];
                    MEM[v0 + 196] = msg.data[v94 + 176];
                    MEM[v0 + 228] = msg.data[v94 + 208];
                    MEM[v0 + 260] = 384;
                    MEM[v0 + 292] = v21;
                    MEM[v0 + 388] = 0x7fff & msg.data[v94 + 240] >> 240;
                    CALLDATACOPY(v0 + 420, v94 + 242, 0x7fff & msg.data[v94 + 240] >> 240);
                    v96 = v0 + 420 + (0x7fff & msg.data[v94 + 240] >> 240);
                    MEM[v0 + 356] = v96 - (v0 + 4);
                    if (0x1 & msg.data[242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94] >> 251) {
                        MEM[v96] = v0 << 96;
                        v96 = v97 = v96 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94] >> 224)) {
                        CALLDATACOPY(v96, 242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94 + 4, uint24(msg.data[242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94] >> 224));
                        v96 = v98 = v96 + uint24(msg.data[242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v96] = this << 96;
                    v99 = 3 + (v96 + 20);
                    v100 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                    if (v21) {
                        v100 = v101 = 4 + v100;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v100 = v102 = 2 + v100;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                        v100 = v103 = 0xffffdf & v100;
                        break;
                    } else {
                        break;
                    }
                    MEM[v96 + 20] = v100 << 232;
                    if (v21) {
                        MEM[v99] = v21 << 144;
                        v99 = v104 = v99 + 14;
                        break;
                    } else {
                        break;
                    }
                    v105 = 30 + v0;
                    if (uint8.max == uint8(msg.data[v0] >> 48)) {
                        v105 = v106 = 20 + v105;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v0] >> 24) {
                        v105 = v107 = 20 + v105;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                            MEM[v99] = msg.data[v105];
                            v99 = v108 = v99 + 20;
                            break;
                        } else {
                            break;
                        }
                        v105 = v109 = 20 + v105;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v0] >> 220) {
                        v105 = v110 = 20 + v105;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v0] >> 19) {
                        MEM[v99] = msg.data[v105];
                        v99 = v111 = 20 + v99;
                        break;
                    } else if (3 == 0x3 & msg.data[v0] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v100 >> 5 | 0x1 & v100 >> 4) {
                        MEM[v99] = MEM[v0 + 96] << 144;
                        v99 = v112 = v99 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v99] = MEM[v0 + 32] << 144;
                        MEM[v99 + 14] = MEM[v0 + 64] << 144;
                        v99 = v113 = v99 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v96 + 20] = v99 - (v96 + 20) & 0xFF;
                    CALLDATACOPY(v99, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
                    v95 = v114 = uint16(v0 >> 224) - (v0 >> 240) + v99;
                    MEM[v0 + 324] = bytes4(msg.data[242 + (0x7fff & msg.data[v94 + 240] >> 240) + v94]) + (v114 - v96 << 200) << 200;
                    MEM[v96] = v114 - (v96 + 32);
                    break;
                } else if (!(msg.data[v94 + 240] >> uint8.max)) {
                    MEM[v0] = 0xf497df7500000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = msg.data[v94 + 32];
                    MEM[v0 + 36] = msg.data[v94 + 64] >> 96;
                    MEM[v0 + 68] = msg.data[v94 + 84] >> 96;
                    MEM[v0 + 100] = msg.data[v94 + 104] >> 96;
                    MEM[v0 + 132] = msg.data[v94 + 124] >> 96;
                    MEM[v0 + 164] = msg.data[v94 + 144];
                    MEM[v0 + 196] = msg.data[v94 + 176];
                    MEM[v0 + 228] = msg.data[v94 + 208];
                    MEM[v0 + 260] = msg.data[v94 + 242];
                    MEM[v0 + 292] = msg.data[v94 + 274];
                    MEM[v0 + 324] = v21;
                    MEM[v0 + 388] = 416;
                    v115 = v0 + 452;
                    if (0x1 & msg.data[306 + v94] >> 251) {
                        MEM[v115] = v0 << 96;
                        v115 = v116 = v115 + 20;
                        break;
                    } else {
                        break;
                    }
                    if (uint24(msg.data[306 + v94] >> 224)) {
                        CALLDATACOPY(v115, 306 + v94 + 4, uint24(msg.data[306 + v94] >> 224));
                        v115 = v117 = v115 + uint24(msg.data[306 + v94] >> 224);
                        break;
                    } else {
                        break;
                    }
                    MEM[v115] = this << 96;
                    v118 = 3 + (v115 + 20);
                    v119 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                    if (v21) {
                        v119 = v120 = 4 + v119;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        v119 = v121 = 2 + v119;
                        break;
                    } else {
                        break;
                    }
                    if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                        v119 = v122 = 0xffffdf & v119;
                        break;
                    } else {
                        break;
                    }
                    MEM[v115 + 20] = v119 << 232;
                    if (v21) {
                        MEM[v118] = v21 << 144;
                        v118 = v123 = v118 + 14;
                        break;
                    } else {
                        break;
                    }
                    v124 = 30 + v0;
                    if (uint8.max == uint8(msg.data[v0] >> 48)) {
                        v124 = v125 = 20 + v124;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v0] >> 24) {
                        v124 = v126 = 20 + v124;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                            MEM[v118] = msg.data[v124];
                            v118 = v127 = v118 + 20;
                            break;
                        } else {
                            break;
                        }
                        v124 = v128 = 20 + v124;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v0] >> 220) {
                        v124 = v129 = 20 + v124;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v0] >> 19) {
                        MEM[v118] = msg.data[v124];
                        v118 = v130 = 20 + v118;
                        break;
                    } else if (3 == 0x3 & msg.data[v0] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v119 >> 5 | 0x1 & v119 >> 4) {
                        MEM[v118] = MEM[v0 + 96] << 144;
                        v118 = v131 = v118 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (1) {
                        MEM[v118] = MEM[v0 + 32] << 144;
                        MEM[v118 + 14] = MEM[v0 + 64] << 144;
                        v118 = v132 = v118 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v115 + 20] = v118 - (v115 + 20) & 0xFF;
                    CALLDATACOPY(v118, v0 + (v0 >> 240), uint16(v0 >> 224) - (v0 >> 240));
                    v95 = v133 = uint16(v0 >> 224) - (v0 >> 240) + v118;
                    MEM[v0 + 356] = bytes4(msg.data[306 + v94]) + (v133 - v115 << 200);
                    MEM[v0 + 420] = v133 - (v0 + 452);
                    break;
                } else {
                    break;
                }
                if (0x1 & v0 >> 220 & (v0 == this)) {
                    v134 = msg.data[v90].balanceOf(v0).gas(msg.gas);
                    break;
                } else {
                    break;
                }
                v0 = v135 = v35.call(MEM[v392carg0x1:v392carg0x1 + v392c0x40d - v392carg0x1], MEM[0:32]).gas(msg.gas);
                if (1 == v135) {
                    MEM[v0 + 64] += MEM[0];
                    if (0x1 & (v135 & ((v0 == this) & v0 >> 220))) {
                        v136 = msg.data[v90].balanceOf(v0).gas(msg.gas);
                        break;
                    } else {
                        break;
                    }
                    break;
                } else {
                    v0 += v0 >> 240;
                    if (((MEM[v0 + 64] > 0) | 0x1 & msg.data[v0] >> 216) & (msg.gas + 0x3d090 > msg.gas)) {
                        break;
                    } else {
                        v0 = v137 = 160 + v0;
                        break;
                    }
                }
            }
        } else if (uint8.max == uint8(v0 >> 48)) {
            if (!v0) {
                break;
            } else {
                break;
            }
        } else {
            break;
        }
        v0 += uint16(v0 >> 224);
        continue;
        break;
    }
    while (v0 + 160 - v0) {
        v138 = (MEM[v0 - 32] >> 16).call(MEM[v392carg0x1 - uint16(MEM[v392carg0x1 - 32]):v392carg0x1 - uint16(MEM[v392carg0x1 - 32]) + uint16(MEM[v392carg0x1 - 32]) - 32], MEM[0:0]).gas(msg.gas);
        v0 = v0 - uint16(MEM[v0 - 32]);
    }
    if (v0) {
        MEM[v0 + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v0 + 164] = msg.sender;
        MEM[v0 + 196] = v0 + 32;
        v139 = v0.call(MEM[v392carg0x1 + 160:v392carg0x1 + 160 + 68], MEM[0:0]).gas(msg.gas);
    }
    if (v0 >> 5 & v0) {
        v140 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        require(MEM[0] >= MEM[v0 + v0], unknowneR__8w03R());
    }
}

function 0xdf9(uint256 varg0) private { 
    v0 = msg.data[varg0];
    v1 = v2 = varg0 + 30;
    if (uint8(v0 >> 48) == uint8.max) {
        v1 = v3 = 20 + v2;
    }
    if (v0 >> 24 & 0x3 == 3) {
        v1 = v4 = 20 + v1;
    }
    if ((v0 >> 21 & 0x7 == 2) | (v0 >> 21 & 0x7 == 4) | 0x1 & v0 >> 221) {
        v1 = v5 = 20 + v1;
    }
    if (0x1 & v0 >> 220) {
        v1 = v6 = 20 + v1;
    }
    if ((v0 >> 19 & 0x3 == 2) | (v0 >> 19 & 0x3 == 3)) {
        v1 = v1 + 20;
    }
    if (0x1 & v0 >> 17) {
        return 20 + v1;
    } else {
        return v1;
    }
}

function 0xea1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0 * varg1;
    v1 = varg0 * varg1 % uint256.max - v0 - (varg0 * varg1 % uint256.max < v0);
    if (1 == !v1) {
        return v0 / varg2;
    } else {
        v2 = varg0 * varg1 % varg2;
        v3 = varg2 & ~varg2 + 1;
        v4 = varg2 / v3;
        v5 = (2 - v4 * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)))) * ((2 - v4 * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2))) * ((2 - v4 * (3 * v4 ^ 0x2)) * (3 * v4 ^ 0x2)));
        return (2 - v4 * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5))) * ((2 - v4 * ((2 - v4 * v5) * v5)) * ((2 - v4 * v5) * v5)) * (((0 - v3) / v3 + 1) * (v1 - (v2 > v0)) | (v0 - v2) / v3);
    }
}

function 0xf3f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0xea1(varg0, varg1, varg2);
    if (varg0 * varg1 % varg2 > 0) {
        return 1 + v0;
    } else {
        return v0;
    }
}

function 0xf5e(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = v1 = (1 << uint8(msg.data[varg3] >> 232)) * 10 ** 18 / (varg6 - 10 ** 18);
    v0 = v2 = varg1 - varg0 >> 20;
    if (v1 >= v2) {
    }
    if (v0 < 1000) {
        v0 = v3 = 1000;
    }
    v0 = v4 = 0;
    v0 = v5 = varg5 + MEM[varg5];
    v0 = v6 = 4029;
    v0 = v7 = 1;
    v0 = v8 = varg5 + MEM[varg5];
    v0 = v9 = 0;
    if (0x1 & msg.data[varg3] >> 248 != 1) {
    }
    v0 = v10 = msg.data[varg3] >> 249;
    v0 = v11 = varg3 + 4;
    while (v0 > 0) {
        v0 = v0 + (0x3fff & msg.data[v0] >> 240);
        if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
            if (!(0x1 & msg.data[v0] >> 248)) {
                if (0x1 & msg.data[v0] >> 219) {
                }
            }
        }
        if (v0) {
            MEM[v0] = 0;
        }
        if (!uint8(msg.data[v0] >> 48)) {
            if (1 == (v0 != uint16(msg.data[v0] >> 199)) | 0x1 & msg.data[v0] >> 248) {
                v0 = v12 = 5027;
                v0 = v13 = 0x170a(v0, v0, v0, v0, v0);
                v0 += MEM[v0];
                if (v0 < v0) {
                }
            } else {
                v0 = v14 = 4971;
                v0 = v15 = 0x170a(v0, v0, v0, v0, v0);
            }
            // Unknown jump to Block 0xfbd. Refer to 3-address code (TAC);
            if (!v0 & (MEM[0] > 0)) {
                v0 = v16 = 0;
                break;
            }
        } else if (1 == uint8(msg.data[v0] >> 48)) {
            v0 = v17 = 1;
            v0 = v18 = 4917;
            v0 = v19 = 2;
            v0 = 0x20d6(v0, v0, v0);
            // Unknown jump to Block 0xfbd. Refer to 3-address code (TAC);
        } else if (2 == uint8(msg.data[v0] >> 48)) {
            if (v0 > MEM[v0 + 32]) {
                v0 = v20 = MEM[v0 + 32];
            }
            if (v0 > 0) {
                v0 = v21 = 2;
                v0 = v22 = 4876;
                v0 = v23 = v0 + 64;
                v0 = v24 = MEM[v0 + 32];
                v0 = v25 = 4871;
                v0 = v0 + uint16(msg.data[v0] >> 240);
                v0 = v26 = 0xdf9(v0);
                v27 = v28 = v0 + 30;
                if (uint8(msg.data[v0] >> 48) == uint8.max) {
                    v27 = v29 = 20 + v28;
                }
                if (msg.data[v0] >> 24 & 0x3 != 3) {
                }
                if (!((msg.data[v0] >> 21 & 0x7 == 2) | (msg.data[v0] >> 21 & 0x7 == 4) | 0x1 & msg.data[v0] >> 221)) {
                }
                if (!(0x1 & msg.data[v0] >> 220)) {
                }
                if (!((msg.data[v0] >> 19 & 0x3 == 2) | (msg.data[v0] >> 19 & 0x3 == 3))) {
                }
                if (0x1 & msg.data[v0] >> 17) {
                    // Unknown jump to Block 0xfbd. Refer to 3-address code (TAC);
                } else {
                    // Unknown jump to Block 0xfbd. Refer to 3-address code (TAC);
                }
                if (1 == msg.data[v0 + 240] >> uint8.max) {
                    v30 = v31 = v0 + 246 + (0x7fff & msg.data[v0 + 240] >> 240);
                } else {
                    v30 = v32 = v0 + 310;
                }
                if (1 == !(msg.data[v30 - 3] >> 232)) {
                    v33 = (msg.data[176 + v0] * v0 + msg.data[144 + v0] - 1) / msg.data[144 + v0];
                    // Unknown jump to Block 0x130cB0xfa00xf5e. Refer to 3-address code (TAC);
                } else {
                    MEM[v0] = 0xd7ff8a8000000000000000000000000000000000000000000000000000000000;
                    MEM[v0 + 4] = msg.data[v0 + 32];
                    MEM[v0 + 36] = msg.data[v0 + 64] >> 96;
                    MEM[v0 + 68] = msg.data[v0 + 84] >> 96;
                    MEM[v0 + 100] = msg.data[v0 + 104] >> 96;
                    MEM[v0 + 132] = msg.data[v0 + 124] >> 96;
                    MEM[v0 + 164] = msg.data[v0 + 144];
                    MEM[v0 + 196] = msg.data[v0 + 176];
                    MEM[v0 + 228] = msg.data[v0 + 208];
                    MEM[v0 + 260] = 448;
                    CALLDATACOPY(v0 + 292, v0, 32);
                    MEM[v0 + 324] = this;
                    MEM[v0 + 356] = v0;
                    MEM[v0 + 388] = v0;
                    MEM[v0 + 420] = v0 - v30 + 480;
                    MEM[v0 + 452] = v0 - v30;
                    CALLDATACOPY(v0 + 484, v30, v0 - v30);
                    MEM[484 + (v0 + (v0 - v30))] = uint32(msg.data[v30] >> 96) - uint32(msg.data[v30] >> 64) - 20;
                    CALLDATACOPY(32 + (v0 + (v0 - v30)) + 484, v30 + 32 + uint32(msg.data[v30] >> 64) + 20, uint32(msg.data[v30] >> 96) - uint32(msg.data[v30] >> 64) - 20);
                    v34 = (msg.data[v30 + 32 + uint32(msg.data[v30] >> 64)] >> 96).staticcall(MEM[vf5earg0x7:vf5earg0x7 + 12 + uint32(msg.data[v2177_0x1V0x1307V0xfa00xf5e] >> 96) - uint32(msg.data[v2177_0x1V0x1307V0xfa00xf5e] >> 64) + 484 + vf5earg0x7 - v2177_0x1V0x1307V0xfa00xf5e], MEM[0:32]).gas(msg.gas);
                    v33 = MEM[0];
                }
                v0 += v33;
                v0 = v0 - v0;
            }
        }
        v0 = v0 - 1;
        v0 = v0 + 2;
        if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
            if (!(0x1 & msg.data[v0] >> 248)) {
                if (!(0x1 & msg.data[v0] >> 219)) {
                }
            }
        }
        v0 += MEM[v0];
    }
    MEM[0] = v0;
    MEM[32] = v0;
    if (1 == v0) {
        // Unknown jump to Block 0xfbd. Refer to 3-address code (TAC);
    }
    v0 = v35 = MEM[32] - MEM[0];
    if (v35 < 0) {
        v0 = v36 = 0;
    }
    while (v0 + v0 < v0) {
        v0 = v37 = 4114;
        v0 = v38 = 0;
        v0 = v39 = MEM[64];
        v0 = v40 = v0 + (v0 - v0 >> 1);
        v0 = v41 = 0;
        if (0x1 & msg.data[v42] >> 248 != 1) {
        }
        v0 = v43 = msg.data[v42] >> 249;
        v0 = v44 = v42 + 4;
        while (v0 > 0) {
            v0 = v0 + (0x3fff & msg.data[v0] >> 240);
            if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
                if (!(0x1 & msg.data[v0] >> 248)) {
                    if (0x1 & msg.data[v0] >> 219) {
                    }
                }
            }
            if (v0) {
                MEM[v0] = 0;
            }
            if (!uint8(msg.data[v0] >> 48)) {
                if (1 == (v0 != uint16(msg.data[v0] >> 199)) | 0x1 & msg.data[v0] >> 248) {
                    v0 = v45 = 5027;
                    v0 = v46 = 0x170a(v0, v0, v0, v0, v0);
                    v0 += MEM[v0];
                    if (v0 < v0) {
                    }
                } else {
                    v0 = v47 = 4971;
                    v0 = v48 = 0x170a(v0, v0, v0, v0, v0);
                }
                // Unknown jump to Block 0x1012. Refer to 3-address code (TAC);
                if (!v0 & (MEM[0] > 0)) {
                    v0 = v49 = 0;
                    break;
                }
            } else if (1 == uint8(msg.data[v0] >> 48)) {
                v0 = v50 = 1;
                v0 = v51 = 4917;
                v0 = v52 = 2;
                v0 = 0x20d6(v0, v0, v0);
                // Unknown jump to Block 0x1012. Refer to 3-address code (TAC);
            } else if (2 == uint8(msg.data[v0] >> 48)) {
                if (v0 > MEM[v0 + 32]) {
                    v0 = v53 = MEM[v0 + 32];
                }
                if (v0 > 0) {
                    v0 = v54 = 2;
                    v0 = v55 = 4876;
                    v0 = v56 = v0 + 64;
                    v0 = v57 = MEM[v0 + 32];
                    v0 = v58 = 4871;
                    v0 = v0 + uint16(msg.data[v0] >> 240);
                    v0 = v59 = 0xdf9(v0);
                    v60 = v61 = v0 + 30;
                    if (uint8(msg.data[v0] >> 48) == uint8.max) {
                        v60 = v62 = 20 + v61;
                    }
                    if (msg.data[v0] >> 24 & 0x3 != 3) {
                    }
                    if (!((msg.data[v0] >> 21 & 0x7 == 2) | (msg.data[v0] >> 21 & 0x7 == 4) | 0x1 & msg.data[v0] >> 221)) {
                    }
                    if (!(0x1 & msg.data[v0] >> 220)) {
                    }
                    if (!((msg.data[v0] >> 19 & 0x3 == 2) | (msg.data[v0] >> 19 & 0x3 == 3))) {
                    }
                    if (0x1 & msg.data[v0] >> 17) {
                        // Unknown jump to Block 0x1012. Refer to 3-address code (TAC);
                    } else {
                        // Unknown jump to Block 0x1012. Refer to 3-address code (TAC);
                    }
                    if (1 == msg.data[v0 + 240] >> uint8.max) {
                        v63 = v64 = v0 + 246 + (0x7fff & msg.data[v0 + 240] >> 240);
                    } else {
                        v63 = v65 = v0 + 310;
                    }
                    if (1 == !(msg.data[v63 - 3] >> 232)) {
                        v66 = (msg.data[176 + v0] * v0 + msg.data[144 + v0] - 1) / msg.data[144 + v0];
                        // Unknown jump to Block 0x130cB0xff4. Refer to 3-address code (TAC);
                    } else {
                        MEM[v0] = 0xd7ff8a8000000000000000000000000000000000000000000000000000000000;
                        MEM[v0 + 4] = msg.data[v0 + 32];
                        MEM[v0 + 36] = msg.data[v0 + 64] >> 96;
                        MEM[v0 + 68] = msg.data[v0 + 84] >> 96;
                        MEM[v0 + 100] = msg.data[v0 + 104] >> 96;
                        MEM[v0 + 132] = msg.data[v0 + 124] >> 96;
                        MEM[v0 + 164] = msg.data[v0 + 144];
                        MEM[v0 + 196] = msg.data[v0 + 176];
                        MEM[v0 + 228] = msg.data[v0 + 208];
                        MEM[v0 + 260] = 448;
                        CALLDATACOPY(v0 + 292, v0, 32);
                        MEM[v0 + 324] = this;
                        MEM[v0 + 356] = v0;
                        MEM[v0 + 388] = v0;
                        MEM[v0 + 420] = v0 - v63 + 480;
                        MEM[v0 + 452] = v0 - v63;
                        CALLDATACOPY(v0 + 484, v63, v0 - v63);
                        MEM[484 + (v0 + (v0 - v63))] = uint32(msg.data[v63] >> 96) - uint32(msg.data[v63] >> 64) - 20;
                        CALLDATACOPY(32 + (v0 + (v0 - v63)) + 484, v63 + 32 + uint32(msg.data[v63] >> 64) + 20, uint32(msg.data[v63] >> 96) - uint32(msg.data[v63] >> 64) - 20);
                        v67 = (msg.data[v63 + 32 + uint32(msg.data[v63] >> 64)] >> 96).staticcall(MEM[vf5earg0x7:vf5earg0x7 + 12 + uint32(msg.data[v2177_0x1V0x1307V0xff4] >> 96) - uint32(msg.data[v2177_0x1V0x1307V0xff4] >> 64) + 484 + vf5earg0x7 - v2177_0x1V0x1307V0xff4], MEM[0:32]).gas(msg.gas);
                        v66 = MEM[0];
                    }
                    v0 += v66;
                    v0 = v0 - v0;
                }
            }
            v0 = v0 - 1;
            v0 = v0 + 2;
            if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
                if (!(0x1 & msg.data[v0] >> 248)) {
                    if (!(0x1 & msg.data[v0] >> 219)) {
                    }
                }
            }
            v0 += MEM[v0];
        }
        MEM[0] = v0;
        MEM[32] = v0;
        if (1 == v0) {
            MEM[64] = v0;
            // Unknown jump to Block 0x1012. Refer to 3-address code (TAC);
        } else {
            MEM[64] = v0;
        }
        v0 = v68 = MEM[32] - MEM[0];
        if (!MEM[0x20] | (v68 < 0)) {
            v0 = v0 + (v0 - v0 >> MEM[MEM[64]]);
            v0 = v69 = 0;
            MEM[MEM[64]] = MEM[MEM[64]] + 1;
            v0 = v0 - v0 >> 2;
            if (v0 <= v0) {
            }
            if (v0 < 1000) {
                v0 = v70 = 1000;
            }
        } else {
            v71 = 0xea1(v0, 1001, 1000);
            if (1 == v68 > v71) {
                MEM[32 + MEM[64]] = 0;
            } else {
                if (v68 <= v0) {
                }
                if (v0 > 0) {
                    if (MEM[32 + MEM[64]] + 1 > 2) {
                        break;
                    }
                }
            }
            if ((v72 < v68) & (v68 < v0)) {
                v0 += v0 - v0 >> MEM[MEM[64]];
                MEM[MEM[64]] = 1;
            } else if ((v72 > v68) & (v68 > v0)) {
                v0 = v0 + (v0 - v0 >> MEM[MEM[64]]);
                MEM[MEM[64]] = 1;
            } else {
                v0 = v73 = 4236;
                v0 = v74 = 0;
                v0 = v75 = MEM[64];
                v0 = v76 = v0 + (v0 + (v0 - v0 >> MEM[MEM[64]])) >> 1;
                v0 = v77 = 0;
                if (0x1 & msg.data[v78] >> 248 != 1) {
                }
                v0 = v79 = msg.data[v78] >> 249;
                v0 = v80 = v78 + 4;
                while (v0 > 0) {
                    v0 = v0 + (0x3fff & msg.data[v0] >> 240);
                    if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
                        if (!(0x1 & msg.data[v0] >> 248)) {
                            if (0x1 & msg.data[v0] >> 219) {
                            }
                        }
                    }
                    if (v0) {
                        MEM[v0] = 0;
                    }
                    if (!uint8(msg.data[v0] >> 48)) {
                        if (1 == (v0 != uint16(msg.data[v0] >> 199)) | 0x1 & msg.data[v0] >> 248) {
                            v0 = v81 = 5027;
                            v0 = v82 = 0x170a(v0, v0, v0, v0, v0);
                            v0 += MEM[v0];
                            if (v0 < v0) {
                            }
                        } else {
                            v0 = v83 = 4971;
                            v0 = v84 = 0x170a(v0, v0, v0, v0, v0);
                        }
                        // Unknown jump to Block 0x108c. Refer to 3-address code (TAC);
                        if (!v0 & (MEM[0] > 0)) {
                            v0 = v85 = 0;
                            break;
                        }
                    } else if (1 == uint8(msg.data[v0] >> 48)) {
                        v0 = v86 = 1;
                        v0 = v87 = 4917;
                        v0 = v88 = 2;
                        v0 = 0x20d6(v0, v0, v0);
                        // Unknown jump to Block 0x108c. Refer to 3-address code (TAC);
                    } else if (2 == uint8(msg.data[v0] >> 48)) {
                        if (v0 > MEM[v0 + 32]) {
                            v0 = v89 = MEM[v0 + 32];
                        }
                        if (v0 > 0) {
                            v0 = v90 = 2;
                            v0 = v91 = 4876;
                            v0 = v92 = v0 + 64;
                            v0 = v93 = MEM[v0 + 32];
                            v0 = v94 = 4871;
                            v0 = v0 + uint16(msg.data[v0] >> 240);
                            v0 = v95 = 0xdf9(v0);
                            v96 = v97 = v0 + 30;
                            if (uint8(msg.data[v0] >> 48) == uint8.max) {
                                v96 = v98 = 20 + v97;
                            }
                            if (msg.data[v0] >> 24 & 0x3 != 3) {
                            }
                            if (!((msg.data[v0] >> 21 & 0x7 == 2) | (msg.data[v0] >> 21 & 0x7 == 4) | 0x1 & msg.data[v0] >> 221)) {
                            }
                            if (!(0x1 & msg.data[v0] >> 220)) {
                            }
                            if (!((msg.data[v0] >> 19 & 0x3 == 2) | (msg.data[v0] >> 19 & 0x3 == 3))) {
                            }
                            if (0x1 & msg.data[v0] >> 17) {
                                // Unknown jump to Block 0x108c. Refer to 3-address code (TAC);
                            } else {
                                // Unknown jump to Block 0x108c. Refer to 3-address code (TAC);
                            }
                            if (1 == msg.data[v0 + 240] >> uint8.max) {
                                v99 = v100 = v0 + 246 + (0x7fff & msg.data[v0 + 240] >> 240);
                            } else {
                                v99 = v101 = v0 + 310;
                            }
                            if (1 == !(msg.data[v99 - 3] >> 232)) {
                                v102 = (msg.data[176 + v0] * v0 + msg.data[144 + v0] - 1) / msg.data[144 + v0];
                                // Unknown jump to Block 0x130cB0x1069. Refer to 3-address code (TAC);
                            } else {
                                MEM[v0] = 0xd7ff8a8000000000000000000000000000000000000000000000000000000000;
                                MEM[v0 + 4] = msg.data[v0 + 32];
                                MEM[v0 + 36] = msg.data[v0 + 64] >> 96;
                                MEM[v0 + 68] = msg.data[v0 + 84] >> 96;
                                MEM[v0 + 100] = msg.data[v0 + 104] >> 96;
                                MEM[v0 + 132] = msg.data[v0 + 124] >> 96;
                                MEM[v0 + 164] = msg.data[v0 + 144];
                                MEM[v0 + 196] = msg.data[v0 + 176];
                                MEM[v0 + 228] = msg.data[v0 + 208];
                                MEM[v0 + 260] = 448;
                                CALLDATACOPY(v0 + 292, v0, 32);
                                MEM[v0 + 324] = this;
                                MEM[v0 + 356] = v0;
                                MEM[v0 + 388] = v0;
                                MEM[v0 + 420] = v0 - v99 + 480;
                                MEM[v0 + 452] = v0 - v99;
                                CALLDATACOPY(v0 + 484, v99, v0 - v99);
                                MEM[484 + (v0 + (v0 - v99))] = uint32(msg.data[v99] >> 96) - uint32(msg.data[v99] >> 64) - 20;
                                CALLDATACOPY(32 + (v0 + (v0 - v99)) + 484, v99 + 32 + uint32(msg.data[v99] >> 64) + 20, uint32(msg.data[v99] >> 96) - uint32(msg.data[v99] >> 64) - 20);
                                v103 = (msg.data[v99 + 32 + uint32(msg.data[v99] >> 64)] >> 96).staticcall(MEM[vf5earg0x7:vf5earg0x7 + 12 + uint32(msg.data[v2177_0x1V0x1307V0x1069] >> 96) - uint32(msg.data[v2177_0x1V0x1307V0x1069] >> 64) + 484 + vf5earg0x7 - v2177_0x1V0x1307V0x1069], MEM[0:32]).gas(msg.gas);
                                v102 = MEM[0];
                            }
                            v0 += v102;
                            v0 = v0 - v0;
                        }
                    }
                    v0 = v0 - 1;
                    v0 = v0 + 2;
                    if (v0 == v0 + (0x7fff & msg.data[v0] >> 184)) {
                        if (!(0x1 & msg.data[v0] >> 248)) {
                            if (!(0x1 & msg.data[v0] >> 219)) {
                            }
                        }
                    }
                    v0 += MEM[v0];
                }
                MEM[0] = v0;
                MEM[32] = v0;
                if (1 == v0) {
                    MEM[64] = v0;
                    // Unknown jump to Block 0x108c. Refer to 3-address code (TAC);
                } else {
                    MEM[64] = v0;
                }
                v0 = v104 = MEM[32] - MEM[0];
                if (v104 <= v0) {
                }
                if (1 == v104 > v0) {
                    v0 = v0 + (v0 - v0 >> MEM[MEM[64]]);
                } else {
                    v0 = v0 + (v0 - v0 >> MEM[MEM[64]]) + v0 >> 1;
                }
                MEM[MEM[64]] = 1;
            }
        }
    }
    return v0;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 
    MEM[64] = 128;
    if (msg.data.length) {
        v0 = v1 = 18;
        v0 = v2 = function_selector >> 224;
        if ((v2 == 0xfa461e33) | (v2 == 0x23a69e75)) {
            v0 = v3 = 96;
            0x14(0x1f & varg4 >> 243, 0);
            MEM[224] = 0x1f & varg4 >> 243;
            if (1 == varg1 > 0) {
                MEM[128] = varg1;
                MEM[160] = 0 - varg2;
            } else {
                MEM[128] = varg2;
                MEM[160] = 0 - varg1;
            }
            v0 = v4 = 1;
            v0 = v5 = varg4 >> 232;
            v0 = v6 = 0;
            v0 = v7 = 135;
            if (v4 == v5 >> 8 & 0x7) {
                v0 = v8 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else if (2 == v5 >> 8 & 0x7) {
                v0 = v9 = 155;
                v0 = v10 = varg5 >> v3;
            }
            v11 = v12 = 15184;
            if (v5 >> 5 & v4 | v5 >> 4 & v4) {
                MEM[192] = msg.data[v0] >> 144;
                v0 = v13 = 14 + v0;
            }
            if (v5 >> 5 & v4) {
                _takerInteraction = MEM[128];
            }
            v0 = v14 = 132 + varg3;
        } else if (0x10d1e85c == v2) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0xadf38ba1 == v2) {
            takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256),bytes,bytes32,address,uint256,uint256,uint256,bytes);
        } else if (0xf04f2707 == v2) {
            receiveFlashLoan(address[],uint256[],uint256[],bytes);
        } else if (0xbe61b268 == v2) {
            sendToOwner(address,uint256);
        } else if (!v2) {
            if (block.number & 0x1f ^ msg.value & 0x1f) {
                require(0x1 & msg.value >> 27, initialize008joDSK());
            }
            0x14(msg.value >> 5 & 0x1f, 1);
            v0 = v15 = 12;
            if ((msg.value >> 21 & 0x1 == 1) & (uint64(block.coinbase.balance) == varg1 >> 192)) {
                if (msg.value >> 20 & 0x1 == 1) {
                    while (v0 < msg.data.length) {
                        if (2 == bool(msg.data[v0] >> 234)) {
                            v16 = address(msg.data[v0 + uint16(msg.data[v0] >> 199)] >> 56).getReserves().gas(msg.gas);
                        } else if (3 == bool(msg.data[v0] >> 234)) {
                            v17 = address(msg.data[v0 + uint16(msg.data[v0] >> 199)] >> 56).slot0().gas(msg.gas);
                        }
                        v0 += uint16(msg.data[v0] >> 215);
                    }
                    exit;
                } else {
                    exit;
                }
            } else {
                v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                v0 = v19 = MEM[0];
                v0 = v20 = 0;
                v0 = v21 = 0;
                v0 = v22 = 0;
                v0 = v23 = 0;
                v0 = v24 = 0;
            }
        }
        if (v0 < msg.data.length) {
            v0 = v25 = msg.gas;
            v0 = v26 = 96;
            v0 = v27 = msg.data[v0];
            v28 = v29 = v27 >> 231 & 0x3;
            v0 = v30 = 72;
            v0 = v31 = address(msg.data[v0 + uint16(v27 >> 199)] >> 56);
            if (1 == bool(v27 >> 234)) {
                if ((v31 != v0) | (MEM[128] != msg.data[v0 + 9] >> v26)) {
                    v32 = (msg.data[v0 + 9] >> v26).balanceOf(v31).gas(msg.gas);
                    MEM[128] = msg.data[v0 + 9] >> v26;
                }
                if (MEM[v26] >= uint96(msg.data[v0 + 9])) {
                    v0 = v33 = 328;
                }
            } else {
                if (2 == bool(v27 >> 234)) {
                    if (v31 - v0) {
                        v34 = v31.getReserves().gas(msg.gas);
                    }
                    if (1 == (100 * (MEM[v26] * MEM[128]) > ((msg.data[v0 + 9] >> 24 & 0x7f) + 100) * ((msg.data[v0 + 9] >> 144) * uint112(msg.data[v0 + 9] >> 32))) | (100 * ((msg.data[v0 + 9] >> 144) * uint112(msg.data[v0 + 9] >> 32)) > ((msg.data[v0 + 9] >> 24 & 0x7f) + 100) * (MEM[v26] * MEM[128]))) {
                        if (v27 >> 233 & 0x1) {
                            v28 = v35 = 2;
                        }
                        v36 = 232;
                        // Unknown jump to Block 0x3195B0xb. Refer to 3-address code (TAC);
                    } else {
                        if (!(0x1 & msg.data[v0 + 9] >> 31)) {
                            v37 = v38 = (MEM[v26] > msg.data[v0 + 9] >> 144) | (MEM[v26] == msg.data[v0 + 9] >> 144);
                        } else {
                            v37 = (MEM[128] > uint112(msg.data[v0 + 9] >> 32)) | (MEM[128] == uint112(msg.data[v0 + 9] >> 32));
                        }
                        if (v37) {
                            v0 = v39 = 304;
                        }
                    }
                } else if (3 == bool(v27 >> 234)) {
                    if (v31 - v0) {
                        v40 = v31.slot0().gas(msg.gas);
                        v41 = v31.liquidity().gas(msg.gas);
                    }
                    if (((msg.data[v0 + 29] >> 128) * 100 > MEM[160] * (100 + (0x7f & msg.data[v0 + 29] >> 120))) | (MEM[160] * 100 > (100 + (0x7f & msg.data[v0 + 29] >> 120)) * (msg.data[v0 + 29] >> 128)) == 1) {
                        if (v27 >> 233 & 0x1) {
                            v28 = v42 = 2;
                        }
                        v36 = v43 = 296;
                    } else {
                        if (!(0x1 & msg.data[v0 + 29] >> int8.max)) {
                            v44 = v45 = (MEM[v26] == msg.data[v0 + 9] >> v26) | (MEM[v26] < msg.data[v0 + 9] >> v26);
                        } else {
                            v44 = (MEM[v26] == msg.data[v0 + 9] >> v26) | (MEM[v26] > msg.data[v0 + 9] >> v26);
                        }
                        if (v44) {
                            v36 = v46 = 296;
                        }
                    }
                }
                v0 = v47 = v30 + v36;
                // Unknown jump to Block 0x2939B0xb. Refer to 3-address code (TAC);
            }
            if (v27 >> 253 & 0x3 == 2) {
                v0 = v48 = 160 + v0;
            }
            if (!v28) {
                v49 = v50 = (msg.data[v0 + (v0 >> 3)] >> 249) - 1;
                v49 = v51 = 1;
                while ((v49 < v49) | (v49 == v49)) {
                    if (MEM[v26] > msg.data[(v0 >> 3) + v0 + 3 + (v49 + v49 >> 1 << 3)] >> 222 << (msg.data[v0 + (v0 >> 3)] >> 242 & 0x7f) == 1) {
                        v49 = 1 + (v49 + v49 >> 1);
                    } else {
                        v49 = uint256.max + (v49 + v49 >> 1);
                    }
                }
                if (v49 > v50) {
                    v49 = v52 = v50 - 1;
                }
                if (v49 < 0) {
                    if (v0 <= 0) {
                        v0 += uint16(v27 >> 215);
                    }
                } else {
                    v0 = v53 = (msg.data[(v0 >> 3) + v0 + 3 + (v49 << 3)] >> 192 & 0x3fffffff) << (msg.data[v0 + (v0 >> 3)] >> 235 & 0x7f);
                    v0 = v54 = (MEM[v26] - (msg.data[(v49 << 3) + ((v0 >> 3) + v0 + 3)] >> 192 >> 30 << (msg.data[v0 + (v0 >> 3)] >> 242 & 0x7f))) * (v53 - ((msg.data[(v49 << 3) + ((v0 >> 3) + v0 + 3)] >> 192 & 0x3fffffff) << (msg.data[v0 + (v0 >> 3)] >> 235 & 0x7f))) / ((msg.data[(v0 >> 3) + v0 + 3 + (v49 << 3)] >> 192 >> 30 << (msg.data[v0 + (v0 >> 3)] >> 242 & 0x7f)) - (msg.data[(v49 << 3) + ((v0 >> 3) + v0 + 3)] >> 192 >> 30 << (msg.data[v0 + (v0 >> 3)] >> 242 & 0x7f))) + ((msg.data[(v49 << 3) + ((v0 >> 3) + v0 + 3)] >> 192 & 0x3fffffff) << (msg.data[v0 + (v0 >> 3)] >> 235 & 0x7f));
                    if (!(!(v27 >> 233 & 0x1) | (v54 < 0))) {
                    }
                    v0 = v0 + uint16(v27 >> 215);
                    v0 += v27 >> 184 & 0x7fff;
                }
            } else if (1 == v28) {
                v55 = v56 = 10 ** 18;
                v57 = v58 = 320;
                v59 = msg.data[v0 + (v0 >> 3)] >> 249;
                v60 = v0 + (v0 >> 3) + 4;
                v61 = v62 = 0;
                v57 = v63 = 0;
                while (v59 > 0) {
                    if (v0 + (msg.data[v60] >> 240 & 0x3fff) == v0 + uint16(v27 >> 199)) {
                        MEM[uint8.max + 1] = v55;
                        break;
                    } else {
                        break;
                    }
                    if (0 == uint8(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 48)) {
                        MEM[v57] = 128;
                        if (1 == ((bool(v27 >> 234) == 2) | (bool(v27 >> 234) == 3)) & (v0 + uint16(v27 >> 199) == v0 + (msg.data[v60] >> 240 & 0x3fff))) {
                            MEM[v57 + 32] = MEM[v26];
                            MEM[v57 + 64] = MEM[128];
                            MEM[v57 + 96] = MEM[160];
                        } else {
                            v64 = address(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 56).slot0().gas(msg.gas);
                            v65 = address(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 56).liquidity().gas(msg.gas);
                        }
                        if (1 == msg.data[(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - 6] >> 208 >> 47) {
                            v66 = 0xea1(v55 * MEM[v57 + 32], MEM[v57 + 32], uint192.max + 1);
                            v55 = v66 * (10 ** 6 - ((msg.data[(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - 6] >> 208 >> 27 & 0xfffff) + (msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100)) / 10 ** 6;
                            break;
                        } else {
                            v67 = 0xea1(v55, uint160.max + 1, MEM[v57 + 32]);
                            v68 = 0xea1(v67, uint32.max + 1, MEM[v57 + 32]);
                            v55 = v68 * (10 ** 6 - ((msg.data[(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - 6] >> 208 >> 27 & 0xfffff) + (msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100)) / 10 ** 6;
                            break;
                        }
                    } else if (1 == uint8(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 48)) {
                        MEM[v57] = 96;
                        if (1 == (v0 + uint16(v27 >> 199) == v0 + (msg.data[v60] >> 240 & 0x3fff)) & ((bool(v27 >> 234) == 2) | (bool(v27 >> 234) == 3))) {
                            MEM[v57 + 32] = MEM[v26];
                            MEM[v57 + 64] = MEM[128];
                        } else {
                            v69 = address(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 56).getReserves().gas(msg.gas);
                        }
                        v70 = (msg.data[(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - 2] >> 240 & 0x7fff) * 10 + (msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100;
                        if (1 == msg.data[(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - 2] >> 240 >> 15) {
                            v71 = 0xea1(MEM[v57 + 64], v55, MEM[v57 + 32]);
                            v55 = (10 ** 6 - v70) * v71 / 10 ** 6;
                            break;
                        } else {
                            v72 = 0xea1(MEM[v57 + 32], v55, MEM[v57 + 64]);
                            v55 = (10 ** 6 - v70) * v72 / 10 ** 6;
                        }
                    } else if (2 == uint8(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 48)) {
                        MEM[v57] = 96;
                        v73 = 0xdf9(v0 + (msg.data[v60] >> 240 & 0x3fff));
                        if (1 == msg.data[v73 + 208] >> uint8.max | !(msg.data[v73 + 208] >> 254 & 0x1)) {
                            v74 = v75 = msg.data[v73 + 144];
                            MEM[v57 + 32] = v75;
                            MEM[v57 + 64] = msg.data[v73 + 176];
                        } else {
                            v76 = address(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 56).remainingInvalidatorForOrder(msg.data[v73 + 64] >> 96, msg.data[v73]).gas(msg.gas);
                            if (1 == v76) {
                                v74 = v77 = MEM[v57 + 32];
                                if (1 == !v77) {
                                    MEM[v57 + 64] = 0;
                                } else {
                                    if (1 == msg.data[v73 + 240] >> uint8.max) {
                                        v78 = v79 = v73 + 246 + (0x7fff & msg.data[v73 + 240] >> 240);
                                    } else {
                                        v78 = v80 = v73 + 310;
                                    }
                                    if (1 == !(msg.data[v78 - 3] >> 232)) {
                                        v81 = v82 = (msg.data[176 + v73] * v77 + msg.data[144 + v73] - 1) / msg.data[144 + v73];
                                    } else {
                                        MEM[v57 + 96] = 0xd7ff8a8000000000000000000000000000000000000000000000000000000000;
                                        MEM[v57 + 96 + 4] = msg.data[v73 + 32];
                                        MEM[v57 + 96 + 36] = msg.data[v73 + 64] >> 96;
                                        MEM[v57 + 96 + 68] = msg.data[v73 + 84] >> 96;
                                        MEM[v57 + 96 + 100] = msg.data[v73 + 104] >> 96;
                                        MEM[v57 + 96 + 132] = msg.data[v73 + 124] >> 96;
                                        MEM[v57 + 96 + 164] = msg.data[v73 + 144];
                                        MEM[v57 + 96 + 196] = msg.data[v73 + 176];
                                        MEM[v57 + 96 + 228] = msg.data[v73 + 208];
                                        MEM[v57 + 96 + 260] = 448;
                                        CALLDATACOPY(v57 + 96 + 292, v73, 32);
                                        MEM[v57 + 96 + 324] = this;
                                        MEM[v57 + 96 + 356] = v77;
                                        MEM[v57 + 96 + 388] = v77;
                                        MEM[v57 + 96 + 420] = uint16(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - v78 + 480;
                                        MEM[v57 + 96 + 452] = uint16(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - v78;
                                        CALLDATACOPY(v57 + 96 + 484, v78, uint16(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - v78);
                                        MEM[484 + (v57 + 96 + (uint16(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - v78))] = uint32(msg.data[v78] >> 96) - uint32(msg.data[v78] >> 64) - 20;
                                        CALLDATACOPY(32 + (v57 + 96 + (uint16(msg.data[v0 + (msg.data[v60] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v60] >> 240 & 0x3fff)) - v78)) + 484, v78 + 32 + uint32(msg.data[v78] >> 64) + 20, uint32(msg.data[v78] >> 96) - uint32(msg.data[v78] >> 64) - 20);
                                        v83 = (msg.data[v78 + 32 + uint32(msg.data[v78] >> 64)] >> 96).staticcall(MEM[v24f2_0x2V0x2defV0xb + 96:v24f2_0x2V0x2defV0xb + 96 + 12 + uint32(msg.data[v2177_0x1V0x247fV0x2defV0xb] >> 96) - uint32(msg.data[v2177_0x1V0x247fV0x2defV0xb] >> 64) + 484 + uint16(msg.data[v230c_0xbV0x2c1eV0xb + msg.data[v22feV0x2defV0xb] >> 240 & 0x3fff] >> 240) + v230c_0xbV0x2c1eV0xb + msg.data[v22feV0x2defV0xb] >> 240 & 0x3fff - v2177_0x1V0x247fV0x2defV0xb], MEM[0:32]).gas(msg.gas);
                                        v81 = MEM[0];
                                    }
                                    MEM[v57 + 64] = v81;
                                }
                            } else {
                                v74 = msg.data[v73 + 144];
                                MEM[v57 + 32] = v74;
                                MEM[v57 + 64] = msg.data[v73 + 176];
                            }
                        }
                        if (msg.data[v60] >> uint8.max) {
                            v61 = v61 + v74;
                            break;
                        } else {
                            break;
                        }
                        if (msg.data[v60] >> 254 & 0x1) {
                            v55 = 0xea1(v55, msg.data[v73 + 144], msg.data[v73 + 176]);
                            break;
                        } else {
                            break;
                        }
                        break;
                    } else {
                        break;
                    }
                    v60 = v60 + 2;
                    v57 += MEM[v57];
                    v59 = v59 - 1;
                    continue;
                    break;
                }
                MEM[288] = v57 - v26 - 192;
                MEM[192] = v61;
                MEM[224] = v55;
                MEM[0] = v57;
                v84 = msg.data[v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)) - 3];
                v85 = v86 = (v84 >> 249) - 1;
                v87 = v88 = 0;
                while ((v87 < v85) | (v87 == v85)) {
                    if (1 == msg.data[v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)) + (v85 + v87 >> 1 << 3)] >> 192 >> 30 << (v84 >> 242 & 0x7f) < v55) {
                        v87 = 1 + (v85 + v87 >> 1);
                    } else {
                        v85 = uint256.max + (v85 + v87 >> 1);
                    }
                }
                if (v85 < 0) {
                    if (v0 <= 0) {
                        v0 += uint16(v27 >> 215);
                    }
                } else if (1 == (v87 > v86) & (v27 >> 233 & 0x1)) {
                    v28 = v89 = 2;
                    MEM[v26] = v0;
                } else {
                    v0 = v90 = (msg.data[v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)) + (v87 << 3)] >> 192 & 0x3fffffff) << (v84 >> 235 & 0x7f);
                    v0 = v91 = (v55 - (msg.data[(v85 << 3) + (v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)))] >> 192 >> 30 << (v84 >> 242 & 0x7f))) * (v90 - ((msg.data[(v85 << 3) + (v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)))] >> 192 & 0x3fffffff) << (v84 >> 235 & 0x7f))) / ((msg.data[v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)) + (v87 << 3)] >> 192 >> 30 << (v84 >> 242 & 0x7f)) - (msg.data[(v85 << 3) + (v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)))] >> 192 >> 30 << (v84 >> 242 & 0x7f))) + ((msg.data[(v85 << 3) + (v0 + (v0 >> 3) + (9 + ((msg.data[v0 + (v0 >> 3)] >> 249) - 1 << 1)))] >> 192 & 0x3fffffff) << (v84 >> 235 & 0x7f));
                    if (!(!(v27 >> 233 & 0x1) | (v91 < 0))) {
                    }
                    if (0x1 & v84 >> 248) {
                        v0 = v92 = MEM[192];
                        if (v92 >= v0) {
                        }
                    }
                    v0 = v0 + uint16(v27 >> 215);
                    v0 += 0x7fff & v27 >> 184;
                }
            } else if (3 == v28) {
                v0 = v0 + uint16(v27 >> 215);
                v0 = v93 = msg.data[v0 + (v0 >> 3)] >> 144;
                v0 = v0 + (v27 >> 184 & 0x7fff);
            }
            if (2 == v28) {
                if (1 == (MEM[v26] == v0)) {
                    v0 = v94 = MEM[224];
                } else {
                    v0 = v95 = 10 ** 18;
                    v96 = v97 = 320;
                    v98 = msg.data[v0 + (v0 >> 3)] >> 249;
                    v99 = v0 + (v0 >> 3) + 4;
                    v100 = v101 = 0;
                    v96 = v102 = 0;
                    while (v98 > 0) {
                        if (v0 + (msg.data[v99] >> 240 & 0x3fff) == v0 + uint16(v27 >> 199)) {
                            MEM[uint8.max + 1] = v0;
                            break;
                        } else {
                            break;
                        }
                        if (0 == uint8(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 48)) {
                            MEM[v96] = 128;
                            if (1 == ((bool(v27 >> 234) == 2) | (bool(v27 >> 234) == 3)) & (v0 + uint16(v27 >> 199) == v0 + (msg.data[v99] >> 240 & 0x3fff))) {
                                MEM[v96 + 32] = MEM[v26];
                                MEM[v96 + 64] = MEM[128];
                                MEM[v96 + 96] = MEM[160];
                            } else {
                                v103 = address(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 56).slot0().gas(msg.gas);
                                v104 = address(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 56).liquidity().gas(msg.gas);
                            }
                            if (1 == msg.data[(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - 6] >> 208 >> 47) {
                                v105 = 0xea1(v0 * MEM[v96 + 32], MEM[v96 + 32], uint192.max + 1);
                                v0 = v105 * (10 ** 6 - ((msg.data[(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - 6] >> 208 >> 27 & 0xfffff) + (msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100)) / 10 ** 6;
                                break;
                            } else {
                                v106 = 0xea1(v0, uint160.max + 1, MEM[v96 + 32]);
                                v107 = 0xea1(v106, uint32.max + 1, MEM[v96 + 32]);
                                v0 = v107 * (10 ** 6 - ((msg.data[(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - 6] >> 208 >> 27 & 0xfffff) + (msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100)) / 10 ** 6;
                                break;
                            }
                        } else if (1 == uint8(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 48)) {
                            MEM[v96] = 96;
                            if (1 == (v0 + uint16(v27 >> 199) == v0 + (msg.data[v99] >> 240 & 0x3fff)) & ((bool(v27 >> 234) == 2) | (bool(v27 >> 234) == 3))) {
                                MEM[v96 + 32] = MEM[v26];
                                MEM[v96 + 64] = MEM[128];
                            } else {
                                v108 = address(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 56).getReserves().gas(msg.gas);
                            }
                            v109 = (msg.data[(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - 2] >> 240 & 0x7fff) * 10 + (msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 26 & 0x3fff) * 100;
                            if (1 == msg.data[(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - 2] >> 240 >> 15) {
                                v110 = 0xea1(MEM[v96 + 64], v0, MEM[v96 + 32]);
                                v0 = (10 ** 6 - v109) * v110 / 10 ** 6;
                                break;
                            } else {
                                v111 = 0xea1(MEM[v96 + 32], v0, MEM[v96 + 64]);
                                v0 = (10 ** 6 - v109) * v111 / 10 ** 6;
                            }
                        } else if (2 == uint8(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 48)) {
                            MEM[v96] = 96;
                            v112 = 0xdf9(v0 + (msg.data[v99] >> 240 & 0x3fff));
                            if (1 == msg.data[v112 + 208] >> uint8.max | !(msg.data[v112 + 208] >> 254 & 0x1)) {
                                v113 = v114 = msg.data[v112 + 144];
                                MEM[v96 + 32] = v114;
                                MEM[v96 + 64] = msg.data[v112 + 176];
                            } else {
                                v115 = address(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 56).remainingInvalidatorForOrder(msg.data[v112 + 64] >> 96, msg.data[v112]).gas(msg.gas);
                                if (1 == v115) {
                                    v113 = v116 = MEM[v96 + 32];
                                    if (1 == !v116) {
                                        MEM[v96 + 64] = 0;
                                    } else {
                                        if (1 == msg.data[v112 + 240] >> uint8.max) {
                                            v117 = v118 = v112 + 246 + (0x7fff & msg.data[v112 + 240] >> 240);
                                        } else {
                                            v117 = v119 = v112 + 310;
                                        }
                                        if (1 == !(msg.data[v117 - 3] >> 232)) {
                                            v120 = v121 = (msg.data[176 + v112] * v116 + msg.data[144 + v112] - 1) / msg.data[144 + v112];
                                        } else {
                                            MEM[v96 + 96] = 0xd7ff8a8000000000000000000000000000000000000000000000000000000000;
                                            MEM[v96 + 96 + 4] = msg.data[v112 + 32];
                                            MEM[v96 + 96 + 36] = msg.data[v112 + 64] >> 96;
                                            MEM[v96 + 96 + 68] = msg.data[v112 + 84] >> 96;
                                            MEM[v96 + 96 + 100] = msg.data[v112 + 104] >> 96;
                                            MEM[v96 + 96 + 132] = msg.data[v112 + 124] >> 96;
                                            MEM[v96 + 96 + 164] = msg.data[v112 + 144];
                                            MEM[v96 + 96 + 196] = msg.data[v112 + 176];
                                            MEM[v96 + 96 + 228] = msg.data[v112 + 208];
                                            MEM[v96 + 96 + 260] = 448;
                                            CALLDATACOPY(v96 + 96 + 292, v112, 32);
                                            MEM[v96 + 96 + 324] = this;
                                            MEM[v96 + 96 + 356] = v116;
                                            MEM[v96 + 96 + 388] = v116;
                                            MEM[v96 + 96 + 420] = uint16(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - v117 + 480;
                                            MEM[v96 + 96 + 452] = uint16(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - v117;
                                            CALLDATACOPY(v96 + 96 + 484, v117, uint16(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - v117);
                                            MEM[484 + (v96 + 96 + (uint16(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - v117))] = uint32(msg.data[v117] >> 96) - uint32(msg.data[v117] >> 64) - 20;
                                            CALLDATACOPY(32 + (v96 + 96 + (uint16(msg.data[v0 + (msg.data[v99] >> 240 & 0x3fff)] >> 240) + (v0 + (msg.data[v99] >> 240 & 0x3fff)) - v117)) + 484, v117 + 32 + uint32(msg.data[v117] >> 64) + 20, uint32(msg.data[v117] >> 96) - uint32(msg.data[v117] >> 64) - 20);
                                            v122 = (msg.data[v117 + 32 + uint32(msg.data[v117] >> 64)] >> 96).staticcall(MEM[v24f2_0x2V0x2c1eV0xb + 96:v24f2_0x2V0x2c1eV0xb + 96 + 12 + uint32(msg.data[v2177_0x1V0x247fV0x2c1eV0xb] >> 96) - uint32(msg.data[v2177_0x1V0x247fV0x2c1eV0xb] >> 64) + 484 + uint16(msg.data[v230c_0xbV0x2c1eV0xb + msg.data[v22feV0x2c1eV0xb] >> 240 & 0x3fff] >> 240) + v230c_0xbV0x2c1eV0xb + msg.data[v22feV0x2c1eV0xb] >> 240 & 0x3fff - v2177_0x1V0x247fV0x2c1eV0xb], MEM[0:32]).gas(msg.gas);
                                            v120 = MEM[0];
                                        }
                                        MEM[v96 + 64] = v120;
                                    }
                                } else {
                                    v113 = msg.data[v112 + 144];
                                    MEM[v96 + 32] = v113;
                                    MEM[v96 + 64] = msg.data[v112 + 176];
                                }
                            }
                            if (msg.data[v99] >> uint8.max) {
                                v100 = v100 + v113;
                                break;
                            } else {
                                break;
                            }
                            if (msg.data[v99] >> 254 & 0x1) {
                                v0 = 0xea1(v0, msg.data[v112 + 144], msg.data[v112 + 176]);
                                break;
                            } else {
                                break;
                            }
                            break;
                        } else {
                            break;
                        }
                        v99 = v99 + 2;
                        v96 += MEM[v96];
                        v98 = v98 - 1;
                        continue;
                        break;
                    }
                    MEM[288] = v96 - v26 - 192;
                    MEM[192] = v100;
                    MEM[224] = v0;
                    MEM[0] = v96;
                }
                if (v0 < 0xde111a6b7de4000) {
                    if (v0 <= 0) {
                        v0 += uint16(v27 >> 215);
                    }
                } else {
                    v0 = v123 = MEM[288] + 288;
                    MEM[v123] = 0;
                    if (1 == 0x1 & msg.data[v0 + (v0 >> 3)] >> 248) {
                        v0 = v124 = MEM[192];
                    } else {
                        v0 = v125 = 11463;
                        v0 = v126 = 11449;
                        v0 = v127 = 10 ** 18;
                        v0 = v128 = (v0 - v127) * (0x7f & msg.data[v0 + (v0 >> 3)] >> 225) / 100 + v127;
                        v0 = v129 = MEM[0];
                        v130 = uint16(v27 >> 199) + v0;
                        v130 = 0x13fa(v130, v129, v123, v128);
                        if (!uint8(msg.data[v130] >> 48)) {
                            // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                        } else if (1 == uint8(msg.data[v130] >> 48)) {
                            // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                        } else {
                            // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                        }
                        v0 = 0xea1(v0 * v130 / MEM[160 + v0], v0, v0);
                        if (v0 < 0) {
                            v0 = 10 ** 18 * v0 / MEM[160 + v0] * 100;
                        }
                    }
                    v0 = v131 = 1 << uint8(msg.data[v0 + (v0 >> 3)] >> 240);
                    if (v131 > v0) {
                        if (v0 <= 0) {
                            v0 += uint16(v0 >> 215);
                        }
                    } else {
                        v0 = v132 = 11521;
                        v0 += 224;
                        v0 = v0 + (v0 >> 3);
                        v0 = 0xf5e(v131, v0, v0, v0, v0, v0, v0);
                        v133 = (1 << uint8(msg.data[v0] >> 232)) * 10 ** 18 / (v0 - 10 ** 18);
                        v133 = v134 = v0 - v0 >> 20;
                        if (v133 >= v134) {
                        }
                        if (v133 >= 1000) {
                        }
                        // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                        if (!v0) {
                            if (v0 > 0) {
                                // Unknown jump to Block 0x2d45B0xb. Refer to 3-address code (TAC);
                            }
                        } else {
                            v0 = v0 + uint16(v0 >> 215);
                            v0 = v135 = (0x7fff & v0 >> 184) + v0;
                        }
                    }
                }
            }
            v0 = v136 = 0;
            MEM[64] = msg.value;
            if (0 == v0 >> 253 & 0x3) {
                v11 = v137 = 11181;
                MEM[v0] = v0;
                MEM[v0 + 32] = 0;
                MEM[v0 + 64] = 0;
                if (1 == 0x1 & msg.data[v0] >> 17) {
                    v138 = 0xdf9(v0);
                    v139 = (msg.data[v138 - 20] >> v0).balanceOf(this).gas(msg.gas);
                } else {
                    MEM[v0 + v0] = v0;
                }
                MEM[v0 + 128] = MEM[64] >> 5 & 0x1f;
            } else {
                v0 = v140 = 0;
                MEM[v140] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
                MEM[4] = this;
                MEM[36] = 128;
                MEM[68] = 192;
                MEM[100] = uint8.max + 1;
                MEM[132] = 1;
                if (1 == 0x1 & msg.data[v0] >> 17) {
                    v0 = v141 = 20;
                    v0 = v142 = 11109;
                    v0 = v143 = 0xdf9(v0);
                    v144 = v145 = v0 + 30;
                    if (uint8(msg.data[v0] >> 48) == uint8.max) {
                        v144 = v146 = 20 + v145;
                    }
                    if (msg.data[v0] >> 24 & 0x3 != 3) {
                    }
                    if (!((msg.data[v0] >> 21 & 0x7 == 2) | (msg.data[v0] >> 21 & 0x7 == 4) | 0x1 & msg.data[v0] >> 221)) {
                    }
                    if (!(0x1 & msg.data[v0] >> 220)) {
                    }
                    if (!((msg.data[v0] >> 19 & 0x3 == 2) | (msg.data[v0] >> 19 & 0x3 == 3))) {
                    }
                    if (0x1 & msg.data[v0] >> 17) {
                        // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                    } else {
                        // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
                    }
                    MEM[164] = msg.data[v0 - v0] >> v0;
                } else {
                    MEM[164] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
                MEM[196] = 1;
                MEM[228] = v0;
                MEM[260] = 12 + (v0 - v0);
                MEM[292] = ((0x1 & msg.value >> 27) << uint8.max) + ((msg.value >> 5 & 0x1f) << 248) + (v0 << 160);
                CALLDATACOPY(304, v0, v0 - v0);
                v147 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[v230c_0xbV0x2c1eV0xb:v230c_0xbV0x2c1eV0xb + 304 + v230c_0xbV0x2c1eV0xb - v230c_0xbV0x2c1eV0xb], MEM[v230c_0xbV0x2c1eV0xb:v230c_0xbV0x2c1eV0xb + v2985V0xb]).value(v0).gas(msg.gas);
                if (0x1 & msg.value >> 27 & v147) {
                    v0 += 1;
                }
            }
            if (v0 <= 0) {
                v0 += uint16(v27 >> 215);
            }
            if (v0 >> uint8.max) {
            }
            v0 += uint16(v0 >> 215);
        }
        require(!(0x1 & msg.value >> 27), matchTokenOrderByAdmin_MYmNxE(v0, 10 ** 6 * (0x1f & msg.value >> 28) - msg.gas, v0 - v0));
        require(v0 >= v0 + (10 ** 6 * (0x1f & msg.value >> 28) - msg.gas) * msg.gas);
        if ((v0 > 0) & (v0 > v0 + (msg.value >> 10 & 0x3f) * 0xe35fa931a000 + (10 ** 6 * (0x1f & msg.value >> 28) - msg.gas) * msg.gas + v0)) {
            if (this.balance < v0) {
                v148 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(uint256.max + v0).gas(msg.gas);
            }
            v149 = block.coinbase.call().value(v0).gas(msg.gas);
            // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
        } else {
            // Unknown jump to Block 0x12. Refer to 3-address code (TAC);
        }
        // Unknown jump to Block 0x27e1B0xb. Refer to 3-address code (TAC);
        v150 = 0;
        v151 = v152 = v0 + 160;
        v153 = msg.sender;
        while (v0 < v0) {
            v154 = msg.data[v0];
            v153 = v155 = 0;
            if (0 == 0x7 & v154 >> 24) {
                v153 = v156 = this;
                break;
            } else if (1 == 0x7 & v154 >> 24) {
                break;
            } else if (2 == 0x7 & v154 >> 24) {
                v157 = v0 + (v154 >> 240);
                while (v157 < v0) {
                    if (!(0x1 & msg.data[v157] >> 216)) {
                        break;
                    } else {
                        v157 += msg.data[v157] >> 240;
                    }
                }
                v153 = v158 = msg.data[5 + v157] >> 96;
                break;
            } else if (4 == 0x7 & v154 >> 24) {
                v153 = v159 = msg.sender;
                break;
            } else {
                break;
            }
            if (0 == 0x3 & v154 >> 222) {
                v160 = v161 = MEM[v0];
                break;
            } else if (1 == 0x3 & v154 >> 222) {
                v160 = v162 = MEM[v0 + 32];
                break;
            } else if (2 == 0x3 & v154 >> 222) {
                v160 = v163 = MEM[v0 + 64];
                break;
            } else {
                MEM[v151] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                MEM[v151 + 4] = this;
                v164 = 0xdf9(v0);
                v165 = (msg.data[v164 - 20] >> 96).staticcall(MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + 36], MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + 32]).gas(msg.gas);
                v160 = v166 = MEM[v151] - MEM[v0 + 96];
                if (0x1 & v154 >> 16) {
                    v160 = v167 = v166 - _takerInteraction;
                    break;
                } else {
                    break;
                }
                require(v160 >= 0, unknowneR__8w03R());
                break;
            }
            v153 = v168 = address(v154 >> 56);
            if (0 == uint8(v154 >> 48)) {
                if (!v153) {
                    v153 = v169 = msg.data[v0 + 30];
                    break;
                } else {
                    break;
                }
                MEM[v151] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v151 + 4] = v153;
                v170 = 0xdf9(v0);
                MEM[v151 + 36] = msg.data[v170] >> uint8.max;
                if (0 == 0x1 & v154 >> 219) {
                    MEM[v151 + 68] = v160;
                } else {
                    MEM[v151 + 68] = 0 - v160;
                }
                if (1 == msg.data[v170] >> uint8.max) {
                    MEM[v151 + 100] = 0x1000276a4;
                } else {
                    MEM[v151 + 100] = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM[v151 + 132] = 160;
                v171 = 3 + (v151 + 196);
                v172 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                if (0) {
                    v172 = v173 = 4 + v172;
                    break;
                } else {
                    break;
                }
                if (0) {
                    v172 = v174 = 2 + v172;
                    break;
                } else {
                    break;
                }
                if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                    v172 = v175 = 0xffffdf & v172;
                    break;
                } else {
                    break;
                }
                MEM[v151 + 196] = v172 << 232;
                if (0) {
                    MEM[v171] = 0;
                    v171 = v176 = v171 + 14;
                    break;
                } else {
                    break;
                }
                v177 = 30 + v0;
                if (uint8.max == uint8(msg.data[v0] >> 48)) {
                    v177 = v178 = 20 + v177;
                    break;
                } else {
                    break;
                }
                if (3 == 0x7 & msg.data[v0] >> 24) {
                    v177 = v179 = 20 + v177;
                    break;
                } else {
                    break;
                }
                if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                        MEM[v171] = msg.data[v177];
                        v171 = v180 = v171 + 20;
                        break;
                    } else {
                        break;
                    }
                    v177 = v181 = 20 + v177;
                    break;
                } else {
                    break;
                }
                if (0x1 & msg.data[v0] >> 220) {
                    v177 = v182 = 20 + v177;
                    break;
                } else {
                    break;
                }
                if (2 == 0x3 & msg.data[v0] >> 19) {
                    MEM[v171] = msg.data[v177];
                    v171 = v183 = 20 + v171;
                    break;
                } else if (3 == 0x3 & msg.data[v0] >> 19) {
                    break;
                } else {
                    break;
                }
                if (0x1 & v172 >> 5 | 0x1 & v172 >> 4) {
                    MEM[v171] = MEM[v0 + 96] << 144;
                    v171 = v184 = v171 + 14;
                    break;
                } else {
                    break;
                }
                if (0) {
                    MEM[v171] = 0;
                    MEM[v171 + 14] = 0;
                    v171 = v185 = v171 + 28;
                    break;
                } else {
                    break;
                }
                MEM8[v151 + 196] = v171 - (v151 + 196) & 0xFF;
                MEM[v151 + 164] = (MEM[v151 + 196] >> 248) + (uint16(v154 >> 224) - (v154 >> 240));
                CALLDATACOPY(v171, v0 + (v154 >> 240), uint16(v154 >> 224) - (v154 >> 240));
                v150 = v186 = v168.call(MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + vebV0xcc70x26ffV0xb + uint16(v26ff0x2cfV0xb >> 224) - v26ff0x2cfV0xb >> 240 - vd240x26ff_0x5V0xb], MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + 64]).gas(msg.gas);
                if (1 == msg.data[v170] >> uint8.max) {
                    MEM[v0] = MEM[v151 + 32];
                } else {
                    MEM[v0] = MEM[v151];
                }
                if (MEM[v0] < 0) {
                    MEM[v0] = 0 - MEM[v0];
                    break;
                } else {
                    break;
                }
            } else if (1 == uint8(v154 >> 48)) {
                v187 = v0 + 30;
                if (!v153) {
                    v153 = v188 = msg.data[v187];
                    v187 = v189 = v187 + 20;
                    break;
                } else {
                    break;
                }
                v190 = v168.getReserves().gas(msg.gas);
                v160 = v191 = 0;
                v192 = 0xdf9(v0);
                if (0x1 & v154 >> 219) {
                    if (1 == msg.data[v192] >> uint8.max) {
                        v160 = v193 = 0x186a0 * (MEM[v151] * v160) / ((0x186a0 - (0x7fff & msg.data[v192] >> 240)) * (MEM[v151 + 32] - v160)) + 1;
                        break;
                    } else {
                        v160 = 0x186a0 * (MEM[v151 + 32] * v160) / ((0x186a0 - (0x7fff & msg.data[v192] >> 240)) * (MEM[v151] - v160)) + 1;
                    }
                    break;
                } else {
                    break;
                }
                if (((1 == 0x7 & v154 >> 21) | (2 == 0x7 & v154 >> 21)) & (0x3 & v154 >> 19 == 1)) {
                    v194 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (2 == 0x7 & v154 >> 21) {
                        v194 = v195 = msg.data[v187] >> 96;
                        break;
                    } else {
                        break;
                    }
                    MEM[v151] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v151 + 4] = v168;
                    MEM[v151 + 36] = v160;
                    v196 = v194.call(MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + 68], MEM[0:0]).gas(msg.gas);
                    break;
                } else {
                    break;
                }
                if (0x1 & v154 >> 221) {
                    v197 = (msg.data[v187] >> 96).balanceOf(v168).gas(msg.gas);
                    if (1 == msg.data[v192] >> uint8.max) {
                        v160 = v198 = MEM[0] - MEM[v151];
                        break;
                    } else {
                        v160 = v199 = MEM[0] - MEM[v151 + 32];
                        break;
                    }
                } else {
                    break;
                }
                if ((2 == 0x7 & v154 >> 21) | 0x1 & v154 >> 221) {
                    v187 = v200 = 20 + v187;
                    break;
                } else {
                    break;
                }
                if (!(0x1 & v154 >> 219)) {
                    if (1 == msg.data[v192] >> uint8.max) {
                        v160 = v201 = v160 * (0x186a0 - (0x7fff & msg.data[v192] >> 240)) * MEM[v151 + 32] / (MEM[v151] * 0x186a0 + v160 * (0x186a0 - (0x7fff & msg.data[v192] >> 240)));
                        break;
                    } else {
                        v160 = v202 = v160 * (0x186a0 - (0x7fff & msg.data[v192] >> 240)) * MEM[v151] / (MEM[v151 + 32] * 0x186a0 + v160 * (0x186a0 - (0x7fff & msg.data[v192] >> 240)));
                    }
                    break;
                } else {
                    break;
                }
                MEM[v151] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                if (1 == msg.data[v192] >> uint8.max) {
                    MEM[v151 + 4] = 0;
                    MEM[v151 + 36] = v160;
                } else {
                    MEM[v151 + 4] = v160;
                    MEM[v151 + 36] = 0;
                }
                MEM[v151 + 68] = v153;
                MEM[v151 + 100] = 128;
                v203 = v204 = 164;
                if (uint8(v154 >> 224) - (v154 >> 240)) {
                    v205 = 3 + (v151 + v204);
                    v206 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                    if (MEM[v0]) {
                        v206 = v207 = 4 + v206;
                        break;
                    } else {
                        break;
                    }
                    if (0) {
                        v206 = v208 = 2 + v206;
                        break;
                    } else {
                        break;
                    }
                    if (False & (0x0 & (0x1 & msg.data[v0] >> 18))) {
                        v206 = v209 = 0xffffdf & v206;
                        break;
                    } else {
                        break;
                    }
                    MEM[v151 + v204] = v206 << 232;
                    if (MEM[v0]) {
                        MEM[v205] = MEM[v0] << 144;
                        v205 = v205 + 14;
                        break;
                    } else {
                        break;
                    }
                    v210 = 30 + v0;
                    if (uint8.max == uint8(msg.data[v0] >> 48)) {
                        v210 = v211 = 20 + v210;
                        break;
                    } else {
                        break;
                    }
                    if (3 == 0x7 & msg.data[v0] >> 24) {
                        v210 = v212 = 20 + v210;
                        break;
                    } else {
                        break;
                    }
                    if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                            MEM[v205] = msg.data[v210];
                            v205 = v205 + 20;
                            break;
                        } else {
                            break;
                        }
                        v210 = v213 = 20 + v210;
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & msg.data[v0] >> 220) {
                        v210 = v214 = 20 + v210;
                        break;
                    } else {
                        break;
                    }
                    if (2 == 0x3 & msg.data[v0] >> 19) {
                        MEM[v205] = msg.data[v210];
                        v205 += 20;
                        break;
                    } else if (3 == 0x3 & msg.data[v0] >> 19) {
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v206 >> 5 | 0x1 & v206 >> 4) {
                        MEM[v205] = MEM[v0 + 96] << 144;
                        v205 = v205 + 14;
                        break;
                    } else {
                        break;
                    }
                    if (0) {
                        MEM[v205] = 0;
                        MEM[v205 + 14] = 0;
                        v205 = v205 + 28;
                        break;
                    } else {
                        break;
                    }
                    MEM8[v151 + v204] = v205 - (v151 + v204) & 0xFF;
                    CALLDATACOPY(v205, v0 + (v154 >> 240), uint8(v154 >> 224) - (v154 >> 240));
                    v203 = v205 - v151 + (uint8(v154 >> 224) - (v154 >> 240));
                    break;
                } else {
                    break;
                }
                MEM[v151 + 132] = v203 - 164;
                if (1 == 0x1 & v154 >> 218) {
                    v215 = 0;
                    if (0x1 & v154 >> 220 & (v153 == this)) {
                        v216 = (msg.data[v187] >> 96).balanceOf(v153).gas(msg.gas);
                        v215 = v217 = MEM[0];
                        break;
                    } else {
                        break;
                    }
                    v150 = v218 = v168.call(MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + v9bf0x26ff_0x3V0xb], MEM[0:0]).gas(msg.gas);
                    if (0x1 & v154 >> 220 & (v153 == this)) {
                        v219 = (msg.data[v187] >> 96).balanceOf(v153).gas(msg.gas);
                        v160 = v220 = MEM[0] - v215;
                        break;
                    } else {
                        break;
                    }
                } else {
                    MEM[v151 + v203] = (v168 << 16) + (32 + v203);
                    v151 = 32 + (v151 + v203);
                }
                if (0 == 0x1 & v154 >> 219) {
                    MEM[v0] = v160;
                    break;
                } else {
                    MEM[v0] = v160;
                    break;
                }
            } else if (2 == uint8(v154 >> 48)) {
                v221 = v0 + 30;
                if (!v153) {
                    v221 = v222 = v221 + 20;
                    v153 = v223 = msg.data[v221];
                    break;
                } else {
                    break;
                }
                if (4 == 0x7 & v154 >> 21) {
                    v221 = v224 = 20 + v221;
                    break;
                } else {
                    break;
                }
                if (!v160) {
                    v0 += v154 >> 240;
                } else {
                    v225 = 0xdf9(v0);
                    v226 = 0;
                    if (1 == msg.data[v225 + 240] >> uint8.max) {
                        MEM[v151] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
                        MEM[v151 + 4] = msg.data[v225 + 32];
                        MEM[v151 + 36] = msg.data[v225 + 64] >> 96;
                        MEM[v151 + 68] = msg.data[v225 + 84] >> 96;
                        MEM[v151 + 100] = msg.data[v225 + 104] >> 96;
                        MEM[v151 + 132] = msg.data[v225 + 124] >> 96;
                        MEM[v151 + 164] = msg.data[v225 + 144];
                        MEM[v151 + 196] = msg.data[v225 + 176];
                        MEM[v151 + 228] = msg.data[v225 + 208];
                        MEM[v151 + 260] = 384;
                        MEM[v151 + 292] = v160;
                        MEM[v151 + 388] = 0x7fff & msg.data[v225 + 240] >> 240;
                        CALLDATACOPY(v151 + 420, v225 + 242, 0x7fff & msg.data[v225 + 240] >> 240);
                        v227 = v151 + 420 + (0x7fff & msg.data[v225 + 240] >> 240);
                        MEM[v151 + 356] = v227 - (v151 + 4);
                        if (0x1 & msg.data[242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225] >> 251) {
                            MEM[v227] = v153 << 96;
                            v227 = v228 = v227 + 20;
                            break;
                        } else {
                            break;
                        }
                        if (uint24(msg.data[242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225] >> 224)) {
                            CALLDATACOPY(v227, 242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225 + 4, uint24(msg.data[242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225] >> 224));
                            v227 = v229 = v227 + uint24(msg.data[242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225] >> 224);
                            break;
                        } else {
                            break;
                        }
                        MEM[v227] = this << 96;
                        v230 = 3 + (v227 + 20);
                        v231 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                        if (v160) {
                            v231 = v232 = 4 + v231;
                            break;
                        } else {
                            break;
                        }
                        if (1) {
                            v231 = v233 = 2 + v231;
                            break;
                        } else {
                            break;
                        }
                        if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                            v231 = v234 = 0xffffdf & v231;
                            break;
                        } else {
                            break;
                        }
                        MEM[v227 + 20] = v231 << 232;
                        if (v160) {
                            MEM[v230] = v160 << 144;
                            v230 = v235 = v230 + 14;
                            break;
                        } else {
                            break;
                        }
                        v236 = 30 + v0;
                        if (uint8.max == uint8(msg.data[v0] >> 48)) {
                            v236 = v237 = 20 + v236;
                            break;
                        } else {
                            break;
                        }
                        if (3 == 0x7 & msg.data[v0] >> 24) {
                            v236 = v238 = 20 + v236;
                            break;
                        } else {
                            break;
                        }
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                            if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                                MEM[v230] = msg.data[v236];
                                v230 = v239 = v230 + 20;
                                break;
                            } else {
                                break;
                            }
                            v236 = v240 = 20 + v236;
                            break;
                        } else {
                            break;
                        }
                        if (0x1 & msg.data[v0] >> 220) {
                            v236 = v241 = 20 + v236;
                            break;
                        } else {
                            break;
                        }
                        if (2 == 0x3 & msg.data[v0] >> 19) {
                            MEM[v230] = msg.data[v236];
                            v230 = v242 = 20 + v230;
                            break;
                        } else if (3 == 0x3 & msg.data[v0] >> 19) {
                            break;
                        } else {
                            break;
                        }
                        if (0x1 & v231 >> 5 | 0x1 & v231 >> 4) {
                            MEM[v230] = MEM[v0 + 96] << 144;
                            v230 = v243 = v230 + 14;
                            break;
                        } else {
                            break;
                        }
                        if (1) {
                            MEM[v230] = MEM[v0 + 32] << 144;
                            MEM[v230 + 14] = MEM[v0 + 64] << 144;
                            v230 = v244 = v230 + 28;
                            break;
                        } else {
                            break;
                        }
                        MEM8[v227 + 20] = v230 - (v227 + 20) & 0xFF;
                        CALLDATACOPY(v230, v0 + (v154 >> 240), uint16(v154 >> 224) - (v154 >> 240));
                        v226 = v245 = uint16(v154 >> 224) - (v154 >> 240) + v230;
                        MEM[v151 + 324] = bytes4(msg.data[242 + (0x7fff & msg.data[v225 + 240] >> 240) + v225]) + (v245 - v227 << 200) << 200;
                        MEM[v227] = v245 - (v227 + 32);
                        break;
                    } else if (!(msg.data[v225 + 240] >> uint8.max)) {
                        MEM[v151] = 0xf497df7500000000000000000000000000000000000000000000000000000000;
                        MEM[v151 + 4] = msg.data[v225 + 32];
                        MEM[v151 + 36] = msg.data[v225 + 64] >> 96;
                        MEM[v151 + 68] = msg.data[v225 + 84] >> 96;
                        MEM[v151 + 100] = msg.data[v225 + 104] >> 96;
                        MEM[v151 + 132] = msg.data[v225 + 124] >> 96;
                        MEM[v151 + 164] = msg.data[v225 + 144];
                        MEM[v151 + 196] = msg.data[v225 + 176];
                        MEM[v151 + 228] = msg.data[v225 + 208];
                        MEM[v151 + 260] = msg.data[v225 + 242];
                        MEM[v151 + 292] = msg.data[v225 + 274];
                        MEM[v151 + 324] = v160;
                        MEM[v151 + 388] = 416;
                        v246 = v151 + 452;
                        if (0x1 & msg.data[306 + v225] >> 251) {
                            MEM[v246] = v153 << 96;
                            v246 = v247 = v246 + 20;
                            break;
                        } else {
                            break;
                        }
                        if (uint24(msg.data[306 + v225] >> 224)) {
                            CALLDATACOPY(v246, 306 + v225 + 4, uint24(msg.data[306 + v225] >> 224));
                            v246 = v248 = v246 + uint24(msg.data[306 + v225] >> 224);
                            break;
                        } else {
                            break;
                        }
                        MEM[v246] = this << 96;
                        v249 = 3 + (v246 + 20);
                        v250 = (uint8(msg.data[v0] >> 16) << 3) + (MEM[v0 + 128] << 11);
                        if (v160) {
                            v250 = v251 = 4 + v250;
                            break;
                        } else {
                            break;
                        }
                        if (1) {
                            v250 = v252 = 2 + v250;
                            break;
                        } else {
                            break;
                        }
                        if (bool(MEM[v0 + 64]) & (0x1 & (0x1 & msg.data[v0] >> 18))) {
                            v250 = v253 = 0xffffdf & v250;
                            break;
                        } else {
                            break;
                        }
                        MEM[v246 + 20] = v250 << 232;
                        if (v160) {
                            MEM[v249] = v160 << 144;
                            v249 = v254 = v249 + 14;
                            break;
                        } else {
                            break;
                        }
                        v255 = 30 + v0;
                        if (uint8.max == uint8(msg.data[v0] >> 48)) {
                            v255 = v256 = 20 + v255;
                            break;
                        } else {
                            break;
                        }
                        if (3 == 0x7 & msg.data[v0] >> 24) {
                            v255 = v257 = 20 + v255;
                            break;
                        } else {
                            break;
                        }
                        if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21) | 0x1 & msg.data[v0] >> 221) {
                            if ((2 == 0x7 & msg.data[v0] >> 21) | (4 == 0x7 & msg.data[v0] >> 21)) {
                                MEM[v249] = msg.data[v255];
                                v249 = v258 = v249 + 20;
                                break;
                            } else {
                                break;
                            }
                            v255 = v259 = 20 + v255;
                            break;
                        } else {
                            break;
                        }
                        if (0x1 & msg.data[v0] >> 220) {
                            v255 = v260 = 20 + v255;
                            break;
                        } else {
                            break;
                        }
                        if (2 == 0x3 & msg.data[v0] >> 19) {
                            MEM[v249] = msg.data[v255];
                            v249 = v261 = 20 + v249;
                            break;
                        } else if (3 == 0x3 & msg.data[v0] >> 19) {
                            break;
                        } else {
                            break;
                        }
                        if (0x1 & v250 >> 5 | 0x1 & v250 >> 4) {
                            MEM[v249] = MEM[v0 + 96] << 144;
                            v249 = v262 = v249 + 14;
                            break;
                        } else {
                            break;
                        }
                        if (1) {
                            MEM[v249] = MEM[v0 + 32] << 144;
                            MEM[v249 + 14] = MEM[v0 + 64] << 144;
                            v249 = v263 = v249 + 28;
                            break;
                        } else {
                            break;
                        }
                        MEM8[v246 + 20] = v249 - (v246 + 20) & 0xFF;
                        CALLDATACOPY(v249, v0 + (v154 >> 240), uint16(v154 >> 224) - (v154 >> 240));
                        v226 = v264 = uint16(v154 >> 224) - (v154 >> 240) + v249;
                        MEM[v151 + 356] = bytes4(msg.data[306 + v225]) + (v264 - v246 << 200);
                        MEM[v151 + 420] = v264 - (v151 + 452);
                        break;
                    } else {
                        break;
                    }
                    if (0x1 & v154 >> 220 & (v153 == this)) {
                        v265 = msg.data[v221].balanceOf(v153).gas(msg.gas);
                        break;
                    } else {
                        break;
                    }
                    v150 = v266 = v168.call(MEM[vd240x26ff_0x5V0xb:vd240x26ff_0x5V0xb + v26ff0x40dV0xb - vd240x26ff_0x5V0xb], MEM[0:32]).gas(msg.gas);
                    if (1 == v266) {
                        MEM[v0 + 64] += MEM[0];
                        if (0x1 & (v266 & ((v153 == this) & v154 >> 220))) {
                            v267 = msg.data[v221].balanceOf(v153).gas(msg.gas);
                            break;
                        } else {
                            break;
                        }
                        break;
                    } else {
                        v0 += v154 >> 240;
                        if (((MEM[v0 + 64] > 0) | 0x1 & msg.data[v0] >> 216) & (msg.gas + 0x3d090 > msg.gas)) {
                            break;
                        } else {
                            v151 = v268 = 160 + v0;
                            break;
                        }
                    }
                }
            } else if (uint8.max == uint8(v154 >> 48)) {
                if (!v153) {
                    break;
                } else {
                    break;
                }
            } else {
                break;
            }
            v0 += uint16(v154 >> 224);
            continue;
            break;
        }
        while (v0 + 160 - v151) {
            v269 = (MEM[v151 - 32] >> 16).call(MEM[vd240x26ff_0x5V0xb - uint16(MEM[vd240x26ff_0x5V0xb - 32]):vd240x26ff_0x5V0xb - uint16(MEM[vd240x26ff_0x5V0xb - 32]) + uint16(MEM[vd240x26ff_0x5V0xb - 32]) - 32], MEM[0:0]).gas(msg.gas);
            v151 = v151 - uint16(MEM[v151 - 32]);
        }
        // Unknown jump to Block ['0x2badB0xb', '0x3b50B0xb']. Refer to 3-address code (TAC);
        if (0x1 & msg.value >> 27 & v150) {
            v0 += 1;
        }
        v270 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        v0 = v271 = MEM[0];
        if (v271 > v0) {
            v0 += 1;
        }
        if (v271 > (v0 - msg.gas) * msg.gas + ((msg.value >> 10 & 0x3f) * 0xe35fa931a000 + v0)) {
            if (0x1 & v0 >> 252 == 1) {
                v272 = v273 = msg.value >> 22 & 0x1f;
            } else if (v271 <= (v0 - msg.gas) * msg.gas + ((msg.value >> 10 & 0x3f) * 0xe35fa931a000 + v0) + 0xb1a2bc2ec50000 * bool(msg.value >> 16)) {
                v272 = v274 = v0 >> 245 & 0x7f;
            } else {
                v272 = v275 = v0 >> 238 & 0x7f;
            }
            v0 += (v271 - ((v0 - msg.gas) * msg.gas + ((msg.value >> 10 & 0x3f) * 0xe35fa931a000 + v0))) * v272 / 100;
        }
        if (v0 > 0) {
            if (v0 >> uint8.max) {
                // Unknown jump to Block 0x27e9B0xb. Refer to 3-address code (TAC);
            }
        }
        if (v0) {
            MEM[v0 + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
            MEM[v0 + 164] = msg.sender;
            if (v0 == varg1 > 0) {
                MEM[v0 + 196] = varg1;
            } else {
                MEM[v0 + 196] = varg2;
            }
            v276 = v0.call(MEM[v230c_0xbV0x2c1eV0xb + 160:v230c_0xbV0x2c1eV0xb + 160 + 68], MEM[0:0]).gas(msg.gas);
        }
        if (v0 >> 5 & v0) {
            v277 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(MEM[0] >= MEM[v0 + v0], unknowneR__8w03R());
            exit;
        } else {
            exit;
        }
    }
}
