// Decompiled by library.dedaub.com
// 2026.04.07 04:42 UTC
// Compiled using the solidity compiler version 0.8.10


// Data structures and variables inferred from the use of storage instructions
mapping (uint32 => struct_1233) mapping_2; // STORAGE[0x2]
address _owner; // STORAGE[0x0] bytes 0 to 19
uint8 stor_3_0_0; // STORAGE[0x3] bytes 0 to 0
address owner_1_0_19; // STORAGE[0x1] bytes 0 to 19
uint16 stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_4_5; // STORAGE[0xac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b] bytes 4 to 5
address stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_6_25; // STORAGE[0xac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b] bytes 6 to 25
address stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077c_0_19; // STORAGE[0xac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077c] bytes 0 to 19

struct struct_1233 { uint32 field0_0_3; uint16 field0_4_5; address field0_6_25; uint16 field0_26_27; address field1; };

// Events
OwnershipTransferred(address, address);

function 0x109c(uint256 varg0, uint256 varg1, address varg2) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg2) {
        0xcee(varg0, varg1, varg2);
        return ;
    } else {
        0x1d71(varg0, varg1);
        return ;
    }
}

function 0x6be92b89(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4, bytes varg5, bool varg6, uint32 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg5 <= uint64.max);
    require(4 + varg5 + 31 < msg.data.length);
    require(varg5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg5.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg5.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg5 + varg5.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg5.data, varg5.length);
    v0[varg5.length] = 0;
    v1, v2 = 0x459(varg7, varg6, v0, varg4, varg3, varg2, varg1, varg0, 0x5e23c);
    v3 = new uint256[](MEM[v1]);
    v4 = v5 = 0;
    while (v4 < MEM[v1]) {
        MEM[v4 + v3.data] = MEM[v4 + (v1 + 32)];
        v4 += 32;
    }
    if (v4 > MEM[v1]) {
        MEM[v3.data + MEM[v1]] = 0;
    }
    return v2, v3;
}

