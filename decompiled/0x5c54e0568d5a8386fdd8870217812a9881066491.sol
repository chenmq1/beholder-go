// Decompiled by library.dedaub.com
// 2026.04.23 08:42 UTC
// Compiled using the solidity compiler version 0.8.33


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _transferNative; // STORAGE[0x2]
mapping (address => bool) _pancakeV3SwapCallback; // STORAGE[0x3]
address[] _getVerifiedPools; // STORAGE[0x4]
mapping (address => uint256) mapping_5; // STORAGE[0x5]
address _setMainTokenAddress; // STORAGE[0x0] bytes 0 to 19
address stor_1_0_19; // STORAGE[0x1] bytes 0 to 19



function 0xa34fdd0b(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    require(msg.sender == _setMainTokenAddress, Error(111));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        v2 = 0x1f6c(varg0.data, varg0.length, v0);
        require(!(address(msg.data[v2]) - msg.data[v2]));
        if (_pancakeV3SwapCallback[address(msg.data[v2])]) {
            v3 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v3]) - msg.data[v3]));
            _pancakeV3SwapCallback[address(msg.data[v3])] = 0;
            v4 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v4]) - msg.data[v4]));
            v5 = 0x202b(mapping_5[address(msg.data[v4])]);
            v6 = 0x202b(_getVerifiedPools.length);
            if (v5 - v6) {
                require(v6 < _getVerifiedPools.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v5 < _getVerifiedPools.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                _getVerifiedPools[v5] = _getVerifiedPools[v6];
                require(v5 <= v5 + 1, Panic(17)); // arithmetic overflow or underflow
                mapping_5[_getVerifiedPools[v6]] = v5 + 1;
            }
            require(_getVerifiedPools.length, Panic(49)); // attemp to .pop an empty array
            require(_getVerifiedPools.length - 1 < _getVerifiedPools.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[0] = 4;
            STORAGE[_getVerifiedPools.length + 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19a] = bytes12(STORAGE[_getVerifiedPools.length + 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19a]);
            _getVerifiedPools.length = _getVerifiedPools.length - 1;
            v7 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v7]) - msg.data[v7]));
            mapping_5[address(msg.data[v7])] = 0;
        }
        v0 = v0 + 1;
    }
    exit;
}

function 0x813d92ba() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(msg.sender == _setMainTokenAddress, Error(111));
    require(!bool(!stor_1_0_19), Error(19796));
    require(!bool(!this.balance), Error(48));
    require(stor_1_0_19.code.size);
    v0 = stor_1_0_19.deposit().value(this.balance).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
        exit;
    } else {
        exit;
    }
}

function setMainTokenAddress(address maintoken) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setMainTokenAddress, Error(111));
    stor_1_0_19 = maintoken;
    return ;
}

function 0x5a43d9a7(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    require(msg.sender == _setMainTokenAddress, Error(111));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        v2 = 0x1f6c(varg0.data, varg0.length, v0);
        require(!(address(msg.data[v2]) - msg.data[v2]));
        if (!_pancakeV3SwapCallback[address(msg.data[v2])]) {
            v3 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v3]) - msg.data[v3]));
            _pancakeV3SwapCallback[address(msg.data[v3])] = 1;
            v4 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v4]) - msg.data[v4]));
            require(_getVerifiedPools.length < uint64.max + 1, Panic(65)); // failed memory allocation (too much memory)
            _getVerifiedPools.length = _getVerifiedPools.length + 1;
            require(_getVerifiedPools.length < _getVerifiedPools.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[0] = 4;
            _getVerifiedPools[_getVerifiedPools.length] = msg.data[v4];
            v5 = 0x1f6c(varg0.data, varg0.length, v0);
            require(!(address(msg.data[v5]) - msg.data[v5]));
            mapping_5[address(msg.data[v5])] = _getVerifiedPools.length;
        }
        v0 = v0 + 1;
    }
    exit;
}

