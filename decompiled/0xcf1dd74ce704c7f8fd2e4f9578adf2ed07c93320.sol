// Decompiled by library.dedaub.com
// 2026.04.14 04:09 UTC
// Compiled using the solidity compiler version 0.8.34


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _isModuleAllowed; // STORAGE[0x1]
mapping (address => bool) _isUser; // STORAGE[0x2]
uint256 stor_3; // STORAGE[0x3]
address _owner; // STORAGE[0x0] bytes 0 to 19
address _unlockCallback; // STORAGE[0x4] bytes 0 to 19



function 0x03ef1685(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(varg2 <= uint64.max);
    v0 = 0x3775(4 + varg2, 4 + (msg.data.length - 4));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
    require(varg4.length <= uint64.max);
    require(varg4.data + (varg4.length << 5) <= 4 + (msg.data.length - 4));
    require(_isUser[msg.sender], NotUser());
    require(stor_3 - 1, ReentrantCall());
    stor_3 = 1;
    if (varg1 - 0) {
        v1 = 0x1f5c(v0, varg1, varg0);
        v2 = v3 = v1.word6;
        if (v1.word7) {
            v4 = v5 = v1.word1;
            v6 = v7 = v1.word2;
            v8 = v9 = v1.word3;
            if (varg3.length > 0) {
                MEM[MEM[64]] = False;
                MEM[32 + MEM[64]] = 0;
                MEM[64 + MEM[64]] = 0;
                MEM[96 + MEM[64]] = 0;
                v10 = 0x5082(4 + MEM[64], varg4.length, varg4.data, varg3.length, varg3.data, v0, v5, varg0);
                require(bool((address(this)).code.size));
                v11 = v12, /* uint256 */ v13 = address(this).call(0x1cd56b4f00000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (v12) {
                    v11 = v14 = 1;
                }
                require(!v11);
                if (RETURNDATASIZE() == 0) {
                    v15 = v16 = 96;
                } else {
                    v15 = v17 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
                }
                if (MEM[v15] < 68) {
                    v18 = v19 = 0;
                    v20 = v21 = 0;
                    v22 = v23 = 0;
                } else if (bytes4(MEM[v13]) - bytes4(0xc771b7a400000000000000000000000000000000000000000000000000000000)) {
                    v18 = v24 = 0;
                    v20 = v25 = 0;
                    v22 = v26 = 0;
                } else {
                    v20 = v27 = MEM[v15 + 36];
                    v22 = v28 = MEM[v15 + 68];
                    v18 = v29 = 1;
                }
                v30 = _SafeSub(msg.gas, msg.gas);
                if (bool(v18)) {
                }
            }
        } else {
            v4 = v31 = 0;
            v6 = v32 = 0;
            v6 = v33 = 0;
            v8 = v34 = 0;
        }
    } else {
        v4 = v35 = 0;
        v6 = v36 = 0;
        v6 = v37 = 0;
        v8 = v38 = 0;
        v2 = v39 = 0;
    }
    stor_3 = 0;
    return v4, v6, v6, v8, uint8(v2);
}

function 0x1cd56b4f(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(varg2 <= uint64.max);
    v0 = 0x3775(4 + varg2, 4 + (msg.data.length - 4));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
    require(varg4.length <= uint64.max);
    require(varg4.data + (varg4.length << 5) <= 4 + (msg.data.length - 4));
    require(msg.sender == address(this));
    v1 = 0x45ca(32 + MEM[64], v0, varg1, varg0);
    v2 = new uint256[](v1 - MEM[64] - 32);
    MCOPY(v2.data, MEM[64] + 32, v1 - MEM[64] - 32);
    MEM[v2.data + (v1 - MEM[64] - 32)] = 0;
    require(bool((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size));
    v3 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(varg0, varg1, v2).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4, /* uint256 */ v5 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = v7 = varg3.length == 0;
    if (varg3.length != 0) {
        v6 = varg3.length != varg4.length;
    }
    require(!v6, InvalidRoute());
    v8 = v9 = 0;
    while (1) {
        if (v8 >= varg3.length) {
            v10, /* uint256 */ v11 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            revert(v5, v11);
        } else {
            require(v8 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require((v8 << 5) + varg3.data + 32 - ((v8 << 5) + varg3.data) >= 32);
            require(varg3[v8] == address(varg3[v8]));
            require(_isModuleAllowed[address(varg3[v8])], ModuleNotAllowed(address(varg3[v8])));
            require(v8 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg4[v8] < msg.data.length - varg4.data - 31);
            require(msg.data[varg4.data + varg4[v8]] <= uint64.max);
            require(varg4.data + varg4[v8] + 32 <= msg.data.length - msg.data[varg4.data + varg4[v8]]);
            CALLDATACOPY(MEM[64], varg4.data + varg4[v8] + 32, msg.data[varg4.data + varg4[v8]]);
            MEM[MEM[64] + msg.data[varg4.data + varg4[v8]]] = 0;
            v12, /* uint256 */ v13, /* uint256 */ v14 = address(varg3[v8]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg4.data + varg4[v22a1_0x0V0x902]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v15 = v16 = 96;
            } else {
                v15 = v17 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
            }
            if (v12) {
                v8 += 1;
            } else {
                v18 = new uint256[](MEM[v15]);
                MCOPY(v18.data, v14, MEM[v15]);
                MEM[v18.data + MEM[v15]] = 0;
                revert(address(varg3[v8]), v18);
            }
        }
    }
}

function 0x1ed02a91(address varg0, bool varg1) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    if (keccak256(0, msg.sender) - 0x75bb996293a03b08914d10fccd2b7d71d136f9e010266d7ba0cfd657e90dc54d) {
        if (keccak256(0, msg.sender) - 0x749220ddbf9b1c9898040523635fa087de3f10eae7613d0b8d927b3f41b679ca) {
            if (keccak256(0, msg.sender) - 0x437d5c63e50f803d2c8312203ed2c59bb49aa0e986c0141d881e583670efead8) {
                if (keccak256(0, msg.sender) - 0xcbeba01a7733100bdb44ee6d6115a878e11bb6208a3e75d505cbb6ec0976828f) {
                    require(!(keccak256(0, msg.sender) - 0x52184c11e15cec8eaccbeac537240b95067d2105726e629f6c8f56103897017));
                }
            }
        }
    }
    _isModuleAllowed[varg0] = varg1;
}

function 0x1f5c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    MEM[MEM[64]] = 0;
    MEM[32 + MEM[64]] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[96 + MEM[64]] = 0;
    MEM[128 + MEM[64]] = 0;
    MEM[160 + MEM[64]] = uint8(0);
    MEM[192 + MEM[64]] = uint8(0);
    MEM[224 + MEM[64]] = False;
    v0 = new struct(8);
    v0.word0 = varg1;
    v0.word1 = varg1;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 2000;
    v0.word5 = uint8(1);
    v0.word6 = uint8(0);
    v0.word7 = False;
    while (uint8(v0.word6) < 32) {
        v1, v2, v3 = v4 = 0x2ff4(varg0, v0.word0, varg2);
        if (v4) {
            v3 = v5 = !v0.word7;
            if (v0.word7) {
                v3 = v6 = v2 > v0.word2;
            }
        }
        if (!v3) {
            if (uint8(v0.word5) - 1) {
                if (uint8(v0.word5) - 2) {
                    return v0;
                } else {
                    v0.word5 = uint8(3);
                    v0.word4 = 100;
                    v7 = 0x30f5(v0.word4, v0.word1);
                    v0.word0 = v7;
                }
            } else {
                v0.word5 = uint8(2);
                v0.word4 = 500;
                v8 = 0x30f5(v0.word4, v0.word1);
                v0.word0 = v8;
            }
            v0.word6 = uint8(1 + v0.word6);
        } else {
            v0.word7 = True;
            v0.word2 = v2;
            v0.word1 = v0.word0;
            v0.word3 = v1;
            v9 = 0x30f5(v0.word4, v0.word0);
            v0.word0 = v9;
            v0.word6 = uint8(1 + v0.word6);
        }
    }
    return v0;
}

function 0x2206ffe7(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(varg2 <= uint64.max);
    v0 = 0x3775(4 + varg2, 4 + (msg.data.length - 4));
    require(msg.sender == address(this));
    v1 = 0x45ca(32 + MEM[64], v0, varg1, varg0);
    v2 = new uint256[](v1 - MEM[64] - 32);
    MCOPY(v2.data, MEM[64] + 32, v1 - MEM[64] - 32);
    MEM[v2.data + (v1 - MEM[64] - 32)] = 0;
    require(bool((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size));
    v3 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(varg0, varg1, v2).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v4, /* uint256 */ v5 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    revert(SimulationResult(v5));
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    require(data.data + data.length - data.data >= 96);
    require(data.data + data.length - data.data >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data[0] == address(data[0]));
    v0.word0 = data[0];
    require(msg.data[data.data + 32] == address(msg.data[data.data + 32]));
    v0.word1 = msg.data[data.data + 32];
    require(msg.data[data.data + 64] == address(msg.data[data.data + 64]));
    v0.word2 = msg.data[data.data + 64];
    require(msg.sender == address(v0.word0));
    if (amount0Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount0Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v1, /* uint256 */ v2, /* uint256 */ v3 = address(v0.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v4 = v5 = 96;
        } else {
            v4 = v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        v7 = v8 = !v1;
        if (v1) {
            v7 = MEM[v4] != 0;
            if (MEM[v4] != 0) {
                require(v3 + MEM[v4] - v3 >= 32);
                require(MEM[v3] == bool(MEM[v3]));
                v7 = v9 = !MEM[v3];
            }
        }
        require(!v7, TransferFailed());
    }
    if (amount1Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount1Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        v16 = v17 = !v10;
        if (v10) {
            v16 = MEM[v13] != 0;
            if (MEM[v13] != 0) {
                require(v12 + MEM[v13] - v12 >= 32);
                require(MEM[v12] == bool(MEM[v12]));
                v16 = v18 = !MEM[v12];
            }
        }
        require(!v16, TransferFailed());
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    require(data.data + data.length - data.data >= 96);
    require(data.data + data.length - data.data >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data[0] == address(data[0]));
    v0.word0 = data[0];
    require(msg.data[data.data + 32] == address(msg.data[data.data + 32]));
    v0.word1 = msg.data[data.data + 32];
    require(msg.data[data.data + 64] == address(msg.data[data.data + 64]));
    v0.word2 = msg.data[data.data + 64];
    require(msg.sender == address(v0.word0));
    if (amount0Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount0Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v1, /* uint256 */ v2, /* uint256 */ v3 = address(v0.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v4 = v5 = 96;
        } else {
            v4 = v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        v7 = v8 = !v1;
        if (v1) {
            v7 = MEM[v4] != 0;
            if (MEM[v4] != 0) {
                require(v3 + MEM[v4] - v3 >= 32);
                require(MEM[v3] == bool(MEM[v3]));
                v7 = v9 = !MEM[v3];
            }
        }
        require(!v7, TransferFailed());
    }
    if (amount1Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount1Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        v16 = v17 = !v10;
        if (v10) {
            v16 = MEM[v13] != 0;
            if (MEM[v13] != 0) {
                require(v12 + MEM[v13] - v12 >= 32);
                require(MEM[v12] == bool(MEM[v12]));
                v16 = v18 = !MEM[v12];
            }
        }
        require(!v16, TransferFailed());
    }
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    0xc35(data.length, data.data, varg0);
}

function 0x285d(uint256 varg0, address varg1) private { 
    v0, /* uint256 */ v1 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg0, v1, varg0);
    v2, /* uint256 */ v3 = varg1.allowance(address(this), address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v3 < varg0) {
        if (v3 != 0) {
            MEM[36 + MEM[64] + 32] = 0;
            MEM[64] = 36 + MEM[64] + 64;
            MEM[MEM[64] + 32] = uint224(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)) | bytes4(0x95ea7b334ae44009aa867bfb386f5c3b4b443ac6f0ee573fa91c4608fbadfba);
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v4, /* uint256 */ v5, /* uint256 */ v6 = varg1.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v7 = v8 = 96;
            } else {
                v7 = v9 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
            }
            v10 = v11 = !v4;
            if (v4) {
                v10 = MEM[v7] != 0;
                if (MEM[v7] != 0) {
                    require(v6 + MEM[v7] - v6 >= 32);
                    require(MEM[v6] == bool(MEM[v6]));
                    v10 = v12 = !MEM[v6];
                }
            }
            require(!v10, ApproveFailed());
        }
        MEM[36 + MEM[64] + 32] = uint256.max;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)) | bytes4(0x95ea7b334ae44009aa867bfb386f5c3b4b443ac6f0ee573fa91c4608fbadfba);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v13, /* uint256 */ v14, /* uint256 */ v15 = varg1.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v16 = v17 = 96;
        } else {
            v16 = v18 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
        }
        v19 = v20 = !v13;
        if (v13) {
            v19 = MEM[v16] != 0;
            if (MEM[v16] != 0) {
                require(v15 + MEM[v16] - v15 >= 32);
                require(MEM[v15] == bool(MEM[v15]));
                v19 = v21 = !MEM[v15];
            }
        }
        require(!v19, ApproveFailed());
    }
    return ;
}

