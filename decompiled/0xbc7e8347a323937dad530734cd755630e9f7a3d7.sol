// Decompiled by library.dedaub.com
// 2026.04.21 14:41 UTC
// Compiled using the solidity compiler version 0.8.26


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV3SwapCallback; // TRANSIENT_STORAGE[0x0]



function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    v0 = 4 + rawData + 32;
    require(v1.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + rawData] - 288) {
        if (msg.data[4 + rawData] - 416) {
            if (msg.data[4 + rawData] - 384) {
                require(!(msg.data[4 + rawData] - (uint8.max + 1)), Error('TODO?'));
                require(v0 + msg.data[4 + rawData] - v0 >= uint8.max + 1);
                require(!(address(rawData.word1) - rawData.word1));
                require(!(address(rawData.word2) - rawData.word2));
                v2 = v3 = rawData.word3;
                require(!(bool(v3) - v3));
                require(!(rawData.word4 - uint24(rawData.word4)));
                require(!(rawData.word5 - int24(rawData.word5)));
                v4 = v5 = rawData.word6;
                require(!(address(v5) - v5));
                v2 = v6 = rawData.word7;
                require(!(bool(v6) - v6));
                v7 = v8 = rawData.word8;
                v2 = v9 = address(rawData.word1);
                v2 = v10 = address(rawData.word2);
                if (!v6) {
                    v11 = v12 = 12726;
                    v13 = v14 = 12776;
                    v15 = v16 = 32;
                    if (0 == v3) {
                        v2 = v17 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        v18 = 0x2350();
                        v18.word0 = address(v10);
                        v18.word1 = address(v17);
                        v18.word2 = uint24(rawData.word4);
                        v18.word3 = int24(rawData.word5);
                        // Unknown jump to Block 0x8779fB0x1a81. Refer to 3-address code (TAC);
                    } else {
                        v2 = v19 = address(0x0);
                        v18 = v20 = 0x2350();
                        v20.word0 = address(v10);
                        v20.word1 = address(v19);
                        v20.word2 = uint24(rawData.word4);
                        v20.word3 = int24(rawData.word5);
                    }
                    MEM[v18 + 128] = address(v4);
                    // Unknown jump to Block 0x31b6B0x1a81. Refer to 3-address code (TAC);
                } else {
                    v13 = 12776;
                    v15 = 32;
                    if (0 == v3) {
                        v21 = v22 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    } else {
                        v21 = v23 = 0;
                    }
                    v2 = v24 = address(v21);
                    v18 = v25 = 0x2350();
                    v25.word0 = address(v24);
                    v25.word1 = address(v10);
                    v25.word2 = uint24(rawData.word4);
                    v25.word3 = int24(rawData.word5);
                    v25.word4 = address(v5);
                }
                if (!v2) {
                    v26 = 0x237d();
                    v26.word0 = bool(v27);
                    v26.word1 = v7;
                    v26.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    v28 = v29 = MEM[64];
                    MEM[v29] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v29 + 4] = address(MEM[v18]);
                    MEM[v29 + 4 + 32] = address(MEM[v18 + 32]);
                    MEM[v29 + 4 + 64] = uint24(MEM[v18 + 64]);
                    MEM[v29 + 4 + 96] = int24(MEM[v18 + 96]);
                    MEM[v29 + 4 + 128] = address(MEM[128 + v18]);
                    MEM[v29 + 4 + 160] = bool(v26.word0);
                    MEM[v29 + 4 + 192] = v26.word1;
                    MEM[v29 + 4 + 224] = address(v26.word2);
                    MEM[v29 + 4 + (uint8.max + 1)] = 288;
                    MEM[v29 + 4 + 288] = 0;
                    v30 = v29 + 4 + 288 + 32;
                    // Unknown jump to Block 0x31e8B0x1a81. Refer to 3-address code (TAC);
                } else {
                    v31 = 0x237d();
                    v31.word0 = bool(v2);
                    v31.word1 = v7;
                    v31.word2 = address(0x1000276a4);
                    v28 = v32 = MEM[64];
                    MEM[v32] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v32 + 4] = address(MEM[v18]);
                    MEM[v32 + 4 + 32] = address(MEM[v18 + 32]);
                    MEM[v32 + 4 + 64] = uint24(MEM[v18 + 64]);
                    MEM[v32 + 4 + 96] = int24(MEM[v18 + 96]);
                    MEM[v32 + 4 + 128] = address(MEM[128 + v18]);
                    MEM[v32 + 4 + 160] = bool(v31.word0);
                    MEM[v32 + 4 + 192] = v31.word1;
                    MEM[v32 + 4 + 224] = address(v31.word2);
                    MEM[v32 + 4 + (uint8.max + 1)] = 288;
                    MEM[v32 + 4 + 288] = 0;
                    v30 = v33 = v32 + 4 + 288 + 32;
                }
                v34 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v899d5V0x1a81 - v4780x2818_0x1V0x1a81], MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v315dV0x1a81]).gas(msg.gas);
                if (v34) {
                    v2 = v35 = 0;
                    if (v34) {
                        v36 = v37 = 13614;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v28 + 32;
                            v38 = v39 = v28 + 32;
                        }
                    }
                }
            } else {
                v40 = 11764;
                v41 = 11702;
                v42 = 32;
                require(v0 + msg.data[4 + rawData] - v0 >= 384);
                require(!(address(rawData.word1) - rawData.word1));
                require(!(address(rawData.word2) - rawData.word2));
                require(!(bool(rawData.word3) - rawData.word3));
                require(!(rawData.word4 - uint24(rawData.word4)));
                require(!(rawData.word5 - int24(rawData.word5)));
                v43 = rawData.word6;
                require(!(address(v43) - v43));
                v2 = v44 = rawData.word7;
                require(!(bool(v44) - v44));
                v45 = rawData.word8;
                require(!(bool(rawData.word9) - rawData.word9));
                v2 = v46 = rawData.word10;
                require(!(v46 - uint24(v46)));
                v2 = v47 = rawData.word11;
                require(!(v47 - int24(v47)));
                v2 = rawData.word12;
                require(!(address(v2) - v2));
                v48 = v49 = address(rawData.word2);
                if (0 == rawData.word3) {
                    if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 <= v49) {
                        v48 = v50 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                    }
                } else {
                    v48 = 0;
                }
                v2 = v51 = address(v48);
                if (!rawData.word3) {
                    if (v49 >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                        v2 = v52 = address(v49);
                        v53 = v54 = 0x2350();
                        v54.word0 = address(v51);
                        v54.word1 = address(v52);
                        v54.word2 = uint24(rawData.word4);
                        v54.word3 = int24(rawData.word5);
                        // Unknown jump to Block 0x86f74B0x1a81. Refer to 3-address code (TAC);
                    } else {
                        v2 = v55 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        v53 = 0x2350();
                        v53.word0 = address(v51);
                        v53.word1 = address(v55);
                        v53.word2 = uint24(rawData.word4);
                        v53.word3 = int24(rawData.word5);
                        // Unknown jump to Block 0x86f74B0x1a81. Refer to 3-address code (TAC);
                    }
                } else {
                    v2 = v56 = address(v49);
                    v53 = v57 = 0x2350();
                    v57.word0 = address(v51);
                    v57.word1 = address(v56);
                    v57.word2 = uint24(rawData.word4);
                    v57.word3 = int24(rawData.word5);
                }
                MEM[v53 + 128] = address(v43);
                if (!v2) {
                    v58 = 0x237d();
                    v58.word0 = bool(v59);
                    v58.word1 = v45;
                    v58.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
                    v28 = v60 = MEM[64];
                    MEM[v60] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v60 + 4] = address(MEM[v53]);
                    MEM[v60 + 4 + 32] = address(MEM[v53 + 32]);
                    MEM[v60 + 4 + 64] = uint24(MEM[v53 + 64]);
                    MEM[v60 + 4 + 96] = int24(MEM[v53 + 96]);
                    MEM[v60 + 4 + 128] = address(MEM[128 + v53]);
                    MEM[v60 + 4 + 160] = bool(v58.word0);
                    MEM[v60 + 4 + 192] = v58.word1;
                    MEM[v60 + 4 + 224] = address(v58.word2);
                    MEM[v60 + 4 + (uint8.max + 1)] = 288;
                    MEM[v60 + 4 + 288] = 0;
                    v61 = v60 + 4 + 288 + 32;
                    // Unknown jump to Block 0x2df4B0x1a81. Refer to 3-address code (TAC);
                } else {
                    v62 = 0x237d();
                    v62.word0 = bool(v63);
                    v62.word1 = v45;
                    v62.word2 = address(0x1000276a4);
                    v28 = v64 = MEM[64];
                    MEM[v64] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
                    MEM[v64 + 4] = address(MEM[v53]);
                    MEM[v64 + 4 + 32] = address(MEM[v53 + 32]);
                    MEM[v64 + 4 + 64] = uint24(MEM[v53 + 64]);
                    MEM[v64 + 4 + 96] = int24(MEM[v53 + 96]);
                    MEM[v64 + 4 + 128] = address(MEM[128 + v53]);
                    MEM[v64 + 4 + 160] = bool(v62.word0);
                    MEM[v64 + 4 + 192] = v62.word1;
                    MEM[v64 + 4 + 224] = address(v62.word2);
                    MEM[v64 + 4 + (uint8.max + 1)] = 288;
                    MEM[v64 + 4 + 288] = 0;
                    v61 = v65 = v64 + 4 + 288 + 32;
                }
                v66 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v8987dV0x1a81 - v4780x2818_0x1V0x1a81], MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v2d47V0x1a81]).gas(msg.gas);
                if (v66) {
                    v2 = v67 = 0;
                    if (v66) {
                        v2 = v68 = 11948;
                        v2 = v69 = 32;
                        v2 = v70 = 0x87332;
                        v2 = v71 = 0x87358;
                        v2 = v72 = 0x87392;
                        v36 = v73 = 12421;
                        v2 = v74 = 11893;
                        if (v69 <= RETURNDATASIZE()) {
                            require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v28 + 32;
                            v38 = v75 = v28 + v69;
                        }
                    }
                }
            }
        } else {
            require(v0 + msg.data[4 + rawData] - v0 >= 384);
            require(!(address(rawData.word1) - rawData.word1));
            require(!(address(rawData.word2) - rawData.word2));
            require(!(bool(rawData.word3) - rawData.word3));
            require(!(rawData.word4 - uint24(rawData.word4)));
            require(!(rawData.word5 - int24(rawData.word5)));
            require(!(address(rawData.word6) - rawData.word6));
            require(!(bool(rawData.word7) - rawData.word7));
            require(!(address(rawData.word9) - rawData.word9));
            require(!(rawData.word12 - uint24(rawData.word12)));
            if (address(rawData.word1) - this) {
                0x4b36(address(rawData.word1), address(rawData.word2), rawData.word3, rawData.word4, rawData.word5, address(rawData.word6), rawData.word7, rawData.word8, address(rawData.word9), rawData.word10, rawData.word11, rawData.word12);
            } else {
                0x509c(address(rawData.word1), address(rawData.word2), rawData.word3, rawData.word4, rawData.word5, address(rawData.word6), rawData.word7, rawData.word8, address(rawData.word9), rawData.word10, rawData.word11, rawData.word12);
            }
        }
    } else {
        require(v0 + msg.data[4 + rawData] - v0 >= 288);
        require(!(address(rawData.word1) - rawData.word1));
        require(!(address(rawData.word2) - rawData.word2));
        v2 = v76 = rawData.word3;
        require(!(bool(v76) - v76));
        require(!(rawData.word4 - uint24(rawData.word4)));
        require(!(rawData.word5 - int24(rawData.word5)));
        v77 = rawData.word6;
        require(!(address(v77) - v77));
        v2 = v78 = rawData.word7;
        require(!(bool(v78) - v78));
        v79 = rawData.word8;
        v2 = v80 = rawData.word9;
        require(!(address(v80) - v80));
        v2 = v81 = address(rawData.word2);
        v2 = v82 = address(rawData.word1);
        if (!v78) {
            v83 = v84 = 32;
            v85 = v86 = 10479;
            if (0 == v76) {
                v87 = v88 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            } else {
                v87 = v89 = 0;
            }
            v2 = v90 = address(v87);
            v91 = v92 = 0x2350();
            v92.word0 = address(v90);
            v92.word1 = address(v81);
            v92.word2 = uint24(rawData.word4);
            v92.word3 = int24(rawData.word5);
            v92.word4 = address(v77);
        } else {
            v85 = v93 = 10479;
            v94 = 10401;
            v83 = v95 = 32;
            if (0 == v76) {
                v2 = v96 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                v91 = 0x2350();
                v91.word0 = address(v81);
                v91.word1 = address(v96);
                v91.word2 = uint24(rawData.word4);
                v91.word3 = int24(rawData.word5);
                // Unknown jump to Block 0x86b87B0x1a81. Refer to 3-address code (TAC);
            } else {
                v2 = v97 = address(0x0);
                v91 = v98 = 0x2350();
                v98.word0 = address(v81);
                v98.word1 = address(v97);
                v98.word2 = uint24(rawData.word4);
                v98.word3 = int24(rawData.word5);
            }
            MEM[v91 + 128] = address(v77);
        }
        if (!v78) {
            v99 = 0x237d();
            v99.word0 = bool(v78);
            v99.word1 = v79;
            v99.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            v28 = v100 = MEM[64];
            MEM[v100] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[v100 + 4] = address(MEM[v91]);
            MEM[v100 + 4 + 32] = address(MEM[v91 + 32]);
            MEM[v100 + 4 + 64] = uint24(MEM[v91 + 64]);
            MEM[v100 + 4 + 96] = int24(MEM[v91 + 96]);
            MEM[v100 + 4 + 128] = address(MEM[128 + v91]);
            MEM[v100 + 4 + 160] = bool(v99.word0);
            MEM[v100 + 4 + 192] = v99.word1;
            MEM[v100 + 4 + 224] = address(v99.word2);
            MEM[v100 + 4 + (uint8.max + 1)] = 288;
            MEM[v100 + 4 + 288] = 0;
            v101 = v102 = v100 + 4 + 288 + 32;
            // Unknown jump to Block 0x28efB0x1a81. Refer to 3-address code (TAC);
        } else {
            v103 = 0x237d();
            v103.word0 = bool(v78);
            v103.word1 = v79;
            v103.word2 = address(0x1000276a4);
            v28 = v104 = MEM[64];
            MEM[v104] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
            MEM[v104 + 4] = address(MEM[v91]);
            MEM[v104 + 4 + 32] = address(MEM[v91 + 32]);
            MEM[v104 + 4 + 64] = uint24(MEM[v91 + 64]);
            MEM[v104 + 4 + 96] = int24(MEM[v91 + 96]);
            MEM[v104 + 4 + 128] = address(MEM[128 + v91]);
            MEM[v104 + 4 + 160] = bool(v103.word0);
            MEM[v104 + 4 + 192] = v103.word1;
            MEM[v104 + 4 + 224] = address(v103.word2);
            MEM[v104 + 4 + (uint8.max + 1)] = 288;
            MEM[v104 + 4 + 288] = 0;
            v101 = v104 + 4 + 288 + 32;
        }
        v105 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v28180x89532V0x1a81 - v4780x2818_0x1V0x1a81], MEM[v4780x2818_0x1V0x1a81:v4780x2818_0x1V0x1a81 + v2c5f0x2818_0x2V0x1a81]).gas(msg.gas);
        if (v105) {
            v2 = v106 = 0;
            if (v105) {
                v36 = v107 = 11352;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v28 + 32;
                    v38 = v108 = v28 + 32;
                }
            }
        }
    }
    if (!v2) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v109 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(v2), int128(v2 >> 128)).gas(msg.gas);
        if (v109) {
            if (v109) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v110 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v2)).gas(msg.gas);
            if (v110) {
                v111 = v112 = 64;
                if (v110) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v113 = int128(v2);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v114 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(v2), int128(v2)).gas(msg.gas);
        if (v114) {
            if (v114) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v115 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v2)).gas(msg.gas);
            if (v115) {
                v111 = v116 = 64;
                if (v115) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v113 = v117 = v2 >> 128;
            }
        }
    }
    if (v2) {
        v2 = v118 = v2 < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    if (!v2) {
        v2 = v119 = !v2;
    }
    if (!v2) {
        v120 = v121 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v120 = v122 = 0x1000276a4;
    }
    if (!v2) {
        v123 = v124 = 0;
        v125 = v126 = MEM[v111];
        MEM[v126] = v124;
        require(!((v126 + 32 > uint64.max) | (v126 + 32 < v126)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v126 + 32;
    } else {
        v125 = new struct(2);
        v127 = v125.data;
        v125.word1 = bool(v2);
        v123 = 0;
        v125.word0 = 32;
        require(!((v125 + 64 > uint64.max) | (v125 + 64 < v125)), Panic(65)); // failed memory allocation (too much memory)
    }
    MEM[MEM[v111]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
    MEM[MEM[v111] + 4] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[MEM[v111] + 4 + 32] = bool(v2);
    MEM[MEM[v111] + 4 + 64] = int128(v113);
    MEM[MEM[v111] + 4 + 96] = address(v120);
    MEM[MEM[v111] + 4 + 128] = 160;
    MEM[MEM[v111] + 4 + 160] = MEM[v125];
    MCOPY(MEM[v111] + 4 + 160 + 32, 32 + v125, MEM[v125]);
    MEM[32 + (MEM[v125] + (MEM[v111] + 4 + 160))] = 0;
    v128, /* uint256 */ v129, /* uint256 */ v130 = address(v2).call(MEM[MEM[v29fc_0x4V0x1a81]:MEM[v29fc_0x4V0x1a81] + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v29fdV0x1a81] + MEM[v29fc_0x4V0x1a81] + 4 + 160 + 32 - MEM[v29fc_0x4V0x1a81]], MEM[MEM[v29fc_0x4V0x1a81]:MEM[v29fc_0x4V0x1a81] + v29fc_0x4V0x1a81]).value(v123).gas(msg.gas);
    if (v128) {
        if (v128) {
            v131 = v132 = 64;
            if (64 > RETURNDATASIZE()) {
                v131 = v133 = RETURNDATASIZE();
            }
            require(!((MEM[v111] + (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v111] + (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v111])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v111] + (v131 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[v111] + v131 - MEM[v111] >= 64);
        }
        v28 = v134 = MEM[64];
        v135 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (v135) {
            if (v135) {
                v36 = v136 = 10912;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v134 + 32 > uint64.max) | (v134 + 32 < v134)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v134 + 32;
                    v38 = v137 = v134 + 32;
                }
            }
        }
    }
    v138 = v139 = MEM[64];
    require(!((v139 + 32 > uint64.max) | (v139 + 32 < v139)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v139 + 32;
    MEM[v139] = 0;
    v140 = new uint256[](MEM[v138]);
    MCOPY(v140.data, 32 + v138, MEM[v138]);
    MEM[32 + (MEM[v138] + v140)] = 0;
    return v140;
    revert(MEM[64], RETURNDATASIZE());
    if (!v2) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v141 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(v2), int128(v2 >> 128)).gas(msg.gas);
        if (v141) {
            if (v141) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v142 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v2)).gas(msg.gas);
            if (v142) {
                v143 = v144 = 13015;
                v145 = v146 = 0x876cf;
                if (v142) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v147 = v148 = int128(v2);
            }
        }
    } else {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v149 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(v2), int128(v2)).gas(msg.gas);
        if (v149) {
            if (v149) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v150 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v2)).gas(msg.gas);
            if (v150) {
                v143 = v151 = 13015;
                v145 = v152 = 0x875cb;
                if (v150) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v147 = v153 = v2 >> 128;
            }
        }
    }
    require(int128(v147) != int128.min, Panic(17)); // arithmetic overflow or underflow
    // Unknown jump to Block ['0x2e75B0x1a81', '0x875cbB0x1a81', '0x876cfB0x1a81']. Refer to 3-address code (TAC);
    if (!v2) {
        v154 = v155 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v154 = v156 = 0x1000276a4;
    }
    v157 = 0x237d();
    v157.word0 = bool(v2);
    MEM[v2 + v157] = int128(0 - int128(v147));
    v157.word2 = address(v154);
    v28 = v158 = MEM[64];
    v159 = new uint256[](0);
    v160 = 0x4444c5dc75cb358380d2e3de08a90.swap(address(MEM[v2]), address(MEM[v2 + 32]), uint24(MEM[v2 + 64]), int24(MEM[v2 + 96]), address(MEM[128 + v2]), bool(v157.word0), v157.word1, address(v157.word2), v159).gas(msg.gas);
    if (v160) {
        v2 = v161 = 0;
        if (v160) {
            v36 = v162 = 12329;
            if (32 <= RETURNDATASIZE()) {
                require(!((v158 + 32 > uint64.max) | (v158 + 32 < v158)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v158 + 32;
                v38 = v163 = v158 + 32;
            }
        }
    }
    v164 = v165 = int128(0 - int128(v147));
    if (!v2) {
        0x499d(v164);
        v28 = v166 = MEM[64];
        v167 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (v167) {
            if (v167) {
                v36 = 13297;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v166 + 32 > uint64.max) | (v166 + 32 < v166)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v166 + 32;
                    v38 = v168 = v166 + 32;
                }
            }
        }
    } else {
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        v169 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v164).gas(msg.gas);
        if (v169) {
            if (v169) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v28 = v170 = MEM[64];
            v171 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v164).gas(msg.gas);
            if (v171) {
                if (v171) {
                    v36 = v172 = 13182;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v170 + 32 > uint64.max) | (v170 + 32 < v170)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v170 + 32;
                        v38 = v173 = v170 + 32;
                    }
                } else {
                    v138 = v174 = MEM[64];
                    require(!((v174 + 32 > uint64.max) | (v174 + 32 < v174)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v174 + 32;
                    MEM[v174] = 0;
                    // Unknown jump to Block 0x1a87. Refer to 3-address code (TAC);
                }
            }
        }
    }
    v164 = int128(0 - int128(v147));
    // Unknown jump to Block 0x32d7B0x1a81. Refer to 3-address code (TAC);
    require(!((v28 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v28 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v38 = v175 = v28 + RETURNDATASIZE();
    require(v38 - v28 >= 32);
    v2 = v176 = MEM[v28];
    // Unknown jump to Block ['0x2aa0B0x1a81', '0x2c58B0x1a81', '0x3029B0x1a81', '0x3085B0x1a81', '0x337eB0x1a81', '0x33f1B0x1a81', '0x352eB0x1a81']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2912B0x1a81. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2a7fB0x1a81. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x320bB0x1a81. Refer to 3-address code (TAC);
    v138 = v177 = MEM[64];
    require(!((v177 + 32 > uint64.max) | (v177 + 32 < v177)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v177 + 32;
    MEM[v177] = 0;
    // Unknown jump to Block 0x1a87. Refer to 3-address code (TAC);
    v178 = 0x2679(int128(v2), int128(v2));
    if (int128(v178)) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v179 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(this), int128(v178)).gas(msg.gas);
        if (v179) {
            if (v179) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    }
    v180 = 0x2679(v2 >> 128, v2 >> 128);
    if (int128(v180)) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v181 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v2), address(this), int128(v180)).gas(msg.gas);
        if (v181) {
            if (v181) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
        }
    }
    v138 = v182 = MEM[64];
    require(!((v182 + 32 > uint64.max) | (v182 + 32 < v182)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v182 + 32;
    MEM[v182] = 0;
    // Unknown jump to Block 0x1a87. Refer to 3-address code (TAC);
    v145 = 11893;
    v2 = v183 = 32;
    v184 = 0x87124;
    v143 = v185 = 0x8714a;
    v2 = v186 = 11948;
    if (0 == v2) {
        v147 = v187 = int128(v2);
        v2 = v188 = 0x2350();
        v188.word0 = address(v2);
        v188.word1 = address(v189);
        v188.word2 = uint24(v2);
        v188.word3 = int24(v47);
        // Unknown jump to Block 0x87184B0x1a81. Refer to 3-address code (TAC);
    } else {
        v147 = v190 = v2 >> 128;
        v2 = v191 = 0x2350();
        v191.word0 = address(v2);
        v191.word1 = address(v192);
        v191.word2 = uint24(v2);
        v191.word3 = int24(v47);
    }
    MEM[v2 + 128] = address(v2);
    v2 = v193 = !v2;
    // Unknown jump to Block 0x25ae0x2818B0x1a81. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x2d1cB0x1a81. Refer to 3-address code (TAC);
}

function 0x87f92b26(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        if (!varg1) {
            if (address(varg0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v1 = v3 = 0;
        }
        if (!varg1) {
            if (address(varg0) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v5 = 0x2350();
        v5.word0 = address(v1);
        v5.word1 = address(v1);
        v5.word2 = varg2;
        v5.word3 = varg3;
        v5.word4 = address(varg4);
        v6 = v7 = 0x235f();
        v7.word0 = 0;
        v7.word1 = 0;
        v7.word2 = v5;
        v7.word3 = 0;
        v8 = new struct(3);
        v8.word1 = keccak256(MEM[v17ad_0x0.word2:v17ad_0x0.word2 + 160]);
        v8.word2 = 6;
        v8.word0 = 64;
        require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
        v9 = v8.word0.length;
        v10 = v11 = keccak256(keccak256(MEM[v17ad_0x0.word2:v17ad_0x0.word2 + 160]), 6);
        v12 = v13 = MEM[64];
        v14 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v11).gas(msg.gas);
        if (v14) {
            v6 = v15 = 32;
            v16 = v17 = 14515;
            v18 = v19 = 0;
            if (v14) {
                v20 = v21 = 14662;
                if (v15 <= RETURNDATASIZE()) {
                    require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v13 + 32;
                    v22 = v23 = v13 + v15;
                }
            }
            MEM[v6] = address(v18);
            require(v10 <= v10 + 3, Panic(17)); // arithmetic overflow or underflow
            v12 = v24 = MEM[64];
            v25 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v10 + 3).gas(msg.gas);
            if (v25) {
                v10 = v26 = uint128.max;
                v16 = v27 = 32;
                v6 = v28 = 0x879cd;
                v18 = v29 = 0;
                if (v25) {
                    v20 = 14633;
                    if (v27 <= RETURNDATASIZE()) {
                        require(!((v24 + 32 > uint64.max) | (v24 + 32 < v24)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v24 + 32;
                        v22 = v30 = v24 + v27;
                    }
                }
            }
            MEM[v6 + v16] = uint128(v18 & v10);
            v31 = 0x235f();
            v31.word0 = 0;
            v31.word1 = 0;
            v31.word2 = address(v7);
            v31.word3 = 1;
            0x41f9(v31);
            v32 = 0x4217(address(v31.word2));
            v31.word1 = uint128(v32);
            if (varg0) {
                v33 = v34 = address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v35, /* uint256 */ v36 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v35, MEM[64], RETURNDATASIZE());
            v36 = v37 = 0;
            if (v35) {
                v38 = 32;
                if (32 > RETURNDATASIZE()) {
                    v38 = v39 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v38 - MEM[64] >= 32);
                v40 = this.balance;
            } else {
                v40 = v41 = this.balance;
            }
            require(v36 <= v36 + v40, Panic(17)); // arithmetic overflow or underflow
            if (!v33) {
                if (address(MEM[varg1]) <= address(v31.word0)) {
                    0x49db(v36 + v40, v31, varg1, 0xfffff & varg6 >> 88, 0xfffff & (0xfffff & varg6 >> 88) >> 108, 6094, 0xfffff & (0xfffff & varg6 >> 88) >> 128, varg6, varg1);
                    exit;
                } else {
                    0x4aa1(v36 + v40, varg1, v31, 0xfffff & varg6 >> 88, 6094, 0xfffff & (0xfffff & varg6 >> 88) >> 108, 0xfffff & (0xfffff & varg6 >> 88) >> 128, varg6, varg1);
                    exit;
                }
            } else {
                v42 = 0x45c9(uint192.max + 1, 0, address(MEM[varg1]));
                require(address(v31.word0) >= v42, Error('V3FT_V4FT'));
                revert(Error('V4TF_V3TF'));
            }
            require(!((v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v22 = v43 = v12 + RETURNDATASIZE();
            require(v22 - v12 >= 32);
            v18 = v44 = MEM[v12];
            // Unknown jump to Block ['0x3929B0x17ae', '0x3946B0x17ae']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x17ae. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x7e1a9a3a(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        if (!varg1) {
            if (address(varg0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1, v2, v3 = v4, v5 = v6, v7 = v8, v9 = v10, v11 = v12, v13 = v14, v15 = v16, v17 = v18 = 0x16f9(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x866cd, varg3, 0x8639d, varg4, 5395, varg6, varg6 >> 88 & 0xfffff, varg5, varg2, varg1);
                v14.word3 = int24(v1);
                // Unknown jump to Block 0x8639d. Refer to 3-address code (TAC);
            } else {
                v19, v20, v3 = v21, v5 = v22, v7 = v23, v9 = v24, v11 = v25, v13 = v26, v15 = v27, v17 = v28 = 0x16f9(varg0, 0x866a4, varg3, 0x8639d, varg4, 5395, varg6, varg6 >> 88 & 0xfffff, varg5, varg2, varg1);
                v26.word3 = int24(v19);
                // Unknown jump to Block 0x8639d. Refer to 3-address code (TAC);
            }
        } else {
            v29, v30, v3 = v31, v5 = v32, v7 = v33, v9 = v34, v11 = v35, v13 = v36, v15 = v37, v17 = v38 = 0x14fe(varg2, 0x863cc, varg3, 0x8639d, varg4, 5395, varg6, varg6 >> 88 & 0xfffff, varg5, 0, varg1);
            v36.word3 = int24(v29);
        }
        MEM[v13 + 128] = address(v3);
        v39 = v40 = 0x235f();
        v40.word0 = 0;
        v40.word1 = 0;
        v40.word2 = v13;
        v40.word3 = 0;
        v41 = new struct(3);
        v41.word1 = keccak256(MEM[v151a_0x0.word2:v151a_0x0.word2 + 160]);
        v41.word2 = 6;
        v41.word0 = 64;
        require(!((v41 + 96 > uint64.max) | (v41 + 96 < v41)), Panic(65)); // failed memory allocation (too much memory)
        v42 = v41.word0.length;
        v43 = v44 = keccak256(keccak256(MEM[v151a_0x0.word2:v151a_0x0.word2 + 160]), 6);
        v45 = v46 = MEM[64];
        v47 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v44).gas(msg.gas);
        if (v47) {
            v39 = v48 = 32;
            v49 = v50 = 14515;
            v51 = v52 = 0;
            if (v47) {
                v53 = v54 = 14662;
                if (v48 <= RETURNDATASIZE()) {
                    require(!((v46 + 32 > uint64.max) | (v46 + 32 < v46)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v46 + 32;
                    v55 = v56 = v46 + v48;
                }
            }
            MEM[v39] = address(v51);
            require(v43 <= v43 + 3, Panic(17)); // arithmetic overflow or underflow
            v45 = v57 = MEM[64];
            v58 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v43 + 3).gas(msg.gas);
            if (v58) {
                v43 = v59 = uint128.max;
                v49 = v60 = 32;
                v39 = v61 = 0x879cd;
                v51 = v62 = 0;
                if (v58) {
                    v53 = 14633;
                    if (v60 <= RETURNDATASIZE()) {
                        require(!((v57 + 32 > uint64.max) | (v57 + 32 < v57)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v57 + 32;
                        v55 = v63 = v57 + v60;
                    }
                }
            }
            MEM[v39 + v49] = uint128(v51 & v43);
            v64 = 0x235f();
            v64.word0 = 0;
            v64.word1 = 0;
            v64.word2 = address(v9);
            v64.word3 = 1;
            0x41f9(v64);
            v65 = 0x4217(address(v64.word2));
            v64.word1 = uint128(v65);
            if (v17) {
                v39 = v66 = address(v15) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v67, /* uint256 */ v68 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v67, MEM[64], RETURNDATASIZE());
            v68 = v69 = 0;
            if (v67) {
                v70 = 32;
                if (32 > RETURNDATASIZE()) {
                    v70 = v71 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v70 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v70 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v70 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v70 - MEM[64] >= 32);
                v72 = this.balance;
            } else {
                v72 = v73 = this.balance;
            }
            require(v68 <= v68 + v72, Panic(17)); // arithmetic overflow or underflow
            if (!v39) {
                if (address(MEM[v11]) >= address(v64.word0)) {
                    0x4476(v68 + v72, v64, v11, 5433, 0, v7, 0, v40, v15);
                    exit;
                } else {
                    0x42b7(v68 + v72, v11, v64, 5433, v7, 0, 0, v40, v15);
                    exit;
                }
            } else {
                v74 = 0x45c9(uint192.max + 1, 0, address(MEM[v11]));
                if (address(v64.word0) <= v74) {
                    0x4746(v68 + v72, v64, v11, 5433, 0, v7, 0, v40, v15);
                    exit;
                } else {
                    0x4638(v68 + v72, v11, v64, 5433, v7, 0, 0, v40, v15);
                    exit;
                }
            }
            require(!((v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v45 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v55 = v75 = v45 + RETURNDATASIZE();
            require(v55 - v45 >= 32);
            v51 = v76 = MEM[v45];
            // Unknown jump to Block ['0x3929B0x151b', '0x3946B0x151b']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x151b. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x6f5aeea3(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    v0, /* uint256 */ v1 = address(varg0).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v3 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v3 = v4 = MEM[64] + 32;
        }
        require(v3 - MEM[64] >= 32);
    }
    require(v1 - 1 <= v1, Panic(17)); // arithmetic overflow or underflow
    0x494b(varg0, v1 - 1);
}

function 0x1179(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, struct(4) varg10, uint256 varg11) private { 
    if (!varg11) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7 = 0xf97(v0, 0x8613e, varg6, varg1, varg2, varg3, varg4, varg5);
            v7.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, varg7, varg8, varg9, varg10, varg11, v0;
        } else {
            v8, v9, v10, v11, v12, v13, v14 = 0xf97(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x86113, varg6, varg1, varg2, varg3, varg4, varg5);
            v14.word2 = uint24(v8);
            return v10, v11, v12, v13, v14, varg7, varg8, varg9, varg10, varg11, v0;
        }
    } else {
        v15, v16, v17, v18, v19, v20, v21 = 0xf97(v0, 0x85fe9, varg6, varg1, varg2, varg3, varg4, varg5);
        v21.word2 = uint24(v15);
        return v17, v18, v19, v20, v21, varg7, varg8, varg9, varg10, varg11, v0;
    }
}

function 0x652d1525(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        if (!varg1) {
            v1 = address(varg0);
            v2.word4 = address(v1);
            // Unknown jump to Block 0x1221. Refer to 3-address code (TAC);
        } else {
            v3 = address(varg0);
            v4.word4 = address(v3);
        }
        v5 = v6 = 0x235f();
        v6.word0 = 0;
        v6.word1 = 0;
        v6.word2 = v7;
        v6.word3 = 0;
        v8 = new struct(3);
        v8.word1 = keccak256(MEM[v1228_0x0.word2:v1228_0x0.word2 + 160]);
        v8.word2 = 6;
        v8.word0 = 64;
        require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
        v9 = v8.word0.length;
        v10 = v11 = keccak256(keccak256(MEM[v1228_0x0.word2:v1228_0x0.word2 + 160]), 6);
        v12 = v13 = MEM[64];
        v14 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v11).gas(msg.gas);
        if (v14) {
            v5 = v15 = 32;
            v16 = v17 = 14515;
            v18 = v19 = 0;
            if (v14) {
                v20 = v21 = 14662;
                if (v15 <= RETURNDATASIZE()) {
                    require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v13 + 32;
                    v22 = v23 = v13 + v15;
                }
            }
            MEM[v5] = address(v18);
            require(v10 <= v10 + 3, Panic(17)); // arithmetic overflow or underflow
            v12 = v24 = MEM[64];
            v25 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v10 + 3).gas(msg.gas);
            if (v25) {
                v10 = v26 = uint128.max;
                v16 = v27 = 32;
                v5 = v28 = 0x879cd;
                v18 = v29 = 0;
                if (v25) {
                    v20 = 14633;
                    if (v27 <= RETURNDATASIZE()) {
                        require(!((v24 + 32 > uint64.max) | (v24 + 32 < v24)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v24 + 32;
                        v22 = v30 = v24 + v27;
                    }
                }
            }
            MEM[v5 + v16] = uint128(v18 & v10);
            v31, v32 = 0x3960(v33);
            v34 = 0x236e();
            v34.word0 = v32;
            v34.word1 = v31;
            if (v35) {
                v36 = v37 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 > v38;
            }
            v39, /* uint256 */ v40 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v39, MEM[64], RETURNDATASIZE());
            v40 = v41 = 0;
            if (v39) {
                v42 = 32;
                if (32 > RETURNDATASIZE()) {
                    v42 = v43 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v42 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v42 - MEM[64] >= 32);
                v44 = this.balance;
            } else {
                v44 = v45 = this.balance;
            }
            require(v40 <= v40 + v44, Panic(17)); // arithmetic overflow or underflow
            if (!v36) {
                v46 = v47 = address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word0 < v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192);
                if (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word0 >= v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192)) {
                    v46 = v48 = address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word0 == v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192);
                    if (v48) {
                        v46 = v49 = address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word0 < v34.word1 << 192;
                    }
                }
                require(0 == v46, Error('V2TF_V4FT'));
                revert(Error('V4TF_V2FT'));
            } else {
                v50 = v51 = v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word1;
                if (v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) >= address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word1) {
                    v50 = v52 = v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) == address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 - (address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1 % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1) + (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max - address(MEM[0x1247]) * address(MEM[0x1247]) - (address(MEM[0x1247]) * address(MEM[0x1247]) % uint256.max < address(MEM[0x1247]) * address(MEM[0x1247]))) * v34.word1;
                    if (v52) {
                        v50 = v53 = v34.word0 << 192 < address(MEM[0x1247]) * address(MEM[0x1247]) * v34.word1;
                    }
                }
                if (0 == v50) {
                    0x3f69(v40 + v44, v33, v34, 4679, v6, 0xfffff & v6 >> 108, v54, 0xfffff & v6 >> 128, v36, v55);
                    exit;
                } else {
                    0x3e8e(v40 + v44, 4679, v33, v34, v6, v54, 0xfffff & v6 >> 108, 0xfffff & v6 >> 128, v36, v55);
                    exit;
                }
            }
            require(!((v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v22 = v56 = v12 + RETURNDATASIZE();
            require(v22 - v12 >= 32);
            v18 = v57 = MEM[v12];
            // Unknown jump to Block ['0x3929B0x1229', '0x3946B0x1229']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x1229. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x61b7fd77(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(bool(varg2) - varg2));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        v1 = 0x235f();
        v1.word0 = 0;
        v1.word1 = 0;
        v1.word2 = address(varg0);
        v1.word3 = 1;
        0x41f9(v1);
        v2, /* uint128 */ v3 = address(v1.word2).liquidity().gas(msg.gas);
        require((RETURNDATASIZE() > 15) & v2);
        v1.word1 = uint128(v3);
        if (!varg2) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v4, v5, v6 = v7, v8 = v9, v10 = v11, v12 = v13, v14 = v15, v16 = v17, v18 = v19, v20 = v21, v22 = v23 = 0x1179(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x86192, varg4, 0x85f91, varg5, 4071, varg3, varg6, varg6 >> 88 & 0xfffff, 0xfffff & varg6 >> 108, v1, varg2);
                v11.word3 = int24(v4);
                // Unknown jump to Block 0x85f91. Refer to 3-address code (TAC);
            } else {
                v24, v25, v6 = v26, v8 = v27, v10 = v28, v12 = v29, v14 = v30, v16 = v31, v18 = v32, v20 = v33, v22 = v34 = 0x1179(varg1, 0x86169, varg4, 0x85f91, varg5, 4071, varg3, varg6, varg6 >> 88 & 0xfffff, 0xfffff & varg6 >> 108, v1, varg2);
                v28.word3 = int24(v24);
                // Unknown jump to Block 0x85f91. Refer to 3-address code (TAC);
            }
        } else {
            v35, v36, v6 = v37, v8 = v38, v10 = v39, v12 = v40, v14 = v41, v16 = v42, v18 = v43, v20 = v44, v22 = v45 = 0xf8c(varg3, 0x85fc0, varg4, 0x85f91, varg5, 4071, 0, varg6, varg6 >> 88 & 0xfffff, 0xfffff & varg6 >> 108, v1, varg2);
            v39.word3 = int24(v35);
        }
        MEM[v10 + 128] = address(v6);
        v46 = v47 = 0x235f();
        v47.word0 = 0;
        v47.word1 = 0;
        v47.word2 = v10;
        v47.word3 = 0;
        v48 = new struct(3);
        v48.word1 = keccak256(MEM[vfee_0x0.word2:vfee_0x0.word2 + 160]);
        v48.word2 = 6;
        v48.word0 = 64;
        require(!((v48 + 96 > uint64.max) | (v48 + 96 < v48)), Panic(65)); // failed memory allocation (too much memory)
        v49 = v48.word0.length;
        v50 = v51 = keccak256(keccak256(MEM[vfee_0x0.word2:vfee_0x0.word2 + 160]), 6);
        v52 = v53 = MEM[64];
        v54 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v51).gas(msg.gas);
        if (v54) {
            v46 = v55 = 32;
            v56 = v57 = 14515;
            v58 = v59 = 0;
            if (v54) {
                v60 = v61 = 14662;
                if (v55 <= RETURNDATASIZE()) {
                    require(!((v53 + 32 > uint64.max) | (v53 + 32 < v53)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v53 + 32;
                    v62 = v63 = v53 + v55;
                }
            }
            MEM[v46] = address(v58);
            require(v50 <= v50 + 3, Panic(17)); // arithmetic overflow or underflow
            v52 = v64 = MEM[64];
            v65 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v50 + 3).gas(msg.gas);
            if (v65) {
                v50 = v66 = uint128.max;
                v56 = v67 = 32;
                v46 = v68 = 0x879cd;
                v58 = v69 = 0;
                if (v65) {
                    v60 = 14633;
                    if (v67 <= RETURNDATASIZE()) {
                        require(!((v64 + 32 > uint64.max) | (v64 + 32 < v64)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v64 + 32;
                        v62 = v70 = v64 + v67;
                    }
                }
            }
            MEM[v46 + v56] = uint128(v58 & v50);
            if (v22) {
                v18 = v71 = address(v20) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v72, /* uint256 */ v73 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v72, MEM[64], RETURNDATASIZE());
            v73 = v74 = 0;
            if (v72) {
                v75 = 32;
                if (32 > RETURNDATASIZE()) {
                    v75 = v76 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v75 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v75 - MEM[64] >= 32);
                v77 = this.balance;
            } else {
                v77 = v78 = this.balance;
            }
            require(v73 <= v73 + v77, Panic(17)); // arithmetic overflow or underflow
            if (!v18) {
                if (address(MEM[v16]) >= address(MEM[0x100d])) {
                    0x42b7(v73 + v77, 4109, v16, v47, v14, v12, 0xfffff & v47 >> 128, v18, v20);
                    exit;
                } else {
                    0x4476(v73 + v77, v16, 4109, v47, v12, v14, 0xfffff & v47 >> 128, v18, v20);
                    exit;
                }
            } else {
                v79 = 0x45c9(uint192.max + 1, 0, address(MEM[0x100d]));
                if (address(MEM[v16]) >= v79) {
                    0x4638(v73 + v77, 4109, v16, v47, v14, v12, 0xfffff & v47 >> 128, v18, v20);
                    exit;
                } else {
                    0x4746(v73 + v77, v16, 4109, v47, v12, v14, 0xfffff & v47 >> 128, v18, v20);
                    exit;
                }
            }
            require(!((v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v52 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v62 = v80 = v52 + RETURNDATASIZE();
            require(v62 - v52 >= 32);
            v58 = v81 = MEM[v52];
            // Unknown jump to Block ['0x3929B0xfef', '0x3946B0xfef']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0xfef. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x11e4(int24 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint24 varg8, uint256 varg9) private { 
    v0 = 0x2350();
    v0.word0 = varg4;
    v0.word1 = address(v1);
    v0.word2 = varg8;
    v0.word3 = varg0;
    return varg2, varg3, v0, varg5, varg6, varg7, address(v1), varg9, v1;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + data]) {
        if (msg.data[4 + data] - 32) {
            require(!(msg.data[4 + data] - 160), Error(0x3f3f3f));
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 160);
            require(!(address(data.word1) - data.word1));
            require(!(bool(data.word2) - data.word2));
            require(!(data.word3 - uint24(data.word3)));
            require(!(data.word4 - int24(data.word4)));
            require(!(address(data.word5) - data.word5));
            if (0 == data.word2) {
                v1 = v2 = amount1Delta > 0;
            } else {
                v1 = 1;
            }
            if (0 != amount0Delta > 0) {
            }
            v3 = new struct(9);
            v4 = v3.data;
            v3.word1 = msg.sender;
            v3.word2 = address(data.word1);
            v3.word3 = bool(data.word2);
            v3.word4 = uint24(data.word3);
            v3.word5 = int24(data.word4);
            v3.word6 = address(data.word5);
            v3.word7 = bool(v1);
            v3.word8 = v5;
            v3.word0 = uint8.max + 1;
            require(!((v3 + 288 > uint64.max) | (v3 + 288 < v3)), Panic(65)); // failed memory allocation (too much memory)
            v6 = new bytes[](v3.word0.length);
            MCOPY(v6.data, v3.data, v3.word0.length);
            v6[v3.word0.length] = 0;
            v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            if (v7) {
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](v8.length);
                    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v9.data, v8.data, v8.length);
                    v9[v8.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
        } else {
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
            require(!(bool(data.word1) - data.word1));
            if (amount0Delta > 0) {
            }
            if (!data.word1) {
                0x48a4(msg.sender, v5);
                exit;
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v10 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v5).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v11 = new bytes[](68);
                    MEM[v11.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 36] = msg.sender;
                    MEM[v11 + 68] = v5;
                    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v11.length;
                    v13 = v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v5).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v16 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v16 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        v15 = v18.data;
                        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
                    }
                    if (v14) {
                        v13 = !MEM[v16];
                        if (bool(MEM[v16])) {
                            require(v16 + MEM[v16] - v16 >= 32);
                            v13 = v19 = MEM[v16 + 32];
                            require(!(bool(v19) - v19));
                        }
                    }
                    require(v13, Error(21574));
                    exit;
                }
            }
        }
        v20 = RETURNDATASIZE();
        revert(v21, v21, v21, v21, v21, v21, v21, v21, v21, v21, 0);
    } else if (amount0Delta <= 0) {
        0x48a4(msg.sender, amount1Delta);
        exit;
    } else {
        0x48a4(msg.sender, amount0Delta);
        exit;
    }
}

function 0x4cca2d18(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint24 varg6, int24 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg8) - varg8));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg9);
    if (!v0) {
        if (!varg1) {
            if (address(varg0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v1 = v3 = 0;
        }
        if (!varg1) {
            if (address(varg0) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v5 = 0x2350();
        v5.word0 = address(v1);
        v5.word1 = address(v1);
        v5.word2 = varg2;
        v5.word3 = varg3;
        v5.word4 = address(varg4);
        v6 = v7 = 0x235f();
        v7.word0 = 0;
        v7.word1 = 0;
        v7.word2 = v5;
        v7.word3 = 0;
        v8 = new struct(3);
        v8.word1 = keccak256(MEM[vbf7_0x0.word2:vbf7_0x0.word2 + 160]);
        v8.word2 = 6;
        v8.word0 = 64;
        require(!((v8 + 96 > uint64.max) | (v8 + 96 < v8)), Panic(65)); // failed memory allocation (too much memory)
        v9 = v8.word0.length;
        v10 = v11 = keccak256(keccak256(MEM[vbf7_0x0.word2:vbf7_0x0.word2 + 160]), 6);
        v12 = v13 = MEM[64];
        v14 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v11).gas(msg.gas);
        if (v14) {
            v6 = v15 = 32;
            v16 = v17 = 14515;
            v18 = v19 = 0;
            if (v14) {
                v20 = v21 = 14662;
                if (v15 <= RETURNDATASIZE()) {
                    require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v13 + 32;
                    v22 = v23 = v13 + v15;
                }
            }
            MEM[v6] = address(v18);
            require(v10 <= v10 + 3, Panic(17)); // arithmetic overflow or underflow
            v12 = v24 = MEM[64];
            v25 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v10 + 3).gas(msg.gas);
            if (v25) {
                v10 = v26 = uint128.max;
                v16 = v27 = 32;
                v6 = v28 = 0x879cd;
                v18 = v29 = 0;
                if (v25) {
                    v20 = 14633;
                    if (v27 <= RETURNDATASIZE()) {
                        require(!((v24 + 32 > uint64.max) | (v24 + 32 < v24)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v24 + 32;
                        v22 = v30 = v24 + v27;
                    }
                }
            }
            MEM[v6 + v16] = uint128(v18 & v10);
            if (!varg1) {
                if (address(varg5) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                    v31, v32, v33 = v34, v35 = v36, v37 = v38, v39 = v40, v41 = v42, v43 = v44, v45 = v46, v47 = v48, v49 = v50 = 0xe2b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x85ec1, 3096, 0x85d20, 0xfffff & varg9 >> 88, 3149, varg7, varg9, 0xfffff & varg7 >> 108, varg8, varg6, varg1);
                    v44.word3 = int24(v31);
                    // Unknown jump to Block 0x85d20. Refer to 3-address code (TAC);
                } else {
                    v51, v52, v33 = v53, v35 = v54, v37 = v55, v39 = v56, v41 = v57, v43 = v58, v45 = v59, v47 = v60, v49 = v61 = 0xe2b(varg5, 0x85e98, 3096, 0x85d20, 0xfffff & varg9 >> 88, 3149, varg7, varg9, 0xfffff & varg7 >> 108, varg8, varg6, varg1);
                    v58.word3 = int24(v51);
                    // Unknown jump to Block 0x85d20. Refer to 3-address code (TAC);
                }
            } else {
                v62, v63, v33 = v64, v35 = v65, v37 = v66, v39 = v67, v41 = v68, v43 = v69, v45 = v70, v47 = v71, v49 = v72 = 0xc37(varg8, 0x85d4f, 3096, 0x85d20, 0xfffff & varg9 >> 88, 3149, varg7, varg9, 0xfffff & varg7 >> 108, 0, varg6, varg1);
                v69.word3 = int24(v62);
            }
            MEM[v43 + 128] = address(v33);
            v45 = v73 = 0x235f();
            v73.word0 = 0;
            v73.word1 = 0;
            v73.word2 = v43;
            v73.word3 = 0;
            v74 = new struct(3);
            v74.word1 = keccak256(MEM[vc54_0x0.word2:vc54_0x0.word2 + 160]);
            v74.word2 = 6;
            v74.word0 = 64;
            require(!((v74 + 96 > uint64.max) | (v74 + 96 < v74)), Panic(65)); // failed memory allocation (too much memory)
            v75 = v74.word0.length;
            v76 = v77 = keccak256(keccak256(MEM[vc54_0x0.word2:vc54_0x0.word2 + 160]), 6);
            v78 = v79 = MEM[64];
            v80 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v77).gas(msg.gas);
            if (v80) {
                v45 = v81 = 32;
                v82 = v83 = 14515;
                v84 = v85 = 0;
                if (v80) {
                    v86 = v87 = 14662;
                    if (v81 <= RETURNDATASIZE()) {
                        require(!((v79 + 32 > uint64.max) | (v79 + 32 < v79)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v79 + 32;
                        v88 = v89 = v79 + v81;
                    }
                }
                MEM[v45] = address(v84);
                require(v76 <= v76 + 3, Panic(17)); // arithmetic overflow or underflow
                v78 = v90 = MEM[64];
                v91 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v76 + 3).gas(msg.gas);
                if (v91) {
                    v76 = v92 = uint128.max;
                    v82 = v93 = 32;
                    v45 = v94 = 0x879cd;
                    v84 = v95 = 0;
                    if (v91) {
                        v86 = 14633;
                        if (v93 <= RETURNDATASIZE()) {
                            require(!((v90 + 32 > uint64.max) | (v90 + 32 < v90)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v90 + 32;
                            v88 = v96 = v90 + v93;
                        }
                    }
                }
                MEM[v45 + v82] = uint128(v84 & v76);
                v45 = v97 = bool(v73) != bool(v45);
                if (v97) {
                    v45 = v98 = address(v47) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
                v99, /* uint256 */ v100 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                require(v99, MEM[64], RETURNDATASIZE());
                v100 = v101 = 0;
                if (v99) {
                    v102 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v102 = v103 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v102 - MEM[64] >= 32);
                    v104 = this.balance;
                } else {
                    v104 = v105 = this.balance;
                }
                require(v100 <= v100 + v104, Panic(17)); // arithmetic overflow or underflow
                if (!v45) {
                }
                require(!v45, Error('reverse V41'));
                if (!v45) {
                }
                require(!v45, Error('reverse V42'));
                if (address(MEM[v49]) <= address(MEM[v41])) {
                    0x40c7(v100 + v104, v41, v49, 3187, v39, v37, 0, v45, v73, v47);
                    exit;
                } else {
                    0x40c7(v100 + v104, v49, v41, 3187, v37, v39, 0, v73, v45, v47);
                    exit;
                }
                require(!((v78 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v78 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v78)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v78 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v88 = v106 = v78 + RETURNDATASIZE();
                require(v88 - v78 >= 32);
                v84 = v107 = MEM[v78];
                // Unknown jump to Block ['0x3929B0xc55', '0x3946B0xc55']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x3902B0xc55. Refer to 3-address code (TAC);
            }
            revert(MEM[64], RETURNDATASIZE());
            require(!((v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v12 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v22 = v108 = v12 + RETURNDATASIZE();
            require(v22 - v12 >= 32);
            v18 = v109 = MEM[v12];
            // Unknown jump to Block ['0x3929B0xbf8', '0x3946B0xbf8']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0xbf8. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x2c2f9ced() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function 0x25edf1c2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(this.balance - 1 <= this.balance, Panic(17)); // arithmetic overflow or underflow
    v0, /* uint256 */ v1 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(this.balance - 1).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
}

function 0x251ac7cd(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(bool(varg2) - varg2));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        v1, v2 = 0x3960(varg0);
        v3 = 0x236e();
        v3.word0 = v2;
        v3.word1 = v1;
        if (!varg2) {
            v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        } else {
            v4 = v6 = 0;
        }
        v7 = v8 = address(varg1);
        v9 = 0x2350();
        v9.word0 = address(v4);
        v9.word1 = address(v8);
        v9.word2 = varg3;
        v9.word3 = varg4;
        v9.word4 = address(varg5);
        v10 = v11 = 0x235f();
        v11.word0 = 0;
        v11.word1 = 0;
        v11.word2 = v9;
        v11.word3 = 0;
        v12 = new struct(3);
        v12.word1 = keccak256(MEM[v896_0x0.word2:v896_0x0.word2 + 160]);
        v12.word2 = 6;
        v12.word0 = 64;
        require(!((v12 + 96 > uint64.max) | (v12 + 96 < v12)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v12.word0.length;
        v14 = v15 = keccak256(keccak256(MEM[v896_0x0.word2:v896_0x0.word2 + 160]), 6);
        v16 = v17 = MEM[64];
        v18 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v15).gas(msg.gas);
        if (v18) {
            v10 = v19 = 32;
            v20 = v21 = 14515;
            v22 = v23 = 0;
            if (v18) {
                v24 = v25 = 14662;
                if (v19 <= RETURNDATASIZE()) {
                    require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v17 + 32;
                    v26 = v27 = v17 + v19;
                }
            }
            MEM[v10] = address(v22);
            require(v14 <= v14 + 3, Panic(17)); // arithmetic overflow or underflow
            v16 = v28 = MEM[64];
            v29 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v14 + 3).gas(msg.gas);
            if (v29) {
                v14 = v30 = uint128.max;
                v20 = v31 = 32;
                v10 = v32 = 0x879cd;
                v22 = v33 = 0;
                if (v29) {
                    v24 = 14633;
                    if (v31 <= RETURNDATASIZE()) {
                        require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v28 + 32;
                        v26 = v34 = v28 + v31;
                    }
                }
            }
            MEM[v10 + v20] = uint128(v22 & v14);
            if (varg1) {
                v7 = v35 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 > 0xfffff & varg6 >> 108;
            }
            v36, /* uint256 */ v37 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v36, MEM[64], RETURNDATASIZE());
            v37 = v38 = 0;
            if (v36) {
                v39 = 32;
                if (32 > RETURNDATASIZE()) {
                    v39 = v40 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v39 - MEM[64] >= 32);
                v41 = this.balance;
            } else {
                v41 = v42 = this.balance;
            }
            require(v37 <= v37 + v41, Panic(17)); // arithmetic overflow or underflow
            if (!v7) {
                v43 = v44 = address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] > MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192);
                if (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] <= MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192)) {
                    v43 = v45 = address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] == MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192);
                    if (v45) {
                        v43 = v46 = address(v3.word0) * address(v3.word0) * MEM[2229] > MEM[varg0] << 192;
                    }
                }
                require(0 == v43, Error('V4TF_V2FT'));
                revert(Error('V2FT_V4TF'));
            } else {
                v47 = v48 = address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] < MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192);
                if (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] >= MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192)) {
                    v47 = v49 = address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[2229] - (address(v3.word0) * address(v3.word0) * MEM[2229] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[2229]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[2229] == MEM[varg0] * (uint192.max + 1) % uint256.max - (MEM[varg0] << 192) - (MEM[varg0] * (uint192.max + 1) % uint256.max < MEM[varg0] << 192);
                    if (v49) {
                        v47 = v50 = address(v3.word0) * address(v3.word0) * MEM[2229] < MEM[varg0] << 192;
                    }
                }
                if (0 == v47) {
                    0x3e8e(v37 + v41, v3, v3 + 32, varg0, v11, varg6 >> 88 & 0xfffff, varg6, 0xfffff & v11 >> 128, v8, varg2);
                    exit;
                } else {
                    0x3f69(v37 + v41, v3 + 32, varg0, v3, v11, varg6, varg6 >> 88 & 0xfffff, 0xfffff & v11 >> 128, v8, varg2);
                    exit;
                }
            }
            require(!((v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v26 = v51 = v16 + RETURNDATASIZE();
            require(v26 - v16 >= 32);
            v22 = v52 = MEM[v16];
            // Unknown jump to Block ['0x3929B0x897', '0x3946B0x897']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x897. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x121ea95e(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        if (!varg1) {
            v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        } else {
            v1 = v3 = 0;
        }
        v4 = v5 = address(varg0);
        v6 = 0x2350();
        v6.word0 = address(v1);
        v6.word1 = address(v5);
        v6.word2 = varg2;
        v6.word3 = varg3;
        v6.word4 = address(varg4);
        v7 = v8 = 0x235f();
        v8.word0 = 0;
        v8.word1 = 0;
        v8.word2 = v6;
        v8.word3 = 0;
        v9 = new struct(3);
        v9.word1 = keccak256(MEM[v286_0x0.word2:v286_0x0.word2 + 160]);
        v9.word2 = 6;
        v9.word0 = 64;
        require(!((v9 + 96 > uint64.max) | (v9 + 96 < v9)), Panic(65)); // failed memory allocation (too much memory)
        v10 = v9.word0.length;
        v11 = v12 = keccak256(keccak256(MEM[v286_0x0.word2:v286_0x0.word2 + 160]), 6);
        v13 = v14 = MEM[64];
        v15 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v12).gas(msg.gas);
        if (v15) {
            v7 = v16 = 32;
            v17 = v18 = 14515;
            v19 = v20 = 0;
            if (v15) {
                v21 = v22 = 14662;
                if (v16 <= RETURNDATASIZE()) {
                    require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v14 + 32;
                    v23 = v24 = v14 + v16;
                }
            }
            MEM[v7] = address(v19);
            require(v11 <= v11 + 3, Panic(17)); // arithmetic overflow or underflow
            v13 = v25 = MEM[64];
            v26 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v11 + 3).gas(msg.gas);
            if (v26) {
                v11 = v27 = uint128.max;
                v17 = v28 = 32;
                v7 = v29 = 0x879cd;
                v19 = v30 = 0;
                if (v26) {
                    v21 = 14633;
                    if (v28 <= RETURNDATASIZE()) {
                        require(!((v25 + 32 > uint64.max) | (v25 + 32 < v25)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v25 + 32;
                        v23 = v31 = v25 + v28;
                    }
                }
            }
            MEM[v7 + v17] = uint128(v19 & v11);
            v32, v33 = 0x3960(varg1);
            v34 = 0x236e();
            v34.word0 = v33;
            v34.word1 = v32;
            if (varg0) {
                v4 = v35 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 > varg6;
            }
            v36, /* uint256 */ v37 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v36, MEM[64], RETURNDATASIZE());
            v37 = v38 = 0;
            if (v36) {
                v39 = 32;
                if (32 > RETURNDATASIZE()) {
                    v39 = v40 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v39 - MEM[64] >= 32);
            }
            require(v37 <= v37 + this.balance, Panic(17)); // arithmetic overflow or underflow
            if (!v4) {
                v41 = v42 = address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 - (address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max < address(MEM[varg5]) * address(MEM[varg5]) * v34.word0) + (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) - (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max < address(MEM[varg5]) * address(MEM[varg5]))) * v34.word0 > v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192);
                if (address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 - (address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max < address(MEM[varg5]) * address(MEM[varg5]) * v34.word0) + (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) - (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max < address(MEM[varg5]) * address(MEM[varg5]))) * v34.word0 <= v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192)) {
                    v41 = v43 = address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 - (address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 % uint256.max < address(MEM[varg5]) * address(MEM[varg5]) * v34.word0) + (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max - address(MEM[varg5]) * address(MEM[varg5]) - (address(MEM[varg5]) * address(MEM[varg5]) % uint256.max < address(MEM[varg5]) * address(MEM[varg5]))) * v34.word0 == v34.word1 * (uint192.max + 1) % uint256.max - (v34.word1 << 192) - (v34.word1 * (uint192.max + 1) % uint256.max < v34.word1 << 192);
                    if (v43) {
                        v41 = v44 = address(MEM[varg5]) * address(MEM[varg5]) * v34.word0 > v34.word1 << 192;
                    }
                }
                if (0 == v41) {
                    0x3bbe(v37 + this.balance, varg1, v34, varg5, 0xfffff & varg6 >> 88, 0xfffff & (0xfffff & varg6 >> 88) >> 108, 679, 0xfffff & (0xfffff & varg6 >> 88) >> 128, v5, varg1);
                    exit;
                } else {
                    0x3d42(v37 + this.balance, varg5, varg1, v34, 0xfffff & varg6 >> 88, 679, 0xfffff & (0xfffff & varg6 >> 88) >> 108, 0xfffff & (0xfffff & varg6 >> 88) >> 128, v5, varg1);
                    exit;
                }
            } else {
                v45 = (v34.word0 << 192) * v34.word1 % uint256.max - (v34.word0 << 192) * v34.word1 - ((v34.word0 << 192) * v34.word1 % uint256.max < (v34.word0 << 192) * v34.word1) + (v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192)) * v34.word1;
                v46 = v47 = v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) > v45;
                if (v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) <= v45) {
                    v46 = v48 = v34.word0 * (uint192.max + 1) % uint256.max - (v34.word0 << 192) - (v34.word0 * (uint192.max + 1) % uint256.max < v34.word0 << 192) == v45;
                    if (v48) {
                        v46 = v49 = v34.word0 << 192 > (v34.word0 << 192) * v34.word1;
                    }
                }
                require(0 == v46, Error('V2FT_V4FT'));
                revert(Error('V4TF_V2TF'));
            }
            require(!((v13 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v13 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v23 = v50 = v13 + RETURNDATASIZE();
            require(v23 - v13 >= 32);
            v19 = v51 = MEM[v13];
            // Unknown jump to Block ['0x3929B0x287', '0x3946B0x287']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x287. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0x14fe(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    if (!varg10) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 = 0xc42(v0, 0x86679, varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v10.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, v8, v9, v10, varg10, v0;
        } else {
            v11, v12, v13, v14, v15, v16, v17, v18, v19, v20 = 0xc42(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x8664e, varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v20.word2 = uint24(v11);
            return v13, v14, v15, v16, v17, v18, v19, v20, varg10, v0;
        }
    } else {
        v21 = 0x2350();
        v21.word0 = address(varg9);
        v21.word1 = address(v0);
        v21.word2 = uint24(varg0);
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, v21, varg10, v0;
    }
}

function 0x16f9(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    if (!varg10) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 = 0xc42(v0, 0x86679, varg9, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v10.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, v8, v9, v10, varg10, v0;
        } else {
            v11, v12, v13, v14, v15, v16, v17, v18, v19, v20 = 0xc42(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x8664e, varg9, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v20.word2 = uint24(v11);
            return v13, v14, v15, v16, v17, v18, v19, v20, varg10, v0;
        }
    } else {
        v21 = 0x2350();
        v21.word0 = address(varg0);
        v21.word1 = address(v0);
        v21.word2 = uint24(varg9);
        return varg2, varg3, varg4, varg5, varg6, varg7, varg8, v21, varg10, v0;
    }
}

function receive() public payable { 
}

function 0x2350() private { 
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x235f() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x236e() private { 
    v0 = new struct(2);
    require(!((v0 + 64 > uint64.max) | (v0 + 64 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x237d() private { 
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x23c8(uint256 varg0) private { 
    require(varg0 <= varg0 + 1000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1000;
}

function 0x23d7(uint256 varg0) private { 
    require(varg0 <= varg0 + 25000, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 25000;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x23f3(uint256 varg0) private { 
    require(10000 - varg0 <= 10000, Panic(17)); // arithmetic overflow or underflow
    return 10000 - varg0;
}

function 0x2403(uint256 varg0) private { 
    require(10 ** 6 - varg0 <= 10 ** 6, Panic(17)); // arithmetic overflow or underflow
    return 10 ** 6 - varg0;
}

function 0x2415(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x25ae(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x2679(int128 varg0, int128 varg1) private { 
    v0 = varg0 + varg1;
    require(!((v0 > int128.max) | (v0 < int128.min)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x360e(uint256 varg0) private { 
    v0 = varg0 >> 224;
    v1 = bool(varg0 >> 148);
    if (v1 - 1) {
        if (v1 - 4) {
            if (v1 - 2) {
                if (v1 - 5) {
                    if (v1 - 3) {
                        if (v1 - 6) {
                            if (v1 - 7) {
                                if (v1) {
                                    require(CHAINID() != 1);
                                    v2 = v3 = !v0;
                                    if (bool(v0)) {
                                        v2 = v4 = block.timestamp == v0;
                                    }
                                    if (v2) {
                                        v2 = v5 = address(block.coinbase) == block.coinbase;
                                        if (address(block.coinbase) != block.coinbase) {
                                            v2 = v6 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                            if (v6) {
                                                v2 = v7 = address(block.coinbase) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                            }
                                        }
                                    }
                                    require(v2, Error(50));
                                    v8 = v9 = uint72(varg0 >> 152);
                                } else {
                                    require(block.timestamp == v0, Error(50));
                                }
                            } else {
                                v10 = v11 = !v0;
                                if (bool(v0)) {
                                    v10 = v12 = block.timestamp == v0;
                                }
                                if (v10) {
                                    v10 = v13 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == block.coinbase;
                                    if (address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) != block.coinbase) {
                                        v10 = v14 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                        if (v14) {
                                            v10 = v15 = address(0xfb74767c1ce1aada0a0e114441173b57f8c1571b) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                        }
                                    }
                                }
                                require(v10, Error(50));
                                v8 = v16 = uint72(varg0 >> 152);
                            }
                        } else {
                            v17 = v18 = !v0;
                            if (bool(v0)) {
                                v17 = v19 = block.timestamp == v0;
                            }
                            if (v17) {
                                v17 = v20 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == block.coinbase;
                                if (address(0xa28b0ac939fc6baaadc79a94f425345c60463417) != block.coinbase) {
                                    v17 = v21 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                    if (v21) {
                                        v17 = v22 = address(0xa28b0ac939fc6baaadc79a94f425345c60463417) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                    }
                                }
                            }
                            require(v17, Error(50));
                            v8 = v23 = uint72(varg0 >> 152);
                        }
                    } else {
                        v24 = v25 = !v0;
                        if (bool(v0)) {
                            v24 = v26 = block.timestamp == v0;
                        }
                        if (v24) {
                            v24 = v27 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == block.coinbase;
                            if (address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) != block.coinbase) {
                                v24 = v28 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                                if (v28) {
                                    v24 = v29 = address(0x1f9090aae28b8a3dceadf281b0f12828e676c326) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                                }
                            }
                        }
                        require(v24, Error(50));
                        v8 = v30 = uint72(varg0 >> 152);
                    }
                } else {
                    v31 = v32 = !v0;
                    if (bool(v0)) {
                        v31 = v33 = block.timestamp == v0;
                    }
                    if (v31) {
                        v31 = v34 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == block.coinbase;
                        if (address(0x396343362be2a4da1ce0c1c210945346fb82aa49) != block.coinbase) {
                            v31 = v35 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                            if (v35) {
                                v31 = v36 = address(0x396343362be2a4da1ce0c1c210945346fb82aa49) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                            }
                        }
                    }
                    require(v31, Error(50));
                    v8 = v37 = uint72(varg0 >> 152);
                }
            } else {
                v38 = v39 = !v0;
                if (bool(v0)) {
                    v38 = v40 = block.timestamp == v0;
                }
                if (v38) {
                    v38 = v41 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == block.coinbase;
                    if (address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) != block.coinbase) {
                        v38 = v42 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                        if (v42) {
                            v38 = v43 = address(0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                        }
                    }
                }
                require(v38, Error(50));
                v8 = v44 = uint72(varg0 >> 152);
            }
        } else {
            v45 = v46 = !v0;
            if (bool(v0)) {
                v45 = v47 = block.timestamp == v0;
            }
            if (v45) {
                v45 = v48 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == block.coinbase;
                if (address(0xdadb0d80178819f2319190d340ce9a924f783711) != block.coinbase) {
                    v45 = v49 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                    if (v49) {
                        v45 = v50 = address(0xdadb0d80178819f2319190d340ce9a924f783711) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                    }
                }
            }
            require(v45, Error(50));
            v8 = v51 = uint72(varg0 >> 152);
        }
    } else {
        v52 = v53 = !v0;
        if (bool(v0)) {
            v52 = v54 = block.timestamp == v0;
        }
        if (v52) {
            v52 = v55 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == block.coinbase;
            if (address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) != block.coinbase) {
                v52 = v56 = 0xdadb0d80178819f2319190d340ce9a924f783711 == block.coinbase;
                if (v56) {
                    v52 = v57 = address(0x4838b106fce9647bdf1e7877bf73ce8b0bad5f97) == 0x95222290dd7278aa3ddd389cc1e1d165cc4bafe5;
                }
            }
        }
        require(v52, Error(50));
        v8 = v58 = uint72(varg0 >> 152);
    }
    if (!(block.coinbase.balance - v8)) {
        _uniswapV3SwapCallback = 0;
        if (this.balance) {
            v59, /* uint256 */ v60 = block.coinbase.call().value(1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v61 = v62 = new bytes[](RETURNDATASIZE());
                require(!((v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v62 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v62)), Panic(65)); // failed memory allocation (too much memory)
                v60 = v62.data;
                RETURNDATACOPY(v60, 0, RETURNDATASIZE());
            }
            return 1;
        } else {
            return 1;
        }
    }
    return 0;
}

function 0x3960(address varg0) private { 
    v0, /* uint112 */ v1, /* uint112 */ v2, v3 = varg0.getReserves().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v4 = 0;
    v2 = v5 = 0;
    if (v0) {
        v6 = v7 = 96;
        if (96 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v2 - uint112(v2)));
        require(!(uint32(v3) - v3));
    }
    return uint112(v2), uint112(v1);
}

function 0x3a4a(uint256 varg0) private { 
    require(!(20000 * varg0 / 20000 - varg0), Panic(17)); // arithmetic overflow or underflow
    return 20000 * varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x3bbe(uint256 varg0, address varg1, struct(2) varg2, struct(2) varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, bool varg8, address varg9) private { 
    v0 = 0x5629(varg2.word0, varg2.word1, varg5, address(varg3.word0), varg6);
    require(!v0, Error(0x696e66));
    v1 = _SafeMul(varg2.word0, varg2.word1);
    v2 = 0x568b(v1);
    v3 = 0x3c49(uint128(varg3.word1), uint128.max, v2, varg5, varg2.word1, address(varg3.word0), varg6, varg7);
    v4 = 0x23f3(varg5);
    v5 = new struct(14);
    v5.word1 = address(this);
    v5.word2 = varg9;
    v5.word3 = varg8;
    v5.word4 = uint24(MEM[MEM[varg3 + 64] + 64]);
    v5.word5 = int24(MEM[MEM[varg3 + 64] + 96]);
    v5.word6 = address(MEM[MEM[varg3 + 64] + 128]);
    v5.word7 = 0;
    v5.word8 = v3;
    v5.word9 = varg1;
    v5.word10 = varg2.word0;
    v5.word11 = varg2.word1;
    v5.word12 = uint24(v4);
    v5.word13 = 0;
    v5.word0 = 416;
    require(!((v5 + 448 > uint64.max) | (v5 + 448 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = new bytes[](v5.word0.length);
    MCOPY(v6.data, v5.data, v5.word0.length);
    v6[v5.word0.length] = 0;
    v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v7) {
        if (v7) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v9 = new bytes[](v8.length);
            require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v9.data, v8.data, v8.length);
            v9[v8.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v10, /* uint256 */ v11 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v10) {
            v11 = v12 = 0;
            if (v10) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v13 = v14 = MEM[64] + 32;
                }
                require(v13 - MEM[64] >= 32);
            }
            v15 = this.balance;
            v16 = _SafeAdd(v11, v15);
            v17 = _SafeSub(v16, varg0);
            if (!(0x3ff & varg4 >> 50)) {
                v18 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v19 = 0x23c8(v18);
                v20 = _SafeMul(varg4 & 0x3ffffffffffff, v19);
                require(v20 < v17, Error(52));
                v21 = 0x23c8(msg.gas);
                require(v21 >= msg.gas, Error(13665));
                v22 = _SafeSub(v17, v20);
                0x5e37(v16, v11, v22, varg4 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v23 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v24 = 0x23d7(v23);
                v25 = _SafeMul(varg4 & 0x3ffffffffffff, v24);
                require(v25 < v17, Error(52));
                v26 = _SafeSub(v17, v25);
                require(0x3ff & varg4 >> 50 <= 1000);
                v27 = _SafeMul(v26, 0x3ff & varg4 >> 50);
                v28 = _SafeSub(v26, v27 / 1000);
                v29 = 0;
                if (this.balance <= v27 / 1000) {
                    v30 = 0x2415(v11);
                    0x5f56(v30, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v29 = v31 = 1;
                }
                if (v27 / 1000) {
                    v32 = block.coinbase.call().value(v27 / 1000).gas(10000);
                }
                v33 = 0x23d7(msg.gas);
                require(v33 >= msg.gas, Error(13666));
                v34 = varg4 & 0x3ffffffffffff < 10 ** 9;
                if (v34) {
                    require(v16 - v27 / 1000 <= v16, Panic(17)); // arithmetic overflow or underflow
                    v34 = v35 = 10 ** 17 < v16 - v27 / 1000;
                }
                if (v34) {
                    v36 = 0x3a4a(varg4 & 0x3ffffffffffff);
                    v34 = v37 = v36 < v28;
                }
                if (v34) {
                    if (!v29) {
                        if (this.balance < v11) {
                            v38 = 0x2415(v11);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v38);
                        } else {
                            v39 = 0x2415(this.balance);
                            v40, /* uint256 */ v41 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v39).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v42 = v43 = new bytes[](RETURNDATASIZE());
                                require(!((v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v43)), Panic(65)); // failed memory allocation (too much memory)
                                v41 = v43.data;
                                RETURNDATACOPY(v41, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v44 = 0x2415(this.balance);
                        v45, /* uint256 */ v46 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v44).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v47 = v48 = new bytes[](RETURNDATASIZE());
                            require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                            v46 = v48.data;
                            RETURNDATACOPY(v46, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x3c49(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, address varg5, uint256 varg6, uint256 varg7) private { 
    v0 = varg0 & varg1;
    v1 = (varg3 << 91) * varg6 * varg4;
    v2 = 15625 * v0 * varg5 + (varg6 << 90) * varg4;
    v3 = varg3 * varg5;
    v4 = 0x5df1((v1 - varg7 * varg2 * 3125 * varg5) * v0 * 0x800000000000000000000000 % uint256.max - ((v1 - varg7 * varg2 * 3125 * varg5) * v0 << 95) - ((v1 - varg7 * varg2 * 3125 * varg5) * v0 * 0x800000000000000000000000 % uint256.max < (v1 - varg7 * varg2 * 3125 * varg5) * v0 << 95) + ((v1 - varg7 * varg2 * 3125 * varg5) * v0 % uint256.max - (v1 - varg7 * varg2 * 3125 * varg5) * v0 - ((v1 - varg7 * varg2 * 3125 * varg5) * v0 % uint256.max < (v1 - varg7 * varg2 * 3125 * varg5) * v0) + (0 - ((v1 < varg7 * varg2 * 3125 * varg5) + (varg7 * varg2 * 3125 * varg5 % uint256.max - varg7 * varg2 * 3125 * varg5 - (varg7 * varg2 * 3125 * varg5 % uint256.max < varg7 * varg2 * 3125 * varg5)))) * v0 << 95), (v1 - varg7 * varg2 * 3125 * varg5) * v0 << 95, v2 * v3 % uint256.max - v2 * v3 - (v2 * v3 % uint256.max < v2 * v3) + ((v2 < 15625 * v0 * varg5) + (15625 * v0 * varg5 % uint256.max - 15625 * v0 * varg5 - (15625 * v0 * varg5 % uint256.max < 15625 * v0 * varg5))) * v3, v2 * v3);
    return v4;
}

function 0x3d42(uint256 varg0, struct(2) varg1, address varg2, struct(2) varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, bool varg8, address varg9) private { 
    v0 = 0x5a78(address(varg1.word0), varg5, varg3.word0, varg3.word1, varg6);
    require(!v0, Error(0x696e66));
    v1 = _SafeMul(varg3.word0, varg3.word1);
    v2 = 0x568b(v1);
    v3 = address(varg1.word0) * varg7 * v2;
    v4 = varg6 * uint128(varg1.word1) * address(varg1.word0);
    v5 = 0x5df1(0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) * uint128(varg1.word1) % uint256.max - 0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) * uint128(varg1.word1) - (0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) * uint128(varg1.word1) % uint256.max < 0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) * uint128(varg1.word1)) + ((v3 - varg3.word0 * 0x186a0000000000000000000000000) * 0x186a0000000000000000000000000 % uint256.max - 0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) - ((v3 - varg3.word0 * 0x186a0000000000000000000000000) * 0x186a0000000000000000000000000 % uint256.max < 0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000)) + (address(varg1.word0) * varg7 * v2 % uint256.max - v3 - (address(varg1.word0) * varg7 * v2 % uint256.max < v3) - (v3 < varg3.word0 * 0x186a0000000000000000000000000)) * 0x186a0000000000000000000000000) * uint128(varg1.word1), 0x186a0000000000000000000000000 * (v3 - varg3.word0 * 0x186a0000000000000000000000000) * uint128(varg1.word1), (v4 + 0x2710000000000000000000000000 * varg3.word0) * (varg5 * address(varg1.word0)) % uint256.max - (v4 + 0x2710000000000000000000000000 * varg3.word0) * (varg5 * address(varg1.word0)) - ((v4 + 0x2710000000000000000000000000 * varg3.word0) * (varg5 * address(varg1.word0)) % uint256.max < (v4 + 0x2710000000000000000000000000 * varg3.word0) * (varg5 * address(varg1.word0))) + ((v4 + 0x2710000000000000000000000000 * varg3.word0 < v4) + (varg6 * uint128(varg1.word1) * address(varg1.word0) % uint256.max - v4 - (varg6 * uint128(varg1.word1) * address(varg1.word0) % uint256.max < v4))) * (varg5 * address(varg1.word0)), (v4 + 0x2710000000000000000000000000 * varg3.word0) * (varg5 * address(varg1.word0)));
    v6 = 0x23f3(varg6);
    v7 = new struct(14);
    v7.word1 = varg2;
    v7.word2 = varg9;
    v7.word3 = varg8;
    v7.word4 = uint24(MEM[MEM[varg1 + 64] + 64]);
    v7.word5 = int24(MEM[MEM[varg1 + 64] + 96]);
    v7.word6 = address(MEM[MEM[varg1 + 64] + 128]);
    v7.word7 = 1;
    v7.word8 = v5;
    v7.word9 = varg2;
    v7.word10 = varg3.word0;
    v7.word11 = varg3.word1;
    v7.word12 = uint24(v6);
    v7.word13 = 0;
    v7.word0 = 416;
    require(!((v7 + 448 > uint64.max) | (v7 + 448 < v7)), Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](v7.word0.length);
    MCOPY(v8.data, v7.data, v7.word0.length);
    v8[v7.word0.length] = 0;
    v9 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v8, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v9) {
        if (v9) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v11 = new bytes[](v10.length);
            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v10.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v11.data, v10.data, v10.length);
            v11[v10.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v12, /* uint256 */ v13 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v12) {
            v13 = v14 = 0;
            if (v12) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v15 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v15 = v16 = MEM[64] + 32;
                }
                require(v15 - MEM[64] >= 32);
            }
            v17 = this.balance;
            v18 = _SafeAdd(v13, v17);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg4 >> 50)) {
                v20 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v21 = 0x23c8(v20);
                v22 = _SafeMul(varg4 & 0x3ffffffffffff, v21);
                require(v22 < v19, Error(52));
                v23 = 0x23c8(msg.gas);
                require(v23 >= msg.gas, Error(13665));
                v24 = _SafeSub(v19, v22);
                0x5e37(v18, v13, v24, varg4 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v25 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v26 = 0x23d7(v25);
                v27 = _SafeMul(varg4 & 0x3ffffffffffff, v26);
                require(v27 < v19, Error(52));
                v28 = _SafeSub(v19, v27);
                require(0x3ff & varg4 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg4 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                v31 = 0;
                if (this.balance <= v29 / 1000) {
                    v32 = 0x2415(v13);
                    0x5f56(v32, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v31 = v33 = 1;
                }
                if (v29 / 1000) {
                    v34 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v35 = 0x23d7(msg.gas);
                require(v35 >= msg.gas, Error(13666));
                v36 = varg4 & 0x3ffffffffffff < 10 ** 9;
                if (v36) {
                    require(v18 - v29 / 1000 <= v18, Panic(17)); // arithmetic overflow or underflow
                    v36 = v37 = 10 ** 17 < v18 - v29 / 1000;
                }
                if (v36) {
                    v38 = 0x3a4a(varg4 & 0x3ffffffffffff);
                    v36 = v39 = v38 < v30;
                }
                if (v36) {
                    if (!v31) {
                        if (this.balance < v13) {
                            v40 = 0x2415(v13);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v40);
                        } else {
                            v41 = 0x2415(this.balance);
                            v42, /* uint256 */ v43 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v41).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v44 = v45 = new bytes[](RETURNDATASIZE());
                                require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v43 = v45.data;
                                RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v46 = 0x2415(this.balance);
                        v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v49 = v50 = new bytes[](RETURNDATASIZE());
                            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v48 = v50.data;
                            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x3e8e(uint256 varg0, struct(2) varg1, address varg2, struct(2) varg3, struct(4) varg4, uint256 varg5, uint256 varg6, uint256 varg7, bool varg8, address varg9) private { 
    v0 = 0x45c9(uint192.max + 1, 0, address(varg1.word0));
    v1 = 0x5b5b(v0, varg5, varg3.word0, varg3.word1, varg6);
    require(!v1, Error(0x696e66));
    v2 = _SafeMul(varg3.word0, varg3.word1);
    v3 = 0x568b(v2);
    v4 = ((varg7 << 91) * v3 - 3125 * v0 * varg3.word0) * (3125 * uint128(varg1.word1));
    v5 = ((varg6 << 92) * uint128(varg1.word1) + 625 * varg3.word0 * v0) * (varg5 << 90) % uint256.max;
    v6 = ((varg6 << 92) * uint128(varg1.word1) + 625 * varg3.word0 * v0) * (varg5 << 90);
    v7 = 0x5df1(v4 * v0 % uint256.max - v4 * v0 - (v4 * v0 % uint256.max < v4 * v0) + (((varg7 << 91) * v3 - 3125 * v0 * varg3.word0) * (3125 * uint128(varg1.word1)) % uint256.max - v4 - (((varg7 << 91) * v3 - 3125 * v0 * varg3.word0) * (3125 * uint128(varg1.word1)) % uint256.max < v4) + (0 - (((varg7 << 91) * v3 < 3125 * v0 * varg3.word0) + (3125 * v0 * varg3.word0 % uint256.max - 3125 * v0 * varg3.word0 - (3125 * v0 * varg3.word0 % uint256.max < 3125 * v0 * varg3.word0)))) * (3125 * uint128(varg1.word1))) * v0, v4 * v0, v5 - v6 - (v5 < v6) + (((varg6 << 92) * uint128(varg1.word1) + 625 * varg3.word0 * v0 < (varg6 << 92) * uint128(varg1.word1)) + (625 * varg3.word0 * v0 % uint256.max - 625 * varg3.word0 * v0 - (625 * varg3.word0 * v0 % uint256.max < 625 * varg3.word0 * v0))) * (varg5 << 90), v6);
    require(v7 != int256.min, Panic(17)); // arithmetic overflow or underflow
    v8 = 0x23f3(varg6);
    v9 = new struct(14);
    v9.word1 = varg2;
    v9.word2 = varg9;
    v9.word3 = varg8;
    v9.word4 = uint24(MEM[MEM[varg1 + 64] + 64]);
    v9.word5 = int24(MEM[MEM[varg1 + 64] + 96]);
    v9.word6 = address(MEM[MEM[varg1 + 64] + 128]);
    v9.word7 = 1;
    v9.word8 = 0 - v7;
    v9.word9 = varg2;
    v9.word10 = varg3.word0;
    v9.word11 = varg3.word1;
    v9.word12 = uint24(v8);
    v9.word13 = 0;
    v9.word0 = 416;
    require(!((v9 + 448 > uint64.max) | (v9 + 448 < v9)), Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](v9.word0.length);
    MCOPY(v10.data, v9.data, v9.word0.length);
    v10[v9.word0.length] = 0;
    v11 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v10, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v11) {
        if (v11) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v12.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v13 = new bytes[](v12.length);
            require(!((v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v12.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v13 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v12.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v13)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v12.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v13.data, v12.data, v12.length);
            v13[v12.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v14) {
            v15 = v16 = 0;
            if (v14) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v17 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v17 = v18 = MEM[64] + 32;
                }
                require(v17 - MEM[64] >= 32);
            }
            v19 = this.balance;
            v20 = _SafeAdd(v15, v19);
            v21 = _SafeSub(v20, varg0);
            if (!(0x3ff & varg4 >> 50)) {
                v22 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v23 = 0x23c8(v22);
                v24 = _SafeMul(varg4 & 0x3ffffffffffff, v23);
                require(v24 < v21, Error(52));
                v25 = 0x23c8(msg.gas);
                require(v25 >= msg.gas, Error(13665));
                v26 = _SafeSub(v21, v24);
                0x5e37(v20, v15, v26, varg4 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v27 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v28 = 0x23d7(v27);
                v29 = _SafeMul(varg4 & 0x3ffffffffffff, v28);
                require(v29 < v21, Error(52));
                v30 = _SafeSub(v21, v29);
                require(0x3ff & varg4 >> 50 <= 1000);
                v31 = _SafeMul(v30, 0x3ff & varg4 >> 50);
                v32 = _SafeSub(v30, v31 / 1000);
                v33 = 0;
                if (this.balance <= v31 / 1000) {
                    v34 = 0x2415(v15);
                    0x5f56(v34, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v33 = v35 = 1;
                }
                if (v31 / 1000) {
                    v36 = block.coinbase.call().value(v31 / 1000).gas(10000);
                }
                v37 = 0x23d7(msg.gas);
                require(v37 >= msg.gas, Error(13666));
                v38 = varg4 & 0x3ffffffffffff < 10 ** 9;
                if (v38) {
                    require(v20 - v31 / 1000 <= v20, Panic(17)); // arithmetic overflow or underflow
                    v38 = v39 = 10 ** 17 < v20 - v31 / 1000;
                }
                if (v38) {
                    v40 = 0x3a4a(varg4 & 0x3ffffffffffff);
                    v38 = v41 = v40 < v32;
                }
                if (v38) {
                    if (!v33) {
                        if (this.balance < v15) {
                            v42 = 0x2415(v15);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v42);
                        } else {
                            v43 = 0x2415(this.balance);
                            v44, /* uint256 */ v45 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v43).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v46 = v47 = new bytes[](RETURNDATASIZE());
                                require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
                                v45 = v47.data;
                                RETURNDATACOPY(v45, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v48 = 0x2415(this.balance);
                        v49, /* uint256 */ v50 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v48).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v51 = v52 = new bytes[](RETURNDATASIZE());
                            require(!((v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                            v50 = v52.data;
                            RETURNDATACOPY(v50, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x3f69(uint256 varg0, address varg1, struct(2) varg2, struct(2) varg3, struct(4) varg4, uint256 varg5, uint256 varg6, uint256 varg7, bool varg8, address varg9) private { 
    v0 = 0x45c9(uint192.max + 1, 0, address(varg3.word0));
    v1 = 0x5c02(varg2.word0, varg2.word1, varg5, v0, varg6);
    require(!v1, Error(0x696e66));
    v2 = _SafeMul(varg2.word0, varg2.word1);
    v3 = 0x568b(v2);
    v4 = 0x5c47(varg2.word0, v3, varg5, v0, uint128(varg3.word1), varg6, varg7);
    v5 = 0x23f3(varg5);
    v6 = new struct(14);
    v6.word1 = address(this);
    v6.word2 = varg9;
    v6.word3 = varg8;
    v6.word4 = uint24(MEM[MEM[varg3 + 64] + 64]);
    v6.word5 = int24(MEM[MEM[varg3 + 64] + 96]);
    v6.word6 = address(MEM[MEM[varg3 + 64] + 128]);
    v6.word7 = 0;
    v6.word8 = v4;
    v6.word9 = varg1;
    v6.word10 = varg2.word0;
    v6.word11 = varg2.word1;
    v6.word12 = uint24(v5);
    v6.word13 = 0;
    v6.word0 = 416;
    require(!((v6 + 448 > uint64.max) | (v6 + 448 < v6)), Panic(65)); // failed memory allocation (too much memory)
    v7 = new bytes[](v6.word0.length);
    MCOPY(v7.data, v6.data, v6.word0.length);
    v7[v6.word0.length] = 0;
    v8 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v7, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v8) {
        if (v8) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v9.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v10 = new bytes[](v9.length);
            require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v9.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v10.data, v9.data, v9.length);
            v10[v9.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v11, /* uint256 */ v12 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v11) {
            v12 = v13 = 0;
            if (v11) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v14 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v14 = v15 = MEM[64] + 32;
                }
                require(v14 - MEM[64] >= 32);
            }
            v16 = this.balance;
            v17 = _SafeAdd(v12, v16);
            v18 = _SafeSub(v17, varg0);
            if (!(0x3ff & varg4 >> 50)) {
                v19 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v20 = 0x23c8(v19);
                v21 = _SafeMul(varg4 & 0x3ffffffffffff, v20);
                require(v21 < v18, Error(52));
                v22 = 0x23c8(msg.gas);
                require(v22 >= msg.gas, Error(13665));
                v23 = _SafeSub(v18, v21);
                0x5e37(v17, v12, v23, varg4 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v24 = _SafeSub(uint24(varg4 >> 60), msg.gas);
                v25 = 0x23d7(v24);
                v26 = _SafeMul(varg4 & 0x3ffffffffffff, v25);
                require(v26 < v18, Error(52));
                v27 = _SafeSub(v18, v26);
                require(0x3ff & varg4 >> 50 <= 1000);
                v28 = _SafeMul(v27, 0x3ff & varg4 >> 50);
                v29 = _SafeSub(v27, v28 / 1000);
                v30 = 0;
                if (this.balance <= v28 / 1000) {
                    v31 = 0x2415(v12);
                    0x5f56(v31, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v30 = v32 = 1;
                }
                if (v28 / 1000) {
                    v33 = block.coinbase.call().value(v28 / 1000).gas(10000);
                }
                v34 = 0x23d7(msg.gas);
                require(v34 >= msg.gas, Error(13666));
                v35 = varg4 & 0x3ffffffffffff < 10 ** 9;
                if (v35) {
                    require(v17 - v28 / 1000 <= v17, Panic(17)); // arithmetic overflow or underflow
                    v35 = v36 = 10 ** 17 < v17 - v28 / 1000;
                }
                if (v35) {
                    v37 = 0x3a4a(varg4 & 0x3ffffffffffff);
                    v35 = v38 = v37 < v29;
                }
                if (v35) {
                    if (!v30) {
                        if (this.balance < v12) {
                            v39 = 0x2415(v12);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v39);
                        } else {
                            v40 = 0x2415(this.balance);
                            v41, /* uint256 */ v42 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v40).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v43 = v44 = new bytes[](RETURNDATASIZE());
                                require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                                v42 = v44.data;
                                RETURNDATACOPY(v42, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v45 = 0x2415(this.balance);
                        v46, /* uint256 */ v47 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v45).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v48 = v49 = new bytes[](RETURNDATASIZE());
                            require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                            v47 = v49.data;
                            RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x40c7(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7, bool varg8, uint256 varg9) private { 
    v0 = varg4 * varg5 * address(MEM[varg1]);
    v1 = v2 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) > v0 * address(MEM[varg1]) % uint256.max - v0 * address(MEM[varg1]) - (v0 * address(MEM[varg1]) % uint256.max < v0 * address(MEM[varg1]));
    if (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) <= v0 * address(MEM[varg1]) % uint256.max - v0 * address(MEM[varg1]) - (v0 * address(MEM[varg1]) % uint256.max < v0 * address(MEM[varg1]))) {
        v1 = v3 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) == v0 * address(MEM[varg1]) % uint256.max - v0 * address(MEM[varg1]) - (v0 * address(MEM[varg1]) % uint256.max < v0 * address(MEM[varg1]));
        if (v3) {
            v1 = v4 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) >= v0 * address(MEM[varg1]);
            // Unknown jump to Block 0x4103. Refer to 3-address code (TAC);
        } else {
            // Unknown jump to Block 0x4103. Refer to 3-address code (TAC);
        }
    }
    require(!v1, Error(0x696e66));
    v5 = uint128(MEM[varg2 + 32]);
    v6 = address(MEM[varg2]);
    v7 = uint128(MEM[varg1 + 32]);
    v8 = varg4 * varg5 * address(MEM[varg1]);
    v9 = v8 - varg6 * v6 * 10 ** 6 << 96;
    v10 = 0x5df1(v9 * v7 * v5 % uint256.max - v9 * v7 * v5 - (v9 * v7 * v5 % uint256.max < v9 * v7 * v5) + (v9 * v7 % uint256.max - v9 * v7 - (v9 * v7 % uint256.max < v9 * v7) + ((v8 - varg6 * v6 * 10 ** 6) * (uint96.max + 1) % uint256.max - v9 - ((v8 - varg6 * v6 * 10 ** 6) * (uint96.max + 1) % uint256.max < v9) + (0 - (v8 < varg6 * v6 * 10 ** 6) << 96)) * v7) * v5, v9 * v7 * v5, (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 * v6 % uint256.max - (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 * v6 - ((v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 * v6 % uint256.max < (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 * v6) + ((v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 % uint256.max - (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 - ((v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 % uint256.max < (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4) + (v7 * varg5 * address(MEM[varg1]) % uint256.max - v7 * varg5 * address(MEM[varg1]) - (v7 * varg5 * address(MEM[varg1]) % uint256.max < v7 * varg5 * address(MEM[varg1])) + (10 ** 6 * v5 * v6 % uint256.max - 10 ** 6 * v5 * v6 - (10 ** 6 * v5 * v6 % uint256.max < 10 ** 6 * v5 * v6)) + (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6 < v7 * varg5 * address(MEM[varg1]))) * varg4) * v6, (v7 * varg5 * address(MEM[varg1]) + 10 ** 6 * v5 * v6) * varg4 * v6);
    v11 = new struct(13);
    v11.word1 = address(this);
    v11.word2 = address(varg9);
    v11.word3 = varg8;
    v11.word4 = uint24(MEM[MEM[varg2 + 64] + 64]);
    v11.word5 = int24(MEM[MEM[varg2 + 64] + 96]);
    v11.word6 = address(MEM[MEM[varg2 + 64] + 128]);
    v11.word7 = 0;
    v11.word8 = v10;
    v11.word9 = varg7;
    v11.word10 = uint24(MEM[MEM[varg1 + 64] + 64]);
    v11.word11 = int24(MEM[MEM[varg1 + 64] + 96]);
    v11.word12 = address(MEM[MEM[varg1 + 64] + 128]);
    v11.word0 = 384;
    require(!((v11 + 416 > uint64.max) | (v11 + 416 < v11)), Panic(65)); // failed memory allocation (too much memory)
    v12 = new bytes[](v11.word0.length);
    MCOPY(v12.data, v11.data, v11.word0.length);
    v12[v11.word0.length] = 0;
    v13 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v12, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v13) {
        if (v13) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v14.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v15 = new bytes[](v14.length);
            require(!((v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v14.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v15.data, v14.data, v14.length);
            v15[v14.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v16, /* uint256 */ v17 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v16) {
            v17 = v18 = 0;
            if (v16) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v19 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v19 = v20 = MEM[64] + 32;
                }
                require(v19 - MEM[64] >= 32);
            }
            v21 = this.balance;
            v22 = _SafeAdd(v17, v21);
            v23 = _SafeSub(v22, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x23c8(v24);
                v26 = _SafeMul(varg3 & 0x3ffffffffffff, v25);
                require(v26 < v23, Error(52));
                v27 = 0x23c8(msg.gas);
                require(v27 >= msg.gas, Error(13665));
                v28 = _SafeSub(v23, v26);
                0x5e37(v22, v17, v28, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v29 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v30 = 0x23d7(v29);
                v31 = _SafeMul(varg3 & 0x3ffffffffffff, v30);
                require(v31 < v23, Error(52));
                v32 = _SafeSub(v23, v31);
                require(0x3ff & varg3 >> 50 <= 1000);
                v33 = _SafeMul(v32, 0x3ff & varg3 >> 50);
                v34 = _SafeSub(v32, v33 / 1000);
                v35 = 0;
                if (this.balance <= v33 / 1000) {
                    v36 = 0x2415(v17);
                    0x5f56(v36, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v35 = v37 = 1;
                }
                if (v33 / 1000) {
                    v38 = block.coinbase.call().value(v33 / 1000).gas(10000);
                }
                v39 = 0x23d7(msg.gas);
                require(v39 >= msg.gas, Error(13666));
                v40 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v40) {
                    require(v22 - v33 / 1000 <= v22, Panic(17)); // arithmetic overflow or underflow
                    v40 = v41 = 10 ** 17 < v22 - v33 / 1000;
                }
                if (v40) {
                    v42 = 0x3a4a(varg3 & 0x3ffffffffffff);
                    v40 = v43 = v42 < v34;
                }
                if (v40) {
                    if (!v35) {
                        if (this.balance < v17) {
                            v44 = 0x2415(v17);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v44);
                        } else {
                            v45 = 0x2415(this.balance);
                            v46, /* uint256 */ v47 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v45).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v48 = v49 = new bytes[](RETURNDATASIZE());
                                require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                                v47 = v49.data;
                                RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v50 = 0x2415(this.balance);
                        v51, /* uint256 */ v52 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v50).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v53 = v54 = new bytes[](RETURNDATASIZE());
                            require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
                            v52 = v54.data;
                            RETURNDATACOPY(v52, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x41f9(struct(4) varg0) private { 
    v0 = varg0.word2.slot0().gas(msg.gas);
    require(v0);
    return ;
}

function 0x4217(uint256 varg0) private { 
    v0, /* uint128 */ v1 = varg0.liquidity().gas(msg.gas);
    require((RETURNDATASIZE() > 15) & v0);
    return uint128(v1);
}

function 0x42b7(uint256 varg0, uint256 varg1, struct(4) varg2, struct(4) varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7, address varg8) private { 
    v0, v1, v2, v3, v4 = 0x42d4(address(MEM[varg1]), varg5, 17140, varg1, varg5, varg4);
    require(!v0, Error(0x696e66));
    v5 = 0x5d5c(address(MEM[v1]), uint128(MEM[v1 + 32]), v3, address(v4.word0), uint128(v4.word1), v2, varg6);
    if (v5 != int256.min) {
        v6 = 0x2403(v3);
        v7 = new struct(6);
        v8 = v7.data;
        v7.word1 = varg8;
        v7.word2 = varg7;
        v7.word3 = uint24(v6);
        v7.word4 = int24(MEM[MEM[v1 + 64] + 96]);
        v7.word5 = address(MEM[MEM[v1 + 64] + 128]);
        v7.word0 = 160;
        require(!((v7 + 192 > uint64.max) | (v7 + 192 < v7)), Panic(65)); // failed memory allocation (too much memory)
        v9 = new bytes[](v7.word0.length);
        MCOPY(v9.data, v7.data, v7.word0.length);
        v9[v7.word0.length] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(v4.word2).swap(address(this), 0, 0 - v5, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v9).gas(msg.gas);
        if (v10) {
            if (v10) {
                if (64 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v13 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                    v13 = v14 = MEM[64] + 64;
                }
                require(v13 - MEM[64] >= 64);
            }
            _uniswapV3SwapCallback = 0;
            v15, /* uint256 */ v16 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v15) {
                v16 = v17 = 0;
                if (v15) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v18 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v18 = v19 = MEM[64] + 32;
                    }
                    require(v18 - MEM[64] >= 32);
                }
                v20 = this.balance;
                v21 = _SafeAdd(v16, v20);
                v22 = _SafeSub(v21, varg0);
                if (!(0x3ff & varg3 >> 50)) {
                    v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                    v24 = 0x23c8(v23);
                    v25 = _SafeMul(varg3 & 0x3ffffffffffff, v24);
                    require(v25 < v22, Error(52));
                    v26 = 0x23c8(msg.gas);
                    require(v26 >= msg.gas, Error(13665));
                    v27 = _SafeSub(v22, v25);
                    0x5e37(v21, v16, v27, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                } else {
                    v28 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                    v29 = 0x23d7(v28);
                    v30 = _SafeMul(varg3 & 0x3ffffffffffff, v29);
                    require(v30 < v22, Error(52));
                    v31 = _SafeSub(v22, v30);
                    require(0x3ff & varg3 >> 50 <= 1000);
                    v32 = _SafeMul(v31, 0x3ff & varg3 >> 50);
                    v33 = _SafeSub(v31, v32 / 1000);
                    v34 = 0;
                    if (this.balance <= v32 / 1000) {
                        v35 = 0x2415(v16);
                        0x5f56(v35, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        v34 = v36 = 1;
                    }
                    if (v32 / 1000) {
                        v37 = block.coinbase.call().value(v32 / 1000).gas(10000);
                    }
                    v38 = 0x23d7(msg.gas);
                    require(v38 >= msg.gas, Error(13666));
                    v39 = varg3 & 0x3ffffffffffff < 10 ** 9;
                    if (v39) {
                        if (v21 - v32 / 1000 <= v21) {
                            v39 = v40 = 10 ** 17 < v21 - v32 / 1000;
                        }
                    }
                    if (v39) {
                        v41 = 0x3a4a(varg3 & 0x3ffffffffffff);
                        v39 = v42 = v41 < v33;
                    }
                    if (v39) {
                        if (!v34) {
                            if (this.balance < v16) {
                                v43 = 0x2415(v16);
                                0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v43);
                            } else {
                                v44 = 0x2415(this.balance);
                                v45, /* uint256 */ v46 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v44).gas(msg.gas);
                                if (RETURNDATASIZE()) {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v47 = v48 = new bytes[](RETURNDATASIZE());
                                    require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                                    v46 = v48.data;
                                    RETURNDATACOPY(v46, 0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v49 = 0x2415(this.balance);
                            v50, /* uint256 */ v51 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v49).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v52 = v53 = new bytes[](RETURNDATASIZE());
                                require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
                                v51 = v53.data;
                                RETURNDATACOPY(v51, 0, RETURNDATASIZE());
                            }
                        }
                    }
                }
                return ;
            }
        }
        v54 = RETURNDATASIZE();
        revert(v55, v55, v55, v55, v55, v55, v55, v55, v55, 0);
    }
    revert(Panic(17));
}

function 0x42d4(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0 = 10 ** 12 * varg0 * varg0 % uint256.max - 10 ** 12 * varg0 * varg0 - (10 ** 12 * varg0 * varg0 % uint256.max < 10 ** 12 * varg0 * varg0) > varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max - varg5 * varg1 * address(v1.word0) * address(v1.word0) - (varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max < varg5 * varg1 * address(v1.word0) * address(v1.word0));
    if (10 ** 12 * varg0 * varg0 % uint256.max - 10 ** 12 * varg0 * varg0 - (10 ** 12 * varg0 * varg0 % uint256.max < 10 ** 12 * varg0 * varg0) <= varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max - varg5 * varg1 * address(v1.word0) * address(v1.word0) - (varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max < varg5 * varg1 * address(v1.word0) * address(v1.word0))) {
        v2 = 10 ** 12 * varg0 * varg0 % uint256.max - 10 ** 12 * varg0 * varg0 - (10 ** 12 * varg0 * varg0 % uint256.max < 10 ** 12 * varg0 * varg0) == varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max - varg5 * varg1 * address(v1.word0) * address(v1.word0) - (varg5 * varg1 * address(v1.word0) * address(v1.word0) % uint256.max < varg5 * varg1 * address(v1.word0) * address(v1.word0));
        if (v2) {
            return 10 ** 12 * varg0 * varg0 >= varg5 * varg1 * address(v1.word0) * address(v1.word0), varg3, varg4, varg5, v1;
        } else {
            return v2, varg3, varg4, varg5, v1;
        }
    } else {
        return v0, varg3, varg4, varg5, v1;
    }
}

function 0x4476(uint256 varg0, struct(4) varg1, uint256 varg2, struct(4) varg3, uint256 varg4, uint256 varg5, uint256 varg6, struct(4) varg7, uint256 varg8) private { 
    v0 = varg4 * varg5 * address(MEM[varg2]);
    v1 = v2 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) > v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]));
    if (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) <= v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]))) {
        v1 = v3 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) == v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]));
        if (v3) {
            v1 = v4 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) >= v0 * address(MEM[varg2]);
            // Unknown jump to Block 0x44a7. Refer to 3-address code (TAC);
        } else {
            // Unknown jump to Block 0x44a7. Refer to 3-address code (TAC);
        }
    }
    require(!v1, Error(0x696e66));
    v5 = uint128(MEM[varg2 + 32]);
    v6 = address(MEM[varg2]);
    v7 = uint128(MEM[varg1 + 32]);
    v8 = varg4 * varg5 * v6 - varg6 * address(MEM[varg1]) * 10 ** 6;
    v9 = 0x5df1(v8 * v5 * v6 * v7 % uint256.max - v8 * v5 * v6 * v7 - (v8 * v5 * v6 * v7 % uint256.max < v8 * v5 * v6 * v7) + (v8 * v5 * v6 % uint256.max - v8 * v5 * v6 - (v8 * v5 * v6 % uint256.max < v8 * v5 * v6) + (v8 * v5 % uint256.max - v8 * v5 - (v8 * v5 % uint256.max < v8 * v5) + (0 - (varg4 * varg5 * v6 < varg6 * address(MEM[varg1]) * 10 ** 6)) * v5) * v6) * v7, v8 * v5 * v6 * v7, (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) % uint256.max - (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) - ((10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) % uint256.max < (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96)) + (10 ** 6 * v5 * address(MEM[varg1]) % uint256.max - 10 ** 6 * v5 * address(MEM[varg1]) - (10 ** 6 * v5 * address(MEM[varg1]) % uint256.max < 10 ** 6 * v5 * address(MEM[varg1])) + (varg5 * v7 * v6 % uint256.max - varg5 * v7 * v6 - (varg5 * v7 * v6 % uint256.max < varg5 * v7 * v6)) + (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6 < 10 ** 6 * v5 * address(MEM[varg1]))) * (varg4 << 96), (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96));
    v10 = new struct(10);
    v11 = v10.data;
    v10.word1 = this;
    v10.word2 = address(varg8);
    v10.word3 = bool(varg7);
    v10.word4 = uint24(MEM[MEM[varg2 + 64] + 64]);
    v10.word5 = int24(MEM[MEM[varg2 + 64] + 96]);
    v10.word6 = address(MEM[MEM[varg2 + 64] + 128]);
    v10.word7 = 1;
    v10.word8 = v9;
    v10.word9 = address(MEM[varg1 + 64]);
    v10.word0 = 288;
    require(!((v10 + 320 > uint64.max) | (v10 + 320 < v10)), Panic(65)); // failed memory allocation (too much memory)
    v12 = new bytes[](v10.word0.length);
    MCOPY(v12.data, v10.data, v10.word0.length);
    v12[v10.word0.length] = 0;
    v13 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v12, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v13) {
        if (v13) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v14.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v15 = new bytes[](v14.length);
            require(!((v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v14.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v14.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v15.data, v14.data, v14.length);
            v15[v14.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v16 = varg3 & 0x3ffffffffffff;
        v17, /* uint256 */ v18 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v17) {
            v18 = v19 = 0;
            if (v17) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v20 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v20 = v21 = MEM[64] + 32;
                }
                require(v20 - MEM[64] >= 32);
            }
            v22 = this.balance;
            v23 = _SafeAdd(v18, v22);
            v24 = _SafeSub(v23, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x23c8(v25);
                v27 = _SafeMul(v16, v26);
                require(v27 < v24, Error(52));
                v28 = 0x23c8(msg.gas);
                require(v28 >= msg.gas, Error(13665));
                v29 = _SafeSub(v24, v27);
                0x5e37(v23, v18, v29, v16, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v30 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v31 = 0x23d7(v30);
                v32 = _SafeMul(v16, v31);
                require(v32 < v24, Error(52));
                v33 = _SafeSub(v24, v32);
                require(0x3ff & varg3 >> 50 <= 1000);
                v34 = _SafeMul(v33, 0x3ff & varg3 >> 50);
                v35 = _SafeSub(v33, v34 / 1000);
                v36 = 0;
                if (this.balance <= v34 / 1000) {
                    v37 = 0x2415(v18);
                    0x5f56(v37, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v36 = v38 = 1;
                }
                if (v34 / 1000) {
                    v39 = block.coinbase.call().value(v34 / 1000).gas(10000);
                }
                v40 = 0x23d7(msg.gas);
                require(v40 >= msg.gas, Error(13666));
                v41 = v16 < 10 ** 9;
                if (v41) {
                    require(v23 - v34 / 1000 <= v23, Panic(17)); // arithmetic overflow or underflow
                    v41 = v42 = 10 ** 17 < v23 - v34 / 1000;
                }
                if (v41) {
                    v43 = 0x3a4a(v16);
                    v41 = v44 = v43 < v35;
                }
                if (v41) {
                    if (!v36) {
                        if (this.balance < v18) {
                            v45 = 0x2415(v18);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v45);
                        } else {
                            v46 = 0x2415(this.balance);
                            v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v49 = v50 = new bytes[](RETURNDATASIZE());
                                require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                                v48 = v50.data;
                                RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v51 = 0x2415(this.balance);
                        v52, /* uint256 */ v53 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v51).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v54 = v55 = new bytes[](RETURNDATASIZE());
                            require(!((v55 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v55 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v55)), Panic(65)); // failed memory allocation (too much memory)
                            v53 = v55.data;
                            RETURNDATACOPY(v53, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x45c9(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = ((varg1 * uint256.max % varg2 + varg1) % varg2 + varg0) % varg2;
    v1 = 0 - varg2 & varg2;
    v2 = varg2 / v1;
    v3 = (varg0 - v0) / v1 | (varg1 - (varg0 < v0)) * ((0 - v1) / v1 + 1);
    if (varg1 == varg0 < v0) {
        v4 = _SafeDiv(v3, v2);
        return v4;
    } else {
        v5 = (2 - v2 * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)))) * ((2 - v2 * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2))) * ((2 - v2 * (3 * v2 ^ 0x2)) * (3 * v2 ^ 0x2)));
        return (2 - v2 * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5))) * ((2 - v2 * ((2 - v2 * v5) * v5)) * ((2 - v2 * v5) * v5)) * v3;
    }
}

function 0x4638(uint256 varg0, uint256 varg1, struct(4) varg2, struct(4) varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7, address varg8) private { 
    v0 = 0x45c9(uint192.max + 1, 0, address(MEM[varg1]));
    v1 = 0x5d45(v0, varg4, address(varg2.word0), varg5);
    require(!v1, Error(0x696e66));
    v2 = 0x46b1(uint128(MEM[32 + varg1]), varg4, v0, varg2, varg5, varg6);
    if (v2 != int256.min) {
        v3 = new struct(6);
        v4 = v3.data;
        v3.word1 = varg8;
        v3.word2 = varg7;
        v3.word3 = uint24(MEM[MEM[varg1 + 64] + 64]);
        v3.word4 = int24(MEM[MEM[varg1 + 64] + 96]);
        v3.word5 = address(MEM[MEM[varg1 + 64] + 128]);
        v3.word0 = 160;
        require(!((v3 + 192 > uint64.max) | (v3 + 192 < v3)), Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](v3.word0.length);
        MCOPY(v5.data, v3.data, v3.word0.length);
        v5[v3.word0.length] = 0;
        v6, /* uint256 */ v7, /* uint256 */ v8 = address(varg2.word2).swap(address(this), 1, 0 - v2, address(0x1000276a4), v5).gas(msg.gas);
        if (v6) {
            if (v6) {
                if (64 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v9 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                    v9 = v10 = MEM[64] + 64;
                }
                require(v9 - MEM[64] >= 64);
            }
            _uniswapV3SwapCallback = 0;
            v11, /* uint256 */ v12 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v11) {
                v12 = v13 = 0;
                if (v11) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v14 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v14 = v15 = MEM[64] + 32;
                    }
                    require(v14 - MEM[64] >= 32);
                }
                v16 = this.balance;
                v17 = _SafeAdd(v12, v16);
                v18 = _SafeSub(v17, varg0);
                if (!(0x3ff & varg3 >> 50)) {
                    v19 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                    v20 = 0x23c8(v19);
                    v21 = _SafeMul(varg3 & 0x3ffffffffffff, v20);
                    require(v21 < v18, Error(52));
                    v22 = 0x23c8(msg.gas);
                    require(v22 >= msg.gas, Error(13665));
                    v23 = _SafeSub(v18, v21);
                    0x5e37(v17, v12, v23, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                } else {
                    v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                    v25 = 0x23d7(v24);
                    v26 = _SafeMul(varg3 & 0x3ffffffffffff, v25);
                    require(v26 < v18, Error(52));
                    v27 = _SafeSub(v18, v26);
                    require(0x3ff & varg3 >> 50 <= 1000);
                    v28 = _SafeMul(v27, 0x3ff & varg3 >> 50);
                    v29 = _SafeSub(v27, v28 / 1000);
                    v30 = 0;
                    if (this.balance <= v28 / 1000) {
                        v31 = 0x2415(v12);
                        0x5f56(v31, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        v30 = v32 = 1;
                    }
                    if (v28 / 1000) {
                        v33 = block.coinbase.call().value(v28 / 1000).gas(10000);
                    }
                    v34 = 0x23d7(msg.gas);
                    require(v34 >= msg.gas, Error(13666));
                    v35 = varg3 & 0x3ffffffffffff < 10 ** 9;
                    if (v35) {
                        if (v17 - v28 / 1000 <= v17) {
                            v35 = v36 = 10 ** 17 < v17 - v28 / 1000;
                        }
                    }
                    if (v35) {
                        v37 = 0x3a4a(varg3 & 0x3ffffffffffff);
                        v35 = v38 = v37 < v29;
                    }
                    if (v35) {
                        if (!v30) {
                            if (this.balance < v12) {
                                v39 = 0x2415(v12);
                                0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v39);
                            } else {
                                v40 = 0x2415(this.balance);
                                v41, /* uint256 */ v42 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v40).gas(msg.gas);
                                if (RETURNDATASIZE()) {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v43 = v44 = new bytes[](RETURNDATASIZE());
                                    require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                                    v42 = v44.data;
                                    RETURNDATACOPY(v42, 0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v45 = 0x2415(this.balance);
                            v46, /* uint256 */ v47 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v45).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v48 = v49 = new bytes[](RETURNDATASIZE());
                                require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                                v47 = v49.data;
                                RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                            }
                        }
                    }
                }
                return ;
            }
        }
        v50 = RETURNDATASIZE();
        revert(v51, v51, v51, v51, v51, v51, v51, v51, v51, 0);
    }
    revert(Panic(17));
}

function 0x46b1(uint128 varg0, uint256 varg1, uint256 varg2, struct(4) varg3, uint256 varg4, uint256 varg5) private { 
    v0 = varg1 * varg4 * address(varg3.word0) - varg5 * varg2 * 10 ** 6;
    v1 = 0x5df1(v0 * uint128(varg3.word1) * address(varg3.word0) * varg0 % uint256.max - v0 * uint128(varg3.word1) * address(varg3.word0) * varg0 - (v0 * uint128(varg3.word1) * address(varg3.word0) * varg0 % uint256.max < v0 * uint128(varg3.word1) * address(varg3.word0) * varg0) + (v0 * uint128(varg3.word1) * address(varg3.word0) % uint256.max - v0 * uint128(varg3.word1) * address(varg3.word0) - (v0 * uint128(varg3.word1) * address(varg3.word0) % uint256.max < v0 * uint128(varg3.word1) * address(varg3.word0)) + (v0 * uint128(varg3.word1) % uint256.max - v0 * uint128(varg3.word1) - (v0 * uint128(varg3.word1) % uint256.max < v0 * uint128(varg3.word1)) + (0 - (varg1 * varg4 * address(varg3.word0) < varg5 * varg2 * 10 ** 6)) * uint128(varg3.word1)) * address(varg3.word0)) * varg0, v0 * uint128(varg3.word1) * address(varg3.word0) * varg0, (10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0)) * (varg1 << 96) % uint256.max - (10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0)) * (varg1 << 96) - ((10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0)) * (varg1 << 96) % uint256.max < (10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0)) * (varg1 << 96)) + (10 ** 6 * uint128(varg3.word1) * varg2 % uint256.max - 10 ** 6 * uint128(varg3.word1) * varg2 - (10 ** 6 * uint128(varg3.word1) * varg2 % uint256.max < 10 ** 6 * uint128(varg3.word1) * varg2) + (varg4 * varg0 * address(varg3.word0) % uint256.max - varg4 * varg0 * address(varg3.word0) - (varg4 * varg0 * address(varg3.word0) % uint256.max < varg4 * varg0 * address(varg3.word0))) + (10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0) < 10 ** 6 * uint128(varg3.word1) * varg2)) * (varg1 << 96), (10 ** 6 * uint128(varg3.word1) * varg2 + varg4 * varg0 * address(varg3.word0)) * (varg1 << 96));
    return v1;
}

function 0x4746(uint256 varg0, struct(4) varg1, uint256 varg2, struct(4) varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7, address varg8) private { 
    v0 = 0x45c9(uint192.max + 1, 0, address(MEM[varg2]));
    v1 = v2 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) > varg4 * varg5 * v0 * v0 % uint256.max - varg4 * varg5 * v0 * v0 - (varg4 * varg5 * v0 * v0 % uint256.max < varg4 * varg5 * v0 * v0);
    if (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) <= varg4 * varg5 * v0 * v0 % uint256.max - varg4 * varg5 * v0 * v0 - (varg4 * varg5 * v0 * v0 % uint256.max < varg4 * varg5 * v0 * v0)) {
        v1 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max - 10 ** 12 * address(varg1.word0) * address(varg1.word0) - (10 ** 12 * address(varg1.word0) * address(varg1.word0) % uint256.max < 10 ** 12 * address(varg1.word0) * address(varg1.word0)) == varg4 * varg5 * v0 * v0 % uint256.max - varg4 * varg5 * v0 * v0 - (varg4 * varg5 * v0 * v0 % uint256.max < varg4 * varg5 * v0 * v0);
        if (v1) {
            v1 = v3 = 10 ** 12 * address(varg1.word0) * address(varg1.word0) >= varg4 * varg5 * v0 * v0;
        }
    }
    require(!v1, Error(0x696e66));
    v4 = 0x5d5c(address(varg1.word0), uint128(varg1.word1), varg4, v0, uint128(MEM[varg2 + 32]), varg5, varg6);
    v5 = 0x2403(varg5);
    v6 = new struct(10);
    v7 = v6.data;
    v6.word1 = this;
    v6.word2 = varg8;
    v6.word3 = varg7;
    v6.word4 = uint24(v5);
    v6.word5 = int24(MEM[MEM[varg2 + 64] + 96]);
    v6.word6 = address(MEM[MEM[varg2 + 64] + 128]);
    v6.word7 = 0;
    v6.word8 = v4;
    v6.word9 = address(varg1.word2);
    v6.word0 = 288;
    require(!((v6 + 320 > uint64.max) | (v6 + 320 < v6)), Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](v6.word0.length);
    MCOPY(v8.data, v6.data, v6.word0.length);
    v8[v6.word0.length] = 0;
    v9 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v8, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v9) {
        if (v9) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v11 = new bytes[](v10.length);
            require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v10.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v11.data, v10.data, v10.length);
            v11[v10.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v12, /* uint256 */ v13 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v12) {
            v13 = v14 = 0;
            if (v12) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v15 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v15 = v16 = MEM[64] + 32;
                }
                require(v15 - MEM[64] >= 32);
            }
            v17 = this.balance;
            v18 = _SafeAdd(v13, v17);
            v19 = _SafeSub(v18, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v20 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v21 = 0x23c8(v20);
                v22 = _SafeMul(varg3 & 0x3ffffffffffff, v21);
                require(v22 < v19, Error(52));
                v23 = 0x23c8(msg.gas);
                require(v23 >= msg.gas, Error(13665));
                v24 = _SafeSub(v19, v22);
                0x5e37(v18, v13, v24, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v25 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v26 = 0x23d7(v25);
                v27 = _SafeMul(varg3 & 0x3ffffffffffff, v26);
                require(v27 < v19, Error(52));
                v28 = _SafeSub(v19, v27);
                require(0x3ff & varg3 >> 50 <= 1000);
                v29 = _SafeMul(v28, 0x3ff & varg3 >> 50);
                v30 = _SafeSub(v28, v29 / 1000);
                v31 = 0;
                if (this.balance <= v29 / 1000) {
                    v32 = 0x2415(v13);
                    0x5f56(v32, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v31 = v33 = 1;
                }
                if (v29 / 1000) {
                    v34 = block.coinbase.call().value(v29 / 1000).gas(10000);
                }
                v35 = 0x23d7(msg.gas);
                require(v35 >= msg.gas, Error(13666));
                v36 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v36) {
                    require(v18 - v29 / 1000 <= v18, Panic(17)); // arithmetic overflow or underflow
                    v36 = v37 = 10 ** 17 < v18 - v29 / 1000;
                }
                if (v36) {
                    v38 = 0x3a4a(varg3 & 0x3ffffffffffff);
                    v36 = v39 = v38 < v30;
                }
                if (v36) {
                    if (!v31) {
                        if (this.balance < v13) {
                            v40 = 0x2415(v13);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v40);
                        } else {
                            v41 = 0x2415(this.balance);
                            v42, /* uint256 */ v43 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v41).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v44 = v45 = new bytes[](RETURNDATASIZE());
                                require(!((v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v45 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v45)), Panic(65)); // failed memory allocation (too much memory)
                                v43 = v45.data;
                                RETURNDATACOPY(v43, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v46 = 0x2415(this.balance);
                        v47, /* uint256 */ v48 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v46).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v49 = v50 = new bytes[](RETURNDATASIZE());
                            require(!((v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                            v48 = v50.data;
                            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x48a4(address varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x494b(uint256 varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.transfer(0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x499d(uint256 varg0) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = 0x4444c5dc75cb358380d2e3de08a90;
    MEM[v0 + 68] = varg0;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(0x4444c5dc75cb358380d2e3de08a90, varg0).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v7 = new bytes[](RETURNDATASIZE());
        require(!((v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v7.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[v5 + 32];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
    return ;
}

function 0x49db(uint256 varg0, struct(4) varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = v1 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) > varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max - varg4 * varg5 * address(varg1.word0) * address(varg1.word0) - (varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max < varg4 * varg5 * address(varg1.word0) * address(varg1.word0));
    if (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) <= varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max - varg4 * varg5 * address(varg1.word0) * address(varg1.word0) - (varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max < varg4 * varg5 * address(varg1.word0) * address(varg1.word0))) {
        v0 = v2 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max - 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) - (10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) % uint256.max < 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2])) == varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max - varg4 * varg5 * address(varg1.word0) * address(varg1.word0) - (varg4 * varg5 * address(varg1.word0) * address(varg1.word0) % uint256.max < varg4 * varg5 * address(varg1.word0) * address(varg1.word0));
        if (v2) {
            v0 = v3 = 10 ** 12 * address(MEM[varg2]) * address(MEM[varg2]) >= varg4 * varg5 * address(varg1.word0) * address(varg1.word0);
            // Unknown jump to Block 0x4a0c. Refer to 3-address code (TAC);
        } else {
            // Unknown jump to Block 0x4a0c. Refer to 3-address code (TAC);
        }
    }
    require(!v0, Error(0x696e66));
    v4 = uint128(MEM[varg2 + 32]);
    v5 = address(MEM[varg2]);
    v6 = uint128(MEM[varg1 + 32]);
    v7 = varg4 * varg5 * address(MEM[varg1]) - varg6 * v5 * 10 ** 6;
    v8 = 0x5df1((v7 << 96) * v6 * v4 % uint256.max - (v7 << 96) * v6 * v4 - ((v7 << 96) * v6 * v4 % uint256.max < (v7 << 96) * v6 * v4) + ((v7 << 96) * v6 % uint256.max - (v7 << 96) * v6 - ((v7 << 96) * v6 % uint256.max < (v7 << 96) * v6) + (v7 * (uint96.max + 1) % uint256.max - (v7 << 96) - (v7 * (uint96.max + 1) % uint256.max < v7 << 96) + (0 - (varg4 * varg5 * address(MEM[varg1]) < varg6 * v5 * 10 ** 6) << 96)) * v6) * v4, (v7 << 96) * v6 * v4, (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 * v5 % uint256.max - (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 * v5 - ((v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 * v5 % uint256.max < (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 * v5) + ((v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 % uint256.max - (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 - ((v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 % uint256.max < (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4) + (v6 * varg5 * address(MEM[varg1]) % uint256.max - v6 * varg5 * address(MEM[varg1]) - (v6 * varg5 * address(MEM[varg1]) % uint256.max < v6 * varg5 * address(MEM[varg1])) + (10 ** 6 * v4 * v5 % uint256.max - 10 ** 6 * v4 * v5 - (10 ** 6 * v4 * v5 % uint256.max < 10 ** 6 * v4 * v5)) + (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5 < v6 * varg5 * address(MEM[varg1]))) * varg4) * v5, (v6 * varg5 * address(MEM[varg1]) + 10 ** 6 * v4 * v5) * varg4 * v5);
    v9 = new struct(10);
    v10 = v9.data;
    v9.word1 = this;
    v9.word2 = address(varg8);
    v9.word3 = bool(varg7);
    v9.word4 = uint24(MEM[MEM[varg2 + 64] + 64]);
    v9.word5 = int24(MEM[MEM[varg2 + 64] + 96]);
    v9.word6 = address(MEM[MEM[varg2 + 64] + 128]);
    v9.word7 = 0;
    v9.word8 = v8;
    v9.word9 = address(MEM[varg1 + 64]);
    v9.word0 = 288;
    require(!((v9 + 320 > uint64.max) | (v9 + 320 < v9)), Panic(65)); // failed memory allocation (too much memory)
    v11 = new bytes[](v9.word0.length);
    MCOPY(v11.data, v9.data, v9.word0.length);
    v11[v9.word0.length] = 0;
    v12 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v11, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v12) {
        if (v12) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v13.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v14 = new bytes[](v13.length);
            require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v13.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v14.data, v13.data, v13.length);
            v14[v13.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v15 = varg3 & 0x3ffffffffffff;
        v16, /* uint256 */ v17 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v16) {
            v17 = v18 = 0;
            if (v16) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v19 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v19 = v20 = MEM[64] + 32;
                }
                require(v19 - MEM[64] >= 32);
            }
            v21 = this.balance;
            v22 = _SafeAdd(v17, v21);
            v23 = _SafeSub(v22, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v24 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v25 = 0x23c8(v24);
                v26 = _SafeMul(v15, v25);
                require(v26 < v23, Error(52));
                v27 = 0x23c8(msg.gas);
                require(v27 >= msg.gas, Error(13665));
                v28 = _SafeSub(v23, v26);
                0x5e37(v22, v17, v28, v15, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v29 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v30 = 0x23d7(v29);
                v31 = _SafeMul(v15, v30);
                require(v31 < v23, Error(52));
                v32 = _SafeSub(v23, v31);
                require(0x3ff & varg3 >> 50 <= 1000);
                v33 = _SafeMul(v32, 0x3ff & varg3 >> 50);
                v34 = _SafeSub(v32, v33 / 1000);
                v35 = 0;
                if (this.balance <= v33 / 1000) {
                    v36 = 0x2415(v17);
                    0x5f56(v36, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v35 = v37 = 1;
                }
                if (v33 / 1000) {
                    v38 = block.coinbase.call().value(v33 / 1000).gas(10000);
                }
                v39 = 0x23d7(msg.gas);
                require(v39 >= msg.gas, Error(13666));
                v40 = v15 < 10 ** 9;
                if (v40) {
                    require(v22 - v33 / 1000 <= v22, Panic(17)); // arithmetic overflow or underflow
                    v40 = v41 = 10 ** 17 < v22 - v33 / 1000;
                }
                if (v40) {
                    v42 = 0x3a4a(v15);
                    v40 = v43 = v42 < v34;
                }
                if (v40) {
                    if (!v35) {
                        if (this.balance < v17) {
                            v44 = 0x2415(v17);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v44);
                        } else {
                            v45 = 0x2415(this.balance);
                            v46, /* uint256 */ v47 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v45).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v48 = v49 = new bytes[](RETURNDATASIZE());
                                require(!((v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v49 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v49)), Panic(65)); // failed memory allocation (too much memory)
                                v47 = v49.data;
                                RETURNDATACOPY(v47, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v50 = 0x2415(this.balance);
                        v51, /* uint256 */ v52 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v50).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v53 = v54 = new bytes[](RETURNDATASIZE());
                            require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
                            v52 = v54.data;
                            RETURNDATACOPY(v52, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x4aa1(uint256 varg0, uint256 varg1, struct(4) varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0, v1, v2, v3, v4, v5, v6, v7, v8, v9 = 0x4abd(address(MEM[varg1]), varg5, 19153, varg8, varg5, varg1, varg2, varg7, varg6, varg0, varg3);
    require(!v0, Error(0x696e66));
    v10 = 0x5ccd(address(MEM[v3]), uint128(MEM[v3 + 32]), v9, address(v4.word0), uint128(v4.word1), v2, v6);
    if (v10 != int256.min) {
        v11 = new struct(6);
        v12 = v11.data;
        v11.word1 = address(v1);
        v11.word2 = bool(v5);
        v11.word3 = uint24(MEM[MEM[v3 + 64] + 64]);
        v11.word4 = int24(MEM[MEM[v3 + 64] + 96]);
        v11.word5 = address(MEM[MEM[v3 + 64] + 128]);
        v11.word0 = 160;
        require(!((v11 + 192 > uint64.max) | (v11 + 192 < v11)), Panic(65)); // failed memory allocation (too much memory)
        v13 = new bytes[](v11.word0.length);
        MCOPY(v13.data, v11.data, v11.word0.length);
        v13[v11.word0.length] = 0;
        v14, /* uint256 */ v15, /* uint256 */ v16 = address(v4.word2).swap(address(this), 0, 0 - v10, address(0xfffd8963efd1fc6a506488495d951d5263988d25), v13).gas(msg.gas);
        if (v14) {
            if (v14) {
                if (64 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v17 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                    v17 = v18 = MEM[64] + 64;
                }
                require(v17 - MEM[64] >= 64);
            }
            _uniswapV3SwapCallback = 0;
            v19, /* uint256 */ v20 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            if (v19) {
                v20 = v21 = 0;
                if (v19) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v22 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v22 = v23 = MEM[64] + 32;
                    }
                    require(v22 - MEM[64] >= 32);
                }
                v24 = this.balance;
                v25 = _SafeAdd(v20, v24);
                v26 = _SafeSub(v25, v7);
                if (!(0x3ff & v8 >> 50)) {
                    v27 = _SafeSub(uint24(v8 >> 60), msg.gas);
                    v28 = 0x23c8(v27);
                    v29 = _SafeMul(v8 & 0x3ffffffffffff, v28);
                    require(v29 < v26, Error(52));
                    v30 = 0x23c8(msg.gas);
                    require(v30 >= msg.gas, Error(13665));
                    v31 = _SafeSub(v26, v29);
                    0x5e37(v25, v20, v31, v8 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                } else {
                    v32 = _SafeSub(uint24(v8 >> 60), msg.gas);
                    v33 = 0x23d7(v32);
                    v34 = _SafeMul(v8 & 0x3ffffffffffff, v33);
                    require(v34 < v26, Error(52));
                    v35 = _SafeSub(v26, v34);
                    require(0x3ff & v8 >> 50 <= 1000);
                    v36 = _SafeMul(v35, 0x3ff & v8 >> 50);
                    v37 = _SafeSub(v35, v36 / 1000);
                    v38 = 0;
                    if (this.balance <= v36 / 1000) {
                        v39 = 0x2415(v20);
                        0x5f56(v39, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                        v38 = v40 = 1;
                    }
                    if (v36 / 1000) {
                        v41 = block.coinbase.call().value(v36 / 1000).gas(10000);
                    }
                    v42 = 0x23d7(msg.gas);
                    require(v42 >= msg.gas, Error(13666));
                    v43 = v8 & 0x3ffffffffffff < 10 ** 9;
                    if (v43) {
                        if (v25 - v36 / 1000 <= v25) {
                            v43 = v44 = 10 ** 17 < v25 - v36 / 1000;
                        }
                    }
                    if (v43) {
                        v45 = 0x3a4a(v8 & 0x3ffffffffffff);
                        v43 = v46 = v45 < v37;
                    }
                    if (v43) {
                        if (!v38) {
                            if (this.balance < v20) {
                                v47 = 0x2415(v20);
                                0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v47);
                            } else {
                                v48 = 0x2415(this.balance);
                                v49, /* uint256 */ v50 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v48).gas(msg.gas);
                                if (RETURNDATASIZE()) {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v51 = v52 = new bytes[](RETURNDATASIZE());
                                    require(!((v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v52 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v52)), Panic(65)); // failed memory allocation (too much memory)
                                    v50 = v52.data;
                                    RETURNDATACOPY(v50, 0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v53 = 0x2415(this.balance);
                            v54, /* uint256 */ v55 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v53).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v56 = v57 = new bytes[](RETURNDATASIZE());
                                require(!((v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v57 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v57)), Panic(65)); // failed memory allocation (too much memory)
                                v55 = v57.data;
                                RETURNDATACOPY(v55, 0, RETURNDATASIZE());
                            }
                        }
                    }
                }
                return ;
            }
        }
        v58 = RETURNDATASIZE();
        revert(v59, v59, v59, v59, v59, v59, v59, v59, v59, 0);
    }
    revert(Panic(17));
}

function 0x4abd(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, struct(4) varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = v1 * varg1 * varg0;
    v2 = 10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max - 10 ** 12 * address(varg6.word0) * address(varg6.word0) - (10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max < 10 ** 12 * address(varg6.word0) * address(varg6.word0)) > v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0);
    if (10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max - 10 ** 12 * address(varg6.word0) * address(varg6.word0) - (10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max < 10 ** 12 * address(varg6.word0) * address(varg6.word0)) <= v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0)) {
        v3 = 10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max - 10 ** 12 * address(varg6.word0) * address(varg6.word0) - (10 ** 12 * address(varg6.word0) * address(varg6.word0) % uint256.max < 10 ** 12 * address(varg6.word0) * address(varg6.word0)) == v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0);
        if (v3) {
            return 10 ** 12 * address(varg6.word0) * address(varg6.word0) >= v0 * varg0, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v1;
        } else {
            return v3, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v1;
        }
    } else {
        return v2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v1;
    }
}

function 0x4b36(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, address varg5, uint256 varg6, uint256 varg7, address varg8, uint256 varg9, uint256 varg10, uint24 varg11) private { 
    if (0 == varg2) {
        if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            varg1 = v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
    } else {
        varg1 = v1 = 0;
    }
    if (!varg2) {
        if (address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            varg1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
    }
    v3 = 0x2350();
    v3.word0 = address(varg1);
    v3.word1 = address(varg1);
    v3.word2 = varg3;
    v3.word3 = varg4;
    v3.word4 = varg5;
    v4 = v5 = 32;
    if (!varg6) {
        v6 = 0x237d();
        v6.word0 = bool(varg6);
        v6.word1 = varg7;
        v6.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        v7 = v8 = MEM[64];
        MEM[v8] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
        MEM[v8 + 4] = address(v3.word0);
        MEM[v8 + 4 + 32] = address(v3.word1);
        MEM[v8 + 4 + 64] = uint24(v3.word2);
        MEM[v8 + 4 + 96] = int24(v3.word3);
        MEM[v8 + 4 + 128] = address(v3.word4);
        MEM[v8 + 4 + 160] = bool(v6.word0);
        MEM[v8 + 4 + 192] = v6.word1;
        MEM[v8 + 4 + 224] = address(v6.word2);
        MEM[v8 + 4 + (uint8.max + 1)] = 288;
        MEM[v8 + 4 + 288] = 0;
        v9 = v10 = v8 + 4 + 288 + 32;
    } else {
        v11 = 0x237d();
        v11.word0 = bool(varg6);
        v11.word1 = varg7;
        v11.word2 = address(0x1000276a4);
        v7 = v12 = MEM[64];
        MEM[v12] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
        MEM[v12 + 4] = address(v3.word0);
        MEM[v12 + 4 + 32] = address(v3.word1);
        MEM[v12 + 4 + 64] = uint24(v3.word2);
        MEM[v12 + 4 + 96] = int24(v3.word3);
        MEM[v12 + 4 + 128] = address(v3.word4);
        MEM[v12 + 4 + 160] = bool(v11.word0);
        MEM[v12 + 4 + 192] = v11.word1;
        MEM[v12 + 4 + 224] = address(v11.word2);
        MEM[v12 + 4 + (uint8.max + 1)] = 288;
        MEM[v12 + 4 + 288] = 0;
        v9 = v13 = v12 + 4 + 288 + 32;
    }
    v14 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v889db0x4b36_0x1:v889db0x4b36_0x1 + v4bec_0x0 - v889db0x4b36_0x1], MEM[v889db0x4b36_0x1:v889db0x4b36_0x1 + v4bec_0x3]).gas(msg.gas);
    if (v14) {
        v15 = v16 = 0;
        if (v14) {
            v17 = v18 = 20490;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v19 = v20 = v7 + 32;
            }
        }
        if (!v21) {
            v22 = v23 = v15 >> 128;
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v24 = 0x4444c5dc75cb358380d2e3de08a90.take(address(varg1), address(varg0), int128(v23)).gas(msg.gas);
            if (v24) {
                if (v24) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v25 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(varg1)).gas(msg.gas);
                if (v25) {
                    v26 = v27 = 19720;
                    if (v25) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v28 = v29 = int128(v15);
                }
            }
        } else {
            v22 = v30 = int128(v15);
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v31 = 0x4444c5dc75cb358380d2e3de08a90.take(address(varg1), address(varg0), v30).gas(msg.gas);
            if (v31) {
                if (v31) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v32 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(varg1)).gas(msg.gas);
                if (v32) {
                    v26 = v33 = 19720;
                    if (v32) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v28 = v34 = v15 >> 128;
                }
            }
        }
        if (varg2) {
            varg2 = v35 = address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
        if (!varg2) {
            v21 = v36 = !v21;
        }
        if (v21) {
        }
        if (v21) {
        }
        v37 = v38 = _SafeDiv((10000 - varg11) * int128(v22) * varg10, varg10 * 10000 + (10000 - varg11) * int128(v22));
        if (v21) {
            v37 = v39 = 0;
        }
        if (!v21) {
            v37 = v40 = 0;
        }
        require(varg8.code.size);
        v41 = varg8.swap(v37, v37, this, 128, 0).gas(msg.gas);
        if (v41) {
            if (v41) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            require(int128(v28) != int128.min, Panic(17)); // arithmetic overflow or underflow
            if (!varg2) {
                0x499d(int128(0 - int128(v28)));
                v7 = v42 = MEM[64];
                v43 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
                if (v43) {
                    if (!v43) {
                        return ;
                    }
                }
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v44 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(int128(0 - int128(v28))).gas(msg.gas);
                if (v44) {
                    if (v44) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v7 = v45 = MEM[64];
                    v46 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(int128(0 - int128(v28))).gas(msg.gas);
                    if (v46) {
                        if (!v46) {
                            return ;
                        }
                    }
                }
            }
            v17 = v47 = 0x889b9;
            if (32 <= RETURNDATASIZE()) {
                require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v7 + 32;
                v19 = v48 = v7 + 32;
            }
        }
        require(!((v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v7)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v7 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v19 = v7 + RETURNDATASIZE();
        require(v19 - v7 >= 32);
        v15 = MEM[v7];
        // Unknown jump to Block ['0x500a', '0x889b90x4b36']. Refer to 3-address code (TAC);
        return ;
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
}

function 0x509c(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint24 varg11) private { 
    v0 = v1 = 10401;
    v2 = v3 = 32;
    if (0 == varg2) {
        if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            varg1 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
    } else {
        varg1 = v5 = 0;
    }
    v6 = address(varg1);
    if (!varg2) {
        if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v7 = v8 = address(varg1);
            v9 = v10 = 0x2350();
            v10.word0 = address(v6);
            v10.word1 = address(v8);
            v10.word2 = varg3;
            v10.word3 = varg4;
        } else {
            v7 = v11 = address(0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            v9 = 0x2350();
            v9.word0 = address(v6);
            v9.word1 = address(v11);
            v9.word2 = varg3;
            v9.word3 = varg4;
        }
    } else {
        v7 = v12 = address(varg1);
        v9 = v13 = 0x2350();
        v13.word0 = address(v6);
        v13.word1 = address(v12);
        v13.word2 = varg3;
        v13.word3 = varg4;
    }
    MEM[v9 + 128] = address(varg5);
    if (!varg6) {
        v14 = 0x237d();
        v14.word0 = bool(varg6);
        v14.word1 = varg7;
        v14.word2 = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        v15 = v16 = MEM[64];
        MEM[v16] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
        MEM[v16 + 4] = address(MEM[v9]);
        MEM[v16 + 4 + 32] = address(MEM[v9 + 32]);
        MEM[v16 + 4 + 64] = uint24(MEM[v9 + 64]);
        MEM[v16 + 4 + 96] = int24(MEM[v9 + 96]);
        MEM[v16 + 4 + 128] = address(MEM[128 + v9]);
        MEM[v16 + 4 + 160] = bool(v14.word0);
        MEM[v16 + 4 + 192] = v14.word1;
        MEM[v16 + 4 + 224] = address(v14.word2);
        MEM[v16 + 4 + (uint8.max + 1)] = 288;
        MEM[v16 + 4 + 288] = 0;
        v17 = v18 = v16 + 4 + 288 + 32;
        // Unknown jump to Block 0x50ea. Refer to 3-address code (TAC);
    } else {
        v19 = 0x237d();
        v19.word0 = bool(varg6);
        v19.word1 = varg7;
        v19.word2 = address(0x1000276a4);
        v15 = MEM[64];
        MEM[v15] = 0xf3cd914c00000000000000000000000000000000000000000000000000000000;
        MEM[v15 + 4] = address(MEM[v9]);
        MEM[v15 + 4 + 32] = address(MEM[v9 + 32]);
        MEM[v15 + 4 + 64] = uint24(MEM[v9 + 64]);
        MEM[v15 + 4 + 96] = int24(MEM[v9 + 96]);
        MEM[v15 + 4 + 128] = address(MEM[128 + v9]);
        MEM[v15 + 4 + 160] = bool(v19.word0);
        MEM[v15 + 4 + 192] = v19.word1;
        MEM[v15 + 4 + 224] = address(v19.word2);
        MEM[v15 + 4 + (uint8.max + 1)] = 288;
        MEM[v15 + 4 + 288] = 0;
        v17 = v15 + 4 + 288 + 32;
    }
    v20 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[v509c0x86c6d:v509c0x86c6d + v509c0x89532 - v509c0x86c6d], MEM[v509c0x86c6d:v509c0x86c6d + v2c5f0x509c_0x2]).gas(msg.gas);
    if (v20) {
        v21 = v22 = 0;
        if (v20) {
            v23 = v24 = 21724;
            if (32 <= RETURNDATASIZE()) {
                require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v15 + 32;
                v25 = v26 = v15 + 32;
            }
        }
        if (!varg6) {
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v27 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v6), address(varg0), int128(v21 >> 128)).gas(msg.gas);
            if (v27) {
                if (v27) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v28 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v7)).gas(msg.gas);
                if (v28) {
                    v29 = v30 = 21027;
                    if (v28) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v31 = v32 = int128(v21);
                }
            }
        } else {
            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
            v33 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v7), address(varg0), int128(v21)).gas(msg.gas);
            if (v33) {
                if (v33) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v34 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v6)).gas(msg.gas);
                if (v34) {
                    v29 = v35 = 21027;
                    if (v34) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v31 = v36 = v21 >> 128;
                }
            }
        }
        if (varg2) {
            varg2 = v37 = address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        }
        if (!varg2) {
            varg6 = v38 = !varg6;
        }
        if (!varg6) {
            v39 = 0x25ae(v31);
            v40 = v41 = int128(v39);
        } else {
            v40 = v42 = 0;
        }
        if (!varg6) {
            v40 = v43 = 0;
        } else {
            v44 = 0x25ae(v31);
            v40 = v45 = int128(v44);
        }
        if (varg6) {
        }
        if (varg6) {
        }
        if (varg6) {
        }
        v46 = _SafeDiv(varg10 * v40 * 10000, (varg10 - v40) * (10000 - varg11));
        if (!varg2) {
            0x48a4(varg8, v46 + 1);
        } else {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
            v47 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v46 + 1).gas(msg.gas);
            if (v47) {
                if (v47) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v48 = new bytes[](68);
                MEM[v48.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                MEM[v48 + 36] = address(varg8);
                MEM[v48 + 68] = v46 + 1;
                require(!((v48 + 128 > uint64.max) | (v48 + 128 < v48)), Panic(65)); // failed memory allocation (too much memory)
                v49 = v48.length;
                v50 = v51 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(varg8), v46 + 1).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v52 = v53 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v52 = v54 = new bytes[](RETURNDATASIZE());
                    require(!((v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v54 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v54)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v54.data, 0, RETURNDATASIZE());
                }
                if (v51) {
                    v50 = !MEM[v52];
                    if (bool(MEM[v52])) {
                        require(v52 + MEM[v52] - v52 >= 32);
                        v50 = v55 = MEM[v52 + 32];
                        require(!(bool(v55) - v55));
                    }
                }
                require(v50, Error(21574));
            }
        }
        require((address(varg8)).code.size);
        v56 = address(varg8).swap(v40, v40, 0x4444c5dc75cb358380d2e3de08a90, 128, 0).gas(msg.gas);
        if (v56) {
            if (v56) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v15 = v57 = MEM[64];
            v58 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
            if (v58) {
                if (v58) {
                    v23 = v59 = 0x889b9;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v57 + 32 > uint64.max) | (v57 + 32 < v57)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v57 + 32;
                        v25 = v60 = v57 + 32;
                    }
                } else {
                    return ;
                }
            }
        }
        require(!((v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v15 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v25 = v15 + RETURNDATASIZE();
        require(v25 - v15 >= 32);
        v21 = MEM[v15];
        // Unknown jump to Block ['0x54dc', '0x889b90x509c']. Refer to 3-address code (TAC);
        return ;
    }
    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
    revert(MEM[64], RETURNDATASIZE());
}

function 0x5559(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, bool varg7, bool varg8, uint256 varg9) private { 
    v0 = varg4 * varg5 * address(MEM[varg2]);
    v1 = v2 = 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max - 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) - (10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max < 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1])) > v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]));
    if (10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max - 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) - (10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max < 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1])) <= v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]))) {
        v1 = v3 = 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max - 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) - (10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) % uint256.max < 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1])) == v0 * address(MEM[varg2]) % uint256.max - v0 * address(MEM[varg2]) - (v0 * address(MEM[varg2]) % uint256.max < v0 * address(MEM[varg2]));
        if (v3) {
            v1 = v4 = 10 ** 12 * address(MEM[varg1]) * address(MEM[varg1]) >= v0 * address(MEM[varg2]);
            // Unknown jump to Block 0x5589. Refer to 3-address code (TAC);
        } else {
            // Unknown jump to Block 0x5589. Refer to 3-address code (TAC);
        }
    }
    require(!v1, Error(0x696e66));
    v5 = uint128(MEM[varg2 + 32]);
    v6 = address(MEM[varg2]);
    v7 = uint128(MEM[varg1 + 32]);
    v8 = varg4 * varg5 * v6 - varg6 * address(MEM[varg1]) * 10 ** 6;
    v9 = 0x5df1(v8 * v5 * v6 * v7 % uint256.max - v8 * v5 * v6 * v7 - (v8 * v5 * v6 * v7 % uint256.max < v8 * v5 * v6 * v7) + (v8 * v5 * v6 % uint256.max - v8 * v5 * v6 - (v8 * v5 * v6 % uint256.max < v8 * v5 * v6) + (v8 * v5 % uint256.max - v8 * v5 - (v8 * v5 % uint256.max < v8 * v5) + (0 - (varg4 * varg5 * v6 < varg6 * address(MEM[varg1]) * 10 ** 6)) * v5) * v6) * v7, v8 * v5 * v6 * v7, (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) % uint256.max - (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) - ((10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96) % uint256.max < (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96)) + (10 ** 6 * v5 * address(MEM[varg1]) % uint256.max - 10 ** 6 * v5 * address(MEM[varg1]) - (10 ** 6 * v5 * address(MEM[varg1]) % uint256.max < 10 ** 6 * v5 * address(MEM[varg1])) + (varg5 * v7 * v6 % uint256.max - varg5 * v7 * v6 - (varg5 * v7 * v6 % uint256.max < varg5 * v7 * v6)) + (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6 < 10 ** 6 * v5 * address(MEM[varg1]))) * (varg4 << 96), (10 ** 6 * v5 * address(MEM[varg1]) + varg5 * v7 * v6) * (varg4 << 96));
    v10 = new struct(13);
    v10.word1 = address(this);
    v10.word2 = address(varg9);
    v10.word3 = varg8;
    v10.word4 = uint24(MEM[MEM[varg2 + 64] + 64]);
    v10.word5 = int24(MEM[MEM[varg2 + 64] + 96]);
    v10.word6 = address(MEM[MEM[varg2 + 64] + 128]);
    v10.word7 = 1;
    v10.word8 = v9;
    v10.word9 = varg7;
    v10.word10 = uint24(MEM[MEM[varg1 + 64] + 64]);
    v10.word11 = int24(MEM[MEM[varg1 + 64] + 96]);
    v10.word12 = address(MEM[MEM[varg1 + 64] + 128]);
    v10.word0 = 384;
    require(!((v10 + 416 > uint64.max) | (v10 + 416 < v10)), Panic(65)); // failed memory allocation (too much memory)
    v11 = new bytes[](v10.word0.length);
    MCOPY(v11.data, v10.data, v10.word0.length);
    v11[v10.word0.length] = 0;
    v12 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v11, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v12) {
        if (v12) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
            require(v13.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v14 = new bytes[](v13.length);
            require(!((v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v13.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v13.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v14.data, v13.data, v13.length);
            v14[v13.length] = 0;
        }
        _uniswapV3SwapCallback = 0;
        v15, /* uint256 */ v16 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
        if (v15) {
            v16 = v17 = 0;
            if (v15) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v18 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v18 = v19 = MEM[64] + 32;
                }
                require(v18 - MEM[64] >= 32);
            }
            v20 = this.balance;
            v21 = _SafeAdd(v16, v20);
            v22 = _SafeSub(v21, varg0);
            if (!(0x3ff & varg3 >> 50)) {
                v23 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v24 = 0x23c8(v23);
                v25 = _SafeMul(varg3 & 0x3ffffffffffff, v24);
                require(v25 < v22, Error(52));
                v26 = 0x23c8(msg.gas);
                require(v26 >= msg.gas, Error(13665));
                v27 = _SafeSub(v22, v25);
                0x5e37(v21, v16, v27, varg3 & 0x3ffffffffffff, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            } else {
                v28 = _SafeSub(uint24(varg3 >> 60), msg.gas);
                v29 = 0x23d7(v28);
                v30 = _SafeMul(varg3 & 0x3ffffffffffff, v29);
                require(v30 < v22, Error(52));
                v31 = _SafeSub(v22, v30);
                require(0x3ff & varg3 >> 50 <= 1000);
                v32 = _SafeMul(v31, 0x3ff & varg3 >> 50);
                v33 = _SafeSub(v31, v32 / 1000);
                v34 = 0;
                if (this.balance <= v32 / 1000) {
                    v35 = 0x2415(v16);
                    0x5f56(v35, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                    v34 = v36 = 1;
                }
                if (v32 / 1000) {
                    v37 = block.coinbase.call().value(v32 / 1000).gas(10000);
                }
                v38 = 0x23d7(msg.gas);
                require(v38 >= msg.gas, Error(13666));
                v39 = varg3 & 0x3ffffffffffff < 10 ** 9;
                if (v39) {
                    require(v21 - v32 / 1000 <= v21, Panic(17)); // arithmetic overflow or underflow
                    v39 = v40 = 10 ** 17 < v21 - v32 / 1000;
                }
                if (v39) {
                    v41 = 0x3a4a(varg3 & 0x3ffffffffffff);
                    v39 = v42 = v41 < v33;
                }
                if (v39) {
                    if (!v34) {
                        if (this.balance < v16) {
                            v43 = 0x2415(v16);
                            0x494b(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, v43);
                        } else {
                            v44 = 0x2415(this.balance);
                            v45, /* uint256 */ v46 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v44).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v47 = v48 = new bytes[](RETURNDATASIZE());
                                require(!((v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v48 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v48)), Panic(65)); // failed memory allocation (too much memory)
                                v46 = v48.data;
                                RETURNDATACOPY(v46, 0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v49 = 0x2415(this.balance);
                        v50, /* uint256 */ v51 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v49).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v52 = v53 = new bytes[](RETURNDATASIZE());
                            require(!((v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v53 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v53)), Panic(65)); // failed memory allocation (too much memory)
                            v51 = v53.data;
                            RETURNDATACOPY(v51, 0, RETURNDATASIZE());
                        }
                    }
                }
            }
            return ;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function 0x5629(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg2 * varg4 * varg1;
    v1 = 10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) > v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192);
    if (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) <= v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192)) {
        v2 = 10 ** 10 * varg3 * (varg3 * varg0) % uint256.max - 10 ** 10 * varg3 * (varg3 * varg0) - (10 ** 10 * varg3 * (varg3 * varg0) % uint256.max < 10 ** 10 * varg3 * (varg3 * varg0)) == v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192);
        if (v2) {
            return 10 ** 10 * varg3 * (varg3 * varg0) >= v0 << 192;
        } else {
            return v2;
        }
    } else {
        return v1;
    }
}

