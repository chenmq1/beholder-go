// Decompiled by library.dedaub.com
// 2025.12.16 04:04 UTC

// Data structures and variables inferred from the use of storage instructions
uint256 owner_0; // STORAGE[0x0]



function 0x1220(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = varg0 - varg1;
    MEM[0] = MEM[0];
    MEM8[204] = (varg9 << 4 | varg10 & varg2) & 0xFF;
    if (v0) {
        CALLDATACOPY(205, varg8 + varg3, v0);
    }
    v1 = varg6.swap(varg7, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < varg5, varg4, 128, 41 + v0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000, varg5).gas(msg.gas);
    require(v1, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 >= varg5) * (0 - MEM[0]) + (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < varg5) * (0 - MEM[32]);
}

function smardexSwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    require(!(tx.origin - 0xf02e7388b469ab6e67470244c12ec3fe17600447), 259);
    if (varg0 <= 0) {
    }
    if (varg4 >> 252) {
        v0 = 0x6ef(173, 0 - v1, varg3 >> 96, uint256.max + (varg4 >> 252));
    }
    if (!(varg4 >> 248 & 0x8)) {
        0x210a(varg2 >> 96, msg.sender, v1);
    }
    if (varg4 >> 248 & 0x2) {
        v2 = 0x4444c5dc75cb358380d2e3de08a90.take(varg2 >> 96, msg.sender, v1).gas(msg.gas);
        require(v2, 12354);
    }
}

