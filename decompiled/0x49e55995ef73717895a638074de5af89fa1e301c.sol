// Decompiled by library.dedaub.com
// 2025.12.06 00:14 UTC
// Compiled using the solidity compiler version 0.8.28





function executeOperation(address asset, uint256 amount, uint256 premium, address initiator, bytes params) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(params <= uint64.max);
    require(4 + params + 31 < msg.data.length);
    require(params.length <= uint64.max);
    require(4 + params + params.length + 32 <= msg.data.length);
    require(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2 == msg.sender, msg.sender);
    v0 = v1 = 0;
    v2 = v3 = params.data + 101;
    v4 = v5 = 0;
    while (v4 < msg.data[params.data + 100] >> 248) {
        v6 = v7 = msg.data[v2 + 1] >> 240;
        if (msg.data[v2] >> 248) {
            if ((msg.data[v2] >> 248) - 3) {
                if ((msg.data[v2] >> 248) - 4) {
                    if ((msg.data[v2] >> 248) - 5) {
                        if ((msg.data[v2] >> 248) - 6) {
                            require(!((msg.data[v2] >> 248) - 7), msg.data[v2] >> 248);
                            v8 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                        } else {
                            v8 = v9 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                        }
                    } else {
                        v8 = v10 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                    }
                } else {
                    v8 = v11 = 0x5c250dde39085735d282be02e9af164d5618145d;
                }
            } else {
                v8 = v12 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
            }
            v13 = 3 + v2;
            require(v2 <= v13, Panic(17)); // arithmetic overflow or underflow
        } else {
            v8 = v14 = msg.data[v2 + 3] >> 96;
            v13 = 23 + v2;
            require(v2 <= v13, Panic(17)); // arithmetic overflow or underflow
            v6 = 4 + v7;
            require(v7 <= v6, Panic(17)); // arithmetic overflow or underflow
        }
        v0 = v15 = !v4;
        if (!v0) {
            require(v13 <= v6 + v13, Panic(17)); // arithmetic overflow or underflow
            require(v13 <= v6 + v13);
            require(v6 + v13 <= msg.data.length);
            CALLDATACOPY(MEM[64], v13, v6 + v13 - v13);
            MEM[v6 + v13 - v13 + MEM[64]] = 0;
            v16, /* uint256 */ v17, /* uint256 */ v18 = address(v8).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x3e1 + v2920V0xcceB0x3e1 - v2920V0xcceB0x3e1 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v19 = v20 = 96;
            } else {
                v19 = v21 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
            }
            if (!v16) {
                v22 = new uint256[](MEM[v19]);
                MCOPY(v22.data, v18, MEM[v19]);
                MEM[v22 + MEM[v19] + 32] = 0;
                revert(address(v8), v22);
            }
        }
        v2 = v6 + v13;
        require(v13 <= v2, Panic(17)); // arithmetic overflow or underflow
        v4 = v4 + 1;
    }
    require(amount <= premium + amount, Panic(17)); // arithmetic overflow or underflow
    v23 = 0xdec(0, this, asset);
    if (v23 >= premium + amount) {
        MEM[36 + MEM[64] + 32] = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2);
        MEM[MEM[64] + 32] = uint224(address(this)) | 0xdd62ed3e00000000000000000000000000000000000000000000000000000000;
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v24, /* uint256 */ v25, /* uint256 */ v26 = asset.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v27 = v28 = 96;
        } else {
            v27 = v29 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v29.data, 0, RETURNDATASIZE());
        }
        require(v24, asset, address(this), address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2));
        require(v26 + MEM[v27] - v26 >= 32);
        if (MEM[v26] < premium + amount) {
            MEM[MEM[64] + 68] = uint256.max;
            MEM[MEM[64] + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v30, /* uint256 */ v31, /* uint256 */ v32 = asset.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v33 = v34 = 96;
            } else {
                v33 = v35 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v35.data, 0, RETURNDATASIZE());
            }
            if (!v30) {
                v36 = new uint256[](MEM[v33]);
                MCOPY(v36.data, v32, MEM[v33]);
                MEM[v36 + MEM[v33] + 32] = 0;
                revert(asset, address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2), uint256.max, v36);
            }
        }
        return True;
    } else {
        v37 = 0xdec(0, this, asset);
        revert(premium + amount, 0, v37);
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.data[4 + data] >= 64);
    if (64 - msg.data[4 + data]) {
        v1 = v2 = msg.data[4 + data + 32 + 67];
        v3 = v4 = 0xbbb(msg.data[4 + data + 32 + 34] >> 248);
        v5 = v6 = 1;
        v7 = v8 = 4 + data + 32 + 101;
        v9 = v10 = 0;
        while (v9 < msg.data[4 + data + 32 + 100] >> 248) {
            v11 = v12 = msg.data[v7 + 1] >> 240;
            if (msg.data[v7] >> 248) {
                if ((msg.data[v7] >> 248) - 3) {
                    if ((msg.data[v7] >> 248) - 4) {
                        if ((msg.data[v7] >> 248) - 5) {
                            if ((msg.data[v7] >> 248) - 6) {
                                require(!((msg.data[v7] >> 248) - 7), msg.data[v7] >> 248);
                                v13 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                            } else {
                                v13 = v14 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                            }
                        } else {
                            v13 = v15 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                        }
                    } else {
                        v13 = v16 = 0x5c250dde39085735d282be02e9af164d5618145d;
                    }
                } else {
                    v13 = v17 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                }
                v18 = 3 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                break;
            } else {
                v13 = v19 = msg.data[v7 + 3] >> 96;
                v18 = 23 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                v11 = 4 + v12;
                require(v12 <= v11, Panic(17)); // arithmetic overflow or underflow
                break;
            }
            v5 = v20 = !v9;
            if (bool(v9)) {
                break;
            }
            if (v5) {
                break;
            } else {
                require(v18 <= v11 + v18, Panic(17)); // arithmetic overflow or underflow
                require(v18 <= v11 + v18);
                require(v11 + v18 <= msg.data.length);
                CALLDATACOPY(MEM[64], v18, v11 + v18 - v18);
                MEM[v11 + v18 - v18 + MEM[64]] = 0;
                v21, /* uint256 */ v22, /* uint256 */ v23 = address(v13).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x34eB0x489V0x17a + v2920V0xcceB0x34eB0x489V0x17a - v2920V0xcceB0x34eB0x489V0x17a + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v24 = v25 = 96;
                } else {
                    v24 = v26 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());
                }
                if (v21) {
                    break;
                } else {
                    v27 = new uint256[](MEM[v24]);
                    MCOPY(v27.data, v23, MEM[v24]);
                    MEM[v27 + MEM[v24] + 32] = 0;
                    revert(address(v13), v27);
                }
            }
            v7 = v11 + v18;
            require(v18 <= v7, Panic(17)); // arithmetic overflow or underflow
            v9 = v9 + 1;
        }
        v28 = 0xdec(0, this, v4);
        if (v28 < v2) {
            v29 = 0xdec(0, this, v4);
            revert(v2, 0, v29);
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
        v3 = data.word1;
        require(v3 == address(v3));
        v1 = data.word2;
    }
    MEM[MEM[64] + 68] = v1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v30, /* uint256 */ v31, /* uint256 */ v32 = address(v3).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v33 = v34 = 96;
    } else {
        v33 = v35 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v35.data, 0, RETURNDATASIZE());
    }
    if (v30) {
        exit;
    } else {
        v36 = 0xdec(0, this, v3);
        v37 = new uint256[](MEM[v33]);
        MCOPY(v37.data, v32, MEM[v33]);
        MEM[v37 + MEM[v33] + 32] = 0;
        revert(address(v3), msg.sender, v1, v36, v37);
    }
}