function 0x568b(uint256 varg0) private { 
    if (!varg0) {
        return 0;
    } else {
        v0 = varg0 >> (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 7);
        v1 = v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) >> (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 5);
        v2 = v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) >> (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 3);
        v3 = 1 << (((varg0 > uint128.max + 1) | (varg0 == uint128.max + 1)) << 6) << (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 5) << (((v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) > uint32.max + 1) | (v0 >> (((v0 > uint64.max + 1) | (v0 == uint64.max + 1)) << 6) == uint32.max + 1)) << 4) << (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 3) << (((v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) > uint8.max + 1) | (v1 >> (((v1 > uint16.max + 1) | (v1 == uint16.max + 1)) << 4) == uint8.max + 1)) << 2) << (((v2 > 16) | (v2 == 16)) << 1) << (((v2 >> (((v2 > 16) | (v2 == 16)) << 2) > 8) | (v2 >> (((v2 > 16) | (v2 == 16)) << 2) == 8)) << 1);
        v4 = _SafeDiv(varg0, v3);
        v5 = _SafeDiv(varg0, v4 + v3 >> 1);
        v6 = _SafeDiv(varg0, v5 + (v4 + v3 >> 1) >> 1);
        v7 = _SafeDiv(varg0, v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1);
        v8 = _SafeDiv(varg0, v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1);
        v9 = _SafeDiv(varg0, v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1);
        v10 = _SafeDiv(varg0, v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1);
        v11 = v10 + (v9 + (v8 + (v7 + (v6 + (v5 + (v4 + v3 >> 1) >> 1) >> 1) >> 1) >> 1) >> 1) >> 1;
        require(v11, Panic(18)); // division by zero
        if (v11 < varg0 / v11) {
            return v11;
        } else {
            return varg0 / v11;
        }
    }
}