function 0x11ef(uint256 varg0, uint256 varg1, uint8 varg2) private { 
    require(msg.sender == owner_1_0_19, Error('RouteProcessor.V4: call from unknown source'));
    MEM[64] = MEM[64] + 288;
    MEM[MEM[64] + 192] = 0;
    MEM[MEM[64] + 224] = 0;
    MEM[MEM[64] + (uint8.max + 1)] = 0;
    MEM[MEM[64]] = MEM[64] + 192;
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 64] = 0;
    MEM[MEM[64] + 96] = 0;
    MEM[MEM[64] + 128] = 96;
    MEM[MEM[64] + 160] = 0;
    if (varg2) {
        v0 = varg1 + varg0;
        require(v0 - varg1 >= 224);
        require(v0 - varg1 >= 192);
        v1 = 0x3b91();
        require(msg.data[varg1] == address(msg.data[varg1]));
        v1.word0 = msg.data[varg1];
        require(msg.data[varg1 + 32] == address(msg.data[varg1 + 32]));
        v1.word1 = msg.data[varg1 + 32];
        require(msg.data[varg1 + 64] == address(msg.data[varg1 + 64]));
        v1.word2 = msg.data[varg1 + 64];
        require(msg.data[varg1 + 96] == address(msg.data[varg1 + 96]));
        v1.word3 = msg.data[varg1 + 96];
        require(msg.data[varg1 + 128] == uint24(msg.data[varg1 + 128]));
        v1.word4 = msg.data[varg1 + 128];
        v1.word5 = msg.data[160 + varg1];
        require(msg.data[varg1 + 192] <= uint64.max);
        v2 = varg1 + msg.data[varg1 + 192];
        require(v0 - v2 >= uint8.max + 1);
        v3 = 0x3b91();
        require(v0 - v2 >= 96);
        v4 = new struct(3);
        require(!((v4 + 96 < v4) | (v4 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v2] == bool(msg.data[v2]));
        v4.word0 = msg.data[v2];
        v4.word1 = msg.data[32 + v2];
        require(msg.data[v2 + 64] == address(msg.data[v2 + 64]));
        v4.word2 = msg.data[v2 + 64];
        v3.word0 = v4;
        require(msg.data[v2 + 96] == address(msg.data[v2 + 96]));
        v3.word1 = msg.data[v2 + 96];
        require(msg.data[v2 + 128] == address(msg.data[v2 + 128]));
        v3.word2 = msg.data[v2 + 128];
        require(msg.data[v2 + 160] == address(msg.data[v2 + 160]));
        v3.word3 = msg.data[v2 + 160];
        require(msg.data[v2 + 192] <= uint64.max);
        require(v2 + msg.data[v2 + 192] + 31 < v0);
        require(msg.data[v2 + msg.data[v2 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](msg.data[v2 + msg.data[v2 + 192]]);
        require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 192]]) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v2 + msg.data[v2 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v2 + msg.data[v2 + 192] + msg.data[v2 + msg.data[v2 + 192]] + 32 <= v0);
        CALLDATACOPY(v5.data, v2 + msg.data[v2 + 192] + 32, msg.data[v2 + msg.data[v2 + 192]]);
        v5[msg.data[v2 + msg.data[v2 + 192]]] = 0;
        v3.word4 = v5;
        require(msg.data[v2 + 224] == address(msg.data[v2 + 224]));
        v3.word5 = msg.data[v2 + 224];
        v6 = new bytes[](v7.length);
        v8 = v9 = 0;
        while (v8 < v7.length) {
            v6[v8] = v7[v8];
            v8 += 32;
        }
        if (v8 > v7.length) {
            v6[v7.length] = 0;
        }
        v10, /* uint256 */ v11 = address(v1.word3).swap(address(v1.word0), address(v1.word1), address(v1.word2), address(v1.word3), uint24(v1.word4), v1.word5, bool(MEM[v3.word0]), MEM[v3.word0 + 32], address(MEM[v3.word0 + 64]), v6).gas(msg.gas);
        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v12 = varg1 + varg0;
        require(v12 - varg1 >= 192);
        require(v12 - varg1 >= 160);
        v13 = new struct(5);
        require(!((v13 + 160 < v13) | (v13 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[varg1] == address(msg.data[varg1]));
        v13.word0 = msg.data[varg1];
        require(msg.data[varg1 + 32] == address(msg.data[varg1 + 32]));
        v13.word1 = msg.data[varg1 + 32];
        require(msg.data[varg1 + 64] == uint24(msg.data[varg1 + 64]));
        v13.word2 = msg.data[varg1 + 64];
        require(msg.data[varg1 + 96] == int24(msg.data[varg1 + 96]));
        v13.word3 = msg.data[varg1 + 96];
        require(msg.data[varg1 + 128] == address(msg.data[varg1 + 128]));
        v13.word4 = msg.data[varg1 + 128];
        require(msg.data[varg1 + 160] <= uint64.max);
        v14 = varg1 + msg.data[varg1 + 160];
        require(v12 - v14 >= uint8.max + 1);
        v3 = v15 = 0x3b91();
        require(v12 - v14 >= 96);
        v16 = new struct(3);
        require(!((v16 + 96 < v16) | (v16 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(msg.data[v14] == bool(msg.data[v14]));
        v16.word0 = msg.data[v14];
        v16.word1 = msg.data[32 + v14];
        require(msg.data[v14 + 64] == address(msg.data[v14 + 64]));
        v16.word2 = msg.data[v14 + 64];
        v15.word0 = v16;
        require(msg.data[v14 + 96] == address(msg.data[v14 + 96]));
        v15.word1 = msg.data[v14 + 96];
        require(msg.data[v14 + 128] == address(msg.data[v14 + 128]));
        v15.word2 = msg.data[v14 + 128];
        require(msg.data[v14 + 160] == address(msg.data[v14 + 160]));
        v15.word3 = msg.data[v14 + 160];
        require(msg.data[v14 + 192] <= uint64.max);
        require(v14 + msg.data[v14 + 192] + 31 < v12);
        require(msg.data[v14 + msg.data[v14 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v17 = new bytes[](msg.data[v14 + msg.data[v14 + 192]]);
        require(!((v17 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v14 + msg.data[v14 + 192]]) + 31) < v17) | (v17 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v14 + msg.data[v14 + 192]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v14 + msg.data[v14 + 192] + msg.data[v14 + msg.data[v14 + 192]] + 32 <= v12);
        CALLDATACOPY(v17.data, v14 + msg.data[v14 + 192] + 32, msg.data[v14 + msg.data[v14 + 192]]);
        v17[msg.data[v14 + msg.data[v14 + 192]]] = 0;
        v15.word4 = v17;
        require(msg.data[v14 + 224] == address(msg.data[v14 + 224]));
        v15.word5 = msg.data[v14 + 224];
        v18 = new bytes[](v19.length);
        v20 = v21 = 0;
        while (v20 < v19.length) {
            v18[v20] = v19[v20];
            v20 += 32;
        }
        if (v20 > v19.length) {
            v18[v19.length] = 0;
        }
        v22, /* uint256 */ v11 = address(v15.word1).swap(address(v13.word0), address(v13.word1), uint24(v13.word2), int24(v13.word3), address(v13.word4), bool(MEM[v15.word0]), MEM[v15.word0 + 32], address(MEM[v15.word0 + 64]), v18).gas(msg.gas);
        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    if (MEM[MEM[v3]]) {
        v23 = v24 = 0x4706(v11 >> 128);
    } else {
        v23 = v25 = 0x4706(int128(v11));
    }
    if (MEM[MEM[v3]]) {
        v26 = v27 = int128(v11);
    } else {
        v26 = v28 = v11 >> 128;
    }
    require(bool(msg.sender.code.size));
    v29 = msg.sender.sync(address(MEM[64 + v3])).gas(msg.gas);
    require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (address(MEM[v3 + 64])) {
        if (int128(v23) > 0) {
            0xcee(uint128(v23), msg.sender, address(MEM[v3 + 64]));
        }
        v30, /* uint256 */ v31 = msg.sender.settle().gas(msg.gas);
        require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    } else {
        v32, /* uint256 */ v33 = msg.sender.settle().value(uint128(v23)).gas(msg.gas);
        require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    }
    require(bool(msg.sender.code.size));
    v34 = msg.sender.take(address(MEM[v3 + 96]), address(MEM[v3 + 160]), uint128(v26)).gas(msg.gas);
    require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    owner_1_0_19 = 1;
    MEM[MEM[64] + 32] = uint128(v26);
    MEM[MEM[64]] = 32;
    return MEM[64];
}

function renounceOwnership() public nonPayable { 
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    _owner = 0;
    emit OwnershipTransferred(_owner, address(0x0));
}

function 0x7c939f12(uint32 varg0, uint32 varg1, uint32 varg2, uint16 varg3, uint16 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(32 >= 32);
    mapping_2[varg0].field0_0_3 = varg0;
    require(varg1 == uint16(varg1));
    mapping_2[varg0].field0_0_3 = varg0;
    mapping_2[varg0].field0_4_5 = varg1;
    require(varg2 == address(varg2));
    mapping_2[varg0].field0_0_3 = varg0;
    mapping_2[varg0].field0_4_5 = varg1;
    mapping_2[varg0].field0_6_25 = varg2;
    mapping_2[varg0].field0_26_27 = varg3;
    require(varg4 == address(varg4));
    mapping_2[varg0].field1_0_19 = varg4;
    require(32 >= 32);
    require(32 >= 32);
    require(varg1 == uint16(varg1));
    require(32 >= 32);
    require(varg2 == address(varg2));
    require(32 >= 32);
    require(32 >= 32);
    require(varg4 == address(varg4));
    emit 0xcd18b72400ac680b0bd266e67a0541a5f1ba6d7fdde7f9996c4ec146155446df(varg0, uint16(varg1), address(varg2), varg3, address(varg4));
}

function 0x1782(uint256 varg0, uint256 varg1, uint32 varg2, address varg3) private { 
    if (varg1) {
        v0 = v1 = 0;
        if (varg2) {
            v2 = varg2;
            if (mapping_2[v2].field0_0_3) {
                v0 = v3 = mapping_2[v2].field0_4_5;
                if (v3 != 1000) {
                    varg0 = v4 = mapping_2[v2].field0_6_25;
                    v0 = v5 = 1;
                } else {
                    0x109c(varg1, mapping_2[v2].field0_6_25, varg3);
                    return varg1;
                }
            }
        }
        MEM[0] = 0;
        MEM[32] = 2;
        if (stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_6_25) {
            if (address(varg0)) {
                if (!v0) {
                    v0 = v6 = 1000 - stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_4_5;
                }
                if (v0 * varg1 / 1000) {
                    0x109c(v0 * varg1 / 1000, varg0, varg3);
                }
                if (varg1 - v0 * varg1 / 1000) {
                    0x109c(varg1 - v0 * varg1 / 1000, stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_6_25, varg3);
                }
                return varg1;
            } else {
                0x109c(varg1, stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077b_6_25, varg3);
                return varg1;
            }
        } else if (address(varg0)) {
            0x109c(varg1, varg0, varg3);
            return varg1;
        } else {
            return 0;
        }
    } else {
        return 0;
    }
}

function owner() public nonPayable { 
    return _owner;
}

function 0x1998(uint256 varg0, address varg1) private { 
    require(this.balance >= 0, Error('Address: insufficient balance for call'));
    v0 = v1 = 0;
    while (v0 < MEM[varg0]) {
        MEM[v0 + MEM[64]] = MEM[v0 + (varg0 + 32)];
        v0 += 32;
    }
    if (v0 > MEM[varg0]) {
        MEM[MEM[64] + MEM[varg0]] = 0;
    }
    v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg1.call(MEM[MEM[64]:MEM[64] + MEM[v1998arg0x0] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (!v2) {
        require(!MEM[v6], v5, MEM[v6]);
        v9 = new bytes[](v10.length);
        v11 = v12 = 0;
        while (v11 < v10.length) {
            v9[v11] = v10[v11];
            v11 += 32;
        }
        if (v11 > v10.length) {
            v9[v10.length] = 0;
        }
        revert(Error(v9, v13, 'SafeERC20: low-level call failed'));
    } else {
        if (!MEM[v6]) {
            require(varg1.code.size, Error('Address: call to non-contract'));
        }
        if (!MEM[v6]) {
            return ;
        } else {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            require(MEM[32 + v6] == bool(MEM[32 + v6]));
            require(MEM[32 + v6], Error('SafeERC20: ERC20 operation did not succeed'));
            return ;
        }
    }
}

function 0x1aa4(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    MEM[varg3] += 1;
    v0 = v1 = 0;
    while (v0 < uint8(MEM[1 + MEM[varg3]])) {
        MEM[varg3] += 2;
        v2 = varg1 * uint16(MEM[2 + MEM[varg3]]) / uint16.max;
        varg1 = varg1 - v2;
        0x1b07(varg0, v2, varg2, varg3);
        v0 += 1;
    }
    return ;
}

function 0x1b07(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = MEM[1 + MEM[varg3]];
    MEM[varg3] += 1;
    require(uint8(2), Panic(18)); // division by zero
    if (uint8(uint8(v0) % uint8(2))) {
        if (1 != uint8(v0)) {
            if (5 != uint8(v0)) {
                if (11 != uint8(v0)) {
                    if (13 != uint8(v0)) {
                        if (7 != uint8(v0)) {
                            if (9 == uint8(v0)) {
                                MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                                v1 = MEM[MEM[varg3] + 32];
                                MEM[36 + MEM[64] + 96] = v1;
                                v2 = v3 = 0;
                                while (v2 < v1) {
                                    MEM[v2 + (36 + MEM[64] + 96 + 32)] = MEM[v2 + (MEM[varg3] + 32 + 32)];
                                    v2 += 32;
                                }
                                if (v2 > v1) {
                                    MEM[36 + MEM[64] + 96 + 32 + v1] = 0;
                                }
                                MEM[36 + MEM[64] + 32] = address(varg2);
                                MEM[100 + MEM[64]] = varg1;
                                MEM[MEM[64] + 32] = bytes4(0x3334370200000000000000000000000000000000000000000000000000000000) | uint224(96);
                                v4 = v5 = 0;
                                while (v4 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                    MEM[v4 + MEM[64]] = MEM[v4 + (MEM[64] + 32)];
                                    v4 += 32;
                                }
                                if (v4 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                    MEM[MEM[64] + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v1) + (36 + MEM[64] + 96)) - MEM[64] - 32)] = 0;
                                }
                                v6, /* uint256 */ v7, /* uint256 */ v8, /* uint256 */ v9 = address(0xa7d0c19fad2b5d01ee0eea60b98eef1117aa3c88).delegatecall(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3e1eV0x4d22V0x1d2d + 36 + MEM[64] + 96 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                                if (RETURNDATASIZE() == 0) {
                                    v10 = v11 = 96;
                                } else {
                                    v10 = v12 = new bytes[](RETURNDATASIZE());
                                    RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
                                }
                                require(v6, v9, MEM[v10]);
                                require(v8 + MEM[v10] - v8 >= 32);
                                MEM[varg3] = MEM[varg3] + 3;
                                MEM[varg3] = MEM[varg3] + 6;
                                v13 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                                v14 = 0x38d9(MEM[v8], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                                v15 = MEM[varg0];
                                if (MEM[varg0 + 32] - v15 > 3) {
                                    MEM8[v15] = v13 >> 8 & 0xFF;
                                    MEM8[v15 + 1] = v13 & 0xFF;
                                    MEM8[v15 + 2] = v14 >> 8 & 0xFF;
                                    MEM8[v15 + 3] = v14 & 0xFF;
                                    MEM[varg0] = 4 + v15;
                                }
                                return ;
                            }
                        } else {
                            MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                            v16 = MEM[MEM[varg3] + 32];
                            MEM[36 + MEM[64] + 96] = v16;
                            v17 = v18 = 0;
                            while (v17 < v16) {
                                MEM[v17 + (36 + MEM[64] + 96 + 32)] = MEM[v17 + (MEM[varg3] + 32 + 32)];
                                v17 += 32;
                            }
                            if (v17 > v16) {
                                MEM[36 + MEM[64] + 96 + 32 + v16] = 0;
                            }
                            MEM[36 + MEM[64] + 32] = address(varg2);
                            MEM[100 + MEM[64]] = varg1;
                            MEM[MEM[64] + 32] = bytes4(0x35fd6e3100000000000000000000000000000000000000000000000000000000) | uint224(96);
                            v19 = v20 = 0;
                            while (v19 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                MEM[v19 + MEM[64]] = MEM[v19 + (MEM[64] + 32)];
                                v19 += 32;
                            }
                            if (v19 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                MEM[MEM[64] + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16) + (36 + MEM[64] + 96)) - MEM[64] - 32)] = 0;
                            }
                            v21, /* uint256 */ v22, /* uint256 */ v23, /* uint256 */ v24 = address(0xa7d0c19fad2b5d01ee0eea60b98eef1117aa3c88).delegatecall(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3e1eV0x4d22V0x1cf4 + 36 + MEM[64] + 96 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v25 = v26 = 96;
                            } else {
                                v25 = v27 = new bytes[](RETURNDATASIZE());
                                RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());
                            }
                            require(v21, v24, MEM[v25]);
                            require(v23 + MEM[v25] - v23 >= 32);
                            MEM[varg3] = MEM[varg3] + 3;
                            MEM[varg3] = MEM[varg3] + 6;
                            v28 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                            v29 = 0x38d9(MEM[v23], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                            v30 = MEM[varg0];
                            if (MEM[varg0 + 32] - v30 > 3) {
                                MEM8[v30] = v28 >> 8 & 0xFF;
                                MEM8[v30 + 1] = v28 & 0xFF;
                                MEM8[v30 + 2] = v29 >> 8 & 0xFF;
                                MEM8[v30 + 3] = v29 & 0xFF;
                                MEM[varg0] = 4 + v30;
                            }
                            return ;
                        }
                    } else {
                        varg2 = v31 = MEM[20 + MEM[varg3]];
                        MEM[varg3] += 20;
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(varg2)) {
                            varg2 = v32 = 0;
                        }
                        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v31)) {
                            varg2 = v33 = 0;
                        }
                        v34 = MEM[20 + MEM[varg3]];
                        MEM[varg3] += 20;
                        MEM[varg3] += 1;
                        MEM[64] = MEM[64] + 192;
                        MEM[MEM[64]] = 0;
                        MEM[MEM[64] + 32] = 0;
                        MEM[MEM[64] + 64] = 0;
                        MEM[MEM[64] + 96] = 0;
                        MEM[MEM[64] + 128] = 0;
                        MEM[MEM[64] + 160] = 0;
                        MEM[varg3] += 20;
                        v35 = uint8(MEM[1 + MEM[varg3]]) > 0;
                        MEM[varg3] += 20;
                        MEM[varg3] += 3;
                        MEM[varg3] += 32;
                        if (uint8(MEM[1 + MEM[varg3]]) <= 0) {
                        }
                        if (uint8(MEM[1 + MEM[varg3]]) <= 0) {
                        }
                        MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                        MEM[varg3] += 20;
                        owner_1_0_19 = v34;
                        v36 = new struct(6);
                        v37 = new struct(3);
                        v37.word0 = bool(v35);
                        v38 = 0x4874(varg1);
                        v37.word1 = v38;
                        if (v35) {
                            v39 = v40 = 0x48da(1, 0x1000276a3);
                        } else {
                            v39 = v41 = 0x48ad(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                        }
                        v37.word2 = address(v39);
                        v36.word0 = v37;
                        v36.word1 = address(v34);
                        v36.word2 = address(varg2);
                        v36.word3 = address(varg2);
                        v36.word4 = MEM[varg3] + 32;
                        v36.word5 = address(MEM[20 + MEM[varg3]]);
                        MEM[32 + MEM[64]] = address(varg2);
                        MEM[32 + MEM[64] + 32] = address(varg2);
                        MEM[32 + MEM[64] + 64] = address(MEM[20 + MEM[varg3]]);
                        MEM[32 + MEM[64] + 96] = address(MEM[20 + MEM[varg3]]);
                        MEM[32 + MEM[64] + 128] = uint24(MEM[3 + MEM[varg3]]);
                        MEM[32 + MEM[64] + 160] = MEM[32 + MEM[varg3]];
                        MEM[32 + MEM[64] + 192] = 224;
                        MEM[32 + MEM[64] + 224] = bool(MEM[v36.word0]);
                        MEM[32 + MEM[64] + 224 + 32] = MEM[v36.word0 + 32];
                        MEM[32 + MEM[64] + 224 + 64] = address(MEM[64 + v36.word0]);
                        MEM[32 + MEM[64] + 224 + 96] = address(v36.word1);
                        MEM[32 + MEM[64] + 224 + 128] = address(v36.word2);
                        MEM[32 + MEM[64] + 224 + 160] = address(v36.word3);
                        MEM[32 + MEM[64] + 224 + 192] = uint8.max + 1;
                        MEM[32 + MEM[64] + 224 + (uint8.max + 1)] = MEM[v36.word4];
                        v42 = v43 = 0;
                        while (v42 < MEM[v36.word4]) {
                            MEM[v42 + (32 + MEM[64] + 224 + (uint8.max + 1) + 32)] = MEM[v42 + (v36.word4 + 32)];
                            v42 += 32;
                        }
                        if (v42 > MEM[v36.word4]) {
                            MEM[32 + MEM[64] + 224 + (uint8.max + 1) + 32 + MEM[v36.word4]] = 0;
                        }
                        MEM[32 + MEM[64] + 224 + 224] = address(v36.word5);
                        v44 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (32 + MEM[64] + 224 + (uint8.max + 1))) - MEM[64] - 32);
                        v45 = v46 = 0;
                        while (v45 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (32 + MEM[64] + 224 + (uint8.max + 1))) - MEM[64] - 32) {
                            MEM[v45 + v44.data] = MEM[v45 + (MEM[64] + 32)];
                            v45 += 32;
                        }
                        if (v45 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (32 + MEM[64] + 224 + (uint8.max + 1))) - MEM[64] - 32) {
                            MEM[v44.data + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v36.word4]) + (32 + MEM[64] + 224 + (uint8.max + 1))) - MEM[64] - 32)] = 0;
                        }
                        v47, /* uint256 */ v48 = address(v34).lock(v44).gas(msg.gas);
                        require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        RETURNDATACOPY(v48, 0, RETURNDATASIZE());
                        MEM[64] = v48 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                        require(v48 + RETURNDATASIZE() - v48 >= 32);
                        require(MEM[v48] <= uint64.max);
                        require(v48 + RETURNDATASIZE() > v48 + MEM[v48] + 31);
                        v49 = MEM[v48 + MEM[v48]];
                        require(v49 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v50 = new bytes[](v49);
                        require(!((v50 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v49) + 31) < v50) | (v50 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v49) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        require(v48 + MEM[v48] + v49 + 32 <= v48 + RETURNDATASIZE());
                        v51 = v52 = 0;
                        while (v51 < v49) {
                            v50[v51] = MEM[v51 + (v48 + MEM[v48] + 32)];
                            v51 += 32;
                        }
                        if (v51 > v49) {
                            v50[v49] = 0;
                        }
                        require(owner_1_0_19 == 1, Error('RouteProcessor.PancakeSwapV4: unexpected'));
                        require(v50.data + v50.length - v50.data >= 32);
                        MEM[varg3] = MEM[varg3] + 3;
                        MEM[varg3] = MEM[varg3] + 6;
                        v53 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                        v54 = 0x38d9(MEM[v50.data], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                        v55 = MEM[varg0];
                        if (MEM[varg0 + 32] - v55 > 3) {
                            MEM8[v55] = v53 >> 8 & 0xFF;
                            MEM8[v55 + 1] = v53 & 0xFF;
                            MEM8[v55 + 2] = v54 >> 8 & 0xFF;
                            MEM8[v55 + 3] = v54 & 0xFF;
                            MEM[varg0] = 4 + v55;
                        }
                        return ;
                    }
                } else {
                    MEM[varg3] += 20;
                    MEM[varg3] += 1;
                    v56 = uint8(MEM[1 + MEM[varg3]]) > 0;
                    MEM[varg3] += 20;
                    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(varg2)) {
                        v57 = 0x380b(varg1, MEM[20 + MEM[varg3]], address(varg2));
                        v58, /* uint256 */ v59 = address(MEM[20 + MEM[varg3]]).swapIn(bool(v56), varg1, 0, address(MEM[20 + MEM[varg3]])).gas(msg.gas);
                        require(bool(v58), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    } else {
                        v60, /* uint256 */ v59 = address(MEM[20 + MEM[varg3]]).swapIn(bool(v56), varg1, 0, address(MEM[20 + MEM[varg3]])).value(varg1).gas(msg.gas);
                        require(bool(v60), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    }
                    MEM[varg3] = MEM[varg3] + 3;
                    MEM[varg3] = MEM[varg3] + 6;
                    v61 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                    v62 = 0x38d9(v59, uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                    v63 = MEM[varg0];
                    if (MEM[varg0 + 32] - v63 > 3) {
                        MEM8[v63] = v61 >> 8 & 0xFF;
                        MEM8[v63 + 1] = v61 & 0xFF;
                        MEM8[v63 + 2] = v62 >> 8 & 0xFF;
                        MEM8[v63 + 3] = v62 & 0xFF;
                        MEM[varg0] = 4 + v63;
                    }
                    return ;
                }
            } else {
                MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                v64 = MEM[MEM[varg3] + 32];
                MEM[36 + MEM[64] + 96] = v64;
                v65 = v66 = 0;
                while (v65 < v64) {
                    MEM[v65 + (36 + MEM[64] + 96 + 32)] = MEM[v65 + (MEM[varg3] + 32 + 32)];
                    v65 += 32;
                }
                if (v65 > v64) {
                    MEM[36 + MEM[64] + 96 + 32 + v64] = 0;
                }
                MEM[36 + MEM[64] + 32] = address(varg2);
                MEM[100 + MEM[64]] = varg1;
                MEM[MEM[64] + 32] = bytes4(0xf4ae4bf000000000000000000000000000000000000000000000000000000000) | uint224(96);
                v67 = v68 = 0;
                while (v67 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v64) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                    MEM[v67 + MEM[64]] = MEM[v67 + (MEM[64] + 32)];
                    v67 += 32;
                }
                if (v67 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v64) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                    MEM[MEM[64] + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v64) + (36 + MEM[64] + 96)) - MEM[64] - 32)] = 0;
                }
                v69, /* uint256 */ v70, /* uint256 */ v71, /* uint256 */ v72 = address(0xa7d0c19fad2b5d01ee0eea60b98eef1117aa3c88).delegatecall(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3e1eV0x4d22V0x1c8b + 36 + MEM[64] + 96 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                if (RETURNDATASIZE() == 0) {
                    v73 = v74 = 96;
                } else {
                    v73 = v75 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v75.data, 0, RETURNDATASIZE());
                }
                require(v69, v72, MEM[v73]);
                require(v71 + MEM[v73] - v71 >= 32);
                MEM[varg3] = MEM[varg3] + 3;
                MEM[varg3] = MEM[varg3] + 6;
                v76 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                v77 = 0x38d9(MEM[v71], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                v78 = MEM[varg0];
                if (MEM[varg0 + 32] - v78 > 3) {
                    MEM8[v78] = v76 >> 8 & 0xFF;
                    MEM8[v78 + 1] = v76 & 0xFF;
                    MEM8[v78 + 2] = v77 >> 8 & 0xFF;
                    MEM8[v78 + 3] = v77 & 0xFF;
                    MEM[varg0] = 4 + v78;
                }
                return ;
            }
        } else {
            MEM[varg3] += 20;
            MEM[varg3] += 1;
            MEM[varg3] += 20;
            MEM[varg3] += 1;
            owner_1_0_19 = MEM[20 + MEM[varg3]];
            v79 = _SafeSub(varg1, uint8(MEM[1 + MEM[varg3]]));
            if (uint8(MEM[1 + MEM[varg3]]) > 0) {
                v80 = v81 = 0x48da(1, 0x1000276a3);
            } else {
                v80 = v82 = 0x48ad(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
            }
            v83 = new uint256[](v84);
            v85 = v86 = 0;
            while (v85 < v84) {
                MEM[v85 + v83.data] = MEM[v85 + (MEM[64] + 32)];
                v85 += 32;
            }
            if (v85 > v84) {
                MEM[v83.data + v84] = 0;
            }
            v87, /* uint256 */ v88, /* uint256 */ v89 = address(MEM[20 + MEM[varg3]]).swap(address(MEM[20 + MEM[varg3]]), uint8(MEM[1 + MEM[varg3]]) > 0, v79, address(v80), v83, v90, address(varg2), uint8(MEM[1 + MEM[varg3]])).gas(msg.gas);
            require(bool(v87), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
            require(owner_1_0_19 == 1, Error('RouteProcessor.swapUniV3: unexpected', 'RouteProcessor.swapUniV3: unexpected'));
            if (v88 <= 0) {
                v91 = v92 = 0x4874(v88);
            } else {
                v91 = v93 = 0x4874(v89);
            }
            MEM[varg3] = MEM[varg3] + 3;
            MEM[varg3] = MEM[varg3] + 6;
            v94 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
            v95 = 0x38d9(v91, uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
            v96 = MEM[varg0];
            if (MEM[varg0 + 32] - v96 > 3) {
                MEM8[v96] = v94 >> 8 & 0xFF;
                MEM8[v96 + 1] = v94 & 0xFF;
                MEM8[v96 + 2] = v95 >> 8 & 0xFF;
                MEM8[v96 + 3] = v95 & 0xFF;
                MEM[varg0] = 4 + v96;
            }
            return ;
        }
    } else if (uint8(v0)) {
        if (2 != uint8(v0)) {
            if (6 != uint8(v0)) {
                if (10 != uint8(v0)) {
                    if (12 != uint8(v0)) {
                        if (8 == uint8(v0)) {
                            MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                            v97 = MEM[MEM[varg3] + 32];
                            MEM[36 + MEM[64] + 96] = v97;
                            v98 = v99 = 0;
                            while (v98 < v97) {
                                MEM[v98 + (36 + MEM[64] + 96 + 32)] = MEM[v98 + (MEM[varg3] + 32 + 32)];
                                v98 += 32;
                            }
                            if (v98 > v97) {
                                MEM[36 + MEM[64] + 96 + 32 + v97] = 0;
                            }
                            MEM[36 + MEM[64] + 32] = address(varg2);
                            MEM[100 + MEM[64]] = varg1;
                            MEM[MEM[64] + 32] = bytes4(0x2979f52b00000000000000000000000000000000000000000000000000000000) | uint224(96);
                            v100 = v101 = 0;
                            while (v100 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v97) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                MEM[v100 + MEM[64]] = MEM[v100 + (MEM[64] + 32)];
                                v100 += 32;
                            }
                            if (v100 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v97) + (36 + MEM[64] + 96)) - MEM[64] - 32) {
                                MEM[MEM[64] + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v97) + (36 + MEM[64] + 96)) - MEM[64] - 32)] = 0;
                            }
                            v102, /* uint256 */ v103, /* uint256 */ v104, /* uint256 */ v105 = address(0xa7d0c19fad2b5d01ee0eea60b98eef1117aa3c88).delegatecall(MEM[MEM[64]:MEM[64] + 32 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v3e1eV0x4d22V0x1bb2 + 36 + MEM[64] + 96 - MEM[64] - 32 + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
                            if (RETURNDATASIZE() == 0) {
                                v106 = v107 = 96;
                            } else {
                                v106 = v108 = new bytes[](RETURNDATASIZE());
                                RETURNDATACOPY(v108.data, 0, RETURNDATASIZE());
                            }
                            require(v102, v105, MEM[v106]);
                            require(v104 + MEM[v106] - v104 >= 32);
                            MEM[varg3] = MEM[varg3] + 3;
                            MEM[varg3] = MEM[varg3] + 6;
                            v109 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                            v110 = 0x38d9(MEM[v104], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                            v111 = MEM[varg0];
                            if (MEM[varg0 + 32] - v111 > 3) {
                                MEM8[v111] = v109 >> 8 & 0xFF;
                                MEM8[v111 + 1] = v109 & 0xFF;
                                MEM8[v111 + 2] = v110 >> 8 & 0xFF;
                                MEM8[v111 + 3] = v110 & 0xFF;
                                MEM[varg0] = 4 + v111;
                            }
                            return ;
                        }
                    } else {
                        0x298b(varg0, varg1, varg2, varg3);
                        return ;
                    }
                } else {
                    0x277e(varg0, varg1, varg2, varg3);
                    return ;
                }
            } else {
                v112 = MEM[20 + MEM[varg3]];
                MEM[varg3] += 20;
                varg2 = v113 = MEM[20 + MEM[varg3]];
                MEM[varg3] += 20;
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(varg2)) {
                    varg2 = v114 = 0;
                }
                if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == address(v113)) {
                    varg2 = v115 = 0;
                }
                MEM[varg3] += 1;
                v116 = uint8(MEM[1 + MEM[varg3]]) > 0;
                MEM[64] += 160;
                MEM[MEM[64]] = address(0x0);
                MEM[32 + MEM[64]] = address(0x0);
                MEM[64 + MEM[64]] = uint24(0);
                MEM[96 + MEM[64]] = int24(0);
                MEM[128 + MEM[64]] = address(0x0);
                MEM[varg3] += 3;
                MEM[varg3] += 3;
                MEM[varg3] += 20;
                if (uint8(MEM[1 + MEM[varg3]]) <= 0) {
                }
                if (uint8(MEM[1 + MEM[varg3]]) <= 0) {
                }
                MEM[varg3] = MEM[varg3] + MEM[MEM[varg3] + 32] + 32;
                MEM[varg3] += 20;
                owner_1_0_19 = v112;
                v117 = new struct(6);
                v118 = new struct(3);
                v118.word0 = bool(v116);
                v119 = 0x4874(varg1);
                v118.word1 = v119;
                if (v116) {
                    v120 = v121 = 0x48da(1, 0x1000276a3);
                } else {
                    v120 = v122 = 0x48ad(0xfffd8963efd1fc6a506488495d951d5263988d26, 1);
                }
                v118.word2 = address(v120);
                v117.word0 = v118;
                v117.word1 = address(v112);
                v117.word2 = address(varg2);
                v117.word3 = address(varg2);
                v117.word4 = MEM[varg3] + 32;
                v117.word5 = address(MEM[20 + MEM[varg3]]);
                MEM[32 + MEM[64]] = address(varg2);
                MEM[32 + MEM[64] + 32] = address(varg2);
                MEM[32 + MEM[64] + 64] = uint24(MEM[3 + MEM[varg3]]);
                MEM[32 + MEM[64] + 96] = int24(MEM[3 + MEM[varg3]]);
                MEM[32 + MEM[64] + 128] = address(MEM[20 + MEM[varg3]]);
                MEM[32 + MEM[64] + 160] = 192;
                MEM[32 + MEM[64] + 192] = bool(MEM[v117.word0]);
                MEM[32 + MEM[64] + 192 + 32] = MEM[v117.word0 + 32];
                MEM[32 + MEM[64] + 192 + 64] = address(MEM[64 + v117.word0]);
                MEM[32 + MEM[64] + 192 + 96] = address(v117.word1);
                MEM[32 + MEM[64] + 192 + 128] = address(v117.word2);
                MEM[32 + MEM[64] + 192 + 160] = address(v117.word3);
                MEM[32 + MEM[64] + 192 + 192] = uint8.max + 1;
                MEM[32 + MEM[64] + 192 + (uint8.max + 1)] = MEM[v117.word4];
                v123 = v124 = 0;
                while (v123 < MEM[v117.word4]) {
                    MEM[v123 + (32 + MEM[64] + 192 + (uint8.max + 1) + 32)] = MEM[v123 + (v117.word4 + 32)];
                    v123 += 32;
                }
                if (v123 > MEM[v117.word4]) {
                    MEM[32 + MEM[64] + 192 + (uint8.max + 1) + 32 + MEM[v117.word4]] = 0;
                }
                MEM[32 + MEM[64] + 192 + 224] = address(v117.word5);
                v125 = new uint256[](32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v117.word4]) + (32 + MEM[64] + 192 + (uint8.max + 1))) - MEM[64] - 32);
                v126 = v127 = 0;
                while (v126 < 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v117.word4]) + (32 + MEM[64] + 192 + (uint8.max + 1))) - MEM[64] - 32) {
                    MEM[v126 + v125.data] = MEM[v126 + (MEM[64] + 32)];
                    v126 += 32;
                }
                if (v126 > 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v117.word4]) + (32 + MEM[64] + 192 + (uint8.max + 1))) - MEM[64] - 32) {
                    MEM[v125.data + (32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v117.word4]) + (32 + MEM[64] + 192 + (uint8.max + 1))) - MEM[64] - 32)] = 0;
                }
                v128, /* uint256 */ v129 = address(v112).unlock(v125).gas(msg.gas);
                require(bool(v128), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                RETURNDATACOPY(v129, 0, RETURNDATASIZE());
                MEM[64] = v129 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                require(v129 + RETURNDATASIZE() - v129 >= 32);
                require(MEM[v129] <= uint64.max);
                require(v129 + RETURNDATASIZE() > v129 + MEM[v129] + 31);
                v130 = MEM[v129 + MEM[v129]];
                require(v130 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v131 = new bytes[](v130);
                require(!((v131 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v130) + 31) < v131) | (v131 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v130) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                require(v129 + MEM[v129] + v130 + 32 <= v129 + RETURNDATASIZE());
                v132 = v133 = 0;
                while (v132 < v130) {
                    v131[v132] = MEM[v132 + (v129 + MEM[v129] + 32)];
                    v132 += 32;
                }
                if (v132 > v130) {
                    v131[v130] = 0;
                }
                require(owner_1_0_19 == 1, Error('RouteProcessor.UniV4: unexpected'));
                require(v131.data + v131.length - v131.data >= 32);
                MEM[varg3] = MEM[varg3] + 3;
                MEM[varg3] = MEM[varg3] + 6;
                v134 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
                v135 = 0x38d9(MEM[v131.data], uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
                v136 = MEM[varg0];
                if (MEM[varg0 + 32] - v136 > 3) {
                    MEM8[v136] = v134 >> 8 & 0xFF;
                    MEM8[v136 + 1] = v134 & 0xFF;
                    MEM8[v136 + 2] = v135 >> 8 & 0xFF;
                    MEM8[v136 + 3] = v135 & 0xFF;
                    MEM[varg0] = 4 + v136;
                }
                return ;
            }
        } else {
            0x210c(varg1, varg2, varg3);
            return ;
        }
    } else {
        0x1d9e(varg0, varg1, varg2, varg3);
        return ;
    }
    revert(Error('RouteProcessor: Unknown pool type'));
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    v0 = 0x9f0(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        MEM[v2 + v1.data] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    if (v2 > MEM[v0]) {
        MEM[v1.data + MEM[v0]] = 0;
    }
    return v1;
}