function isUser(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    return _isUser[varg0];
}

function 0x2bf4(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg2.exttload(keccak256(varg1, varg0)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    return v1;
}

function 0x2cb3(uint256 varg0, address varg1, address varg2) private { 
    if (varg0 <= 0) {
        if (varg0 >= 0) {
            return ;
        } else {
            require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
            if (varg1 - address(0x0)) {
                require(bool(varg2.code.size));
                v0 = varg2.sync(varg1).gas(msg.gas);
                require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                MEM[36 + MEM[64] + 32] = 0 - varg0;
                MEM[64] = 36 + MEM[64] + 64;
                MEM[MEM[64] + 32] = uint224(varg1) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
                MCOPY(MEM[64], MEM[64] + 32, 68);
                MEM[MEM[64] + 68] = 0;
                v1, /* uint256 */ v2, /* uint256 */ v3 = varg1.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v4 = v5 = 96;
                } else {
                    v4 = v6 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
                }
                v7 = v8 = !v1;
                if (v1) {
                    v7 = MEM[v4] != 0;
                    if (MEM[v4] != 0) {
                        require(v3 + MEM[v4] - v3 >= 32);
                        require(MEM[v3] == bool(MEM[v3]));
                        v7 = v9 = !MEM[v3];
                    }
                }
                require(!v7, TransferFailed());
                MEM[64] += 36;
                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | bytes4(0x11da60b400000000000000000000000000000000000000000000000000000000);
                MCOPY(MEM[64], MEM[64] + 32, 4);
                MEM[MEM[64] + 4] = 0;
                v10, /* uint256 */ v11, /* uint256 */ v12 = varg2.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v13 = v14 = 96;
                } else {
                    v13 = v15 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
                }
                if (!v10) {
                    MEM[MEM[64] + 32] = uint224(address(this)) | bytes4(0x3dd45adb00000000000000000000000000000000000000000000000000000000);
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v16, /* uint256 */ v17, /* uint256 */ v18 = varg2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v19 = v20 = 96;
                    } else {
                        v19 = v21 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v21.data, 0, RETURNDATASIZE());
                    }
                    if (!v16) {
                        require(MEM[v19] <= 0, v18, MEM[v19]);
                        require(MEM[v13] <= 0, v12, MEM[v13]);
                        revert(address(this), varg2, address(0x0));
                    }
                }
            } else {
                MEM[64] += 36;
                MEM[MEM[64] + 32] = uint224(MEM[MEM[64] + 32]) | bytes4(0x11da60b400000000000000000000000000000000000000000000000000000000);
                MCOPY(MEM[64], MEM[64] + 32, 4);
                MEM[MEM[64] + 4] = 0;
                v22, /* uint256 */ v23, /* uint256 */ v24 = varg2.call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(0 - varg0).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v25 = v26 = 96;
                } else {
                    v25 = v27 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());
                }
                if (!v22) {
                    MEM[MEM[64] + 32] = uint224(address(this)) | bytes4(0x3dd45adb00000000000000000000000000000000000000000000000000000000);
                    MCOPY(MEM[64], MEM[64] + 32, 36);
                    MEM[MEM[64] + 36] = 0;
                    v28, /* uint256 */ v29, /* uint256 */ v30 = varg2.call(MEM[MEM[64]:MEM[64] + 36], MEM[MEM[64]:MEM[64]]).value(0 - varg0).gas(msg.gas);
                    if (RETURNDATASIZE() == 0) {
                        v31 = v32 = 96;
                    } else {
                        v31 = v33 = new bytes[](RETURNDATASIZE());
                        RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
                    }
                    if (!v28) {
                        require(MEM[v31] <= 0, v30, MEM[v31]);
                        require(MEM[v25] <= 0, v24, MEM[v25]);
                        revert(address(this), varg2, address(0x0));
                    }
                }
            }
            return ;
        }
    } else {
        require(bool(varg2.code.size));
        v34 = varg2.take(varg1, address(this), varg0).gas(msg.gas);
        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return ;
    }
}