function 0x5a78(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg1 * varg4 * varg0;
    v1 = varg3 * 10 ** 10 * (uint192.max + 1) % uint256.max - 0x2540be400000000000000000000000000000000000000000000000000 * varg3 - (varg3 * 10 ** 10 * (uint192.max + 1) % uint256.max < 0x2540be400000000000000000000000000000000000000000000000000 * varg3);
    if (v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) >= v1) {
        if (v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) == v1) {
            return v0 * (varg0 * varg2) <= 0x2540be400000000000000000000000000000000000000000000000000 * varg3;
        } else {
            return v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) == v1;
        }
    } else {
        return v0 * (varg0 * varg2) % uint256.max - v0 * (varg0 * varg2) - (v0 * (varg0 * varg2) % uint256.max < v0 * (varg0 * varg2)) < v1;
    }
}

function 0x5b5b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg3 * (varg4 * varg1);
    v1 = v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) < 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2));
    if (v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) >= 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2))) {
        if (v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) == 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2))) {
            return v0 << 192 <= 10 ** 10 * varg0 * (varg0 * varg2);
        } else {
            return v0 * (uint192.max + 1) % uint256.max - (v0 << 192) - (v0 * (uint192.max + 1) % uint256.max < v0 << 192) == 10 ** 10 * varg0 * (varg0 * varg2) % uint256.max - 10 ** 10 * varg0 * (varg0 * varg2) - (10 ** 10 * varg0 * (varg0 * varg2) % uint256.max < 10 ** 10 * varg0 * (varg0 * varg2));
        }
    } else {
        return v1;
    }
}