function unlockCallback(bytes rawData) public payable { 
    require(!(tx.origin - 0xf02e7388b469ab6e67470244c12ec3fe17600447), 259);
    v0 = v1 = 0;
    v2 = v3 = 82;
    while (v0 < (byte(rawData, 0x1))) {
        v4 = v5 = msg.data[v2] >> 176;
        v6 = v7 = byte(msg.data[v2], 0xd);
        v2 = v2 + uint16(msg.data[v2] >> 160);
        if (0 == (byte(msg.data[v2], 0xa))) {
            MEM[0] = MEM[0];
            v8 = v9 = 1;
            v10 = 0x6ef(v2 + 14, v5, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v7);
        } else if (1 == (byte(msg.data[v2], 0xa))) {
            MEM[0] = MEM[0];
            v8 = v11 = 1;
            v12 = v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            v12 = v14 = msg.data[v2 + 14 + 3] >> 96;
            v15 = v16 = this;
            v17 = v18 = v2 + 14 + 30;
            if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x40) {
                v17 = v19 = v2 + 14 + 50;
                v15 = v20 = msg.data[v18] >> 96;
            }
            v21 = 0;
            if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x20) {
                v21 = v22 = msg.data[v17] >> 96;
            }
            if ((byte(msg.data[v2 + 14 + 3], 0x1a)) >> 3 & 0x3 == 1) {
                v12 = v23 = 0;
            }
            if (2 == (byte(msg.data[v2 + 14 + 3], 0x1a)) >> 3 & 0x3) {
                v12 = v24 = 0;
            }
            if (v12 <= v12) {
            }
            v25 = 0x1000276a4;
            if (v12 != v12) {
                v25 = v26 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            v27 = 0x4444c5dc75cb358380d2e3de08a90.swap(v12, v12, uint24(msg.data[v2 + 14 + 3] >> 72), uint24(msg.data[v2 + 14 + 3] >> 48), v21, v12 == v12, 0 - v5, v25, 288, 0).gas(msg.gas);
            if (!v27) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                v28 = uint128(int128(MEM[0]) * (v12 == v12) + (MEM[0] >> 128) * (v12 != v12));
                if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x2) {
                    v29 = 0x4444c5dc75cb358380d2e3de08a90.take(v12, v15, v28).gas(msg.gas);
                    require(v29, 12353);
                    if (!v12) {
                        0x209c(v28);
                    }
                }
                if (v7) {
                    v30 = 0x6ef(v2 + 14 + uint16(msg.data[v2 + 14] >> 232), v28, v12, uint256.max + v7);
                }
                if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x4) {
                    v4 = v31 = 0;
                    if (!((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x80)) {
                        v32 = 0x4444c5dc75cb358380d2e3de08a90.sync(v12).gas(msg.gas);
                        require(v32, 12354);
                        if (v12) {
                            0x20d8(v12, v5);
                        }
                        if (!v12) {
                            0x205c(v5);
                        }
                    }
                    v33 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v4).gas(msg.gas);
                    require(v33, 12355);
                }
            }
        } else if (2 == (byte(msg.data[v2], 0xa))) {
            v8 = v34 = 1;
            v35 = v36 = v2 + 14;
            v37 = v38 = msg.data[v36];
            v39 = v40 = 0;
            if (80 == (byte(v38, 0x0))) {
                v39 = v41 = 1;
                v35 = v42 = 3 + v36;
                v37 = v43 = msg.data[v42];
            }
            v44 = v45 = address(v37 >> 72);
            v46 = this;
            if ((byte(v37, 0x1a)) & 0x40) {
                v46 = v47 = msg.data[v35 + 27] >> 96;
            }
            if (1 == (byte(v37, 0x1a)) & 0x1f) {
                MEM[0] = MEM[0];
                v44 = v48 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v48 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = v50 = address(keccak256(keccak256(v44, v44, uint24(v37 >> 48)), keccak256(v44, v44, uint24(v37 >> 48)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
            } else if (2 == (byte(v37, 0x1a)) & 0x1f) {
                MEM[0] = MEM[0];
                v44 = v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v51 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = v52 = address(keccak256(v53, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(v44, v44, uint24(v37 >> 48)), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
            } else if (3 == (byte(v37, 0x1a)) & 0x1f) {
                MEM[0] = MEM[0];
                v44 = v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v54 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = v55 = address(keccak256(v53, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(v44, v44), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548));
            } else if (4 == (byte(v37, 0x1a)) & 0x1f) {
                MEM[0] = MEM[0];
                v44 = v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v56 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = v57 = address(keccak256(v53, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(v44, v44), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f));
            } else if (5 == (byte(v37, 0x1a)) & 0x1f) {
                MEM[0] = MEM[0];
                v44 = v58 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v58 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = v59 = address(keccak256(v53, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(v44, v44, uint24(v37 >> 48)), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf));
            } else {
                require(6 == (byte(v37, 0x1a)) & 0x1f);
                MEM[0] = MEM[0];
                v44 = v60 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v60 <= v45) {
                }
                MEM8[0] = 0xff & 0xFF;
                v49 = address(keccak256(keccak256(v44, v44, uint24(v37 >> 48)), keccak256(v44, v44, uint24(v37 >> 48)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
            }
            v61 = v62 = uint16(msg.data[v2] >> 160) - uint16(v37 >> 232);
            if (v39) {
                v61 = v63 = v62 - 3;
                v6 = v64 = uint256.max + v7;
                v65 = 0x4444c5dc75cb358380d2e3de08a90.sync(v45).gas(msg.gas);
                require(v65, 12336);
            }
            MEM[0] = MEM[0];
            MEM[0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[4] = v46;
            MEM[36] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < v45;
            MEM[68] = v5;
            v66 = v67 = 0x1000276a4;
            if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 >= v45) {
                v66 = v68 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM[100] = v66;
            MEM[132] = 160;
            MEM[164] = 41 + v61;
            MEM[196] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000;
            MEM[216] = v45 << 96;
            MEM8[236] = (v6 << 4 | (byte(v37, 0x1a)) >> 4) & 0xFF;
            v69 = 237;
            if (v61) {
                CALLDATACOPY(237, v35 + uint16(v37 >> 232), v61);
                v69 = v70 = 237 + v61;
            }
            v71 = v49.call(MEM[0:v108cV0x68cV0x183], MEM[0:64]).gas(msg.gas);
            require(v71, 0, 64);
        } else if (3 == (byte(msg.data[v2], 0xa))) {
            v8 = v72 = 1;
            v73 = v74 = this;
            v75 = v76 = address(msg.data[v2 + 14] >> 72);
            if ((byte(msg.data[v2 + 14 + 23], 0x0)) & 0x40) {
                v73 = v77 = msg.data[v2 + 14 + 24] >> 96;
            }
            if (1 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                MEM[0] = MEM[0];
                v75 = v78 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v78 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                v79 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(keccak256(v75, v75, 0x0), keccak256(v75, v75, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
            } else if (2 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                MEM[0] = MEM[0];
                v75 = v80 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v80 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                v81 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(v75, v75, 0x0), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
            } else if (3 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                MEM[0] = MEM[0];
                v75 = v82 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v82 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                v83 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(v75, v75), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
            } else if (4 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                MEM[0] = MEM[0];
                v75 = v84 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v84 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                v85 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(v75, v75), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
            } else if (5 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                MEM[0] = MEM[0];
                v75 = v86 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v86 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                v87 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(v75, v75, 0x0), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
            } else {
                require(6 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f);
                MEM[0] = MEM[0];
                v75 = v88 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                if (v88 <= v76) {
                }
                MEM8[0] = 0xff & 0xFF;
                MEM[0] = MEM[0];
                MEM[0] = 0x1f18b37100000000000000000000000000000000000000000000000000000000;
                MEM[4] = v73;
                MEM[36] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < v76;
                MEM[68] = v5;
                MEM[100] = 128;
                MEM[132] = 41 + (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                MEM[164] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000;
                MEM[184] = v76 << 96;
                MEM8[204] = (v7 << 4 | (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x80) & 0xFF;
                v89 = 205;
                if (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232)) {
                    CALLDATACOPY(205, v2 + 14 + uint16(msg.data[v2 + 14] >> 232), uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                    v89 = v90 = 205 + (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                }
                v91 = address(keccak256(keccak256(v75, v75, 0x0), keccak256(v75, v75, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[0:v119b0x13a4V0x674V0x183], MEM[0:64]).gas(msg.gas);
                if (!v91) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
        } else if (4 == (byte(msg.data[v2], 0xa))) {
            CALLDATACOPY(292, v2 + 13, v2);
            v92 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(0x5c38449e00000000000000000000000000000000000000000000000000000000, this, 0x5c38449e00000000000000000000000000000000000000000000000000000000, 128, 192, uint8.max + 1, 1, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1, v5, v2).gas(msg.gas);
            if (!v92) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                v8 = v93 = 1;
            }
        } else {
            require(!(5 - (byte(msg.data[v2], 0xa))), 1026);
            CALLDATACOPY(196, v2 + 13, v2);
            v94 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.call(0x42b0b77c00000000000000000000000000000000000000000000000000000000, this, 0x42b0b77c00000000000000000000000000000000000000000000000000000000, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v5, 160, 0, v2).gas(msg.gas);
            if (!v94) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            } else {
                v8 = v95 = 1;
            }
        }
        v0 = v0 + v8;
    }
    v96 = 0x2238();
    require(v96 >= uint80(rawData >> 144), L(v96));
    if (byte(rawData, v1)) {
        if (v96 - uint80(rawData >> 144)) {
            v97 = v98 = 0;
            if ((byte(rawData, v1)) & 0x1f == 31) {
                v97 = v99 = (v96 - uint80(rawData >> 144)) * 99 / 100;
            }
            if ((byte(rawData, v1)) & 0x1f < 31) {
                v97 = v100 = ((byte(rawData, v1)) & 0x1f) * (v96 - uint80(rawData >> 144)) / 31;
            }
            if (1 == (byte(rawData, v1)) >> 5) {
                v101 = v102 = 0;
                v103 = v104 = 0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97;
            } else if (2 == (byte(rawData, v1)) >> 5) {
                v101 = v105 = 0;
                v103 = v106 = 0xdadb0d80178819f2319190d340ce9a924f783711;
            } else if (3 == (byte(rawData, v1)) >> 5) {
                v101 = v107 = 0;
                v103 = v108 = 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
            } else if (4 == (byte(rawData, v1)) >> 5) {
                v101 = v109 = 0;
                v103 = v110 = 0x396343362be2a4da1ce0c1c210945346fb82aa49;
            } else {
                require(5 == (byte(rawData, v1)) >> 5, 1028);
                v101 = 0;
                v103 = 0x1f9090aae28b8a3dceadf281b0f12828e676c326;
            }
            0x205c(v97);
            v111 = v103.call(MEM[v51b0xc17V0x183:v51b0xc17V0x183 + v51b0xc17V0x183], MEM[v51b0xc17V0x183:v51b0xc17V0x183 + v51b0xc17V0x183]).value(v97).gas(msg.gas);
        }
    }
    return 32, 32, v96;
}

function 0x180d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    varg0 = v0 = 0;
    if (1 == varg3 >> 6 & 0x3) {
        0x205c(varg0);
    } else {
        0x2216(varg1, varg2, varg0);
    }
    if (1 == varg4) {
        if (varg3 >> 6 & 0x3 == 1) {
            varg0 = v1 = 1;
        }
        v2 = varg2.exchange(varg3 & 0x3, varg3 >> 2 & 0x3, varg0, v0, varg0, varg5).value(varg0).gas(msg.gas);
        require(v2, 12368);
        v3 = v4 = MEM[0];
        if (varg3 >> 6 & 0x3 != 2) {
            return v4;
        }
    } else {
        if (2 != varg4) {
        }
        v5 = varg2.exchange(0xa64833a000000000000000000000000000000000000000000000000000000000, varg3 & 0x3, varg3 >> 2 & 0x3, varg0, v0, varg5).value(varg0).gas(msg.gas);
        require(v5, 12369);
        v3 = v6 = MEM[0];
        if (varg3 >> 6 & 0x3 != 2) {
            return v6;
        }
    }
    0x209c(v3);
    return v3;
}

function 0x1900(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    varg0 = v0 = 0;
    if (1 == varg3 >> 6 & 0x3) {
        v1 = v2 = 3;
        0x205c(varg0);
    } else {
        v1 = v3 = 3;
        0x2216(varg1, varg2, varg0);
    }
    MEM[v0] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
    if (!varg4) {
    }
    v4 = varg2.setMetaGold(varg3 & v1, varg3 >> 2 & v1, varg0, v0).value(varg0).gas(msg.gas);
    require(v4, 12370);
    if (varg3 >> 6 & 0x3 == 2) {
        0x209c(MEM[0]);
        return MEM[0];
    } else {
        return MEM[0];
    }
}

function initialize008joDSK(string varg0) public payable { 
    require(!(msg.sender - 0xf02e7388b469ab6e67470244c12ec3fe17600447), 258);
    CALLDATACOPY(68, 4, msg.data.length - 4);
    v0 = 0x4444c5dc75cb358380d2e3de08a90.unlock(32, msg.data.length - 4).gas(msg.gas);
    require(v0, 0, 36);
    require(msg.gas - msg.gas <= varg0 >> 232 & 0xffff00, 528);
    return MEM[0:96];
}

function 0x1a20(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg4 & 0x3;
    varg0 = v1 = 0;
    if (!(0x3 & varg4 >> 2)) {
        v2 = v3 = 128;
        varg0 = v4 = 0;
        v5 = v6 = 420;
        0x2171(varg1, varg0);
        if (1 == v0) {
            varg0 = v7 = 0xffff5433e2b3d8211706e6102aa9470;
        } else if (v4 == v0) {
            varg0 = v8 = 0x10002;
        }
    } else if (1 == 0x3 & varg4 >> 2) {
        v2 = v9 = 128;
        varg0 = v10 = 0;
        v5 = v11 = 420;
        0x205c(varg0);
        varg0 = v12 = 0xffff5433e2b3d8211706e6102aa9470;
    } else {
        require(!(2 - (0x3 & varg4 >> 2)), 12464);
        v2 = v13 = 128;
        varg0 = v14 = 0;
        v5 = v15 = 420;
        0x2171(varg1, varg0);
        varg0 = v16 = 0x10002;
    }
    MEM[varg0] = 0xa15112f900000000000000000000000000000000000000000000000000000000;
    MEM[4] = 1;
    MEM[36] = 64;
    MEM[132] = varg0;
    MEM[164] = varg3;
    MEM[196] = v0;
    MEM[228] = v0;
    MEM[260] = varg0;
    MEM[292] = varg0;
    MEM[324] = varg0;
    MEM[356] = varg0;
    MEM[388] = varg0;
    v17 = 0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688.call(MEM[v1a20arg0x0:v1a20arg0x0 + v1a69_0x7], MEM[v1a20arg0x0:v1a20arg0x0 + v1a69_0x9]).value(varg0).gas(msg.gas);
    require(v17, 12464);
    v18 = (!v0 << 256) + (v0 << 256);
    if (0x3 & varg4 >> 2 == 2) {
        0x209c(v18);
        return v18;
    } else {
        return v18;
    }
}

function 0x1d27(uint256 varg0, uint256 varg1) private { 
    if (1 == (varg1 == 0x808688c820ab080a6ff1019f03e5ec227d9b522b)) {
        v0 = 0x808688c820ab080a6ff1019f03e5ec227d9b522b.returnBAGTokens(varg0 >> 3).gas(msg.gas);
        require(v0, 12496);
        return varg0 >> 3;
    } else if (varg1 != 0x808688c820ab080a6ff1019f03e5ec227d9b522b) {
        v1 = varg1.approve(0x808688c820ab080a6ff1019f03e5ec227d9b522b, varg0).gas(msg.gas);
        require(v1, 1286);
        v2 = 0x808688c820ab080a6ff1019f03e5ec227d9b522b.getBAGTokens(varg0).gas(msg.gas);
        require(v2, 12497);
        return varg0 << 3;
    } else {
        return 0;
    }
}

function 0x205c(uint256 varg0) private { 
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000, varg0).gas(msg.gas);
    require(v0, 1281);
    return ;
}

function 0x209c(uint256 varg0) private { 
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.call(0xd0e30db000000000000000000000000000000000000000000000000000000000).value(varg0).gas(msg.gas);
    require(v0, 1282);
    return ;
}

function 0x20d8(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.transfer(0x4444c5dc75cb358380d2e3de08a90, varg1).gas(msg.gas);
    require(v0, 1283);
    return ;
}

function 0x210a(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(v0, 1283);
    return ;
}

function 0x212c(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.call(0x95ea7b300000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, varg1).gas(msg.gas);
    require(v0, 1286);
    return ;
}

function 0x2171(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0xaaaaaaaaa24eeeb8d57d431224f73832bc34f688, varg1).gas(msg.gas);
    require(v0, 1286);
    return ;
}

function 0x21a8(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0xf6e72db5454dd049d0788e411b06cfaf16853042, varg1).gas(msg.gas);
    require(v0, 1286);
    return ;
}

function 0x2216(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.approve(varg1, varg2).gas(msg.gas);
    require(v0, 1286);
    return ;
}

function 0x2238() private { 
    v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.staticcall(0x70a0823100000000000000000000000000000000000000000000000000000000, this, 0x70a0823100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v0, 1287);
    return MEM[0];
}

function 0x227b(uint256 varg0) private { 
    v0 = varg0.balanceOf(this).gas(msg.gas);
    require(v0, 1287);
    return MEM[0];
}

function 0x2552(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (1 == varg2) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(keccak256(varg1, varg1, 0x0), keccak256(varg1, varg1, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
    } else if (2 == varg2) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(varg1, varg1, 0x0), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
    } else if (3 == varg2) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(varg1, varg1), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548));
    } else if (4 == varg2) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(varg1, varg1), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f));
    } else if (5 == varg2) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(varg1, varg1, 0x0), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf));
    } else {
        require(6 == varg2);
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(keccak256(varg1, varg1, 0x0), keccak256(varg1, varg1, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
    }
}

function 0x2694(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (1 == varg3) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(keccak256(varg1, varg1, varg2), keccak256(varg1, varg1, varg2), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
    } else if (2 == varg3) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(varg1, varg1, varg2), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
    } else if (3 == varg3) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(varg1, varg1), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548));
    } else if (4 == varg3) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(varg1, varg1), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f));
    } else if (5 == varg3) {
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(v0, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(varg1, varg1, varg2), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf));
    } else {
        require(6 == varg3);
        if (varg0 <= varg1) {
        }
        MEM8[0] = 0xff & 0xFF;
        return address(keccak256(keccak256(varg1, varg1, varg2), keccak256(varg1, varg1, varg2), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
    }
}

function 0x6ef(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = 0;
    while (v0 < varg3) {
        varg2 = v2 = address(msg.data[varg0] >> 72);
        v3 = uint16(msg.data[varg0] >> 232);
        v4 = byte(msg.data[varg0], 0x0);
        if (v4 == 3) {
            v5 = v6 = 1;
            v7 = v8 = this;
            if ((byte(msg.data[varg0 + 23], 0x3)) & 0x40) {
                v7 = v9 = msg.data[varg0 + 27] >> 96;
            }
            v10 = 0x2694(varg2, v2, msg.data[varg0 + 23] >> 232, (byte(msg.data[varg0 + 23], 0x3)) & 0x1f);
            MEM[0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[4] = v7;
            MEM[36] = varg2 < v2;
            MEM[68] = varg1;
            v11 = v12 = 0x1000276a4;
            if (varg2 >= v2) {
                v11 = v13 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            MEM8[236] = (byte(msg.data[varg0 + 23], 0x3)) >> 4 & 0xFF;
            v14 = v10.call(v15, v15, v15, v15, v11, 160, 41, v2, varg2).gas(msg.gas);
            require(v14, 0, 64);
            varg1 = v16 = (0 - MEM[0]) * (varg2 >= v2) + (0 - MEM[32]) * (varg2 < v2);
        } else if (4 == v4) {
            varg2 = v17 = msg.data[varg0 + 3] >> 96;
            v18 = byte(msg.data[varg0 + 3], 0x1a);
            v19 = v20 = this;
            v21 = v22 = varg0 + 30;
            if (v18 & 0x40) {
                v21 = v23 = varg0 + 50;
                v19 = v24 = msg.data[v22] >> 96;
            }
            v25 = 0;
            if (v18 & 0x20) {
                v25 = v26 = msg.data[v21] >> 96;
            }
            if (v18 >> 3 & 0x3 == 1) {
                varg2 = v27 = 0;
            }
            if (2 == v18 >> 3 & 0x3) {
                varg2 = v28 = 0;
            }
            if (varg2 <= varg2) {
            }
            v29 = 0x1000276a4;
            if (varg2 != varg2) {
                v29 = v30 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            }
            v31 = 0x4444c5dc75cb358380d2e3de08a90.swap(varg2, varg2, uint24(msg.data[varg0 + 3] >> 72), uint24(msg.data[varg0 + 3] >> 48), v25, varg2 == varg2, 0 - v32, v29, 288, 0).gas(msg.gas);
            if (!v31) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
            } else {
                varg1 = v33 = uint128(int128(MEM[0]) * (varg2 == varg2) + (MEM[0] >> 128) * (varg2 != varg2));
                if (v18 & 0x2) {
                    v34 = 0x4444c5dc75cb358380d2e3de08a90.take(varg2, v19, v33).gas(msg.gas);
                    require(v34, 12353);
                    if (!varg2) {
                        0x209c(v33);
                    }
                }
                if (0) {
                    v35 = 0x6ef(varg0 + v3, v33, varg2, uint256.max);
                }
                if (v18 & 0x4) {
                    varg1 = v36 = 0;
                    if (!(v18 & 0x80)) {
                        v37 = 0x4444c5dc75cb358380d2e3de08a90.sync(varg2).gas(msg.gas);
                        require(v37, 12354);
                        if (varg2) {
                            0x20d8(varg2, v32);
                        }
                        if (!varg2) {
                            0x205c(v32);
                        }
                    }
                    v38 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg1).gas(msg.gas);
                    require(v38, 12355);
                }
                v5 = v39 = 1;
            }
        } else if (80 == v4) {
            v40 = 0x4444c5dc75cb358380d2e3de08a90.sync(msg.data[varg0 + 6] >> 96).gas(msg.gas);
            require(v40, 12356);
            v5 = v41 = 1;
        } else {
            if (2 == v4) {
                v5 = v42 = 1;
                v43 = byte(msg.data[23 + varg0], 0x0);
                v44 = v45 = v43 & 0x80;
                v46 = v47 = this;
                if (!(v43 & 0x1f)) {
                    v48 = v49 = 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f;
                    v50 = v51 = 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f;
                } else if (1 == v43 & 0x1f) {
                    v48 = v52 = 0xc0aee478e3658e2610c5f7a4a2e1777ce9e4f2ac;
                    v50 = v53 = 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303;
                } else if (2 == v43 & 0x1f) {
                    v48 = v54 = 0x1097053fd2ea711dad45caccc45eff7548fcb362;
                    v50 = v55 = 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d;
                } else if (3 == v43 & 0x1f) {
                    v48 = v56 = 0x115934131916c8b277dd010ee02de363c09d037c;
                    v50 = v57 = 0x65d1a3b1e46c6e4f1be1ad5f99ef14dc488ae0549dc97db9b30afe2241ce1c7a;
                } else if (4 == v43 & 0x1f) {
                    v48 = v58 = 0x1e2c2102cf8efcaaaf20ffe926469ec7cd0d0f6e;
                    v50 = v59 = 0x74f125999ff7f2ce1bc01fc0032136917b1f7c81658bdd173c38cc36d7057c1;
                } else if (5 == v43 & 0x1f) {
                    v48 = v60 = 0x5fa0060fcfea35b31f7a5f6025f0ff399b98edf1;
                    v50 = v61 = 0xc591b9bd08f1704b700bd0b662cd000c1bf71b54704b340e7442d09778ed7c7;
                } else if (6 == v43 & 0x1f) {
                    v48 = v62 = 0x9deb29c9a4c7a88a3c0257393b7f3335338d9a9d;
                    v50 = v63 = 0x69d637e77615df9f235f642acebbdad8963ef35c5523142078c9b8f9d0ceba7e;
                } else if (7 == v43 & 0x1f) {
                    v48 = v64 = 0x4eef5746ed22a2fd368629c1852365bf5dcb79f1;
                    v50 = v65 = 0x9fb44e670c5e09087865a6e5c85ae0fc3e365ede68ae928445f8a92971c11eb6;
                } else if (8 == v43 & 0x1f) {
                    v48 = v66 = 0xf14421f0bcf9401d8930872c2d44d8e67e40529a;
                    v50 = v67 = 0x1c879dcd3af04306445addd2c308bd4d26010c7ca84c959c3564d4f6957ab20c;
                } else if (9 == v43 & 0x1f) {
                    v48 = v68 = 0x696708db871b77355d6c2be7290b27cf0bb9b24b;
                    v50 = v69 = 0x50955d9250740335afc702786778ebeae56a5225e4e18b7cb046e61437cde6b3;
                } else if (10 == v43 & 0x1f) {
                    v48 = v70 = 0x8a93b6865c4492ff17252219b87ea6920848edc0;
                    v50 = v71 = 0xf565b14b81c3e748ea442ab2164c5fd0d7c0a709b805951e831d272659cb9fcd;
                } else if (11 == v43 & 0x1f) {
                    v48 = v72 = 0xcdc7c1d7542128d96fb944af966ea1be5ce31fca;
                    v50 = v73 = 0xff5b4b5c537d72f8e4b38c6f0fe01942d1a5a475a9b1e31a151580c04033db2;
                } else {
                    require(12 == v43 & 0x1f);
                    v48 = v74 = 0x388c1e0f210abae597b7de712b9510c6c36c857;
                    v50 = v75 = 0xf176ce2ef2ec9c3333f7ab282e4269fdd75024da47415e2c7c6e04272fc1bfab;
                }
                if (varg2 <= v2) {
                }
                v76 = v77 = address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, v48, keccak256(varg2, varg2), v50));
                if (!(v43 & 0x20)) {
                    v78 = v79 = 50425;
                    if (v43 & 0x40) {
                        v46 = v80 = msg.data[varg0 + 40] >> 96;
                    }
                    varg1 = v81 = uint128(msg.data[23 + varg0] >> 120);
                } else {
                    v82 = v83 = 50388;
                    if (v43 & 0x40) {
                        v46 = v84 = msg.data[varg0 + 26] >> 96;
                    }
                    v85 = v86 = uint16(msg.data[23 + varg0] >> 232);
                    // Unknown jump to Block 0xe0a. Refer to 3-address code (TAC);
                }
            } else if (5 == v4) {
                v5 = v87 = 1;
                if (v87 == (v3 == 65)) {
                    varg1 = v88 = 0x180d(varg1, varg2, msg.data[23 + varg0] >> 96, byte(msg.data[23 + varg0], 0x14), byte(msg.data[23 + varg0], 0x15), msg.data[varg0 + 45] >> 96);
                } else {
                    varg1 = v89 = 0x1900(varg1, varg2, msg.data[23 + varg0] >> 96, byte(msg.data[23 + varg0], 0x14), byte(msg.data[23 + varg0], 0x15));
                }
            } else if (6 == v4) {
                v5 = v90 = 1;
                v91 = v92 = this;
                if (v3 == 76) {
                    v91 = v93 = msg.data[varg0 + 56] >> 96;
                }
                0x212c(varg2, varg1);
                v94 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(0x52bbbe2900000000000000000000000000000000000000000000000000000000, 224, 0x52bbbe2900000000000000000000000000000000000000000000000000000000, this, 0, v91, 0, 0, 10 ** 28, msg.data[varg0 + 23], 0, varg2, v2, varg1, 192, 0).gas(msg.gas);
                if (!v94) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
                } else {
                    varg1 = v95 = MEM[0];
                }
            } else if (7 == v4) {
                v5 = v96 = 1;
                v76 = v97 = msg.data[23 + varg0] >> 96;
                v44 = v98 = (byte(msg.data[23 + varg0], 0x15)) & 0x80;
                v46 = v99 = this;
                if (0 == (byte(msg.data[23 + varg0], 0x15)) & 0x20) {
                    v78 = v100 = 50240;
                    if ((byte(msg.data[23 + varg0], 0x15)) & 0x40) {
                        v46 = v101 = msg.data[varg0 + 60] >> 96;
                    }
                    varg1 = v102 = msg.data[varg0 + 44] >> 128;
                } else {
                    v82 = v103 = 50203;
                    if ((byte(msg.data[23 + varg0], 0x15)) & 0x40) {
                        v46 = v104 = msg.data[varg0 + 46] >> 96;
                    }
                    v85 = v105 = uint16(msg.data[23 + varg0] >> 72);
                }
            } else if (10 == v4) {
                v5 = v106 = 1;
                v107 = v108 = this;
                if ((byte(msg.data[varg0 + 23], 0x0)) & 0x40) {
                    v107 = v109 = msg.data[varg0 + 24] >> 96;
                }
                v110 = 0x2552(varg2, v2, (byte(msg.data[varg0 + 23], 0x0)) & 0x1f);
                v111 = varg2 < v2;
                MEM8[204] = (byte(msg.data[varg0 + 23], 0x0)) & 0x80 & 0xFF;
                v112 = v110.swap(v107, v111, varg1, 128, 41, v2, varg2).gas(msg.gas);
                if (!v112) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
                } else {
                    varg1 = v113 = (varg2 >= v2) * (0 - MEM[0]) + v111 * (0 - MEM[32]);
                }
            } else {
                if (15 == v4) {
                    v5 = v114 = 1;
                    v115 = v116 = 50129;
                    v117 = v118 = 0;
                    if (v3 == 64) {
                        v117 = v119 = msg.data[varg0 + 44] >> 96;
                    }
                    varg1 = v120 = 0;
                    if (1 == (byte(msg.data[varg0 + 23], 0x14)) >> 2 & 0x3) {
                        0x205c(varg1);
                        v121 = v122 = 3;
                    } else {
                        v121 = v123 = 3;
                        0x2216(varg2, msg.data[varg0 + 23] >> 96, varg1);
                    }
                    v124 = (msg.data[varg0 + 23] >> 96).swapIn((byte(msg.data[varg0 + 23], 0x14)) & v121, varg1, v120, v117).value(varg1).gas(msg.gas);
                    require(v124, 12528);
                    varg1 = v125 = MEM[0];
                    if ((byte(msg.data[varg0 + 23], 0x14)) >> 2 & 0x3 != 2) {
                    }
                } else if (1 == v4) {
                    v126 = v127 = 0;
                    v128 = (byte(msg.data[varg0 + 43], v127)) & 0x1f;
                    v129 = msg.data[varg0 + 23] >> 96;
                    if (!(0x20 & (byte(msg.data[varg0 + 43], v127)))) {
                        varg1 = v130 = uint128(msg.data[varg0 + 43] >> 120);
                        v5 = v131 = 1;
                        if ((byte(msg.data[varg0 + 43], v127)) & 0x40) {
                            v126 = v132 = msg.data[varg0 + 60] >> 96;
                        }
                        if (0 == v126) {
                            0x205c(varg1);
                            v133 = v134 = 0xf39b5b9b;
                            if (v128) {
                                v133 = v135 = 0xad65d76d;
                                MEM[68] = v128;
                            }
                            v136 = v129.ethToTokenSwapInput(1, 10 ** 28).value(varg1).gas(msg.gas);
                            if (!v136) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
                            }
                        } else {
                            0x2216(v2, v129, varg1);
                            v137 = v138 = 0x95e3c50b;
                            if (v128) {
                                MEM[100] = v128;
                                v137 = v139 = 0x7237e031;
                            }
                            v140 = v129.tokenToEthSwapInput(varg1, 1, 10 ** 28).gas(msg.gas);
                            if (!v140) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
                            } else {
                                0x209c(v130);
                                MEM[0] = MEM[0];
                                varg2 = v141 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                            }
                        }
                    } else {
                        v115 = v142 = 50092;
                        v5 = v143 = 1;
                        if ((byte(msg.data[varg0 + 43], v127)) & 0x40) {
                            v126 = v144 = msg.data[varg0 + 44] >> 96;
                        }
                        if (!v128) {
                            0x205c(varg1);
                            v145 = v146 = 0xf39b5b9b;
                            if (v126) {
                                v145 = v147 = 0xad65d76d;
                                MEM[68] = v126;
                            }
                            v148 = v129.ethToTokenSwapInput(1, 10 ** 28).value(varg1).gas(msg.gas);
                            require(v148, 12304);
                            varg1 = v149 = MEM[0];
                        } else {
                            0x2216(v2, v129, varg1);
                            v150 = v151 = 0x95e3c50b;
                            if (v126) {
                                MEM[100] = v126;
                                v150 = v152 = 0x7237e031;
                            }
                            v153 = v129.tokenToEthSwapInput(varg1, 1, 10 ** 28).gas(msg.gas);
                            require(v153, 12305);
                            varg1 = v154 = MEM[0];
                            if (v126) {
                            }
                        }
                    }
                } else if (11 == v4) {
                    v5 = v155 = 1;
                    varg1 = v156 = 0x1a20(varg1, varg2, v2, msg.data[varg0 + 23] >> 240, byte(msg.data[varg0 + 23], 0x2));
                } else if (77 == v4) {
                    v5 = v157 = 1;
                    v158 = 0x227b(v2);
                    v159 = v160 = varg0 + 24;
                    v161 = v162 = 0;
                    while (v161 < (byte(msg.data[varg0], 0x17))) {
                        CALLDATACOPY(0, v159 + 24, uint16(msg.data[v159] >> 64));
                        if (uint16(msg.data[v159] >> 80)) {
                            MEM[uint16(msg.data[v159] >> 80)] = varg1;
                        }
                        if (1 == (MEM[0] >> 224 == 0x95ea7b3)) {
                            v163 = v164 = 24;
                            v165 = v166 = 1;
                            0x2216(msg.data[v159] >> 96, MEM[4], varg1);
                        } else {
                            v167 = (msg.data[v159] >> 96).call(MEM[0:uint16(msg.data[v2031_0x0] >> 64)], MEM[0:0]).gas(msg.gas);
                            if (!v167) {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(v15, v15, v15, v15, v15, v15, v15, v15, v15, v15, v2);
                            } else {
                                v165 = v168 = 1;
                                v163 = v169 = 24;
                            }
                        }
                        v159 = v159 + uint16(msg.data[v159] >> 64) + v163;
                        v161 = v161 + v165;
                    }
                    v170 = 0x227b(v2);
                    require(v170 >= v158);
                    varg1 = v171 = v170 - v158;
                } else if (12 == v4) {
                    v5 = v172 = 1;
                    v173 = v174 = this;
                    if (v3 == 64) {
                        v173 = v175 = msg.data[varg0 + 44] >> 96;
                    }
                    v176 = msg.data[varg0 + 23] >> 96;
                    if (0 == (byte(msg.data[varg0 + 23], 0x14)) >> 2 & 0x3) {
                        0x2216(varg2, v176, varg1);
                        if (!((byte(msg.data[varg0 + 23], 0x14)) & 0x3)) {
                            v177 = v176.sellBaseToken(varg1, 0, 96, 0).gas(msg.gas);
                            require(v177, 12480);
                            varg1 = v178 = MEM[0];
                        } else {
                            v179 = 0x533da777aedce766ceae696bf90f8541a4ba80eb.querySellQuoteToken(v176, varg1).gas(msg.gas);
                            require(v179, 12481);
                            varg1 = v180 = MEM[0];
                            v181 = v176.buyBaseToken(v180, varg1, 96, 0).gas(msg.gas);
                            require(v181, 12482);
                        }
                    } else {
                        if (!((byte(msg.data[varg0 + 23], 0x14)) & 0x80)) {
                            0x210a(varg2, v176, varg1);
                        }
                        if (0 == (byte(msg.data[varg0 + 23], 0x14)) & 0x3) {
                            MEM[0] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                        } else {
                            MEM[0] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                        }
                        v182 = v176.call(v15, v173).gas(msg.gas);
                        require(v182, 12483);
                        varg1 = v183 = MEM[0];
                    }
                } else if (13 == v4) {
                    v5 = v184 = 1;
                    varg1 = 0x1d27(varg1, varg2);
                } else if (14 == v4) {
                    v5 = v185 = 1;
                    v186 = v187 = this;
                    if (v3 == 52) {
                        v186 = v188 = address(msg.data[varg0 + 23] >> 24);
                    }
                    v189 = v190 = 0x6b175474e89094c44da98b954eedeac495271d0f;
                    if (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 == varg2) {
                        v189 = v191 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
                    }
                    0x21a8(v189, varg1);
                    if (1 == (0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48 == varg2)) {
                        v192 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.sellGem(v186, varg1).gas(msg.gas);
                        require(v192, 12512);
                        varg1 = v193 = MEM[0];
                    } else {
                        varg1 = v194 = 0;
                        if (bool(msg.data[varg0 + 23] >> 192)) {
                            varg1 = varg1 * 10 ** 18 / (10 ** 18 + (msg.data[varg0 + 23] >> 192)) / 10 ** 12;
                        }
                        if (!(msg.data[varg0 + 23] >> 192)) {
                            varg1 = varg1 / 10 ** 12;
                        }
                        v195 = 0xf6e72db5454dd049d0788e411b06cfaf16853042.buyGem(v186, varg1).gas(msg.gas);
                        require(v195, 12513);
                    }
                } else {
                    require(!(16 - v4), 1027);
                    v5 = v196 = 1;
                    v197 = v198 = this;
                    if (v3 == 64) {
                        v197 = v199 = msg.data[varg0 + 44] >> 96;
                    }
                    if (!((byte(msg.data[varg0 + 23], 0x14)) & 0x80)) {
                        0x210a(varg2, msg.data[varg0 + 23] >> 96, varg1);
                    }
                    MEM[0] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                    MEM[4] = v197;
                    MEM[36] = varg1;
                    MEM[68] = (byte(msg.data[varg0 + 23], 0x14)) >> 6 & 0x1;
                    v200 = v201 = 100;
                    MEM[v201] = 0;
                    if (!((byte(msg.data[varg0 + 23], 0x14)) >> 6 & 0x1)) {
                        v200 = v202 = int32.min;
                    }
                    v203 = (msg.data[varg0 + 23] >> 96).call(v15, v15, v15, v15, v15, v200, 192, 0).gas(msg.gas);
                    require(v203, 12544);
                    varg1 = v204 = MEM[32];
                }
                0x209c(varg1);
                // Unknown jump to Block ['0xc3ac', '0xc3d1']. Refer to 3-address code (TAC);
            }
            if (!v44) {
                0x210a(varg2, v76, varg1);
            }
            if (1 != varg2 < v2) {
            }
            v205 = v76.getReserves().gas(msg.gas);
            require(v205, 12321);
            v206 = v207 = MEM[0];
            v206 = v208 = MEM[32];
            v209 = varg2 == varg2;
            if (1 != v209) {
            }
            v210 = varg1 * v85;
            varg1 = v210 * v206 / (v206 * 10000 + v210);
            v211 = v76.swap((varg2 != varg2) * varg1, v209 * varg1, v46, 128, 0).gas(msg.gas);
            require(v211, 12322);
            // Unknown jump to Block ['0xc41b', '0xc4d4']. Refer to 3-address code (TAC);
            if (!v44) {
                0x210a(varg2, v76, varg1);
            }
            v212 = v76.swap(varg1 * (varg2 >= v2), (varg2 < v2) * varg1, v46, 128, 0).gas(msg.gas);
            require(v212, 12320);
            // Unknown jump to Block ['0xc440', '0xc4f9']. Refer to 3-address code (TAC);
        }
        varg0 = varg0 + v3;
        v0 = v0 + v5;
    }
    return varg1;
}