function 0x4cdd1d3d(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));
    require(varg2.length <= uint64.max);
    require(varg2.data + (varg2.length << 5) <= 4 + (msg.data.length - 4));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
    require(varg4.length <= uint64.max);
    require(varg4.data + (varg4.length << 5) <= 4 + (msg.data.length - 4));
    require(_isUser[msg.sender], NotUser());
    require(stor_3 - 1, ReentrantCall());
    stor_3 = 1;
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg2.length);
    if (varg2.length) {
        CALLDATACOPY(v0.data, msg.data.length, varg2.length << 5);
    }
    v1 = v2 = 0;
    while (v1 < varg2.length) {
        require(v1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = 0x4ba2(4 + MEM[64], varg4.length, varg4.data, varg3.length, varg3.data, varg2[v1], varg1, varg0);
        require(bool((address(this)).code.size));
        v4 = v5, /* uint256 */ v6 = address(this).call(0x8f8073d800000000000000000000000000000000000000000000000000000000).gas(msg.gas);
        if (v5) {
            v4 = v7 = 1;
        }
        require(!v4);
        if (RETURNDATASIZE() == 0) {
            v8 = v9 = 96;
        } else {
            v8 = v10 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());
        }
        if (MEM[v8] < 36) {
            v11 = v12 = 0;
            v13 = v14 = 0;
        } else if (bytes4(MEM[v6]) - bytes4(0xb1f1f1fc00000000000000000000000000000000000000000000000000000000)) {
            v11 = v15 = 0;
            v13 = v16 = 0;
        } else {
            v13 = v17 = MEM[v8 + 36];
            v11 = v18 = 1;
        }
        if (!v11) {
            v13 = v19 = 0;
        }
        require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0[v1] = v13;
        v1 += 1;
    }
    stor_3 = 0;
    v20 = new uint256[](v0.length);
    v21 = v22 = v20.data;
    v23 = v24 = v0.data;
    v25 = v26 = 0;
    while (v25 < v0.length) {
        MEM[v21] = MEM[v23];
        v21 = v21 + 32;
        v23 = v23 + 32;
        v25 = v25 + 1;
    }
    return v20;
}

function 0x2e25(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v1).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v3 = _SafeMul(v1, varg1);
    v4 = _SafeDiv(v3, 100);
    v5 = address(block.coinbase).call().value(v4).gas(!v4 * 2300);
    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v6 = msg.sender.call().value(this.balance).gas(!this.balance * 2300);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return 0, 0;
}

function 0x2ff4(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x45ca(4 + MEM[64], varg0, varg1, varg2);
    require(bool((address(this)).code.size));
    v1 = v2, /* uint256 */ v3 = address(this).call(0x2206ffe700000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    if (v2) {
        v1 = v4 = 1;
    }
    require(!v1);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    if (MEM[v5] < 36) {
        v8 = v9 = 0;
        v10 = v11 = 0;
    } else if (bytes4(MEM[v3]) - bytes4(0xb1f1f1fc00000000000000000000000000000000000000000000000000000000)) {
        v8 = v12 = 0;
        v10 = v13 = 0;
    } else {
        v10 = v14 = MEM[v5 + 36];
        v8 = v15 = 1;
    }
    v16 = _SafeSub(msg.gas, msg.gas);
    return v16, v10, v8;
}

function 0x30f5(uint256 varg0, uint256 varg1) private { 
    v0 = _SafeMul(varg1, varg0);
    v1 = v2 = _SafeDiv(v0, 10000);
    if (!(v2 - 0)) {
        v1 = v3 = 1;
    }
    v4 = _SafeAdd(varg1, v1);
    return v4;
}

function withdraw(address asset, uint256 amount, address to) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    0xf83(to, amount, asset);
}

function setUser(address _user, bool status) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    if (keccak256(0, msg.sender) - 0x75bb996293a03b08914d10fccd2b7d71d136f9e010266d7ba0cfd657e90dc54d) {
        if (keccak256(0, msg.sender) - 0x749220ddbf9b1c9898040523635fa087de3f10eae7613d0b8d927b3f41b679ca) {
            if (keccak256(0, msg.sender) - 0x437d5c63e50f803d2c8312203ed2c59bb49aa0e986c0141d881e583670efead8) {
                if (keccak256(0, msg.sender) - 0xcbeba01a7733100bdb44ee6d6115a878e11bb6208a3e75d505cbb6ec0976828f) {
                    require(!(keccak256(0, msg.sender) - 0x52184c11e15cec8eaccbeac537240b95067d2105726e629f6c8f56103897017));
                }
            }
        }
    }
    _isUser[_user] = status;
}

function isModuleAllowed(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    return _isModuleAllowed[varg0];
}

function 0x3775(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 64);
    return varg0;
}