function 0x5c02(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = varg1 * 10 ** 10 * (uint192.max + 1) % uint256.max - 0x2540be400000000000000000000000000000000000000000000000000 * varg1 - (varg1 * 10 ** 10 * (uint192.max + 1) % uint256.max < 0x2540be400000000000000000000000000000000000000000000000000 * varg1);
    v1 = varg2 * varg4 * varg3;
    if (v0 <= v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0))) {
        if (v0 == v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0))) {
            return 0x2540be400000000000000000000000000000000000000000000000000 * varg1 >= v1 * (varg3 * varg0);
        } else {
            return v0 == v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0));
        }
    } else {
        return v0 > v1 * (varg3 * varg0) % uint256.max - v1 * (varg3 * varg0) - (v1 * (varg3 * varg0) % uint256.max < v1 * (varg3 * varg0));
    }
}

function 0x5c47(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = v0 * varg0 - varg6 * varg1 * 0x186a0000000000000000000000000;
    v2 = v1 * varg3 * varg4;
    v3 = 0xf4240000000000000000000000000 * varg4 + varg3 * (varg5 * varg0);
    v4 = 0x5df1(v1 * varg3 * varg4 % uint256.max - v2 - (v1 * varg3 * varg4 % uint256.max < v2) + (v1 * varg3 % uint256.max - v1 * varg3 - (v1 * varg3 % uint256.max < v1 * varg3) + (v0 * varg0 % uint256.max - v0 * varg0 - (v0 * varg0 % uint256.max < v0 * varg0) - (v0 * varg0 < varg6 * varg1 * 0x186a0000000000000000000000000)) * varg3) * varg4, v2, v3 * (varg2 << 96) % uint256.max - v3 * (varg2 << 96) - (v3 * (varg2 << 96) % uint256.max < v3 * (varg2 << 96)) + ((v3 < 0xf4240000000000000000000000000 * varg4) + (varg3 * (varg5 * varg0) % uint256.max - varg3 * (varg5 * varg0) - (varg3 * (varg5 * varg0) % uint256.max < varg3 * (varg5 * varg0)))) * (varg2 << 96), v3 * (varg2 << 96));
    return v4;
}

