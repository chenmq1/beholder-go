// Decompiled by library.dedaub.com
// 2025.12.14 20:49 UTC
// Compiled using the solidity compiler version 0.8.27


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => uint64) _receiveFlashLoan; // STORAGE[0x0]



function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= uint8.max + 1);
    v1 = new struct(2);
    require(!((v1 + 64 > uint64.max) | (v1 + 64 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 160);
    v2 = new struct(5);
    require(!((v2 + 160 > uint64.max) | (v2 + 160 < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(!(rawData.word1 - address(rawData.word1)));
    v2.word0 = rawData.word1;
    require(!(rawData.word2 - address(rawData.word2)));
    v2.word1 = rawData.word2;
    require(!(rawData.word3 - uint24(rawData.word3)));
    v2.word2 = rawData.word3;
    require(!(rawData.word4 - int24(rawData.word4)));
    v2.word3 = rawData.word4;
    require(!(rawData.word5 - address(rawData.word5)));
    v2.word4 = rawData.word5;
    v1.word0 = v2;
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) - 160 >= 96);
    v3 = new struct(3);
    require(!((v3 + 96 > uint64.max) | (v3 + 96 < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(!(rawData.word6 - bool(rawData.word6)));
    v3.word0 = rawData.word6;
    v3.word1 = rawData.word7;
    require(!(rawData.word8 - address(rawData.word8)));
    v3.word2 = rawData.word8;
    v1.word1 = v3;
    v4 = v5 = 32;
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + v5, msg.data.length, 0);
    v6 = new uint256[](v7);
    MCOPY(v6.data, MEM[64] + 32, v7);
    MEM[v6.data] = 0;
    v8, /* uint256 */ v9 = 0x4444c5dc75cb358380d2e3de08a90.swap(address(MEM[v1.word0]), address(MEM[v1.word0 + 32]), uint24(MEM[v1.word0 + 64]), int24(MEM[v1.word0 + 96]), address(MEM[v1.word0 + 128]), bool(v3.word0), v3.word1, address(v3.word2), v6).gas(msg.gas);
    if (!v8) {
        v10 = RETURNDATASIZE();
        revert(v11, v11, v11, v11, v11, v11, v11, v11, v11, v7, 0);
    } else {
        if (v8) {
            if (v5 > RETURNDATASIZE()) {
                v4 = v12 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= v5);
        }
        v13 = 0x2544(this, address(MEM[v1.word0]));
        v14 = 0x2544(this, address(MEM[v1.word0 + v5]));
        if (v13 < 0) {
            v15 = 0x1d20(v13);
            0x25eb(address(MEM[v1.word0]), this, v15);
        }
        if (v14 < 0) {
            v16 = 0x1d20(v14);
            0x25eb(address(MEM[v1.word0 + v5]), this, v16);
        }
        if (v13 > 0) {
            0x2859(address(MEM[v1.word0]), this, v13);
        }
        if (v14 > 0) {
            0x2859(address(MEM[v1.word0 + v5]), this, v14);
        }
        v17 = new struct(2);
        v18 = v17.data;
        v17.word1 = v9;
        v17.word0 = v5;
        require(!((v17 + 64 > uint64.max) | (v17 + 64 < v17)), Panic(65)); // failed memory allocation (too much memory)
        v19 = new bytes[](v17.word0.length);
        MCOPY(v19.data, v17.data, v17.word0.length);
        v19[32][v17.word0.length] = 0;
        return v19;
    }
}

function 0x6ae90bab(uint256 varg0, address varg1, address varg2, uint256 varg3, address varg4, bool varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0, v1 = 0x2510(varg0);
    require(v1 < 25, Panic(33)); // failed convertion to enum type
    v2 = 0x2a4d(_receiveFlashLoan[v1], v0, varg1, varg2, varg3, varg4, varg5);
    return v2;
}

function 0x451c988e(uint256 varg0, address varg1, address varg2, uint256 varg3, address varg4, bool varg5) public nonPayable { 
    require(msg.data.length - 4 >= 192);
    v0, v1 = 0x2510(varg0);
    require(v1 < 25, Panic(33)); // failed convertion to enum type
    v2 = 0x2a4d(_receiveFlashLoan[v1], v0, varg1, varg2, varg3, varg4, varg5);
    v3 = _SafeSub(msg.gas, msg.gas);
    return v2, v3;
}

function 0x41c9bbd8(address[] varg0, uint256 varg1, bytes varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(!(msg.data[v3] - address(msg.data[v3])));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 += 32;
    }
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](varg1.length);
    require(!((v5 + (32 + (varg1.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (varg1.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    v8 = v9 = varg1.data;
    while (v8 < 4 + varg1 + (varg1.length << 5) + 32) {
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 += 32;
    }
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](varg2.length);
    require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.data + varg2.length <= msg.data.length);
    CALLDATACOPY(v10.data, varg2.data, varg2.length);
    v10[varg2.length] = 0;
    require(0xba12222222228d8ba445958a75a0704d566bf2c8.code.size);
    v11 = new address[](v0.length);
    v12 = v13 = v11.data;
    v14 = v15 = v0.data;
    v16 = v17 = 0;
    while (v16 < v0.length) {
        MEM[v12] = address(MEM[v14]);
        v12 += 32;
        v14 = v14 + 32;
        v16 += 1;
    }
    MEM[v12] = v5.length;
    v18 = v19 = v12 + 32;
    v20 = v21 = v5.data;
    v22 = v23 = 0;
    while (v22 < v5.length) {
        MEM[v18] = MEM[v20];
        v18 += 32;
        v20 = v20 + 32;
        v22 += 1;
    }
    MEM[v18] = v10.length;
    MCOPY(v18 + 32, v10.data, v10.length);
    MEM[v18 + v10.length + 32] = 0;
    v24, /* uint256 */ v25 = 0xba12222222228d8ba445958a75a0704d566bf2c8.flashLoan(this, v11, v12 - MEM[64] - 4, v18 - MEM[64] - 4).gas(msg.gas);
    require(v24, v25, RETURNDATASIZE());
    if (v24) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        exit;
    } else {
        return ;
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    0x20df(amount0Delta, amount1Delta);
}

function receive() public payable { 
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x1d20(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x1d4c(uint256 varg0, address varg1, address varg2, uint256 varg3, address varg4) private { 
    v0 = varg1 < varg2;
    if (0 == v0) {
        v1 = v2 = 0;
        v3 = v4 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    } else {
        v1 = v5 = 0;
        v3 = v6 = 0x1000276a4;
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v7 = new uint256[](0);
    MCOPY(v7.data, MEM[64] + 32, 0);
    MEM[v7.data] = 0;
    v8, v9, v10 = (varg0 >> 96).swap(varg4, v0, varg3, address(v3), v7).value(v1).gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v9 = v11 = 0;
    v10 = v12 = 0;
    if (v8) {
        v13 = v14 = 64;
        if (64 > RETURNDATASIZE()) {
            v13 = v15 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v13 - MEM[64] >= 64);
    }
    if (varg1 >= varg2) {
        v16 = 0x1d20(v9);
        return v16;
    } else {
        v17 = 0x1d20(v10);
        return v17;
    }
}

function 0x1e9e(uint256 varg0, address varg1, address varg2, uint256 varg3, address varg4, uint256 varg5) private { 
    v0 = varg0 >> 96;
    v1, /* uint112 */ v2, /* uint112 */ v2, /* uint32 */ v3 = v0.getReserves().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v2 = v4 = 0;
    v2 = v5 = 0;
    if (v1) {
        v6 = v7 = 96;
        if (96 > RETURNDATASIZE()) {
            v6 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v6 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v2 - uint112(v2)));
        require(!(v3 - uint32(v3)));
    }
    if (varg1 < varg2) {
    }
    require(!varg3 | (997 == varg3 * 997 / varg3), Panic(17)); // arithmetic overflow or underflow
    v8 = _SafeMul(varg3 * 997, uint112(v2));
    require(!uint112(v2) | (1000 == uint112(v2) * 1000 / uint112(v2)), Panic(17)); // arithmetic overflow or underflow
    v9 = _SafeAdd(uint112(v2) * 1000, varg3 * 997);
    v10 = _SafeDiv(v8, v9);
    if (!varg5) {
        0x2446(varg1, v0, varg3);
    }
    if (0 == varg1 < varg2) {
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v0.code.size);
        v11 = new uint256[](0);
        MCOPY(v11.data, MEM[64] + 32, 0);
        MEM[v11.data] = 0;
        v12, /* uint256 */ v13 = v0.swap(v10, 0, varg4, v11).gas(msg.gas);
        require(v12, v13, RETURNDATASIZE());
        if (v12) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            return v10;
        } else {
            return v10;
        }
    } else {
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        require(v0.code.size);
        v14 = new uint256[](0);
        MCOPY(v14.data, MEM[64] + 32, 0);
        MEM[v14.data] = 0;
        v15, /* uint256 */ v16 = v0.swap(0, v10, varg4, v14).gas(msg.gas);
        require(v15, v16, RETURNDATASIZE());
        if (v15) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
            return v10;
        } else {
            return v10;
        }
    }
}

function 0x20df(uint256 varg0, uint256 varg1) private { 
    if (varg0 > 0) {
        v0, /* address */ v1 = msg.sender.token0().gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        v1 = v2 = 0;
        if (v0) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v3 - MEM[64] >= 32);
            require(!0xdfe168100000000000000000000000000000000000000000000000000000000);
        }
        0x2446(address(v1), msg.sender, varg0);
    }
    if (varg1 > 0) {
        v6, /* address */ v7 = msg.sender.token1().gas(msg.gas);
        require(v6, MEM[64], RETURNDATASIZE());
        v7 = v8 = 0;
        if (v6) {
            v9 = v10 = 32;
            if (32 > RETURNDATASIZE()) {
                v9 = v11 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v9 - MEM[64] >= 32);
            require(!0xd21220a700000000000000000000000000000000000000000000000000000000);
        }
        0x2446(address(v7), msg.sender, varg1);
        return ;
    } else {
        return ;
    }
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x22ed(uint256 varg0, uint256 varg1) private { 
    v0, v1 = address(varg0).allowance(this, address(varg1)).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    require(v1 <= v1 - 1, Panic(17)); // arithmetic overflow or underflow
    v6 = 0x28f2(varg0, varg1, v1 - 1);
    if (!v6) {
        v7 = 0x2966(varg0, varg1);
        require(v7, SafeERC20FailedOperation(address(varg0)));
        v8 = 0x29eb(varg0, varg1, v1 - 1);
        require(v8, SafeERC20FailedOperation(address(varg0)));
    }
    return ;
}

function 0x2446(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!(v1 & (MEM[0] == 1))) {
        require(!(!v1 & 0x1), MEM[64], RETURNDATASIZE());
        v0 = v2 = !RETURNDATASIZE() & bool(varg0.code.size) & v1;
    }
    require(v0, SafeERC20FailedOperation(address(varg0)));
    return ;
}

function 0x2510(uint256 varg0) private { 
    require((byte(varg0, 0x1d)) < 25, Panic(33)); // failed convertion to enum type
    return 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00ffff & varg0, byte(varg0, 0x1d);
}

function 0x2544(address varg0, address varg1) private { 
    v0, /* uint256 */ v1 = 0x4444c5dc75cb358380d2e3de08a90.exttload(keccak256(varg0, varg1)).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v3 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
        return v1;
    } else {
        return 0;
    }
}

function 0x25eb(address varg0, address varg1, uint256 varg2) private { 
    v0 = varg0;
    if (v0) {
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v1 = v2 = 0;
        v3, /* uint256 */ v4 = 0x4444c5dc75cb358380d2e3de08a90.sync(v0).value(v2).gas(msg.gas);
        require(v3, v4, RETURNDATASIZE());
        if (v3) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v1 = v5 = 0;
        }
        if (varg1 == this) {
            0x2446(v0, 0x4444c5dc75cb358380d2e3de08a90, varg2);
        } else {
            v6 = v7 = v0.transferFrom(varg1, 0x4444c5dc75cb358380d2e3de08a90, varg2).value(v1).gas(msg.gas);
            if (!(v7 & (MEM[v1] == 1))) {
                require(!(!v7 & 0x1), MEM[64], RETURNDATASIZE());
                v6 = v8 = !RETURNDATASIZE() & bool(v0.code.size) & v7;
            }
            MEM[96] = v1;
            require(v6, SafeERC20FailedOperation(v0));
        }
        v9 = v10 = MEM[64];
        v11 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v1).gas(msg.gas);
        require(v11, MEM[64], RETURNDATASIZE());
        if (!v11) {
            return ;
        }
    } else {
        v9 = v12 = MEM[64];
        v13 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(varg2).gas(msg.gas);
        require(v13, MEM[64], RETURNDATASIZE());
        if (!v13) {
            return ;
        }
    }
    v14 = v15 = 32;
    if (32 > RETURNDATASIZE()) {
        v14 = v16 = RETURNDATASIZE();
    }
    require(!((v9 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v9 + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    require(v9 + v14 - v9 >= 32);
    return ;
}

function 0x2859(address varg0, address varg1, uint256 varg2) private { 
    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
    v0, /* uint256 */ v1 = 0x4444c5dc75cb358380d2e3de08a90.take(varg0, varg1, varg2).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        return ;
    } else {
        return ;
    }
}

function 0x28f2(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (!(v1 & (MEM[0] == 1))) {
        v0 = v2 = v1 & (bool(varg0.code.size) & !RETURNDATASIZE());
    }
    return v0;
}

function 0x2966(uint256 varg0, address varg1) private { 
    v0 = varg0.approve(varg1, 0).gas(msg.gas);
    if (!(v0 & (MEM[0] == 1))) {
        require(!(!v0 & 0x1), MEM[64], RETURNDATASIZE());
        MEM[64] = MEM[64];
        return !RETURNDATASIZE() & bool(varg0.code.size) & v0;
    } else {
        return v0;
    }
}

function 0x29eb(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = varg0.approve(varg1, varg2).gas(msg.gas);
    if (!(v0 & (MEM[0] == 1))) {
        require(!(!v0 & 0x1), MEM[64], RETURNDATASIZE());
        MEM[64] = MEM[64];
        return !RETURNDATASIZE() & bool(varg0.code.size) & v0;
    } else {
        return v0;
    }
}

function 0x2a4d(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (1 == varg0) {
        v0 = address(varg2);
        v1, v2 = v0.allowance(this, 0xba12222222228d8ba445958a75a0704d566bf2c8).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        v2 = v3 = 0;
        if (v1) {
            v4 = v5 = 32;
            if (32 > RETURNDATASIZE()) {
                v4 = v6 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v4 - MEM[64] >= 32);
        }
        if (v2 < varg4) {
            v7, v8 = v0.allowance(this, 0xba12222222228d8ba445958a75a0704d566bf2c8).gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            v8 = v9 = 0;
            if (v7) {
                v10 = v11 = 32;
                if (32 > RETURNDATASIZE()) {
                    v10 = v12 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v10 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v10 - MEM[64] >= 32);
            }
            require(v8 <= v8 - 1, Panic(17)); // arithmetic overflow or underflow
            v13 = 0x28f2(v0, 0xba12222222228d8ba445958a75a0704d566bf2c8, v8 - 1);
            if (!v13) {
                v14 = 0x2966(v0, 0xba12222222228d8ba445958a75a0704d566bf2c8);
                require(v14, SafeERC20FailedOperation(v0));
                v15 = 0x29eb(v0, 0xba12222222228d8ba445958a75a0704d566bf2c8, v8 - 1);
                require(v15, SafeERC20FailedOperation(v0));
            }
        }
        v16 = v17 = 32;
        v18 = new struct(1);
        require(!((v18 + 32 > uint64.max) | (v18 + 32 < v18)), Panic(65)); // failed memory allocation (too much memory)
        v18.word0 = 0;
        CALLDATACOPY(v18 + v17, msg.data.length, 0);
        v19 = new struct(6);
        require(!((v19 + 192 > uint64.max) | (v19 + 192 < v19)), Panic(65)); // failed memory allocation (too much memory)
        v19.word0 = varg1;
        v19.word1 = 0;
        v19.word2 = v0;
        v19.word3 = address(varg3);
        v19.word4 = varg4;
        v19.word5 = v18;
        v20 = new struct(4);
        require(!((v20 + 128 > uint64.max) | (v20 + 128 < v20)), Panic(65)); // failed memory allocation (too much memory)
        v20.word0 = this;
        v20.word1 = 0;
        v20.word2 = address(varg5);
        v20.word3 = 0;
        v21 = v22 = MEM[64];
        v23 = new uint256[](v19.word0);
        require(2 > v19.word1, Panic(33)); // failed convertion to enum type
        MEM[v23.data] = v19.word1;
        MCOPY(v22 + 420 + 32, v19.word5 + 32, MEM[v19.word5]);
        MEM[v22 + 420 + MEM[v19.word5] + 32] = 0;
        v24 = 0xba12222222228d8ba445958a75a0704d566bf2c8.swap(v23, address(v20.word0), bool(v20.word1), address(v20.word2), bool(v20.word3), 1, block.timestamp, v25, v25, address(v19.word2), address(v19.word3), v19.word4, 192, MEM[v19.word5]).gas(msg.gas);
        if (!v24) {
            v26 = RETURNDATASIZE();
            revert(v25, v25, v25, v25, v25, v25, v25, v25, v25, address(v19.word2), address(v19.word3));
        } else if (!v24) {
            return 0;
        }
    } else if (2 == varg0) {
        if (!varg6) {
            v27 = v28 = address(varg2).transfer(0xba1333333333a1ba1108e8412f11850a5c319ba9, varg4).gas(msg.gas);
            if (!(v28 & (MEM[0] == 1))) {
                require(!(!v28 & 0x1), MEM[64], RETURNDATASIZE());
                v27 = v29 = !RETURNDATASIZE() & bool((address(varg2)).code.size) & v28;
            }
            require(v27, SafeERC20FailedOperation(address(varg2)));
        }
        v16 = v30 = 32;
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + v30, msg.data.length, 0);
        v21 = v31 = MEM[64];
        v32 = new uint256[](0);
        MCOPY(v32.data, MEM[64] + 32, 0);
        MEM[v32.data] = 0;
        v33 = 0x309abcaefa19ca6d34f0d8ff4a4103317c138657.call(0x409988cf00000000000000000000000000000000000000000000000000000000, varg1 >> 96, address(varg2), address(varg3), varg4, 1, block.timestamp, v32).gas(msg.gas);
        require(v33, MEM[64], RETURNDATASIZE());
        if (!v33) {
            return 0;
        }
    } else {
        if (3 == varg0) {
            varg4 = v34 = 0;
            v35 = v36 = varg1 >> 96;
            if (!address(varg2)) {
                varg2 = v37 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            }
            if (!address(varg3)) {
                varg2 = v38 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
            }
            v39 = v40 = 0;
            v39 = v41 = 0;
            v39 = v42 = 0;
            while (v39 < 8) {
                v43, /* address */ v44 = this.coins(address(v36), v39).gas(msg.gas);
                v44 = v45 = 0;
                if (v43) {
                    v46 = v47 = 32;
                    if (v47 > RETURNDATASIZE()) {
                        v46 = v48 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v46 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v46 - MEM[64] >= 32);
                    require(!0xc42fa7f400000000000000000000000000000000000000000000000000000000);
                }
                if (v43) {
                    if (address(v44)) {
                        if (address(v44) - address(varg2)) {
                            if (address(varg2) != address(v44)) {
                            }
                            v49 = v50 = 1;
                        } else {
                            v49 = v51 = 1;
                        }
                        v39 = v39 + v49;
                    } else {
                        break;
                    }
                } else {
                    break;
                }
            }
            v52, varg4 = v36.get_dy(v39, v39, varg4).gas(msg.gas);
            varg4 = v53 = 0;
            if (v52) {
                v54 = v55 = 32;
                if (32 > RETURNDATASIZE()) {
                    v54 = v56 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v54 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v54 - MEM[64] >= 32);
            }
            if (!v52) {
                v57, varg4 = v36.get_dy(int128(v39), int128(v39), varg4).gas(msg.gas);
                require(v57, MEM[64], RETURNDATASIZE());
                varg4 = v58 = 0;
                if (v57) {
                    v59 = v60 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v59 = v61 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v59 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v59 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v59 - MEM[64] >= 32);
                }
            }
            if (address(varg2) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                v62, v63 = address(varg2).allowance(this, address(v36)).gas(msg.gas);
                require(v62, MEM[64], RETURNDATASIZE());
                v63 = v64 = 0;
                if (v62) {
                    v65 = v66 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v65 = v67 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v65 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v65 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v65 - MEM[64] >= 32);
                }
                if (v63 < varg4) {
                    0x22ed(address(varg2), v36);
                }
                require(v36.code.size);
                v68 = v36.setMetaGold(v39, v39, varg4, 1).gas(msg.gas);
                if (v68) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    varg4 = v69 = 0;
                }
                if (v68) {
                    return varg4;
                } else {
                    require(v36.code.size, varg4, varg4);
                    v70 = v71 = MEM[64];
                    v72, /* uint256 */ v73 = v36.exchange(int128(v39), int128(v39), varg4, 1).value(varg4).gas(msg.gas);
                    require(v72, v73, RETURNDATASIZE());
                    if (!v72) {
                        return varg4;
                    }
                }
            } else {
                require(v36.code.size, v34, v34);
                v74 = v36.setMetaGold(v39, v39, varg4, 1).value(varg4).gas(msg.gas);
                if (v74) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!v34, v34, v34);
                }
                if (v74) {
                    return varg4;
                } else {
                    require(v36.code.size, v34, v34);
                    v70 = v75 = MEM[64];
                    MEM[v75] = 0x3df0212400000000000000000000000000000000000000000000000000000000;
                    MEM[v75 + 4] = int128(v39);
                    MEM[v75 + 36] = int128(v39);
                    MEM[v75 + 68] = varg4;
                    MEM[v75 + 100] = 1;
                    v76 = v77 = v75 + 132;
                }
            }
        } else {
            if (4 == varg0) {
                varg4 = v78 = 0;
                v79, /* address */ v80 = (varg1 >> 96)._BASE_TOKEN_().gas(msg.gas);
                require(v79, MEM[64], RETURNDATASIZE());
                v80 = v81 = 0;
                if (v79) {
                    v82 = v83 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v82 = v84 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (v82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    require(MEM[64] + v82 - MEM[64] >= 32);
                    require(!0x4a248d2a00000000000000000000000000000000000000000000000000000000);
                }
                if (!varg6) {
                    v85 = v86 = address(varg2).transfer(0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7, varg4).gas(msg.gas);
                    if (!(v86 & (MEM[0] == 1))) {
                        require(!(!v86 & 0x1), MEM[64], RETURNDATASIZE());
                        v85 = v87 = !RETURNDATASIZE() & bool((address(varg2)).code.size) & v86;
                    }
                    require(v85, SafeERC20FailedOperation(address(varg2)));
                }
                if (address(v80) - address(varg2)) {
                    v88, varg4 = 0x533da777aedce766ceae696bf90f8541a4ba80eb.querySellQuoteToken(address(varg1 >> 96), varg4).gas(msg.gas);
                    require(v88, MEM[64], RETURNDATASIZE());
                    varg4 = v89 = 0;
                    if (v88) {
                        v90 = v91 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v90 = v92 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v90 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v90 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v90 - MEM[64] >= 32);
                    }
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                    require(0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7.code.size);
                    v93 = v94 = MEM[64];
                    v95 = new uint256[](0);
                    MCOPY(v95.data, MEM[64] + 32, 0);
                    MEM[v95.data] = 0;
                    v96, /* uint256 */ v97 = 0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7.sellQuote(address(varg5), address(varg1 >> 96), v95).gas(msg.gas);
                    require(v96, v97, RETURNDATASIZE());
                    if (!v96) {
                        return varg4;
                    }
                } else {
                    v98, varg4 = 0x533da777aedce766ceae696bf90f8541a4ba80eb.querySellBaseToken(address(varg1 >> 96), varg4).gas(msg.gas);
                    require(v98, MEM[64], RETURNDATASIZE());
                    if (v98) {
                        v99 = v100 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v99 = v101 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v99 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v99 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v99 - MEM[64] >= 32);
                    }
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                    require(0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7.code.size, v78, v78);
                    v70 = v102 = MEM[64];
                    v103 = new uint256[](0);
                    MCOPY(v103.data, MEM[64] + 32, 0);
                    MEM[v103.data] = 0;
                    v104, /* uint256 */ v105 = 0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7.sellBase(address(varg5), address(varg1 >> 96), v103).value(v78).gas(msg.gas);
                    require(v104, v105, RETURNDATASIZE());
                    if (!v104) {
                        return varg4;
                    }
                }
            } else {
                if (5 == varg0) {
                    v106, /* address */ v107 = (varg1 >> 96)._BASE_TOKEN_().gas(msg.gas);
                    require(v106, MEM[64], RETURNDATASIZE());
                    v107 = v108 = 0;
                    if (v106) {
                        v109 = v110 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v109 = v111 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v109 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v109 - MEM[64] >= 32);
                        require(!0x4a248d2a00000000000000000000000000000000000000000000000000000000);
                    }
                    if (!varg6) {
                        0x2446(address(varg2), varg1 >> 96, varg4);
                    }
                    if (0 == (address(varg2) == address(v107))) {
                        v21 = v112 = MEM[64];
                        v113 = (varg1 >> 96).sellQuote(address(varg5)).gas(msg.gas);
                        require(v113, MEM[64], RETURNDATASIZE());
                        if (!v113) {
                            return 0;
                        }
                    } else {
                        v21 = v114 = MEM[64];
                        v115 = (varg1 >> 96).sellBase(address(varg5)).gas(msg.gas);
                        require(v115, MEM[64], RETURNDATASIZE());
                        if (!v115) {
                            return 0;
                        }
                    }
                } else if (6 == varg0) {
                    v116 = address(varg2);
                    v117 = v116 < address(varg3);
                    if (0 != v117) {
                    }
                    if (v116) {
                        v118, v119 = v116.allowance(this, 0x9995855c00494d039ab6792f18e368e530dff931).gas(msg.gas);
                        require(v118, MEM[64], RETURNDATASIZE());
                        v119 = v120 = 0;
                        if (v118) {
                            v121 = v122 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v121 = v123 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v121 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v121 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v121 - MEM[64] >= 32);
                        }
                        if (v119 < varg4) {
                            v124, v125 = v116.allowance(this, 0x9995855c00494d039ab6792f18e368e530dff931).gas(msg.gas);
                            require(v124, MEM[64], RETURNDATASIZE());
                            v125 = v126 = 0;
                            if (v124) {
                                v127 = v128 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v127 = v129 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v127 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v127 - MEM[64] >= 32);
                            }
                            require(v125 <= v125 - 1, Panic(17)); // arithmetic overflow or underflow
                            v130 = 0x28f2(v116, 0x9995855c00494d039ab6792f18e368e530dff931, v125 - 1);
                            if (!v130) {
                                v131 = 0x2966(v116, 0x9995855c00494d039ab6792f18e368e530dff931);
                                require(v131, SafeERC20FailedOperation(v116));
                                v132 = 0x29eb(v116, 0x9995855c00494d039ab6792f18e368e530dff931, v125 - 1);
                                require(v132, SafeERC20FailedOperation(v116));
                            }
                        }
                        v133 = new struct(3);
                        require(!((v133 + 96 > uint64.max) | (v133 + 96 < v133)), Panic(65)); // failed memory allocation (too much memory)
                        v133.word0 = address(varg2);
                        v133.word1 = address(varg2);
                        v133.word2 = varg1;
                        if (v116 >= address(varg3)) {
                            v134 = v135 = 0xffff9a5889f795069a41a8a3;
                        } else {
                            v134 = v136 = 0x400065a8177fae27;
                        }
                        v137 = v138 = MEM[64];
                        v139 = 0x9995855c00494d039ab6792f18e368e530dff931.call(0x6b81a1500000000000000000000000000000000000000000000000000000000, address(v133.word0), address(v133.word1), v133.word2, v116 >= address(varg3), int128(varg4), uint96(v134), 0).gas(msg.gas);
                        require(v139, MEM[64], RETURNDATASIZE());
                        v140 = v141 = 0;
                        v140 = v142 = 0;
                        if (v139) {
                            v143 = v144 = 18008;
                            if (64 <= RETURNDATASIZE()) {
                                require(!((v138 + 64 > uint64.max) | (v138 + 64 < v138)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = v138 + 64;
                                v145 = v146 = v138 + 64;
                            }
                        }
                    } else {
                        v147 = new struct(3);
                        require(!((v147 + 96 > uint64.max) | (v147 + 96 < v147)), Panic(65)); // failed memory allocation (too much memory)
                        v147.word0 = address(varg2);
                        v147.word1 = address(varg2);
                        v147.word2 = varg1;
                        if (v116 >= address(varg3)) {
                            v148 = v149 = 0xffff9a5889f795069a41a8a3;
                        } else {
                            v148 = v150 = 0x400065a8177fae27;
                        }
                        v137 = v151 = MEM[64];
                        v152 = 0x9995855c00494d039ab6792f18e368e530dff931.call(0x6b81a1500000000000000000000000000000000000000000000000000000000, address(v147.word0), address(v147.word1), v147.word2, v116 >= address(varg3), int128(varg4), uint96(v148), 0).value(varg4).gas(msg.gas);
                        require(v152, MEM[64], RETURNDATASIZE());
                        v140 = v153 = 0;
                        v140 = v154 = 0;
                        if (v152) {
                            v143 = v155 = 17587;
                            v156 = v157 = 64;
                            if (64 > RETURNDATASIZE()) {
                                // Unknown jump to Block 0x44bc. Refer to 3-address code (TAC);
                            }
                        }
                    }
                    if (v117) {
                    }
                    require(int128(v140) != int128.min, Panic(17)); // arithmetic overflow or underflow
                    return uint128(0 - int128(v140));
                    require(!((v137 + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v137 + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v137)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v137 + (v156 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v145 = v158 = v137 + v156;
                    require(v145 - v137 >= 64);
                    v140 = v159 = MEM[v137];
                    require(!(v159 - int128(v159)));
                    v140 = MEM[v137 + 32];
                    require(!(v140 - int128(v140)));
                    // Unknown jump to Block ['0x44b3', '0x4658']. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x4634. Refer to 3-address code (TAC);
                    v156 = v160 = RETURNDATASIZE();
                    // Unknown jump to Block 0x44a1. Refer to 3-address code (TAC);
                    // Unknown jump to Block 0x443f. Refer to 3-address code (TAC);
                } else if (7 == varg0) {
                    v161 = address(varg2);
                    v162, varg4 = (varg1 >> 96).call(0x8e0dc28d00000000000000000000000000000000000000000000000000000000, v161, address(varg3), varg4, 1).gas(msg.gas);
                    require(v162, MEM[64], RETURNDATASIZE());
                    varg4 = v163 = 0;
                    if (v162) {
                        v164 = v165 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v164 = v166 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v164 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v164 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v164 - MEM[64] >= 32);
                    }
                    v167, v168 = v161.allowance(this, 0x208ff5eb543814789321daa1b5eb551881d16b06).gas(msg.gas);
                    require(v167, MEM[64], RETURNDATASIZE());
                    v168 = v169 = 0;
                    if (v167) {
                        v170 = v171 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v170 = v172 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v170 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v170 - MEM[64] >= 32);
                    }
                    if (v168 < varg4) {
                        v173, v174 = v161.allowance(this, 0x208ff5eb543814789321daa1b5eb551881d16b06).gas(msg.gas);
                        require(v173, MEM[64], RETURNDATASIZE());
                        v174 = v175 = 0;
                        if (v173) {
                            v176 = v177 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v176 = v178 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v176 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v176 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v176 - MEM[64] >= 32);
                        }
                        require(v174 <= v174 - 1, Panic(17)); // arithmetic overflow or underflow
                        v179 = 0x28f2(v161, 0x208ff5eb543814789321daa1b5eb551881d16b06, v174 - 1);
                        if (!v179) {
                            v180 = 0x2966(v161, 0x208ff5eb543814789321daa1b5eb551881d16b06);
                            require(v180, SafeERC20FailedOperation(v161));
                            v181 = 0x29eb(v161, 0x208ff5eb543814789321daa1b5eb551881d16b06, v174 - 1);
                            require(v181, SafeERC20FailedOperation(v161));
                        }
                    }
                    require(0x208ff5eb543814789321daa1b5eb551881d16b06.code.size);
                    v93 = v182 = MEM[64];
                    v183, /* uint256 */ v184 = 0x208ff5eb543814789321daa1b5eb551881d16b06.call(0x65202c0900000000000000000000000000000000000000000000000000000000, varg1 >> 96, v161, address(varg3), varg4, address(varg5), 1, block.timestamp).gas(msg.gas);
                    require(v183, v184, RETURNDATASIZE());
                    if (!v183) {
                        return varg4;
                    }
                } else {
                    if (8 == varg0) {
                        v185 = v186 = varg1 >> 96;
                        if (!address(varg2)) {
                            varg2 = v187 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                        }
                        if (!address(varg3)) {
                            varg2 = v188 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
                        }
                        v189 = address(varg2);
                        if (v189 - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                            v190, v191 = v189.allowance(this, address(v186)).gas(msg.gas);
                            require(v190, MEM[64], RETURNDATASIZE());
                            v191 = v192 = 0;
                            if (v190) {
                                v193 = v194 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v193 = v195 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v193 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v193 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v193 - MEM[64] >= 32);
                            }
                            varg4 = v196 = 0;
                            v197 = v198 = 32;
                            if (v191 < varg4) {
                                0x22ed(v189, v186);
                            }
                            v21 = v199 = MEM[64];
                            MEM[v199] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                            v200 = v201 = v199 + 4 + 128;
                            MEM[v199 + 4] = address(varg2) > v189;
                            MEM[v199 + 4 + 32] = varg4;
                            MEM[v199 + 4 + 64] = 1;
                            MEM[v199 + 4 + 96] = address(varg5);
                        } else {
                            v21 = v202 = MEM[64];
                            MEM[v202] = 0x2668dfaa00000000000000000000000000000000000000000000000000000000;
                            MEM[v202 + 4] = address(varg2) > v189;
                            MEM[v202 + 36] = varg4;
                            MEM[v202 + 68] = 1;
                            MEM[v202 + 100] = address(varg5);
                            v197 = v203 = 32;
                            v200 = v204 = v202 + 132;
                        }
                    } else if (9 == varg0) {
                        v205 = address(varg2) < address(varg3);
                        if (0 == v205) {
                            v206 = new struct(3);
                            require(!((v206 + 96 > uint64.max) | (v206 + 96 < v206)), Panic(65)); // failed memory allocation (too much memory)
                            v206.word0 = address(varg3);
                            v206.word1 = address(varg2);
                            v206.word2 = varg1;
                            v16 = v207 = 32;
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + v207, msg.data.length, 0);
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + v207, msg.data.length, 0);
                            v21 = v208 = MEM[64];
                            MEM[v208] = 0x7fc9d4ad00000000000000000000000000000000000000000000000000000000;
                            MEM[v208 + 4] = address(v206.word0);
                            MEM[v208 + 36] = address(v206.word1);
                            MEM[v208 + 68] = v206.word2;
                            MEM[v208 + 100] = v205;
                            MEM[v208 + 132] = varg4;
                            MEM[v208 + 164] = 1;
                            MEM[v208 + 196] = address(varg5);
                            MEM[v208 + 228] = 1;
                            MEM[v208 + 260] = 320;
                            MCOPY(v208 + 324 + 32, MEM[64] + 32, 0);
                            MEM[v208 + 324 + 32] = 0;
                            MEM[v208 + 324 + 32] = 0;
                            MCOPY(v208 + 324 + 32 + 32, MEM[64] + 32, 0);
                            MEM[v208 + 324 + 32 + 32] = 0;
                            v209 = v208 + 324 + 32 + 32;
                            // Unknown jump to Block 0x3ced. Refer to 3-address code (TAC);
                        } else {
                            v210 = new struct(3);
                            require(!((v210 + 96 > uint64.max) | (v210 + 96 < v210)), Panic(65)); // failed memory allocation (too much memory)
                            v210.word0 = address(varg2);
                            v210.word1 = address(varg3);
                            v210.word2 = varg1;
                            v16 = 32;
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + v16, msg.data.length, 0);
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + v16, msg.data.length, 0);
                            v21 = MEM[64];
                            MEM[v21] = 0x7fc9d4ad00000000000000000000000000000000000000000000000000000000;
                            MEM[v21 + 4] = address(v210.word0);
                            MEM[v21 + 36] = address(v210.word1);
                            MEM[v21 + 68] = v210.word2;
                            MEM[v21 + 100] = v205;
                            MEM[v21 + 132] = varg4;
                            MEM[v21 + 164] = 1;
                            MEM[v21 + 196] = address(varg5);
                            MEM[v21 + 228] = 1;
                            MEM[v21 + 260] = 320;
                            MCOPY(v21 + 324 + 32, MEM[64] + 32, 0);
                            MEM[v21 + 324 + 32] = 0;
                            MEM[v21 + 324 + 32] = 0;
                            MCOPY(v21 + 324 + 32 + 32, MEM[64] + 32, 0);
                            MEM[v21 + 324 + 32 + 32] = 0;
                            v209 = v211 = v21 + 324 + 32 + 32;
                        }
                        v212 = 0xbbcb91440523216e2b87052a99f69c604a7b6e00.call(MEM[v3c6fV0x3bc6:v3c6fV0x3bc6 + v1b0eV0x1c10f - v3c6fV0x3bc6], MEM[v3c6fV0x3bc6:v3c6fV0x3bc6 + v3c15V0x3bc6]).gas(msg.gas);
                        if (!v212) {
                            v213 = RETURNDATASIZE();
                            revert(v25, v25, v25, v25, v25, v25, v25, v25, v25, 352, 352, 0, 0);
                        } else if (!v212) {
                            return 0;
                        }
                    } else if (10 == varg0) {
                        v214 = address(varg2);
                        v215, v216 = v214.allowance(this, 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913).gas(msg.gas);
                        require(v215, MEM[64], RETURNDATASIZE());
                        v216 = v217 = 0;
                        if (v215) {
                            v218 = v219 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v218 = v220 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v218 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v218 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v218 - MEM[64] >= 32);
                        }
                        if (v216 < varg4) {
                            v221, v222 = v214.allowance(this, 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913).gas(msg.gas);
                            require(v221, MEM[64], RETURNDATASIZE());
                            v222 = v223 = 0;
                            if (v221) {
                                v224 = v225 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v224 = v226 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v224 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v224 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v224 - MEM[64] >= 32);
                            }
                            require(v222 <= v222 - 1, Panic(17)); // arithmetic overflow or underflow
                            v227 = 0x28f2(v214, 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913, v222 - 1);
                            if (!v227) {
                                v228 = 0x2966(v214, 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913);
                                require(v228, SafeERC20FailedOperation(v214));
                                v229 = 0x29eb(v214, 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913, v222 - 1);
                                require(v229, SafeERC20FailedOperation(v214));
                            }
                        }
                        v230 = new struct(8);
                        require(!((v230 + (uint8.max + 1) > uint64.max) | (v230 + (uint8.max + 1) < v230)), Panic(65)); // failed memory allocation (too much memory)
                        v230.word0 = v214;
                        v230.word1 = address(varg3);
                        v230.word2 = varg1 >> 96;
                        v230.word3 = address(varg5);
                        v230.word4 = block.timestamp;
                        v230.word5 = varg4;
                        v230.word6 = 1;
                        v230.word7 = 0;
                        v21 = v231 = MEM[64];
                        v232 = 0xbbf1ee38152e9d8e3470dc47947eaa65dca94913.exactInputSingle(address(v230.word0), address(v230.word1), address(v230.word2), address(v230.word3), v230.word4, v230.word5, v230.word6, v230.word7).gas(msg.gas);
                        require(v232, MEM[64], RETURNDATASIZE());
                        if (!v232) {
                            return 0;
                        }
                    } else if (11 == varg0) {
                        v233 = address(varg2);
                        v234, v235 = v233.allowance(this, 0x62e31802c6145a2d5e842eed8efe01fc224422fa).gas(msg.gas);
                        require(v234, MEM[64], RETURNDATASIZE());
                        v235 = v236 = 0;
                        if (v234) {
                            v237 = v238 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v237 = v239 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v237 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v237 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v237 - MEM[64] >= 32);
                        }
                        if (v235 < varg4) {
                            v240, v241 = v233.allowance(this, 0x62e31802c6145a2d5e842eed8efe01fc224422fa).gas(msg.gas);
                            require(v240, MEM[64], RETURNDATASIZE());
                            v241 = v242 = 0;
                            if (v240) {
                                v243 = v244 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v243 = v245 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v243 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v243 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v243 - MEM[64] >= 32);
                            }
                            require(v241 <= v241 - 1, Panic(17)); // arithmetic overflow or underflow
                            v246 = 0x28f2(v233, 0x62e31802c6145a2d5e842eed8efe01fc224422fa, v241 - 1);
                            if (!v246) {
                                v247 = 0x2966(v233, 0x62e31802c6145a2d5e842eed8efe01fc224422fa);
                                require(v247, SafeERC20FailedOperation(v233));
                                v248 = 0x29eb(v233, 0x62e31802c6145a2d5e842eed8efe01fc224422fa, v241 - 1);
                                require(v248, SafeERC20FailedOperation(v233));
                            }
                        }
                        v21 = v249 = MEM[64];
                        v250 = 0x62e31802c6145a2d5e842eed8efe01fc224422fa.exactInputSingle(address(varg5), varg1 >> 96, address(varg3) > v233, varg4, 1).gas(msg.gas);
                        require(v250, MEM[64], RETURNDATASIZE());
                        if (!v250) {
                            return 0;
                        }
                    } else if (12 == varg0) {
                        varg4 = v251 = 0;
                        v35 = v252 = varg1 >> 96;
                        v253, /* uint112 */ v254, /* uint112 */ v254, /* uint32 */ v255 = v252.getReserves().gas(msg.gas);
                        require(v253, MEM[64], RETURNDATASIZE());
                        v254 = v256 = 0;
                        v254 = v257 = 0;
                        if (v253) {
                            if (96 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v258 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 96;
                                v258 = v259 = MEM[64] + 96;
                            }
                            require(v258 - MEM[64] >= 96);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v254 - uint112(v254)));
                            require(!(v255 - uint32(v255)));
                        }
                        if (address(varg2) < address(varg3)) {
                        }
                        require(!varg4 | (9975 == varg4 * 9975 / varg4), Panic(17)); // arithmetic overflow or underflow
                        v260 = _SafeMul(varg4 * 9975, uint112(v254));
                        require(!uint112(v254) | (10000 == uint112(v254) * 10000 / uint112(v254)), Panic(17)); // arithmetic overflow or underflow
                        v261 = _SafeAdd(uint112(v254) * 10000, varg4 * 9975);
                        varg4 = v262 = _SafeDiv(v260, v261);
                        if (!varg6) {
                            0x2446(address(varg2), v252, varg4);
                        }
                        if (0 == address(varg2) < address(varg3)) {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                            require(v252.code.size);
                            v93 = v263 = MEM[64];
                            v264 = new uint256[](0);
                            MCOPY(v264.data, MEM[64] + 32, 0);
                            MEM[v264.data] = 0;
                            v265, /* uint256 */ v266 = v252.swap(v262, 0, address(varg5), v264).gas(msg.gas);
                            require(v265, v266, RETURNDATASIZE());
                            if (!v265) {
                                return v262;
                            }
                        } else {
                            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                            require(v252.code.size, v251, v251);
                            v70 = v267 = MEM[64];
                            MEM[v267] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                            MEM[v267 + 4] = 0;
                            MEM[v267 + 4 + 32] = v262;
                            MEM[v267 + 4 + 64] = address(varg5);
                            MEM[v267 + 4 + 96] = 128;
                            MEM[v267 + 4 + 128] = 0;
                            MCOPY(v267 + 4 + 128 + 32, MEM[64] + 32, 0);
                            MEM[v267 + 4 + 128 + 32] = 0;
                            v76 = v267 + 4 + 128 + 32;
                        }
                    } else {
                        if (13 != varg0) {
                            if (14 != varg0) {
                                if (15 != varg0) {
                                    if (16 != varg0) {
                                        if (17 != varg0) {
                                            if (18 != varg0) {
                                                if (19 != varg0) {
                                                    if (20 == varg0) {
                                                        v268 = 0x1d4c(varg1, varg2, varg3, varg4, varg5);
                                                        return v268;
                                                    } else if (21 == varg0) {
                                                        v269, /* address */ v270, /* address */ v271, /* uint24 */ v272, /* int24 */ v273, /* address */ v274 = 0xbd216513d74c8cf14cf4747e6aaa6420ff64ee9e.poolKeys(bytes25(varg1)).gas(msg.gas);
                                                        require(v269, MEM[64], RETURNDATASIZE());
                                                        v275 = v276 = 0;
                                                        if (v269) {
                                                            v277 = v278 = 160;
                                                            if (160 > RETURNDATASIZE()) {
                                                                v277 = v279 = RETURNDATASIZE();
                                                            }
                                                            require(!((MEM[64] + (v277 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v277 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                            require(MEM[64] + v277 - MEM[64] >= 160);
                                                            v275 = v280 = new struct(5);
                                                            require(!((v280 + 160 > uint64.max) | (v280 + 160 < v280)), Panic(65)); // failed memory allocation (too much memory)
                                                            require(!0x86b6be7d00000000000000000000000000000000000000000000000000000000);
                                                            v280.word0 = v270;
                                                            require(!(v271 - address(v271)));
                                                            v280.word1 = v271;
                                                            require(!(v272 - uint24(v272)));
                                                            v280.word2 = v272;
                                                            require(!(v273 - int24(v273)));
                                                            v280.word3 = v273;
                                                            require(!(v274 - address(v274)));
                                                            v280.word4 = v274;
                                                        }
                                                        v281 = address(varg2) < address(varg3);
                                                        v282 = 0x1d20(varg4);
                                                        if (0 == v281) {
                                                            v283 = v284 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                                                        } else {
                                                            v283 = v285 = 0x1000276a4;
                                                        }
                                                        v286 = new struct(3);
                                                        require(!((v286 + 96 > uint64.max) | (v286 + 96 < v286)), Panic(65)); // failed memory allocation (too much memory)
                                                        v286.word0 = v281;
                                                        v286.word1 = v282;
                                                        v286.word2 = address(v283);
                                                        v287 = new struct(2);
                                                        require(!((v287 + 64 > uint64.max) | (v287 + 64 < v287)), Panic(65)); // failed memory allocation (too much memory)
                                                        v287.word0 = v275;
                                                        v287.word1 = v286;
                                                        v288 = new struct(9);
                                                        v288.word1 = address(MEM[v275]);
                                                        v288.word2 = address(MEM[v275 + 32]);
                                                        v288.word3 = uint24(MEM[v275 + 64]);
                                                        v288.word4 = int24(MEM[v275 + 96]);
                                                        v288.word5 = address(MEM[v275 + 128]);
                                                        v288.word6 = bool(MEM[v287.word1]);
                                                        v288.word7 = MEM[v287.word1 + 32];
                                                        v288.word8 = address(MEM[64 + v287.word1]);
                                                        v288.word0 = uint8.max + 1;
                                                        require(!((v288 + 288 > uint64.max) | (v288 + 288 < v288)), Panic(65)); // failed memory allocation (too much memory)
                                                        MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                                        MEM[MEM[64] + 4] = 32;
                                                        v289 = new bytes[](v288.word0.length);
                                                        MCOPY(v289.data, v288.data, v288.word0.length);
                                                        v289[v288.word0.length] = 0;
                                                        v290, /* uint256 */ v291, /* bytes */ v289, /* uint256 */ v292, /* uint256 */ v293 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v289, v292).gas(msg.gas);
                                                        if (!v290) {
                                                            v294 = RETURNDATASIZE();
                                                            revert(v25, v25, v25, v25, v25, v25, v25, v25, v25, v25, 0);
                                                        } else {
                                                            v295 = v296 = 0;
                                                            if (v290) {
                                                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                                                require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                                                require(v292 + 31 < MEM[64] + RETURNDATASIZE());
                                                                require(v292.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                                v295 = v297 = new bytes[](v292.length);
                                                                require(!((v297 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v292.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v297 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v292.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v297)), Panic(65)); // failed memory allocation (too much memory)
                                                                require(v292 + v292.length + 32 <= MEM[64] + RETURNDATASIZE());
                                                                MCOPY(v297.data, v292.data, v292.length);
                                                                v297[v292.length] = 0;
                                                            }
                                                            require(v295 + MEM[v295] + 32 - (v295 + 32) >= 32);
                                                            if (address(varg2) >= address(varg3)) {
                                                                return uint128(MEM[v295 + 32] >> 128);
                                                            } else {
                                                                return uint128(int128(MEM[v295 + 32]));
                                                            }
                                                        }
                                                    } else if (22 == varg0) {
                                                        v185 = v298 = varg1 >> 96;
                                                        if (0 == (v298 == address(varg3))) {
                                                            v21 = v299 = MEM[64];
                                                            v300 = v298.unwrapTo(varg4, address(varg5)).gas(msg.gas);
                                                            require(v300, MEM[64], RETURNDATASIZE());
                                                            if (!v300) {
                                                                return 0;
                                                            }
                                                        } else {
                                                            v301, v302 = address(varg2).allowance(this, address(v298)).gas(msg.gas);
                                                            require(v301, MEM[64], RETURNDATASIZE());
                                                            v302 = v303 = 0;
                                                            if (v301) {
                                                                v304 = v305 = 32;
                                                                if (32 > RETURNDATASIZE()) {
                                                                    v304 = v306 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v304 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v304 - MEM[64] >= 32);
                                                            }
                                                            v197 = v307 = 32;
                                                            if (v302 < varg4) {
                                                                0x22ed(address(varg2), v298);
                                                            }
                                                            varg4 = v308 = 0;
                                                            v21 = v309 = MEM[64];
                                                            MEM[v309] = 0x2659985000000000000000000000000000000000000000000000000000000000;
                                                            v200 = v310 = v309 + 4 + 64;
                                                            MEM[v309 + 4] = varg4;
                                                            MEM[v309 + 4 + 32] = address(varg5);
                                                        }
                                                    } else if (23 == varg0) {
                                                        varg4 = v311 = 0;
                                                        if (0 == (varg1 >> 96 == address(varg3))) {
                                                            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                                                            v93 = v312 = MEM[64];
                                                            v313, /* uint256 */ v314 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg4).gas(msg.gas);
                                                            require(v313, v314, RETURNDATASIZE());
                                                            if (!v313) {
                                                                return varg4;
                                                            }
                                                        } else {
                                                            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size, v311, v311);
                                                            v70 = v315 = MEM[64];
                                                            v316, /* uint256 */ v317 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg4).gas(msg.gas);
                                                            require(v316, v317, RETURNDATASIZE());
                                                            if (!v316) {
                                                                return varg4;
                                                            }
                                                        }
                                                    } else {
                                                        require(24 == varg0, Panic(81)); // call to a zero-initialized variable of internal function type
                                                        if ((varg1 >> 96) - address(varg3)) {
                                                            v21 = v318 = MEM[64];
                                                            v319 = 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.unwrap(varg4).gas(msg.gas);
                                                            require(v319, MEM[64], RETURNDATASIZE());
                                                            if (!v319) {
                                                                return 0;
                                                            }
                                                        } else {
                                                            v320, v321 = address(varg2).allowance(this, address(varg1 >> 96)).gas(msg.gas);
                                                            require(v320, MEM[64], RETURNDATASIZE());
                                                            v321 = v322 = 0;
                                                            if (v320) {
                                                                v323 = v324 = 32;
                                                                if (32 > RETURNDATASIZE()) {
                                                                    v323 = v325 = RETURNDATASIZE();
                                                                }
                                                                require(!((MEM[64] + (v323 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v323 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                                                require(MEM[64] + v323 - MEM[64] >= 32);
                                                            }
                                                            if (v321 < varg4) {
                                                                0x22ed(address(varg2), varg1 >> 96);
                                                            }
                                                            v21 = v326 = MEM[64];
                                                            v327 = 0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0.wrap(varg4).gas(msg.gas);
                                                            require(v327, MEM[64], RETURNDATASIZE());
                                                            if (!v327) {
                                                                return 0;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                            v328 = 0x1e9e(varg1, varg2, varg3, varg4, varg5, varg6);
                            return v328;
                        }
                        v329 = 0x1d4c(varg1, varg2, varg3, varg4, varg5);
                        return v329;
                    }
                    v330 = v185.call(MEM[v3c6fV0x3bc6:v3c6fV0x3bc6 + v2ef1_0x0 - v3c6fV0x3bc6], MEM[v3c6fV0x3bc6:v3c6fV0x3bc6 + v2ef1_0x6]).value(varg4).gas(msg.gas);
                    require(v330, MEM[64], RETURNDATASIZE());
                    if (!v330) {
                        return 0;
                    }
                }
                v16 = v331 = 32;
                if (32 > RETURNDATASIZE()) {
                    v16 = v332 = RETURNDATASIZE();
                }
                v16 = v333 = 32;
                require(!((v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            }
            require(!((v93 > uint64.max) | (v93 < v93)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v93;
            return varg4;
        }
        v334, /* uint256 */ v335 = v35.call(MEM[v34c1_0x5:v34c1_0x5 + v1b0eV0x1ce8V0x3484 - v34c1_0x5], MEM[v34c1_0x5:v34c1_0x5 + v2a4darg0x4]).value(varg4).gas(msg.gas);
        require(v334, v335, RETURNDATASIZE());
        if (!v334) {
            return varg4;
        }
        require(!((v70 + (varg4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v70 + (varg4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v70)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v70 + (varg4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(!varg4, varg4, varg4);
        return varg4;
    }
    require(v21 + v16 - v21 >= v16);
    return MEM[v21];
    if (v16 > RETURNDATASIZE()) {
        v16 = v336 = RETURNDATASIZE();
    }
    require(!((v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v21 + (v16 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    v0 = data.data;
    require(4 + data + data.length + 32 <= msg.data.length);
    0x20df(amount0Delta, amount1Delta);
    return ;
}

function coins(address _pool, uint256 _i) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0, /* uint256 */ v1 = _pool.coins(_i).gas(msg.gas);
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v2 - MEM[64] >= 32);
        require(!0xc661065700000000000000000000000000000000000000000000000000000000);
    }
    if (!v0) {
        v5, /* uint256 */ v1 = _pool.coins(int128(_i)).gas(msg.gas);
        if (v5) {
            v6 = v7 = 32;
            if (32 > RETURNDATASIZE()) {
                v6 = v8 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v6 - MEM[64] >= 32);
            require(!0x23746eb800000000000000000000000000000000000000000000000000000000);
        }
        if (!v5) {
        }
    }
    return address(v1);
}

function ShibaswapV2SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    v0 = _data.data;
    require(4 + _data + _data.length + 32 <= msg.data.length);
    0x20df(amount0Delta, amount1Delta);
    return ;
}

function 0xbe5ae841(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 320);
    require(msg.data[varg0 + 36] < 2);
    require(!(msg.data[varg0 + 68] - address(msg.data[varg0 + 68])));
    require(!(msg.data[varg0 + 100] - address(msg.data[varg0 + 100])));
    require(!(msg.data[varg0 + 132] - address(msg.data[varg0 + 132])));
    require(msg.data[varg0 + 292] < msg.data.length - varg0 - 35);
    v0 = msg.data[varg0 + msg.data[varg0 + 292] + 4];
    require(v0 <= uint64.max);
    require(36 + (varg0 + msg.data[varg0 + 292]) <= msg.data.length - v0);
    v1 = new struct(7);
    require(!((v1 + 224 > uint64.max) | (v1 + 224 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(2 > msg.data[varg0 + 36], Panic(33)); // failed convertion to enum type
    v1.word0 = msg.data[varg0 + 36];
    v1.word1 = address(msg.data[varg0 + 68]);
    v1.word2 = address(msg.data[varg0 + 100]);
    v1.word3 = address(msg.data[varg0 + 132]);
    v1.word4 = msg.data[varg0 + 164];
    v1.word5 = msg.data[varg0 + 196];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](v0);
    require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(36 + (varg0 + msg.data[varg0 + 292]) + v0 <= msg.data.length);
    CALLDATACOPY(v2.data, 36 + (varg0 + msg.data[varg0 + 292]), v0);
    v2[v0] = 0;
    v1.word6 = v2;
    require(2 > v1.word0, Panic(33)); // failed convertion to enum type
    v3 = new uint256[](v1.word0);
    MEM[v3.data] = address(v1.word1);
    MCOPY(MEM[64] + 260 + 32, v4.data, v4.length);
    MEM[MEM[64] + 260 + v4.length + 32] = 0;
    v5, /* uint256 */ v6 = 0xba1333333333a1ba1108e8412f11850a5c319ba9.swap(v3, v7, v7, address(v1.word2), address(v1.word3), v1.word4, v1.word5, 224, v4.length).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        v8 = v9 = 96;
        if (96 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 96);
    }
    return v6;
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(4 + tokens + 31 < msg.data.length);
    require(tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](tokens.length);
    require(!((v0 + (32 + (tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + tokens + (tokens.length << 5) + 32 <= msg.data.length);
    v3 = v4 = tokens.data;
    while (v3 < 4 + tokens + (tokens.length << 5) + 32) {
        require(!(msg.data[v3] - address(msg.data[v3])));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 += 32;
    }
    require(amounts <= uint64.max);
    require(4 + amounts + 31 < msg.data.length);
    require(amounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](amounts.length);
    require(!((v5 + (32 + (amounts.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (amounts.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + amounts + (amounts.length << 5) + 32 <= msg.data.length);
    v8 = v9 = amounts.data;
    while (v8 < 4 + amounts + (amounts.length << 5) + 32) {
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 += 32;
    }
    require(feeAmounts <= uint64.max);
    require(4 + feeAmounts + 31 < msg.data.length);
    require(feeAmounts.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new uint256[](feeAmounts.length);
    require(!((v10 + (32 + (feeAmounts.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (feeAmounts.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v12 = v10.data;
    require(4 + feeAmounts + (feeAmounts.length << 5) + 32 <= msg.data.length);
    v13 = v14 = feeAmounts.data;
    while (v13 < 4 + feeAmounts + (feeAmounts.length << 5) + 32) {
        MEM[v11] = msg.data[v13];
        v13 += 32;
        v11 += 32;
    }
    require(userData <= uint64.max);
    require(4 + userData + 31 < msg.data.length);
    require(userData.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v15 = new bytes[](userData.length);
    require(!((v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v15 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + userData.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v15)), Panic(65)); // failed memory allocation (too much memory)
    require(userData.data + userData.length <= msg.data.length);
    CALLDATACOPY(v15.data, userData.data, userData.length);
    v15[userData.length] = 0;
    require(v15 + v15.length - v15 >= 160);
    require(MEM[v15.data] <= uint64.max);
    require(v15 + MEM[v15.data] + 63 < v15 + v15.length + 32);
    require(v15[MEM[v15.data]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v16 = new uint256[](v15[MEM[v15.data]]);
    require(!((v16 + (32 + (v15[MEM[v15.data]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (v15[MEM[v15.data]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
    v17 = v18 = v16.data;
    require(v15 + MEM[v15.data] + (v15[MEM[v15.data]] << 5) + 32 + 32 <= v15 + v15.length + 32);
    v19 = v20 = 64 + (v15 + MEM[v15.data]);
    while (v19 < v15 + MEM[v15.data] + (v15[MEM[v15.data]] << 5) + 32 + 32) {
        MEM[v17] = MEM[v19];
        v19 += 32;
        v17 += 32;
    }
    require(MEM[v15 + 64] <= uint64.max);
    require(v15 + MEM[v15 + 64] + 63 < v15 + v15.length + 32);
    require(v15[MEM[v15 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v21 = new uint256[](v15[MEM[v15 + 64]]);
    require(!((v21 + (32 + (v15[MEM[v15 + 64]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v21 + (32 + (v15[MEM[v15 + 64]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v21)), Panic(65)); // failed memory allocation (too much memory)
    v22 = v23 = v21.data;
    require(v15 + MEM[v15 + 64] + (v15[MEM[v15 + 64]] << 5) + 32 + 32 <= v15 + v15.length + 32);
    v24 = v25 = 64 + (v15 + MEM[v15 + 64]);
    while (v24 < v15 + MEM[v15 + 64] + (v15[MEM[v15 + 64]] << 5) + 32 + 32) {
        require(!(MEM[v24] - address(MEM[v24])));
        MEM[v22] = MEM[v24];
        v22 = v22 + 32;
        v24 = v24 + 32;
    }
    require(!(MEM[v15 + 96] - address(MEM[v15 + 96])));
    require(v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v26 = v27 = MEM[v5.data];
    require(v16.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v28 = new uint256[](v16.length);
    require(!((v28 + (32 + (v16.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (v16.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
    require(v16.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v28.data, msg.data.length, 32 + (v16.length << 5) - 32);
    require(v16.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v29 = new uint256[](v16.length);
    require(!((v29 + (32 + (v16.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v29 + (32 + (v16.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v29)), Panic(65)); // failed memory allocation (too much memory)
    require(v16.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v29.data, msg.data.length, 32 + (v16.length << 5) - 32);
    while (v30 < v16.length) {
        require(v30 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v31, v32 = 0x2510(v16[v30]);
        require(v30 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v29[v30] = v31;
        require(v30 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v32 < 25, Panic(33)); // failed convertion to enum type
        v28[v30] = v32;
        v30 += 1;
    }
    v33 = v34 = this;
    while (v30 < v16.length) {
        v33 = v35 = this;
        require(v16.length - 1 <= v16.length, Panic(17)); // arithmetic overflow or underflow
        if (v30 < v16.length - 1) {
            v36 = v30 > v30 + 1;
            require(!v36, Panic(17)); // arithmetic overflow or underflow
            require(v30 + 1 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v28[v30 + 1] < 25, Panic(33)); // failed convertion to enum type
            require(v28[v30 + 1] < 25, Panic(33)); // failed convertion to enum type
            if (v28[v30 + 1] - 2) {
                if (v28[v30 + 1] - 4) {
                    if (v28[v30 + 1] - 5) {
                        if (v28[v30 + 1] - 12) {
                            if (v28[v30 + 1] - 14) {
                                if (v28[v30 + 1] - 15) {
                                    if (v28[v30 + 1] - 17) {
                                        if (!(v28[v30 + 1] - 19)) {
                                            require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                            v33 = v37 = v29[v30 + 1] >> 96;
                                        }
                                    } else {
                                        require(!v36, Panic(17)); // arithmetic overflow or underflow
                                        require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                        v33 = v38 = v29[v30 + 1] >> 96;
                                    }
                                } else {
                                    require(!v36, Panic(17)); // arithmetic overflow or underflow
                                    require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                    v33 = v39 = v29[v30 + 1] >> 96;
                                }
                            } else {
                                require(!v36, Panic(17)); // arithmetic overflow or underflow
                                require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v33 = v40 = v29[v30 + 1] >> 96;
                            }
                        } else {
                            require(!v36, Panic(17)); // arithmetic overflow or underflow
                            require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v33 = v41 = v29[v30 + 1] >> 96;
                        }
                    } else {
                        require(!v36, Panic(17)); // arithmetic overflow or underflow
                        require(v30 + 1 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        v33 = v42 = v29[v30 + 1] >> 96;
                    }
                } else {
                    v33 = v43 = 0x91e1c84ba8786b1fae2570202f0126c0b88f6ec7;
                }
            } else {
                v33 = v44 = 0xba1333333333a1ba1108e8412f11850a5c319ba9;
            }
        }
        require(v30 < v28.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v45 = v28[v30];
        require(v45 < 25, Panic(33)); // failed convertion to enum type
        require(v45 < 25, Panic(33)); // failed convertion to enum type
        require(v30 < v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v30 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(v30 <= v30 + 1, Panic(17)); // arithmetic overflow or underflow
        require(v30 + 1 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v46 = 0x2a4d(_receiveFlashLoan[v45], v29[v30], address(v21[v30]), address(v21[v30 + 1]), v26, v33, address(v33) != this);
        v26 = v46 - 1;
        require(v26 <= v46, Panic(17)); // arithmetic overflow or underflow
        v30 = v30 + 1;
    }
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v47, /* uint256 */ v30 = address(MEM[v0.data]).balanceOf(this).gas(msg.gas);
    require(v47, MEM[64], RETURNDATASIZE());
    if (v47) {
        v48 = v49 = 32;
        if (32 > RETURNDATASIZE()) {
            v48 = v50 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v48 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v48 - MEM[64] >= 32);
    }
    require(v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(MEM[v5.data] <= v30);
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v51 = v52 = address(MEM[v0.data]).transfer(0xba12222222228d8ba445958a75a0704d566bf2c8, MEM[v5.data]).gas(msg.gas);
    if (!(v52 & (MEM[0] == 1))) {
        require(!(!v52 & 0x1), MEM[64], RETURNDATASIZE());
        v51 = v53 = !RETURNDATASIZE() & bool((address(MEM[v0.data])).code.size) & v52;
    }
    require(v51, SafeERC20FailedOperation(address(MEM[v0.data])));
    v54, /* uint256 */ v30 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v54, MEM[64], RETURNDATASIZE());
    if (v54) {
        v55 = v56 = 32;
        if (32 > RETURNDATASIZE()) {
            v55 = v57 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v55 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v55 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v55 - MEM[64] >= 32);
    }
    require(v30 - 1 <= v30, Panic(17)); // arithmetic overflow or underflow
    require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
    v58, /* uint256 */ v59 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v30 - 1).gas(msg.gas);
    require(v58, v59, RETURNDATASIZE());
    if (v58) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    require(this.balance >= MEM[v15 + 160], NotEnoughProfit());
    v60 = _SafeSub(this.balance, MEM[v15 + 160]);
    v61 = _SafeMul(v60, MEM[v15 + 128]);
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v62, /* uint256 */ v63 = block.coinbase.call().value(v61 / 10000).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v64 = v65 = new bytes[](RETURNDATASIZE());
        require(!((v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v65 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v65)), Panic(65)); // failed memory allocation (too much memory)
        v63 = v65.data;
        RETURNDATACOPY(v63, 0, RETURNDATASIZE());
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
    v66, /* uint256 */ v67 = address(MEM[v15 + 96]).call().value(this.balance).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v68 = v69 = new bytes[](RETURNDATASIZE());
        require(!((v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v69 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v69)), Panic(65)); // failed memory allocation (too much memory)
        v67 = v69.data;
        RETURNDATACOPY(v67, 0, RETURNDATASIZE());
    }
    return ;
}

function 0xb6a54548(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    v0 = varg2.data;
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    v1 = v2 = varg0.transfer(0xbbcb91440523216e2b87052a99f69c604a7b6e00, varg1).gas(msg.gas);
    if (!(v2 & (MEM[0] == 1))) {
        require(!(!v2 & 0x1), MEM[64], RETURNDATASIZE());
        v1 = v3 = !RETURNDATASIZE() & bool(varg0.code.size) & v2;
    }
    require(v1, SafeERC20FailedOperation(varg0));
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x41c9bbd8 == function_selector >> 224) {
            0x41c9bbd8(function_selector >> 224);
        } else if (0x451c988e == function_selector >> 224) {
            0x451c988e(function_selector >> 224);
        } else if (0x6ae90bab == function_selector >> 224) {
            0x6ae90bab(function_selector >> 224);
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0xb6a54548 == function_selector >> 224) {
            0xb6a54548(function_selector >> 224);
        } else if (0xbe5ae841 == function_selector >> 224) {
            0xbe5ae841(function_selector >> 224);
        } else if (0xc42fa7f4 == function_selector >> 224) {
            coins(address,uint256);
        } else if (0xf04f2707 == function_selector >> 224) {
            receiveFlashLoan(address[],uint256[],uint256[],bytes);
        } else if (0xf40a74a8 == function_selector >> 224) {
            ShibaswapV2SwapCallback(int256,int256,bytes);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
