// Decompiled by library.dedaub.com
// 2025.12.10 05:10 UTC
// Compiled using the solidity compiler version 0.8.30


// Data structures and variables inferred from the use of storage instructions
uint256 ___function_selector__; // TRANSIENT_STORAGE[0x1]
address[] _getPairList; // STORAGE[0x3]
address stor_0_0_19; // STORAGE[0x0] bytes 0 to 19
address _setDelegate; // STORAGE[0x2] bytes 0 to 19



function receive() public payable { 
}

function 0x2ae4(uint256 varg0, bytes varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = 96;
    while (varg0 < varg1.length) {
        v4 = MEM[4 + (varg0 + varg1)];
        require(varg0 <= msg.data.length);
        require(msg.data.length <= msg.data.length);
        v5 = msg.data.length - varg0;
        v6 = new bytes[](v5);
        CALLDATACOPY(v6.data, varg0, v5);
        v6[v5] = 0;
        if (v0) {
            if (0x6dc11b19 - uint32(v4)) {
                if (0xad457616 - uint32(v4)) {
                    require(!(0x23e227c8 - uint32(v4)), Error('bSign'));
                    require(6 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[38 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(7 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[39 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(8 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[40 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(9 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[41 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                } else {
                    require(65 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[97 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(66 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[98 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(67 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[99 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                    require(68 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    MEM8[100 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                }
            } else {
                require(92 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[124 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                require(93 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[125 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                require(94 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[126 + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
                require(95 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[int8.max + v6] = (byte(bytes1(0), 0x0)) & 0xFF;
            }
        }
        MCOPY(MEM[64], v6.data, v6.length);
        MEM[MEM[64] + v6.length] = 0;
        v7, /* uint256 */ v8 = _setDelegate.delegatecall(MEM[MEM[64]:MEM[64] + MEM[64] + v2b19.length - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v2 = v9 = 96;
        } else {
            v2 = v10 = new bytes[](RETURNDATASIZE());
            v8 = v10.data;
            RETURNDATACOPY(v8, 0, RETURNDATASIZE());
        }
        if (v7) {
            v0 = 0x5505(v0);
        }
        if (0x6dc11b19 - uint32(v4)) {
            if (0xad457616 - uint32(v4)) {
                require(!(0x23e227c8 - uint32(v4)), Error('bSign2'));
                varg0 += 311;
                require(varg0 <= varg0, Panic(17)); // arithmetic overflow or underflow
            } else {
                varg0 += 94;
                require(varg0 <= varg0, Panic(17)); // arithmetic overflow or underflow
            }
        } else {
            varg0 += 121;
            require(varg0 <= varg0, Panic(17)); // arithmetic overflow or underflow
        }
    }
    if (0 - v0) {
        return ;
    } else {
        require(MEM[v2] >= 68, Error(0x5b5d31));
        require(!(0x8c379a0 - uint32(MEM[v2 + 4])), Error(0x5b5d32));
        require(MEM[v2] - 4 <= MEM[v2], Panic(17)); // arithmetic overflow or underflow
        require(MEM[v2] - 4 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v11 = new bytes[](MEM[v2] - 4);
        if (MEM[v2] - 4) {
            CALLDATACOPY(v11.data, msg.data.length, MEM[v2] - 4);
        }
        v12 = v13 = 0;
        while (1) {
            require(MEM[v2] - 4 <= MEM[v2], Panic(17)); // arithmetic overflow or underflow
            if (v12 >= MEM[v2] - 4) {
                v14 = 0x55d9(v11.data, v11.data + v11.length);
                v15 = new bytes[](v14.length);
                MCOPY(v15.data, v14.data, v14.length);
                v15[v14.length] = 0;
                revert(Error(v15));
            } else {
                require(4 <= v12 + 4, Panic(17)); // arithmetic overflow or underflow
                require(v12 + 4 < MEM[v2], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v12 < v11.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM8[32 + v12 + v11] = (byte(bytes1(MEM[32 + (v12 + 4) + v2] >> 248 << 248), 0x0)) & 0xFF;
                v12 += 1;
            }
        }
    }
}

function 0x16cd0a6c() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    v1 = new bytes[](msg.data.length);
    CALLDATACOPY(v1.data, 0, msg.data.length);
    v1[msg.data.length] = 0;
    0x2ae4(4, v1);
}

function 0x1e002174(address[] varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(msg.data.length > 4 + varg0 + 31);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v3 += 32;
        v1 = v1 + 32;
    }
    v5 = 0x551(msg.sender);
    require(v5, Error(28528));
    0xcc3(varg1 * v0.length);
    v6 = v7 = 0;
    while (1) {
        if (v6 >= v0.length) {
            exit;
        } else {
            require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v8 = 0x551(v0[v6]);
            v9 = v10 = !v8;
            if (!bool(v8)) {
                require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v9 = address(v0[v6]) != address(this);
            }
            require(!v9, Error('target'));
            require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (address(v0[v6]) != address(this)) {
                require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v11 = address(v0[v6]).call().value(varg1).gas(!varg1 * 2300);
                require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            }
            v6 += 1;
        }
    }
}

function 0x322d(uint256 varg0, bytes varg1) private { 
    v0 = MEM[4 + (varg0 + varg1)];
    v1 = v2 = bool(uint32(v0));
    if (uint32(v0)) {
        v1 = v3 = uint32(v0) < 0x1dcd6500;
    }
    if (!v1) {
        return ;
    } else {
        v4 = _SafeMul(uint32(v0), 10 ** 9);
        if (55) {
            require(!0, Error('payTip'));
            v5, /* uint256 */ v6 = block.coinbase.call().value(v4).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v7 = new bytes[](RETURNDATASIZE());
                v6 = v7.data;
                RETURNDATACOPY(v6, 0, RETURNDATASIZE());
            }
            return ;
        } else {
            v8, /* uint256 */ v9 = address(MEM[varg1 + varg0 + 24]).call().value(v4).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v10 = new bytes[](RETURNDATASIZE());
                v9 = v10.data;
                RETURNDATACOPY(v9, 0, RETURNDATASIZE());
            }
            return ;
        }
    }
}

function 0x225ab0cd() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    v1 = new bytes[](msg.data.length);
    CALLDATACOPY(v1.data, 0, msg.data.length);
    v1[msg.data.length] = 0;
    0x322d(4, v1);
    0x2ae4(28, v1);
}

function 0x34dd(bytes varg0) private { 
    ___function_selector__ = MEM[varg0 + 51];
    v0 = new bytes[](varg0.length);
    MCOPY(v0.data, varg0.data, varg0.length);
    v0[varg0.length] = 0;
    v1, /* uint256 */ v2 = address(MEM[varg0 + 51]).unlock(v0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    MEM[64] = v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    v3 = 0x55d9(v2, v2 + RETURNDATASIZE());
    return ;
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = new bytes[](data.length);
    CALLDATACOPY(v0.data, data.data, data.length);
    v0[data.length] = 0;
    require(msg.sender == address(___function_selector__), Error(25442));
    require(116 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (v0[116] >> 248)) {
        if (0 - (v0[116] >> 248 & 0x80)) {
            require(10 ** uint8(uint8.max + 1 - uint8(v0[116] >> 248)), Panic(18)); // division by zero
            v1 = v2 = uint32(MEM[v0 + 116]) / 10 ** uint8(uint8.max + 1 - uint8(v0[116] >> 248));
        } else {
            v1 = uint32(MEM[v0 + 116]) * 10 ** uint8(v0[116] >> 248);
        }
    } else {
        v1 = v3 = uint32(MEM[v0 + 116]);
    }
    v4 = v5 = 0;
    v6 = v7 = amount0Delta > 0;
    if (v7) {
        v6 = amount1Delta < 0;
    }
    if (!v6) {
        v8 = v9 = amount0Delta < 0;
        if (v9) {
            v8 = amount1Delta > 0;
        }
        if (v8) {
            MEM[MEM[64] + 68] = amount1Delta;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v10, /* uint256 */ v11 = address(MEM[v0 + 87]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(0x7a120);
            if (RETURNDATASIZE() != 0) {
                v12 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
            }
            if (v10) {
                v4 = 0x52f2(amount0Delta);
            } else {
                v13, /* uint256 */ v14 = address(MEM[v0 + 87]).balanceOf(this).gas(msg.gas);
                require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (43113) {
                    v15 = 0x4972(amount1Delta);
                    v16 = 0x4972(v14);
                    v17 = 0x4aa3(v16, 'myTransfer: ');
                    v18 = 0x4aa3(32, v17);
                    v19 = 0x4aa3(v15, v18);
                    v20 = new bytes[](v19.length);
                    MCOPY(v20.data, v19.data, v19.length);
                    v20[v19.length] = 0;
                    revert(Error(v20));
                } else {
                    MEM[MEM[64]] = 0xc2524c7f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 96;
                    v21 = new bytes[](v22.length);
                    MCOPY(v21.data, v22.data, v22.length);
                    v21[v22.length] = 0;
                    revert(v21, v14, amount1Delta);
                }
            }
        }
    } else {
        MEM[MEM[64] + 68] = amount0Delta;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(msg.sender);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v23, /* uint256 */ v24 = address(MEM[v0 + 87]).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(0x7a120);
        if (RETURNDATASIZE() != 0) {
            v25 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v25.data, 0, RETURNDATASIZE());
        }
        if (v23) {
            v4 = v26 = 0x52f2(amount1Delta);
        } else {
            v27, /* uint256 */ v28 = address(MEM[v0 + 87]).balanceOf(this).gas(msg.gas);
            require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (43113) {
                v29 = 0x4972(amount0Delta);
                v30 = 0x4972(v28);
                v31 = 0x4aa3(v30, 'myTransfer: ');
                v32 = 0x4aa3(32, v31);
                v33 = 0x4aa3(v29, v32);
                v34 = new bytes[](v33.length);
                MCOPY(v34.data, v33.data, v33.length);
                v34[v33.length] = 0;
                revert(Error(v34));
            } else {
                MEM[MEM[64]] = 0xc2524c7f00000000000000000000000000000000000000000000000000000000;
                MEM[4 + MEM[64]] = 96;
                v35 = new bytes[](v36.length);
                MCOPY(v35.data, v36.data, v36.length);
                v35[v36.length] = 0;
                revert(v35, v28, amount0Delta);
            }
        }
    }
    if (v4 >= v1) {
        0x322d(88, v0);
    }
}

function 0x3598(bytes varg0) private { 
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (0x1 & varg0[0] >> 248)) {
        require(uint16(MEM[varg0 + 21]) < _getPairList.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v0 = v1 = _getPairList[uint16(MEM[varg0 + 21])];
    } else {
        v0 = v2 = MEM[varg0 + 21];
    }
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(66 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (varg0[66] >> 248)) {
        if (0 - (varg0[66] >> 248 & 0x80)) {
            require(10 ** uint8(uint8.max + 1 - uint8(varg0[66] >> 248)), Panic(18)); // division by zero
            v3 = v4 = uint32(MEM[varg0 + 66]) / 10 ** uint8(uint8.max + 1 - uint8(varg0[66] >> 248));
        } else {
            v3 = v5 = uint32(MEM[varg0 + 66]) * 10 ** uint8(varg0[66] >> 248);
        }
    } else {
        v3 = v6 = uint32(MEM[varg0 + 66]);
    }
    if (0 - v3) {
        v7 = v8 = 1 == 1;
        if (1 != 1) {
            v7 = v9 = 56 == 1;
        }
        if (v7) {
            v10, v3 = address(MEM[varg0 + 87]).balanceOf(this).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0 - v3, Error('balance:0'));
        }
    } else {
        v11, v3 = address(MEM[varg0 + 87]).balanceOf(this).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0 - v3, Error('balance:0'));
    }
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0x40 & varg0[0] >> 248 <= 0) {
        v12 = v13 = this;
    } else {
        require(stor_0_0_19, Error(29810));
        v12 = v14 = stor_0_0_19;
    }
    ___function_selector__ = v0;
    v15 = new bytes[](varg0.length);
    MCOPY(v15.data, varg0.data, varg0.length);
    v15[varg0.length] = 0;
    v16, /* uint256 */ v17, /* uint256 */ v18 = address(v0).swap(address(v12), 0x2 & varg0[0] >> 248 > 0, v3, address(MEM[varg0 + 62]), v15).gas(msg.gas);
    require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (0x2 & varg0[0] >> 248 <= 0) {
        v19 = _SafeSub(0, v17);
    } else {
        v20 = _SafeSub(0, v18);
    }
    return ;
}

function 0x23e227c8() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    0x34dd(v1);
}

function withdraw(uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    0xcc3(_amount);
}

function getPairList() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    v1 = new address[](_getPairList.length);
    v2 = v3 = v1.data;
    if (_getPairList.length) {
        v4 = v5 = _getPairList.data;
        while (v3 + (_getPairList.length << 5) > v2) {
            MEM[v2] = address(STORAGE[v4]);
            v4 = v4 + 1;
            v2 += 32;
        }
    }
    v6 = new address[](v1.length);
    v7 = v8 = 0;
    v9 = v10 = v1.data;
    v11 = v12 = v6.data;
    while (v7 < v1.length) {
        MEM[v11] = address(MEM[v9]);
        v9 += 32;
        v11 = v11 + 32;
        v7 += 1;
    }
    return v6;
}

function 0x3a2b(address varg0) private { 
    if (varg0) {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v1;
    } else {
        return this.balance;
    }
}

function 0x3b6e(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg2)) {
        v0 = varg2.transfer(address(varg1), varg0).gas(msg.gas);
        MEM[MEM[64]] = 0;
        MEM[MEM[64] + 32] = 0;
        MEM[MEM[64] + 64] = 0;
        if (((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v0) {
            return ;
        } else {
            v1 = new uint256[](RETURNDATASIZE());
            RETURNDATACOPY(v1.data, 0, RETURNDATASIZE());
            MEM[MEM[64] + (164 + (RETURNDATASIZE() + 31 >> 5 << 5))] = 4;
            MEM[MEM[64] + (196 + (RETURNDATASIZE() + 31 >> 5 << 5))] = bytes4(0xf27f64e400000000000000000000000000000000000000000000000000000000);
            revert(address(varg2), bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000), v1, (RETURNDATASIZE() + 31 >> 5 << 5) + 160);
        }
    } else {
        v2 = varg1.call().value(varg0).gas(msg.gas);
        if (v2) {
            return ;
        } else {
            v3 = new uint256[](RETURNDATASIZE());
            RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
            MEM[MEM[64] + (164 + (RETURNDATASIZE() + 31 >> 5 << 5))] = 4;
            MEM[MEM[64] + (196 + (RETURNDATASIZE() + 31 >> 5 << 5))] = bytes4(0xf4b3b1bc00000000000000000000000000000000000000000000000000000000);
            revert(address(varg1), bytes4(0), v3, (RETURNDATASIZE() + 31 >> 5 << 5) + 160);
        }
    }
}

function 0x3c8b(bytes varg0) private { 
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v0 = varg0.data;
    v1 = v2 = 0;
    require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (0x1 & varg0[0] >> 248)) {
        require(uint16(MEM[varg0 + 21]) < _getPairList.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = v4 = _getPairList[uint16(MEM[varg0 + 21])];
    } else {
        v3 = v5 = MEM[varg0 + 21];
    }
    v6, /* uint112 */ v7, /* uint112 */ v8, /* uint32 */ v9 = address(v3).getReserves().gas(msg.gas);
    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v7 == uint112(v7));
    require(v8 == uint112(v8));
    require(v9 == uint32(v9));
    v10 = v11 = uint112(v8);
    v10 = v12 = uint112(v7);
    v13 = _SafeMul(10 ** 30, v10);
    v14 = _SafeDiv(v13, v10);
    require(46 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (varg0[46] >> 248)) {
        if (0 - (varg0[46] >> 248 & 0x80)) {
            require(10 ** uint8(uint8.max + 1 - uint8(varg0[46] >> 248)), Panic(18)); // division by zero
            v15 = v16 = uint32(MEM[varg0 + 46]) / 10 ** uint8(uint8.max + 1 - uint8(varg0[46] >> 248));
        } else {
            v15 = v17 = uint32(MEM[varg0 + 46]) * 10 ** uint8(varg0[46] >> 248);
        }
    } else {
        v15 = v18 = uint32(MEM[varg0 + 46]);
    }
    if (v14 <= v15) {
        require(41 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v19 = v20 = 0x4891(varg0[41] >> 248, v10, v10, varg0);
        if (v20 > 0) {
            require(56 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (0 - (varg0[56] >> 248)) {
                if (0 - (varg0[56] >> 248 & 0x80)) {
                    require(10 ** uint8(uint8.max + 1 - uint8(varg0[56] >> 248)), Panic(18)); // division by zero
                    v19 = v21 = uint32(MEM[varg0 + 56]) / 10 ** uint8(uint8.max + 1 - uint8(varg0[56] >> 248));
                } else {
                    v19 = v22 = uint32(MEM[varg0 + 56]) * 10 ** uint8(varg0[56] >> 248);
                }
            } else {
                v19 = v23 = uint32(MEM[varg0 + 56]);
            }
            if (0 - v19) {
                v24 = v25 = 1 == 1;
                if (1 != 1) {
                    v24 = v26 = 56 == 1;
                }
                if (v24) {
                    v1 = v27 = MEM[varg0 + 41];
                    v28, v19 = address(v27).balanceOf(this).gas(msg.gas);
                    require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    require(0 - v19, Error('balance:0'));
                }
            } else {
                v1 = v29 = MEM[varg0 + 41];
                v30, v19 = address(v29).balanceOf(this).gas(msg.gas);
                require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(0 - v19, Error('balance:0'));
            }
            v31 = 0x4c51(10000 - (varg0[41] >> 248), v19);
            v32 = 0x4c51(v10, v31);
            v33 = 0x4c51(10000, v10);
            v34 = _SafeAdd(v31, v33);
            require(v34, Panic(18)); // division by zero
            v35 = v36 = v32 / v34;
            require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (0x40 & varg0[0] >> 248 <= 0) {
                v37 = v38 = this;
            } else {
                require(stor_0_0_19, Error(29810));
                v37 = v39 = stor_0_0_19;
            }
            if (!address(v1)) {
                v1 = v40 = MEM[varg0 + 41];
            }
            MEM[MEM[64] + 68] = v19;
            MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(v3));
            MCOPY(MEM[64], MEM[64] + 32, 68);
            MEM[MEM[64] + 68] = 0;
            v41, /* uint256 */ v42 = address(v1).call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(0x7a120);
            if (RETURNDATASIZE() != 0) {
                v43 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
            }
            if (v41) {
                require(0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0 - (0x3 & varg0[0] >> 248 >> 3)) {
                    require(!(1 - (0x3 & varg0[0] >> 248 >> 3)), Error(0x74797065));
                    if (0 != uint8(0x2 & varg0[0] >> 248 << 248 >> 248)) {
                        require(bool((address(v3)).code.size));
                        v44 = address(v3).swap(v36, 0, address(v37)).gas(msg.gas);
                        require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    } else {
                        require(bool((address(v3)).code.size));
                        v45 = address(v3).swap(0, v36, address(v37)).gas(msg.gas);
                        require(bool(v45), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                    }
                } else {
                    if (0 != uint8(0x2 & varg0[0] >> 248 << 248 >> 248)) {
                        v46 = v47 = address(v3);
                        v48 = v49 = 0x22c0d9f;
                        v35 = v50 = 0;
                    } else {
                        v46 = v51 = address(v3);
                        v48 = v52 = 0x22c0d9f;
                        v35 = v53 = 0;
                    }
                    v54 = new bytes[](v35);
                    if (v35) {
                        CALLDATACOPY(v54.data, msg.data.length, v35);
                        v55 = v54.data;
                    }
                    MEM[4 + MEM[64]] = v35;
                    v56 = new bytes[](v54.length);
                    MCOPY(v56.data, v54.data, v54.length);
                    v57 = v56.data;
                    v56[v54.length] = 0;
                    require(bool(v46.code.size));
                    v58 = v46.swap(v35, v35, address(v37), v56).gas(msg.gas);
                    require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                }
                require(89 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                if (0 - (varg0[89] >> 248)) {
                    if (0 - (varg0[89] >> 248 & 0x80)) {
                        require(10 ** uint8(uint8.max + 1 - uint8(varg0[89] >> 248)), Panic(18)); // division by zero
                        v59 = v60 = uint32(MEM[varg0 + 89]) / 10 ** uint8(uint8.max + 1 - uint8(varg0[89] >> 248));
                    } else {
                        v59 = v61 = uint32(MEM[varg0 + 89]) * 10 ** uint8(varg0[89] >> 248);
                    }
                } else {
                    v59 = v62 = uint32(MEM[varg0 + 89]);
                }
                if (v36 < v59) {
                    return ;
                } else {
                    0x322d(61, varg0);
                    return ;
                }
            } else {
                v63, /* uint256 */ v64 = address(v1).balanceOf(this).gas(msg.gas);
                require(bool(v63), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                if (43113) {
                    v65 = 0x4972(v19);
                    v66 = 0x4972(v64);
                    v67 = 0x4aa3(v66, 'myTransfer: ');
                    v68 = 0x4aa3(32, v67);
                    v69 = 0x4aa3(v65, v68);
                    v70 = new bytes[](v69.length);
                    MCOPY(v70.data, v69.data, v69.length);
                    v70[v69.length] = 0;
                    revert(Error(v70));
                } else {
                    MEM[MEM[64]] = 0xc2524c7f00000000000000000000000000000000000000000000000000000000;
                    MEM[4 + MEM[64]] = 96;
                    v71 = new bytes[](v72.length);
                    MCOPY(v71.data, v72.data, v72.length);
                    v71[v72.length] = 0;
                    revert(v71, v64, v19);
                }
            }
        } else {
            v73 = v74 = 'negB:';
        }
    } else {
        v73 = v75 = 0x70323a;
    }
    if (43113) {
        v76 = 0x4972(v10);
        v77 = 0x4972(v10);
        v78 = 0x4aa3(v77, v73);
        v79 = 0x4aa3(32, v78);
        v80 = 0x4aa3(v76, v79);
        v81 = new bytes[](v80.length);
        MCOPY(v81.data, v80.data, v80.length);
        v81[v80.length] = 0;
        revert(Error(v81));
    } else {
        v82 = new uint256[](MEM[v73]);
        MCOPY(v82.data, v73 + 32, MEM[v73]);
        MEM[v82 + MEM[v73] + 32] = 0;
        revert(v82, v10, v10);
    }
}

function 0x375440a7() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    require(1 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v2 = 0x5268(block.number, uint8.max + 1);
    require(uint32(v2) == uint32(v1[1] >> 248), Error(25196));
    0x34dd(v1);
}

function 0x542960a7(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) == msg.sender, Error(28535));
    stor_0_0_19 = varg0;
}

function version() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    return 0x5d05e;
}

function 0x62752dc8(address[] varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    v5 = 0x551(msg.sender);
    require(v5, Error(28528));
    v6 = v7 = address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) == msg.sender;
    if (address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) != msg.sender) {
        v6 = stor_0_0_19 == varg1;
    }
    require(v6, Error(28535));
    v8 = v9 = 0;
    while (1) {
        if (v8 >= v0.length) {
            exit;
        } else {
            require(v8 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v10, /* uint256 */ v11 = address(v0[v8]).balanceOf(this).gas(msg.gas);
            require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            if (v11) {
                v12, /* bool */ v13 = address(v0[v8]).transfer(varg1, v11).gas(msg.gas);
                require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                require(v13 == bool(v13));
            }
            v8 += 1;
        }
    }
}

function 0x6dc11b19() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    0x3598(v1);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    MEM[MEM[64]] = 0;
    MEM[MEM[64] + 32] = 0;
    MEM[64 + MEM[64]] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 0;
    v0 = new struct(3);
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    require(address(___function_selector__) == msg.sender, Error(25442));
    CALLDATACOPY(MEM[64], rawData.data + 51, 160);
    CALLDATACOPY(v0, rawData.data + 211, 96);
    v1 = v2 = 96;
    if (rawData.length > 307) {
        require(307 <= rawData.length);
        require(rawData.length <= rawData.length);
        v1 = v3 = new bytes[](rawData.length - 307);
        CALLDATACOPY(v3.data, 307 + rawData.data, rawData.length - 307);
        v3[rawData.length - 307] = 0;
    }
    if (!v0.word0) {
        v4 = v5 = 0;
        v6 = v7 = MEM[MEM[64] + 32];
    } else {
        v4 = v8 = MEM[MEM[64] + 32];
        v6 = v9 = 0;
    }
    if (0 - v0.word1) {
        v10 = v11 = 1 == 1;
        if (1 != 1) {
            v10 = 56 == 1;
        }
        if (v10) {
            v12 = 0x3a2b(address(v6));
            require(0 - v12, Error('balance:0'));
            require(v0.word1 <= 0, Error('amount>0'));
            v13 = 0x52f2(v0.word1);
            if (v13 > v12) {
                v14 = 0x52f2(v12);
                v0.word1 = v14;
            }
        }
    } else {
        v15 = 0x3a2b(address(v6));
        v16 = 0x52f2(v15);
        v0.word1 = v16;
        require(0 - v16, Error('balance:0'));
    }
    v17 = new uint256[](MEM[v1]);
    MCOPY(v17.data, v1 + 32, MEM[v1]);
    MEM[v17 + MEM[v1] + 32] = 0;
    v18, v19 = address(___function_selector__).swap(address(0x0), address(MEM[MEM[64] + 32]), uint24(MEM[MEM[64] + 64]), int24(MEM[MEM[64] + 96]), address(MEM[MEM[64] + 128]), bool(v0.word0), v0.word1, address(v0.word2), v17).gas(msg.gas);
    require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (!v0.word0) {
        v20 = v21 = int128(v19 >> 128);
        v22 = 0x53f8(int128(v19));
        v23 = v24 = int128(v22);
    } else {
        v20 = v25 = int128(v19);
        v26 = 0x53f8(v19 >> 128);
        v23 = v27 = int128(v26);
    }
    if (address(MEM[MEM[64] + 128])) {
        v28 = _SafeMul(uint112(v0.word2 >> 48), uint112(v0.word2 >> 48));
        v29 = 0x52f2(int128(v19) << 96);
        require(int128(v19 >> 128), Panic(18)); // division by zero
        require(!((v29 == int256.min) & (int128(v19 >> 128) == uint256.max)), Panic(17)); // arithmetic overflow or underflow
        if (!v0.word0) {
            v30 = 0x54b2(10 ** 6, MEM[64 + MEM[64]]);
            v31 = _SafeMul(v29 / int128(v19 >> 128), uint24(v30));
            v32 = _SafeDiv(v31, 10 ** 6);
            require(v32 <= v28, Error('realP2'));
        } else {
            v33 = 0x54b2(10 ** 6, MEM[64 + MEM[64]]);
            v34 = _SafeMul(10 ** 6, v29 / int128(v19 >> 128));
            v35 = _SafeDiv(v34, uint24(v33));
            require(v35 >= v28, Error('realP1'));
        }
    }
    v36 = new bytes[](rawData.length);
    CALLDATACOPY(v36.data, rawData.data, rawData.length);
    v36[rawData.length] = 0;
    require(30 < v36.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (v36[30] >> 248)) {
        if (0 - (v36[30] >> 248 & 0x80)) {
            require(10 ** uint8(uint8.max + 1 - uint8(v36[30] >> 248)), Panic(18)); // division by zero
            v37 = v38 = uint32(rawData.length) / 10 ** uint8(uint8.max + 1 - uint8(v36[30] >> 248));
        } else {
            v37 = uint32(rawData.length) * 10 ** uint8(v36[30] >> 248);
        }
    } else {
        v37 = v39 = uint32(rawData.length);
    }
    if (v20 >= v37) {
        v40 = new bytes[](rawData.length);
        CALLDATACOPY(v40.data, rawData.data, rawData.length);
        v40[rawData.length] = 0;
        0x322d(2, v40);
    }
    if (bool(address(v6))) {
        require(bool((address(___function_selector__)).code.size));
        v41 = address(___function_selector__).sync(address(v6)).gas(msg.gas);
        require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        0x3b6e(v23, ___function_selector__, address(v6));
        v42, /* uint256 */ v43 = address(___function_selector__).settle().gas(msg.gas);
        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v44 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v23).gas(msg.gas);
        require(bool(v44), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v45 = new bytes[](4);
        MEM[v45.data] = 0x11da60b400000000000000000000000000000000000000000000000000000000 | uint224(v23);
        MCOPY(MEM[64], v45.data, v45.length);
        MEM[MEM[64] + v45.length] = 0;
        v46, /* uint256 */ v47 = address(___function_selector__).call(MEM[MEM[64]:MEM[64] + 4], MEM[MEM[64]:MEM[64]]).value(v23).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v48 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v48.data, 0, RETURNDATASIZE());
        }
        require(v46, Error(0x706179));
    }
    require(bool((address(___function_selector__)).code.size));
    v49 = address(___function_selector__).take(address(v4), this, v20).gas(msg.gas);
    require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (!address(v4)) {
        require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
        v50 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v20).gas(msg.gas);
        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    MEM[64] += 32;
    v51 = new uint256[](0);
    MCOPY(v51.data, MEM[64] + 32, 0);
    MEM[v51.data] = 0;
    return v51;
}

function 0xa36c9e69() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    require(87 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v2 = 0x5268(block.number, uint8.max + 1);
    require(uint32(v2) == uint32(v1[87] >> 248), Error(25196));
    0x3598(v1);
}

function 0x4891(uint256 varg0, uint256 varg1, uint256 varg2, bytes varg3) private { 
    require(51 < varg3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    if (0 - (varg3[51] >> 248)) {
        if (0 - (varg3[51] >> 248 & 0x80)) {
            require(10 ** uint8(uint8.max + 1 - uint8(varg3[51] >> 248)), Panic(18)); // division by zero
            v0 = v1 = uint32(MEM[varg3 + 51]) / 10 ** uint8(uint8.max + 1 - uint8(varg3[51] >> 248));
        } else {
            v0 = v2 = uint32(MEM[varg3 + 51]) * 10 ** uint8(varg3[51] >> 248);
        }
    } else {
        v0 = v3 = uint32(MEM[varg3 + 51]);
    }
    v4 = 0x4c51(10000, varg2);
    require(10000 - varg0, Panic(18)); // division by zero
    v5 = 0x4c51(v0, varg1);
    require(10 ** 30, Panic(18)); // division by zero
    require(2, Panic(18)); // division by zero
    if ((v5 / 10 ** 30 - v4 / (10000 - varg0)) / 2 > 0) {
        return (v5 / 10 ** 30 - v4 / (10000 - varg0)) / 2;
    } else {
        return 0;
    }
}

function 0xa8b1b9e6() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    v1 = new bytes[](msg.data.length);
    CALLDATACOPY(v1.data, 0, msg.data.length);
    v1[msg.data.length] = 0;
    require(uint32(msg.data.length) == uint32(block.number), Error(25196));
    0x2ae4(8, v1);
}

function 0x4972(uint256 varg0) private { 
    if (0 - varg0) {
        v0 = v1 = 0;
        while (varg0) {
            v0 = 0x5505(v0);
            varg0 = _SafeDiv(varg0, 10);
        }
        require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = new bytes[](v0);
        if (v0) {
            CALLDATACOPY(v2.data, msg.data.length, v0);
        }
        while (varg0) {
            v0 = v0 - 1;
            require(v0 <= v0, Panic(17)); // arithmetic overflow or underflow
            require(10, Panic(18)); // division by zero
            require(48 <= varg0 % 10 + 48, Panic(17)); // arithmetic overflow or underflow
            require(v0 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM8[32 + v0 + v2] = (byte(bytes1(varg0 % 10 + 48 << 248), 0x0)) & 0xFF;
            varg0 = _SafeDiv(varg0, 10);
        }
        return v2;
    } else {
        return 48;
    }
}

function 0xad457616() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    0x3c8b(v1);
}

function 0x4aa3(bytes varg0, bytes varg1) private { 
    require(varg0.length, Panic(1)); // low-level assert failed
    require(varg1.length <= varg0.length + varg1.length, Panic(17)); // arithmetic overflow or underflow
    require(varg0.length + varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg0.length + varg1.length);
    if (varg0.length + varg1.length) {
        CALLDATACOPY(v0.data, msg.data.length, varg0.length + varg1.length);
    }
    v1 = v2 = 0;
    while (v1 < varg1.length) {
        require(v1 < varg1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v1 = 0x5505(v1);
        require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + v1 + v0] = (byte(bytes1(varg1[v1]), 0x0)) & 0xFF;
        v1 = v1 + 1;
    }
    v3 = v4 = 0;
    while (v3 < varg0.length) {
        require(v3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v1 = 0x5505(v1);
        require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM8[32 + v1 + v0] = (byte(bytes1(varg0[v3]), 0x0)) & 0xFF;
        v3 = v3 + 1;
    }
    return v0;
}

function 0xb04ffb63(address[] varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    v5 = 0x551(msg.sender);
    require(v5, Error(28528));
    v6 = v7 = 0;
    while (1) {
        if (v6 >= v0.length) {
            exit;
        } else {
            require(v6 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            _getPairList.length = _getPairList.length + 1;
            _getPairList[_getPairList.length] = v0[v6];
            v6 += 1;
        }
    }
}

function 0x4c51(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg0;
    if (varg0) {
        v0 = v4 = _SafeMul(varg1, varg0);
        v5 = _SafeDiv(v4, varg0);
        v2 = v6 = v5 == varg1;
    }
    require(v2, Error('ds-math-mul-overflow'));
    return v0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 + varg1;
    require(varg1 <= v0, Panic(17)); // arithmetic overflow or underflow
    require(v0 >= varg1, Error('ds-math-add-overflow'));
    return v0;
}

function deposit(uint256 _amount) public payable { 
    require(msg.data.length - 4 >= 32);
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(_amount).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
}

function transfer(address _from, address _to, uint256 _wad) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) == msg.sender, Error(28535));
    if (0) {
        v0, /* bool */ v1 = _from.transfer(_to, _wad).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 == bool(v1));
    } else {
        MEM[MEM[64] + 68] = _wad;
        MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(_to);
        MCOPY(MEM[64], MEM[64] + 32, 68);
        MEM[MEM[64] + 68] = 0;
        v2, /* uint256 */ v3 = _from.call(MEM[MEM[64]:MEM[64] + 68], MEM[MEM[64]:MEM[64]]).gas(0x7a120);
        if (RETURNDATASIZE() != 0) {
            v4 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());
        }
    }
}

function setDelegate(address _delegate) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) == msg.sender, Error(28535));
    _setDelegate = _delegate;
}

function 0x5268(uint32 varg0, uint32 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 % varg1;
}

function 0xddf7be7f() public nonPayable { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(4 <= msg.data.length);
    require(msg.data.length <= msg.data.length);
    v1 = new bytes[](msg.data.length - 4);
    CALLDATACOPY(v1.data, 4, msg.data.length - 4);
    v1[msg.data.length - 4] = 0;
    require(58 < v1.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v2 = 0x5268(block.number, uint8.max + 1);
    require(uint32(v2) == uint32(v1[58] >> 248), Error(25196));
    0x3c8b(v1);
}

function 0x52f2(uint256 varg0) private { 
    require(varg0 - int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function callTo(address to, uint256 value, bytes calldatas) public payable { 
    require(msg.data.length - 4 >= 96);
    require(calldatas <= uint64.max);
    require(4 + calldatas + 31 < msg.data.length);
    require(calldatas.length <= uint64.max);
    require(4 + calldatas + calldatas.length + 32 <= msg.data.length);
    require(address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379) == msg.sender, Error(28535));
    require(to);
    CALLDATACOPY(v0.data, calldatas.data, calldatas.length);
    MEM[calldatas.length + v0.data] = 0;
    v1, /* uint256 */ v2, /* uint256 */ v3, /* uint256 */ v4 = to.call(v0.data).value(value).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    if (v1) {
        v8 = new uint256[](MEM[v5]);
        MCOPY(v8.data, v5 + 32, MEM[v5]);
        MEM[v8 + MEM[v5] + 32] = 0;
        return v8;
    } else {
        v9 = new uint256[](MEM[v5]);
        MCOPY(v9.data, v4, MEM[v5]);
        MEM[v9 + MEM[v5] + 32] = 0;
        revert(Error(v9));
    }
}

function 0x53f8(int128 varg0) private { 
    require(varg0 - int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x54b2(uint24 varg0, uint24 varg1) private { 
    require(varg0 - varg1 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x5505(uint256 varg0) private { 
    require(varg0 - uint256.max, Panic(17)); // arithmetic overflow or underflow
    return 1 + varg0;
}

function 0x551(address varg0) private { 
    if (55) {
        if (0) {
            require(!43113, Error('chainId'));
            v0 = v1 = 0x232c2753c086289a3346d4a4921ec15c4de8b9e2 == varg0;
            if (0x232c2753c086289a3346d4a4921ec15c4de8b9e2 != varg0) {
                if (!(0xad38295cb8fb113354a435e92f69d4755a898dac - varg0)) {
                    return 1;
                }
            }
        } else {
            v0 = v2 = 0x232c2753c086289a3346d4a4921ec15c4de8b9e2 == varg0;
            if (0x232c2753c086289a3346d4a4921ec15c4de8b9e2 != varg0) {
                if (!(0xad38295cb8fb113354a435e92f69d4755a898dac - varg0)) {
                    return 1;
                }
            }
        }
    } else {
        v0 = v3 = 0x29d23322d88f4e5bd1be86c7791fc5e127f2e294 == varg0;
        if (0x29d23322d88f4e5bd1be86c7791fc5e127f2e294 != varg0) {
            v0 = v4 = 0xea22767002bdc47738e234f749be980713ae17aa == varg0;
        }
        if (!v0) {
            v0 = v5 = 0x694fbd365620b61249fe35c6f980dde8d2c913f6 == varg0;
        }
        if (!v0) {
            v0 = v6 = 0xb8a4f89176f1db972ac41c398fe14e4e3706d129 == varg0;
        }
    }
    if (v0) {
        return 1;
    }
    if (msg.sender - address(0x41cd6a606a79bc05d94f9ce13f8917aec3f2a379)) {
        return 0;
    } else {
        return 1;
    }
}

function 0x55d9(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 32);
    require(MEM[varg0] <= uint64.max);
    v0 = varg0 + MEM[varg0];
    require(varg1 > v0 + 31);
    require(MEM[v0] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](MEM[v0]);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v0] + 31) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & MEM[v0] + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v0 + 32 + MEM[v0] <= varg1);
    MCOPY(v1.data, v0 + 32, MEM[v0]);
    v1[MEM[v0]] = 0;
    return v1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 - varg1;
    require(!((varg1 < 0) & (v0 < varg0) | (v0 > varg0) & (varg1 >= 0)), Panic(17)); // arithmetic overflow or underflow
    return v0;
}

function 0xcc3(uint256 varg0) private { 
    v0 = 0x551(msg.sender);
    require(v0, Error(28528));
    require(bool((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size));
    v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(varg0).gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else {
        v0 = function_selector >> 224;
        if (0x91dd7346 > v0) {
            if (0x3180a9f4 > v0) {
                if (0x23a69e75 > v0) {
                    if (0x16cd0a6c == v0) {
                        0x16cd0a6c();
                    } else if (0x1e002174 == v0) {
                        0x1e002174();
                    } else if (0x225ab0cd == v0) {
                        0x225ab0cd();
                    }
                } else if (0x23a69e75 != v0) {
                    if (0x23e227c8 == v0) {
                        0x23e227c8();
                    } else if (0x2c8958f6 != v0) {
                        if (0x2e1a7d4d == v0) {
                            withdraw(uint256);
                        }
                    }
                }
            } else if (0x54fd4d50 > v0) {
                if (0x3180a9f4 == v0) {
                    getPairList();
                } else if (0x375440a7 == v0) {
                    0x375440a7();
                } else if (0x542960a7 == v0) {
                    0x542960a7();
                }
            } else if (0x54fd4d50 == v0) {
                version();
            } else if (0x62752dc8 == v0) {
                0x62752dc8();
            } else if (0x654b6487 != v0) {
                if (0x6dc11b19 == v0) {
                    0x6dc11b19();
                }
            }
        } else if (0xbeabacc8 > v0) {
            if (0xa8b1b9e6 > v0) {
                if (0x91dd7346 == v0) {
                    unlockCallback(bytes);
                } else if (0xa224ef83 != v0) {
                    if (0xa36c9e69 == v0) {
                        0xa36c9e69();
                    }
                }
            } else if (0xa8b1b9e6 == v0) {
                0xa8b1b9e6();
            } else if (0xad457616 == v0) {
                0xad457616();
            } else if (0xb04ffb63 == v0) {
                0xb04ffb63();
            } else if (0xb6b55f25 == v0) {
                deposit(uint256);
            }
        } else if (0xf40a74a8 > v0) {
            if (0xbeabacc8 == v0) {
                transfer(address,address,uint256);
            } else if (0xc4e21d86 != v0) {
                if (0xca5eb5e1 == v0) {
                    setDelegate(address);
                } else if (0xddf7be7f == v0) {
                    0xddf7be7f();
                }
            }
        } else if (0xf40a74a8 != v0) {
            if (0xfa461e33 != v0) {
                if (0xfa483e72 != v0) {
                    if (0xfbe788ab == v0) {
                        callTo(address,uint256,bytes);
                    }
                }
            }
        }
        swapCallback(int256,int256,bytes);
    }
    v1 = v2 = msg.sender == address(___function_selector__);
    if (msg.sender != address(___function_selector__)) {
        v1 = v3 = 0x551(msg.sender);
    }
    require(v1, Error(0x6f7032));
    require(_setDelegate - this, Error(0x64656570));
    CALLDATACOPY(0, 0, msg.data.length);
    v4 = _setDelegate.delegatecall(MEM[0:msg.data.length], MEM[0:0]).gas(msg.gas);
    require(v4, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    return MEM[0:RETURNDATASIZE()];
}
