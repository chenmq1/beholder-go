// Decompiled by library.dedaub.com
// 2025.12.08 07:10 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
uint8 stor_0_0_0; // STORAGE[0x0] bytes 0 to 0
bool _initialize; // STORAGE[0x0] bytes 1 to 1
mapping (uint256 => struct_1289) _getRoleAdmin; // STORAGE[0x65]
mapping (address => bool) _renounceRole; // STORAGE[0x74ac16253630c3523dd1832af9ae131e94f47875b251195873041bb02876d5f7]
mapping (address => bool) mapping_ffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b; // STORAGE[0xffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b]

struct struct_1289 { mapping (address => bool) field0; uint256 field1; };

// Events
RoleGranted(bytes32, address, address);
Initialized(uint8);
RoleRevoked(bytes32, address, address);

function receive() public payable { 
}

function 0x1127(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 96 * varg2 + varg0;
}

function 0x1146(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x142d(uint256 varg0) private { 
    if (!_getRoleAdmin[varg0].field0[msg.sender]) {
        v0 = v1 = msg.sender;
        v2 = v3 = new bytes[](42);
        require(!((v3 + 96 > uint64.max) | (v3 + 96 < v3)), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(v3.data, msg.data.length, 64);
        v4 = 0x2d66(v3);
        MEM8[v4] = 0x30 & 0xFF;
        v5 = 0x2d73(v3);
        MEM8[v5] = 0x78 & 0xFF;
        v2 = v6 = 41;
        while (v2 > 1) {
            require(bool(v0) < 16, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v7 = 0x2d83(v3, v2);
            MEM8[v7] = (byte('0123456789abcdef', bool(v0))) & 0xFF;
            v0 = v0 >> 4;
            v2 = 0x2d94(v2);
        }
        v0 = v8 = 64965;
        v0 = v9 = 5361;
        v2 = v10 = 65000;
        v0 = v11 = 65055;
        require(!bool(v0), Error('Strings: hex length insufficient'));
        v2 = v12 = 0x2e0a(varg0);
        v0 = v13 = 5355;
        v0 = v14 = MEM[64];
        MEM[v14 + 32] = 'AccessControl: account ';
        v15 = v16 = v14 + 32 + 23;
        while (1) {
            v17 = 0;
            while (v17 < MEM[v2]) {
                MEM[v17 + v15] = MEM[v17 + (v2 + 32)];
                v17 += 32;
            }
            MEM[MEM[v2] + v15] = 0;
            // Unknown jump to Block ['0x14f1', '0xfe1f']. Refer to 3-address code (TAC);
            MEM[v15 + MEM[v2]] = ' is missing role ';
            v15 = 17 + (v15 + MEM[v2]);
            // Unknown jump to Block 0x14eb. Refer to 3-address code (TAC);
        }
        MEM[v0] = v15 + MEM[v2] - v0 - 32;
        v18 = v0 + (v15 + MEM[v2] - v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(!((v18 > uint64.max) | (v18 < v0)), Panic(65)); // failed memory allocation (too much memory)
        v19 = new uint256[](v20);
        v20 = MEM[v0];
        v21 = 0;
        while (v21 < v20) {
            MEM[v21 + v19.data] = MEM[v21 + (v0 + 32)];
            v21 += 32;
        }
        MEM[v20 + v19.data] = 0;
        revert(Error(v19));
    } else {
        return ;
    }
}

function 0x158e(address varg0) private { 
    if (!_renounceRole[varg0]) {
        _getRoleAdmin[0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95].field0[varg0] = 1;
        emit RoleGranted(0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95, varg0, msg.sender);
        return ;
    } else {
        return ;
    }
}

function 0x1659(address varg0) private { 
    if (!mapping_ffdfc1249c027f9191656349feb0761381bb32c9f557e01f419fd08754bf5a1b[varg0]) {
        _getRoleAdmin[0].field0[varg0] = 1;
        emit RoleGranted(0, varg0, msg.sender);
        return ;
    } else {
        return ;
    }
}

function MAINTAINER_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95;
}

function 0x1702(uint256 varg0, address varg1) private { 
    if (_getRoleAdmin[varg0].field0[varg1]) {
        _getRoleAdmin[varg0].field0[varg1] = 0;
        emit RoleRevoked(varg0, varg1, msg.sender);
        return ;
    } else {
        return ;
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x1659(newOwner);
    if (_getRoleAdmin[0].field0[address(tx.origin)]) {
        _getRoleAdmin[0].field0[address(tx.origin)] = 0;
        emit RoleRevoked(0, tx.origin, msg.sender);
        return ;
    } else {
        return ;
    }
}

function 0xeb4897d4(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0.length * 96 + (4 + varg0) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    0x181b(varg1.data, varg1.length);
    v0 = v1 = 0;
    while (1) {
        if (v0 < varg0.length) {
            v2 = 0x1127(varg0.data, varg0.length, v0);
            if (!msg.data[v2 + 32]) {
                require(!(address(msg.data[v2]) - msg.data[v2]));
                v3 = 0x1920(msg.data[v2], this);
                require(v3 - 1 <= v3, Panic(17)); // arithmetic overflow or underflow
                v4 = v5 = 1;
                require(!(address(msg.data[v2]) - msg.data[v2]));
                require(!(address(msg.data[v2 + 64]) - msg.data[v2 + 64]));
                0x282c(msg.data[v2], msg.data[v2 + 64], v3 - 1);
            } else {
                v4 = v6 = 1;
                require(!(address(msg.data[v2]) - msg.data[v2]));
                require(!(address(msg.data[v2 + 64]) - msg.data[v2 + 64]));
                0x282c(msg.data[v2], msg.data[v2 + 64], msg.data[v2 + 32]);
            }
            v0 = v0 + v4;
            continue;
        } else {
            exit;
        }
    }
}

function removeMaintainer(address removedMaintainer) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    if (_getRoleAdmin[0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95].field0[removedMaintainer]) {
        _getRoleAdmin[0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95].field0[removedMaintainer] = 0;
        emit RoleRevoked(0x339759585899103d2ace64958e37e18ccb0504652c81d4a1b8aa80fe2126ab95, removedMaintainer, msg.sender);
        v0 = this.code.size;
        return ;
    } else {
        return ;
    }
}

function 0x181b(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    while (v0 < varg1) {
        require(v0 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg0 + (v0 << 5)] < msg.data.length - varg0 - 63);
        v2 = msg.data[varg0 + msg.data[varg0 + (v0 << 5)]];
        require(!(address(v2) - v2));
        v3 = 0x1920(v2, this);
        require(v3, SwapTotalAmountCannotBeZero());
        require(v0 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg0 + (v0 << 5)] < msg.data.length - varg0 - 63);
        v4 = varg0 + msg.data[varg0 + (v0 << 5)];
        require(msg.data[v4 + 32] < msg.data.length - v4 - 31);
        require(msg.data[v4 + msg.data[v4 + 32]] <= uint64.max);
        require(v4 + msg.data[v4 + 32] + 32 <= msg.data.length - (msg.data[v4 + msg.data[v4 + 32]] << 5));
        v5 = v6 = 0;
        while (v5 < msg.data[v4 + msg.data[v4 + 32]]) {
            require(v5 < msg.data[v4 + msg.data[v4 + 32]], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(msg.data[v4 + msg.data[v4 + 32] + 32 + (v5 << 5)] < msg.data.length - (v4 + msg.data[v4 + 32] + 32) - 159);
            v7 = v4 + msg.data[v4 + 32] + 32 + msg.data[v4 + msg.data[v4 + 32] + 32 + (v5 << 5)];
            v8 = _SafeMul(v3, msg.data[v7 + 32]);
            v9 = v10 = v8 / 10 ** 18;
            require(v10, SwapAmountCannotBeZero());
            if (msg.data[v7 + 128] >> 248) {
                if ((msg.data[v7 + 128] >> 248) - 1) {
                    if ((msg.data[v7 + 128] >> 248) - 2) {
                        if ((msg.data[v7 + 128] >> 248) - 3) {
                            if ((msg.data[v7 + 128] >> 248) - 4) {
                                if ((msg.data[v7 + 128] >> 248) - 5) {
                                    v11 = 0x1a10(msg.data[v7 + 128] >> 248);
                                    MEM[MEM[64] + 32] = 'Incorrect call_type: ';
                                    v12 = 0;
                                    while (v12 < v11.length) {
                                        MEM[v12 + (MEM[64] + 53)] = v11[v12];
                                        v12 += 32;
                                    }
                                    MEM[v11.length + (MEM[64] + 53)] = 0;
                                    require(!((MEM[64] + (MEM[64] + v11.length - MEM[64] + 53 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v11.length - MEM[64] + 53 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v13 = new uint256[](MEM[64] + v11.length - MEM[64] + 21);
                                    v14 = 0;
                                    while (v14 < MEM[64] + v11.length - MEM[64] + 21) {
                                        MEM[v14 + v13.data] = MEM[v14 + (MEM[64] + 32)];
                                        v14 += 32;
                                    }
                                    MEM[MEM[64] + v11.length - MEM[64] + 21 + v13.data] = 0;
                                    revert(Error(v13));
                                } else {
                                    MEM[MEM[64] + 32] = 96;
                                    require(!(address(msg.data[v7]) - msg.data[v7]));
                                    MEM[MEM[64] + 32 + 96] = address(msg.data[v7]);
                                    MEM[MEM[64] + 32 + 128] = msg.data[v7 + 32];
                                    require(!(address(msg.data[v7 + 64]) - msg.data[v7 + 64]));
                                    MEM[MEM[64] + 32 + 160] = address(msg.data[v7 + 64]);
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                    require(v7 + msg.data[v7 + 96] + 32 <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                    MEM[MEM[64] + 32 + 192] = 160;
                                    MEM[MEM[64] + 32 + (uint8.max + 1)] = msg.data[v7 + msg.data[v7 + 96]];
                                    CALLDATACOPY(MEM[64] + 32 + (uint8.max + 1) + 32, v7 + msg.data[v7 + 96] + 32, msg.data[v7 + msg.data[v7 + 96]]);
                                    MEM[MEM[64] + 32 + (uint8.max + 1) + msg.data[v7 + msg.data[v7 + 96]] + 32] = 0;
                                    MEM[MEM[64] + 32 + 224] = msg.data[v7 + 128];
                                    MEM[MEM[64] + 32 + 32] = address(v2);
                                    MEM[MEM[64] + 32 + 64] = v10;
                                    require(!((MEM[64] + ((msg.data[v7 + msg.data[v7 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + ((msg.data[v7 + msg.data[v7 + 96]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (MEM[64] + 32 + (uint8.max + 1)) + 32 - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                                    MEM[MEM[64] + 4] = 32;
                                    MEM[MEM[64] + 4 + 32] = v15;
                                    v16 = 0;
                                    while (v16 < v15) {
                                        MEM[v16 + (MEM[64] + 4 + 32 + 32)] = MEM[v16 + (MEM[64] + 32)];
                                        v16 += 32;
                                    }
                                    MEM[v15 + (MEM[64] + 4 + 32 + 32)] = 0;
                                    v17 = address(0x4444c5dc75cb358380d2e3de08a90).call(MEM[MEM[64]:MEM[64] + vb4eV0xb65V0x2707V0x18dc + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 + MEM[64] + 4 + 32 + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                    if (v17) {
                                        if (v17) {
                                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                                            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                                            v18 = 0x2347(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000, MEM[64] + RETURNDATASIZE());
                                        }
                                    }
                                }
                            } else {
                                require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                if (uint32(msg.data[v7 + 128] >> 208) - uint32.max) {
                                    v9 = v19 = msg.data[32 + (v7 + msg.data[v7 + 96]) + uint32(msg.data[v7 + 128] >> 208) - 32];
                                    if (v19 < v10) {
                                    }
                                    v20 = this.code.size;
                                }
                                v21 = 0x2ad9(v2, v9, uint8(msg.data[v7 + 128] >> 240), address(msg.data[v7 + 128]));
                                if (uint32(msg.data[v7 + 128] >> 208) == uint32.max) {
                                    v22 = v23 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v24 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                                    require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                                    CALLDATACOPY(v24.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                                    v24[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                                } else {
                                    v22 = v25 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v24 = v26 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                                    require(!((v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v26 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v26)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                                    CALLDATACOPY(v26.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                                    v26[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                                    MEM[v26 + uint32(msg.data[v7 + 128] >> 208)] = v9;
                                }
                                require(!(address(msg.data[v7 + v22]) - msg.data[v7 + v22]));
                                v27 = msg.data[v7 + v22].call(MEM[v13eaV0x10a010x3736V0x2ed20x24d1V0x18dc + 32:v13eaV0x10a010x3736V0x2ed20x24d1V0x18dc + 32 + MEM[v13eaV0x10a010x3736V0x2ed20x24d1V0x18dc]], MEM[0:0]).value(v21).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v28 = v29 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v28 = new bytes[](RETURNDATASIZE());
                                    require(!((v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v28 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v28)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v28.data, 0, RETURNDATASIZE());
                                }
                                if (!v27) {
                                    v30 = 0x1a10(v9);
                                    MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
                                    v31 = 0;
                                    while (v31 < MEM[v28]) {
                                        MEM[v31 + (MEM[64] + 53)] = MEM[v31 + (v28 + 32)];
                                        v31 += 32;
                                    }
                                    MEM[MEM[v28] + (MEM[64] + 53)] = 0;
                                    MEM[MEM[64] + MEM[v28] + 53] = '. Swap amount: ';
                                    v32 = 0;
                                    while (v32 < v30.length) {
                                        MEM[v32 + (MEM[64] + MEM[v28] + 68)] = v30[v32];
                                        v32 += 32;
                                    }
                                    MEM[v30.length + (MEM[64] + MEM[v28] + 68)] = 0;
                                    require(!((MEM[64] + (MEM[64] + MEM[v28] + v30.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v28] + v30.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v33 = new uint256[](MEM[64] + MEM[v28] + v30.length - MEM[64] + 36);
                                    v34 = 0;
                                    while (v34 < MEM[64] + MEM[v28] + v30.length - MEM[64] + 36) {
                                        MEM[v34 + v33.data] = MEM[v34 + (MEM[64] + 32)];
                                        v34 += 32;
                                    }
                                    MEM[MEM[64] + MEM[v28] + v30.length - MEM[64] + 36 + v33.data] = 0;
                                    revert(Error(v33));
                                }
                            }
                        } else {
                            v35 = 0x2ad9(v2, v10, uint8(msg.data[v7 + 128] >> 240), address(msg.data[v7 + 128]));
                            require(!(address(msg.data[v7 + 64]) - msg.data[v7 + 64]));
                            v36, /* uint256 */ v37 = address(0x7160570bb153edd0ea1775ec2b2ac9b65f1ab61b).deposit(address(v2), address(msg.data[v7 + 64])).gas(msg.gas);
                            if (v36) {
                                if (v36) {
                                    if (32 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                        v38 = v39 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 32;
                                        v38 = v40 = MEM[64] + 32;
                                    }
                                    require(v38 - MEM[64] >= 32);
                                    v41 = this.code.size;
                                }
                                require(!(address(msg.data[v7 + 64]) - msg.data[v7 + 64]));
                                require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                CALLDATACOPY(MEM[64], 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                                MEM[MEM[64] + msg.data[v7 + msg.data[v7 + 96]]] = 0;
                                v42 = msg.data[v7 + 64].call(MEM[MEM[64]:MEM[64] + MEM[64] + msg.data[v1818 + msg.data[v1818 + 96]] - MEM[64]], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v43 = v44 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v43 = new bytes[](RETURNDATASIZE());
                                    require(!((v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v43 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v43)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());
                                }
                                if (!v42) {
                                    v45 = 0x1a10(v10);
                                    MEM[MEM[64] + 32] = 'SyncSwap swap failed. Reason: ';
                                    v46 = 0;
                                    while (v46 < MEM[v43]) {
                                        MEM[v46 + (MEM[64] + 62)] = MEM[v46 + (v43 + 32)];
                                        v46 += 32;
                                    }
                                    MEM[MEM[v43] + (MEM[64] + 62)] = 0;
                                    MEM[MEM[64] + MEM[v43] + 62] = '. Swap amount: ';
                                    v47 = 0;
                                    while (v47 < v45.length) {
                                        MEM[v47 + (MEM[64] + MEM[v43] + 77)] = v45[v47];
                                        v47 += 32;
                                    }
                                    MEM[v45.length + (MEM[64] + MEM[v43] + 77)] = 0;
                                    require(!((MEM[64] + (MEM[64] + MEM[v43] + v45.length - MEM[64] + 77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v43] + v45.length - MEM[64] + 77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v48 = new uint256[](MEM[64] + MEM[v43] + v45.length - MEM[64] + 45);
                                    v49 = 0;
                                    while (v49 < MEM[64] + MEM[v43] + v45.length - MEM[64] + 45) {
                                        MEM[v49 + v48.data] = MEM[v49 + (MEM[64] + 32)];
                                        v49 += 32;
                                    }
                                    MEM[MEM[64] + MEM[v43] + v45.length - MEM[64] + 45 + v48.data] = 0;
                                    revert(Error(v48));
                                }
                            }
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (0 == (uint8(msg.data[v7 + 128] >> 240) == 3)) {
                            if (0 == (uint8(msg.data[v7 + 128] >> 240) == 4)) {
                                if (0 == (uint8(msg.data[v7 + 128] >> 240) == 5)) {
                                    v50 = 0x1a10(uint8(msg.data[v7 + 128] >> 240));
                                    MEM[MEM[64] + 32] = 'Unknown source interaction for A';
                                    MEM[MEM[64] + 64] = 'mbient call: ';
                                    v51 = 0;
                                    while (v51 < v50.length) {
                                        MEM[v51 + (MEM[64] + 77)] = v50[v51];
                                        v51 += 32;
                                    }
                                    MEM[v50.length + (MEM[64] + 77)] = 0;
                                    require(!((MEM[64] + (MEM[64] + v50.length - MEM[64] + 77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v50.length - MEM[64] + 77 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v52 = new uint256[](MEM[64] + v50.length - MEM[64] + 45);
                                    v53 = 0;
                                    while (v53 < MEM[64] + v50.length - MEM[64] + 45) {
                                        MEM[v53 + v52.data] = MEM[v53 + (MEM[64] + 32)];
                                        v53 += 32;
                                    }
                                    MEM[MEM[64] + v50.length - MEM[64] + 45 + v52.data] = 0;
                                    revert(Error(v52));
                                } else {
                                    v54 = this.balance;
                                    if (uint32(msg.data[v7 + 128] >> 208) == uint32.max) {
                                        v55 = v56 = 64;
                                        require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                        v57 = msg.data[v7 + msg.data[v7 + 96]];
                                        require(v57 <= uint64.max);
                                        require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v57);
                                        require(v57 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v58 = new bytes[](v57);
                                        require(!((v58 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v57) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v58 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v57) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v58)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v7 + msg.data[v7 + 96]) + v57 <= msg.data.length);
                                        CALLDATACOPY(v58.data, 32 + (v7 + msg.data[v7 + 96]), v57);
                                        v58[v57] = 0;
                                    } else {
                                        v55 = v59 = 64;
                                        require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                        v60 = msg.data[v7 + msg.data[v7 + 96]];
                                        require(v60 <= uint64.max);
                                        require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v60);
                                        require(v60 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v58 = v61 = new bytes[](v60);
                                        require(!((v61 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v60) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v61 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v60) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v61)), Panic(65)); // failed memory allocation (too much memory)
                                        require(32 + (v7 + msg.data[v7 + 96]) + v60 <= msg.data.length);
                                        CALLDATACOPY(v61.data, 32 + (v7 + msg.data[v7 + 96]), v60);
                                        v61[v60] = 0;
                                        MEM[v61 + uint32(msg.data[v7 + 128] >> 208)] = v10;
                                    }
                                    require(!(address(msg.data[v7 + v55]) - msg.data[v7 + v55]));
                                    v62 = msg.data[v7 + v55].call(MEM[v13eaV0x109b5V0x31dfV0x2533V0x18dc + 32:v13eaV0x109b5V0x31dfV0x2533V0x18dc + 32 + MEM[v13eaV0x109b5V0x31dfV0x2533V0x18dc]], MEM[0:0]).gas(msg.gas);
                                    if (!RETURNDATASIZE()) {
                                        v63 = v64 = 96;
                                    } else {
                                        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                        v63 = new bytes[](RETURNDATASIZE());
                                        require(!((v63 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v63 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v63)), Panic(65)); // failed memory allocation (too much memory)
                                        RETURNDATACOPY(v63.data, 0, RETURNDATASIZE());
                                    }
                                    if (!v62) {
                                        v65 = 0x1a10(v10);
                                        MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
                                        v66 = 0;
                                        while (v66 < MEM[v63]) {
                                            MEM[v66 + (MEM[64] + 53)] = MEM[v66 + (v63 + 32)];
                                            v66 += 32;
                                        }
                                        MEM[MEM[v63] + (MEM[64] + 53)] = 0;
                                        MEM[MEM[64] + MEM[v63] + 53] = '. Swap amount: ';
                                        v67 = 0;
                                        while (v67 < v65.length) {
                                            MEM[v67 + (MEM[64] + MEM[v63] + 68)] = v65[v67];
                                            v67 += 32;
                                        }
                                        MEM[v65.length + (MEM[64] + MEM[v63] + 68)] = 0;
                                        require(!((MEM[64] + (MEM[64] + MEM[v63] + v65.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v63] + v65.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        v68 = new uint256[](MEM[64] + MEM[v63] + v65.length - MEM[64] + 36);
                                        v69 = 0;
                                        while (v69 < MEM[64] + MEM[v63] + v65.length - MEM[64] + 36) {
                                            MEM[v69 + v68.data] = MEM[v69 + (MEM[64] + 32)];
                                            v69 += 32;
                                        }
                                        MEM[MEM[64] + MEM[v63] + v65.length - MEM[64] + 36 + v68.data] = 0;
                                        revert(Error(v68));
                                    } else {
                                        v70 = this.balance;
                                        if (v70 <= v54) {
                                            v71 = 0x1a10(v54);
                                            v72 = 0x1a10(v70);
                                            MEM[MEM[64] + 32] = 'Ambient final amount reduced. Be';
                                            MEM[MEM[64] + 64] = 0x666f72653a200000000000000000000000000000000000000000000000000000;
                                            v73 = 0;
                                            while (v73 < v71.length) {
                                                MEM[v73 + (MEM[64] + 70)] = v71[v73];
                                                v73 += 32;
                                            }
                                            MEM[v71.length + (MEM[64] + 70)] = 0;
                                            MEM[MEM[64] + v71.length + 70] = '. After: ';
                                            v74 = 0;
                                            while (v74 < v72.length) {
                                                MEM[v74 + (MEM[64] + v71.length + 79)] = v72[v74];
                                                v74 += 32;
                                            }
                                            MEM[v72.length + (MEM[64] + v71.length + 79)] = 0;
                                            require(!((MEM[64] + (MEM[64] + v71.length + v72.length - MEM[64] + 79 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v71.length + v72.length - MEM[64] + 79 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                            v75 = new uint256[](MEM[64] + v71.length + v72.length - MEM[64] + 47);
                                            v76 = 0;
                                            while (v76 < MEM[64] + v71.length + v72.length - MEM[64] + 47) {
                                                MEM[v76 + v75.data] = MEM[v76 + (MEM[64] + 32)];
                                                v76 += 32;
                                            }
                                            MEM[MEM[64] + v71.length + v72.length - MEM[64] + 47 + v75.data] = 0;
                                            revert(Error(v75));
                                        } else {
                                            v77 = v78 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                            v79 = v80 = _SafeSub(v70, v54);
                                        }
                                    }
                                }
                            } else {
                                v81 = 0x2ac2(v2, v10, address(msg.data[v7 + 128]));
                                v82 = this.balance;
                                if (uint32(msg.data[v7 + 128] >> 208) == uint32.max) {
                                    v83 = v84 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    v85 = msg.data[v7 + msg.data[v7 + 96]];
                                    require(v85 <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v85);
                                    require(v85 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v86 = new bytes[](v85);
                                    require(!((v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v85) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v86 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v85) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v86)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + v85 <= msg.data.length);
                                    CALLDATACOPY(v86.data, 32 + (v7 + msg.data[v7 + 96]), v85);
                                    v86[v85] = 0;
                                } else {
                                    v83 = v87 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    v88 = msg.data[v7 + msg.data[v7 + 96]];
                                    require(v88 <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v88);
                                    require(v88 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v86 = v89 = new bytes[](v88);
                                    require(!((v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v88) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v89 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v88) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v89)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + v88 <= msg.data.length);
                                    CALLDATACOPY(v89.data, 32 + (v7 + msg.data[v7 + 96]), v88);
                                    v89[v88] = 0;
                                    MEM[v89 + uint32(msg.data[v7 + 128] >> 208)] = v10;
                                }
                                require(!(address(msg.data[v7 + v83]) - msg.data[v7 + v83]));
                                v90 = msg.data[v7 + v83].call(MEM[v13eaV0x109b5V0x3105V0x2533V0x18dc + 32:v13eaV0x109b5V0x3105V0x2533V0x18dc + 32 + MEM[v13eaV0x109b5V0x3105V0x2533V0x18dc]], MEM[0:0]).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v91 = v92 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v91 = new bytes[](RETURNDATASIZE());
                                    require(!((v91 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v91 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v91)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v91.data, 0, RETURNDATASIZE());
                                }
                                if (!v90) {
                                    v93 = 0x1a10(v10);
                                    MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
                                    v94 = 0;
                                    while (v94 < MEM[v91]) {
                                        MEM[v94 + (MEM[64] + 53)] = MEM[v94 + (v91 + 32)];
                                        v94 += 32;
                                    }
                                    MEM[MEM[v91] + (MEM[64] + 53)] = 0;
                                    MEM[MEM[64] + MEM[v91] + 53] = '. Swap amount: ';
                                    v95 = 0;
                                    while (v95 < v93.length) {
                                        MEM[v95 + (MEM[64] + MEM[v91] + 68)] = v93[v95];
                                        v95 += 32;
                                    }
                                    MEM[v93.length + (MEM[64] + MEM[v91] + 68)] = 0;
                                    require(!((MEM[64] + (MEM[64] + MEM[v91] + v93.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v91] + v93.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v96 = new uint256[](MEM[64] + MEM[v91] + v93.length - MEM[64] + 36);
                                    v97 = 0;
                                    while (v97 < MEM[64] + MEM[v91] + v93.length - MEM[64] + 36) {
                                        MEM[v97 + v96.data] = MEM[v97 + (MEM[64] + 32)];
                                        v97 += 32;
                                    }
                                    MEM[MEM[64] + MEM[v91] + v93.length - MEM[64] + 36 + v96.data] = 0;
                                    revert(Error(v96));
                                } else {
                                    v98 = this.balance;
                                    if (v98 <= v82) {
                                        v99 = 0x1a10(v82);
                                        v100 = 0x1a10(v98);
                                        MEM[MEM[64] + 32] = 'Ambient final amount reduced. Be';
                                        MEM[MEM[64] + 64] = 0x666f72653a200000000000000000000000000000000000000000000000000000;
                                        v101 = 0;
                                        while (v101 < v99.length) {
                                            MEM[v101 + (MEM[64] + 70)] = v99[v101];
                                            v101 += 32;
                                        }
                                        MEM[v99.length + (MEM[64] + 70)] = 0;
                                        MEM[MEM[64] + v99.length + 70] = '. After: ';
                                        v102 = 0;
                                        while (v102 < v100.length) {
                                            MEM[v102 + (MEM[64] + v99.length + 79)] = v100[v102];
                                            v102 += 32;
                                        }
                                        MEM[v100.length + (MEM[64] + v99.length + 79)] = 0;
                                        require(!((MEM[64] + (MEM[64] + v99.length + v100.length - MEM[64] + 79 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v99.length + v100.length - MEM[64] + 79 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        v103 = new uint256[](MEM[64] + v99.length + v100.length - MEM[64] + 47);
                                        v104 = 0;
                                        while (v104 < MEM[64] + v99.length + v100.length - MEM[64] + 47) {
                                            MEM[v104 + v103.data] = MEM[v104 + (MEM[64] + 32)];
                                            v104 += 32;
                                        }
                                        MEM[MEM[64] + v99.length + v100.length - MEM[64] + 47 + v103.data] = 0;
                                        revert(Error(v103));
                                    } else {
                                        v77 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                                        v79 = _SafeSub(v98, v82);
                                    }
                                }
                            }
                            require(v77.code.size);
                            v105 = v77.deposit().value(v79).gas(msg.gas);
                            if (v105) {
                                if (v105) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                }
                            }
                        } else {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                            v106 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v10).gas(msg.gas);
                            if (v106) {
                                if (v106) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                    v107 = this.code.size;
                                }
                                if (uint32(msg.data[v7 + 128] >> 208) == uint32.max) {
                                    v108 = v109 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v110 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                                    require(!((v110 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v110 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v110)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                                    CALLDATACOPY(v110.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                                    v110[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                                } else {
                                    v108 = v111 = 64;
                                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v110 = v112 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                                    require(!((v112 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v112 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v112)), Panic(65)); // failed memory allocation (too much memory)
                                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                                    CALLDATACOPY(v112.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                                    v112[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                                    MEM[v112 + uint32(msg.data[v7 + 128] >> 208)] = v10;
                                }
                                require(!(address(msg.data[v7 + v108]) - msg.data[v7 + v108]));
                                v113 = msg.data[v7 + v108].call(MEM[v13eaV0x10a010x3010V0x2533V0x18dc + 32:v13eaV0x10a010x3010V0x2533V0x18dc + 32 + MEM[v13eaV0x10a010x3010V0x2533V0x18dc]], MEM[0:0]).value(v10).gas(msg.gas);
                                if (!RETURNDATASIZE()) {
                                    v114 = v115 = 96;
                                } else {
                                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    v114 = new bytes[](RETURNDATASIZE());
                                    require(!((v114 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v114 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v114)), Panic(65)); // failed memory allocation (too much memory)
                                    RETURNDATACOPY(v114.data, 0, RETURNDATASIZE());
                                }
                                if (!v113) {
                                    v116 = 0x1a10(v10);
                                    MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
                                    v117 = 0;
                                    while (v117 < MEM[v114]) {
                                        MEM[v117 + (MEM[64] + 53)] = MEM[v117 + (v114 + 32)];
                                        v117 += 32;
                                    }
                                    MEM[MEM[v114] + (MEM[64] + 53)] = 0;
                                    MEM[MEM[64] + MEM[v114] + 53] = '. Swap amount: ';
                                    v118 = 0;
                                    while (v118 < v116.length) {
                                        MEM[v118 + (MEM[64] + MEM[v114] + 68)] = v116[v118];
                                        v118 += 32;
                                    }
                                    MEM[v116.length + (MEM[64] + MEM[v114] + 68)] = 0;
                                    require(!((MEM[64] + (MEM[64] + MEM[v114] + v116.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v114] + v116.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    v119 = new uint256[](MEM[64] + MEM[v114] + v116.length - MEM[64] + 36);
                                    v120 = 0;
                                    while (v120 < MEM[64] + MEM[v114] + v116.length - MEM[64] + 36) {
                                        MEM[v120 + v119.data] = MEM[v120 + (MEM[64] + 32)];
                                        v120 += 32;
                                    }
                                    MEM[MEM[64] + MEM[v114] + v116.length - MEM[64] + 36 + v119.data] = 0;
                                    revert(Error(v119));
                                }
                            }
                        }
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    }
                } else {
                    if (0 == (uint32(msg.data[v7 + 128] >> 208) != uint32.max)) {
                        require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                        v121 = msg.data[v7 + msg.data[v7 + 96]];
                        require(v121 <= uint64.max);
                        require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v121);
                        require(v121 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v122 = new bytes[](v121);
                        require(!((v122 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v121) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v122 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v121) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v122)), Panic(65)); // failed memory allocation (too much memory)
                        require(32 + (v7 + msg.data[v7 + 96]) + v121 <= msg.data.length);
                        CALLDATACOPY(v122.data, 32 + (v7 + msg.data[v7 + 96]), v121);
                        v122[v121] = 0;
                        require(!(address(msg.data[v7 + 64]) - msg.data[v7 + 64]));
                        v123 = v124 = msg.data[v7 + 64].staticcall(MEM[v13eaV0x10922V0x251fV0x18dc.data:v13eaV0x10922V0x251fV0x18dc.data + v13eaV0x10922V0x251fV0x18dc.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v125 = v126 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v125 = new bytes[](RETURNDATASIZE());
                            require(!((v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v125 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v125)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v125.data, 0, RETURNDATASIZE());
                        }
                    } else {
                        require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                        v127 = msg.data[v7 + msg.data[v7 + 96]];
                        require(v127 <= uint64.max);
                        require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - v127);
                        require(v127 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v128 = new bytes[](v127);
                        require(!((v128 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v127) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v128 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v127) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v128)), Panic(65)); // failed memory allocation (too much memory)
                        require(32 + (v7 + msg.data[v7 + 96]) + v127 <= msg.data.length);
                        CALLDATACOPY(v128.data, 32 + (v7 + msg.data[v7 + 96]), v127);
                        v128[v127] = 0;
                        MEM[v128 + uint32(msg.data[v7 + 128] >> 208)] = v10;
                        require(!(address(msg.data[v7 + 64]) - msg.data[v7 + 64]));
                        v123 = v129 = msg.data[v7 + 64].staticcall(MEM[v13eaV0x379bV0x251fV0x18dc.data:v13eaV0x379bV0x251fV0x18dc.data + v13eaV0x379bV0x251fV0x18dc.length], MEM[0:0]).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v125 = v130 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v125 = v131 = new bytes[](RETURNDATASIZE());
                            require(!((v131 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v131 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v131)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v131.data, 0, RETURNDATASIZE());
                        }
                    }
                    if (!v123) {
                        v132 = 0x1a10(v10);
                        MEM[MEM[64] + 32] = 'Swap precalculation failed. Reas';
                        MEM[MEM[64] + 64] = 0x6f6e3a2000000000000000000000000000000000000000000000000000000000;
                        v133 = 0;
                        while (v133 < MEM[v125]) {
                            MEM[v133 + (MEM[64] + 68)] = MEM[v133 + (v125 + 32)];
                            v133 += 32;
                        }
                        MEM[MEM[v125] + (MEM[64] + 68)] = 0;
                        MEM[MEM[64] + MEM[v125] + 68] = '. Swap amount: ';
                        v134 = 0;
                        while (v134 < v132.length) {
                            MEM[v134 + (MEM[64] + MEM[v125] + 83)] = v132[v134];
                            v134 += 32;
                        }
                        MEM[v132.length + (MEM[64] + MEM[v125] + 83)] = 0;
                        require(!((MEM[64] + (MEM[64] + MEM[v125] + v132.length - MEM[64] + 83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v125] + v132.length - MEM[64] + 83 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        v135 = new uint256[](MEM[64] + MEM[v125] + v132.length - MEM[64] + 51);
                        v136 = 0;
                        while (v136 < MEM[64] + MEM[v125] + v132.length - MEM[64] + 51) {
                            MEM[v136 + v135.data] = MEM[v136 + (MEM[64] + 32)];
                            v136 += 32;
                        }
                        MEM[MEM[64] + MEM[v125] + v132.length - MEM[64] + 51 + v135.data] = 0;
                        revert(Error(v135));
                    } else {
                        require(v125 + MEM[v125] + 32 - (v125 + 32) >= 128);
                        require(!(address(MEM[v125 + 32]) - MEM[v125 + 32]));
                        require(!(address(MEM[v125 + 32 + 32]) - MEM[v125 + 32 + 32]));
                        require(MEM[v125 + 32 + 96] <= uint64.max);
                        v137 = 0x2347(v125 + 32 + MEM[v125 + 32 + 96], v125 + MEM[v125] + 32);
                        v138 = 0x2ad9(v2, MEM[v125 + 32 + 64], uint8(msg.data[v7 + 128] >> 240), address(MEM[v125 + 32 + 32]));
                        v139 = address(MEM[v125 + 32]).call(MEM[v334d_0x0V0x3461V0x251fV0x18dc.data:v334d_0x0V0x3461V0x251fV0x18dc.data + v334d_0x0V0x3461V0x251fV0x18dc.length], MEM[0:0]).value(v138).gas(msg.gas);
                        if (!RETURNDATASIZE()) {
                            v140 = v141 = 96;
                        } else {
                            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            v140 = new bytes[](RETURNDATASIZE());
                            require(!((v140 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v140 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v140)), Panic(65)); // failed memory allocation (too much memory)
                            RETURNDATACOPY(v140.data, 0, RETURNDATASIZE());
                        }
                        if (!v139) {
                            v142 = 0x1a10(v10);
                            MEM[MEM[64] + 32] = 'Precalculated swap failed. Reaso';
                            MEM[MEM[64] + 64] = 0x6e3a200000000000000000000000000000000000000000000000000000000000;
                            v143 = 0;
                            while (v143 < MEM[v140]) {
                                MEM[v143 + (MEM[64] + 67)] = MEM[v143 + (v140 + 32)];
                                v143 += 32;
                            }
                            MEM[MEM[v140] + (MEM[64] + 67)] = 0;
                            MEM[MEM[64] + MEM[v140] + 67] = '. Swap amount: ';
                            v144 = 0;
                            while (v144 < v142.length) {
                                MEM[v144 + (MEM[64] + MEM[v140] + 82)] = v142[v144];
                                v144 += 32;
                            }
                            MEM[v142.length + (MEM[64] + MEM[v140] + 82)] = 0;
                            require(!((MEM[64] + (MEM[64] + MEM[v140] + v142.length - MEM[64] + 82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v140] + v142.length - MEM[64] + 82 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            v145 = new uint256[](MEM[64] + MEM[v140] + v142.length - MEM[64] + 50);
                            v146 = 0;
                            while (v146 < MEM[64] + MEM[v140] + v142.length - MEM[64] + 50) {
                                MEM[v146 + v145.data] = MEM[v146 + (MEM[64] + 32)];
                                v146 += 32;
                            }
                            MEM[MEM[64] + MEM[v140] + v142.length - MEM[64] + 50 + v145.data] = 0;
                            revert(Error(v145));
                        }
                    }
                }
            } else {
                v147 = 0x2ad9(v2, v10, uint8(msg.data[v7 + 128] >> 240), address(msg.data[v7 + 128]));
                if (uint32(msg.data[v7 + 128] >> 208) == uint32.max) {
                    v148 = v149 = 64;
                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v150 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                    require(!((v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v150 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v150)), Panic(65)); // failed memory allocation (too much memory)
                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                    CALLDATACOPY(v150.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                    v150[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                } else {
                    v148 = v151 = 64;
                    require(msg.data[v7 + 96] < msg.data.length - v7 - 31);
                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max);
                    require(32 + (v7 + msg.data[v7 + 96]) <= msg.data.length - msg.data[v7 + msg.data[v7 + 96]]);
                    require(msg.data[v7 + msg.data[v7 + 96]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v150 = v152 = new bytes[](msg.data[v7 + msg.data[v7 + 96]]);
                    require(!((v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v152 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v7 + msg.data[v7 + 96]]) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v152)), Panic(65)); // failed memory allocation (too much memory)
                    require(32 + (v7 + msg.data[v7 + 96]) + msg.data[v7 + msg.data[v7 + 96]] <= msg.data.length);
                    CALLDATACOPY(v152.data, 32 + (v7 + msg.data[v7 + 96]), msg.data[v7 + msg.data[v7 + 96]]);
                    v152[msg.data[v7 + msg.data[v7 + 96]]] = 0;
                    MEM[v152 + uint32(msg.data[v7 + 128] >> 208)] = v10;
                }
                require(!(address(msg.data[v7 + v148]) - msg.data[v7 + v148]));
                v153 = msg.data[v7 + v148].call(MEM[v13eaV0x10a010x3736V0x2ed20x2ea7V0x250bV0x18dc + 32:v13eaV0x10a010x3736V0x2ed20x2ea7V0x250bV0x18dc + 32 + MEM[v13eaV0x10a010x3736V0x2ed20x2ea7V0x250bV0x18dc]], MEM[0:0]).value(v147).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v154 = v155 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v154 = new bytes[](RETURNDATASIZE());
                    require(!((v154 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v154 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v154)), Panic(65)); // failed memory allocation (too much memory)
                    RETURNDATACOPY(v154.data, 0, RETURNDATASIZE());
                }
                if (!v153) {
                    v156 = 0x1a10(v10);
                    MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
                    v157 = 0;
                    while (v157 < MEM[v154]) {
                        MEM[v157 + (MEM[64] + 53)] = MEM[v157 + (v154 + 32)];
                        v157 += 32;
                    }
                    MEM[MEM[v154] + (MEM[64] + 53)] = 0;
                    MEM[MEM[64] + MEM[v154] + 53] = '. Swap amount: ';
                    v158 = 0;
                    while (v158 < v156.length) {
                        MEM[v158 + (MEM[64] + MEM[v154] + 68)] = v156[v158];
                        v158 += 32;
                    }
                    MEM[v156.length + (MEM[64] + MEM[v154] + 68)] = 0;
                    require(!((MEM[64] + (MEM[64] + MEM[v154] + v156.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v154] + v156.length - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    v159 = new uint256[](MEM[64] + MEM[v154] + v156.length - MEM[64] + 36);
                    v160 = 0;
                    while (v160 < MEM[64] + MEM[v154] + v156.length - MEM[64] + 36) {
                        MEM[v160 + v159.data] = MEM[v160 + (MEM[64] + 32)];
                        v160 += 32;
                    }
                    MEM[MEM[64] + MEM[v154] + v156.length - MEM[64] + 36 + v159.data] = 0;
                    revert(Error(v159));
                }
            }
            v5 = v5 + 1;
        }
        v0 += 1;
    }
    return ;
}

function revokeRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x142d(_getRoleAdmin[role].field1);
    0x1702(role, account);
}

function swapY2XCallback(uint256 x, uint256 y, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x218f(data.word1, msg.sender, y);
}

function DEFAULT_ADMIN_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function 0x1920(uint256 varg0, uint256 varg1) private { 
    v0 = 0x27d3(varg0);
    if (!v0) {
        v1, /* uint256 */ v2 = address(varg0).balanceOf(address(varg1)).gas(msg.gas);
        require(v1, MEM[64], RETURNDATASIZE());
        if (v1) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v3 - MEM[64] >= 32);
            return v2;
        } else {
            return 0;
        }
    } else {
        return varg1.balance;
    }
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x218f(data.word1, msg.sender, amountToPay);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32) >= 96);
    require(rawData.word1 <= uint64.max);
    require(4 + rawData + 32 + msg.data[4 + rawData] - (4 + rawData + 32 + rawData.word1) >= 160);
    v1 = new struct(5);
    require(!((v1 + 160 > uint64.max) | (v1 + 160 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(address(msg.data[4 + rawData + 32 + rawData.word1]) - msg.data[4 + rawData + 32 + rawData.word1]));
    v1.word0 = msg.data[4 + rawData + 32 + rawData.word1];
    v1.word1 = msg.data[4 + rawData + 32 + rawData.word1 + 32];
    require(!(address(msg.data[4 + rawData + 32 + rawData.word1 + 64]) - msg.data[4 + rawData + 32 + rawData.word1 + 64]));
    v1.word2 = msg.data[4 + rawData + 32 + rawData.word1 + 64];
    require(msg.data[4 + rawData + 32 + rawData.word1 + 96] <= uint64.max);
    require(4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 31 < 4 + rawData + 32 + msg.data[4 + rawData]);
    v2 = msg.data[4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96]];
    require(v2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](v2);
    require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 32 + v2 <= 4 + rawData + 32 + msg.data[4 + rawData]);
    CALLDATACOPY(v3.data, 4 + rawData + 32 + rawData.word1 + msg.data[4 + rawData + 32 + rawData.word1 + 96] + 32, v2);
    v3[v2] = 0;
    v1.word3 = v3;
    v1.word4 = msg.data[4 + rawData + 32 + rawData.word1 + 128];
    v4 = v5 = rawData.word2;
    require(!(address(v5) - v5));
    if (0 == (address(v1.word2) == 1)) {
        if (address(v1.word2) == 2) {
            v1.word0 = 0;
        }
    } else {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(rawData.word3).gas(msg.gas);
        if (v6) {
            if (v6) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                v7 = this.code.size;
            }
            v4 = v8 = 0;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    v1.word2 = address(0x4444c5dc75cb358380d2e3de08a90);
    v9 = v10 = 0x1ce8(rawData.word3);
    if (uint32(v1.word4 >> 208) == uint32.max) {
        v11 = v12 = v1.word3;
    } else {
        v11 = v13 = v1.word3;
        MEM[v13 + uint32(v1.word4 >> 208)] = v10;
    }
    v14, /* uint256 */ v15 = address(v1.word2).call(MEM[v2935_0x3V0x1ebbV0xc4f + 32:v2935_0x3V0x1ebbV0xc4f + 32 + MEM[v2935_0x3V0x1ebbV0xc4f]], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v16 = v17 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v16 = new bytes[](RETURNDATASIZE());
        require(!((v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v16 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v16)), Panic(65)); // failed memory allocation (too much memory)
        v15 = v16.data;
        RETURNDATACOPY(v15, 0, RETURNDATASIZE());
    }
    if (!v14) {
        if (0 == v10 < 0) {
            v18 = MEM[64];
            require(!((v18 + 32 > uint64.max) | (v18 + 32 < v18)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v18 + 32;
            MEM[v18] = 0;
        } else {
            v18 = v19 = 45;
            if (!((v19 + 64 > uint64.max) | (v19 + 64 < v19))) {
            }
        }
        revert(Panic(65));
        if (v10 < 0) {
            v9 = v20 = 0 - v10;
        }
        v21 = v22 = 0;
        if (v9 >= 10 ** 64) {
            v21 = v23 = 64;
            v9 = v24 = v9 / 10 ** 64;
            v25 = this.code.size;
        }
        if (v9 >= 10 ** 32) {
            v9 = v26 = v9 / 10 ** 32;
            v21 = v27 = v21 + 32;
            v28 = this.code.size;
        }
        if (v9 >= 10 ** 16) {
            v9 = v29 = v9 / 10 ** 16;
            v21 = v30 = v21 + 16;
            v31 = this.code.size;
        }
        if (v9 >= 10 ** 8) {
            v9 = v32 = v9 / 10 ** 8;
            v21 = v33 = v21 + 8;
            v34 = this.code.size;
        }
        if (v9 >= 10000) {
            v9 = v35 = v9 / 10000;
            v21 = v36 = v21 + 4;
            v37 = this.code.size;
        }
        if (v9 >= 100) {
            v9 = v38 = v9 / 100;
            v21 = v39 = v21 + 2;
        }
        if (v9 >= 10) {
            v21 = v40 = 1 + v21;
        }
        v41 = v21 + 1;
        require(v41 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v42 = new bytes[](v41);
        require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v41) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v41) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
        require(v41 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(v42.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v41) - 32);
        v43 = v42 + v21 + 33;
        while (1) {
            v43 = v43 - 1;
            MEM8[v43] = (byte('0123456789abcdef', v9 % 10)) & 0xFF;
            v9 = v9 / 10;
            if (!v9) {
                break;
            } else {
                break;
            }
        }
        v44 = 0;
        while (v44 < MEM[v18]) {
            MEM[v44 + (MEM[64] + 32)] = MEM[v44 + (v18 + 32)];
            v44 += 32;
        }
        MEM[MEM[v18] + (MEM[64] + 32)] = 0;
        v45 = 0;
        while (v45 < v42.length) {
            MEM[v45 + (MEM[64] + MEM[v18] + 32)] = v42[v45];
            v45 += 32;
        }
        MEM[v42.length + (MEM[64] + MEM[v18] + 32)] = 0;
        if (!((MEM[64] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64]))) {
            MEM[MEM[64] + 32] = 'Swap failed. Reason: ';
            v46 = 0;
            while (v46 < MEM[v16]) {
                MEM[v46 + (MEM[64] + 53)] = MEM[v46 + (v16 + 32)];
                v46 += 32;
            }
            MEM[MEM[v16] + (MEM[64] + 53)] = 0;
            MEM[MEM[64] + MEM[v16] + 53] = '. Swap amount: ';
            v47 = 0;
            while (v47 < MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) {
                MEM[v47 + (MEM[64] + MEM[v16] + 68)] = MEM[v47 + (MEM[64] + 32)];
                v47 += 32;
            }
            MEM[MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32 + (MEM[64] + MEM[v16] + 68)] = 0;
            require(!((MEM[64] + (MEM[64] + MEM[v16] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + MEM[v16] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) - MEM[64] + 68 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v48 = new uint256[](MEM[64] + MEM[v16] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) - MEM[64] + 36);
            v49 = 0;
            while (v49 < MEM[64] + MEM[v16] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) - MEM[64] + 36) {
                MEM[v49 + v48.data] = MEM[v49 + (MEM[64] + 32)];
                v49 += 32;
            }
            MEM[MEM[64] + MEM[v16] + (MEM[64] + MEM[v18] + 32 + v42.length - MEM[64] - 32) - MEM[64] + 36 + v48.data] = 0;
            revert(Error(v48));
        }
    } else {
        v50 = 0x2a0f(0x4444c5dc75cb358380d2e3de08a90, this, address(v4));
        require(v50 < 0, Error('No debt after swap V4'));
        v51 = v52 = 0x1ce8(v50);
        require(v52 <= rawData.word3, Error('Debt is bigger than swap amount V4'));
        require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
        v53 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v4)).gas(msg.gas);
        if (v53) {
            if (v53) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                v54 = this.code.size;
            }
            v55 = 0x27d3(v4);
            if (!v55) {
                0x218f(v4, address(0x4444c5dc75cb358380d2e3de08a90), v52);
                v51 = 0;
            }
            v56, /* uint256 */ v57 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value(v51).gas(msg.gas);
            if (v56) {
                if (v56) {
                    if (32 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        v58 = v59 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                        v58 = v60 = MEM[64] + 32;
                    }
                    require(v58 - MEM[64] >= 32);
                    v61 = this.code.size;
                }
                v62, v63 = address(0x4444c5dc75cb358380d2e3de08a90).exttload(keccak256(address(this), address(v1.word0))).gas(msg.gas);
                if (v62) {
                    v63 = v64 = 0;
                    if (v62) {
                        v65 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v65 = v66 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v65 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v65 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + v65 - MEM[64] >= 32);
                    }
                    require(v63 > 0, Error('No credit after swap V4'));
                    require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
                    v67 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v1.word0), this, v63).gas(msg.gas);
                    if (v67) {
                        if (v67) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            v68 = this.code.size;
                        }
                        if (address(v1.word2) == 2) {
                            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
                            v69 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(v63).gas(msg.gas);
                            if (v69) {
                                if (v69) {
                                    require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                    v70 = this.code.size;
                                }
                            }
                        }
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        v71 = new uint256[](0);
                        v72 = 0;
                        while (v72 < 0) {
                            MEM[v72 + v71.data] = MEM[v72 + (MEM[64] + 32)];
                            v72 += 32;
                        }
                        MEM[v71.data] = 0;
                        return v71;
                    }
                }
            }
        }
    }
}

function hasRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    return _getRoleAdmin[role].field0[account];
}

function 0x1a10(uint256 varg0) private { 
    v0 = v1 = 0;
    if (varg0 >= 10 ** 64) {
        v0 = v2 = 64;
        varg0 = v3 = varg0 / 10 ** 64;
        v4 = this.code.size;
    }
    if (varg0 >= 10 ** 32) {
        varg0 = v5 = varg0 / 10 ** 32;
        v0 = v6 = v0 + 32;
        v7 = this.code.size;
    }
    if (varg0 >= 10 ** 16) {
        varg0 = v8 = varg0 / 10 ** 16;
        v0 = v9 = v0 + 16;
        v10 = this.code.size;
    }
    if (varg0 >= 10 ** 8) {
        varg0 = v11 = varg0 / 10 ** 8;
        v0 = v12 = v0 + 8;
        v13 = this.code.size;
    }
    if (varg0 >= 10000) {
        varg0 = v14 = varg0 / 10000;
        v0 = v15 = v0 + 4;
        v16 = this.code.size;
    }
    if (varg0 >= 100) {
        varg0 = v17 = varg0 / 100;
        v0 = v18 = v0 + 2;
    }
    if (varg0 >= 10) {
        v0 += 1;
    }
    v19 = v0 + 1;
    require(v19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v20 = new bytes[](v19);
    require(!((v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v19) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
    require(v19 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v20.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v19) - 32);
    v21 = v20 + v0 + 33;
    while (1) {
        v21 = v21 - 1;
        MEM8[v21] = (byte('0123456789abcdef', varg0 % 10)) & 0xFF;
        varg0 = varg0 / 10;
        if (!varg0) {
            break;
        }
    }
    return v20;
}

function renounceRole(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x1702(role, tx.origin);
}

function initialize() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = !_initialize;
    if (v1) {
        v0 = v2 = stor_0_0_0 < 1;
    }
    if (!v0) {
        v0 = v3 = !this.code.size;
        if (v3) {
            v0 = v4 = stor_0_0_0 == 1;
            v5 = this.code.size;
        }
        v6 = this.code.size;
    }
    require(v0, Error('Initializable: contract is already initialized'));
    stor_0_0_0 = 1;
    if (v1) {
        _initialize = 1;
    }
    require(_initialize, Error('Initializable: contract is not initializing'));
    0x1659(tx.origin);
    0x158e(tx.origin);
    if (v1) {
        _initialize = 0;
        emit Initialized(1);
        return ;
    } else {
        return ;
    }
}

function 0x6bbc912c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    v0 = v1 = 0;
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    while (v0 < varg1.length) {
        v2 = 0x1146(varg2.data, varg2.length, v0);
        if (msg.data[v2]) {
            v3 = 0x1146(varg2.data, varg2.length, v0);
            v4 = v5 = msg.data[v3];
        } else {
            v6 = 0x1146(varg1.data, varg1.length, v0);
            require(!(address(msg.data[v6]) - msg.data[v6]));
            v4 = v7 = 0x1920(msg.data[v6], this);
        }
        if (varg3 - v0) {
            v8 = v9 = 1;
            v10 = 0x1146(varg1.data, varg1.length, v0);
            require(!(address(msg.data[v10]) - msg.data[v10]));
            0x282c(msg.data[v10], varg0, v4);
        } else {
            v11 = 0x1146(varg1.data, varg1.length, v0);
            require(!(address(msg.data[v11]) - msg.data[v11]));
            require((address(msg.data[v11])).code.size, v1, v1);
            v12 = address(msg.data[v11]).withdraw(v4).value(v1).gas(msg.gas);
            require(v12, v13, RETURNDATASIZE());
            v8 = v14 = 1;
            if (v12) {
                require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
                v15 = this.code.size;
            }
            if (v4) {
                v16, /* uint256 */ v13, /* uint256 */ v17 = address(varg0).call().value(v4).gas(msg.gas);
                if (!RETURNDATASIZE()) {
                    v18 = v19 = 96;
                } else {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v18 = v20 = new bytes[](RETURNDATASIZE());
                    require(!((v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
                    v17 = v20.data;
                    RETURNDATACOPY(v17, 0, RETURNDATASIZE());
                }
                if (!v16) {
                    v21 = new uint256[](MEM[v18]);
                    v22 = 0;
                    while (v22 < MEM[v18]) {
                        MEM[v22 + v21.data] = MEM[v22 + (v18 + 32)];
                        v22 += 32;
                    }
                    MEM[MEM[v18] + v21.data] = 0;
                    revert(Error(v21));
                }
            }
        }
        v0 = v0 + v8;
    }
    return MEM[v7ed:v7ed + v7ed];
}

function addMaintainer(address addedMaintainer) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_renounceRole[msg.sender], Error('Maintainable: Caller is not a maintainer'));
    0x158e(addedMaintainer);
}

function maverickV2SwapCallback(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    v0 = varg2.data;
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    0x218f(varg0, msg.sender, varg1);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x44e58a98(uint256 varg0, uint256 varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0.length * 96 + (4 + varg0) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 5) + (4 + varg1) + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    0x181b(varg1.data, varg1.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (varg0.length << 5) - 32);
    v1 = v2 = 0;
    while (v1 < varg0.length) {
        v3 = 0x1127(varg0.data, varg0.length, v1);
        require(!(address(msg.data[v3]) - msg.data[v3]));
        v4 = 0x1920(msg.data[v3], this);
        v5 = 0x1146(varg2.data, varg2.length, v1);
        v6 = 0x1146(varg2.data, varg2.length, v1);
        v7 = 0x1a10(msg.data[v6]);
        v8 = 0x1a10(v4);
        v9 = 0x1a10(address(msg.data[v3]));
        MEM[MEM[64] + 32] = "{'error': 'INSUFFICIENT_AMOUNT',";
        MEM[MEM[64] + 64] = " 'expected': ";
        v10 = 0;
        while (v10 < v7.length) {
            MEM[v10 + (MEM[64] + 77)] = v7[v10];
            v10 += 32;
        }
        MEM[v7.length + (MEM[64] + 77)] = 0;
        MEM[MEM[64] + v7.length + 77] = 0x2c202761637475616c273a200000000000000000000000000000000000000000;
        v11 = 0;
        while (v11 < v8.length) {
            MEM[v11 + (MEM[64] + v7.length + 89)] = v8[v11];
            v11 += 32;
        }
        MEM[v8.length + (MEM[64] + v7.length + 89)] = 0;
        MEM[MEM[64] + v7.length + v8.length + 89] = 0x2c2027746f6b656e273a20000000000000000000000000000000000000000000;
        v12 = 0;
        while (v12 < v9.length) {
            MEM[v12 + (MEM[64] + v7.length + v8.length + 100)] = v9[v12];
            v12 += 32;
        }
        MEM[v9.length + (MEM[64] + v7.length + v8.length + 100)] = 0;
        MEM[MEM[64] + v7.length + v8.length + v9.length + 100] = 0x7d00000000000000000000000000000000000000000000000000000000000000;
        require(!((MEM[64] + (MEM[64] + v7.length + v8.length + v9.length - MEM[64] + 101 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (MEM[64] + v7.length + v8.length + v9.length - MEM[64] + 101 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        if (v4 < msg.data[v5]) {
            v13 = new uint256[](v14);
            v15 = 0;
            while (v15 < v14) {
                MEM[v15 + v13.data] = MEM[v15 + (MEM[64] + 32)];
                v15 += 32;
            }
            MEM[v14 + v13.data] = 0;
            revert(Error(v13));
        } else {
            require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0[v1] = v4;
            v1 = v1 + 1;
        }
    }
    v16 = v17 = 0;
    while (1) {
        if (v16 < varg0.length) {
            v18 = 0x1127(varg0.data, varg0.length, v16);
            if (!msg.data[v18 + 32]) {
                require(v16 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                require(v0[v16] - 1 <= v0[v16], Panic(17)); // arithmetic overflow or underflow
                v19 = v20 = 1;
                require(!(address(msg.data[v18]) - msg.data[v18]));
                require(!(address(msg.data[v18 + 64]) - msg.data[v18 + 64]));
                0x282c(msg.data[v18], msg.data[v18 + 64], v0[v16] - 1);
            } else {
                v19 = v21 = 1;
                require(!(address(msg.data[v18]) - msg.data[v18]));
                require(!(address(msg.data[v18 + 64]) - msg.data[v18 + 64]));
                0x282c(msg.data[v18], msg.data[v18 + 64], msg.data[v18 + 32]);
            }
            v16 = v16 + v19;
            continue;
        } else {
            exit;
        }
    }
}

function renounceRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(account - msg.sender), Error('AccessControl: can only renounce roles for self'));
    0x1702(role, account);
}

function grantRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    0x142d(_getRoleAdmin[role].field1);
    if (!_getRoleAdmin[role].field0[account]) {
        _getRoleAdmin[role].field0[account] = 1;
        emit RoleGranted(role, account, msg.sender);
        v0 = this.code.size;
        return ;
    } else {
        return ;
    }
}

function getRoleAdmin(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _getRoleAdmin[role].field1;
}

function 0x1ce8(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function supportsInterface(bytes4 interfaceId) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = interfaceId == 0x7965db0b00000000000000000000000000000000000000000000000000000000;
    if (interfaceId != 0x7965db0b00000000000000000000000000000000000000000000000000000000) {
        v0 = v2 = interfaceId == 0x1ffc9a700000000000000000000000000000000000000000000000000000000;
        v3 = this.code.size;
    }
    return bool(v0);
}

function 0x218f(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v0.data;
    v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    require(v3, Error('SafeERC20: low-level call failed'));
    if (MEM[v5]) {
        require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
        require(!(MEM[v5 + 32] - bool(MEM[v5 + 32])));
        require(MEM[v5 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
    }
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x2347(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](v0);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg0 + v0 + 32 <= varg1);
    v2 = 0;
    while (v2 < v0) {
        v1[v2] = MEM[v2 + (varg0 + 32)];
        v2 += 32;
    }
    v1[v0] = 0;
    return v1;
}

function 0x27d3(address varg0) private { 
    if (bool(varg0)) {
        return varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee;
    } else {
        return !varg0;
    }
}

function 0x282c(uint256 varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        v0 = 0x27d3(varg0);
        if (!v0) {
            0x218f(varg0, varg1, varg2);
            return ;
        } else {
            v1, /* uint256 */ v2 = varg1.call().value(varg2).gas(msg.gas);
            if (!RETURNDATASIZE()) {
                v3 = v4 = 96;
            } else {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v3 = v5 = new bytes[](RETURNDATASIZE());
                require(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
                v2 = v5.data;
                RETURNDATACOPY(v2, 0, RETURNDATASIZE());
            }
            if (!v1) {
                v6 = new uint256[](MEM[v3]);
                v7 = 0;
                while (v7 < MEM[v3]) {
                    MEM[v7 + v6.data] = MEM[v7 + (v3 + 32)];
                    v7 += 32;
                }
                MEM[MEM[v3] + v6.data] = 0;
                revert(Error(v6));
            } else {
                return ;
            }
        }
    }
}

function 0x2a0f(address varg0, address varg1, address varg2) private { 
    v0, /* uint256 */ v1 = varg0.exttload(keccak256(varg1, varg2)).gas(msg.gas);
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

function 0x2ac2(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x27d3(varg0);
    if (v0) {
        return varg1;
    } else {
        0x3644(varg0, varg2, varg1);
        return 0;
    }
}

function 0x2ad9(uint256 varg0, uint256 varg1, uint8 varg2, uint256 varg3) private { 
    v0 = 0x27d3(varg0);
    if (v0) {
        return varg1;
    } else {
        v1 = varg2;
        if (v1) {
            if (v1 - 2) {
                if (v1 - 1) {
                    if (0 == (v1 == 7)) {
                        require(!(v1 - 8), EnumOutOfRangeValue(0, v1));
                        0x3506(varg0, address(0x22d473030f116ddee9f6b43ac78ba3));
                        require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
                        v2 = address(0x22d473030f116ddee9f6b43ac78ba3).approve(address(varg0), address(varg3), address(varg1), 0).gas(msg.gas);
                        require(v2, MEM[64], RETURNDATASIZE());
                        if (v2) {
                            require(MEM[64] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                            v3 = this.code.size;
                        }
                    } else {
                        0x3506(varg0, varg3);
                    }
                } else {
                    0x218f(varg0, varg3, varg1);
                }
            } else {
                0x3644(varg0, varg3, varg1);
            }
            v4 = this.code.size;
        }
        return 0;
    }
}

function 0x2d66(bytes varg0) private { 
    require(varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0.data;
}

function 0x2d73(bytes varg0) private { 
    require(1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 33 + varg0;
}

function 0x2d83(bytes varg0, uint256 varg1) private { 
    require(varg1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 32 + (varg1 + varg0);
}

function 0x2d94(uint256 varg0) private { 
    require(varg0, Panic(17)); // arithmetic overflow or underflow
    return uint256.max + varg0;
}

function 0x2e0a(uint256 varg0) private { 
    v0 = new bytes[](66);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 96);
    v1 = 0x2d66(v0);
    MEM8[v1] = 0x30 & 0xFF;
    v2 = 0x2d73(v0);
    MEM8[v2] = 0x78 & 0xFF;
    v3 = v4 = 65;
    while (v3 > 1) {
        require(bool(varg0) < 16, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v5 = 0x2d83(v0, v3);
        MEM8[v5] = (byte('0123456789abcdef', bool(varg0))) & 0xFF;
        varg0 = varg0 >> 4;
        v3 = 0x2d94(v3);
    }
    require(!bool(varg0), Error('Strings: hex length insufficient'));
    return v0;
}

function 0x3506(address varg0, address varg1) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = uint256.max;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, uint256.max).gas(msg.gas);
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
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(v2 - bool(v2)));
            v9 = this.code.size;
        }
        v10 = this.code.size;
    }
    if (v2) {
        v2 = v11 = bool(varg0.code.size);
        v12 = this.code.size;
    }
    if (!v2) {
        v13 = new bytes[](68);
        MEM[v13.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = varg1;
        MEM[v13 + 68] = 0;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v13.data;
        v16, /* uint256 */ v17 = varg0.approve(varg1, 0).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
        require(v16, Error('SafeERC20: low-level call failed'));
        if (MEM[v18]) {
            require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
            require(!(MEM[v18 + 32] - bool(MEM[v18 + 32])));
            require(MEM[v18 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v20 = v0.length;
        v21 = v0.data;
        v22, /* uint256 */ v23 = varg0.approve(varg1, uint256.max).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v24 = v25 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v24 = new bytes[](RETURNDATASIZE());
            require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
            v23 = v24.data;
            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
        }
        require(v22, Error('SafeERC20: low-level call failed'));
        if (MEM[v24]) {
            require(v24 + MEM[v24] + 32 - (v24 + 32) >= 32);
            require(!(MEM[v24 + 32] - bool(MEM[v24 + 32])));
            require(MEM[v24 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v26 = this.code.size;
    }
    return ;
}

function 0x3644(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v3, /* uint256 */ v4 = varg0.approve(varg1, varg2).gas(msg.gas);
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
        v2 = v8 = !MEM[v5];
        if (bool(MEM[v5])) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            v2 = MEM[v5 + 32];
            require(!(v2 - bool(v2)));
            v9 = this.code.size;
        }
        v10 = this.code.size;
    }
    if (v2) {
        v2 = v11 = bool(varg0.code.size);
        v12 = this.code.size;
    }
    if (!v2) {
        v13 = new bytes[](68);
        MEM[v13.data] = 0x95ea7b300000000000000000000000000000000000000000000000000000000;
        MEM[v13 + 36] = varg1;
        MEM[v13 + 68] = 0;
        require(!((v13 + 128 > uint64.max) | (v13 + 128 < v13)), Panic(65)); // failed memory allocation (too much memory)
        v14 = v13.length;
        v15 = v13.data;
        v16, /* uint256 */ v17 = varg0.approve(varg1, 0).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v18 = v19 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v18 = new bytes[](RETURNDATASIZE());
            require(!((v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v18 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v18)), Panic(65)); // failed memory allocation (too much memory)
            v17 = v18.data;
            RETURNDATACOPY(v17, 0, RETURNDATASIZE());
        }
        require(v16, Error('SafeERC20: low-level call failed'));
        if (MEM[v18]) {
            require(v18 + MEM[v18] + 32 - (v18 + 32) >= 32);
            require(!(MEM[v18 + 32] - bool(MEM[v18 + 32])));
            require(MEM[v18 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v20 = v0.length;
        v21 = v0.data;
        v22, /* uint256 */ v23 = varg0.approve(varg1, varg2).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v24 = v25 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v24 = new bytes[](RETURNDATASIZE());
            require(!((v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v24 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v24)), Panic(65)); // failed memory allocation (too much memory)
            v23 = v24.data;
            RETURNDATACOPY(v23, 0, RETURNDATASIZE());
        }
        require(v22, Error('SafeERC20: low-level call failed'));
        if (MEM[v24]) {
            require(v24 + MEM[v24] + 32 - (v24 + 32) >= 32);
            require(!(MEM[v24 + 32] - bool(MEM[v24 + 32])));
            require(MEM[v24 + 32], Error('SafeERC20: ERC20 operation did not succeed'));
        }
        v26 = this.code.size;
    }
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x1ffc9a7 == v0) {
            supportsInterface(bytes4);
        } else {
            if (0x18780684 != v0) {
                if (0x23a69e75 != v0) {
                    if (0x248a9ca3 == v0) {
                        getRoleAdmin(bytes32);
                    } else if (0x2c8958f6 != v0) {
                        if (0x2f2ff15d == v0) {
                            grantRole(bytes32,address);
                        } else if (0x36568abe == v0) {
                            renounceRole(bytes32,address);
                        } else if (0x3a1c453c != v0) {
                            if (0x44e58a98 == v0) {
                                0x44e58a98();
                            } else if (0x654b6487 != v0) {
                                if (0x67ca7c91 == v0) {
                                    maverickV2SwapCallback(address,uint256,uint256,bytes);
                                } else if (0x6b453c1f == v0) {
                                    addMaintainer(address);
                                } else if (0x6bbc912c == v0) {
                                    0x6bbc912c();
                                } else if (0x79d3f8ce != v0) {
                                    if (0x8129fc1c == v0) {
                                        initialize();
                                    } else if (0x8bb9c5bf == v0) {
                                        renounceRole(bytes32);
                                    } else if (0x91d14854 == v0) {
                                        hasRole(bytes32,address);
                                    } else if (0x91dd7346 == v0) {
                                        unlockCallback(bytes);
                                    } else if (0x923b8a2a != v0) {
                                        if (0x9feb758b != v0) {
                                            if (0xa217fddf == v0) {
                                                DEFAULT_ADMIN_ROLE();
                                            } else if (0xd3e1c284 == v0) {
                                                swapY2XCallback(uint256,uint256,bytes);
                                            } else if (0xd547741f == v0) {
                                                revokeRole(bytes32,address);
                                            } else if (0xd8baf7cf == v0) {
                                                removeMaintainer(address);
                                            } else if (0xe8d917fe != v0) {
                                                if (0xeb4897d4 == v0) {
                                                    0xeb4897d4();
                                                } else if (0xf2fde38b == v0) {
                                                    transferOwnership(address);
                                                } else if (0xf8742254 == v0) {
                                                    MAINTAINER_ROLE();
                                                } else if (0xfa461e33 != v0) {
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            swapCallback(uint256,uint256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