function 0x5ccd(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg0;
    v1 = v0 - varg6 * varg3 * 10 ** 6 << 96;
    v2 = v1 * varg1 * varg4;
    v3 = varg1 * varg5 * varg0 + 10 ** 6 * varg4 * varg3;
    v4 = v3 * varg2 * varg3;
    v5 = 0x5df1(v1 * varg1 * varg4 % uint256.max - v2 - (v1 * varg1 * varg4 % uint256.max < v2) + (v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max - v1 - ((v0 - varg6 * varg3 * 10 ** 6) * (uint96.max + 1) % uint256.max < v1) + (0 - (v0 < varg6 * varg3 * 10 ** 6) << 96)) * varg1) * varg4, v2, v3 * varg2 * varg3 % uint256.max - v4 - (v3 * varg2 * varg3 % uint256.max < v4) + (v3 * varg2 % uint256.max - v3 * varg2 - (v3 * varg2 % uint256.max < v3 * varg2) + (varg1 * varg5 * varg0 % uint256.max - varg1 * varg5 * varg0 - (varg1 * varg5 * varg0 % uint256.max < varg1 * varg5 * varg0) + (10 ** 6 * varg4 * varg3 % uint256.max - 10 ** 6 * varg4 * varg3 - (10 ** 6 * varg4 * varg3 % uint256.max < 10 ** 6 * varg4 * varg3)) + (v3 < varg1 * varg5 * varg0)) * varg2) * varg3, v4);
    return v5;
}