function 0xbe40bfb8() public payable { 
    require(msg.sender == owner_0, 257);
    0x205c(uint80(v0 >> 144));
    v1 = 0xf02e7388b469ab6e67470244c12ec3fe17600447.call().value(uint80(v0 >> 144)).gas(msg.gas);
}

function 0xc57a58a5(uint256 varg0) public payable { 
    require(msg.sender == owner_0, 257);
    0x210a(address(v0 >> 64), owner_0, varg0 >> 176);
}

function 0x25cda58f() public payable { 
    require(msg.sender == owner_0, 257);
    0x205c(uint80(v0 >> 144));
    v1 = owner_0.call().value(uint80(v0 >> 144)).gas(msg.gas);
}

function 0xeae86eae() public payable { 
    require(msg.sender == owner_0, 257);
    v0 = owner_0.call().value(this.balance).gas(msg.gas);
}

function executeOperation(address varg0, uint256 varg1, uint256 varg2, address varg3) public payable { 
    require(0xf02e7388b469ab6e67470244c12ec3fe17600447 == tx.origin, 259);
    v0 = 0x6ef(197, varg1, varg0, byte(varg3, 0x0));
    v1 = varg0.approve(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2, varg2 + varg1).gas(msg.gas);
    require(v1);
    return 1;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public payable { 
    require(!(tx.origin - 0xf02e7388b469ab6e67470244c12ec3fe17600447), 259);
    v0 = 0x6ef(357, msg.data[36 + amounts], msg.data[36 + tokens], byte(userData, 0x0));
    v1 = msg.data[36 + tokens].call(0xa9059cbb00000000000000000000000000000000000000000000000000000000, 0xba12222222228d8ba445958a75a0704d566bf2c8, msg.data[36 + feeAmounts] + msg.data[36 + amounts]).gas(msg.gas);
    require(v1, 1283);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2) public payable { 
    if (!msg.data.length) {
        exit;
    } else if (0 == function_selector >> 224) {
        require(!(msg.sender - 0xf02e7388b469ab6e67470244c12ec3fe17600447), 258);
        v0 = v1 = 0;
        v2 = v3 = 18;
        while (v0 < (byte(varg1, 0x1))) {
            v4 = v5 = msg.data[v2] >> 176;
            v6 = v7 = byte(msg.data[v2], 0xd);
            v2 = v2 + uint16(msg.data[v2] >> 160);
            if (0 == (byte(msg.data[v2], 0xa))) {
                MEM[0] = MEM[0];
                v8 = v9 = 1;
                v10 = 0x6ef(v2 + 14, v5, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v7);
            } else if (1 == (byte(msg.data[v2], 0xa))) {
                MEM[0] = MEM[0];
                v8 = v11 = 1;
                v12 = v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                v12 = v14 = msg.data[v2 + 14 + 3] >> 96;
                v15 = v16 = this;
                v17 = v18 = v2 + 14 + 30;
                if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x40) {
                    v17 = v19 = v2 + 14 + 50;
                    v15 = v20 = msg.data[v18] >> 96;
                }
                v21 = 0;
                if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x20) {
                    v21 = v22 = msg.data[v17] >> 96;
                }
                if ((byte(msg.data[v2 + 14 + 3], 0x1a)) >> 3 & 0x3 == 1) {
                    v12 = v23 = 0;
                }
                if (2 == (byte(msg.data[v2 + 14 + 3], 0x1a)) >> 3 & 0x3) {
                    v12 = v24 = 0;
                }
                if (v12 <= v12) {
                }
                v25 = 0x1000276a4;
                if (v12 != v12) {
                    v25 = v26 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                v27 = 0x4444c5dc75cb358380d2e3de08a90.swap(v12, v12, uint24(msg.data[v2 + 14 + 3] >> 72), uint24(msg.data[v2 + 14 + 3] >> 48), v21, v12 == v12, 0 - v5, v25, 288, 0).gas(msg.gas);
                if (!v27) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v28 = uint128(int128(MEM[0]) * (v12 == v12) + (MEM[0] >> 128) * (v12 != v12));
                    if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x2) {
                        v29 = 0x4444c5dc75cb358380d2e3de08a90.take(v12, v15, v28).gas(msg.gas);
                        require(v29, 12353);
                        if (!v12) {
                            0x209c(v28);
                        }
                    }
                    if (v7) {
                        v30 = 0x6ef(v2 + 14 + uint16(msg.data[v2 + 14] >> 232), v28, v12, uint256.max + v7);
                    }
                    if ((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x4) {
                        v4 = v31 = 0;
                        if (!((byte(msg.data[v2 + 14 + 3], 0x1a)) & 0x80)) {
                            v32 = 0x4444c5dc75cb358380d2e3de08a90.sync(v12).gas(msg.gas);
                            require(v32, 12354);
                            if (v12) {
                                0x20d8(v12, v5);
                            }
                            if (!v12) {
                                0x205c(v5);
                            }
                        }
                        v33 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v4).gas(msg.gas);
                        require(v33, 12355);
                    }
                }
            } else if (2 == (byte(msg.data[v2], 0xa))) {
                v8 = v34 = 1;
                v35 = v36 = v2 + 14;
                v37 = v38 = msg.data[v36];
                v39 = v40 = 0;
                if (80 == (byte(v38, 0x0))) {
                    v39 = v41 = 1;
                    v35 = v42 = 3 + v36;
                    v37 = v43 = msg.data[v42];
                }
                v44 = v45 = address(v37 >> 72);
                v46 = this;
                if ((byte(v37, 0x1a)) & 0x40) {
                    v46 = v47 = msg.data[v35 + 27] >> 96;
                }
                if (1 == (byte(v37, 0x1a)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v44 = v48 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v48 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = v50 = address(keccak256(keccak256(v44, v44, uint24(v37 >> 48)), keccak256(v44, v44, uint24(v37 >> 48)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
                } else if (2 == (byte(v37, 0x1a)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v44 = v51 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v51 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = v52 = address(keccak256(v53, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(v44, v44, uint24(v37 >> 48)), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2));
                } else if (3 == (byte(v37, 0x1a)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v44 = v54 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v54 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = v55 = address(keccak256(v53, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(v44, v44), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548));
                } else if (4 == (byte(v37, 0x1a)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v44 = v56 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v56 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = v57 = address(keccak256(v53, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(v44, v44), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f));
                } else if (5 == (byte(v37, 0x1a)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v44 = v58 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v58 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = v59 = address(keccak256(v53, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(v44, v44, uint24(v37 >> 48)), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf));
                } else {
                    require(6 == (byte(v37, 0x1a)) & 0x1f);
                    MEM[0] = MEM[0];
                    v44 = v60 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v60 <= v45) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v49 = address(keccak256(keccak256(v44, v44, uint24(v37 >> 48)), keccak256(v44, v44, uint24(v37 >> 48)), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54));
                }
                v61 = v62 = uint16(msg.data[v2] >> 160) - uint16(v37 >> 232);
                if (v39) {
                    v61 = v63 = v62 - 3;
                    v6 = v64 = uint256.max + v7;
                    v65 = 0x4444c5dc75cb358380d2e3de08a90.sync(v45).gas(msg.gas);
                    require(v65, 12336);
                }
                MEM[0] = MEM[0];
                MEM[0] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[4] = v46;
                MEM[36] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < v45;
                MEM[68] = v5;
                v66 = v67 = 0x1000276a4;
                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 >= v45) {
                    v66 = v68 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                }
                MEM[100] = v66;
                MEM[132] = 160;
                MEM[164] = 41 + v61;
                MEM[196] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000;
                MEM[216] = v45 << 96;
                MEM8[236] = (v6 << 4 | (byte(v37, 0x1a)) >> 4) & 0xFF;
                v69 = 237;
                if (v61) {
                    CALLDATACOPY(237, v35 + uint16(v37 >> 232), v61);
                    v69 = v70 = 237 + v61;
                }
                v71 = v49.call(MEM[0:v108cV0x4b4V0x250], MEM[0:64]).gas(msg.gas);
                require(v71, 0, 64);
            } else if (3 == (byte(msg.data[v2], 0xa))) {
                v8 = v72 = 1;
                v73 = v74 = this;
                v75 = v76 = address(msg.data[v2 + 14] >> 72);
                if ((byte(msg.data[v2 + 14 + 23], 0x0)) & 0x40) {
                    v73 = v77 = msg.data[v2 + 14 + 24] >> 96;
                }
                if (1 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v75 = v78 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v78 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v79 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(keccak256(v75, v75, 0x0), keccak256(v75, v75, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
                } else if (2 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v75 = v80 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v80 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v81 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000, keccak256(v75, v75, 0x0), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
                } else if (3 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v75 = v82 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v82 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v83 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x7753f36e711b66a0350a753aba9f5651bae76a1d000000000000000000000000, keccak256(v75, v75), 0xb477a06204165d50e6d795c7c216306290eff5d6015f8b65bb46002a8775b548)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
                } else if (4 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v75 = v84 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v84 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v85 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0xb878dc600550367e14220d4916ff678fb284214f000000000000000000000000, keccak256(v75, v75), 0xc762a0f9885cc92b9fd8eef224b75997682b634460611bc0f2138986e20b653f)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
                } else if (5 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f) {
                    MEM[0] = MEM[0];
                    v75 = v86 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v86 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    v87 = 0x1220(uint16(msg.data[v2] >> 160), uint16(msg.data[v2 + 14] >> 232), 128, uint16(msg.data[v2 + 14] >> 232), v5, v76, address(keccak256(v53, 0x70fe4a44ea505cfa3a57b95cf2862d4fd5f0f687000000000000000000000000, keccak256(v75, v75, 0x0), 0xe9b68c5f77858eecac2e651646e208175e9b1359d68d0e14fc69f8c54e5010bf)), v73, v2 + 14, v7, byte(msg.data[v2 + 14 + 23], 0x0));
                } else {
                    require(6 == (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x1f);
                    MEM[0] = MEM[0];
                    v75 = v88 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    if (v88 <= v76) {
                    }
                    MEM8[0] = 0xff & 0xFF;
                    MEM[0] = MEM[0];
                    MEM[0] = 0x1f18b37100000000000000000000000000000000000000000000000000000000;
                    MEM[4] = v73;
                    MEM[36] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 < v76;
                    MEM[68] = v5;
                    MEM[100] = 128;
                    MEM[132] = 41 + (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                    MEM[164] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2000000000000000000000000;
                    MEM[184] = v76 << 96;
                    MEM8[204] = (v7 << 4 | (byte(msg.data[v2 + 14 + 23], 0x0)) & 0x80) & 0xFF;
                    v89 = 205;
                    if (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232)) {
                        CALLDATACOPY(205, v2 + 14 + uint16(msg.data[v2 + 14] >> 232), uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                        v89 = v90 = 205 + (uint16(msg.data[v2] >> 160) - uint16(msg.data[v2 + 14] >> 232));
                    }
                    v91 = address(keccak256(keccak256(v75, v75, 0x0), keccak256(v75, v75, 0x0), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).call(MEM[0:v119b0x13a4V0x49cV0x250], MEM[0:64]).gas(msg.gas);
                    if (!v91) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            } else if (4 == (byte(msg.data[v2], 0xa))) {
                CALLDATACOPY(292, v2 + 13, v2);
                v92 = 0x000000000000000000000000ba12222222228d8ba445958a75a0704d566bf2c8.call(0x5c38449e00000000000000000000000000000000000000000000000000000000, this, 0x5c38449e00000000000000000000000000000000000000000000000000000000, 128, 192, uint8.max + 1, 1, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 1, v5, v2).gas(msg.gas);
                if (!v92) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v8 = v93 = 1;
                }
            } else {
                require(!(5 - (byte(msg.data[v2], 0xa))), 1026);
                CALLDATACOPY(196, v2 + 13, v2);
                v94 = 0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2.call(0x42b0b77c00000000000000000000000000000000000000000000000000000000, this, 0x42b0b77c00000000000000000000000000000000000000000000000000000000, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v5, 160, 0, v2).gas(msg.gas);
                if (!v94) {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                } else {
                    v8 = v95 = 1;
                }
            }
            v0 = v0 + v8;
        }
        v96 = 0x2238();
        require(v96 >= uint80(varg1 >> 144), L(v96));
        if (byte(varg1, v1)) {
            if (v96 - uint80(varg1 >> 144)) {
                v97 = v98 = 0;
                if ((byte(varg1, v1)) & 0x1f == 31) {
                    v97 = v99 = (v96 - uint80(varg1 >> 144)) * 99 / 100;
                }
                if ((byte(varg1, v1)) & 0x1f < 31) {
                    v97 = v100 = ((byte(varg1, v1)) & 0x1f) * (v96 - uint80(varg1 >> 144)) / 31;
                }
                if (1 == (byte(varg1, v1)) >> 5) {
                    v101 = v102 = 0;
                    v103 = v104 = 0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97;
                } else if (2 == (byte(varg1, v1)) >> 5) {
                    v101 = v105 = 0;
                    v103 = v106 = 0xdadb0d80178819f2319190d340ce9a924f783711;
                } else if (3 == (byte(varg1, v1)) >> 5) {
                    v101 = v107 = 0;
                    v103 = v108 = 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                } else if (4 == (byte(varg1, v1)) >> 5) {
                    v101 = v109 = 0;
                    v103 = v110 = 0x396343362be2a4da1ce0c1c210945346fb82aa49;
                } else {
                    require(5 == (byte(varg1, v1)) >> 5, 1028);
                    v101 = 0;
                    v103 = 0x1f9090aae28b8a3dceadf281b0f12828e676c326;
                }
                0x205c(v97);
                v111 = v103.call(MEM[v30b0xc17V0x250:v30b0xc17V0x250 + v30b0xc17V0x250], MEM[v30b0xc17V0x250:v30b0xc17V0x250 + v30b0xc17V0x250]).value(v97).gas(msg.gas);
            }
        }
        require(msg.gas - msg.gas <= varg2 >> 232 & 0xffff00, 528);
        return 32, 32, v96;
    } else if (1 == function_selector >> 224) {
        initialize008joDSK(string,string,uint256,bytes32,bytes32,bytes);
    } else if (0x91dd7346 == function_selector >> 224) {
        unlockCallback(bytes);
    } else {
        if (0xfa461e33 != function_selector >> 224) {
            if (0x23a69e75 != function_selector >> 224) {
                if (0x3a1c453c != function_selector >> 224) {
                    if (0xa1dab4eb != function_selector >> 224) {
                        if (0xf04f2707 == function_selector >> 224) {
                            receiveFlashLoan(address[],uint256[],uint256[],bytes);
                        } else if (0x1b11d0ff == function_selector >> 224) {
                            executeOperation(address,uint256,uint256,address,bytes);
                        } else if (0xeae86eae == function_selector >> 224) {
                            0xeae86eae();
                        } else if (0x25cda58f == function_selector >> 224) {
                            0x25cda58f(function_selector >> 224);
                        } else if (0xc57a58a5 == function_selector >> 224) {
                            0xc57a58a5(function_selector >> 224);
                        } else if (0xbe40bfb8 == function_selector >> 224) {
                            0xbe40bfb8();
                        } else {
                            exit;
                        }
                    }
                }
            }
        }
        smardexSwapCallback(int256,int256,bytes);
    }
}