function 0x1d71(uint256 varg0, address varg1) private { 
    v0 = v1 = 0;
    while (v0 < 0) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 0) {
        MEM[MEM[64]] = 0;
    }
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg1.call().value(varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v7.data, 0, RETURNDATASIZE());
    }
    require(v2, v4, MEM[v5]);
    return ;
}

function 0x1d9e(uint256 varg0, uint256 varg1, address varg2, uint256 varg3) private { 
    v0 = MEM[20 + MEM[varg3]];
    MEM[varg3] += 20;
    MEM[varg3] += 1;
    MEM[varg3] += 20;
    MEM[varg3] += 3;
    if (varg1) {
        0xcee(varg1, v0, varg2);
    }
    v1, /* uint112 */ v2, /* uint112 */ v3, /* uint32 */ v4 = address(v0).getReserves().gas(msg.gas);
    require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v2 == uint112(v2));
    require(v3 == uint112(v3));
    require(v4 == uint32(v4));
    v5 = v6 = uint112(v3);
    v5 = v7 = uint112(v2);
    v8 = v9 = v7 > 0;
    if (v9) {
        v8 = v10 = v6 > 0;
    }
    require(v8, Error('Wrong pool reserves'));
    if (1 != uint8(MEM[1 + MEM[varg3]])) {
    }
    v11, /* uint256 */ v12 = varg2.balanceOf(address(v0)).gas(msg.gas);
    require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v13 = _SafeSub(v12, v5);
    require(uint24(10 ** 6) >= uint24(MEM[3 + MEM[varg3]]), Panic(17)); // arithmetic overflow or underflow
    v14 = _SafeMul(v13, uint24(uint24(10 ** 6) - uint24(MEM[3 + MEM[varg3]])));
    v15 = _SafeMul(10 ** 6, v5);
    v16 = _SafeAdd(v15, v14);
    v17 = _SafeMul(v14, v5);
    require(v16, Panic(18)); // division by zero
    v18 = v19 = v17 / v16;
    if (1 == uint8(MEM[1 + MEM[varg3]])) {
        v18 = v20 = 0;
    } else {
        v18 = v21 = 0;
    }
    v22 = new uint256[](0);
    require(bool((address(v0)).code.size));
    v23 = address(v0).swap(v18, v18, address(MEM[20 + MEM[varg3]]), v22).gas(msg.gas);
    require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MEM[varg3] = MEM[varg3] + 3;
    MEM[varg3] = MEM[varg3] + 6;
    v24 = 0x38d9(v13, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
    v25 = 0x38d9(v19, uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
    v26 = MEM[varg0];
    if (MEM[varg0 + 32] - v26 > 3) {
        MEM8[v26] = v24 >> 8 & 0xFF;
        MEM8[v26 + 1] = v24 & 0xFF;
        MEM8[v26 + 2] = v25 >> 8 & 0xFF;
        MEM8[v26 + 3] = v25 & 0xFF;
        MEM[varg0] = 4 + v26;
    }
    return ;
}

function 0x9cbd7f62(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4, uint256 varg5, address varg6, bytes varg7, bool varg8, uint32 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(varg7 <= uint64.max);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg7.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg7 + varg7.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg7.data, varg7.length);
    v0[varg7.length] = 0;
    v1 = 0x1782(varg0, varg1, varg9, varg2);
    v2, v3 = 0x459(varg9, varg8, v0, varg6, varg5, varg4, varg3, varg2, 0xc7564);
    v4 = new uint256[](MEM[v2]);
    v5 = v6 = 0;
    while (v5 < MEM[v2]) {
        MEM[v5 + v4.data] = MEM[v5 + (v2 + 32)];
        v5 += 32;
    }
    if (v5 > MEM[v2]) {
        MEM[v4.data + MEM[v2]] = 0;
    }
    return v3, v4;
}