function exec(bytes payload) public payable { 
    require(msg.data.length - 4 >= 32);
    require(payload <= uint64.max);
    require(4 + payload + 31 < msg.data.length);
    require(msg.data[4 + payload] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = msg.sender == 0xde40b9ea63148965f9fe737f8f8b6fbc09d7c615;
    if (msg.sender != 0xde40b9ea63148965f9fe737f8f8b6fbc09d7c615) {
        v1 = v3 = msg.sender == 0x7f3e05ba4d7e59b6c56e5116c4facc0d88493696;
    }
    if (!v1) {
        v1 = v4 = msg.sender == 0x4dfae204a53e4d10e842a7eb2e7ad4931c3abe5b;
    }
    if (!v1) {
        v1 = v5 = msg.sender == 0x3cb269a4b9f8e69baa614ace858d1b815d630b1b;
    }
    if (!v1) {
        v1 = v6 = msg.sender == 0xab9b67896a3f36244d3b1904a3328ab2fea1d5e7;
    }
    if (!v1) {
        v1 = v7 = msg.sender == 0x932d91682423357b435172e50d9ea2dca614217f;
    }
    if (!v1) {
        v1 = v8 = msg.sender == 0xf8b64b6015f6feb1fbe79bb512f1113e829ddd96;
    }
    if (!v1) {
        v1 = v9 = msg.sender == 0xa509cae29c94cf76a4698859d4c6b862b920ea96;
    }
    if (!v1) {
        v1 = v10 = msg.sender == 0xe999c0a515cd1679d20c0c216ceb46e981c7073a;
    }
    if (!v1) {
        v1 = v11 = msg.sender == 0x7c0f8a684c42ac83ce65a59e89ef5a295932c922;
    }
    if (!v1) {
        v1 = v12 = msg.sender == 0x90b1c35ac4ccf24a7596c8f80da0078f46be195b;
    }
    if (!v1) {
        v1 = v13 = msg.sender == 0x80106e5297a148bc05d25a6fea8c76e4b7bdcdae;
    }
    if (!v1) {
        v1 = v14 = msg.sender == 0xe556e36537fd64a5a9572961f0a5aa0f61997e68;
    }
    if (!v1) {
        v1 = msg.sender == 0xcb2ed83402408d32441bfaef2167393f31e8574c;
    }
    if (!v1) {
        v15 = v16 = 0;
    } else {
        v15 = 1;
    }
    require(v15, CallerNotOperator());
    v17 = v18 = bool(payload.word1);
    if (payload.word1) {
        v17 = payload.word1 != 1;
    }
    if (v17) {
        v19 = _SafeSub(block.number, 1);
        require(block.blockhash(v19) == payload.word1);
    }
    v20 = v21 = 33;
    v22 = v23 = 0;
    while (v22 < payload.word2 >> 248) {
        require(2 <= v20 + 2, Panic(17)); // arithmetic overflow or underflow
        require(2 <= v20 + 2, Panic(17)); // arithmetic overflow or underflow
        require(v20 + 2 <= (msg.data[v20 + (4 + payload + 32)] >> 240) + (v20 + 2), Panic(17)); // arithmetic overflow or underflow
        require(v20 + 2 <= (msg.data[v20 + (4 + payload + 32)] >> 240) + (v20 + 2));
        require((msg.data[v20 + (4 + payload + 32)] >> 240) + (v20 + 2) <= msg.data[4 + payload]);
        v24 = v20 + 2 + (4 + payload + 32);
        v25 = (msg.data[v20 + (4 + payload + 32)] >> 240) + (v20 + 2) - (v20 + 2);
        v26 = 0xbbb(msg.data[v24 + 34] >> 248);
        if (2 - (msg.data[v24 + 99] >> 248)) {
            if (5 - (msg.data[v24 + 99] >> 248)) {
                if (6 - (msg.data[v24 + 99] >> 248)) {
                    if (44 - (msg.data[v24 + 99] >> 248)) {
                        if (15 - (msg.data[v24 + 99] >> 248)) {
                            if (18 - (msg.data[v24 + 99] >> 248)) {
                                MEM[36 + MEM[64]] = address(this);
                                MEM[36 + MEM[64] + 32] = address(v26);
                                MEM[36 + MEM[64] + 64] = msg.data[v24 + 67];
                                MEM[36 + MEM[64] + 96] = 160;
                                MEM[36 + MEM[64] + 160] = v25;
                                CALLDATACOPY(36 + MEM[64] + 160 + 32, v24, v25);
                                MEM[36 + MEM[64] + 160 + v25 + 32] = 0;
                                MEM[36 + MEM[64] + 128] = uint16(0);
                                MEM[MEM[64] + 32] = bytes4(0x42b0b77c00000000000000000000000000000000000000000000000000000000) | uint224(MEM[MEM[64] + 32]);
                                MCOPY(MEM[64], MEM[64] + 32, 36 + MEM[64] + 160 + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32);
                                MEM[MEM[64] + (36 + MEM[64] + 160 + (v25 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 - MEM[64] - 32)] = 0;
                                v27 = address(0x87870bca3f3fd6335c3f4ce8392d69350b4fa4e2).call(MEM[MEM[64]:MEM[64] + MEM[64] + 36 + MEM[64] + 160 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64] - 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v28 = v29 = 96;
                                } else {
                                    v28 = v30 = MEM[64];
                                    MEM[v30] = RETURNDATASIZE();
                                    RETURNDATACOPY(v30 + 32, 0, RETURNDATASIZE());
                                }
                                if (!v27) {
                                    v31 = new uint256[](MEM[v28]);
                                    MCOPY(v31.data, v28 + 32, MEM[v28]);
                                    MEM[v31 + MEM[v28] + 32] = 0;
                                    revert(msg.data[v24 + 67], v31);
                                }
                            } else {
                                if (msg.data[v24 + 128] >> 248) {
                                    v32 = v33 = int32.max;
                                } else {
                                    v32 = v34 = int32.min;
                                }
                                MEM[MEM[64]] = 0x3eece7db00000000000000000000000000000000000000000000000000000000;
                                MEM[4 + MEM[64]] = address(this);
                                MEM[4 + MEM[64] + 32] = msg.data[v24 + 67];
                                MEM[4 + MEM[64] + 64] = bool(msg.data[v24 + 128] >> 248);
                                MEM[4 + MEM[64] + 96] = False;
                                MEM[4 + MEM[64] + 128] = int32(v32);
                                MEM[4 + MEM[64] + 160] = 192;
                                MEM[4 + MEM[64] + 192] = v25;
                                CALLDATACOPY(4 + MEM[64] + 192 + 32, v24, v25);
                                MEM[4 + MEM[64] + 192 + v25 + 32] = 0;
                                v35 = (msg.data[v24 + 160] >> 96).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 192 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                                if (bool(v35)) {
                                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            MEM[MEM[64]] = 0x1f18b37100000000000000000000000000000000000000000000000000000000;
                            MEM[4 + MEM[64]] = address(this);
                            MEM[4 + MEM[64] + 32] = bool(msg.data[v24 + 128] >> 248);
                            MEM[4 + MEM[64] + 64] = msg.data[v24 + 67];
                            MEM[4 + MEM[64] + 96] = 128;
                            MEM[4 + MEM[64] + 128] = v25;
                            CALLDATACOPY(4 + MEM[64] + 128 + 32, v24, v25);
                            MEM[4 + MEM[64] + 128 + v25 + 32] = 0;
                            v36 = address(msg.data[v24 + 160]).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                            if (bool(v36)) {
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = 32;
                        MEM[4 + MEM[64] + 32] = v25;
                        CALLDATACOPY(4 + MEM[64] + 32 + 32, v24, v25);
                        MEM[4 + MEM[64] + 32 + v25 + 32] = 0;
                        v37 = 0x4444c5dc75cb358380d2e3de08a90.call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 32 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (bool(v37)) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                            require(MEM[MEM[64]] <= uint64.max);
                            require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31);
                            v38 = MEM[MEM[64] + MEM[MEM[64]]];
                            require(v38 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v39 = new bytes[](v38);
                            require(!((v39 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v38) + 31) < v39) | (v39 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v38) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + MEM[MEM[64]] + v38 + 32 <= MEM[64] + RETURNDATASIZE());
                            MCOPY(v39.data, MEM[64] + MEM[MEM[64]] + 32, v38);
                            v39[v38] = 0;
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    if (msg.data[v24 + 104] >> 248) {
                        v40 = v41 = 0x1000276a4;
                    } else {
                        v40 = v42 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    }
                    if (uint8(msg.data[v24 + 104] >> 240)) {
                        MEM[MEM[64]] = 0x24b31a0c00000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(this);
                        MEM[4 + MEM[64] + 32] = msg.data[v24 + 67];
                        MEM[4 + MEM[64] + 64] = bool(msg.data[v24 + 104] >> 248);
                        MEM[4 + MEM[64] + 96] = address(v40);
                        MEM[4 + MEM[64] + 128] = 160;
                        MEM[4 + MEM[64] + 160] = v25;
                        CALLDATACOPY(4 + MEM[64] + 160 + 32, v24, v25);
                        MEM[4 + MEM[64] + 160 + v25 + 32] = 0;
                        v43 = address(msg.data[v24 + 128] >> 96).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (bool(v43)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    } else {
                        MEM[MEM[64]] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        MEM[4 + MEM[64]] = address(this);
                        MEM[4 + MEM[64] + 32] = bool(msg.data[v24 + 104] >> 248);
                        MEM[4 + MEM[64] + 64] = msg.data[v24 + 67];
                        MEM[4 + MEM[64] + 96] = address(v40);
                        MEM[4 + MEM[64] + 128] = 160;
                        MEM[4 + MEM[64] + 160] = v25;
                        CALLDATACOPY(4 + MEM[64] + 160 + 32, v24, v25);
                        MEM[4 + MEM[64] + 160 + v25 + 32] = 0;
                        v44 = address(msg.data[v24 + 128] >> 96).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 160 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64] + 64]).gas(msg.gas);
                        if (bool(v44)) {
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                }
            } else {
                if (uint8(msg.data[v24 + int8.max] >> 88)) {
                    v45 = address(msg.data[v24 + int8.max] >> 96).getReserveAfterTwamm(block.timestamp).gas(msg.gas);
                    if (bool(v45)) {
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 160);
                        require(MEM[MEM[64]] == uint112(MEM[MEM[64]]));
                        require(MEM[MEM[64] + 32] == uint112(MEM[MEM[64] + 32]));
                        require(MEM[MEM[64] + 96] == uint112(MEM[MEM[64] + 96]));
                        require(MEM[MEM[64] + 128] == uint112(MEM[MEM[64] + 128]));
                        v46 = v47 = uint112(MEM[MEM[64]]);
                        v46 = v48 = uint112(MEM[MEM[64] + 32]);
                    } else {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    v49 = new bytes[](4);
                    MEM[v49.data] = 0x902f1ac00000000000000000000000000000000000000000000000000000000 | uint224(MEM[v49.data]);
                    MCOPY(MEM[64], v49.data, v49.length);
                    MEM[MEM[64] + v49.length] = 0;
                    v50 = address(msg.data[v24 + int8.max] >> 96).staticcall(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v51 = v52 = 96;
                    } else {
                        v51 = v53 = MEM[64];
                        MEM[v53] = RETURNDATASIZE();
                        RETURNDATACOPY(v53 + 32, 0, RETURNDATASIZE());
                    }
                    require(v50, address(msg.data[v24 + int8.max] >> 96));
                    v46 = v54 = MEM[v51 + 32];
                    v46 = MEM[v51 + 64];
                }
                if (msg.data[v24 + 104] >> 248) {
                    break;
                }
                if (!(msg.data[v24 + 104] >> 248)) {
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = uint256.max + (10000 - uint16(msg.data[v24 + 104] >> 232)) * msg.data[v24 + 67] * v46 / ((10000 - uint16(msg.data[v24 + 104] >> 232)) * msg.data[v24 + 67] + 10000 * v46);
                    MEM[4 + MEM[64] + 32] = 0;
                    MEM[4 + MEM[64] + 64] = address(this);
                    MEM[4 + MEM[64] + 96] = 128;
                    MEM[4 + MEM[64] + 128] = v25;
                    CALLDATACOPY(4 + MEM[64] + 128 + 32, v24, v25);
                    MEM[4 + MEM[64] + 128 + v25 + 32] = 0;
                    require(bool((address(msg.data[v24 + int8.max] >> 96)).code.size));
                    v55 = address(msg.data[v24 + int8.max] >> 96).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (!bool(v55)) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                } else {
                    MEM[MEM[64]] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 0;
                    MEM[4 + MEM[64] + 32] = uint256.max + (10000 - uint16(msg.data[v24 + 104] >> 232)) * msg.data[v24 + 67] * v46 / ((10000 - uint16(msg.data[v24 + 104] >> 232)) * msg.data[v24 + 67] + 10000 * v46);
                    MEM[4 + MEM[64] + 64] = address(this);
                    MEM[4 + MEM[64] + 96] = 128;
                    MEM[4 + MEM[64] + 128] = v25;
                    CALLDATACOPY(4 + MEM[64] + 128 + 32, v24, v25);
                    MEM[4 + MEM[64] + 128 + v25 + 32] = 0;
                    require(bool((address(msg.data[v24 + int8.max] >> 96)).code.size));
                    v56 = address(msg.data[v24 + int8.max] >> 96).call(MEM[MEM[64]:MEM[64] + 4 + MEM[64] + 128 + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (!bool(v56)) {
                        RETURNDATACOPY(0, 0, RETURNDATASIZE());
                        revert(0, RETURNDATASIZE());
                    }
                }
            }
        } else {
            v57 = new uint256[](1);
            CALLDATACOPY(v57.data, msg.data.length, 32);
            require(0 < v57.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v58 = v57.data;
            v57[0] = address(v26);
            v59 = new uint256[](1);
            CALLDATACOPY(v59.data, msg.data.length, 32);
            require(0 < v59.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v60 = v59.data;
            v59[0] = msg.data[v24 + 67];
            MEM[MEM[64]] = 0x5c38449e00000000000000000000000000000000000000000000000000000000;
            MEM[4 + MEM[64]] = address(this);
            MEM[4 + MEM[64] + 32] = 128;
            MEM[4 + MEM[64] + 128] = v57.length;
            v61 = v62 = 4 + MEM[64] + 160;
            v63 = v64 = v57.data;
            v65 = v66 = 0;
            while (v65 < v57.length) {
                MEM[v61] = address(MEM[v63]);
                v63 += 32;
                v61 = v61 + 32;
                v65 += 1;
            }
            MEM[4 + MEM[64] + 64] = v61 - (4 + MEM[64]);
            MEM[v61] = v59.length;
            v67 = v68 = 32 + v61;
            v69 = v70 = v59.data;
            v71 = v72 = 0;
            while (v71 < v59.length) {
                MEM[v67] = MEM[v69];
                v67 += 32;
                v69 = v69 + 32;
                v71 += 1;
            }
            MEM[4 + MEM[64] + 96] = v67 - (4 + MEM[64]);
            MEM[v67] = v25;
            CALLDATACOPY(v67 + 32, v24, v25);
            MEM[v67 + v25 + 32] = 0;
            require(bool(0xba12222222228d8ba445958a75a0704d566bf2c8.code.size));
            v73 = 0xba12222222228d8ba445958a75a0704d566bf2c8.call(MEM[MEM[64]:MEM[64] + v2eaf_0x4V0x18c8V0x153eV0x58cV0x18d + v253eV0x57fV0x18d + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (!bool(v73)) {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v74 = v75 = 0xdec(1, this, v26);
        if (!(msg.data[v24] >> 240)) {
            MEM[MEM[64] + 68] = v75;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v76 = address(v26).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v77 = v78 = 96;
            } else {
                v77 = v79 = MEM[64];
                MEM[v79] = RETURNDATASIZE();
                RETURNDATACOPY(v79 + 32, 0, RETURNDATASIZE());
            }
            if (v76) {
                break;
            } else {
                v80 = 0xdec(0, this, v26);
                v81 = new uint256[](MEM[v77]);
                MCOPY(v81.data, v77 + 32, MEM[v77]);
                MEM[v81 + MEM[v77] + 32] = 0;
                revert(address(v26), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), v75, v80, v81);
            }
        } else {
            v82 = _SafeMul(v75, msg.data[v24] >> 240);
            v83 = v84 = _SafeDiv(v82, 1000);
            if (address(v26) + 0xffffffffffffffffffffffff3fd555c64ddc0172f5f1a3b0d81526f7c38a933e) {
                v85 = _SafeSub(v75, v84);
                MEM[MEM[64] + 68] = v85;
                MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d));
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v86 = address(v26).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v87 = v88 = 96;
                } else {
                    v87 = v89 = MEM[64];
                    MEM[v89] = RETURNDATASIZE();
                    RETURNDATACOPY(v89 + 32, 0, RETURNDATASIZE());
                }
                if (v86) {
                    v83 = 0x201c(v84, v26);
                } else {
                    v90 = 0xdec(0, this, v26);
                    v91 = new uint256[](MEM[v87]);
                    MCOPY(v91.data, v87 + 32, MEM[v87]);
                    MEM[v91 + MEM[v87] + 32] = 0;
                    revert(address(v26), address(0xa0d5a274f95decb536bbbaa922d6d0fb692a627d), v85, v90, v91);
                }
            } else {
                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                v92 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v75).gas(msg.gas);
                if (bool(v92)) {
                    v93 = _SafeSub(v75, v84);
                    0x1f2e(v93, 0xa0d5a274f95decb536bbbaa922d6d0fb692a627d);
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
            0x1f2e(v83, block.coinbase);
            v74 = v94 = _SafeSub(v75, v84);
        }
        v95 = _SafeMul(10 ** 18, v74);
        v96 = _SafeDiv(v95, msg.data[v24 + 2]);
        v22 += v96;
        require(v22 <= v22, Panic(17)); // arithmetic overflow or underflow
        require(2 <= (msg.data[v20 + (4 + payload + 32)] >> 240) + 2, Panic(17)); // arithmetic overflow or underflow
        v20 += (msg.data[v20 + (4 + payload + 32)] >> 240) + 2;
        require(v20 <= v20, Panic(17)); // arithmetic overflow or underflow
        v22 += 1;
    }
    v97 = _SafeMul(16, msg.data.length);
    require(21000 <= msg.gas + 21000, Panic(17)); // arithmetic overflow or underflow
    v98 = _SafeSub(msg.gas + 21000, msg.gas);
    require(v98 <= v97 + v98, Panic(17)); // arithmetic overflow or underflow
    v99 = _SafeMul(v97 + v98, msg.gas);
    if (v99 <= v22) {
        if (0 - payload.word1) {
            exit;
        } else {
            v100 = new uint256[](0);
            revert(0, v97 + v98, v100);
        }
    } else {
        v101 = _SafeMul(v97 + v98, msg.gas);
        revert(v22, v101);
    }
}

function maverickV2SwapCallback(address tokenIn, uint256 amountToPay, uint256 varg2, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.data[4 + data] >= 64);
    if (64 - msg.data[4 + data]) {
        v1 = v2 = msg.data[4 + data + 32 + 67];
        v3 = v4 = 0xbbb(msg.data[4 + data + 32 + 34] >> 248);
        v5 = v6 = 1;
        v7 = v8 = 4 + data + 32 + 101;
        v9 = v10 = 0;
        while (v9 < msg.data[4 + data + 32 + 100] >> 248) {
            v11 = v12 = msg.data[v7 + 1] >> 240;
            if (msg.data[v7] >> 248) {
                if ((msg.data[v7] >> 248) - 3) {
                    if ((msg.data[v7] >> 248) - 4) {
                        if ((msg.data[v7] >> 248) - 5) {
                            if ((msg.data[v7] >> 248) - 6) {
                                require(!((msg.data[v7] >> 248) - 7), msg.data[v7] >> 248);
                                v13 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                            } else {
                                v13 = v14 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                            }
                        } else {
                            v13 = v15 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                        }
                    } else {
                        v13 = v16 = 0x5c250dde39085735d282be02e9af164d5618145d;
                    }
                } else {
                    v13 = v17 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                }
                v18 = 3 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                break;
            } else {
                v13 = v19 = msg.data[v7 + 3] >> 96;
                v18 = 23 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                v11 = 4 + v12;
                require(v12 <= v11, Panic(17)); // arithmetic overflow or underflow
                break;
            }
            v5 = v20 = !v9;
            if (bool(v9)) {
                break;
            }
            if (v5) {
                break;
            } else {
                require(v18 <= v11 + v18, Panic(17)); // arithmetic overflow or underflow
                require(v18 <= v11 + v18);
                require(v11 + v18 <= msg.data.length);
                CALLDATACOPY(MEM[64], v18, v11 + v18 - v18);
                MEM[v11 + v18 - v18 + MEM[64]] = 0;
                v21, /* uint256 */ v22, /* uint256 */ v23 = address(v13).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x34eB0x69fV0x1ac + v2920V0xcceB0x34eB0x69fV0x1ac - v2920V0xcceB0x34eB0x69fV0x1ac + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v24 = v25 = 96;
                } else {
                    v24 = v26 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());
                }
                if (v21) {
                    break;
                } else {
                    v27 = new uint256[](MEM[v24]);
                    MCOPY(v27.data, v23, MEM[v24]);
                    MEM[v27 + MEM[v24] + 32] = 0;
                    revert(address(v13), v27);
                }
            }
            v7 = v11 + v18;
            require(v18 <= v7, Panic(17)); // arithmetic overflow or underflow
            v9 = v9 + 1;
        }
        v28 = 0xdec(0, this, v4);
        if (v28 < v2) {
            v29 = 0xdec(0, this, v4);
            revert(v2, 0, v29);
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
        v3 = data.word1;
        require(v3 == address(v3));
        v1 = data.word2;
    }
    MEM[MEM[64] + 68] = v1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v30, /* uint256 */ v31, /* uint256 */ v32 = address(v3).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v33 = v34 = 96;
    } else {
        v33 = v35 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v35.data, 0, RETURNDATASIZE());
    }
    if (v30) {
        exit;
    } else {
        v36 = 0xdec(0, this, v3);
        v37 = new uint256[](MEM[v33]);
        MCOPY(v37.data, v32, MEM[v33]);
        MEM[v37 + MEM[v33] + 32] = 0;
        revert(address(v3), msg.sender, v1, v36, v37);
    }
}

function withdraw(address asset, uint256 amount, address to) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(0x617eb5daaabb433f97c741c5b09a9083b88ba0d7 == msg.sender, CallerNotOwner());
    if (asset) {
        MEM[MEM[64] + 68] = amount;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(to);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v0, /* uint256 */ v1, /* uint256 */ v2 = asset.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v3 = v4 = 96;
        } else {
            v3 = v5 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
        }
        if (!v0) {
            v6 = 0xdec(0, this, asset);
            v7 = new uint256[](MEM[v3]);
            MCOPY(v7.data, v2, MEM[v3]);
            MEM[v7 + MEM[v3] + 32] = 0;
            revert(asset, to, amount, v6, v7);
        }
    } else {
        v8 = to.call().value(amount).gas(2300 * !amount);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    v0 = 4 + rawData + 32;
    require(v1.data <= msg.data.length);
    v2 = v3 = MEM[64];
    MEM[v3] = 0;
    MEM[v3 + 32] = 0;
    MEM[v3 + 64] = 0;
    v4 = v5 = 96;
    MEM[v3 + v5] = 0;
    MEM[v3 + 128] = 0;
    if (msg.data[4 + rawData] > 416) {
        v6 = v7 = msg.data[v0 + 67];
        CALLDATACOPY(v3, v0 + 192, 160);
        v8 = v9 = rawData.word12 >> 248;
        MEM[v5] = rawData.word12 << 24 >> 240;
        CALLDATACOPY(128, v0 + 192 + 165, rawData.word12 << 24 >> 240);
    } else {
        require(v0 + msg.data[4 + rawData] - v0 >= 288);
        require(v0 + msg.data[4 + rawData] - v0 >= 160);
        v2 = new struct(5);
        require(!((v2 + 160 < v2) | (v2 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(rawData.word1 == address(rawData.word1));
        v2.word0 = rawData.word1;
        require(rawData.word2 == address(rawData.word2));
        v2.word1 = rawData.word2;
        require(rawData.word3 == uint24(rawData.word3));
        v2.word2 = rawData.word3;
        require(rawData.word4 == int24(rawData.word4));
        v2.word3 = rawData.word4;
        require(rawData.word5 == address(rawData.word5));
        v2.word4 = rawData.word5;
        v8 = rawData.word6;
        require(v8 == bool(v8));
        v6 = v10 = rawData.word7;
        v6 = rawData.word8;
        require(rawData.word9 <= uint64.max);
        require(v0 + rawData.word9 + 31 < v0 + msg.data[4 + rawData]);
        require(msg.data[v0 + rawData.word9] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = new bytes[](msg.data[v0 + rawData.word9]);
        require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + rawData.word9]) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v0 + rawData.word9]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v0 + rawData.word9 + msg.data[v0 + rawData.word9] + 32 <= v0 + msg.data[4 + rawData]);
        CALLDATACOPY(v4.data, v0 + rawData.word9 + 32, msg.data[v0 + rawData.word9]);
        v4[msg.data[v0 + rawData.word9]] = 0;
    }
    v11 = v12 = 0;
    MEM[64] += 96;
    require(int128(v6) - int128.min, Panic(17)); // arithmetic overflow or underflow
    if (v8) {
        v13 = v14 = 0x1000276a4;
    } else {
        v13 = v15 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v16 = new uint256[](MEM[v4]);
    MCOPY(v16.data, v4 + 32, MEM[v4]);
    MEM[v16 + MEM[v4] + 32] = 0;
    v17, v18 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(MEM[v2]), address(MEM[v2 + 32]), uint24(MEM[v2 + 64]), int24(MEM[v2 + 96]), address(MEM[v2 + 128]), bool(v8), int128(0 - int128(v6)), address(v13), v16).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!v8) {
        v11 = v19 = v18 >> 128;
    }
    if (!(v8 - 1)) {
        v11 = int128(v18);
    }
    if (v8) {
        v20 = v21 = MEM[32 + v2];
    } else {
        v20 = MEM[v2];
    }
    require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
    v22 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v20), this, v11).gas(msg.gas);
    require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (msg.data[4 + rawData] > 416) {
        v23 = v24 = 1;
        v25 = v26 = v0 + 101;
        v27 = v28 = 0;
        while (v27 < msg.data[v0 + 100] >> 248) {
            v29 = v30 = msg.data[v25 + 1] >> 240;
            if (msg.data[v25] >> 248) {
                if ((msg.data[v25] >> 248) - 3) {
                    if ((msg.data[v25] >> 248) - 4) {
                        if ((msg.data[v25] >> 248) - 5) {
                            if ((msg.data[v25] >> 248) - 6) {
                                require(!((msg.data[v25] >> 248) - 7), msg.data[v25] >> 248);
                                v31 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                            } else {
                                v31 = v32 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                            }
                        } else {
                            v31 = v33 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                        }
                    } else {
                        v31 = v34 = 0x5c250dde39085735d282be02e9af164d5618145d;
                    }
                } else {
                    v31 = v35 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                }
                v36 = 3 + v25;
                require(v25 <= v36, Panic(17)); // arithmetic overflow or underflow
            } else {
                v31 = v37 = msg.data[v25 + 3] >> 96;
                v36 = 23 + v25;
                require(v25 <= v36, Panic(17)); // arithmetic overflow or underflow
                v29 = 4 + v30;
                require(v30 <= v29, Panic(17)); // arithmetic overflow or underflow
            }
            v23 = v38 = !v27;
            if (!v23) {
                require(v36 <= v29 + v36, Panic(17)); // arithmetic overflow or underflow
                require(v36 <= v29 + v36);
                require(v29 + v36 <= msg.data.length);
                CALLDATACOPY(MEM[64], v36, v29 + v36 - v36);
                MEM[v29 + v36 - v36 + MEM[64]] = 0;
                v39, /* uint256 */ v40, /* uint256 */ v41 = address(v31).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x97fB0x1ea + v2920V0xcceB0x97fB0x1ea - v2920V0xcceB0x97fB0x1ea + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v42 = v43 = 96;
                } else {
                    v42 = v44 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v44.data, 0, RETURNDATASIZE());
                }
                if (!v39) {
                    v45 = new uint256[](MEM[v42]);
                    MCOPY(v45.data, v41, MEM[v42]);
                    MEM[v45 + MEM[v42] + 32] = 0;
                    revert(address(v31), v45);
                }
            }
            v25 = v29 + v36;
            require(v36 <= v25, Panic(17)); // arithmetic overflow or underflow
            v27 = v27 + 1;
        }
    }
    if (v8) {
        v46 = v47 = MEM[v2];
    } else {
        v46 = MEM[32 + v2];
    }
    if (address(v46)) {
        require(bool(0x4444c5dc75cb358380d2e3de08a90.code.size));
        v48 = 0x4444c5dc75cb358380d2e3de08a90.sync(address(v46)).gas(msg.gas);
        require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MEM[MEM[64] + 68] = v6;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v46));
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v49, /* uint256 */ v50, /* uint256 */ v51 = address(v46).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v52 = v53 = 96;
        } else {
            v52 = v54 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v54.data, 0, RETURNDATASIZE());
        }
        if (!v49) {
            v55 = 0xdec(0, this, v46);
            v56 = new uint256[](MEM[v52]);
            MCOPY(v56.data, v51, MEM[v52]);
            MEM[v56 + MEM[v52] + 32] = 0;
            revert(address(v46), address(0x4444c5dc75cb358380d2e3de08a90), v6, v55, v56);
        }
    }
    if (address(v46)) {
        v6 = v57 = 0;
    }
    v58, /* uint256 */ v59 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v6).gas(msg.gas);
    require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v60 = new uint256[](MEM[v5]);
    MCOPY(v60.data, 128, MEM[v5]);
    MEM[v60 + MEM[v5] + 32] = 0;
    return v60;
}