function 0x5d45(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = 10 ** 12 * varg0 * varg0 % uint256.max - 10 ** 12 * varg0 * varg0 - (10 ** 12 * varg0 * varg0 % uint256.max < 10 ** 12 * varg0 * varg0);
    v1 = varg1 * varg3 * varg2;
    v2 = v1 * varg2 % uint256.max - v1 * varg2 - (v1 * varg2 % uint256.max < v1 * varg2);
    if (v0 <= v2) {
        if (v0 == v2) {
            return 10 ** 12 * varg0 * varg0 >= v1 * varg2;
        } else {
            return v0 == v2;
        }
    } else {
        return v0 > v2;
    }
}

function 0x5d5c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    v0 = varg2 * varg5 * varg3;
    v1 = (v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3;
    v2 = 10 ** 6 * varg4 * varg0 + varg5 * varg1 * varg3;
    v3 = 0x5df1(v1 * varg1 % uint256.max - v1 * varg1 - (v1 * varg1 % uint256.max < v1 * varg1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max - v1 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 * varg3 % uint256.max < v1) + ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max - (v0 - varg6 * varg0 * 10 ** 6) * varg4 - ((v0 - varg6 * varg0 * 10 ** 6) * varg4 % uint256.max < (v0 - varg6 * varg0 * 10 ** 6) * varg4) + (0 - (v0 < varg6 * varg0 * 10 ** 6)) * varg4) * varg3) * varg1, v1 * varg1, v2 * (varg2 << 96) % uint256.max - v2 * (varg2 << 96) - (v2 * (varg2 << 96) % uint256.max < v2 * (varg2 << 96)) + (10 ** 6 * varg4 * varg0 % uint256.max - 10 ** 6 * varg4 * varg0 - (10 ** 6 * varg4 * varg0 % uint256.max < 10 ** 6 * varg4 * varg0) + (varg5 * varg1 * varg3 % uint256.max - varg5 * varg1 * varg3 - (varg5 * varg1 * varg3 % uint256.max < varg5 * varg1 * varg3)) + (v2 < 10 ** 6 * varg4 * varg0)) * (varg2 << 96), v2 * (varg2 << 96));
    return v3;
}