function lockAcquired(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    v0 = 0xa3c(rawData.length, rawData.data);
    v1 = new uint256[](MEM[v0]);
    v2 = v3 = 0;
    while (v2 < MEM[v0]) {
        MEM[v2 + v1.data] = MEM[v2 + (v0 + 32)];
        v2 += 32;
    }
    if (v2 > MEM[v0]) {
        MEM[v1.data + MEM[v0]] = 0;
    }
    return v1;
}

function receive() public payable { 
}

function 0x210c(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[varg2] += 1;
    MEM[varg2] += 20;
    if (MEM[1 + MEM[varg2]] & 0x1 != 1) {
        if (!(MEM[1 + MEM[varg2]] & 0x2)) {
            require(bool(varg1.code.size));
            v0 = varg1.withdraw(varg0).gas(msg.gas);
            require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        0x1d71(varg0, address(MEM[20 + MEM[varg2]]));
        return ;
    } else {
        MEM[varg2] += 20;
        if (!(MEM[1 + MEM[varg2]] & 0x2)) {
            require(bool((address(MEM[20 + MEM[varg2]])).code.size));
            v1 = address(MEM[20 + MEM[varg2]]).deposit().value(varg0).gas(msg.gas);
            require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        if (this == address(MEM[20 + MEM[varg2]])) {
            return ;
        } else {
            0xcee(varg0, MEM[20 + MEM[varg2]], address(MEM[20 + MEM[varg2]]));
            return ;
        }
    }
}

function 0xba3f2165(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4, uint256 varg5, address varg6, bytes varg7, bool varg8, uint32 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(varg7 <= uint64.max);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg7.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg7 + varg7.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg7.data, varg7.length);
    v0[varg7.length] = 0;
    v1, v2 = 0x459(varg9, varg8, v0, this, varg5, varg4, varg3, varg2, 2654);
    v3 = 0x1782(0x5e3a8, varg0, varg8, varg3);
    v4 = _SafeSub(v2, v3);
    0x109c(v4, varg5, address(varg3));
    v5 = new uint256[](MEM[v1]);
    v6 = v7 = 0;
    while (v6 < MEM[v1]) {
        MEM[v6 + v5.data] = MEM[v6 + (v1 + 32)];
        v6 += 32;
    }
    if (v6 > MEM[v1]) {
        MEM[v5.data + MEM[v1]] = 0;
    }
    return v4, v5;
}

function 0xe9406cf4(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4, uint256 varg5, address varg6, bytes varg7, bool varg8, uint32 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    require(varg7 <= uint64.max);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg7.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg7.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg7 + varg7.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg7.data, varg7.length);
    v0[varg7.length] = 0;
    v1 = 0x1782(varg0, varg1, varg9, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee);
    v2, v3 = 0x459(varg9, varg8, v0, varg6, varg5, varg4, varg3, varg2, 0xe1cab);
    v4 = new uint256[](MEM[v2]);
    v5 = v6 = 0;
    while (v5 < MEM[v2]) {
        MEM[v5 + v4.data] = MEM[v5 + (v2 + 32)];
        v5 += 32;
    }
    if (v5 > MEM[v2]) {
        MEM[v4.data + MEM[v2]] = 0;
    }
    return v3, v4;
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(newOwner, Error('Ownable: new owner is the zero address'));
    _owner = newOwner;
    emit OwnershipTransferred(_owner, newOwner);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    0x294(data.length, data.data, amount1Delta, amount0Delta);
}