function 0x1f2e(uint256 varg0, address varg1) private { 
    require(0 - varg0, ZeroValue());
    MCOPY(MEM[64], MEM[64] + 32, 0);
    MEM[MEM[64]] = 0;
    v0, /* uint256 */ v1 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v2 = new bytes[](RETURNDATASIZE());
        v1 = v2.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, varg1, varg0);
    return ;
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(msg.data[4 + data] >= 64);
    if (64 - msg.data[4 + data]) {
        v1 = v2 = msg.data[4 + data + 32 + 67];
        v3 = v4 = 0xbbb(msg.data[4 + data + 32 + 34] >> 248);
        v5 = v6 = 1;
        v7 = v8 = 4 + data + 32 + 101;
        v9 = v10 = 0;
        while (v9 < msg.data[4 + data + 32 + 100] >> 248) {
            v11 = v12 = msg.data[v7 + 1] >> 240;
            if (msg.data[v7] >> 248) {
                if ((msg.data[v7] >> 248) - 3) {
                    if ((msg.data[v7] >> 248) - 4) {
                        if ((msg.data[v7] >> 248) - 5) {
                            if ((msg.data[v7] >> 248) - 6) {
                                require(!((msg.data[v7] >> 248) - 7), msg.data[v7] >> 248);
                                v13 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                            } else {
                                v13 = v14 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                            }
                        } else {
                            v13 = v15 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                        }
                    } else {
                        v13 = v16 = 0x5c250dde39085735d282be02e9af164d5618145d;
                    }
                } else {
                    v13 = v17 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                }
                v18 = 3 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                break;
            } else {
                v13 = v19 = msg.data[v7 + 3] >> 96;
                v18 = 23 + v7;
                require(v7 <= v18, Panic(17)); // arithmetic overflow or underflow
                v11 = 4 + v12;
                require(v12 <= v11, Panic(17)); // arithmetic overflow or underflow
                break;
            }
            v5 = v20 = !v9;
            if (bool(v9)) {
                break;
            }
            if (v5) {
                break;
            } else {
                require(v18 <= v11 + v18, Panic(17)); // arithmetic overflow or underflow
                require(v18 <= v11 + v18);
                require(v11 + v18 <= msg.data.length);
                CALLDATACOPY(MEM[64], v18, v11 + v18 - v18);
                MEM[v11 + v18 - v18 + MEM[64]] = 0;
                v21, /* uint256 */ v22, /* uint256 */ v23 = address(v13).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x34eB0xad1V0x216 + v2920V0xcceB0x34eB0xad1V0x216 - v2920V0xcceB0x34eB0xad1V0x216 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v24 = v25 = 96;
                } else {
                    v24 = v26 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());
                }
                if (v21) {
                    break;
                } else {
                    v27 = new uint256[](MEM[v24]);
                    MCOPY(v27.data, v23, MEM[v24]);
                    MEM[v27 + MEM[v24] + 32] = 0;
                    revert(address(v13), v27);
                }
            }
            v7 = v11 + v18;
            require(v18 <= v7, Panic(17)); // arithmetic overflow or underflow
            v9 = v9 + 1;
        }
        v28 = 0xdec(0, this, v4);
        if (v28 < v2) {
            v29 = 0xdec(0, this, v4);
            revert(v2, 0, v29);
        }
    } else {
        require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
        v3 = data.word1;
        require(v3 == address(v3));
        v1 = data.word2;
    }
    MEM[MEM[64] + 68] = v1;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
    MCOPY(MEM[64], MEM[64] + 32, 68);
    MEM[MEM[64] + 68] = 0;
    v30, /* uint256 */ v31, /* uint256 */ v32 = address(v3).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v33 = v34 = 96;
    } else {
        v33 = v35 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v35.data, 0, RETURNDATASIZE());
    }
    if (v30) {
        exit;
    } else {
        v36 = 0xdec(0, this, v3);
        v37 = new uint256[](MEM[v33]);
        MCOPY(v37.data, v32, MEM[v33]);
        MEM[v37 + MEM[v33] + 32] = 0;
        revert(address(v3), msg.sender, v1, v36, v37);
    }
}