function 0x5df1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg2 > varg0;
    if (varg2 <= varg0) {
        v0 = v2 = varg2 == varg0;
        if (v2) {
            v0 = v3 = varg3 > varg1;
        }
    }
    if (v0) {
        return 0;
    } else if (!varg2) {
        v4 = 0x45c9(varg1, varg0, varg3);
        return v4;
    } else {
        v5 = _SafeDiv(varg0, varg2);
        return v5;
    }
}

function 0x5e37(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = v1 = varg3 < 10 ** 9;
    if (v1) {
        v0 = v2 = 10 ** 17 < varg0;
    }
    if (v0) {
        v3 = 0x3a4a(varg3);
        v0 = v4 = v3 < varg2;
    }
    if (v0) {
        if (this.balance < varg1) {
            v5 = 0x2415(varg1);
            0x494b(varg4, v5);
            return ;
        } else {
            v6 = 0x2415(this.balance);
            v7, /* uint256 */ v8 = 0x4d2b70c80d37c543fcdacba7bfcb3a8d52c89e54.call().value(v6).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v9 = v10 = new bytes[](RETURNDATASIZE());
                require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
                v8 = v10.data;
                RETURNDATACOPY(v8, 0, RETURNDATASIZE());
            }
            return ;
        }
    } else {
        return ;
    }
}

function 0x5f56(uint256 varg0, uint256 varg1) private { 
    v0 = varg1.withdraw(varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + data]) {
        if (msg.data[4 + data] - 32) {
            require(!(msg.data[4 + data] - 160), Error(0x3f3f3f));
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 160);
            require(!(address(data.word1) - data.word1));
            require(!(bool(data.word2) - data.word2));
            require(!(data.word3 - uint24(data.word3)));
            require(!(data.word4 - int24(data.word4)));
            require(!(address(data.word5) - data.word5));
            if (0 == data.word2) {
                v1 = v2 = amount1Delta > 0;
            } else {
                v1 = 1;
            }
            if (0 != amount0Delta > 0) {
            }
            v3 = new struct(9);
            v4 = v3.data;
            v3.word1 = msg.sender;
            v3.word2 = address(data.word1);
            v3.word3 = bool(data.word2);
            v3.word4 = uint24(data.word3);
            v3.word5 = int24(data.word4);
            v3.word6 = address(data.word5);
            v3.word7 = bool(v1);
            v3.word8 = v5;
            v3.word0 = uint8.max + 1;
            require(!((v3 + 288 > uint64.max) | (v3 + 288 < v3)), Panic(65)); // failed memory allocation (too much memory)
            v6 = new bytes[](v3.word0.length);
            MCOPY(v6.data, v3.data, v3.word0.length);
            v6[v3.word0.length] = 0;
            v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            if (v7) {
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](v8.length);
                    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v9.data, v8.data, v8.length);
                    v9[v8.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
        } else {
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
            require(!(bool(data.word1) - data.word1));
            if (amount0Delta > 0) {
            }
            if (!data.word1) {
                0x48a4(msg.sender, v5);
                exit;
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v10 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v5).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v11 = new bytes[](68);
                    MEM[v11.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 36] = msg.sender;
                    MEM[v11 + 68] = v5;
                    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v11.length;
                    v13 = v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v5).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v16 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v16 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        v15 = v18.data;
                        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
                    }
                    if (v14) {
                        v13 = !MEM[v16];
                        if (bool(MEM[v16])) {
                            require(v16 + MEM[v16] - v16 >= 32);
                            v13 = v19 = MEM[v16 + 32];
                            require(!(bool(v19) - v19));
                        }
                    }
                    require(v13, Error(21574));
                    exit;
                }
            }
        }
        v20 = RETURNDATASIZE();
        revert(v21, v21, v21, v21, v21, v21, v21, v21, v21, v21, 0);
    } else if (amount0Delta <= 0) {
        0x48a4(msg.sender, amount1Delta);
        exit;
    } else {
        0x48a4(msg.sender, amount0Delta);
        exit;
    }
}

function solidlyV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + data]) {
        if (msg.data[4 + data] - 32) {
            require(!(msg.data[4 + data] - 160), Error(0x3f3f3f));
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 160);
            require(!(address(data.word1) - data.word1));
            require(!(bool(data.word2) - data.word2));
            require(!(data.word3 - uint24(data.word3)));
            require(!(data.word4 - int24(data.word4)));
            require(!(address(data.word5) - data.word5));
            if (0 == data.word2) {
                v1 = v2 = amount1Delta > 0;
            } else {
                v1 = 1;
            }
            if (0 != amount0Delta > 0) {
            }
            v3 = new struct(9);
            v4 = v3.data;
            v3.word1 = msg.sender;
            v3.word2 = address(data.word1);
            v3.word3 = bool(data.word2);
            v3.word4 = uint24(data.word3);
            v3.word5 = int24(data.word4);
            v3.word6 = address(data.word5);
            v3.word7 = bool(v1);
            v3.word8 = v5;
            v3.word0 = uint8.max + 1;
            require(!((v3 + 288 > uint64.max) | (v3 + 288 < v3)), Panic(65)); // failed memory allocation (too much memory)
            v6 = new bytes[](v3.word0.length);
            MCOPY(v6.data, v3.data, v3.word0.length);
            v6[v3.word0.length] = 0;
            v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            if (v7) {
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](v8.length);
                    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v9.data, v8.data, v8.length);
                    v9[v8.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
        } else {
            require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 32);
            require(!(bool(data.word1) - data.word1));
            if (amount0Delta > 0) {
            }
            if (!data.word1) {
                0x48a4(msg.sender, v5);
                exit;
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v10 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v5).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v11 = new bytes[](68);
                    MEM[v11.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 36] = msg.sender;
                    MEM[v11 + 68] = v5;
                    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v11.length;
                    v13 = v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v5).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v16 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v16 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        v15 = v18.data;
                        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
                    }
                    if (v14) {
                        v13 = !MEM[v16];
                        if (bool(MEM[v16])) {
                            require(v16 + MEM[v16] - v16 >= 32);
                            v13 = v19 = MEM[v16 + 32];
                            require(!(bool(v19) - v19));
                        }
                    }
                    require(v13, Error(21574));
                    exit;
                }
            }
        }
        v20 = RETURNDATASIZE();
        revert(v21, v21, v21, v21, v21, v21, v21, v21, v21, v21, 0);
    } else if (amount0Delta <= 0) {
        0x48a4(msg.sender, amount1Delta);
        exit;
    } else {
        0x48a4(msg.sender, amount0Delta);
        exit;
    }
}

function 0x9f3d4ab8(uint256 varg0, uint256 varg1, struct(6) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + varg2]) {
        if (msg.data[4 + varg2] - 32) {
            require(!(msg.data[4 + varg2] - 160), Error(0x3f3f3f));
            require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 160);
            require(!(address(varg2.word1) - varg2.word1));
            require(!(bool(varg2.word2) - varg2.word2));
            require(!(varg2.word3 - uint24(varg2.word3)));
            require(!(varg2.word4 - int24(varg2.word4)));
            require(!(address(varg2.word5) - varg2.word5));
            if (0 == varg2.word2) {
                v1 = v2 = varg1 > 0;
            } else {
                v1 = 1;
            }
            if (0 != varg0 > 0) {
            }
            v3 = new struct(9);
            v4 = v3.data;
            v3.word1 = msg.sender;
            v3.word2 = address(varg2.word1);
            v3.word3 = bool(varg2.word2);
            v3.word4 = uint24(varg2.word3);
            v3.word5 = int24(varg2.word4);
            v3.word6 = address(varg2.word5);
            v3.word7 = bool(v1);
            v3.word8 = v5;
            v3.word0 = uint8.max + 1;
            require(!((v3 + 288 > uint64.max) | (v3 + 288 < v3)), Panic(65)); // failed memory allocation (too much memory)
            v6 = new bytes[](v3.word0.length);
            MCOPY(v6.data, v3.data, v3.word0.length);
            v6[v3.word0.length] = 0;
            v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            if (v7) {
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](v8.length);
                    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v9.data, v8.data, v8.length);
                    v9[v8.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
        } else {
            require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
            require(!(bool(varg2.word1) - varg2.word1));
            if (varg0 > 0) {
            }
            if (!varg2.word1) {
                0x48a4(msg.sender, v5);
                exit;
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v10 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v5).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v11 = new bytes[](68);
                    MEM[v11.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 36] = msg.sender;
                    MEM[v11 + 68] = v5;
                    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v11.length;
                    v13 = v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v5).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v16 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v16 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        v15 = v18.data;
                        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
                    }
                    if (v14) {
                        v13 = !MEM[v16];
                        if (bool(MEM[v16])) {
                            require(v16 + MEM[v16] - v16 >= 32);
                            v13 = v19 = MEM[v16 + 32];
                            require(!(bool(v19) - v19));
                        }
                    }
                    require(v13, Error(21574));
                    exit;
                }
            }
        }
        v20 = RETURNDATASIZE();
        revert(v21, v21, v21, v21, v21, v21, v21, v21, v21, v21, 0);
    } else if (varg0 <= 0) {
        0x48a4(msg.sender, varg1);
        exit;
    } else {
        0x48a4(msg.sender, varg0);
        exit;
    }
}