function 0x8746bf3c(uint256 varg0, uint256 varg1) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < 4 + (msg.data.length - 4));
    require(varg0.length <= uint64.max);
    require(varg0.data + (varg0.length << 5) <= 4 + (msg.data.length - 4));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < 4 + (msg.data.length - 4));
    require(varg1.length <= uint64.max);
    require(varg1.data + (varg1.length << 5) <= 4 + (msg.data.length - 4));
    require(msg.sender == address(this));
    v0 = v1 = varg0.length == 0;
    if (varg0.length != 0) {
        v0 = varg0.length != varg1.length;
    }
    require(!v0, InvalidRoute());
    v2 = v3 = 0;
    while (1) {
        if (v2 >= varg0.length) {
            v4, /* uint256 */ v5 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(address(this)).gas(msg.gas);
            require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            revert(SimulationResult(v5));
        } else {
            require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require((v2 << 5) + varg0.data + 32 - ((v2 << 5) + varg0.data) >= 32);
            require(varg0[v2] == address(varg0[v2]));
            require(_isModuleAllowed[address(varg0[v2])], ModuleNotAllowed(address(varg0[v2])));
            require(v2 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg1[v2] < msg.data.length - varg1.data - 31);
            require(msg.data[varg1.data + varg1[v2]] <= uint64.max);
            require(varg1.data + varg1[v2] + 32 <= msg.data.length - msg.data[varg1.data + varg1[v2]]);
            CALLDATACOPY(MEM[64], varg1.data + varg1[v2] + 32, msg.data[varg1.data + varg1[v2]]);
            MEM[MEM[64] + msg.data[varg1.data + varg1[v2]]] = 0;
            v6, /* uint256 */ v7, /* uint256 */ v8 = address(varg0[v2]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg1.data + varg1[v22a1_0x0V0x10e2]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v9 = v10 = 96;
            } else {
                v9 = v11 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
            }
            if (v6) {
                v2 += 1;
            } else {
                v12 = new uint256[](MEM[v9]);
                MCOPY(v12.data, v8, MEM[v9]);
                MEM[v12.data + MEM[v9]] = 0;
                revert(address(varg0[v2]), v12);
            }
        }
    }
}

function 0x892f35cb(uint256 varg0, uint256 varg1) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < 4 + (msg.data.length - 4));
    require(varg0.length <= uint64.max);
    require(varg0.data + (varg0.length << 5) <= 4 + (msg.data.length - 4));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < 4 + (msg.data.length - 4));
    require(varg1.length <= uint64.max);
    require(varg1.data + (varg1.length << 5) <= 4 + (msg.data.length - 4));
    require(_isUser[msg.sender], NotUser());
    require(stor_3 - 1, ReentrantCall());
    stor_3 = 1;
    v0 = v1 = varg0.length == 0;
    if (varg0.length != 0) {
        v0 = varg0.length != varg1.length;
    }
    require(!v0, InvalidRoute());
    v2 = v3 = 0;
    while (v2 < varg0.length) {
        require(v2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v2 << 5) + varg0.data + 32 - ((v2 << 5) + varg0.data) >= 32);
        require(varg0[v2] == address(varg0[v2]));
        require(_isModuleAllowed[address(varg0[v2])], ModuleNotAllowed(address(varg0[v2])));
        require(v2 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg1[v2] < msg.data.length - varg1.data - 31);
        require(msg.data[varg1.data + varg1[v2]] <= uint64.max);
        require(varg1.data + varg1[v2] + 32 <= msg.data.length - msg.data[varg1.data + varg1[v2]]);
        CALLDATACOPY(MEM[64], varg1.data + varg1[v2] + 32, msg.data[varg1.data + varg1[v2]]);
        MEM[MEM[64] + msg.data[varg1.data + varg1[v2]]] = 0;
        v4, /* uint256 */ v5, /* uint256 */ v6 = address(varg0[v2]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg1.data + varg1[v22a1_0x0V0x127e]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v7 = v8 = 96;
        } else {
            v7 = v9 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());
        }
        if (v4) {
            v2 += 1;
        } else {
            v10 = new uint256[](MEM[v7]);
            MCOPY(v10.data, v6, MEM[v7]);
            MEM[v10.data + MEM[v7]] = 0;
            revert(address(varg0[v2]), v10);
        }
    }
    stor_3 = 0;
    exit;
}

function owner() public nonPayable { 
    return _owner;
}