function 0x201c(uint256 varg0, address varg1) private { 
    if (varg1 + 0xffffffffffffffffffffffff5f47966e39de74c93e2e62b5d1614f31c9f914b8) {
        if (varg1 + 0xffffffffffffffffffffffff253e806a72d11adc5ddf9df966ba683ec27ce139) {
            if (varg1 + 0xffffffffffffffffffffffff94e8ab8b176f6b3bb256746ab112153b6ad8e2f1) {
                require(!(varg1 + 0xffffffffffffffffffffffffdd9f053a1aabd588c55bb043012083e6c43d3a67), varg1);
                v0 = v1 = 0x4585fe77225b41b697c938b018e2ac67ac5a20c0;
                v2 = v3 = 1;
            } else {
                v0 = v4 = 0x60594a405d53811d3bc4766596efd80fd545a270;
                v2 = v5 = 1;
            }
        } else {
            v0 = v6 = 0x11b815efb8f581194ae79006d24e0d814b7697f6;
            v2 = v7 = 0;
        }
    } else {
        v0 = v8 = 0x88e6a0c2ddd26feeb64f039a2c41296fcb3f5640;
        v2 = v9 = 1;
    }
    if (v2) {
        v10 = v11 = 0x1000276a4;
    } else {
        v10 = v12 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    MEM[32 + MEM[64]] = varg1;
    MEM[32 + MEM[64] + 32] = varg0;
    v13 = new uint256[](64);
    MCOPY(v13.data, MEM[64] + 32, 64);
    MEM[v13 + 64 + 32] = 0;
    v14, /* uint256 */ v15, /* uint256 */ v16 = address(v0).swap(address(this), bool(v2), varg0, address(v10), v13).gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    v17 = 0xdec(1, this, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
    v18 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v17).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return v17;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    v0 = v1 = 54550;
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(4 + tokens + 31 < msg.data.length);
    v0 = v2 = tokens.length;
    require(v2 <= uint64.max);
    v0 = v3 = tokens.data;
    require(4 + tokens + (v2 << 5) + 32 <= msg.data.length);
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    v0 = v4 = amounts.length;
    require(v4 <= uint64.max);
    v0 = v5 = amounts.data;
    require(4 + amounts + (v4 << 5) + 32 <= msg.data.length);
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    v0 = v6 = feeAmounts.length;
    require(v6 <= uint64.max);
    v0 = v7 = feeAmounts.data;
    require(4 + feeAmounts + (v6 << 5) + 32 <= msg.data.length);
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    v0 = v8 = userData.length;
    require(v8 <= uint64.max);
    v0 = v9 = userData.data;
    require(4 + userData + v8 + 32 <= msg.data.length);
    v10 = v11 = 0;
    v12 = v13 = v9 + 101;
    v14 = v15 = 0;
    while (v14 < msg.data[v9 + 100] >> 248) {
        v16 = v17 = msg.data[v12 + 1] >> 240;
        if (msg.data[v12] >> 248) {
            if ((msg.data[v12] >> 248) - 3) {
                if ((msg.data[v12] >> 248) - 4) {
                    if ((msg.data[v12] >> 248) - 5) {
                        if ((msg.data[v12] >> 248) - 6) {
                            require(!((msg.data[v12] >> 248) - 7), msg.data[v12] >> 248);
                            v18 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                        } else {
                            v18 = v19 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                        }
                    } else {
                        v18 = v20 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                    }
                } else {
                    v18 = v21 = 0x5c250dde39085735d282be02e9af164d5618145d;
                }
            } else {
                v18 = v22 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
            }
            v23 = 3 + v12;
            require(v12 <= v23, Panic(17)); // arithmetic overflow or underflow
            break;
        } else {
            v18 = v24 = msg.data[v12 + 3] >> 96;
            v23 = 23 + v12;
            require(v12 <= v23, Panic(17)); // arithmetic overflow or underflow
            v16 = 4 + v17;
            require(v17 <= v16, Panic(17)); // arithmetic overflow or underflow
            break;
        }
        v10 = v25 = !v14;
        if (bool(v14)) {
            break;
        }
        if (v10) {
            break;
        } else {
            require(v23 <= v16 + v23, Panic(17)); // arithmetic overflow or underflow
            require(v23 <= v16 + v23);
            require(v16 + v23 <= msg.data.length);
            CALLDATACOPY(MEM[64], v23, v16 + v23 - v23);
            MEM[v16 + v23 - v23 + MEM[64]] = 0;
            v26, /* uint256 */ v27, /* uint256 */ v28 = address(v18).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0xaddB0x235 + v2920V0xcceB0xaddB0x235 - v2920V0xcceB0xaddB0x235 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v29 = v30 = 96;
            } else {
                v29 = v31 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v31.data, 0, RETURNDATASIZE());
            }
            if (v26) {
                break;
            } else {
                v32 = new uint256[](MEM[v29]);
                MCOPY(v32.data, v28, MEM[v29]);
                MEM[v32 + MEM[v29] + 32] = 0;
                revert(address(v18), v32);
            }
        }
        v12 = v16 + v23;
        require(v23 <= v12, Panic(17)); // arithmetic overflow or underflow
        v14 = v14 + 1;
    }
    require(0 < v6, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(0 < v4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = feeAmounts[0] + amounts[0];
    require(amounts[0] <= v0, Panic(17)); // arithmetic overflow or underflow
    v33 = v34 = 2905;
    require(0 < v2, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v3 + 32 - v3 >= 32);
    v35 = v36 = tokens[0];
    require(v36 == address(v36));
    while (1) {
        v37 = 0xdec(0, this, v35);
        if (v37 >= v0) {
            require(0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v0 + 32 - v0 >= 32);
            require(msg.data[v0] == address(msg.data[v0]));
            MEM[MEM[64] + 68] = v0;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(0xba12222222228d8ba445958a75a0704d566bf2c8));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v38, /* uint256 */ v39, /* uint256 */ v40 = address(msg.data[v0]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v41 = v42 = 96;
            } else {
                v41 = v43 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
            }
            if (v38) {
                exit;
            } else {
                v44 = 0xdec(0, this, msg.data[v0]);
                v45 = new uint256[](MEM[v41]);
                MCOPY(v45.data, v40, MEM[v41]);
                MEM[v45 + MEM[v41] + 32] = 0;
                revert(address(msg.data[v0]), address(0xba12222222228d8ba445958a75a0704d566bf2c8), v0, v44, v45);
            }
        } else {
            v0 = v46 = 0;
            v33 = 639;
            require(0 < v0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v0 + 32 - v0 >= 32);
            v35 = msg.data[v0];
            require(v35 == address(v35));
            break;
        }
    }
    revert(v0, v0, v37);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0xbbb(uint256 varg0) private { 
    if (0 - varg0) {
        if (1 - varg0) {
            if (2 - varg0) {
                if (3 - varg0) {
                    require(!(4 - varg0), varg0);
                    return 0x6b175474e89094c44da98b954eedeac495271d0f;
                } else {
                    return 0x2260fac5e5542a773aa44fbcfedf7c193bc2c599;
                }
            } else {
                return 0xdac17f958d2ee523a2206206994597c13d831ec7;
            }
        } else {
            return 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;
        }
    } else {
        return 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
}

function 0xdec(uint256 varg0, address varg1, address varg2) private { 
    MEM[MEM[64] + 32] = uint224(varg1) | 0x70a0823100000000000000000000000000000000000000000000000000000000;
    MCOPY(MEM[64], MEM[64] + 32, 36);
    MEM[MEM[64] + 36] = 0;
    v0, /* uint256 */ v1, /* uint256 */ v2 = varg2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v3 = v4 = 96;
    } else {
        v3 = v5 = new bytes[](RETURNDATASIZE());
        v1 = v5.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, varg2, varg1);
    require(v2 + MEM[v3] - v2 >= 32);
    v6 = MEM[v2];
    if (varg0) {
        require(0 - v6, varg2, varg1);
        require(v6, Panic(17)); // arithmetic overflow or underflow
        v6 = v7 = uint256.max + v6;
    }
    return v6;
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, address varg1, uint256 varg2, address varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else {
        if (0x91dd7346 > function_selector >> 224) {
            if (0x55f86501 > function_selector >> 224) {
                if (0x1b11d0ff == function_selector >> 224) {
                    executeOperation(address,uint256,uint256,address,bytes);
                } else if (0x23a69e75 != function_selector >> 224) {
                }
            } else if (0x55f86501 == function_selector >> 224) {
                exec(bytes);
            } else if (0x67ca7c91 == function_selector >> 224) {
                maverickV2SwapCallback(address,uint256,uint256,bytes);
            } else if (0x69328dec == function_selector >> 224) {
                withdraw(address,uint256,address);
            }
        } else if (0xf04f2707 > function_selector >> 224) {
            if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else if (0x923b8a2a == function_selector >> 224) {
                swapCallback(uint256,uint256,bytes);
            } else if (0xa1dab4eb != function_selector >> 224) {
            }
        } else if (0xf04f2707 == function_selector >> 224) {
            receiveFlashLoan(address[],uint256[],uint256[],bytes);
        } else if (0xfa461e33 != function_selector >> 224) {
            if (0xfa483e72 != function_selector >> 224) {
            }
        }
        swapCallback(int256,int256,bytes);
    }
    require(!msg.value);
    if (msg.data.length <= 132) {
        exit;
    } else {
        if (varg1 - this) {
            require(132 <= msg.data.length);
            require(msg.data.length <= msg.data.length);
            require(msg.data.length - 132 >= 64);
            if (64 - (msg.data.length - 132)) {
                v0 = v1 = 0xbbb(varg5 >> 248);
                v2 = v3 = 1;
                v4 = v5 = 233;
                v6 = v7 = 0;
                while (v6 < varg9 >> 248) {
                    v8 = v9 = msg.data[v4 + 1] >> 240;
                    if (msg.data[v4] >> 248) {
                        if ((msg.data[v4] >> 248) - 3) {
                            if ((msg.data[v4] >> 248) - 4) {
                                if ((msg.data[v4] >> 248) - 5) {
                                    if ((msg.data[v4] >> 248) - 6) {
                                        require(!((msg.data[v4] >> 248) - 7), msg.data[v4] >> 248);
                                        v10 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                                    } else {
                                        v10 = v11 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                                    }
                                } else {
                                    v10 = v12 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                                }
                            } else {
                                v10 = v13 = 0x5c250dde39085735d282be02e9af164d5618145d;
                            }
                        } else {
                            v10 = v14 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                        }
                        v15 = 3 + v4;
                        require(v4 <= v15, Panic(17)); // arithmetic overflow or underflow
                        break;
                    } else {
                        v10 = v16 = msg.data[v4 + 3] >> 96;
                        v15 = 23 + v4;
                        require(v4 <= v15, Panic(17)); // arithmetic overflow or underflow
                        v8 = 4 + v9;
                        require(v9 <= v8, Panic(17)); // arithmetic overflow or underflow
                        break;
                    }
                    v2 = v17 = !v6;
                    if (bool(v6)) {
                        break;
                    }
                    if (v2) {
                        break;
                    } else {
                        require(v15 <= v8 + v15, Panic(17)); // arithmetic overflow or underflow
                        require(v15 <= v8 + v15);
                        require(v8 + v15 <= msg.data.length);
                        CALLDATACOPY(MEM[64], v15, v8 + v15 - v15);
                        MEM[v8 + v15 - v15 + MEM[64]] = 0;
                        v18, /* uint256 */ v19, /* uint256 */ v20 = address(v10).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x34eB0x120 + v2920V0xcceB0x34eB0x120 - v2920V0xcceB0x34eB0x120 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                        if (RETURNDATASIZE() == 0) {
                            v21 = v22 = 96;
                        } else {
                            v21 = v23 = new bytes[](RETURNDATASIZE());
                            RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
                        }
                        if (v18) {
                            break;
                        } else {
                            v24 = new uint256[](MEM[v21]);
                            MCOPY(v24.data, v20, MEM[v21]);
                            MEM[v24 + MEM[v21] + 32] = 0;
                            revert(address(v10), v24);
                        }
                    }
                    v4 = v8 + v15;
                    require(v15 <= v4, Panic(17)); // arithmetic overflow or underflow
                    v6 = v6 + 1;
                }
                v25 = 0xdec(0, this, v1);
                if (v25 < varg7) {
                    v26 = 0xdec(0, this, v1);
                    revert(varg7, 0, v26);
                }
            } else {
                require(132 + (msg.data.length - 132) - 132 >= 64);
            }
            MEM[MEM[64] + 68] = v27;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v28, /* uint256 */ v29, /* uint256 */ v30 = address(v0).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v31 = v32 = 96;
            } else {
                v31 = v33 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
            }
            if (!v28) {
                v34 = 0xdec(0, this, v0);
                v35 = new uint256[](MEM[v31]);
                MCOPY(v35.data, v30, MEM[v31]);
                MEM[v35 + MEM[v31] + 32] = 0;
                revert(address(v0), msg.sender, v27, v34, v35);
            }
        } else {
            require(164 <= msg.data.length);
            require(msg.data.length <= msg.data.length);
            v36 = 0xbbb(varg6 >> 248);
            v37 = v38 = 1;
            v39 = v40 = 265;
            v41 = v42 = 0;
            while (v41 < varg10 >> 248) {
                v43 = v44 = msg.data[v39 + 1] >> 240;
                if (msg.data[v39] >> 248) {
                    if ((msg.data[v39] >> 248) - 3) {
                        if ((msg.data[v39] >> 248) - 4) {
                            if ((msg.data[v39] >> 248) - 5) {
                                if ((msg.data[v39] >> 248) - 6) {
                                    require(!((msg.data[v39] >> 248) - 7), msg.data[v39] >> 248);
                                    v45 = 0x95f98936135e1edd0893869032994ab8c7bfbf96;
                                } else {
                                    v45 = v46 = 0xb8e859b374e92f81c6d5e1b53efd503bf4891d94;
                                }
                            } else {
                                v45 = v47 = 0xf2c9d25ca3004ed33854f876a561841bfea43296;
                            }
                        } else {
                            v45 = v48 = 0x5c250dde39085735d282be02e9af164d5618145d;
                        }
                    } else {
                        v45 = v49 = 0x5ad9294c7a8cd62a142303cdb6e23598fbd534b;
                    }
                    v50 = 3 + v39;
                    require(v39 <= v50, Panic(17)); // arithmetic overflow or underflow
                    break;
                } else {
                    v45 = v51 = msg.data[v39 + 3] >> 96;
                    v50 = 23 + v39;
                    require(v39 <= v50, Panic(17)); // arithmetic overflow or underflow
                    v43 = 4 + v44;
                    require(v44 <= v43, Panic(17)); // arithmetic overflow or underflow
                    break;
                }
                v37 = v52 = !v41;
                if (bool(v41)) {
                    break;
                }
                if (v37) {
                    break;
                } else {
                    require(v50 <= v43 + v50, Panic(17)); // arithmetic overflow or underflow
                    require(v50 <= v43 + v50);
                    require(v43 + v50 <= msg.data.length);
                    CALLDATACOPY(MEM[64], v50, v43 + v50 - v50);
                    MEM[v43 + v50 - v50 + MEM[64]] = 0;
                    v53, /* uint256 */ v54, /* uint256 */ v55 = address(v45).delegatecall(MEM[MEM[64]:MEM[64] + v2920V0xce1B0x252B0xfe + v2920V0xcceB0x252B0xfe - v2920V0xcceB0x252B0xfe + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v56 = v57 = 96;
                    } else {
                        v56 = v58 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v58.data, 0, RETURNDATASIZE());
                    }
                    if (v53) {
                        break;
                    } else {
                        v59 = new uint256[](MEM[v56]);
                        MCOPY(v59.data, v55, MEM[v56]);
                        MEM[v59 + MEM[v56] + 32] = 0;
                        revert(address(v45), v59);
                    }
                }
                v39 = v43 + v50;
                require(v50 <= v39, Panic(17)); // arithmetic overflow or underflow
                v41 = v41 + 1;
            }
            v60 = 0xdec(0, this, v36);
            if (v60 >= varg8) {
                MEM[MEM[64] + 68] = varg8;
                MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v61, /* uint256 */ v62, /* uint256 */ v63 = address(v36).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v64 = v65 = 96;
                } else {
                    v64 = v66 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v66.data, 0, RETURNDATASIZE());
                }
                if (!v61) {
                    v67 = 0xdec(0, this, v36);
                    v68 = new uint256[](MEM[v64]);
                    MCOPY(v68.data, v63, MEM[v64]);
                    MEM[v68 + MEM[v64] + 32] = 0;
                    revert(address(v36), msg.sender, varg8, v67, v68);
                }
            } else {
                v69 = 0xdec(0, this, v36);
                revert(varg8, 0, v69);
            }
        }
        exit;
    }
}