function 0xfd58a2dd(uint32 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    MEM[64] = MEM[64] + 160;
    mapping_2[varg0].field0_0_3 = 0;
    mapping_2[varg0].field0_26_27 = 0;
    mapping_2[varg0].field0_4_5 = 0;
    mapping_2[varg0].field0_6_25 = 0;
    mapping_2[varg0].field1_0_19 = 0;
    emit 0xe619190a0f916d8678c81645e5b0e5f8d4eccbae9410924107277dd3e95c524d(varg0);
}

function 0x277e(uint256 varg0, uint256 varg1, address varg2, uint256 varg3) private { 
    MEM[varg3] += 20;
    MEM[varg3] += 1;
    MEM[varg3] += 20;
    if (varg1) {
        0xcee(varg1, MEM[20 + MEM[varg3]], varg2);
    }
    v0, /* uint128 */ v1, /* uint128 */ v2, /* int64 */ v3, /* int64 */ v4, /* uint40 */ v5, /* int32 */ v6, /* bool */ v7, /* uint32 */ v8, /* uint8 */ v9 = address(MEM[20 + MEM[varg3]]).getState().gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 288);
    v10 = new struct(9);
    require(!((v10 + 288 < v10) | (v10 + 288 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(v1 == uint128(v1));
    v10.word0 = v1;
    require(v2 == uint128(v2));
    v10.word1 = v2;
    require(v3 == int64(v3));
    v10.word2 = v3;
    require(v4 == int64(v4));
    v10.word3 = v4;
    require(v5 == uint40(v5));
    v10.word4 = v5;
    require(v6 == int32(v6));
    v10.word5 = v6;
    require(v7 == bool(v7));
    v10.word6 = v7;
    require(v8 == uint32(v8));
    v10.word7 = v8;
    require(v9 == uint8(v9));
    v10.word8 = v9;
    if (uint8(MEM[1 + MEM[varg3]]) > 0) {
        require(!((int32(v10.word5) >= 0) & (int32(1000) > int32.max - int32(v10.word5))), Panic(17)); // arithmetic overflow or underflow
        require(!((int32(v10.word5) < 0) & (int32(1000) < int32.min - int32(v10.word5))), Panic(17)); // arithmetic overflow or underflow
        v11 = v12 = int32(1000) + int32(v10.word5);
    } else {
        require(!((int32(1000) >= 0) & (int32(v10.word5) < int32.min + int32(1000))), Panic(17)); // arithmetic overflow or underflow
        require(!((int32(1000) < 0) & (int32(v10.word5) > int32.max + int32(1000))), Panic(17)); // arithmetic overflow or underflow
        v11 = v13 = int32(v10.word5) - int32(1000);
    }
    v14 = new uint256[](0);
    v15, /* uint256 */ v16, /* uint256 */ v17 = address(MEM[20 + MEM[varg3]]).call(0x3eece7db00000000000000000000000000000000000000000000000000000000, address(MEM[20 + MEM[varg3]]), varg1, uint8(MEM[1 + MEM[varg3]]) > 0, False, int32(v11), v14).gas(msg.gas);
    require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    MEM[varg3] = MEM[varg3] + 3;
    MEM[varg3] = MEM[varg3] + 6;
    v18 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
    v19 = 0x38d9(v17, uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
    v20 = MEM[varg0];
    if (MEM[varg0 + 32] - v20 > 3) {
        MEM8[v20] = v18 >> 8 & 0xFF;
        MEM8[v20 + 1] = v18 & 0xFF;
        MEM8[v20 + 2] = v19 >> 8 & 0xFF;
        MEM8[v20 + 3] = v19 & 0xFF;
        MEM[varg0] = 4 + v20;
    }
    return ;
}

function 0x294(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(msg.sender == owner_1_0_19, Error('RouteProcessor.uniswapV3SwapCallback: call from unknown source'));
    if (varg3 <= 0) {
    }
    require(varg2 > 0, Error('RouteProcessor.uniswapV3SwapCallback: not positive amount'));
    owner_1_0_19 = 1;
    require(varg1 + varg0 - varg1 >= 64);
    require(msg.data[varg1] == address(msg.data[varg1]));
    require(msg.data[varg1 + 32] == uint8(msg.data[varg1 + 32]));
    v0 = _SafeAdd(varg2, uint8(msg.data[varg1 + 32]));
    0xcee(v0, msg.sender, address(msg.data[varg1]));
    return ;
}

function 0x298b(uint256 varg0, uint256 varg1, address varg2, uint256 varg3) private { 
    MEM[varg3] += 20;
    MEM[varg3] += 20;
    MEM[varg3] += 32;
    MEM[varg3] += 32;
    MEM[varg3] += 32;
    MEM[varg3] += 20;
    MEM[varg3] += 1;
    MEM[varg3] += 32;
    MEM[varg3] += 32;
    if (varg1) {
        0xcee(varg1, MEM[20 + MEM[varg3]], varg2);
    }
    v0 = 0xd80(MEM[20 + MEM[varg3]], address(MEM[20 + MEM[varg3]]));
    require(0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](0);
    if (0) {
        CALLDATACOPY(v1.data, msg.data.length, 0);
        v2 = v1.data;
    }
    MEM[4 + MEM[64]] = varg2;
    v3 = new bytes[](v1.length);
    v4 = v5 = 0;
    while (v4 < v1.length) {
        v3[v4] = v1[v4];
        v4 += 32;
    }
    if (v4 > v1.length) {
        v6 = v3.data;
        v3[v1.length] = 0;
    }
    require(bool((address(MEM[20 + MEM[varg3]])).code.size));
    v7 = address(MEM[20 + MEM[varg3]]).swap(varg2, address(MEM[20 + MEM[varg3]]), MEM[32 + MEM[varg3]], MEM[32 + MEM[varg3]], MEM[32 + MEM[varg3]], address(MEM[20 + MEM[varg3]]), uint8(MEM[1 + MEM[varg3]]), MEM[32 + MEM[varg3]], MEM[32 + MEM[varg3]], v3).gas(msg.gas);
    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v8 = 0xd80(MEM[20 + MEM[varg3]], address(MEM[20 + MEM[varg3]]));
    v9 = _SafeSub(v8, v0);
    MEM[varg3] = MEM[varg3] + 3;
    MEM[varg3] = MEM[varg3] + 6;
    v10 = 0x38d9(varg1, uint16(MEM[MEM[varg3] + 2]) << uint8(MEM[MEM[varg3] + 3]));
    v11 = 0x38d9(v9, uint16(MEM[MEM[varg3] + 5]) << uint8(MEM[MEM[varg3] + 6]));
    v12 = MEM[varg0];
    if (MEM[varg0 + 32] - v12 > 3) {
        MEM8[v12] = v10 >> 8 & 0xFF;
        MEM8[v12 + 1] = v10 & 0xFF;
        MEM8[v12 + 2] = v11 >> 8 & 0xFF;
        MEM8[v12 + 3] = v11 & 0xFF;
        MEM[varg0] = 4 + v12;
    }
    return ;
}

function 0x380b(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = 0x3991(varg0, varg1, varg2);
    if (v0) {
        return v0;
    } else {
        v1 = 0x3991(0, varg1, varg2);
        if (!v1) {
            return v1;
        } else {
            v2 = 0x3991(varg0, varg1, varg2);
            return v2;
        }
    }
}

function 0x38d9(uint256 varg0, uint256 varg1) private { 
    if (varg1) {
        require(!((varg1 >= 0) & (varg0 < int256.min + varg1)), Panic(17)); // arithmetic overflow or underflow
        require(!((varg1 < 0) & (varg0 > int256.max + varg1)), Panic(17)); // arithmetic overflow or underflow
        v0 = _SafeMul(varg0 - varg1, int16.max);
        require(varg1, Panic(18)); // division by zero
        require(!((v0 == int256.min) & (varg1 == uint256.max)), Panic(17)); // arithmetic overflow or underflow
        v1 = v2 = v0 / varg1;
    } else {
        v1 = v3 = _SafeMul(varg0, int16.max);
    }
    if (v1 <= int16.max) {
        if (v1 >= int16.min) {
            return v1;
        } else {
            return int16.min;
        }
    } else {
        return int16.max;
    }
}

function 0x3991(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 68) {
        MEM[MEM[64] + 68] = 0;
    }
    v2, /* uint256 */ v3, /* uint256 */ v4 = varg2.approve(varg1, 0x95ea7b300000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v5 = v6 = 96;
    } else {
        v5 = v7 = new bytes[](RETURNDATASIZE());
        v3 = v7.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    if (!v2) {
        return v2;
    } else if (!MEM[v5]) {
        return !MEM[v5];
    } else {
        require(v4 + MEM[v5] - v4 >= 32);
        require(MEM[v4] == bool(MEM[v4]));
        return MEM[v4];
    }
}

function _SafeSub(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(varg2 <= varg3);
    require(varg3 <= varg1);
    return varg3 - varg2, varg2 + varg0;
}

function 0x3b91() private { 
    v0 = new struct(6);
    require(!((v0 + 192 < v0) | (v0 + 192 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= ~varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 >= varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x459(uint256 varg0, uint256 varg1, bytes varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) private { 
    v0 = v1 = 0;
    v0 = v2 = 96;
    require(1 == stor_3_0_0, Error('RouteProcessor is locked'));
    stor_3_0_0 = 2;
    v0 = v3 = new struct(3);
    v3.word0 = address(varg7);
    v3.word1 = varg6;
    v3.word2 = address(varg5);
    v0 = v4 = new struct(2);
    v4.word0 = varg2;
    v4.word1 = varg2 + varg2.length;
    v5 = v4.word0;
    v4.word0 += 3;
    v6 = v4.word0;
    v4.word0 = v4.word0 + 3;
    v0 = v7 = MEM[5 + v4.word0];
    v4.word0 += 5;
    require(!(bool(uint16(4)) & (uint16(v7) > 16383)), Panic(17)); // arithmetic overflow or underflow
    v0 = v8 = MEM[64];
    MEM[64] = v8 + uint16(v7) * uint16(4) + 96;
    MEM[v8] = 64 + v8;
    MEM[v8 + 32] = v8 + uint16(v7) * uint16(4) + 64;
    v0 = v9 = 0;
    v10 = v11 = 1483;
    if (varg1) {
        v0 = v12 = this;
    }
    v13 = v14 = address(varg5);
    while (1) {
        if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(v13)) {
            v15 = address(v0);
            v16 = address(v13).balanceOf(v15).gas(msg.gas);
            require(bool(v16), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            v0 = v17 = MEM[MEM[64]];
            // Unknown jump to Block ['0x5cb', '0x6ff']. Refer to 3-address code (TAC);
        } else {
            v0 = v18 = (address(v0)).balance;
            // Unknown jump to Block ['0x5cb', '0x6ff']. Refer to 3-address code (TAC);
        }
        while (MEM[v0 + 32] > MEM[v0]) {
            MEM[v0] += 1;
            if (1 != uint8(MEM[1 + MEM[v0]])) {
                if (3 != uint8(MEM[1 + MEM[v0]])) {
                    require(4 == uint8(MEM[1 + MEM[v0]]), Error('RouteProcessor: Unknown command code', 'RouteProcessor: Unknown command code'));
                    0xf50(v0, v0);
                } else {
                    v19 = 0xf2f(v0, v0);
                }
            } else {
                v20 = 0xe69(v0, v0);
            }
        }
        v10 = v21 = 1791;
        if (v0) {
            v0 = v22 = this;
        }
        v13 = v23 = address(v0);
    }
    v24 = v25 = _SafeSub(v0, v0);
    v26 = v27 = !v0;
    if (!bool(v0)) {
        v26 = v28 = v25 > 0;
    }
    if (v26) {
        v26 = v29 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != address(v0);
    }
    if (v26) {
        v24 = v30 = _SafeSub(v25, 1);
    }
    MEM[v0 + 32] = MEM[v0] - v0 - 64;
    v31 = v24 - v0;
    if (v0) {
        v32 = 0xf71(v31, v0, v0);
        v24 = v33 = v24 - v32;
        if (this != address(v0)) {
            0x109c(v33, v0, address(v0));
        }
    }
    v34 = address(v0);
    emit 0x84b514c5b926879bf66a04e4becdc6f521e94a4411e7dfa3dd255f214478f558(msg.sender, address(MEM[v0]), uint32(v0), v34, address(MEM[64 + v0]), MEM[32 + v0], v24, v31, MEM[64 + v0]);
    stor_3_0_0 = 1;
    return v0 + 32, v24;
}

function 0x4706(int128 varg0) private { 
    require(varg0 != int128.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!(bool(varg0) & (varg1 > uint256.max / varg0)), Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x4874(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x48ad(address varg0, address varg1) private { 
    require(varg0 >= varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x48da(address varg0, address varg1) private { 
    require(varg0 <= uint160.max - varg1, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require(!((varg0 > 0) & (varg1 > 0) & (varg0 > int256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    require(!((varg0 > 0) & (varg1 < 0) & (varg1 < int256.min / varg0)), Panic(17)); // arithmetic overflow or underflow
    require(!((varg0 < 0) & (varg1 > 0) & (varg0 < int256.min / varg1)), Panic(17)); // arithmetic overflow or underflow
    require(!((varg0 < 0) & (varg1 < 0) & (varg0 < int256.max / varg1)), Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function 0x9f0(uint256 varg0, uint256 varg1) private { 
    v0 = 0x11ef(varg0, varg1, 0);
    return v0;
}

function 0xa3c(uint256 varg0, uint256 varg1) private { 
    v0 = 0x11ef(varg0, varg1, 1);
    return v0;
}

function 0xcee(uint256 varg0, address varg1, uint256 varg2) private { 
    MEM[MEM[64] + 68] = varg0;
    MEM[MEM[64]] = 68;
    MEM[64] = MEM[64] + 100;
    MEM[MEM[64] + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1);
    0x1998(MEM[64], varg2);
    return ;
}

function 0xd80(address varg0, address varg1) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg1) {
        v0, /* uint256 */ v1 = varg1.balanceOf(varg0).gas(msg.gas);
        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        return v1;
    } else {
        return varg0.balance;
    }
}

function 0xe69(uint256 varg0, uint256 varg1) private { 
    MEM[varg1] += 20;
    v0, /* uint256 */ v1 = address(MEM[20 + MEM[varg1]]).balanceOf(this).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    if (v1) {
        v1 = v2 = v1 - 1;
    }
    0x1aa4(varg0, v1, MEM[20 + MEM[varg1]], varg1);
    return v1;
}

function 0xf2f(uint256 varg0, uint256 varg1) private { 
    0x1aa4(varg0, this.balance, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, varg1);
    return this.balance;
}

function 0xf50(uint256 varg0, uint256 varg1) private { 
    MEM[varg1] += 20;
    0x1b07(varg0, 0, MEM[20 + MEM[varg1]], varg1);
    return ;
}

function 0xf71(uint256 varg0, uint32 varg1, address varg2) private { 
    if (varg0 > 0) {
        v0 = v1 = 0;
        if (varg1) {
            if (mapping_2[varg1].field0_0_3) {
                v0 = v2 = varg0 * mapping_2[varg1].field0_26_27 / 1000;
                if (v2) {
                    0x109c(v2, mapping_2[varg1].field1_0_19, varg2);
                }
                if (v2 >= varg0) {
                    return v2;
                }
            }
        }
        MEM[0] = 0;
        MEM[32] = 2;
        if (stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077c_0_19) {
            if (varg0 - v0) {
                0x109c(varg0 - v0, stor_ac33ff75c19e70fe83507db0d683fd3465c996598dc972688b7ace676c89077c_0_19, varg2);
            }
            return varg0;
        } else {
            return v0;
        }
    } else {
        return 0;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0xab6291fe > function_selector >> 224) {
        if (0x8da5cb5b > function_selector >> 224) {
            if (0x6be92b89 == function_selector >> 224) {
                0x6be92b89();
            } else if (0x715018a6 == function_selector >> 224) {
                renounceOwnership();
            } else if (0x7c939f12 == function_selector >> 224) {
                0x7c939f12();
            }
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x9cbd7f62 == function_selector >> 224) {
            0x9cbd7f62();
        }
    } else if (0xf2fde38b > function_selector >> 224) {
        if (0xab6291fe == function_selector >> 224) {
            lockAcquired(bytes);
        } else if (0xba3f2165 == function_selector >> 224) {
            0xba3f2165();
        } else if (0xe9406cf4 == function_selector >> 224) {
            0xe9406cf4();
        }
    } else if (0xf2fde38b == function_selector >> 224) {
        transferOwnership(address);
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    } else if (0xfd58a2dd == function_selector >> 224) {
        0xfd58a2dd();
    }
    require(!msg.value);
    v0, v1 = _SafeSub(0, msg.data.length, 4, msg.data.length);
    require(v1 + v0 - v1 >= 64);
    v2, v3 = _SafeSub(0, msg.data.length, 132, msg.data.length);
    0x294(v2, v3, msg.data[v1 + 32], msg.data[v1]);
}