function 0x8f8073d8(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 160);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
    require(varg4.length <= uint64.max);
    require(varg4.data + (varg4.length << 5) <= 4 + (msg.data.length - 4));
    require(msg.sender == address(this));
    v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 >= varg2);
    if (v1 > varg2) {
        v2 = _SafeSub(v1, varg2);
        MEM[36 + MEM[64] + 32] = v2;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(_owner) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v3, /* uint256 */ v4, /* uint256 */ v5 = varg0.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v6 = v7 = 96;
        } else {
            v6 = v8 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
        }
        v9 = v10 = !v3;
        if (v3) {
            v9 = MEM[v6] != 0;
            if (MEM[v6] != 0) {
                require(v5 + MEM[v6] - v5 >= 32);
                require(MEM[v5] == bool(MEM[v5]));
                v9 = v11 = !MEM[v5];
            }
        }
        require(!v9, TransferFailed());
    }
    v12, /* uint256 */ v13 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v14 = v15 = varg3.length == 0;
    if (varg3.length != 0) {
        v14 = varg3.length != varg4.length;
    }
    require(!v14, InvalidRoute());
    v16 = v17 = 0;
    while (v16 < varg3.length) {
        require(v16 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v16 << 5) + varg3.data + 32 - ((v16 << 5) + varg3.data) >= 32);
        require(varg3[v16] == address(varg3[v16]));
        require(_isModuleAllowed[address(varg3[v16])], ModuleNotAllowed(address(varg3[v16])));
        require(v16 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg4[v16] < msg.data.length - varg4.data - 31);
        require(msg.data[varg4.data + varg4[v16]] <= uint64.max);
        require(varg4.data + varg4[v16] + 32 <= msg.data.length - msg.data[varg4.data + varg4[v16]]);
        CALLDATACOPY(MEM[64], varg4.data + varg4[v16] + 32, msg.data[varg4.data + varg4[v16]]);
        MEM[MEM[64] + msg.data[varg4.data + varg4[v16]]] = 0;
        v18, /* uint256 */ v19, /* uint256 */ v20 = address(varg3[v16]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg4.data + varg4[v22a1_0x0V0x14b5]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v21 = v22 = 96;
        } else {
            v21 = v23 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v23.data, 0, RETURNDATASIZE());
        }
        if (v18) {
            v16 += 1;
        } else {
            v24 = new uint256[](MEM[v21]);
            MCOPY(v24.data, v20, MEM[v21]);
            MEM[v24.data + MEM[v21]] = 0;
            revert(address(varg3[v16]), v24);
        }
    }
    v25, /* uint256 */ v26 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v26 > v13) {
        v27 = v28 = _SafeSub(v26, v13);
    } else {
        v27 = v29 = 0;
    }
    revert(SimulationResult(v27));
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < 4 + (msg.data.length - 4));
    require(rawData.length <= uint64.max);
    require(rawData.data + rawData.length <= 4 + (msg.data.length - 4));
    require(rawData.data + rawData.length - rawData.data >= 32);
    require(rawData[0] <= uint64.max);
    require(rawData.data + rawData.length - (rawData.data + rawData[0]) >= 384);
    v0 = new struct(12);
    require(!((v0 + 384 > uint64.max) | (v0 + 384 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData[rawData[0]] == address(rawData[rawData[0]]));
    v0.word0 = rawData[rawData[0]];
    require(msg.data[rawData.data + rawData[0] + 32] == address(msg.data[rawData.data + rawData[0] + 32]));
    v0.word1 = msg.data[rawData.data + rawData[0] + 32];
    require(msg.data[rawData.data + rawData[0] + 64] == address(msg.data[rawData.data + rawData[0] + 64]));
    v0.word2 = msg.data[rawData.data + rawData[0] + 64];
    require(msg.data[rawData.data + rawData[0] + 96] == address(msg.data[rawData.data + rawData[0] + 96]));
    v0.word3 = msg.data[rawData.data + rawData[0] + 96];
    require(msg.data[rawData.data + rawData[0] + 128] == uint24(msg.data[rawData.data + rawData[0] + 128]));
    v0.word4 = msg.data[rawData.data + rawData[0] + 128];
    require(msg.data[rawData.data + rawData[0] + 160] == int24(msg.data[rawData.data + rawData[0] + 160]));
    v0.word5 = msg.data[rawData.data + rawData[0] + 160];
    require(msg.data[rawData.data + rawData[0] + 192] == address(msg.data[rawData.data + rawData[0] + 192]));
    v0.word6 = msg.data[rawData.data + rawData[0] + 192];
    require(msg.data[rawData.data + rawData[0] + 224] == bool(msg.data[rawData.data + rawData[0] + 224]));
    v0.word7 = msg.data[rawData.data + rawData[0] + 224];
    require(msg.data[rawData.data + rawData[0] + (uint8.max + 1)] == msg.data[rawData.data + rawData[0] + (uint8.max + 1)]);
    v0.word8 = msg.data[rawData.data + rawData[0] + (uint8.max + 1)];
    require(msg.data[rawData.data + rawData[0] + 288] == address(msg.data[rawData.data + rawData[0] + 288]));
    v0.word9 = msg.data[rawData.data + rawData[0] + 288];
    require(msg.data[rawData.data + rawData[0] + 320] <= uint64.max);
    require(rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320] + 31 < rawData.data + rawData.length);
    require(msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]]);
    require(!((v1 + ((msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + ((msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320] + 32 + msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]] <= rawData.data + rawData.length);
    CALLDATACOPY(v1.data, rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320] + 32, msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]]);
    v1[msg.data[rawData.data + rawData[0] + msg.data[rawData.data + rawData[0] + 320]]] = 0;
    v0.word10 = v1;
    require(msg.data[rawData.data + rawData[0] + 352] == uint8(msg.data[rawData.data + rawData[0] + 352]));
    v0.word11 = msg.data[rawData.data + rawData[0] + 352];
    require(address(v0.word0) == _unlockCallback, msg.sender, _unlockCallback, address(v0.word0));
    v2 = new bytes[](v3.length);
    MCOPY(v2.data, v3.data, v3.length);
    v2[v3.length] = 0;
    v4, /* uint256 */ v5 = address(v0.word0).swap(address(v0.word2), address(v0.word3), uint24(v0.word4), int24(v0.word5), address(v0.word6), bool(v0.word7), v0.word8, address(v0.word9), v2).gas(msg.gas);
    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v6 = 0x2bf4(v0.word2, this, v0.word0);
    v7 = 0x2bf4(v0.word3, this, v0.word0);
    if (v6 < 0) {
        0x2cb3(v6, v0.word2, v0.word0);
    }
    if (v7 < 0) {
        0x2cb3(v7, v0.word3, v0.word0);
    }
    if (v6 > 0) {
        0x2cb3(v6, v0.word2, v0.word0);
    }
    if (v7 > 0) {
        0x2cb3(v7, v0.word3, v0.word0);
    }
    MEM[32 + MEM[64]] = v6;
    MEM[32 + MEM[64] + 32] = v7;
    v8 = new uint256[](64);
    MCOPY(v8.data, MEM[64] + 32, 64);
    MEM[v8.data + 64] = 0;
    return v8;
}

function receive() public payable { 
}

function 0x4575(uint256 varg0, uint256 varg1) private { 
    require(msg.data[varg0] < msg.data.length - varg0 - 31);
    v0 = v1 = msg.data[varg0] + varg0 + 32;
    require(msg.data[msg.data[varg0] + varg0] <= uint64.max);
    require(v1 <= msg.data.length - (msg.data[msg.data[varg0] + varg0] << 5));
    MEM[varg1] = varg1 + 64 - varg1;
    MEM[varg1 + 64] = msg.data[msg.data[varg0] + varg0];
    v2 = v3 = varg1 + 64 + 32;
    v4 = v5 = 0;
    while (v4 < msg.data[msg.data[varg0] + varg0]) {
        require(msg.data[v0] == address(msg.data[v0]));
        MEM[v2] = address(msg.data[v0]);
        v2 = v2 + 32;
        v0 = v0 + 32;
        v4 = v4 + 1;
    }
    require(msg.data[varg0 + 32] < msg.data.length - varg0 - 31);
    v6 = msg.data[msg.data[varg0 + 32] + varg0];
    v7 = v8 = msg.data[varg0 + 32] + varg0 + 32;
    require(v6 <= uint64.max);
    require(v8 <= msg.data.length - (v6 << 5));
    MEM[varg1 + 32] = v2 - varg1;
    MEM[v2] = v6;
    v9 = v10 = v2 + 32;
    v11 = v12 = v10 + (v6 << 5);
    v13 = v14 = 0;
    while (v13 < v6) {
        MEM[v9] = v11 - v10;
        require(msg.data[v7] < msg.data.length - v8 - 31);
        require(msg.data[msg.data[v7] + v8] <= uint64.max);
        require(msg.data[v7] + v8 + 32 <= msg.data.length - msg.data[msg.data[v7] + v8]);
        MEM[v11] = msg.data[msg.data[v7] + v8];
        CALLDATACOPY(v11 + 32, msg.data[v7] + v8 + 32, msg.data[msg.data[v7] + v8]);
        MEM[v11 + 32 + msg.data[msg.data[v7] + v8]] = 0;
        v11 = v11 + 32 + (msg.data[msg.data[v7] + v8] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v7 = v7 + 32;
        v9 = v9 + 32;
        v13 = v13 + 1;
    }
    return v11;
}

function 0x45ca(uint256 varg0, uint256 varg1, uint256 varg2, address varg3) private { 
    MEM[varg0] = varg3;
    MEM[varg0 + 32] = varg2;
    MEM[varg0 + 64] = varg0 + 96 - varg0;
    v0 = 0x4575(varg1, varg0 + 96);
    return v0;
}

function 0xb6e2cc7a(address varg0, address varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < 4 + (msg.data.length - 4));
    require(varg2.length <= uint64.max);
    require(varg2.data + (varg2.length << 5) <= 4 + (msg.data.length - 4));
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
    require(varg3.length <= uint64.max);
    require(varg3.data + (varg3.length << 5) <= 4 + (msg.data.length - 4));
    require(_isUser[msg.sender], NotUser());
    require(stor_3 - 1, ReentrantCall());
    stor_3 = 1;
    v0, /* uint256 */ v1 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v2, /* uint256 */ v3 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v1 - 0);
    v4 = v5 = varg2.length == 0;
    if (varg2.length != 0) {
        v4 = varg2.length != varg3.length;
    }
    require(!v4, InvalidRoute());
    v6 = v7 = 0;
    while (v6 < varg2.length) {
        require(v6 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require((v6 << 5) + varg2.data + 32 - ((v6 << 5) + varg2.data) >= 32);
        require(varg2[v6] == address(varg2[v6]));
        require(_isModuleAllowed[address(varg2[v6])], ModuleNotAllowed(address(varg2[v6])));
        require(v6 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg3[v6] < msg.data.length - varg3.data - 31);
        require(msg.data[varg3.data + varg3[v6]] <= uint64.max);
        require(varg3.data + varg3[v6] + 32 <= msg.data.length - msg.data[varg3.data + varg3[v6]]);
        CALLDATACOPY(MEM[64], varg3.data + varg3[v6] + 32, msg.data[varg3.data + varg3[v6]]);
        MEM[MEM[64] + msg.data[varg3.data + varg3[v6]]] = 0;
        v8, /* uint256 */ v9, /* uint256 */ v10 = address(varg2[v6]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg3.data + varg3[v22a1_0x0V0x1a79]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v11 = v12 = 96;
        } else {
            v11 = v13 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
        }
        if (v8) {
            v6 += 1;
        } else {
            v14 = new uint256[](MEM[v11]);
            MCOPY(v14.data, v10, MEM[v11]);
            MEM[v14.data + MEM[v11]] = 0;
            revert(address(varg2[v6]), v14);
        }
    }
    v15, /* uint256 */ v16 = varg0.balanceOf(address(this)).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v17, /* uint256 */ v18 = varg1.balanceOf(address(this)).gas(msg.gas);
    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v1 > v16) {
        v19 = v20 = _SafeSub(v1, v16);
    } else {
        v19 = v21 = 0;
    }
    if (v18 > v3) {
        v22 = v23 = _SafeSub(v18, v3);
    } else {
        v22 = v24 = 0;
    }
    v25 = _SafeSub(msg.gas, msg.gas);
    if (msg.sender != address(this)) {
        MEM[36 + MEM[64] + 32] = v18;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v26, /* uint256 */ v27, /* uint256 */ v28 = varg1.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v29 = v30 = 96;
        } else {
            v29 = v31 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v31.data, 0, RETURNDATASIZE());
        }
        v32 = v33 = !v26;
        if (v26) {
            v32 = MEM[v29] != 0;
            if (MEM[v29] != 0) {
                require(v28 + MEM[v29] - v28 >= 32);
                require(MEM[v28] == bool(MEM[v28]));
                v32 = v34 = !MEM[v28];
            }
        }
        require(!v32, TransferFailed());
    }
    stor_3 = 0;
    return v19, v22, v25;
}