function 0xa0bd0131(uint256 varg0, uint256 varg1, struct(6) varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_uniswapV3SwapCallback);
    if (msg.data[4 + varg2]) {
        if (msg.data[4 + varg2] - 32) {
            require(!(msg.data[4 + varg2] - 160), Error(0x3f3f3f));
            require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 160);
            require(!(address(varg2.word1) - varg2.word1));
            require(!(bool(varg2.word2) - varg2.word2));
            require(!(varg2.word3 - uint24(varg2.word3)));
            require(!(varg2.word4 - int24(varg2.word4)));
            require(!(address(varg2.word5) - varg2.word5));
            if (0 == varg2.word2) {
                v1 = v2 = varg1 > 0;
            } else {
                v1 = 1;
            }
            if (0 != varg0 > 0) {
            }
            v3 = new struct(9);
            v4 = v3.data;
            v3.word1 = msg.sender;
            v3.word2 = address(varg2.word1);
            v3.word3 = bool(varg2.word2);
            v3.word4 = uint24(varg2.word3);
            v3.word5 = int24(varg2.word4);
            v3.word6 = address(varg2.word5);
            v3.word7 = bool(v1);
            v3.word8 = v5;
            v3.word0 = uint8.max + 1;
            require(!((v3 + 288 > uint64.max) | (v3 + 288 < v3)), Panic(65)); // failed memory allocation (too much memory)
            v6 = new bytes[](v3.word0.length);
            MCOPY(v6.data, v3.data, v3.word0.length);
            v6[v3.word0.length] = 0;
            v7 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v6, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
            if (v7) {
                if (v7) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                    require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v9 = new bytes[](v8.length);
                    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                    MCOPY(v9.data, v8.data, v8.length);
                    v9[v8.length] = 0;
                    exit;
                } else {
                    exit;
                }
            }
        } else {
            require(4 + varg2 + 32 + msg.data[4 + varg2] - (4 + varg2 + 32) >= 32);
            require(!(bool(varg2.word1) - varg2.word1));
            if (varg0 > 0) {
            }
            if (!varg2.word1) {
                0x48a4(msg.sender, v5);
                exit;
            } else {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                v10 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v5).gas(msg.gas);
                if (v10) {
                    if (v10) {
                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v11 = new bytes[](68);
                    MEM[v11.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                    MEM[v11 + 36] = msg.sender;
                    MEM[v11 + 68] = v5;
                    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v11.length;
                    v13 = v14, /* uint256 */ v15 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(msg.sender, v5).gas(msg.gas);
                    if (!RETURNDATASIZE()) {
                        v16 = v17 = 96;
                    } else {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v16 = v18 = new bytes[](RETURNDATASIZE());
                        require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
                        v15 = v18.data;
                        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
                    }
                    if (v14) {
                        v13 = !MEM[v16];
                        if (bool(MEM[v16])) {
                            require(v16 + MEM[v16] - v16 >= 32);
                            v13 = v19 = MEM[v16 + 32];
                            require(!(bool(v19) - v19));
                        }
                    }
                    require(v13, Error(21574));
                    exit;
                }
            }
        }
        v20 = RETURNDATASIZE();
        revert(v21, v21, v21, v21, v21, v21, v21, v21, v21, v21, 0);
    } else if (varg0 <= 0) {
        0x48a4(msg.sender, varg1);
        exit;
    } else {
        0x48a4(msg.sender, varg0);
        exit;
    }
}

function 0xc37(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11) private { 
    if (!varg11) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 = 0xc42(v0, 0x85e6d, varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v10.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, v8, v9, v10, varg10, varg11, v0;
        } else {
            v11, v12, v13, v14, v15, v16, v17, v18, v19, v20 = 0xc42(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x85e42, varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v20.word2 = uint24(v11);
            return v13, v14, v15, v16, v17, v18, v19, v20, varg10, varg11, v0;
        }
    } else {
        v21, v22, v23, v24, v25, v26, v27, v28, v29, v30 = 0xc42(v0, 0x85d78, varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
        v30.word2 = uint24(v21);
        return v23, v24, v25, v26, v27, v28, v29, v30, varg10, varg11, v0;
    }
}

function 0xc42(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) private { 
    v0 = 0x2350();
    v0.word0 = address(v1);
    v0.word1 = varg0;
    return varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, varg10, v0;
}

function 0xe2b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11) private { 
    if (!varg11) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7, v8, v9, v10 = 0xc42(v0, 0x85e6d, varg9, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v10.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, v8, v9, v10, varg10, varg11, v0;
        } else {
            v11, v12, v13, v14, v15, v16, v17, v18, v19, v20 = 0xc42(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x85e42, varg9, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
            v20.word2 = uint24(v11);
            return v13, v14, v15, v16, v17, v18, v19, v20, varg10, varg11, v0;
        }
    } else {
        v21, v22, v23, v24, v25, v26, v27, v28, v29, v30 = 0xc42(v0, 0x85d78, varg9, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8);
        v30.word2 = uint24(v21);
        return v23, v24, v25, v26, v27, v28, v29, v30, varg10, varg11, v0;
    }
}

function 0xd6f35dde(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(bool(varg2) - varg2));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        v1, v2 = 0x3960(varg0);
        v3 = 0x236e();
        v3.word0 = v2;
        v3.word1 = v1;
        if (!varg2) {
            v4 = v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
        } else {
            v4 = v6 = 0;
        }
        v7 = v8 = address(varg1);
        v9 = 0x2350();
        v9.word0 = address(v4);
        v9.word1 = address(v8);
        v9.word2 = varg3;
        v9.word3 = varg4;
        v9.word4 = address(varg5);
        v10 = v11 = 0x235f();
        v11.word0 = 0;
        v11.word1 = 0;
        v11.word2 = v9;
        v11.word3 = 0;
        v12 = new struct(3);
        v12.word1 = keccak256(MEM[v2133_0x0.word2:v2133_0x0.word2 + 160]);
        v12.word2 = 6;
        v12.word0 = 64;
        require(!((v12 + 96 > uint64.max) | (v12 + 96 < v12)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v12.word0.length;
        v14 = v15 = keccak256(keccak256(MEM[v2133_0x0.word2:v2133_0x0.word2 + 160]), 6);
        v16 = v17 = MEM[64];
        v18 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v15).gas(msg.gas);
        if (v18) {
            v10 = v19 = 32;
            v20 = v21 = 14515;
            v22 = v23 = 0;
            if (v18) {
                v24 = v25 = 14662;
                if (v19 <= RETURNDATASIZE()) {
                    require(!((v17 + 32 > uint64.max) | (v17 + 32 < v17)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v17 + 32;
                    v26 = v27 = v17 + v19;
                }
            }
            MEM[v10] = address(v22);
            require(v14 <= v14 + 3, Panic(17)); // arithmetic overflow or underflow
            v16 = v28 = MEM[64];
            v29 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v14 + 3).gas(msg.gas);
            if (v29) {
                v14 = v30 = uint128.max;
                v20 = v31 = 32;
                v10 = v32 = 0x879cd;
                v22 = v33 = 0;
                if (v29) {
                    v24 = 14633;
                    if (v31 <= RETURNDATASIZE()) {
                        require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v28 + 32;
                        v26 = v34 = v28 + v31;
                    }
                }
            }
            MEM[v10 + v20] = uint128(v22 & v14);
            if (varg1) {
                v7 = v35 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 > 0xfffff & varg6 >> 108;
            }
            v36, /* uint256 */ v37 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v36, MEM[64], RETURNDATASIZE());
            v37 = v38 = 0;
            if (v36) {
                v39 = 32;
                if (32 > RETURNDATASIZE()) {
                    v39 = v40 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v39 - MEM[64] >= 32);
                v41 = this.balance;
            } else {
                v41 = v42 = this.balance;
            }
            require(v37 <= v37 + v41, Panic(17)); // arithmetic overflow or underflow
            if (!v7) {
                v43 = v44 = MEM[varg2] * (uint192.max + 1) % uint256.max - (MEM[varg2] << 192) - (MEM[varg2] * (uint192.max + 1) % uint256.max < MEM[varg2] << 192) > address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max - address(v3.word0) * address(v3.word0) * v3.word1 - (address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max < address(v3.word0) * address(v3.word0) * v3.word1) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * v3.word1;
                if (MEM[varg2] * (uint192.max + 1) % uint256.max - (MEM[varg2] << 192) - (MEM[varg2] * (uint192.max + 1) % uint256.max < MEM[varg2] << 192) <= address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max - address(v3.word0) * address(v3.word0) * v3.word1 - (address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max < address(v3.word0) * address(v3.word0) * v3.word1) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * v3.word1) {
                    v43 = v45 = MEM[varg2] * (uint192.max + 1) % uint256.max - (MEM[varg2] << 192) - (MEM[varg2] * (uint192.max + 1) % uint256.max < MEM[varg2] << 192) == address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max - address(v3.word0) * address(v3.word0) * v3.word1 - (address(v3.word0) * address(v3.word0) * v3.word1 % uint256.max < address(v3.word0) * address(v3.word0) * v3.word1) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * v3.word1;
                    if (v45) {
                        v43 = v46 = MEM[varg2] << 192 > address(v3.word0) * address(v3.word0) * v3.word1;
                    }
                }
                if (0 == v43) {
                    0x3d42(v37 + v41, v3, 8532, v3 + 32, varg0, 0xfffff & varg6 >> 88, varg6, 0xfffff & varg0 >> 128, v8, varg2);
                    exit;
                } else {
                    0x3bbe(v37 + v41, 8532, v3 + 32, v3, varg0, varg6, 0xfffff & varg6 >> 88, 0xfffff & varg0 >> 128, v8, varg2);
                    exit;
                }
            } else {
                v47 = v48 = address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[varg2] - (address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[varg2]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[varg2] > v3.word1 * (uint192.max + 1) % uint256.max - (v3.word1 << 192) - (v3.word1 * (uint192.max + 1) % uint256.max < v3.word1 << 192);
                if (address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[varg2] - (address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[varg2]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[varg2] <= v3.word1 * (uint192.max + 1) % uint256.max - (v3.word1 << 192) - (v3.word1 * (uint192.max + 1) % uint256.max < v3.word1 << 192)) {
                    v47 = v49 = address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max - address(v3.word0) * address(v3.word0) * MEM[varg2] - (address(v3.word0) * address(v3.word0) * MEM[varg2] % uint256.max < address(v3.word0) * address(v3.word0) * MEM[varg2]) + (address(v3.word0) * address(v3.word0) % uint256.max - address(v3.word0) * address(v3.word0) - (address(v3.word0) * address(v3.word0) % uint256.max < address(v3.word0) * address(v3.word0))) * MEM[varg2] == v3.word1 * (uint192.max + 1) % uint256.max - (v3.word1 << 192) - (v3.word1 * (uint192.max + 1) % uint256.max < v3.word1 << 192);
                    if (v49) {
                        v47 = v50 = address(v3.word0) * address(v3.word0) * MEM[varg2] > v3.word1 << 192;
                    }
                }
                require(0 == v47, Error('V4TF_V2TF'));
                revert(Error('V2FT_V4FT'));
            }
            require(!((v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v16 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v26 = v51 = v16 + RETURNDATASIZE();
            require(v26 - v16 >= 32);
            v22 = v52 = MEM[v16];
            // Unknown jump to Block ['0x3929B0x2134', '0x3946B0x2134']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x2134. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0xf8c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, struct(4) varg10, uint256 varg11) private { 
    if (!varg11) {
        if (address(v0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            v1, v2, v3, v4, v5, v6, v7 = 0xf97(v0, 0x8613e, varg0, varg1, varg2, varg3, varg4, varg5);
            v7.word2 = uint24(v1);
            return v3, v4, v5, v6, v7, varg7, varg8, varg9, varg10, varg11, v0;
        } else {
            v8, v9, v10, v11, v12, v13, v14 = 0xf97(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2, 0x86113, varg0, varg1, varg2, varg3, varg4, varg5);
            v14.word2 = uint24(v8);
            return v10, v11, v12, v13, v14, varg7, varg8, varg9, varg10, varg11, v0;
        }
    } else {
        v15, v16, v17, v18, v19, v20, v21 = 0xf97(v0, 0x85fe9, varg0, varg1, varg2, varg3, varg4, varg5);
        v21.word2 = uint24(v15);
        return v17, v18, v19, v20, v21, varg7, varg8, varg9, varg10, varg11, v0;
    }
}

function 0xf97(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7) private { 
    v0 = 0x2350();
    v0.word0 = address(v1);
    v0.word1 = varg0;
    return varg2, varg3, varg4, varg5, varg6, varg7, v0;
}

function 0xafba8608(uint256 varg0, uint256 varg1, uint256 varg2, uint24 varg3, int24 varg4, uint256 varg5, uint256 varg6) public payable { 
    require(msg.data.length - 4 >= 224);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(bool(varg2) - varg2));
    require(!(address(varg5) - varg5));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg6);
    if (!v0) {
        v1 = 0x235f();
        v1.word0 = 0;
        v1.word1 = 0;
        v1.word2 = address(varg0);
        v1.word3 = 1;
        0x41f9(v1);
        v2 = 0x4217(address(v1.word2));
        v1.word1 = uint128(v2);
        if (!varg2) {
            if (address(varg1) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v3 = v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v3 = v5 = 0;
        }
        if (!varg2) {
            if (address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v3 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v7 = 0x2350();
        v7.word0 = address(v3);
        v7.word1 = address(v3);
        v7.word2 = varg3;
        v7.word3 = varg4;
        v7.word4 = address(varg5);
        v8 = v9 = 0x235f();
        v9.word0 = 0;
        v9.word1 = 0;
        v9.word2 = v7;
        v9.word3 = 0;
        v10 = new struct(3);
        v10.word1 = keccak256(MEM[v1e85_0x0.word2:v1e85_0x0.word2 + 160]);
        v10.word2 = 6;
        v10.word0 = 64;
        require(!((v10 + 96 > uint64.max) | (v10 + 96 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v11 = v10.word0.length;
        v12 = v13 = keccak256(keccak256(MEM[v1e85_0x0.word2:v1e85_0x0.word2 + 160]), 6);
        v14 = v15 = MEM[64];
        v16 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v13).gas(msg.gas);
        if (v16) {
            v8 = v17 = 32;
            v18 = v19 = 14515;
            v20 = v21 = 0;
            if (v16) {
                v22 = v23 = 14662;
                if (v17 <= RETURNDATASIZE()) {
                    require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v15 + 32;
                    v24 = v25 = v15 + v17;
                }
            }
            MEM[v8] = address(v20);
            require(v12 <= v12 + 3, Panic(17)); // arithmetic overflow or underflow
            v14 = v26 = MEM[64];
            v27 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v12 + 3).gas(msg.gas);
            if (v27) {
                v12 = v28 = uint128.max;
                v18 = v29 = 32;
                v8 = v30 = 0x879cd;
                v20 = v31 = 0;
                if (v27) {
                    v22 = 14633;
                    if (v29 <= RETURNDATASIZE()) {
                        require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v26 + 32;
                        v24 = v32 = v26 + v29;
                    }
                }
            }
            MEM[v8 + v18] = uint128(v20 & v12);
            if (v1) {
                v33 = v34 = address(varg2) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
            v35, /* uint256 */ v36 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v35, MEM[64], RETURNDATASIZE());
            v36 = v37 = 0;
            if (v35) {
                v38 = 32;
                if (32 > RETURNDATASIZE()) {
                    v38 = v39 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v38 - MEM[64] >= 32);
                v40 = this.balance;
            } else {
                v40 = v41 = this.balance;
            }
            require(v36 <= v36 + v40, Panic(17)); // arithmetic overflow or underflow
            if (!v33) {
                if (address(v9.word0) <= address(MEM[varg1])) {
                    0x4aa1(v36 + v40, varg1, v9, 0xfffff & varg6 >> 108, 0xfffff & varg6 >> 88, 7846, 0xfffff & (0xfffff & varg6 >> 108) >> 128, varg6, varg2);
                    exit;
                } else {
                    0x49db(v36 + v40, v9, varg1, 0xfffff & varg6 >> 108, 7846, 0xfffff & varg6 >> 88, 0xfffff & (0xfffff & varg6 >> 108) >> 128, varg6, varg2);
                    exit;
                }
            } else {
                v42 = 0x45c9(uint192.max + 1, 0, address(MEM[varg1]));
                require(address(v9.word0) <= v42, Error('V4TF_V3TF'));
                revert(Error('V3FT_V4FT'));
            }
            require(!((v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v24 = v43 = v14 + RETURNDATASIZE();
            require(v24 - v14 >= 32);
            v20 = v44 = MEM[v14];
            // Unknown jump to Block ['0x3929B0x1e86', '0x3946B0x1e86']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x1e86. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

function 0xac52fcc4(uint256 varg0, uint256 varg1, uint24 varg2, int24 varg3, uint256 varg4, uint256 varg5, uint24 varg6, int24 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(!(address(varg0) - varg0));
    require(!(bool(varg1) - varg1));
    require(!(address(varg4) - varg4));
    require(!(bool(varg5) - varg5));
    require(!(address(varg8) - varg8));
    require(!(msg.sender - tx.origin));
    require(!msg.sender.code.size);
    _uniswapV3SwapCallback = 1;
    v0 = 0x360e(varg9);
    if (!v0) {
        if (!varg1) {
            if (address(varg0) >= 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        } else {
            v1 = v3 = 0;
        }
        v4 = v5 = address(v1);
        if (!varg1) {
            if (address(varg0) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v1 = v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
            }
        }
        v7 = 0x2350();
        v7.word0 = address(v5);
        v7.word1 = address(v1);
        v7.word2 = varg2;
        v7.word3 = varg3;
        v7.word4 = address(varg4);
        v8 = v9 = 0x235f();
        v9.word0 = 0;
        v9.word1 = 0;
        v9.word2 = v7;
        v9.word3 = 0;
        v10 = new struct(3);
        v10.word1 = keccak256(MEM[v1b47_0x0.word2:v1b47_0x0.word2 + 160]);
        v10.word2 = 6;
        v10.word0 = 64;
        require(!((v10 + 96 > uint64.max) | (v10 + 96 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v11 = v10.word0.length;
        v12 = v13 = keccak256(keccak256(MEM[v1b47_0x0.word2:v1b47_0x0.word2 + 160]), 6);
        v14 = v15 = MEM[64];
        v16 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v13).gas(msg.gas);
        if (v16) {
            v8 = v17 = 32;
            v18 = v19 = 14515;
            v20 = v21 = 0;
            if (v16) {
                v22 = v23 = 14662;
                if (v17 <= RETURNDATASIZE()) {
                    require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v15 + 32;
                    v24 = v25 = v15 + v17;
                }
            }
            MEM[v8] = address(v20);
            require(v12 <= v12 + 3, Panic(17)); // arithmetic overflow or underflow
            v14 = v26 = MEM[64];
            v27 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v12 + 3).gas(msg.gas);
            if (v27) {
                v12 = v28 = uint128.max;
                v18 = v29 = 32;
                v8 = v30 = 0x879cd;
                v20 = v31 = 0;
                if (v27) {
                    v22 = 14633;
                    if (v29 <= RETURNDATASIZE()) {
                        require(!((v26 + 32 > uint64.max) | (v26 + 32 < v26)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v26 + 32;
                        v24 = v32 = v26 + v29;
                    }
                }
            }
            MEM[v8 + v18] = uint128(v20 & v12);
            v33 = 0x2350();
            v33.word0 = address(v1);
            v33.word1 = address(0xfffff & varg9 >> 88);
            v33.word2 = uint24(7016);
            v33.word3 = int24(varg6);
            v33.word4 = address(varg7);
            v4 = v34 = 0x235f();
            v34.word0 = 0;
            v34.word1 = 0;
            v34.word2 = v33;
            v34.word3 = 0;
            v35 = new struct(3);
            v35.word1 = keccak256(MEM[v1bbd_0x0.word2:v1bbd_0x0.word2 + 160]);
            v35.word2 = 6;
            v35.word0 = 64;
            require(!((v35 + 96 > uint64.max) | (v35 + 96 < v35)), Panic(65)); // failed memory allocation (too much memory)
            v36 = v35.word0.length;
            v37 = v38 = keccak256(keccak256(MEM[v1bbd_0x0.word2:v1bbd_0x0.word2 + 160]), 6);
            v39 = v40 = MEM[64];
            v41 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v38).gas(msg.gas);
            if (v41) {
                v4 = v42 = 32;
                v43 = v44 = 14515;
                v45 = v46 = 0;
                if (v41) {
                    v47 = v48 = 14662;
                    if (v42 <= RETURNDATASIZE()) {
                        require(!((v40 + 32 > uint64.max) | (v40 + 32 < v40)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v40 + 32;
                        v49 = v50 = v40 + v42;
                    }
                }
                MEM[v4] = address(v45);
                require(v37 <= v37 + 3, Panic(17)); // arithmetic overflow or underflow
                v39 = v51 = MEM[64];
                v52 = 0x4444c5dc75cb358380d2e3de08a90.extsload(v37 + 3).gas(msg.gas);
                if (v52) {
                    v37 = v53 = uint128.max;
                    v43 = v54 = 32;
                    v4 = v55 = 0x879cd;
                    v45 = v56 = 0;
                    if (v52) {
                        v47 = 14633;
                        if (v54 <= RETURNDATASIZE()) {
                            require(!((v51 + 32 > uint64.max) | (v51 + 32 < v51)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v51 + 32;
                            v49 = v57 = v51 + v54;
                        }
                    }
                }
                MEM[v4 + v43] = uint128(v45 & v37);
                v4 = v58 = bool(v34) != bool(v5);
                if (v58) {
                    v4 = v59 = address(varg1) < 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
                }
                v60, /* uint256 */ v61 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                require(v60, MEM[64], RETURNDATASIZE());
                v61 = v62 = 0;
                if (v60) {
                    v63 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v63 = v64 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v63 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v63 - MEM[64] >= 32);
                    v65 = this.balance;
                } else {
                    v65 = v66 = this.balance;
                }
                require(v61 <= v61 + v65, Panic(17)); // arithmetic overflow or underflow
                if (!v4) {
                }
                require(!v4, Error('reverse V41'));
                if (!v4) {
                }
                require(!v4, Error('reverse V42'));
                if (address(MEM[varg5]) >= address(MEM[0xfffff & varg8 >> 108])) {
                    0x5559(v61 + v65, 0xfffff & varg8 >> 108, varg5, 7134, varg9, varg8, 0, v5, v34, varg1);
                    exit;
                } else {
                    0x5559(v61 + v65, varg5, 0xfffff & varg8 >> 108, 7134, varg8, varg9, 0, v34, v5, varg1);
                    exit;
                }
                require(!((v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v49 = v67 = v39 + RETURNDATASIZE();
                require(v49 - v39 >= 32);
                v45 = v68 = MEM[v39];
                // Unknown jump to Block ['0x3929B0x1bbe', '0x3946B0x1bbe']. Refer to 3-address code (TAC);
                // Unknown jump to Block 0x3902B0x1bbe. Refer to 3-address code (TAC);
            }
            revert(MEM[64], RETURNDATASIZE());
            require(!((v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v14 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v24 = v69 = v14 + RETURNDATASIZE();
            require(v24 - v14 >= 32);
            v20 = v70 = MEM[v14];
            // Unknown jump to Block ['0x3929B0x1b48', '0x3946B0x1b48']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3902B0x1b48. Refer to 3-address code (TAC);
        }
        revert(MEM[64], RETURNDATASIZE());
    } else {
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x121ea95e == function_selector >> 224) {
            0x121ea95e();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x251ac7cd == function_selector >> 224) {
            0x251ac7cd();
        } else if (0x25edf1c2 == function_selector >> 224) {
            0x25edf1c2();
        } else if (0x2c2f9ced == function_selector >> 224) {
            0x2c2f9ced();
        } else if (0x3a1c453c == function_selector >> 224) {
            solidlyV3SwapCallback(int256,int256,bytes);
        } else if (0x4cca2d18 == function_selector >> 224) {
            0x4cca2d18();
        } else if (0x61b7fd77 == function_selector >> 224) {
            0x61b7fd77();
        } else if (0x652d1525 == function_selector >> 224) {
            0x652d1525();
        } else if (0x6f5aeea3 == function_selector >> 224) {
            0x6f5aeea3();
        } else if (0x7e1a9a3a == function_selector >> 224) {
            0x7e1a9a3a();
        } else if (0x87f92b26 == function_selector >> 224) {
            0x87f92b26();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x9f3d4ab8 == function_selector >> 224) {
            0x9f3d4ab8();
        } else if (0xa0bd0131 == function_selector >> 224) {
            0xa0bd0131();
        } else if (0xac52fcc4 == function_selector >> 224) {
            0xac52fcc4();
        } else if (0xafba8608 == function_selector >> 224) {
            0xafba8608();
        } else if (0xd6f35dde == function_selector >> 224) {
            0xd6f35dde();
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
