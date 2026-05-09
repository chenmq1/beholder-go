// Decompiled by library.dedaub.com
// 2025.12.13 06:05 UTC
// Compiled using the solidity compiler version 0.8.15


// Data structures and variables inferred from the use of storage instructions
uint256 ___function_selector__; // STORAGE[0x1]
struct_726[] array_3; // STORAGE[0x3]
address _owner; // STORAGE[0x0] bytes 0 to 19
uint128 _unlockCallback; // STORAGE[0x2] bytes 0 to 15

struct struct_726 { address field0; address field1_0_19; uint24 field1_20_22; uint24 field1_23_25; address field2; uint256 field3; };

// Events
OwnershipTransferred(address, address);

function receive() public payable { 
}

function 0xfe1b3a66(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v0 = varg1.data;
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(!(msg.sender - address(___function_selector__)), Error('v2 pool mismatch'));
    require(!(this - varg0), Error('v2 sender mismatch'));
    v1 = varg1.length - 20 * (byte(msg.data[v0 + varg1.length - 1], 0x0)) + v0 - 1;
    while (1) {
        if (v0 < v1) {
            if (bytes1(msg.data[v0]) - 0x5400000000000000000000000000000000000000000000000000000000000000) {
                if (bytes1(msg.data[v0]) - 0x3200000000000000000000000000000000000000000000000000000000000000) {
                    if (bytes1(msg.data[v0]) - 0x4400000000000000000000000000000000000000000000000000000000000000) {
                        require(bytes1(msg.data[v0]) - 0x3300000000000000000000000000000000000000000000000000000000000000, Error('3 after 2 is not allowed'));
                        require(0x3400000000000000000000000000000000000000000000000000000000000000 - bytes1(msg.data[v0]), Error('4 after 2 is not allowed'));
                        revert(Error('unknown instruction'));
                    } else {
                        v2 = 0x3682();
                        if ((byte(msg.data[v0 + 35], 0x0)) == uint8.max) {
                            v3 = v4 = 3;
                            v5 = v6 = this;
                        } else {
                            v3 = v7 = 3;
                            v5 = v8 = msg.data[v1 + 20 * (byte(msg.data[v0 + 35], 0x0))] >> 96;
                        }
                        v9 = new struct(4);
                        require(!((v9 + 128 > uint64.max) | (v9 + 128 < v9)), Panic(65)); // failed memory allocation (too much memory)
                        v9.word0 = msg.data[20 * (byte(msg.data[v0 + 1], 0x0)) + v1] >> 96;
                        v9.word1 = (byte(msg.data[v0 + 2], 0x0)) == 1;
                        v9.word2 = msg.data[v0 + v3];
                        v9.word3 = address(v5);
                        if (0 == bool(v9.word1)) {
                            v10 = v11 = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                        } else {
                            v10 = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                        }
                        v12 = new struct(3);
                        v13 = v12.data;
                        v12.word1 = v10;
                        MEM[v12 + 36] = address(v9.word3);
                        v12.word0 = 36;
                        require(!((v12 + 96 > uint64.max) | (v12 + 96 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        v14 = v12.word0.length;
                        v15 = address(v9.word0).sellBase(address(v9.word3)).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v16 = v17 = new bytes[](RETURNDATASIZE());
                            require(!((v17 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
                        }
                        require(v15, Error('dodo swap failed'));
                        v0 = v0 + 36;
                    }
                } else {
                    v18 = 0x3682();
                    v19 = v20 = 0;
                    if (!(msg.data[v0 + 2] >> 248)) {
                        v19 = v21 = msg.data[v0 + 3];
                    } else {
                        v19 = msg.data[v0 + 3];
                    }
                    if (uint8.max == msg.data[v0 + 35] >> 248) {
                        v22 = v23 = this;
                    } else {
                        v22 = v24 = msg.data[v1 + 20 * (msg.data[v0 + 35] >> 248)] >> 96;
                    }
                    v25 = new struct(4);
                    require(!((v25 + 128 > uint64.max) | (v25 + 128 < v25)), Panic(65)); // failed memory allocation (too much memory)
                    v25.word0 = msg.data[20 * (msg.data[v0 + 1] >> 248) + v1] >> 96;
                    v25.word1 = v19;
                    v25.word2 = v19;
                    v25.word3 = address(v22);
                    v26 = ___function_selector__;
                    ___function_selector__ = bytes12(v26) | address(v25.word0);
                    v27 = new bytes[](164);
                    MEM[v27.data] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v27 + 36] = v25.word1;
                    v27[36] = v25.word2;
                    MEM[v27 + 36 + 64] = address(v25.word3);
                    MEM[v27 + 36 + 96] = 128;
                    v28 = new uint256[](0);
                    require(!((v27 + 224 > uint64.max) | (v27 + 224 < v27)), Panic(65)); // failed memory allocation (too much memory)
                    v29 = v27.length;
                    v30 = address(v25.word0).swap(v25.word1, v25.word2, address(v25.word3), v28).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v31 = v32 = new bytes[](RETURNDATASIZE());
                        require(!((v32 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
                    }
                    0x3201(v30);
                    v0 = v0 + 36;
                }
            } else {
                0x2ec6(msg.data[v1] >> 96, msg.data[v0 + 1]);
                v0 = v0 + 33;
            }
            continue;
        } else {
            ___function_selector__ = this | bytes12(___function_selector__);
            exit;
        }
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), Error('Ownable: caller is not the owner'));
    _owner = 0;
    emit OwnershipTransferred(_owner, 0);
    return ;
}

function wrapETH(uint256 value) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    v0 = v1.length;
    v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(value).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require(v2, Error('wrapETH'));
}

function 0x0000be86() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
    selfdestruct(0xeeb65da7e686bc6a7073fa24a889667ba2636966);
}

function 0x2ec6(address varg0, uint256 varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg0;
    MEM[v0 + 68] = varg1;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(varg0, varg1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    if (!v2) {
        require(!MEM[v4], 32 + v4, MEM[v4]);
        v7 = new bytes[](v8.length);
        v9 = v10 = 0;
        while (v9 < v8.length) {
            v7[v9] = v8[v9];
            v9 = v9 + 32;
        }
        if (v9 > v8.length) {
            v7[v8.length][32] = 0;
        }
        revert(Error(v7));
    } else {
        if (!MEM[v4]) {
            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size, Error('Address: call to non-contract'));
        }
        v11 = !MEM[v4];
        if (bool(MEM[v4])) {
            require(v4 + MEM[v4] - v4 >= 32);
            v11 = v12 = MEM[32 + v4];
            require(!(v12 - bool(v12)));
            v13 = this.code.size;
        }
        require(v11, Error('SafeERC20: ERC20 operation did not succeed'));
        return ;
    }
}

function 0x3201(uint256 varg0) private { 
    require(varg0, Error('failed swap'));
    return ;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= ~varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x330c(int128 varg0) private { 
    require(!((varg0 > 0) & (uint256.max < int128.min / varg0) & 0x1), Panic(17)); // arithmetic overflow or underflow
    require(!((varg0 < 0) & (int128.max / varg0 > uint256.max) & 0x1), Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x33e1(uint256 varg0) private { 
    require(this.balance >= varg0, Error('insufficient ETH'));
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    v0 = v1.length;
    v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require(v2, Error('wrap failed'));
    return ;
}

function 0x34d5(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 >= varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x3510(uint256 varg0) private { 
    v0 = v1 = 32;
    v2, v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v4 = 0;
    if (v2) {
        if (v1 > RETURNDATASIZE()) {
            v0 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v0 - MEM[64] >= v1, v4, v4);
        v6 = this.code.size;
    }
    require(v3 >= varg0, Error('insufficient WETH'));
    v7 = new bytes[](36);
    MEM[v7.data] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
    MEM[v7 + 36] = varg0;
    require(!((v7 + 96 > uint64.max) | (v7 + 96 < v7)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v7.length;
    v9, /* uint256 */ v10 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v11 = v12 = new bytes[](RETURNDATASIZE());
        require(!((v12 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        v10 = v12.data;
        RETURNDATACOPY(v10, 0, RETURNDATASIZE());
    }
    require(v9, Error('unwrap failed'));
    return ;
}

function 0x3682() private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    return v0;
}

function uniswapV3SwapCallback(int256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(!(msg.sender - address(___function_selector__)), Error('v3 pool mismatch'));
    v1 = v2 = 0;
    v3 = v0 + (varg0.length - 20 * (byte(msg.data[v0 + varg0.length - 1], 0x0))) - 1;
    while (v0 < v3) {
        if (bytes1(msg.data[v0]) - 0x5400000000000000000000000000000000000000000000000000000000000000) {
            if (0 == (bytes1(msg.data[v0]) == 0x3200000000000000000000000000000000000000000000000000000000000000)) {
                if (0 == (bytes1(msg.data[v0]) == 0x4400000000000000000000000000000000000000000000000000000000000000)) {
                    if (0 == (bytes1(msg.data[v0]) == 0x3300000000000000000000000000000000000000000000000000000000000000)) {
                        require(0 != (bytes1(msg.data[v0]) == 0x3400000000000000000000000000000000000000000000000000000000000000), Error('unknown instruction'));
                        v4 = new bytes[](varg0.length);
                        CALLDATACOPY(v4.data, v0, varg0.length);
                        v4[varg0.length] = 0;
                        require(!((MEM[64] + ((varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v4 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((varg0.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v4 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        v5, /* uint256 */ v6 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v4).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v7 = v8 = new bytes[](RETURNDATASIZE());
                            require(!((v8 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
                            v6 = v8.data;
                            RETURNDATACOPY(v6, 0, RETURNDATASIZE());
                        }
                        require(v5, Error('v4 unlock failed'));
                        v9 = this.code.size;
                        break;
                    } else {
                        v10 = 0x3682();
                        v11 = msg.data[v0 + (varg0.length - 20 * (byte(msg.data[v0 + varg0.length - 1], 0x0))) + 20 * (msg.data[v0 + 1] >> 248) - 1] >> 96;
                        if (uint8.max == msg.data[v0 + 35] >> 248) {
                            v12 = v13 = this;
                        } else {
                            v12 = v14 = msg.data[20 * (msg.data[v0 + 35] >> 248) + (v0 + (varg0.length - 20 * (byte(msg.data[v0 + varg0.length - 1], 0x0)))) - 1] >> 96;
                        }
                        v15 = new struct(4);
                        require(!((v15 + 128 > uint64.max) | (v15 + 128 < v15)), Panic(65)); // failed memory allocation (too much memory)
                        v15.word0 = v11;
                        v15.word1 = bool(msg.data[2 + v0] >> 248);
                        v15.word2 = 0 - msg.data[v0 + 3];
                        v15.word3 = address(v12);
                        ___function_selector__ = bytes12(___function_selector__) | v11;
                        if (0 == bool(msg.data[2 + v0] >> 248)) {
                            v16 = v17 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v16 = v18 = 0x1000276a4;
                        }
                        require(v1 <= -37, Panic(17)); // arithmetic overflow or underflow
                        require(v1 + 36 <= varg0.length);
                        v19 = new uint256[](varg0.length - v1 - 36);
                        CALLDATACOPY(v19.data, v0 + v1 + 36, varg0.length - v1 - 36);
                        MEM[v19 + (varg0.length - v1 - 36) + 32] = 0;
                        require(!((MEM[64] + ((varg0.length - v1 - 36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v19 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((varg0.length - v1 - 36 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v19 + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        v20, /* uint256 */ v21 = v11.swap(address(v12), bool(msg.data[2 + v0] >> 248), 0 - msg.data[v0 + 3], address(v16), v19).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v22 = v23 = new bytes[](RETURNDATASIZE());
                            require(!((v23 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
                            v21 = v23.data;
                            RETURNDATACOPY(v21, 0, RETURNDATASIZE());
                        }
                        0x3201(v20);
                        v24 = this.code.size;
                        break;
                    }
                } else {
                    v25 = 0x3682();
                    if ((byte(msg.data[v0 + 35], 0x0)) == uint8.max) {
                        v26 = v27 = 3;
                        v28 = v29 = this;
                    } else {
                        v26 = v30 = 3;
                        v28 = v31 = msg.data[v3 + 20 * (byte(msg.data[v0 + 35], 0x0))] >> 96;
                    }
                    v32 = new struct(4);
                    require(!((v32 + 128 > uint64.max) | (v32 + 128 < v32)), Panic(65)); // failed memory allocation (too much memory)
                    v32.word0 = msg.data[20 * (byte(msg.data[v0 + 1], 0x0)) + v3] >> 96;
                    v32.word1 = (byte(msg.data[v0 + 2], 0x0)) == 1;
                    v32.word2 = msg.data[v0 + v26];
                    v32.word3 = address(v28);
                    if (0 == bool(v32.word1)) {
                        v33 = v34 = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                    } else {
                        v33 = v35 = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                    }
                    v36 = new struct(3);
                    v37 = v36.data;
                    v36.word1 = v33;
                    v38 = v39 = 36;
                    MEM[v36 + v39] = address(v32.word3);
                    v36.word0 = v39;
                    require(!((v36 + 96 > uint64.max) | (v36 + 96 < v36)), Panic(65)); // failed memory allocation (too much memory)
                    v40 = v36.word0.length;
                    v41 = address(v32.word0).sellBase(address(v32.word3)).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v42 = v43 = new bytes[](RETURNDATASIZE());
                        require(!((v43 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v43 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v43)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
                    }
                    require(v41, Error('dodo swap failed'));
                }
            } else {
                v44 = 0x3682();
                v45 = v46 = 0;
                if (!(msg.data[v0 + 2] >> 248)) {
                    v45 = v47 = msg.data[v0 + 3];
                } else {
                    v45 = msg.data[v0 + 3];
                }
                if (uint8.max == msg.data[v0 + 35] >> 248) {
                    v48 = v49 = this;
                } else {
                    v48 = v50 = msg.data[v3 + 20 * (msg.data[v0 + 35] >> 248)] >> 96;
                }
                v51 = new struct(4);
                require(!((v51 + 128 > uint64.max) | (v51 + 128 < v51)), Panic(65)); // failed memory allocation (too much memory)
                v51.word0 = msg.data[20 * (msg.data[v0 + 1] >> 248) + v3] >> 96;
                v51.word1 = v45;
                v51.word2 = v45;
                v51.word3 = address(v48);
                v52 = ___function_selector__;
                ___function_selector__ = bytes12(v52) | address(v51.word0);
                v53 = new bytes[](164);
                MEM[v53.data] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                v38 = v54 = 36;
                MEM[v53 + v54] = v51.word1;
                v53[v54] = v51.word2;
                MEM[v53 + v54 + 64] = address(v51.word3);
                MEM[v53 + v54 + 96] = 128;
                v55 = new uint256[](0);
                require(!((v53 + 224 > uint64.max) | (v53 + 224 < v53)), Panic(65)); // failed memory allocation (too much memory)
                v56 = v53.length;
                v57 = address(v51.word0).swap(v51.word1, v51.word2, address(v51.word3), v55).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v58 = v59 = new bytes[](RETURNDATASIZE());
                    require(!((v59 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v59 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v59)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v59.data, 0, RETURNDATASIZE());
                }
                0x3201(v57);
            }
            require(v0 <= -37, Panic(17)); // arithmetic overflow or underflow
            v0 += v38;
            require(v1 <= -37, Panic(17)); // arithmetic overflow or underflow
            v1 = v1 + v38;
        } else {
            0x2ec6(msg.data[v3] >> 96, msg.data[v0 + 1]);
            require(v0 <= -34, Panic(17)); // arithmetic overflow or underflow
            v0 = v0 + 33;
            require(v1 <= -34, Panic(17)); // arithmetic overflow or underflow
            v1 = v1 + 33;
        }
        continue;
        ___function_selector__ = this | bytes12(___function_selector__);
        exit;
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), Error('Ownable: caller is not the owner'));
    require(newOwner, Error('Ownable: new owner is the zero address'));
    _owner = newOwner;
    emit OwnershipTransferred(_owner, newOwner);
    return ;
}

function withdrawETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
    v0, /* uint256 */ v1 = address(0x51ab7d23a8c8bbd0b69a7263865cc301e168c1e3).call().value(amount).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v2 = v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v1 = v3.data;
        RETURNDATACOPY(v1, 0, RETURNDATASIZE());
    }
    require(v0, Error('Transfer failed.'));
}

function swapCall(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    v0 = varg1.data;
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(!(msg.sender - address(___function_selector__)), Error('v2 pool mismatch'));
    require(!(this - varg0), Error('v2 sender mismatch'));
    v1 = varg1.length - 20 * (byte(msg.data[v0 + varg1.length - 1], 0x0)) + v0 - 1;
    while (1) {
        if (v0 < v1) {
            if (bytes1(msg.data[v0]) - 0x5400000000000000000000000000000000000000000000000000000000000000) {
                if (bytes1(msg.data[v0]) - 0x3200000000000000000000000000000000000000000000000000000000000000) {
                    if (bytes1(msg.data[v0]) - 0x4400000000000000000000000000000000000000000000000000000000000000) {
                        require(bytes1(msg.data[v0]) - 0x3300000000000000000000000000000000000000000000000000000000000000, Error('3 after 2 is not allowed'));
                        require(0x3400000000000000000000000000000000000000000000000000000000000000 - bytes1(msg.data[v0]), Error('4 after 2 is not allowed'));
                        revert(Error('unknown instruction'));
                    } else {
                        v2 = 0x3682();
                        if ((byte(msg.data[v0 + 35], 0x0)) == uint8.max) {
                            v3 = v4 = 3;
                            v5 = v6 = this;
                        } else {
                            v3 = v7 = 3;
                            v5 = v8 = msg.data[v1 + 20 * (byte(msg.data[v0 + 35], 0x0))] >> 96;
                        }
                        v9 = new struct(4);
                        require(!((v9 + 128 > uint64.max) | (v9 + 128 < v9)), Panic(65)); // failed memory allocation (too much memory)
                        v9.word0 = msg.data[20 * (byte(msg.data[v0 + 1], 0x0)) + v1] >> 96;
                        v9.word1 = (byte(msg.data[v0 + 2], 0x0)) == 1;
                        v9.word2 = msg.data[v0 + v3];
                        v9.word3 = address(v5);
                        if (0 == bool(v9.word1)) {
                            v10 = v11 = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                        } else {
                            v10 = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                        }
                        v12 = new struct(3);
                        v13 = v12.data;
                        v12.word1 = v10;
                        MEM[v12 + 36] = address(v9.word3);
                        v12.word0 = 36;
                        require(!((v12 + 96 > uint64.max) | (v12 + 96 < v12)), Panic(65)); // failed memory allocation (too much memory)
                        v14 = v12.word0.length;
                        v15 = address(v9.word0).sellBase(address(v9.word3)).gas(msg.gas);
                        if (RETURNDATASIZE()) {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v16 = v17 = new bytes[](RETURNDATASIZE());
                            require(!((v17 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());
                        }
                        require(v15, Error('dodo swap failed'));
                        v0 = v0 + 36;
                    }
                } else {
                    v18 = 0x3682();
                    v19 = v20 = 0;
                    if (!(msg.data[v0 + 2] >> 248)) {
                        v19 = v21 = msg.data[v0 + 3];
                    } else {
                        v19 = msg.data[v0 + 3];
                    }
                    if (uint8.max == msg.data[v0 + 35] >> 248) {
                        v22 = v23 = this;
                    } else {
                        v22 = v24 = msg.data[v1 + 20 * (msg.data[v0 + 35] >> 248)] >> 96;
                    }
                    v25 = new struct(4);
                    require(!((v25 + 128 > uint64.max) | (v25 + 128 < v25)), Panic(65)); // failed memory allocation (too much memory)
                    v25.word0 = msg.data[20 * (msg.data[v0 + 1] >> 248) + v1] >> 96;
                    v25.word1 = v19;
                    v25.word2 = v19;
                    v25.word3 = address(v22);
                    v26 = ___function_selector__;
                    ___function_selector__ = bytes12(v26) | address(v25.word0);
                    v27 = new bytes[](164);
                    MEM[v27.data] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v27 + 36] = v25.word1;
                    v27[36] = v25.word2;
                    MEM[v27 + 36 + 64] = address(v25.word3);
                    MEM[v27 + 36 + 96] = 128;
                    v28 = new uint256[](0);
                    require(!((v27 + 224 > uint64.max) | (v27 + 224 < v27)), Panic(65)); // failed memory allocation (too much memory)
                    v29 = v27.length;
                    v30 = address(v25.word0).swap(v25.word1, v25.word2, address(v25.word3), v28).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v31 = v32 = new bytes[](RETURNDATASIZE());
                        require(!((v32 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v32 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v32)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v32.data, 0, RETURNDATASIZE());
                    }
                    0x3201(v30);
                    v0 = v0 + 36;
                }
            } else {
                0x2ec6(msg.data[v1] >> 96, msg.data[v0 + 1]);
                v0 = v0 + 33;
            }
            continue;
        } else {
            ___function_selector__ = this | bytes12(___function_selector__);
            exit;
        }
    }
}

function unwrapETH(uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
    v0 = new bytes[](36);
    MEM[v0.data] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = amount;
    require(!((v0 + 96 > uint64.max) | (v0 + 96 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(amount).gas(msg.gas);
    if (RETURNDATASIZE()) {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v5.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    require(v2, Error('unwrapETH'));
}

function withdrawToken(address _tokenContract, uint256 _amount) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = address(0x51ab7d23a8c8bbd0b69a7263865cc301e168c1e3);
    MEM[v0 + 68] = _amount;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = _tokenContract.transfer(address(0x51ab7d23a8c8bbd0b69a7263865cc301e168c1e3), _amount).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    if (!v2) {
        require(!MEM[v4], 32 + v4, MEM[v4]);
        v7 = new bytes[](v8.length);
        v9 = v10 = 0;
        while (v9 < v8.length) {
            v7[v9] = v8[v9];
            v9 = v9 + 32;
        }
        if (v9 > v8.length) {
            v7[v8.length][32] = 0;
        }
        revert(Error(v7));
    } else {
        if (!MEM[v4]) {
            require(_tokenContract.code.size, Error('Address: call to non-contract'));
        }
        v11 = v12 = !MEM[v4];
        if (bool(MEM[v4])) {
            require(v4 + MEM[v4] - v4 >= 32);
            v11 = v13 = MEM[32 + v4];
            require(!(v13 - bool(v13)));
        }
        require(v11, Error('SafeERC20: ERC20 operation did not succeed'));
        exit;
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    v0 = rawData.length;
    require(v0 <= uint64.max);
    v0 = v1 = rawData.data;
    require(4 + rawData + v0 + 32 <= msg.data.length);
    require(!(msg.sender - 0x4444c5dc75cb358380d2e3de08a90), Error('v4 manager mismatch'));
    while (1) {
        v0 = v2 = uint256.max;
        v0 = v3 = 20;
        v0 = v0 + (v0 - v3 * (byte(msg.data[v0 + v0 + v2], 0x0)));
        v0 = v0 + v2;
        if (v0 >= v0) {
            v0 = v4 = 3;
            v0 = v5 = array_3.length;
            v0 = v6 = 0;
        } else if (bytes1(msg.data[v0]) - 0x3400000000000000000000000000000000000000000000000000000000000000) {
            if (0 == (bytes1(msg.data[v0]) == 0x5400000000000000000000000000000000000000000000000000000000000000)) {
                if (bytes1(msg.data[v0]) - 0x3200000000000000000000000000000000000000000000000000000000000000) {
                    if (bytes1(msg.data[v0]) - 0x4400000000000000000000000000000000000000000000000000000000000000) {
                        require(0x3300000000000000000000000000000000000000000000000000000000000000 - bytes1(msg.data[v0]), Error('3 after 4 is not allowed'));
                        revert(Error('unknown instruction'));
                    } else {
                        v7 = 0x3682();
                        if ((byte(msg.data[v0 + 35], 0x0)) == uint8.max) {
                            v8 = v9 = 3;
                            v10 = v11 = this;
                        } else {
                            v8 = v12 = 3;
                            v10 = v13 = msg.data[v0 + 20 * (byte(msg.data[v0 + 35], 0x0))] >> 96;
                        }
                        v14 = new struct(4);
                        require(!((v14 + 128 > uint64.max) | (v14 + 128 < v14)), Panic(65)); // failed memory allocation (too much memory)
                        v14.word0 = msg.data[20 * (byte(msg.data[v0 + 1], 0x0)) + v0] >> 96;
                        v14.word1 = (byte(msg.data[v0 + 2], 0x0)) == 1;
                        v14.word2 = msg.data[v0 + v8];
                        v14.word3 = address(v10);
                        if (!v14.word1) {
                            v15 = new bytes[](36);
                            MEM[v15.data] = 0xdd93f59a00000000000000000000000000000000000000000000000000000000;
                            MEM[v15 + 36] = address(v14.word3);
                            require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
                            v16 = v15.length;
                            v17 = address(v14.word0).sellQuote(address(v14.word3)).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v18 = v19 = new bytes[](RETURNDATASIZE());
                                require(!((v19 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v19 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v19)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());
                            }
                            require(v17, Error('dodo swap failed'));
                            v0 = v0 + 36;
                        } else {
                            v20 = new bytes[](36);
                            MEM[v20.data] = 0xbd6015b400000000000000000000000000000000000000000000000000000000;
                            MEM[v20 + 36] = address(v14.word3);
                            require(!((v20 + 96 > uint64.max) | (v20 + 96 < v20)), Panic(65)); // failed memory allocation (too much memory)
                            v21 = v20.length;
                            v22 = address(v14.word0).sellBase(address(v14.word3)).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v23 = v24 = new bytes[](RETURNDATASIZE());
                                require(!((v24 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                                RETURNDATACOPY(v24.data, 0, RETURNDATASIZE());
                            }
                            require(v22, Error('dodo swap failed'));
                            v0 = v0 + 36;
                        }
                    }
                } else {
                    v25 = 0x3682();
                    v26 = v27 = 0;
                    if (!(msg.data[v0 + 2] >> 248)) {
                        v26 = v28 = msg.data[v0 + 3];
                    } else {
                        v26 = msg.data[v0 + 3];
                    }
                    if (uint8.max == msg.data[v0 + 35] >> 248) {
                        v29 = v30 = this;
                    } else {
                        v29 = v31 = msg.data[v0 + 20 * (msg.data[v0 + 35] >> 248)] >> 96;
                    }
                    v32 = new struct(4);
                    require(!((v32 + 128 > uint64.max) | (v32 + 128 < v32)), Panic(65)); // failed memory allocation (too much memory)
                    v32.word0 = msg.data[20 * (msg.data[v0 + 1] >> 248) + v0] >> 96;
                    v32.word1 = v26;
                    v32.word2 = v26;
                    v32.word3 = address(v29);
                    v33 = ___function_selector__;
                    ___function_selector__ = bytes12(v33) | address(v32.word0);
                    v34 = new bytes[](164);
                    MEM[v34.data] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000;
                    MEM[v34 + 36] = v32.word1;
                    v34[36] = v32.word2;
                    MEM[v34 + 36 + 64] = address(v32.word3);
                    MEM[v34 + 36 + 96] = 128;
                    v35 = new uint256[](0);
                    require(!((v34 + 224 > uint64.max) | (v34 + 224 < v34)), Panic(65)); // failed memory allocation (too much memory)
                    v36 = v34.length;
                    v37 = address(v32.word0).swap(v32.word1, v32.word2, address(v32.word3), v35).gas(msg.gas);
                    if (RETURNDATASIZE()) {
                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v38 = v39 = new bytes[](RETURNDATASIZE());
                        require(!((v39 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
                        RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());
                    }
                    0x3201(v37);
                    v0 = v0 + 36;
                }
            } else {
                0x2ec6(msg.data[v0] >> 96, msg.data[v0 + 1]);
                v0 = v0 + 33;
            }
        } else {
            v40 = new struct(4);
            require(!((v40 + 128 > uint64.max) | (v40 + 128 < v40)), Panic(65)); // failed memory allocation (too much memory)
            v41 = new struct(5);
            require(!((v41 + 160 > uint64.max) | (v41 + 160 < v41)), Panic(65)); // failed memory allocation (too much memory)
            v41.word0 = 0;
            v41.word1 = 0;
            v41.word2 = 0;
            v41.word3 = 0;
            v41.word4 = 0;
            v40.word0 = v41;
            v40.word1 = 0;
            v40.word2 = 0;
            v40.word3 = 0;
            if (uint8.max == msg.data[v0 + 100] >> 248) {
                v42 = v43 = this;
            } else if (254 == msg.data[v0 + 100] >> 248) {
                v42 = v44 = 0;
            } else {
                v42 = v45 = msg.data[v3 * (msg.data[v0 + 100] >> 248) + v0 + v2] >> 96;
            }
            v0 = v46 = new struct(5);
            require(!((v46 + 160 > uint64.max) | (v46 + 160 < v46)), Panic(65)); // failed memory allocation (too much memory)
            v46.word0 = msg.data[v0 + 1] >> 96;
            v46.word1 = msg.data[v0 + 21] >> 96;
            v46.word2 = msg.data[v0 + 41] >> 232;
            v46.word3 = int24(msg.data[v0 + 44] >> 232);
            v46.word4 = msg.data[v0 + 47] >> 96;
            v0 = v47 = new struct(4);
            require(!((v47 + 128 > uint64.max) | (v47 + 128 < v47)), Panic(65)); // failed memory allocation (too much memory)
            v47.word0 = v46;
            v47.word1 = bool(msg.data[v0 + 67] >> 248);
            v47.word2 = msg.data[v0 + 68];
            v47.word3 = address(v42);
            v48 = v49 = _unlockCallback;
            if (!v49) {
                v48 = v50 = msg.data[v0 + 68];
            }
            if (!(msg.data[v0 + 67] >> 248)) {
                v51 = v52 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v51 = v53 = 0x1000276a4;
            }
            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v54, v0 = 0x4444c5dc75cb358380d2e3de08a90.swap(address(v46.word0), address(v46.word1), uint24(v46.word2), int24(v46.word3), address(v46.word4), bool(msg.data[v0 + 67] >> 248), v48, address(v51), 288, 0).gas(msg.gas);
            if (!v54) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v0 = v55 = 0;
                if (v54) {
                    v56 = v57 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v56 = v58 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v56 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v56 - MEM[64] >= 32);
                }
                if (int128(v0 >> 128) > 0) {
                    if (address(v47.word3)) {
                        if (address(v46.word0)) {
                            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                            v59 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v46.word0), address(v47.word3), uint128(v0 >> 128)).gas(msg.gas);
                            if (!v59) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v59) {
                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                            }
                        } else {
                            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                            v60 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v46.word0), this, uint128(v0 >> 128)).gas(msg.gas);
                            if (!v60) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v60) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                0x33e1(uint128(v0 >> 128));
                                0x2ec6(address(v47.word3), uint128(v0 >> 128));
                            }
                        }
                    }
                }
                if (int128(v0) > 0) {
                    if (address(v47.word3)) {
                        if (address(v46.word1)) {
                            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                            v61 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v46.word1), address(v47.word3), uint128(v0)).gas(msg.gas);
                            if (!v61) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else if (v61) {
                                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                            }
                        } else {
                            require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                            v62 = 0x4444c5dc75cb358380d2e3de08a90.take(address(v46.word1), this, uint128(v0)).gas(msg.gas);
                            if (!v62) {
                                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                v63 = v64 = 4797;
                                if (v62) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                }
                                0x33e1(uint128(v0));
                                v65 = new bytes[](68);
                                v66 = 32;
                                MEM[v65.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
                                MEM[v65 + 36] = address(v47.word3);
                                MEM[v65 + 68] = uint128(v0);
                                require(!((v65 + 128 > uint64.max) | (v65 + 128 < v65)), Panic(65)); // failed memory allocation (too much memory)
                                require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
                                v67 = 0;
                                v68 = v65.length;
                                v69 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.transfer(address(v47.word3), uint128(v0)).value(v67).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v70 = v71 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v70 = v72 = new bytes[](RETURNDATASIZE());
                                    require(!((v72 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v72 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v72)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v72.data, 0, RETURNDATASIZE());
                                }
                                if (!v69) {
                                    require(!MEM[v70], 32 + v70, MEM[v70]);
                                    v73 = new bytes[](v74.length);
                                    v75 = v76 = 0;
                                    while (v75 < v74.length) {
                                        v73[v75] = v74[v75];
                                        v75 = v75 + 32;
                                    }
                                    if (v75 > v74.length) {
                                        v73[v74.length][32] = 0;
                                    }
                                    revert(Error(v73));
                                } else if (!MEM[v70]) {
                                    require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size, Error('Address: call to non-contract'));
                                }
                            }
                        }
                    }
                }
            }
        }
        v77 = _unlockCallback;
        if (!v77) {
            require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(array_3.length < uint64.max + 1, Panic(65)); // failed memory allocation (too much memory)
            array_3.length = array_3.length + 1;
            require(array_3.length < array_3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[0] = 3;
            require(!0, Panic(0));
            array_3[array_3.length].field0_0_19 = MEM[v78];
            array_3[array_3.length].field1_0_19 = MEM[v78 + 32];
            array_3[array_3.length].field1_20_22 = MEM[v78 + 64];
            array_3[array_3.length].field1_23_25 = MEM[v78 + 96];
            array_3[array_3.length].field2_0_19 = MEM[v78 + 128];
            array_3[array_3.length].field3 = v0;
        }
        if (address(MEM[v0 + 96])) {
            _unlockCallback = 0;
        } else {
            if (!MEM[32 + v0]) {
                v79 = v80 = 0x330c(int128(v0 >> 128));
            } else {
                v79 = v81 = 0x330c(int128(v0));
            }
            _unlockCallback = v79;
        }
        v0 = v0 + 101;
        // Unknown jump to Block 0xf64. Refer to 3-address code (TAC);
        continue;
        if (v0 < v0) {
            require(v0 < array_3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[0] = 3;
            require(v0 < array_3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[0] = 3;
            v82 = new struct(5);
            require(!((v82 + 160 > uint64.max) | (v82 + 160 < v82)), Panic(65)); // failed memory allocation (too much memory)
            v0 = v83 = array_3[v0].field0_0_19;
            v82.word0 = v83;
            v0 = v84 = 1;
            v0 = v85 = array_3[v0].field1_0_19;
            v82.word1 = v85;
            v82.word2 = array_3[v0].field1_20_22;
            v82.word3 = array_3[v0].field1_23_25;
            v82.word4 = array_3[v0].field2_0_19;
            v0 = v86 = int128(STORAGE[0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b + (v0 << 2) + v0]);
            if (int128(STORAGE[0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b + (v0 << 2) + v0] >> 128) < 0) {
                v87 = 0x34d5(int128(STORAGE[0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b + (v0 << 2) + v0] >> 128));
                v88 = v89 = uint128(v87);
                if (v83) {
                    if (v83 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                        v90, v91 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                        if (!v90) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            v91 = v92 = 0;
                            if (v90) {
                                v93 = v94 = 32;
                                if (32 > RETURNDATASIZE()) {
                                    v93 = v95 = RETURNDATASIZE();
                                }
                                require(!((MEM[64] + (v93 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v93 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                require(MEM[64] + v93 - MEM[64] >= 32);
                            }
                            if (v91 < v89) {
                                v96 = _SafeSub(v89, v91);
                                v97 = this.balance;
                                if (v97 >= v96) {
                                    0x33e1(v96);
                                }
                            }
                        }
                    }
                    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                    v98 = 0x4444c5dc75cb358380d2e3de08a90.sync(v83).gas(msg.gas);
                    if (!v98) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v63 = v99 = 7671;
                        if (v98) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                    }
                } else {
                    v100 = this.balance;
                    if (v100 < v89) {
                        v101 = this.balance;
                        v102 = _SafeSub(v89, v101);
                        0x3510(v102);
                    }
                    require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                    v103 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v89).gas(msg.gas);
                    if (!v103) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else if (v103) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                    }
                }
            }
        } else {
            v104 = STORAGE[v0];
            STORAGE[v0] = 0;
            if (v104) {
                require(!(0x1 & (v104 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow
                MEM[0] = v0;
                v105 = v106 = array_3.data;
                while (v105 < v106 + (v104 << 2)) {
                    STORAGE[v105] = 0;
                    STORAGE[v105 + 1] = 0;
                    STORAGE[v105 + 2] = 0;
                    STORAGE[v105 + v0] = 0;
                    v105 = v105 + 4;
                }
            }
            ___function_selector__ = bytes12(___function_selector__) | this;
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v107 = new uint256[](0);
            v108 = v109 = 0;
            while (v108 < 0) {
                MEM[v107 + v108 + 32] = MEM[MEM[64] + v108 + 32];
                v108 = v108 + 32;
            }
            if (v108 > 0) {
                MEM[v107.data] = 0;
            }
            return v107;
        }
        if (v0 < 0) {
            v110 = 0x34d5(v0);
            v88 = v111 = uint128(v110);
            if (v0) {
                if (v0 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                    v112, v113 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
                    if (!v112) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v113 = v114 = 0;
                        if (v112) {
                            v115 = v116 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v115 = v117 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v115 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v115 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            require(MEM[64] + v115 - MEM[64] >= 32);
                        }
                        if (v113 < v111) {
                            v118 = _SafeSub(v111, v113);
                            v119 = this.balance;
                            if (v119 >= v118) {
                                0x33e1(v118);
                            }
                        }
                    }
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v120 = 0x4444c5dc75cb358380d2e3de08a90.sync(v0).gas(msg.gas);
                if (!v120) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v63 = v121 = 7052;
                    if (v120) {
                        require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                    }
                }
            } else {
                v122 = this.balance;
                if (v122 < v111) {
                    v123 = this.balance;
                    v124 = _SafeSub(v111, v123);
                    0x3510(v124);
                }
                require(0x4444c5dc75cb358380d2e3de08a90.code.size);
                v125 = 0x4444c5dc75cb358380d2e3de08a90.settle().value(v111).gas(msg.gas);
                if (!v125) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else if (v125) {
                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                }
            }
        }
        v0 += v0;
        // Unknown jump to Block 0x186c. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1a38. Refer to 3-address code (TAC);
        v126 = new bytes[](68);
        v66 = v127 = 32;
        MEM[v126.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
        MEM[v126 + 36] = 0x4444c5dc75cb358380d2e3de08a90;
        MEM[v126 + 68] = v88;
        require(!((v126 + 128 > uint64.max) | (v126 + 128 < v126)), Panic(65)); // failed memory allocation (too much memory)
        require(!(('SafeERC20: low-level call failed' + 64 > uint64.max) | ('SafeERC20: low-level call failed' + 64 < 'SafeERC20: low-level call failed')), Panic(65)); // failed memory allocation (too much memory)
        v67 = v128 = 0;
        v129 = v126.length;
        v130 = address(v0).transfer(0x4444c5dc75cb358380d2e3de08a90, v88).value(v128).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v70 = v131 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v70 = v132 = new bytes[](RETURNDATASIZE());
            require(!((v132 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v132 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v132)), Panic(65)); // failed memory allocation (too much memory)
            RETURNDATACOPY(v132.data, 0, RETURNDATASIZE());
        }
        if (!v130) {
            require(!MEM[v133], 32 + v133, MEM[v133]);
            v134 = new bytes[](v135.length);
            v136 = v137 = 0;
            while (v136 < v135.length) {
                v134[v136] = v135[v136];
                v136 = v136 + 32;
            }
            if (v136 > v135.length) {
                v134[v135.length][32] = 0;
            }
            revert(Error(v134));
        } else if (!MEM[v133]) {
            require((address(v0)).code.size, Error('Address: call to non-contract'));
        }
        v138 = !MEM[v70];
        if (bool(MEM[v70])) {
            require(v70 + MEM[v70] - v70 >= v66, v67, v67);
            v138 = v139 = MEM[v66 + v70];
            require(!(v139 - bool(v139)), v67, v67);
            v140 = this.code.size;
        }
        require(v138, Error('SafeERC20: ERC20 operation did not succeed'));
        // Unknown jump to Block ['0x12bd', '0x1b8c', '0x1df7']. Refer to 3-address code (TAC);
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v141 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (!v141) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else if (v141) {
            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        require(0x4444c5dc75cb358380d2e3de08a90.code.size);
        v142 = 0x4444c5dc75cb358380d2e3de08a90.settle().gas(msg.gas);
        if (!v142) {
            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else if (v142) {
            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        // Unknown jump to Block 0x1a2d. Refer to 3-address code (TAC);
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (48774 == function_selector >> 224) {
            0x0000be86();
        } else {
            if (0x10d1e85c != function_selector >> 224) {
                if (0x1c58db4f == function_selector >> 224) {
                    wrapETH(uint256);
                } else {
                    if (0x23a69e75 != function_selector >> 224) {
                        if (0x48639c9d != function_selector >> 224) {
                            if (0x6c813d29 != function_selector >> 224) {
                                if (0x715018a6 == function_selector >> 224) {
                                    renounceOwnership();
                                } else if (0x84645f79 != function_selector >> 224) {
                                    if (0x84800812 != function_selector >> 224) {
                                        if (0x8da5cb5b == function_selector >> 224) {
                                            owner();
                                        } else if (0x91dd7346 == function_selector >> 224) {
                                            unlockCallback(bytes);
                                        } else if (0x9e281a98 == function_selector >> 224) {
                                            withdrawToken(address,uint256);
                                        } else if (0xc18c82cc != function_selector >> 224) {
                                            if (0xd2a69501 == function_selector >> 224) {
                                                unwrapETH(uint256);
                                            } else if (0xdf9aee68 != function_selector >> 224) {
                                                if (0xf14210a6 == function_selector >> 224) {
                                                    withdrawETH(uint256);
                                                } else if (0xf2fde38b == function_selector >> 224) {
                                                    transferOwnership(address);
                                                } else if (0xfa461e33 != function_selector >> 224) {
                                                    if (!(0xfe1b3a66 - (function_selector >> 224))) {
                                                        0xfe1b3a66();
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    uniswapV3SwapCallback(int256,int256,bytes);
                }
            }
            0xc18c82cc();
        }
    }
    if (!msg.data.length) {
        receive();
    } else {
        require(msg.sender == address(0xeeb65da7e686bc6a7073fa24a889667ba2636966), Error('denied'));
        v0 = v1 = 0;
        v2 = new bytes[](36);
        MEM[v2.data] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[v2 + 36] = this;
        require(!((v2 + 96 > uint64.max) | (v2 + 96 < v2)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v2.length;
        v4, /* uint256 */ v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).value(v1).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v6 = v7 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v6 = v8 = new bytes[](RETURNDATASIZE());
            require(!((v8 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
            v5 = v8.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
        require(v6 + MEM[v6] - v6 >= 32, v1, v1);
        v9 = this.balance;
        if (bytes1(function_selector) - 0x3200000000000000000000000000000000000000000000000000000000000000) {
            if (0 == (bytes1(function_selector) == 0x3300000000000000000000000000000000000000000000000000000000000000)) {
                require(!(0x3400000000000000000000000000000000000000000000000000000000000000 - bytes1(function_selector)), Error('unknown instruction'));
                v10 = new uint256[](msg.data.length);
                CALLDATACOPY(v10.data, v1, msg.data.length);
                MEM[MEM[64] + msg.data.length + 100] = v1;
                require(!((MEM[64] + (MEM[64] + (msg.data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 100 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + (msg.data.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 100 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                v11, /* uint256 */ v12 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v10).value(v1).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v13 = v14 = new bytes[](RETURNDATASIZE());
                    require(!((v14 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
                    v12 = v14.data;
                    RETURNDATACOPY(v12, 0, RETURNDATASIZE());
                }
                require(v11, Error('v4 unlock failed'));
            } else {
                v15 = 0x3682();
                if (uint8.max == varg4 >> 248) {
                    v16 = v17 = this;
                } else {
                    v16 = v18 = msg.data[20 * (varg4 >> 248) + (msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20) - 1] >> 96;
                }
                v19 = new struct(4);
                require(!((v19 + 128 > uint64.max) | (v19 + 128 < v19)), Panic(65)); // failed memory allocation (too much memory)
                v19.word0 = msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96;
                v19.word1 = bool(varg2 >> 248);
                v19.word2 = v1 - varg3;
                v19.word3 = address(v16);
                ___function_selector__ = bytes12(___function_selector__) | msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96;
                if (0 == bool(varg2 >> 248)) {
                    v20 = v21 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v20 = v22 = 0x1000276a4;
                }
                require(36 <= msg.data.length, v1, v1);
                v23 = v24 = 0x1023b;
                v25 = new uint256[](msg.data.length - 36);
                CALLDATACOPY(v25.data, 36, msg.data.length - 36);
                MEM[MEM[64] + msg.data.length + 192] = v1;
                require(!((MEM[64] + (MEM[64] + (msg.data.length - 5 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 228 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + (msg.data.length - 5 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 228 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                v26 = v27, /* uint256 */ v28 = (msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96).swap(address(v16), bool(varg2 >> 248), v1 - varg3, address(v20), v25).value(v1).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v29 = v30 = new bytes[](RETURNDATASIZE());
                    require(!((v30 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v30 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v30)), Panic(65)); // failed memory allocation (too much memory)
                    v28 = v30.data;
                    RETURNDATACOPY(v28, 0, RETURNDATASIZE());
                }
            }
        } else {
            v31 = 0x3682();
            if (0 == varg2 >> 248) {
                v32 = v33 = 96;
            } else {
                v32 = v34 = 96;
            }
            if (uint8.max == varg4 >> 248) {
                v35 = v36 = this;
            } else {
                v35 = v37 = msg.data[20 * (varg4 >> 248) + (msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20) - 1] >> v32;
            }
            v38 = new struct(4);
            require(!((v38 + 128 > uint64.max) | (v38 + 128 < v38)), Panic(65)); // failed memory allocation (too much memory)
            v38.word0 = msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96;
            v38.word1 = v0;
            v38.word2 = v0;
            v38.word3 = address(v35);
            ___function_selector__ = bytes12(___function_selector__) | msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96;
            require(36 <= msg.data.length, v1, v1);
            v23 = v39 = 711;
            v40 = new uint256[](msg.data.length - 36);
            CALLDATACOPY(v40.data, 36, msg.data.length - 36);
            MEM[MEM[64] + msg.data.length + 160] = v1;
            require(!((MEM[64] + (MEM[64] + (msg.data.length - 5 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 196 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + (msg.data.length - 5 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) - MEM[64] + 196 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v26 = v41, /* uint256 */ v42 = (msg.data[msg.data.length - (byte(msg.data[msg.data.length - 1], v1)) * 20 + 20 * (varg1 >> 248) - 1] >> 96).swap(v0, v0, address(v35), v40).value(v1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v43 = v44 = new bytes[](RETURNDATASIZE());
                require(!((v44 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v44 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v44)), Panic(65)); // failed memory allocation (too much memory)
                v42 = v44.data;
                RETURNDATACOPY(v42, 0, RETURNDATASIZE());
            }
        }
        0x3201(v26);
        // Unknown jump to Block 0x2c7. Refer to 3-address code (TAC);
        v45 = new bytes[](36);
        MEM[v45.data] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        MEM[v45 + 36] = this;
        require(!((v45 + 96 > uint64.max) | (v45 + 96 < v45)), Panic(65)); // failed memory allocation (too much memory)
        v46 = v45.length;
        v47, /* uint256 */ v48 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).value(v1).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v49 = v50 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v49 = v51 = new bytes[](RETURNDATASIZE());
            require(!((v51 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + ((RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
            v48 = v51.data;
            RETURNDATACOPY(v48, 0, RETURNDATASIZE());
        }
        require(v49 + MEM[v49] - v49 >= 32, v1, v1);
        v52 = _SafeAdd(MEM[v49 + 32], this.balance);
        v53 = _SafeAdd(MEM[32 + v6], v9);
        require(v53 < v52, Error(0x706e6c));
        exit;
    }
}