function withdraw(address token) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _setMainTokenAddress, Error(111));
    v0, /* uint256 */ v1 = token.balanceOf(this).gas(msg.gas);
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
    require(!bool(!v1), Error(48));
    v5 = new bytes[](68);
    MEM[v5.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v5 + 36] = _setMainTokenAddress;
    MEM[v5 + 68] = v1;
    require(!((v5 + 128 > uint64.max) | (v5 + 128 < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v5.length;
    v7, /* uint256 */ v8 = token.transfer(_setMainTokenAddress, v1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v9 = v10 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v9 = v11 = new bytes[](RETURNDATASIZE());
        require(!((v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
        v8 = v11.data;
        RETURNDATACOPY(v8, 0, RETURNDATASIZE());
    }
    if (v7) {
        v7 = v12 = !MEM[v9];
        if (bool(MEM[v9])) {
            require(v9 + MEM[v9] - v9 >= 32);
            v7 = v13 = MEM[32 + v9];
            require(!(bool(v13) - v13));
        }
    }
    require(v7, Error(21574));
}

function 0x3d154a1d(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg1) - varg1));
    require(_transferNative[msg.sender], Error(118));
    require(!bool(!stor_1_0_19), Error(19796));
    require(!bool(!address(varg1)), Error(97));
    require(!bool(!varg0), Error(48));
    require(stor_1_0_19.code.size);
    v0 = stor_1_0_19.withdraw(varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(0 >= 0);
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v1, /* uint256 */ v2 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = v4 = new bytes[](RETURNDATASIZE());
        require(!((v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v4.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, Error(20052));
}

function 0x321e1bd8(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint64 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(_transferNative[msg.sender], Error(118));
    require(uint32(varg5 >> 32) >= block.timestamp, Error(116));
    v0, /* uint256 */ v1, /* uint256 */ v2 = varg1.getReserves().gas(msg.gas);
    require(v0);
    v3, /* uint256 */ v4 = varg1.token0().gas(msg.gas);
    require(v3);
    if (1 == (v4 == varg0)) {
        v5 = v6 = 1;
        v7 = v8 = varg3 * uint32(varg5) * v2 / (v1 * 10 ** 6 + varg3 * uint32(varg5));
    } else {
        v5 = v9 = 0;
        v7 = v10 = varg3 * uint32(varg5) * v1 / (v2 * 10 ** 6 + varg3 * uint32(varg5));
    }
    require(varg4 <= v7, Error(97));
    v11 = varg0.transfer(varg1, varg3).gas(msg.gas);
    require(v11);
    if (!v5) {
        v12 = address(varg1);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v12.code.size);
        v13 = v14 = 0;
        v15 = v16 = MEM[64];
        MEM[v16] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v16 + 4] = v7;
        MEM[v16 + 4 + 32] = 0;
        MEM[v16 + 4 + 64] = address(varg2);
        MEM[v16 + 4 + 96] = 128;
        MEM[v16 + 4 + 128] = 0;
        MCOPY(v16 + 4 + 128 + 32, MEM[64] + 32, 0);
        MEM[v16 + 4 + 128 + 32] = 0;
        v17 = v18 = v16 + 4 + 128 + 32;
    } else {
        v12 = v19 = address(varg1);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v19.code.size);
        v13 = 0;
        v15 = MEM[64];
        MEM[v15] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v15 + 4] = 0;
        MEM[v15 + 4 + 32] = v7;
        MEM[v15 + 4 + 64] = address(varg2);
        MEM[v15 + 4 + 96] = 128;
        MEM[v15 + 4 + 128] = 0;
        MCOPY(v15 + 4 + 128 + 32, MEM[64] + 32, 0);
        MEM[v15 + 4 + 128 + 32] = 0;
        v17 = v15 + 4 + 128 + 32;
    }
    v20 = v12.call(MEM[v1200xa60:v1200xa60 + v1cd9V0x1ea2V0xa570x120 - v1200xa60], MEM[v1200xa60:v1200xa60 + v1200xa5b]).value(v13).gas(msg.gas);
    require(v20, MEM[64], RETURNDATASIZE());
    if (v20) {
        require(!((v15 > uint64.max) | (v15 < v15)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v15;
        require(v15 - v15 >= 0);
        exit;
    } else {
        exit;
    }
}

function setValidAddress(address addr, bool valid) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _setMainTokenAddress, Error(111));
    _transferNative[addr] = valid;
    return ;
}

function 0x0b642134(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 288);
    v0 = v1 = 0x1cc(msg.data.length);
    require(!(varg0 - uint8(varg0)));
    require(_transferNative[msg.sender], Error(118));
    require(!(msg.data[v1 + 96] - uint32(msg.data[v1 + 96])));
    require(uint32(msg.data[v1 + 96]) >= block.timestamp, Error(116));
    require(!(address(msg.data[v1]) - msg.data[v1]));
    v2, /* uint256 */ v3 = address(msg.data[v1]).balanceOf(this).gas(msg.gas);
    if (v2) {
        v3 = v4 = 0;
        if (v2) {
            v5 = v6 = 32;
            if (32 > RETURNDATASIZE()) {
                v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v5 - MEM[64] >= 32);
        }
        v7 = v8 = msg.data[v1 + 128];
        require(v3 >= v8, Error(98));
        v0 = v9 = v1 + 32;
        require(!(address(msg.data[v9]) - msg.data[v9]));
        v10 = msg.data[v1];
        require(!(address(v10) - v10));
        v0 = v11 = address(msg.data[v9]);
        v12 = v13 = MEM[64];
        v14 = v11.token0().gas(msg.gas);
        if (v14) {
            v15 = v16 = uint160.max;
            v17 = v18 = 0;
            if (v14) {
                v19 = v20 = 1644;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v13 + 32 > uint64.max) | (v13 + 32 < v13)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v13 + 32;
                    v21 = v22 = v13 + 32;
                }
            }
            if (0 == (v10 & v15 == v17 & v15)) {
                v12 = v23 = MEM[64];
                v24 = v11.token0().gas(msg.gas);
                if (v24) {
                    v15 = v25 = 0x2427a;
                    v10 = v26 = 1042;
                    v15 = v27 = 64;
                    v17 = v28 = 0;
                    if (v24) {
                        v19 = v29 = 1613;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v23 + 32 > uint64.max) | (v23 + 32 < v23)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v23 + 32;
                            v21 = v30 = v23 + 32;
                        }
                    }
                }
            } else {
                v12 = v31 = MEM[64];
                v32 = v11.token1().gas(msg.gas);
                if (v32) {
                    v15 = v33 = 0x240a8;
                    v10 = v34 = 1042;
                    v15 = v35 = 64;
                    v17 = v36 = 0;
                    if (v32) {
                        v19 = v37 = 1497;
                        v38 = v39 = 32;
                        if (32 > RETURNDATASIZE()) {
                            // Unknown jump to Block 0x5df0x12a. Refer to 3-address code (TAC);
                        }
                    }
                }
            }
            require(!(address(msg.data[v1]) - msg.data[v1]));
            v0 = v40 = address(msg.data[v1]) < address(v17);
            while (!(address(msg.data[v0]) - msg.data[v0])) {
                // Unknown jump to Block ['0x240a8', '0x2427a', '0x47e0x12a']. Refer to 3-address code (TAC);
                v41 = MEM[v15];
                MEM[v41 + 32] = address(msg.data[v0]);
                MEM[v41] = v41 + 64 - v41 - 32;
                require(!((v41 + (v41 + 64 - v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v41 + (v41 + 64 - v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v41)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v41 + (v41 + 64 - v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v42 = MEM[v15];
                MEM[v42] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                MEM[v42 + 4] = address(v15);
                MEM[v42 + 4 + 32] = bool(v0);
                MEM[v42 + 4 + 64] = v7;
                MEM[v42 + 4 + 96] = address(v43);
                MEM[v42 + 4 + 128] = 160;
                MEM[v42 + 4 + 160] = MEM[v41];
                MCOPY(v42 + 4 + 160 + 32, v41 + 32, MEM[v41]);
                MEM[v42 + 4 + 160 + MEM[v41] + 32] = 0;
                v44 = v0.call(MEM[v4d5:v4d5 + MEM[v12a0x480] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + v4d5 + 4 + 160 + 32 - v4d5], MEM[v4d5:v4d5 + v12aarg0x1]).value(v0).gas(msg.gas);
                if (v44) {
                    v45 = v46 = 0;
                    v45 = v47 = 0;
                    if (v44) {
                        v48 = v49 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v48 = RETURNDATASIZE();
                        }
                        require(!((v42 + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v42 + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v42 + v48 - v42 >= 64);
                        v45 = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                        v45 = v50 = MEM[v42 + 32];
                    }
                    if (v0) {
                    }
                    require(v45 != int256.min, Panic(17)); // arithmetic overflow or underflow
                    require(msg.data[v0 + 160] <= 0 - v45, Error(97));
                    exit;
                }
                v51 = uint8(v15) == 3;
                if (uint8(v15) != 3) {
                    v51 = v52 = uint8(v15) == 8;
                }
                if (!v51) {
                    v53 = uint8(v15) == 6;
                    if (uint8(v15) != 6) {
                        v53 = v54 = uint8(v15) == 7;
                    }
                    require(v53, Error(28788));
                    v55 = v56 = 64;
                    v57 = v58 = 0xe76c01e400000000000000000000000000000000000000000000000000000000;
                } else {
                    v55 = 64;
                    v57 = 0x3850c7bd00000000000000000000000000000000000000000000000000000000;
                }
                v59 = new struct(2);
                v60 = v59.data;
                v59.word1 = v57;
                v59.word0 = 4;
                require(!((v59 + 64 > uint64.max) | (v59 + 64 < v59)), Panic(65)); // failed memory allocation (too much memory)
                v61 = v59.word0.length;
                v62, /* uint256 */ v63 = msg.data[v0].slot0().gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v64 = v65 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v64 = v66 = new bytes[](RETURNDATASIZE());
                    require(!((v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v66 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v66)), Panic(65)); // failed memory allocation (too much memory)
                    v63 = v66.data;
                    RETURNDATACOPY(v63, 0, RETURNDATASIZE());
                }
                require(v62, Error(29811));
                if (!v0) {
                    require(!(msg.data[v0 + 192] - int24(msg.data[v0 + 192])));
                    v67 = 0x1bdf(MEM[v64 + v55], msg.data[v0 + 192]);
                    require(!(msg.data[v0 + 224] - int24(msg.data[v0 + 224])));
                    require(int24(v67) <= int24(msg.data[v0 + 224]), Error(29814));
                } else {
                    require(!(msg.data[v0 + 192] - int24(msg.data[v0 + 192])));
                    v68 = 0x1bdf(msg.data[v0 + 192], MEM[v64 + v55]);
                    require(!(msg.data[v0 + 224] - int24(msg.data[v0 + 224])));
                    require(int24(v68) <= int24(msg.data[v0 + 224]), Error(29814));
                }
                v15 = v69 = msg.data[v0 + v15];
                require(!(address(v69) - v69));
                if (!v0) {
                    v0 = v70 = 0;
                    v43 = v71 = 0xfffd8963efd1fc6a506488495d951d5263988d24;
                } else {
                    v0 = v72 = 0;
                    v43 = v73 = 0x1000276a5;
                }
                v7 = v74 = 1288;
                v10 = v75 = 0x2416d;
                v15 = v76 = 1235;
                v15 = v77 = 1150;
                // Unknown jump to Block 0x22c20x12a. Refer to 3-address code (TAC);
            }
            revert();
            // Unknown jump to Block 0x3e3. Refer to 3-address code (TAC);
            v38 = RETURNDATASIZE();
            require(!((v12 + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v12 + (v38 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v21 = v12 + v38;
            require(v21 - v12 >= 32);
            v17 = MEM[v12];
            require(!(address(v17) - v17));
            // Unknown jump to Block ['0x5d9', '0x64d', '0x66c']. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x3e1. Refer to 3-address code (TAC);
            // Unknown jump to Block 0x62e. Refer to 3-address code (TAC);
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function transferAmount(address varg0, address varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_transferNative[msg.sender], Error(118));
    require(!bool(!varg2), Error(48));
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v7 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] - v5 >= 32);
            v2 = v8 = MEM[32 + v5];
            require(!(bool(v8) - v8));
        }
    }
    require(v2, Error(21574));
}

function 0x1bdf(int24 varg0, int24 varg1) private { 
    v0 = varg0 - varg1;
    require(!((v0 < int24.min) | (v0 > int24.max)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0x1cc(uint256 varg0) private { 
    require(varg0 - 4 >= uint8.max + 1);
    return 4;
}

function 0x1f6c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x202b(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(_pancakeV3SwapCallback[msg.sender], Error(22096));
    v0 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v0 = v1 = amount1Delta > 0;
    }
    require(v0, Error(12388));
    require(data.data + data.length - data.data >= 32);
    require(!(address(msg.data[data.data]) - msg.data[data.data]));
    if (v0) {
    }
    v2 = new bytes[](68);
    MEM[v2.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v2 + 36] = msg.sender;
    MEM[v2 + 68] = v3;
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v2.length;
    v5, /* uint256 */ v6 = address(msg.data[data.data]).transfer(msg.sender, v3).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (v5) {
        v5 = v10 = !MEM[v7];
        if (bool(MEM[v7])) {
            require(v7 + MEM[v7] - v7 >= 32);
            v5 = v11 = MEM[32 + v7];
            require(!(bool(v11) - v11));
        }
    }
    require(v5, Error(21574));
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(_pancakeV3SwapCallback[msg.sender], Error(22096));
    v0 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v0 = v1 = amount1Delta > 0;
    }
    require(v0, Error(12388));
    require(data.data + data.length - data.data >= 32);
    require(!(address(msg.data[data.data]) - msg.data[data.data]));
    if (v0) {
    }
    v2 = new bytes[](68);
    MEM[v2.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v2 + 36] = msg.sender;
    MEM[v2 + 68] = v3;
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v2.length;
    v5, /* uint256 */ v6 = address(msg.data[data.data]).transfer(msg.sender, v3).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (v5) {
        v5 = v10 = !MEM[v7];
        if (bool(MEM[v7])) {
            require(v7 + MEM[v7] - v7 >= 32);
            v5 = v11 = MEM[32 + v7];
            require(!(bool(v11) - v11));
        }
    }
    require(v5, Error(21574));
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    require(_pancakeV3SwapCallback[msg.sender], Error(22096));
    v0 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v0 = v1 = amount1Delta > 0;
    }
    require(v0, Error(12388));
    require(data.data + data.length - data.data >= 32);
    require(!(address(msg.data[data.data]) - msg.data[data.data]));
    if (v0) {
    }
    v2 = new bytes[](68);
    MEM[v2.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v2 + 36] = msg.sender;
    MEM[v2 + 68] = v3;
    require(!((v2 + 128 > uint64.max) | (v2 + 128 < v2)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v2.length;
    v5, /* uint256 */ v6 = address(msg.data[data.data]).transfer(msg.sender, v3).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (v5) {
        v5 = v10 = !MEM[v7];
        if (bool(MEM[v7])) {
            require(v7 + MEM[v7] - v7 >= 32);
            v5 = v11 = MEM[32 + v7];
            require(!(bool(v11) - v11));
        }
    }
    require(v5, Error(21574));
}

function 0xfac6c2d4(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 288);
    v0 = v1 = 0x1cc(msg.data.length);
    require(!(varg0 - uint8(varg0)));
    require(_transferNative[msg.sender], Error(118));
    require(!(msg.data[v1 + 96] - uint32(msg.data[v1 + 96])));
    require(uint32(msg.data[v1 + 96]) >= block.timestamp, Error(116));
    v0 = v2 = v1 + 32;
    require(!(address(msg.data[v2]) - msg.data[v2]));
    v3 = msg.data[v1];
    require(!(address(v3) - v3));
    v0 = v4 = address(msg.data[v2]);
    v5 = v6 = MEM[64];
    v7 = v4.token0().gas(msg.gas);
    if (v7) {
        v0 = v8 = uint160.max;
        v9 = v10 = 0;
        if (v7) {
            v11 = v12 = 6474;
            if (32 <= RETURNDATASIZE()) {
                require(!((v6 + 32 > uint64.max) | (v6 + 32 < v6)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v6 + 32;
                v13 = v14 = v6 + 32;
            }
        }
        if (0 == (v3 & v0 == v9 & v0)) {
            v5 = v15 = MEM[64];
            v16 = v0.token0().gas(msg.gas);
            if (v16) {
                v3 = v17 = 64;
                v0 = v18 = 5994;
                v9 = v19 = 0;
                if (v16) {
                    v11 = v20 = 6443;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v15 + 32 > uint64.max) | (v15 + 32 < v15)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v15 + 32;
                        v13 = v21 = v15 + 32;
                    }
                }
            }
        } else {
            v5 = v22 = MEM[64];
            v23 = v0.token1().gas(msg.gas);
            if (v23) {
                v3 = v24 = 64;
                v0 = v25 = 5994;
                v9 = v26 = 0;
                if (v23) {
                    v11 = v27 = 6336;
                    if (32 <= RETURNDATASIZE()) {
                        require(!((v22 + 32 > uint64.max) | (v22 + 32 < v22)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v22 + 32;
                        v13 = v28 = v22 + 32;
                    }
                }
            }
        }
        require(!(address(msg.data[v0]) - msg.data[v0]));
        require(!(address(msg.data[v0]) - msg.data[v0]));
        v29 = uint8(v0) == 3;
        if (uint8(v0) != 3) {
            v29 = v30 = uint8(v0) == 8;
        }
        if (!v29) {
            v31 = uint8(v0) == 6;
            if (uint8(v0) != 6) {
                v31 = v32 = uint8(v0) == 7;
            }
            require(v31, Error(28788));
            v33 = v34 = 64;
            v35 = v36 = 0xe76c01e400000000000000000000000000000000000000000000000000000000;
        } else {
            v33 = 64;
            v35 = 0x3850c7bd00000000000000000000000000000000000000000000000000000000;
        }
        v37 = new struct(2);
        v38 = v37.data;
        v37.word1 = v35;
        v37.word0 = 4;
        require(!((v37 + 64 > uint64.max) | (v37 + 64 < v37)), Panic(65)); // failed memory allocation (too much memory)
        v39 = v37.word0.length;
        v40, /* uint256 */ v41 = msg.data[v0].slot0().gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v42 = v43 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v42 = v44 = new bytes[](RETURNDATASIZE());
            require(!((v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
            v41 = v44.data;
            RETURNDATACOPY(v41, 0, RETURNDATASIZE());
        }
        require(v40, Error(29811));
        if (address(v9) >= address(msg.data[v0])) {
            require(!(msg.data[v0 + 192] - int24(msg.data[v0 + 192])));
            v45 = 0x1bdf(MEM[v42 + v33], msg.data[v0 + 192]);
            require(!(msg.data[v0 + 224] - int24(msg.data[v0 + 224])));
            require(int24(v45) <= int24(msg.data[v0 + 224]), Error(29814));
        } else {
            require(!(msg.data[v0 + 192] - int24(msg.data[v0 + 192])));
            v46 = 0x1bdf(msg.data[v0 + 192], MEM[v42 + v33]);
            require(!(msg.data[v0 + 224] - int24(msg.data[v0 + 224])));
            require(int24(v46) <= int24(msg.data[v0 + 224]), Error(29814));
        }
        require(!(address(msg.data[v0 + v3]) - msg.data[v0 + v3]));
        v47 = v48 = 0;
        require(msg.data[v0 + 128] != int256.min, Panic(17)); // arithmetic overflow or underflow
        if (v48 == address(v9) < address(msg.data[v0])) {
            MEM[MEM[v49] + 32] = address(v9);
            MEM[MEM[v49]] = MEM[v49] + 64 - MEM[v49] - 32;
            require(!((MEM[v49] + (MEM[v49] + 64 - MEM[v49] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v49] + (MEM[v49] + 64 - MEM[v49] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v49])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v49] + (MEM[v49] + 64 - MEM[v49] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v50 = v51 = MEM[v49];
            MEM[v51] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v51 + 4] = address(msg.data[v0 + v3]);
            MEM[v51 + 4 + 32] = address(v9) < address(msg.data[v0]);
            MEM[v51 + 4 + 64] = 0 - msg.data[v0 + 128];
            MEM[v51 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d24);
            MEM[v51 + 4 + 128] = 160;
            MEM[v51 + 4 + 160] = MEM[MEM[v49]];
            MCOPY(v51 + 4 + 160 + 32, MEM[v49] + 32, MEM[MEM[v49]]);
            MEM[v51 + 4 + 160 + MEM[MEM[v49]] + 32] = 0;
            v52 = (MEM[MEM[v49]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v51 + 4 + 160) + 32;
            // Unknown jump to Block 0x1812. Refer to 3-address code (TAC);
        } else {
            MEM[MEM[v3] + 32] = address(v9);
            MEM[MEM[v3]] = MEM[v3] + 64 - MEM[v3] - 32;
            require(!((MEM[v3] + (MEM[v3] + 64 - MEM[v3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[v3] + (MEM[v3] + 64 - MEM[v3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[v3])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v3] + (MEM[v3] + 64 - MEM[v3] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v50 = v53 = MEM[v3];
            MEM[v53] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v53 + 4] = address(msg.data[v0 + v3]);
            MEM[v53 + 4 + 32] = address(v9) < address(msg.data[v0]);
            MEM[v53 + 4 + 64] = 0 - msg.data[v0 + 128];
            MEM[v53 + 4 + 96] = address(0x1000276a5);
            MEM[v53 + 4 + 128] = 160;
            MEM[v53 + 4 + 160] = MEM[MEM[v3]];
            MCOPY(v53 + 4 + 160 + 32, MEM[v3] + 32, MEM[MEM[v3]]);
            MEM[v53 + 4 + 160 + MEM[MEM[v3]] + 32] = 0;
            v52 = v54 = (MEM[MEM[v3]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v53 + 4 + 160) + 32;
        }
        v55 = v0.call(MEM[v241d90x544f4_0x1:v241d90x544f4_0x1 + v1cd9V0x1cdcV0x24a46 - v241d90x544f4_0x1], MEM[v241d90x544f4_0x1:v241d90x544f4_0x1 + v1a91V0x1674]).value(v47).gas(msg.gas);
        if (v55) {
            v56 = v57 = 0;
            v56 = v58 = 0;
            if (v55) {
                if (64 > RETURNDATASIZE()) {
                    require(!((v50 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v50 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v50)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v50 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v59 = v50 + RETURNDATASIZE();
                } else {
                    require(!((v50 + 64 > uint64.max) | (v50 + 64 < v50)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v50 + 64;
                    v59 = v60 = v50 + 64;
                }
                require(v59 - v50 >= 64);
                v56 = MEM[v50];
                v56 = v61 = MEM[v50 + 32];
            }
            if (address(v9) < address(msg.data[v0])) {
            }
            require(msg.data[v0 + 160] >= v56, Error(97));
            exit;
        }
        // Unknown jump to Block 0x173d. Refer to 3-address code (TAC);
        require(!((v5 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v5 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v13 = v5 + RETURNDATASIZE();
        require(v13 - v5 >= 32);
        v9 = MEM[v5];
        require(!(address(v9) - v9));
        // Unknown jump to Block ['0x18c0', '0x192b', '0x194a']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x173a. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x190b. Refer to 3-address code (TAC);
    }
    revert(MEM[64], RETURNDATASIZE());
}

function receive() public payable { 
}

function transferNative(uint256 _valueInWei, address _userAddress) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_transferNative[msg.sender], Error(118));
    require(!bool(!_userAddress), Error(97));
    v0 = v1 = bool(_valueInWei);
    if (v1) {
        v0 = v2 = _valueInWei <= this.balance;
    }
    require(v0, Error(48));
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v3, /* uint256 */ v4 = _userAddress.call().value(_valueInWei).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v6.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3, Error(20052));
}

function 0xd46bb835(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint64 varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    require(!(address(varg0) - varg0));
    require(!(address(varg1) - varg1));
    require(!(address(varg2) - varg2));
    require(_transferNative[msg.sender], Error(118));
    require(uint32(varg5 >> 32) >= block.timestamp, Error(116));
    v0, /* uint256 */ v1, /* uint256 */ v2 = varg1.getReserves().gas(msg.gas);
    require(v0);
    v3, /* uint256 */ v4, v5 = varg1.token0().gas(msg.gas);
    require(v3);
    if (1 == (v4 == varg0)) {
        v6, v5 = varg1.token1().gas(msg.gas);
        require(v6);
        v7 = v8 = 0;
        v9 = v10 = varg3 * v2 * 10 ** 6 / ((v1 - varg3) * uint32(varg5)) + 1;
    } else {
        v7 = v11 = 1;
        v9 = v12 = varg3 * v1 * 10 ** 6 / ((v2 - varg3) * uint32(varg5)) + v11;
    }
    require(v9 <= varg4, Error(97));
    v13 = v5.transfer(varg1, v9).gas(msg.gas);
    require(v13);
    if (!v7) {
        v14 = address(varg1);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v14.code.size);
        v15 = v16 = 0;
        v17 = v18 = MEM[64];
        MEM[v18] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v18 + 4] = varg3;
        MEM[v18 + 4 + 32] = 0;
        MEM[v18 + 4 + 64] = address(varg2);
        MEM[v18 + 4 + 96] = 128;
        MEM[v18 + 4 + 128] = 0;
        MCOPY(v18 + 4 + 128 + 32, MEM[64] + 32, 0);
        MEM[v18 + 4 + 128 + 32] = 0;
        v19 = v20 = v18 + 4 + 128 + 32;
    } else {
        v14 = v21 = address(varg1);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v21.code.size);
        v15 = 0;
        v17 = MEM[64];
        MEM[v17] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
        MEM[v17 + 4] = 0;
        MEM[v17 + 4 + 32] = varg3;
        MEM[v17 + 4 + 64] = address(varg2);
        MEM[v17 + 4 + 96] = 128;
        MEM[v17 + 4 + 128] = 0;
        MCOPY(v17 + 4 + 128 + 32, MEM[64] + 32, 0);
        MEM[v17 + 4 + 128 + 32] = 0;
        v19 = v17 + 4 + 128 + 32;
    }
    v22 = v14.call(MEM[vf30xa60:vf30xa60 + v1cd9V0x1ea2V0xa570xf3 - vf30xa60], MEM[vf30xa60:vf30xa60 + vf30xa5b]).value(v15).gas(msg.gas);
    require(v22, MEM[64], RETURNDATASIZE());
    if (v22) {
        require(!((v17 > uint64.max) | (v17 < v17)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v17;
        require(v17 - v17 >= 0);
        exit;
    } else {
        exit;
    }
}

function getVerifiedPools() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = MEM[64] + 32;
    MEM[0] = 4;
    v2 = v3 = _getVerifiedPools.data;
    v4 = v5 = 0;
    while (v4 < _getVerifiedPools.length) {
        MEM[v0] = address(STORAGE[v2]);
        v0 = v0 + 32;
        v2 += 1;
        v4 += 1;
    }
    require(!((MEM[64] + (v0 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](_getVerifiedPools.length);
    v7 = v8 = v6.data;
    v9 = MEM[64] + 32;
    v10 = 0;
    while (v10 < _getVerifiedPools.length) {
        MEM[v7] = address(MEM[v9]);
        v7 += 32;
        v9 = v9 + 32;
        v10 += 1;
    }
    return v6;
}

function 0xb4feb8af() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(msg.sender == _setMainTokenAddress, Error(111));
    require(!bool(!this.balance), Error(48));
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v0, /* uint256 */ v1 = _setMainTokenAddress.call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = new bytes[](RETURNDATASIZE());
        require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v2.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, Error(20052));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x1f47471 == function_selector >> 224) {
            transferAmount(address,address,uint256);
        } else if (0xb642134 == function_selector >> 224) {
            0x0b642134(function_selector >> 224);
        } else if (0x1002dc34 == function_selector >> 224) {
            setValidAddress(address,bool);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x321e1bd8 == function_selector >> 224) {
            0x321e1bd8();
        } else if (0x3d154a1d == function_selector >> 224) {
            0x3d154a1d();
        } else if (0x51cff8d9 == function_selector >> 224) {
            withdraw(address);
        } else if (0x5a43d9a7 == function_selector >> 224) {
            0x5a43d9a7();
        } else if (0x6809fedd == function_selector >> 224) {
            setMainTokenAddress(address);
        } else if (0x813d92ba == function_selector >> 224) {
            0x813d92ba();
        } else if (0xa34fdd0b == function_selector >> 224) {
            0xa34fdd0b();
        } else if (0xb4feb8af == function_selector >> 224) {
            0xb4feb8af();
        } else if (0xb63ae6ee == function_selector >> 224) {
            getVerifiedPools();
        } else if (0xd46bb835 == function_selector >> 224) {
            0xd46bb835();
        } else if (0xf32a67b4 == function_selector >> 224) {
            transferNative(uint256,address);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (!(0xfac6c2d4 - (function_selector >> 224))) {
            0xfac6c2d4();
        }
    }
    require(!msg.data.length);
    receive();
}