function 0x4a1a(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 96);
    require(msg.data[varg0] == address(msg.data[varg0]));
    require(msg.data[varg0 + 32] == msg.data[varg0 + 32]);
    require(msg.data[varg0 + 64] <= uint64.max);
    v0 = varg0 + msg.data[varg0 + 64];
    require(varg1 - v0 >= 64);
    v1 = new struct(2);
    require(!((v1 + 64 > uint64.max) | (v1 + 64 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[v0] <= uint64.max);
    require(v0 + msg.data[v0] + 31 < varg1);
    v2 = v3 = v0 + msg.data[v0] + 32;
    require(msg.data[v0 + msg.data[v0]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new uint256[](msg.data[v0 + msg.data[v0]]);
    require(!((v4 + ((msg.data[v0 + msg.data[v0]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v4 + ((msg.data[v0 + msg.data[v0]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v4)), Panic(65)); // failed memory allocation (too much memory)
    v5 = v6 = v4.data;
    require(v3 + (msg.data[v0 + msg.data[v0]] << 5) <= varg1);
    while (v2 < v3 + (msg.data[v0 + msg.data[v0]] << 5)) {
        require(msg.data[v2] == address(msg.data[v2]));
        MEM[v5] = msg.data[v2];
        v5 = v5 + 32;
        v2 = v2 + 32;
    }
    v1.word0 = v4;
    require(msg.data[v0 + 32] <= uint64.max);
    require(v0 + msg.data[v0 + 32] + 31 < varg1);
    v7 = v8 = v0 + msg.data[v0 + 32] + 32;
    require(msg.data[v0 + msg.data[v0 + 32]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new uint256[](msg.data[v0 + msg.data[v0 + 32]]);
    require(!((v9 + ((msg.data[v0 + msg.data[v0 + 32]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + ((msg.data[v0 + msg.data[v0 + 32]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    v10 = v11 = v9.data;
    require(v8 + (msg.data[v0 + msg.data[v0 + 32]] << 5) <= varg1);
    while (v7 < v8 + (msg.data[v0 + msg.data[v0 + 32]] << 5)) {
        require(msg.data[v7] <= uint64.max);
        require(v8 + msg.data[v7] + 31 < varg1);
        require(msg.data[v8 + msg.data[v7]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new bytes[](msg.data[v8 + msg.data[v7]]);
        require(!((v12 + ((msg.data[v8 + msg.data[v7]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + ((msg.data[v8 + msg.data[v7]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        require(v8 + msg.data[v7] + 32 + msg.data[v8 + msg.data[v7]] <= varg1);
        CALLDATACOPY(v12.data, v8 + msg.data[v7] + 32, msg.data[v8 + msg.data[v7]]);
        v12[msg.data[v8 + msg.data[v7]]] = 0;
        MEM[v10] = v12;
        v10 = v10 + 32;
        v7 = v7 + 32;
    }
    v1.word1 = v9;
    return v1, msg.data[varg0 + 32], msg.data[varg0];
}

function 0x4ba2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, address varg6, address varg7) private { 
    MEM[varg0] = varg7;
    MEM[varg0 + 32] = varg6;
    MEM[varg0 + 64] = varg5;
    MEM[varg0 + 96] = varg0 + 160 - varg0;
    MEM[varg0 + 160] = varg3;
    v0 = v1 = varg0 + 160 + 32;
    v2 = v3 = 0;
    while (v2 < varg3) {
        require(msg.data[varg4] == address(msg.data[varg4]));
        MEM[v0] = address(msg.data[varg4]);
        v0 = v0 + 32;
        varg4 = varg4 + 32;
        v2 = v2 + 1;
    }
    MEM[varg0 + 128] = v0 - varg0;
    MEM[v0] = varg1;
    v4 = v5 = v0 + 32;
    v6 = v7 = v5 + (varg1 << 5);
    v8 = v9 = 0;
    while (v8 < varg1) {
        MEM[v4] = v6 - v5;
        require(msg.data[varg2] < msg.data.length - varg2 - 31);
        v10 = msg.data[msg.data[varg2] + varg2];
        require(v10 <= uint64.max);
        require(msg.data[varg2] + varg2 + 32 <= msg.data.length - v10);
        MEM[v6] = v10;
        CALLDATACOPY(v6 + 32, msg.data[varg2] + varg2 + 32, v10);
        MEM[v6 + 32 + v10] = 0;
        v6 = v6 + 32 + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        varg2 = varg2 + 32;
        v4 = v4 + 32;
        v8 = v8 + 1;
    }
    return v6;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function morpho() public nonPayable { 
    return address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb);
}

function 0xe0ba8fd5(address varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 192);
    require(varg3 <= uint64.max);
    v0 = 0x3775(4 + varg3, 4 + (msg.data.length - 4));
    require(varg4 <= uint64.max);
    require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
    require(varg4.length <= uint64.max);
    require(varg4.data + (varg4.length << 5) <= 4 + (msg.data.length - 4));
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < 4 + (msg.data.length - 4));
    require(varg5.length <= uint64.max);
    require(varg5.data + (varg5.length << 5) <= 4 + (msg.data.length - 4));
    require(_isUser[msg.sender], NotUser());
    require(stor_3 - 1, ReentrantCall());
    stor_3 = 1;
    v1 = 0x45ca(32 + MEM[64], v0, varg1, varg0);
    v2 = new uint256[](v1 - MEM[64] - 32);
    MCOPY(v2.data, MEM[64] + 32, v1 - MEM[64] - 32);
    MEM[v2.data + (v1 - MEM[64] - 32)] = 0;
    require(bool((address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb)).code.size));
    v3 = address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb).flashLoan(varg0, varg1, v2).gas(msg.gas);
    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (varg4.length > 0) {
        v4 = v5 = varg4.length == 0;
        if (varg4.length != 0) {
            v4 = varg4.length != varg5.length;
        }
        require(!v4, InvalidRoute());
        v6 = v7 = 0;
        while (v6 < varg4.length) {
            require(v6 < varg4.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require((v6 << 5) + varg4.data + 32 - ((v6 << 5) + varg4.data) >= 32);
            require(varg4[v6] == address(varg4[v6]));
            require(_isModuleAllowed[address(varg4[v6])], ModuleNotAllowed(address(varg4[v6])));
            require(v6 < varg5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(varg5[v6] < msg.data.length - varg5.data - 31);
            require(msg.data[varg5.data + varg5[v6]] <= uint64.max);
            require(varg5.data + varg5[v6] + 32 <= msg.data.length - msg.data[varg5.data + varg5[v6]]);
            CALLDATACOPY(MEM[64], varg5.data + varg5[v6] + 32, msg.data[varg5.data + varg5[v6]]);
            MEM[MEM[64] + msg.data[varg5.data + varg5[v6]]] = 0;
            v8, /* uint256 */ v9, /* uint256 */ v10 = address(varg4[v6]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[varg5.data + varg5[v22a1_0x0V0x1ddf]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v11 = v12 = 96;
            } else {
                v11 = v13 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());
            }
            if (v8) {
                v6 += 1;
            } else {
                v14 = new uint256[](MEM[v11]);
                MCOPY(v14.data, v10, MEM[v11]);
                MEM[v14.data + MEM[v11]] = 0;
                revert(address(varg4[v6]), v14);
            }
        }
    }
    v15, v16 = 0x2e25(msg.gas, varg2);
    stor_3 = 0;
    return v16, v15;
}

function 0x5082(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, address varg7) private { 
    MEM[varg0] = varg7;
    MEM[varg0 + 32] = varg6;
    MEM[varg0 + 64] = varg0 + 160 - varg0;
    v0 = 0x4575(varg5, varg0 + 160);
    MEM[varg0 + 96] = v0 - varg0;
    MEM[v0] = varg3;
    v1 = v2 = v0 + 32;
    v3 = v4 = 0;
    while (v3 < varg3) {
        require(msg.data[varg4] == address(msg.data[varg4]));
        MEM[v1] = address(msg.data[varg4]);
        v1 = v1 + 32;
        varg4 = varg4 + 32;
        v3 = v3 + 1;
    }
    MEM[varg0 + 128] = v1 - varg0;
    MEM[v1] = varg1;
    v5 = v6 = v1 + 32;
    v7 = v8 = v6 + (varg1 << 5);
    v9 = v10 = 0;
    while (v9 < varg1) {
        MEM[v5] = v7 - v6;
        require(msg.data[varg2] < msg.data.length - varg2 - 31);
        v11 = msg.data[msg.data[varg2] + varg2];
        require(v11 <= uint64.max);
        require(msg.data[varg2] + varg2 + 32 <= msg.data.length - v11);
        MEM[v7] = v11;
        CALLDATACOPY(v7 + 32, msg.data[varg2] + varg2 + 32, v11);
        MEM[v7 + 32 + v11] = 0;
        v7 = v7 + 32 + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        varg2 = varg2 + 32;
        v5 = v5 + 32;
        v9 = v9 + 1;
    }
    return v7;
}

function wrappedNative() public nonPayable { 
    return address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!varg0 | (varg1 == varg0 * varg1 / varg0), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function transferOwnership(address newOwner) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    if (keccak256(0, msg.sender) - 0x75bb996293a03b08914d10fccd2b7d71d136f9e010266d7ba0cfd657e90dc54d) {
        if (keccak256(0, msg.sender) - 0x749220ddbf9b1c9898040523635fa087de3f10eae7613d0b8d927b3f41b679ca) {
            if (keccak256(0, msg.sender) - 0x437d5c63e50f803d2c8312203ed2c59bb49aa0e986c0141d881e583670efead8) {
                if (keccak256(0, msg.sender) - 0xcbeba01a7733100bdb44ee6d6115a878e11bb6208a3e75d505cbb6ec0976828f) {
                    require(!(keccak256(0, msg.sender) - 0x52184c11e15cec8eaccbeac537240b95067d2105726e629f6c8f56103897017));
                }
            }
        }
    }
    _owner = newOwner;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0xf8ad62c2(address varg0) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 32);
    require(msg.sender == address(this), msg.sender, address(this), varg0);
    _unlockCallback = varg0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < 4 + (msg.data.length - 4));
    require(data.length <= uint64.max);
    require(data.data + data.length <= 4 + (msg.data.length - 4));
    require(data.data + data.length - data.data >= 96);
    require(data.data + data.length - data.data >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data[0] == address(data[0]));
    v0.word0 = data[0];
    require(msg.data[data.data + 32] == address(msg.data[data.data + 32]));
    v0.word1 = msg.data[data.data + 32];
    require(msg.data[data.data + 64] == address(msg.data[data.data + 64]));
    v0.word2 = msg.data[data.data + 64];
    require(msg.sender == address(v0.word0));
    if (amount0Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount0Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v1, /* uint256 */ v2, /* uint256 */ v3 = address(v0.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v4 = v5 = 96;
        } else {
            v4 = v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        v7 = v8 = !v1;
        if (v1) {
            v7 = MEM[v4] != 0;
            if (MEM[v4] != 0) {
                require(v3 + MEM[v4] - v3 >= 32);
                require(MEM[v3] == bool(MEM[v3]));
                v7 = v9 = !MEM[v3];
            }
        }
        require(!v7, TransferFailed());
    }
    if (amount1Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount1Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        v16 = v17 = !v10;
        if (v10) {
            v16 = MEM[v13] != 0;
            if (MEM[v13] != 0) {
                require(v12 + MEM[v13] - v12 >= 32);
                require(MEM[v12] == bool(MEM[v12]));
                v16 = v18 = !MEM[v12];
            }
        }
        require(!v16, TransferFailed());
    }
}

function swapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(4 + (msg.data.length - 4) - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < 4 + (msg.data.length - 4));
    require(_data.length <= uint64.max);
    require(_data.data + _data.length <= 4 + (msg.data.length - 4));
    require(_data.data + _data.length - _data.data >= 96);
    require(_data.data + _data.length - _data.data >= 96);
    v0 = new struct(3);
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(_data[0] == address(_data[0]));
    v0.word0 = _data[0];
    require(msg.data[_data.data + 32] == address(msg.data[_data.data + 32]));
    v0.word1 = msg.data[_data.data + 32];
    require(msg.data[_data.data + 64] == address(msg.data[_data.data + 64]));
    v0.word2 = msg.data[_data.data + 64];
    require(msg.sender == address(v0.word0));
    if (amount0Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount0Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v1, /* uint256 */ v2, /* uint256 */ v3 = address(v0.word1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v4 = v5 = 96;
        } else {
            v4 = v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        v7 = v8 = !v1;
        if (v1) {
            v7 = MEM[v4] != 0;
            if (MEM[v4] != 0) {
                require(v3 + MEM[v4] - v3 >= 32);
                require(MEM[v3] == bool(MEM[v3]));
                v7 = v9 = !MEM[v3];
            }
        }
        require(!v7, TransferFailed());
    }
    if (amount1Delta > 0) {
        MEM[36 + MEM[64] + 32] = amount1Delta;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(msg.sender) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(v0.word2).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        v16 = v17 = !v10;
        if (v10) {
            v16 = MEM[v13] != 0;
            if (MEM[v13] != 0) {
                require(v12 + MEM[v13] - v12 >= 32);
                require(MEM[v12] == bool(MEM[v12]));
                v16 = v18 = !MEM[v12];
            }
        }
        require(!v16, TransferFailed());
    }
}

function 0xc35(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, v1, v2 = 0x4a1a(varg1, varg1 + varg0);
    require(msg.sender == address(0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb));
    v3 = v4 = MEM[v0.word0] == 0;
    if (MEM[v0.word0] != 0) {
        v3 = MEM[v0.word0] != MEM[v0.word1];
    }
    require(!v3, InvalidRoute());
    v5 = v6 = 0;
    while (v5 < MEM[v0.word0]) {
        require(v5 < MEM[v0.word0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(_isModuleAllowed[address(MEM[32 + (v5 << 5) + v0.word0])], ModuleNotAllowed(address(MEM[32 + (v5 << 5) + v0.word0])));
        require(v5 < MEM[v0.word1], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MCOPY(MEM[64], MEM[32 + (v5 << 5) + v0.word1] + 32, MEM[MEM[32 + (v5 << 5) + v0.word1]]);
        MEM[MEM[64] + MEM[MEM[32 + (v5 << 5) + v0.word1]]] = 0;
        v7, /* uint256 */ v8, /* uint256 */ v9 = address(MEM[32 + (v5 << 5) + v0.word0]).delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + MEM[MEM[32 + v26d1_0x0V0xcd2 << 5 + vc46_0x0.word1]] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v10 = v11 = 96;
        } else {
            v10 = v12 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
        }
        if (v7) {
            v5 += 1;
        } else {
            v13 = new uint256[](MEM[v10]);
            MCOPY(v13.data, v9, MEM[v10]);
            MEM[v13.data + MEM[v10]] = 0;
            revert(address(MEM[32 + (v5 << 5) + v0.word0]), v13);
        }
    }
    0x285d(v1, v2);
    return ;
}

function 0xf83(address varg0, uint256 varg1, address varg2) private { 
    if (keccak256(0, msg.sender) - 0x75bb996293a03b08914d10fccd2b7d71d136f9e010266d7ba0cfd657e90dc54d) {
        if (keccak256(0, msg.sender) - 0x749220ddbf9b1c9898040523635fa087de3f10eae7613d0b8d927b3f41b679ca) {
            if (keccak256(0, msg.sender) - 0x437d5c63e50f803d2c8312203ed2c59bb49aa0e986c0141d881e583670efead8) {
                if (keccak256(0, msg.sender) - 0xcbeba01a7733100bdb44ee6d6115a878e11bb6208a3e75d505cbb6ec0976828f) {
                    require(!(keccak256(0, msg.sender) - 0x52184c11e15cec8eaccbeac537240b95067d2105726e629f6c8f56103897017));
                }
            }
        }
    }
    if (varg2 - address(0x0)) {
        MEM[36 + MEM[64] + 32] = varg1;
        MEM[64] = 36 + MEM[64] + 64;
        MEM[MEM[64] + 32] = uint224(varg0) | bytes4(0xa9059cbb2ab09eb219583f4a59a5d0623ade346d962bcd4e46b11da047c9049b);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v0, /* uint256 */ v1, /* uint256 */ v2 = varg2.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v3 = v4 = 96;
        } else {
            v3 = v5 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());
        }
        v6 = v7 = !v0;
        if (v0) {
            v6 = MEM[v3] != 0;
            if (MEM[v3] != 0) {
                require(v2 + MEM[v3] - v2 >= 32);
                require(MEM[v2] == bool(MEM[v2]));
                v6 = v8 = !MEM[v2];
            }
        }
        require(!v6, TransferFailed());
        return ;
    } else {
        v9, /* uint256 */ v10 = varg0.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v11 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
        }
        require(v9, EthTransferFailed());
        return ;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else if (0x8746bf3c > function_selector >> 224) {
        if (0x31f57072 > function_selector >> 224) {
            if (0x3ef1685 == function_selector >> 224) {
                0x03ef1685();
            } else if (0x1cd56b4f == function_selector >> 224) {
                0x1cd56b4f();
            } else if (0x1ed02a91 == function_selector >> 224) {
                0x1ed02a91();
            } else if (0x2206ffe7 == function_selector >> 224) {
                0x2206ffe7();
            } else if (0x23a69e75 == function_selector >> 224) {
                pancakeV3SwapCallback(int256,int256,bytes);
            } else {
                require(0x2c8958f6 == function_selector >> 224);
                algebraSwapCallback(int256,int256,bytes);
            }
        } else if (0x31f57072 == function_selector >> 224) {
            onMorphoFlashLoan(uint256,bytes);
        } else if (0x4209fff1 == function_selector >> 224) {
            isUser(address);
        } else if (0x4cdd1d3d == function_selector >> 224) {
            0x4cdd1d3d();
        } else if (0x69328dec == function_selector >> 224) {
            withdraw(address,uint256,address);
        } else if (0x7a57a984 == function_selector >> 224) {
            setUser(address,bool);
        } else {
            require(0x85f74ef9 == function_selector >> 224);
            isModuleAllowed(address);
        }
    } else if (0xd8fbc833 > function_selector >> 224) {
        if (0x8746bf3c == function_selector >> 224) {
            0x8746bf3c();
        } else if (0x892f35cb == function_selector >> 224) {
            0x892f35cb();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x8f8073d8 == function_selector >> 224) {
            0x8f8073d8();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else {
            require(0xb6e2cc7a == function_selector >> 224);
            0xb6e2cc7a();
        }
    } else if (0xf2fde38b > function_selector >> 224) {
        if (0xd8fbc833 == function_selector >> 224) {
            morpho();
        } else if (0xe0ba8fd5 == function_selector >> 224) {
            0xe0ba8fd5();
        } else {
            require(0xeb6d3a11 == function_selector >> 224);
            wrappedNative();
        }
    } else if (0xf2fde38b == function_selector >> 224) {
        transferOwnership(address);
    } else if (0xf8ad62c2 == function_selector >> 224) {
        0xf8ad62c2();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else {
        require(0xfa483e72 == function_selector >> 224);
        swapCallback(int256,int256,bytes);
    }
}
