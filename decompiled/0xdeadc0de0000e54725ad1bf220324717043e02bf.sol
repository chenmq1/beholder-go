// Decompiled by library.dedaub.com
// 2026.04.19 18:49 UTC

// Data structures and variables inferred from the use of storage instructions
uint64 stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00] bytes 0 to 7
bool _initialize; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00] bytes 8 to 8
address _upgradeToAndCall; // STORAGE[0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc] bytes 0 to 19
address _owner; // STORAGE[0x9016d09d72d40fdae2fd8ceac6b6234c7706214fd39c1cd1e609a0528c199300] bytes 0 to 19


// Events
Initialized(uint64);
OwnershipTransferred(address, address);
Upgraded(address);

function takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256) varg0, bytes varg1, bytes32 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 480);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = varg0.data;
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    require(!(varg1 - address(varg1)));
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v1.data <= msg.data.length);
    require(!(msg.sender - address(0x111111125421ca6dc452d289314280a0f8842a65)), MsgSenderNotLOP());
    0x1144(((byte(varg2.word1, 0x0)) & 0x1f == 16) & bool((byte(varg2.word1, 0x1)) & 0x1), bool((byte(varg2.word1, 0x0)) & 0x80), address(0x111111125421ca6dc452d289314280a0f8842a65), msg.data[4 + varg2], 4 + varg2 + 32);
    return ;
}

function 0x1144(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (varg1) {
        0x4811(address(msg.data[0x84]), varg2);
    }
    if (!varg0) {
        v0 = v1 = msg.data[356];
    } else {
        v0 = v2 = msg.data[388];
    }
    if (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg4], 0x0)) << 248) {
        require(!(0x1000000000000000000000000000000000000000000000000000000000000000 - (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg4], 0x0)) << 248)));
        v3 = msg.data[varg4 + 1];
        require(2 > v3 >> 253, Panic(33)); // failed convertion to enum type
        require(2 > v3 >> 253, Panic(33)); // failed convertion to enum type
        if (v3 >> 253) {
            require(2 > v3 >> 253, Panic(33)); // failed convertion to enum type
            require(!((v3 >> 253) - 1));
            if (0 == (v3 >> 248 & 0x1 == 1)) {
                v4 = v5 = uint32(v3 >> 160);
                if (!v5) {
                    v4 = v6 = 997;
                }
                v7, v8, v8 = address(v3).getReserves().gas(msg.gas);
                require(v7, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v3 >> 247 & 0x1) {
                }
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v9 = address(v3).staticcall(MEM[MEM[64] + !v11440x4974 >> 247 & 0x1 << 2:MEM[64] + !v11440x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v9, MEM[64], RETURNDATASIZE());
                v10 = MEM[0x0].transfer(address(v3), v0).gas(msg.gas);
                require(v10, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                v11, /* uint256 */ v12 = address(v3).swap(v0 * v4 * v8 / (v8 * 1000 + v0 * v4) * !(v3 >> 247 & 0x1), v0 * v4 * v8 / (v8 * 1000 + v0 * v4) * (v3 >> 247 & 0x1), this, 128, 0).gas(msg.gas);
                require(v11, MEM[64], RETURNDATASIZE());
            } else {
                v13 = v14 = uint32(v3 >> 160);
                if (!v14) {
                    v13 = v15 = 997;
                }
                v16, v17, v17 = address(v3).getReserves().gas(msg.gas);
                require(v16, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v3 >> 247 & 0x1) {
                }
                if (!(varg3 - 33)) {
                    MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                    v18 = address(v3).staticcall(MEM[MEM[64] + !v11440x4974 >> 247 & 0x1 << 2:MEM[64] + !v11440x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                    require(v18, MEM[64], RETURNDATASIZE());
                    v19 = MEM[0x0].transfer(address(v3), v17 * v0 * 1000 / ((v17 - v0) * v13) + 1).gas(msg.gas);
                    require(v19, MEM[64], RETURNDATASIZE());
                    if (RETURNDATASIZE()) {
                        require(MEM[0]);
                    }
                    0x53ba(this, v0, v3);
                } else {
                    require(32 <= varg3 - 33);
                    require(varg3 - 33 <= varg3 - 33);
                    0x4f68(address(v3), v17 * v0 * 1000 / ((v17 - v0) * v13) + 1, msg.data[varg4 + 33], 32 + (varg4 + 33), varg3 - 33 - 32);
                    0x53ba(this, v0, v3);
                }
            }
            return ;
        } else {
            0x51f1(this, v0, v3, varg4 + 33, varg3 - 33);
            return ;
        }
    } else {
        v20 = v21 = 0;
        while (v20 < msg.data[varg4 + 1]) {
            require(msg.data[varg4 + 33 + (v20 << 5)] < msg.data.length - (varg4 + 33) - 31);
            require(msg.data[varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)]] <= uint64.max);
            require(varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)] + 32 <= msg.data.length - msg.data[varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)]]);
            CALLDATACOPY(MEM[64], varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)] + 52, msg.data[varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)]] - 20);
            v22, /* uint256 */ v23 = (msg.data[varg4 + 33 + msg.data[varg4 + 33 + (v20 << 5)] + 32] >> 96).call(MEM[MEM[64]:MEM[64] + msg.data[v1144arg0x4 + 33 + msg.data[v1144arg0x4 + 33 + v4af4_0x0V0x49120x1144 << 5]] - 20], MEM[0:0]).gas(msg.gas);
            require(v22, v23, RETURNDATASIZE());
            v20 += 1;
        }
        return ;
    }
}

function UPGRADE_INTERFACE_VERSION() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(('5.0.0' + 64 > uint64.max) | ('5.0.0' + 64 < '5.0.0')), Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](v1.length);
    MCOPY(v0.data, v1.data, v1.length);
    v0[v1.length] = 0;
    return v0;
}

function 0xa3b2866a(uint256 varg0, bytes varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    v0 = v1 = varg0.data;
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require((varg2.length << 5) + (4 + varg2) + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require((varg3.length << 5) + (4 + varg3) + 32 <= msg.data.length);
    v2 = v3 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v4 = 0x40a4(tx.origin);
        v2 = v5 = !v4;
    }
    require(!v2);
    v6 = v7 = bool(varg4 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffff);
    if (v7) {
        v6 = v8 = varg3.length != varg2.length;
    }
    require(!v6);
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new uint256[](varg2.length);
    require(!((v9 + (32 + (varg2.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (varg2.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v9.data, msg.data.length, 32 + (varg2.length << 5) - 32);
    while (v10 < varg2.length) {
        v11 = 0x3ed5(varg2.data, varg2.length, v10);
        require(!(msg.data[v11] - address(msg.data[v11])));
        v12 = 0x421e(msg.data[v11]);
        require(v10 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v9[v10] = v12;
        v10 = v10 + 1;
    }
    require((address(0x11f84b9aa48e5f8aa8b9897600006289be)).code.size);
    v13 = new uint256[](varg0.length);
    v14 = v15 = v13.data;
    v16 = v17 = MEM[64] + 4 + (varg0.length << 5) + 96;
    v18 = v19 = 0;
    while (v18 < varg0.length) {
        MEM[v14] = v16 - (MEM[64] + 4) - 96;
        require(msg.data[v0] < msg.data.length - v1 - 63);
        require(msg.data[msg.data[v0] + v1] < msg.data.length - (msg.data[v0] + v1) - 31);
        require(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] <= uint64.max);
        require(msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)]);
        MEM[v16] = 64;
        MEM[v16 + 64] = msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)];
        CALLDATACOPY(v16 + 64 + 32, msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1) + 32, msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)]);
        MEM[v16 + 64 + msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 32] = 0;
        require(msg.data[msg.data[v0] + v1 + 32] < msg.data.length - (msg.data[v0] + v1) - 31);
        require(msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] <= uint64.max);
        require(msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)]);
        MEM[v16 + 32] = (msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v16 + 64) + 32 - v16;
        MEM[(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v16 + 64) + 32] = msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)];
        CALLDATACOPY((msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v16 + 64) + 32 + 32, msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1) + 32, msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)]);
        MEM[(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v16 + 64) + 32 + msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] + 32] = 0;
        v16 = (msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + ((msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v16 + 64) + 32) + 32;
        v0 = v0 + 32;
        v14 = v14 + 32;
        v18 = v18 + 1;
    }
    v16 = new bytes[](varg1.length);
    CALLDATACOPY(v16.data, varg1.data, varg1.length);
    v16[varg1.length] = 0;
    v20, /* uint256 */ v21 = address(0x11f84b9aa48e5f8aa8b9897600006289be).executeBatchWithCallback(v13, v16).gas(msg.gas);
    require(v20, v21, RETURNDATASIZE());
    if (v20) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    while (v10 < varg2.length) {
        v22 = 0x3ed5(varg2.data, varg2.length, v10);
        require(!(msg.data[v22] - address(msg.data[v22])));
        v23 = 0x421e(msg.data[v22]);
        require(v10 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (v23 < v9[v10]) {
            v24 = 0x3ed5(varg2.data, varg2.length, v10);
            require(msg.data[v24] - address(msg.data[v24]), address(msg.data[v24]));
            revert();
        } else {
            require(v10 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v10 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v9[v10] = v23 - v9[v10];
            v10 = v10 + 1;
        }
    }
    if (v7) {
        require(!(varg3.length - varg2.length));
        while (v10 < varg2.length) {
            require(v10 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v25 = 0x3ed5(varg3.data, varg3.length, v10);
            v10 += msg.data[v25] * v9[v10] / 10 ** 18;
            v10 = v10 + 1;
        }
        require(tx.gasprice * (((varg4 >> 224) + (msg.gas - msg.gas)) * (0x186a0 - uint16(varg4 >> 208)) / 0x186a0) + (varg4 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffff) <= v10, InsufficientProfit());
        return ;
    } else {
        return ;
    }
}

function 0xa13b4c26(struct(8) varg0, bytes varg1, address varg2, uint256 varg3, uint256 varg4, address varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg2);
    require(msg.data[varg0 + 228] < msg.data.length - (4 + varg0) - 31);
    require(msg.data[4 + varg0 + msg.data[varg0 + 228]] <= uint64.max);
    require(32 + (4 + varg0 + msg.data[varg0 + 228]) <= msg.data.length - (msg.data[4 + varg0 + msg.data[varg0 + 228]] << 5));
    require(msg.data[4 + varg0 + msg.data[varg0 + 228]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](msg.data[4 + varg0 + msg.data[varg0 + 228]]);
    require(!((v5 + (32 + (msg.data[4 + varg0 + msg.data[varg0 + 228]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (msg.data[4 + varg0 + msg.data[varg0 + 228]] << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[4 + varg0 + msg.data[varg0 + 228]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = 0;
    while (v6 < 32 + (msg.data[4 + varg0 + msg.data[varg0 + 228]] << 5) - 32) {
        v8 = new struct(2);
        require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
        v8.word0 = 0;
        v8.word1 = 0;
        MEM[v5 + v6 + 32] = v8;
        v6 = v6 + 32;
    }
    v9 = 0;
    while (v9 < msg.data[4 + varg0 + msg.data[varg0 + 228]]) {
        v10 = new struct(2);
        require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v10.word0 = uint32(block.timestamp);
        v10.word1 = this;
        require(v9 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v5[v9] = v10;
        require(v9 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v9 = v9 + 1;
    }
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v11 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v11.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v12 = v13.data;
    require(v13.length <= uint64.max);
    require(v12 <= msg.data.length - (v13.length << 6));
    v14 = v11 + 288;
    v15 = 0;
    while (v15 < v13.length) {
        CALLDATACOPY(v14, v12, 64);
        v14 = v14 + 64;
        v12 = v12 + 64;
        v15 = v15 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v16 = varg0.word7;
    v17 = v18 = v16.data;
    require(v16.length <= uint64.max);
    require(v18 <= msg.data.length - (v16.length << 5));
    MEM[v14] = v16.length;
    v19 = v20 = v14 + 32;
    v21 = v22 = v14 + (v16.length << 5) + 32;
    v23 = v24 = 0;
    while (v23 < v16.length) {
        MEM[v19] = v21 - v14 - 32;
        require(msg.data[v17] < msg.data.length - varg0.word7 - 287);
        MEM[v21] = msg.data[msg.data[v17] + varg0.word7 + 32];
        MEM[v21 + 32] = msg.data[msg.data[v17] + varg0.word7 + 64];
        MEM[v21 + 64] = msg.data[msg.data[v17] + varg0.word7 + 96];
        MEM[v21 + 96] = msg.data[msg.data[v17] + varg0.word7 + 128];
        MEM[v21 + 128] = msg.data[msg.data[v17] + varg0.word7 + 160];
        MEM[v21 + 160] = msg.data[msg.data[v17] + varg0.word7 + 192];
        require(msg.data[msg.data[v17] + varg0.word7 + 224] < msg.data.length - (msg.data[v17] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + 192] = uint8.max + 1;
        MEM[v21 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)];
        CALLDATACOPY(v21 + (uint8.max + 1) + 32, msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + (uint8.max + 1) + msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] + 32] = 0;
        v25 = (msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v21 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v17] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + 224] = v25 - v21;
        MEM[v25] = msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)];
        CALLDATACOPY(v25 + 32, msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v25 + msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] + 32] = 0;
        v21 = (msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v25 + 32;
        v17 = v17 + 32;
        v19 = v19 + 32;
        v23 = v23 + 1;
    }
    v21 = new uint256[](v5.length);
    v26 = v27 = v21.data;
    v28 = v29 = v5.data;
    v30 = v31 = 0;
    while (v30 < v5.length) {
        MEM[v26] = uint32(MEM[MEM[v28]]);
        MEM[v26 + 32] = MEM[MEM[v28] + 32];
        v26 = v26 + 64;
        v28 = v28 + 32;
        v30 = v30 + 1;
    }
    v26 = new bytes[](varg1.length);
    CALLDATACOPY(v26.data, varg1.data, varg1.length);
    v26[varg1.length] = 0;
    v32, /* uint256 */ v33 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).finalise(v11, v21, this, v26, v34, v34, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v14 - v11, v13.length).gas(msg.gas);
    if (!v32) {
        v35 = RETURNDATASIZE();
        revert(v34, v34, v34, v34, v34, v34, v34, v34, v34, address(varg0.word5), uint8.max + 1);
    } else {
        if (v32) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        0x4aa1(varg5);
        0x4287(varg2, v4, msg.gas, varg3, varg4);
        return ;
    }
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function whitelistedCaller() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x64ddc0430eec16dbf928e985177b5a93f4cb3d27);
}

function 0x7aa72039(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11) public nonPayable { 
    require(msg.data.length - 4 >= 384);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    v0 = v1 = varg8.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg8.data;
    require(4 + varg8 + v1 + 32 <= msg.data.length);
    require(varg11 <= uint64.max);
    require(4 + varg11 + 31 < msg.data.length);
    v0 = v3 = varg11.length;
    require(v3 <= uint64.max);
    v0 = v4 = varg11.data;
    require(4 + varg11 + v3 + 32 <= msg.data.length);
    v5 = v6 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v7 = 0x40a4(tx.origin);
        v5 = v8 = !v7;
    }
    require(!v5);
    v9 = v10 = 96;
    v0 = v11 = 18372;
    v0 = v12 = 17798;
    if (varg9 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v13, /* uint256 */ v14 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v13, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v15, /* uint256 */ v16 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v15, MEM[64], RETURNDATASIZE());
            v17, /* uint256 */ v18 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v16).gas(msg.gas);
            require(v17, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v0 = v19 = MEM[64];
    MEM[v19] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
    MEM[v19 + 4] = varg0;
    MEM[v19 + 36] = varg1;
    MEM[v19 + 68] = varg2;
    MEM[v19 + 100] = varg3;
    MEM[v19 + 132] = varg4;
    MEM[v19 + 164] = varg5;
    MEM[v19 + 196] = varg6;
    MEM[v19 + 228] = varg7;
    v0 = v20 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg9;
    MEM[v19 + 260] = 384;
    v21 = v22 = v19 + 388;
    while (1) {
        MEM[v21] = v0;
        CALLDATACOPY(v21 + 32, v0, v0);
        MEM[v21 + v0 + 32] = 0;
        v21 = (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v21 + 32;
        // Unknown jump to Block ['0x45860x46e8B0x1992', '0x47c4B0x1992']. Refer to 3-address code (TAC);
        MEM[v0 + 292] = v20;
        MEM[v0 + 324] = v9;
        MEM[v0 + 356] = v21 - v0 - 4;
    }
    v23 = address(0x111111125421ca6dc452d289314280a0f8842a65).call(MEM[v44850x46e8_0x0V0x1992:v44850x46e8_0x0V0x1992 + v46e80x37caV0x1992 - v44850x46e8_0x0V0x1992], MEM[v44850x46e8_0x0V0x1992:v44850x46e8_0x0V0x1992 + v45860x46e8_0x3V0x1992]).gas(msg.gas);
    require(v23, MEM[64], RETURNDATASIZE());
    v24 = v25 = 0;
    if (v23) {
        v26 = 96;
        if (96 > RETURNDATASIZE()) {
            v26 = v27 = RETURNDATASIZE();
        }
        require(!((v0 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v0 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v0 + v26 - v0 >= 96);
        v24 = MEM[v0];
    }
    require(!(v24 - v0));
    return MEM[v46eaV0x1992:v46eaV0x1992 + v46eaV0x1992];
}

function 0x7838d6a7(struct(8) varg0, bytes varg1, address varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg2);
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    require(v5.length <= uint64.max);
    require(v5.data <= msg.data.length - (v5.length << 5));
    require(v5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = new uint256[](v5.length);
    require(!((v6 + (32 + (v5.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (v5.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    require(v5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v7 = v8 = 0;
    while (v7 < 32 + (v5.length << 5) - 32) {
        v9 = new struct(2);
        require(!((v9 + 64 > uint64.max) | (v9 + 64 < v9)), Panic(65)); // failed memory allocation (too much memory)
        v9.word0 = 0;
        v9.word1 = 0;
        MEM[v6 + v7 + 32] = v9;
        v7 = v7 + 32;
    }
    v10 = 0;
    while (v10 < v5.length) {
        v11 = new struct(2);
        require(!((v11 + 64 > uint64.max) | (v11 + 64 < v11)), Panic(65)); // failed memory allocation (too much memory)
        v11.word0 = uint32(block.timestamp);
        v11.word1 = this;
        require(v10 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v6[v10] = v11;
        require(v10 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v10 = v10 + 1;
    }
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v12 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v12.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v13 = v14.data;
    require(v14.length <= uint64.max);
    require(v13 <= msg.data.length - (v14.length << 6));
    v15 = v12 + 288;
    v16 = 0;
    while (v16 < v14.length) {
        CALLDATACOPY(v15, v13, 64);
        v15 = v15 + 64;
        v13 = v13 + 64;
        v16 = v16 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v17 = varg0.word7;
    v18 = v19 = v17.data;
    require(v17.length <= uint64.max);
    require(v19 <= msg.data.length - (v17.length << 5));
    MEM[v15] = v17.length;
    v20 = v21 = v15 + 32;
    v22 = v23 = v15 + (v17.length << 5) + 32;
    v24 = v25 = 0;
    while (v24 < v17.length) {
        MEM[v20] = v22 - v15 - 32;
        require(msg.data[v18] < msg.data.length - varg0.word7 - 287);
        MEM[v22] = msg.data[msg.data[v18] + varg0.word7 + 32];
        MEM[v22 + 32] = msg.data[msg.data[v18] + varg0.word7 + 64];
        MEM[v22 + 64] = msg.data[msg.data[v18] + varg0.word7 + 96];
        MEM[v22 + 96] = msg.data[msg.data[v18] + varg0.word7 + 128];
        MEM[v22 + 128] = msg.data[msg.data[v18] + varg0.word7 + 160];
        MEM[v22 + 160] = msg.data[msg.data[v18] + varg0.word7 + 192];
        require(msg.data[msg.data[v18] + varg0.word7 + 224] < msg.data.length - (msg.data[v18] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)]);
        MEM[v22 + 192] = uint8.max + 1;
        MEM[v22 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)];
        CALLDATACOPY(v22 + (uint8.max + 1) + 32, msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)]);
        MEM[v22 + (uint8.max + 1) + msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)] + 32] = 0;
        v26 = (msg.data[msg.data[msg.data[v18] + varg0.word7 + 224] + (msg.data[v18] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v22 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v18] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)]);
        MEM[v22 + 224] = v26 - v22;
        MEM[v26] = msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)];
        CALLDATACOPY(v26 + 32, msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)]);
        MEM[v26 + msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)] + 32] = 0;
        v22 = (msg.data[msg.data[msg.data[v18] + varg0.word7 + (uint8.max + 1)] + (msg.data[v18] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v26 + 32;
        v18 = v18 + 32;
        v20 = v20 + 32;
        v24 = v24 + 1;
    }
    v22 = new uint256[](v6.length);
    v27 = v28 = v22.data;
    v29 = v30 = v6.data;
    v31 = v32 = 0;
    while (v31 < v6.length) {
        MEM[v27] = uint32(MEM[MEM[v29]]);
        MEM[v27 + 32] = MEM[MEM[v29] + 32];
        v27 = v27 + 64;
        v29 = v29 + 32;
        v31 = v31 + 1;
    }
    v27 = new bytes[](varg1.length);
    CALLDATACOPY(v27.data, varg1.data, varg1.length);
    v27[varg1.length] = 0;
    v33, /* uint256 */ v34 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).finalise(v12, v22, this, v27, v35, v35, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v15 - v12, v14.length).gas(msg.gas);
    if (!v33) {
        v36 = RETURNDATASIZE();
        revert(v35, v35, v35, v35, v35, v35, v35, v35, v35, address(varg0.word5), uint8.max + 1);
    } else {
        if (v33) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        0x4287(varg2, v4, msg.gas, varg3, varg4);
        return ;
    }
}

function unwrapWeth(address recipient_) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v0, /* uint256 */ v1 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).balanceOf(this).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
    v5, /* uint256 */ v6 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(v1).gas(msg.gas);
    require(v5, v6, RETURNDATASIZE());
    if (v5) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    0x467b(recipient_, this.balance);
    return ;
}

function 0x73e57c27(uint256 varg0, struct(4) varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0 + (varg0.length << 6) + 36 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(msg.data[4 + varg1] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x25c3226c00b2cdc200005a1600509f4e00c0)));
    require(4 + varg1 + 32 + msg.data[4 + varg1] - (4 + varg1 + 32) >= 64);
    require(varg1.word2 <= uint64.max);
    require(4 + varg1 + 32 + msg.data[4 + varg1] - (4 + varg1 + 32 + varg1.word2) >= uint8.max + 1);
    v1 = new struct(8);
    require(!((v1 + (uint8.max + 1) > uint64.max) | (v1 + (uint8.max + 1) < v1)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = msg.data[4 + varg1 + 32 + varg1.word2];
    v1.word1 = msg.data[4 + varg1 + 32 + varg1.word2 + 32];
    v1.word2 = msg.data[4 + varg1 + 32 + varg1.word2 + 64];
    v1.word3 = msg.data[4 + varg1 + 32 + varg1.word2 + 96];
    v1.word4 = msg.data[4 + varg1 + 32 + varg1.word2 + 128];
    v1.word5 = msg.data[4 + varg1 + 32 + varg1.word2 + 160];
    require(msg.data[4 + varg1 + 32 + varg1.word2 + 192] <= uint64.max);
    require(4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192] + 31 < 4 + varg1 + 32 + msg.data[4 + varg1]);
    require(msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new bytes[](msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]]);
    require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]] + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]] + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192] + 32 + msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]] <= 4 + varg1 + 32 + msg.data[4 + varg1]);
    CALLDATACOPY(v2.data, 4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192] + 32, msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]]);
    v2[msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 192]]] = 0;
    v1.word6 = v2;
    require(msg.data[4 + varg1 + 32 + varg1.word2 + 224] <= uint64.max);
    require(4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224] + 31 < 4 + varg1 + 32 + msg.data[4 + varg1]);
    require(msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]]);
    require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]] + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]] + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
    require(4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224] + 32 + msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]] <= 4 + varg1 + 32 + msg.data[4 + varg1]);
    CALLDATACOPY(v3.data, 4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224] + 32, msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]]);
    v3[msg.data[4 + varg1 + 32 + varg1.word2 + msg.data[4 + varg1 + 32 + varg1.word2 + 224]]] = 0;
    v1.word7 = v3;
    if (!(((byte(msg.data[4 + varg1 + 32 + varg1.word3 + 32], 0x0)) & 0x1f == 16) & bool((byte(msg.data[4 + varg1 + 32 + varg1.word3 + 32], 0x1)) & 0x1))) {
        require(varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        0x1ded(4 + varg1 + 32 + varg1.word3, 4 + varg1 + 32 + varg1.word3 + 32, msg.data[68 + varg0]);
    } else {
        0x1ded(4 + varg1 + 32 + varg1.word3, 4 + varg1 + 32 + varg1.word3 + 32, v1.word4);
    }
    v4 = new struct(2);
    v5 = v4.data;
    v4.word1 = this;
    v4.word0 = 32;
    require(!((v4 + 64 > uint64.max) | (v4 + 64 < v4)), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 0x978fb89600000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 4] = varg1.word1;
    v6 = new uint256[](v1.word0);
    MEM[v6.data] = v1.word1;
    MCOPY(v6 + (uint8.max + 1) + 32, v7.data, v7.length);
    MEM[v6 + (uint8.max + 1) + v7.length + 32] = 0;
    MEM[(v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v6 + (uint8.max + 1)) + 32] = v8.length;
    MCOPY((v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v6 + (uint8.max + 1)) + 32 + 32, v8.data, v8.length);
    MEM[(v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v6 + (uint8.max + 1)) + 32 + v8.length + 32] = 0;
    v9 = (v8.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + ((v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v6 + (uint8.max + 1)) + 32) + 32;
    MEM[v9] = v4.word0.length;
    MCOPY(v9 + 32, v4.data, v4.word0.length);
    MEM[v9 + v4.word0.length + 32] = 0;
    v10, /* uint256 */ v11 = address(v1.word1).fill(varg1.word1, v6, uint48.max, v9 - MEM[64] - 4, v12, v12, v1.word2, v1.word3, v1.word4, v1.word5, uint8.max + 1, (v7.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v6 + (uint8.max + 1)) + 32 - v6, v7.length).gas(msg.gas);
    if (!v10) {
        v13 = RETURNDATASIZE();
        revert(v12, v12, v12, v12, v12, v12, v12, v12, v12, v1.word5, uint8.max + 1);
    } else {
        if (v10) {
            v14 = v15 = 32;
            if (32 > RETURNDATASIZE()) {
                v14 = v16 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v14 - MEM[64] >= 32);
        }
        require((address(v1.word1)).code.size);
        v17 = new uint256[](v1.word0);
        MEM[v17.data] = v1.word1;
        MCOPY(v17 + (uint8.max + 1) + 32, v18.data, v18.length);
        MEM[v17 + (uint8.max + 1) + v18.length + 32] = 0;
        MEM[(v18.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v17 + (uint8.max + 1)) + 32] = v19.length;
        MCOPY((v18.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v17 + (uint8.max + 1)) + 32 + 32, v19.data, v19.length);
        MEM[(v18.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v17 + (uint8.max + 1)) + 32 + v19.length + 32] = 0;
        v20, /* uint256 */ v21 = address(v1.word1).setAttestation(varg1.word1, this, uint32(block.timestamp), v17, v12, v12, v1.word2, v1.word3, v1.word4, v1.word5, uint8.max + 1, (v18.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v17 + (uint8.max + 1)) + 32 - v17, v18.length).gas(msg.gas);
        if (!v20) {
            v22 = RETURNDATASIZE();
            revert(v12, v12, v12, v12, v12, v12, v12, v12, v12, v1.word5, uint8.max + 1);
        } else if (v20) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
            return ;
        } else {
            return ;
        }
    }
}

function 0x1ded(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg1], 0x0)) << 248) {
        require(!(0x1000000000000000000000000000000000000000000000000000000000000000 - (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg1], 0x0)) << 248)));
        v0 = msg.data[varg1 + 1];
        v1 = msg.data[varg0] - 33;
        require(2 > v0 >> 253, Panic(33)); // failed convertion to enum type
        require(2 > v0 >> 253, Panic(33)); // failed convertion to enum type
        if (v0 >> 253) {
            require(2 > v0 >> 253, Panic(33)); // failed convertion to enum type
            require(!((v0 >> 253) - 1));
            if (0 == (v0 >> 248 & 0x1 == 1)) {
                v2 = v3 = uint32(v0 >> 160);
                if (!v3) {
                    v2 = v4 = 997;
                }
                v5, v6, v6 = address(v0).getReserves().gas(msg.gas);
                require(v5, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v0 >> 247 & 0x1) {
                }
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v7 = address(v0).staticcall(MEM[MEM[64] + !v1ded0x4974 >> 247 & 0x1 << 2:MEM[64] + !v1ded0x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v7, MEM[64], RETURNDATASIZE());
                v8 = MEM[0x0].transfer(address(v0), varg2).gas(msg.gas);
                require(v8, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                v9, /* uint256 */ v10 = address(v0).swap(varg2 * v2 * v6 / (v6 * 1000 + varg2 * v2) * !(v0 >> 247 & 0x1), varg2 * v2 * v6 / (v6 * 1000 + varg2 * v2) * (v0 >> 247 & 0x1), this, 128, 0).gas(msg.gas);
                require(v9, MEM[64], RETURNDATASIZE());
            } else {
                v11 = v12 = uint32(v0 >> 160);
                if (!v12) {
                    v11 = v13 = 997;
                }
                v14, v15, v15 = address(v0).getReserves().gas(msg.gas);
                require(v14, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v0 >> 247 & 0x1) {
                }
                v16 = v15 * varg2 * 1000 / ((v15 - varg2) * v11) + 1;
                if (!v1) {
                    MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                    v17 = address(v0).staticcall(MEM[MEM[64] + !v1ded0x4974 >> 247 & 0x1 << 2:MEM[64] + !v1ded0x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                    require(v17, MEM[64], RETURNDATASIZE());
                    v18 = MEM[0x0].transfer(address(v0), v16).gas(msg.gas);
                    require(v18, MEM[64], RETURNDATASIZE());
                    if (RETURNDATASIZE()) {
                        require(MEM[0]);
                    }
                    0x53ba(this, varg2, v0);
                } else {
                    require(32 <= v1);
                    require(v1 <= v1);
                    0x4f68(address(v0), v16, msg.data[varg1 + 33], 32 + (varg1 + 33), v1 - 32);
                    0x53ba(this, varg2, v0);
                }
            }
            return ;
        } else {
            0x51f1(this, varg2, v0, varg1 + 33, v1);
            return ;
        }
    } else {
        v19 = v20 = 0;
        while (v19 < msg.data[varg1 + 1]) {
            require(msg.data[varg1 + 33 + (v19 << 5)] < msg.data.length - (varg1 + 33) - 31);
            require(msg.data[varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)]] <= uint64.max);
            require(varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)] + 32 <= msg.data.length - msg.data[varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)]]);
            CALLDATACOPY(MEM[64], varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)] + 52, msg.data[varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)]] - 20);
            v21, /* uint256 */ v22 = (msg.data[varg1 + 33 + msg.data[varg1 + 33 + (v19 << 5)] + 32] >> 96).call(MEM[MEM[64]:MEM[64] + msg.data[v1dedarg0x1 + 33 + msg.data[v1dedarg0x1 + 33 + v4af4_0x0V0x49120x1ded << 5]] - 20], MEM[0:0]).gas(msg.gas);
            require(v21, v22, RETURNDATASIZE());
            v19 += 1;
        }
        return ;
    }
}

function 0xfd8fde24() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = _initialize;
    if (!v1) {
        v0 = v2 = stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7 >= 13;
    }
    require(!v0, InvalidInitialization());
    stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7 = 13;
    _initialize = 0;
    emit Initialized(13);
    return ;
}

function 0x72a1da54(struct(2) varg0, bytes varg1, address varg2, uint256 varg3, uint256 varg4, address varg5) public payable { 
    require(msg.data.length - 4 >= 192);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 64);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg2);
    require((address(0x11f84b9aa48e5f8aa8b9897600006289be)).code.size);
    v5 = new uint256[](64);
    require(msg.data[4 + varg0] < msg.data.length - (4 + varg0) - 31);
    require(v6.length <= uint64.max);
    require(v6.data <= msg.data.length - v6.length);
    v7 = new bytes[](v6.length);
    CALLDATACOPY(v7.data, v6.data, v6.length);
    v7[v6.length] = 0;
    v8 = new bytes[](v9.length);
    require(msg.data[4 + varg0 + 32] < msg.data.length - (4 + varg0) - 31);
    require(v9.length <= uint64.max);
    require(v9.data <= msg.data.length - v9.length);
    MEM[v5.data] = v8 - v5;
    v7[v6.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v9.length;
    CALLDATACOPY(v8.data, v9.data, v9.length);
    v8[v9.length] = 0;
    v10 = new bytes[](varg1.length);
    v8[v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = varg1.length;
    CALLDATACOPY(v10.data, varg1.data, varg1.length);
    v10[varg1.length] = 0;
    v11, /* uint256 */ v12 = address(0x11f84b9aa48e5f8aa8b9897600006289be).executeWithCallback(v5, v10).gas(msg.gas);
    require(v11, v12, RETURNDATASIZE());
    if (v11) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        v13 = v14 = 0;
    }
    0x4aa1(varg5);
    0x4287(varg2, v4, msg.gas, varg3, varg4);
    return MEM[v203barg0x1:v203barg0x1 + v203barg0x1];
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _owner = 0;
    emit OwnershipTransferred(_owner, 0);
}

function 0x6bd6fa2e(struct(8) varg0, bytes varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    require(v4.length <= uint64.max);
    require(v4.data <= msg.data.length - (v4.length << 5));
    require(v4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](v4.length);
    require(!((v5 + (32 + (v4.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v5 + (32 + (v4.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v5)), Panic(65)); // failed memory allocation (too much memory)
    require(v4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = 0;
    while (v6 < 32 + (v4.length << 5) - 32) {
        v8 = new struct(2);
        require(!((v8 + 64 > uint64.max) | (v8 + 64 < v8)), Panic(65)); // failed memory allocation (too much memory)
        v8.word0 = 0;
        v8.word1 = 0;
        MEM[v5 + v6 + 32] = v8;
        v6 = v6 + 32;
    }
    v9 = 0;
    while (v9 < v4.length) {
        v10 = new struct(2);
        require(!((v10 + 64 > uint64.max) | (v10 + 64 < v10)), Panic(65)); // failed memory allocation (too much memory)
        v10.word0 = uint32(block.timestamp);
        v10.word1 = this;
        require(v9 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v5[v9] = v10;
        require(v9 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v9 = v9 + 1;
    }
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v11 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v11.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v12 = v13.data;
    require(v13.length <= uint64.max);
    require(v12 <= msg.data.length - (v13.length << 6));
    v14 = v11 + 288;
    v15 = 0;
    while (v15 < v13.length) {
        CALLDATACOPY(v14, v12, 64);
        v14 = v14 + 64;
        v12 = v12 + 64;
        v15 = v15 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v16 = varg0.word7;
    v17 = v18 = v16.data;
    require(v16.length <= uint64.max);
    require(v18 <= msg.data.length - (v16.length << 5));
    MEM[v14] = v16.length;
    v19 = v20 = v14 + 32;
    v21 = v22 = v14 + (v16.length << 5) + 32;
    v23 = v24 = 0;
    while (v23 < v16.length) {
        MEM[v19] = v21 - v14 - 32;
        require(msg.data[v17] < msg.data.length - varg0.word7 - 287);
        MEM[v21] = msg.data[msg.data[v17] + varg0.word7 + 32];
        MEM[v21 + 32] = msg.data[msg.data[v17] + varg0.word7 + 64];
        MEM[v21 + 64] = msg.data[msg.data[v17] + varg0.word7 + 96];
        MEM[v21 + 96] = msg.data[msg.data[v17] + varg0.word7 + 128];
        MEM[v21 + 128] = msg.data[msg.data[v17] + varg0.word7 + 160];
        MEM[v21 + 160] = msg.data[msg.data[v17] + varg0.word7 + 192];
        require(msg.data[msg.data[v17] + varg0.word7 + 224] < msg.data.length - (msg.data[v17] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + 192] = uint8.max + 1;
        MEM[v21 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)];
        CALLDATACOPY(v21 + (uint8.max + 1) + 32, msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + (uint8.max + 1) + msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] + 32] = 0;
        v25 = (msg.data[msg.data[msg.data[v17] + varg0.word7 + 224] + (msg.data[v17] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v21 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v17] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v21 + 224] = v25 - v21;
        MEM[v25] = msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)];
        CALLDATACOPY(v25 + 32, msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)]);
        MEM[v25 + msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] + 32] = 0;
        v21 = (msg.data[msg.data[msg.data[v17] + varg0.word7 + (uint8.max + 1)] + (msg.data[v17] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v25 + 32;
        v17 = v17 + 32;
        v19 = v19 + 32;
        v23 = v23 + 1;
    }
    v21 = new uint256[](v5.length);
    v26 = v27 = v21.data;
    v28 = v29 = v5.data;
    v30 = v31 = 0;
    while (v30 < v5.length) {
        MEM[v26] = uint32(MEM[MEM[v28]]);
        MEM[v26 + 32] = MEM[MEM[v28] + 32];
        v26 = v26 + 64;
        v28 = v28 + 32;
        v30 = v30 + 1;
    }
    v26 = new bytes[](varg1.length);
    CALLDATACOPY(v26.data, varg1.data, varg1.length);
    v26[varg1.length] = 0;
    v32, /* uint256 */ v33 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).finalise(v11, v21, this, v26, v34, v34, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v14 - v11, v13.length).gas(msg.gas);
    if (!v32) {
        v35 = RETURNDATASIZE();
        revert(v34, v34, v34, v34, v34, v34, v34, v34, v34, address(varg0.word5), uint8.max + 1);
    } else {
        if (v32) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        exit;
    }
}

function reactorCallback(((address,address,uint256,uint256,address,bytes),(address,uint256,uint256),(address,uint256,address)[],bytes,bytes32) resolvedOrders, [] callbackData) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(resolvedOrders <= uint64.max);
    require(4 + resolvedOrders + 31 < msg.data.length);
    require(resolvedOrders.length <= uint64.max);
    require((resolvedOrders.length << 5) + (4 + resolvedOrders) + 32 <= msg.data.length);
    require(callbackData <= uint64.max);
    require(4 + callbackData + 31 < msg.data.length);
    require(msg.data[4 + callbackData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x11f84b9aa48e5f8aa8b9897600006289be)), MsgSenderNotReactor());
    0x23f5(((byte(callbackData.word1, 0x0)) & 0x1f == 16) & bool((byte(callbackData.word1, 0x1)) & 0x1), bool((byte(callbackData.word1, 0x0)) & 0x80), address(0x11f84b9aa48e5f8aa8b9897600006289be), resolvedOrders.data, resolvedOrders.length, msg.data[4 + callbackData], 4 + callbackData + 32);
    if (this.balance) {
        v1 = msg.sender.call().value(this.balance).gas(msg.gas);
        require(v1);
        exit;
    } else {
        exit;
    }
}

function 0x23f5(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    if (varg1) {
        require(varg4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg3] < msg.data.length - varg3 - 223);
        require(msg.data[varg3 + msg.data[varg3] + 128] < msg.data.length - (varg3 + msg.data[varg3]) - 31);
        require(msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]] <= uint64.max);
        require(32 + (varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]) <= msg.data.length - msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]] * 96);
        v0 = 0x3cce(32 + (varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]), msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]]);
        require(!(msg.data[v0] - address(msg.data[v0])));
        0x4811(msg.data[v0], varg2);
    }
    if (!varg0) {
        require(varg4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg3] < msg.data.length - varg3 - 223);
        v1 = v2 = msg.data[varg3 + msg.data[varg3] + 64];
    } else {
        require(varg4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg3] < msg.data.length - varg3 - 223);
        require(msg.data[varg3 + msg.data[varg3] + 128] < msg.data.length - (varg3 + msg.data[varg3]) - 31);
        require(msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]] <= uint64.max);
        require(32 + (varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]) <= msg.data.length - msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]] * 96);
        v3 = 0x3cce(32 + (varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]), msg.data[varg3 + msg.data[varg3] + msg.data[varg3 + msg.data[varg3] + 128]]);
        v1 = v4 = msg.data[v3 + 32];
    }
    if (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg6], 0x0)) << 248) {
        require(!(0x1000000000000000000000000000000000000000000000000000000000000000 - (0x1f00000000000000000000000000000000000000000000000000000000000000 & (byte(msg.data[varg6], 0x0)) << 248)));
        v5 = msg.data[varg6 + 1];
        require(2 > v5 >> 253, Panic(33)); // failed convertion to enum type
        require(2 > v5 >> 253, Panic(33)); // failed convertion to enum type
        if (v5 >> 253) {
            require(2 > v5 >> 253, Panic(33)); // failed convertion to enum type
            require(!((v5 >> 253) - 1));
            if (0 == (v5 >> 248 & 0x1 == 1)) {
                v6 = v7 = uint32(v5 >> 160);
                if (!v7) {
                    v6 = v8 = 997;
                }
                v9, v10, v10 = address(v5).getReserves().gas(msg.gas);
                require(v9, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v5 >> 247 & 0x1) {
                }
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v11 = address(v5).staticcall(MEM[MEM[64] + !v23f50x4974 >> 247 & 0x1 << 2:MEM[64] + !v23f50x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v11, MEM[64], RETURNDATASIZE());
                v12 = MEM[0x0].transfer(address(v5), v1).gas(msg.gas);
                require(v12, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                v13, /* uint256 */ v14 = address(v5).swap(v1 * v6 * v10 / (v10 * 1000 + v1 * v6) * !(v5 >> 247 & 0x1), v1 * v6 * v10 / (v10 * 1000 + v1 * v6) * (v5 >> 247 & 0x1), this, 128, 0).gas(msg.gas);
                require(v13, MEM[64], RETURNDATASIZE());
            } else {
                v15 = v16 = uint32(v5 >> 160);
                if (!v16) {
                    v15 = v17 = 997;
                }
                v18, v19, v19 = address(v5).getReserves().gas(msg.gas);
                require(v18, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (v5 >> 247 & 0x1) {
                }
                if (!(varg5 - 33)) {
                    MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                    v20 = address(v5).staticcall(MEM[MEM[64] + !v23f50x4974 >> 247 & 0x1 << 2:MEM[64] + !v23f50x4974 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                    require(v20, MEM[64], RETURNDATASIZE());
                    v21 = MEM[0x0].transfer(address(v5), v19 * v1 * 1000 / ((v19 - v1) * v15) + 1).gas(msg.gas);
                    require(v21, MEM[64], RETURNDATASIZE());
                    if (RETURNDATASIZE()) {
                        require(MEM[0]);
                    }
                    0x53ba(this, v1, v5);
                } else {
                    require(32 <= varg5 - 33);
                    require(varg5 - 33 <= varg5 - 33);
                    0x4f68(address(v5), v19 * v1 * 1000 / ((v19 - v1) * v15) + 1, msg.data[varg6 + 33], 32 + (varg6 + 33), varg5 - 33 - 32);
                    0x53ba(this, v1, v5);
                }
            }
            return ;
        } else {
            0x51f1(this, v1, v5, varg6 + 33, varg5 - 33);
            return ;
        }
    } else {
        v22 = v23 = 0;
        while (v22 < msg.data[varg6 + 1]) {
            require(msg.data[varg6 + 33 + (v22 << 5)] < msg.data.length - (varg6 + 33) - 31);
            require(msg.data[varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)]] <= uint64.max);
            require(varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)] + 32 <= msg.data.length - msg.data[varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)]]);
            CALLDATACOPY(MEM[64], varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)] + 52, msg.data[varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)]] - 20);
            v24, /* uint256 */ v25 = (msg.data[varg6 + 33 + msg.data[varg6 + 33 + (v22 << 5)] + 32] >> 96).call(MEM[MEM[64]:MEM[64] + msg.data[v23f5arg0x6 + 33 + msg.data[v23f5arg0x6 + 33 + v4af4_0x0V0x49120x23f5 << 5]] - 20], MEM[0:0]).gas(msg.gas);
            require(v24, v25, RETURNDATASIZE());
            v22 += 1;
        }
        return ;
    }
}

function 0x546ba87d(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, address varg14) public nonPayable { 
    require(msg.data.length - 4 >= 480);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    v0 = v1 = varg8.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg8.data;
    require(4 + varg8 + v1 + 32 <= msg.data.length);
    require(varg11 <= uint64.max);
    require(4 + varg11 + 31 < msg.data.length);
    v0 = v3 = varg11.length;
    require(v3 <= uint64.max);
    v0 = v4 = varg11.data;
    require(4 + varg11 + v3 + 32 <= msg.data.length);
    require(!(varg12 - address(varg12)));
    v5 = v6 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v7 = 0x40a4(tx.origin);
        v5 = v8 = !v7;
    }
    require(!v5);
    v9 = msg.gas;
    v10 = 0x421e(varg12);
    v11 = v12 = 96;
    v0 = v13 = 18372;
    v0 = v14 = 17798;
    if (varg9 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v15, /* uint256 */ v16 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v15, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v17, /* uint256 */ v18 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v17, MEM[64], RETURNDATASIZE());
            v19, /* uint256 */ v20 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v18).gas(msg.gas);
            require(v19, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v0 = v21 = MEM[64];
    MEM[v21] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
    MEM[v21 + 4] = varg0;
    MEM[v21 + 36] = varg1;
    MEM[v21 + 68] = varg2;
    MEM[v21 + 100] = varg3;
    MEM[v21 + 132] = varg4;
    MEM[v21 + 164] = varg5;
    MEM[v21 + 196] = varg6;
    MEM[v21 + 228] = varg7;
    v0 = v22 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg9;
    MEM[v21 + 260] = 384;
    v23 = v24 = v21 + 388;
    while (1) {
        MEM[v23] = v0;
        CALLDATACOPY(v23 + 32, v0, v0);
        MEM[v23 + v0 + 32] = 0;
        v23 = (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v23 + 32;
        // Unknown jump to Block ['0x45860x46e8B0x2541', '0x47c4B0x2541']. Refer to 3-address code (TAC);
        MEM[v0 + 292] = v22;
        MEM[v0 + 324] = v11;
        MEM[v0 + 356] = v23 - v0 - 4;
    }
    v25 = address(0x111111125421ca6dc452d289314280a0f8842a65).call(MEM[v44850x46e8_0x0V0x2541:v44850x46e8_0x0V0x2541 + v46e80x37caV0x2541 - v44850x46e8_0x0V0x2541], MEM[v44850x46e8_0x0V0x2541:v44850x46e8_0x0V0x2541 + v45860x46e8_0x3V0x2541]).gas(msg.gas);
    require(v25, MEM[64], RETURNDATASIZE());
    v26 = v27 = 0;
    if (v25) {
        v28 = 96;
        if (96 > RETURNDATASIZE()) {
            v28 = v29 = RETURNDATASIZE();
        }
        require(!((v0 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v0 + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v0 + v28 - v0 >= 96);
        v26 = MEM[v0];
    }
    require(!(v26 - v0));
    0x4287(v21, v22, v12, varg13, varg14);
}

function proxiableUUID() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(this - address(0x878e9d6f7dcca90d2ab0229d763b1c6699717a16)), UUPSUnauthorizedCallContext());
    return 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc;
}

function upgradeToAndCall(address newImplementation, bytes data) public payable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](data.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & data.length + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & data.length + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v1.data, data.data, data.length);
    v0[data.length] = 0;
    v2 = v3 = this == address(0x878e9d6f7dcca90d2ab0229d763b1c6699717a16);
    if (this != address(0x878e9d6f7dcca90d2ab0229d763b1c6699717a16)) {
        v2 = v4 = _upgradeToAndCall != address(0x878e9d6f7dcca90d2ab0229d763b1c6699717a16);
    }
    require(!v2, UUPSUnauthorizedCallContext());
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v5, v6 = newImplementation.proxiableUUID().gas(msg.gas);
    v6 = v7 = 0;
    if (v5) {
        v8 = v9 = 32;
        if (32 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 32);
    }
    require(v5, ERC1967InvalidImplementation(newImplementation));
    require(!(v6 - 0x360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc), UUPSUnsupportedProxiableUUID(v6));
    require(newImplementation.code.size, ERC1967InvalidImplementation(newImplementation));
    _upgradeToAndCall = newImplementation;
    emit Upgraded(newImplementation);
    if (!v0.length) {
        require(!msg.value, ERC1967NonPayable());
        exit;
    } else {
        v11 = v0.length;
        v12 = v13, /* uint256 */ v14, /* uint256 */ v15 = newImplementation.delegatecall(v1.data).gas(msg.gas);
        if (v13) {
            v12 = v16 = bool(RETURNDATASIZE());
            if (!v16) {
                v12 = v17 = bool(newImplementation.code.size);
            }
        }
        if (!v12) {
            require(!v13, AddressEmptyCode(newImplementation));
            require(!RETURNDATASIZE(), v15, RETURNDATASIZE());
            revert(FailedCall());
        } else {
            MEM[MEM[64]] = RETURNDATASIZE();
            RETURNDATACOPY(v14, 0, RETURNDATASIZE());
            exit;
        }
    }
}

function initialize(address _token0, address _token1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    v0 = v1 = !_initialize;
    v0 = v2 = !stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7;
    if (stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7) {
    }
    v3 = v4 = 1 == stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7;
    if (v4) {
        v3 = v5 = !this.code.size;
    }
    v6 = v7 = !v0;
    if (v7) {
        v6 = v8 = !v3;
    }
    require(!v6, InvalidInitialization());
    stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a00_0_7 = 1;
    if (v1) {
        _initialize = 1;
    }
    require(_initialize, NotInitializing());
    require(_initialize, NotInitializing());
    require(_token1, OwnableInvalidOwner(0));
    _owner = _token1;
    emit OwnershipTransferred(_owner, _token1);
    if (v1) {
        _initialize = 0;
        emit Initialized(1);
        exit;
    } else {
        exit;
    }
}

function 0x2f09b372(struct(2) varg0, bytes varg1, address varg2, uint256 varg3, uint256 varg4) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 64);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    require(varg1.length <= uint64.max);
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg2);
    require((address(0x11f84b9aa48e5f8aa8b9897600006289be)).code.size);
    v5 = new uint256[](64);
    require(msg.data[4 + varg0] < msg.data.length - (4 + varg0) - 31);
    require(v6.length <= uint64.max);
    require(v6.data <= msg.data.length - v6.length);
    v7 = new bytes[](v6.length);
    CALLDATACOPY(v7.data, v6.data, v6.length);
    v7[v6.length] = 0;
    v8 = new bytes[](v9.length);
    require(msg.data[4 + varg0 + 32] < msg.data.length - (4 + varg0) - 31);
    require(v9.length <= uint64.max);
    require(v9.data <= msg.data.length - v9.length);
    MEM[v5.data] = v8 - v5;
    v7[v6.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v9.length;
    CALLDATACOPY(v8.data, v9.data, v9.length);
    v8[v9.length] = 0;
    v10 = new bytes[](varg1.length);
    v8[v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = varg1.length;
    CALLDATACOPY(v10.data, varg1.data, varg1.length);
    v10[varg1.length] = 0;
    v11, /* uint256 */ v12 = address(0x11f84b9aa48e5f8aa8b9897600006289be).executeWithCallback(v5, v10).gas(msg.gas);
    require(v11, v12, RETURNDATASIZE());
    if (v11) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
    }
    0x4287(varg2, v4, msg.gas, varg3, varg4);
}

function 0x29496b55() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = new struct(5);
    require(!((v0 + 160 > uint64.max) | (v0 + 160 < v0)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0, msg.data.length, 160);
    v1 = v2 = MEM[64];
    require(!((v2 + 160 > uint64.max) | (v2 + 160 < v2)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v2 + 32] = address(0x3116abe181655a0c390077f2d3365ca46efddd5d);
    MEM[v2 + 64] = address(0xbeb86e67c6eb209264a3af1fb48395a0a371b11a);
    MEM[v2 + 96] = address(0xdf51b166005527c884791d393d61a1c82f1312bf);
    MEM[v2 + 128] = address(0xfaf29fd2b654679a043726155af67b228c9b5ecc);
    v3 = v4 = MEM[64];
    v5 = v6 = 0;
    while (v5 < 5) {
        MEM[v3] = address(MEM[v1]);
        v3 = v3 + 32;
        v1 = v1 + 32;
        v5 = v5 + 1;
    }
    return address(0x64ddc0430eec16dbf928e985177b5a93f4cb3d27);
}

function withdrawEth(address to) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    0x467b(to, this.balance);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1, v2 = msg.sender.token0().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v3, v2 = msg.sender.token0().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = msg.sender.token0().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (1 == amount0Delta > 0) {
        v5 = v6 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
        v7 = v8 = 16;
    } else {
        v7 = v9 = 16;
        v5 = v10 = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
    }
    require(!(address(keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000, keccak256(0xff41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c90000000000000000000000), v5)) ^ msg.sender));
    if (!msg.data[4 + data]) {
        0x43e3(v2, msg.sender, v11);
        exit;
    } else {
        require(32 <= msg.data[4 + data]);
        require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
        require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
        if (data.word1 >> 253) {
            require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
            require(!((data.word1 >> 253) - 1));
            if (0 == (data.word1 >> 248 & 0x1 == 1)) {
                v12 = v13 = uint32(data.word1 >> 160);
                if (!v13) {
                    v12 = v14 = 997;
                }
                v15, v16, v16 = address(data.word1).getReserves().gas(msg.gas);
                require(v15, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (data.word1 >> 247 & 0x1) {
                }
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v17 = address(data.word1).staticcall(MEM[MEM[64] + !data.word1 >> 247 & 0x1 << 2:MEM[64] + !data.word1 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v17, MEM[64], RETURNDATASIZE());
                v18 = MEM[0x0].transfer(address(data.word1), v11).gas(msg.gas);
                require(v18, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                v19, /* uint256 */ v20 = address(data.word1).swap(v11 * v12 * v16 / (v16 * 1000 + v11 * v12) * !(data.word1 >> 247 & 0x1), v11 * v12 * v16 / (v16 * 1000 + v11 * v12) * (data.word1 >> 247 & 0x1), msg.sender, 128, 0).gas(msg.gas);
                require(v19, MEM[64], RETURNDATASIZE());
            } else {
                v21 = v22 = uint32(data.word1 >> 160);
                if (!v22) {
                    v21 = v23 = 997;
                }
                v24, v25, v25 = address(data.word1).getReserves().gas(msg.gas);
                require(v24, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (data.word1 >> 247 & 0x1) {
                }
                if (!(msg.data[4 + data] - 32)) {
                    MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                    v26 = address(data.word1).staticcall(MEM[MEM[64] + !data.word1 >> 247 & 0x1 << 2:MEM[64] + !data.word1 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                    require(v26, MEM[64], RETURNDATASIZE());
                    v27 = MEM[0x0].transfer(address(data.word1), v25 * v11 * 1000 / ((v25 - v11) * v21) + 1).gas(msg.gas);
                    require(v27, MEM[64], RETURNDATASIZE());
                    if (RETURNDATASIZE()) {
                        require(MEM[0]);
                    }
                    0x53ba(msg.sender, v11, data.word1);
                } else {
                    require(32 <= msg.data[4 + data] - 32);
                    require(msg.data[4 + data] - 32 <= msg.data[4 + data] - 32);
                    0x4f68(address(data.word1), v25 * v11 * 1000 / ((v25 - v11) * v21) + 1, data.word2, 32 + (4 + data + 32 + 32), msg.data[4 + data] - 32 - 32);
                    0x53ba(msg.sender, v11, data.word1);
                }
            }
            exit;
        } else {
            0x51f1(msg.sender, v11, data.word1, 4 + data + 32 + 32, msg.data[4 + data] - 32);
            exit;
        }
    }
}

function 0x1fbc9bad(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, bytes varg14, address varg15) public nonPayable { 
    require(msg.data.length - 4 >= 512);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg12 <= uint64.max);
    require(4 + varg12 + 31 < msg.data.length);
    require(varg12.length <= uint64.max);
    require(4 + varg12 + varg12.length + 32 <= msg.data.length);
    require(!(varg13 - address(varg13)));
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg13);
    if (varg10 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v5, /* uint256 */ v6 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v5, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v7, /* uint256 */ v8 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            v9, /* uint256 */ v10 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v8).gas(msg.gas);
            require(v9, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v11 = new bytes[](varg12.length);
    CALLDATACOPY(v11.data, varg12.data, varg12.length);
    v11[varg12.length] = 0;
    v12, /* uint256 */ v13, /* uint256 */ v14, /* uint256 */ v15 = address(0x111111125421ca6dc452d289314280a0f8842a65).fillOrderArgs(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10, varg11, v11).gas(msg.gas);
    if (!v12) {
        v16 = RETURNDATASIZE();
        revert(v17, v17, v17, v17, v17, v17, v17, v17, v17, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10);
    } else {
        v13 = v18 = 0;
        if (v12) {
            v19 = 96;
            if (96 > RETURNDATASIZE()) {
                v19 = v20 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v19 - MEM[64] >= 96);
        }
        require(!(v13 - (0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10)));
        0x4287(varg13, v4, msg.gas, varg14, varg15);
        exit;
    }
}

function isValidSignature(bytes32 hash, bytes signature) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(signature <= uint64.max);
    require(4 + signature + 31 < msg.data.length);
    require(signature.length <= uint64.max);
    require(4 + signature + signature.length + 32 <= msg.data.length);
    require(signature.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](signature.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & signature.length + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & signature.length + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(signature.data + signature.length <= msg.data.length);
    CALLDATACOPY(v0.data, signature.data, signature.length);
    v0[signature.length] = 0;
    v1 = v2 = v0.length;
    if (v2 - 65) {
        v3 = v4 = 0;
        v5 = v6 = 2;
    } else {
        v1 = v7 = MEM[v0 + 64];
        if (v7 > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0) {
            v3 = v8 = 0;
            v5 = v9 = 3;
        } else {
            MEM[0] = 0;
            v10 = ecrecover(hash, uint8(byte(MEM[v0 + 96], 0x0)), MEM[v0.data], v7);
            require(v10, MEM[64], RETURNDATASIZE());
            v3 = v11 = MEM[0];
            if (!address(v11)) {
                v3 = v12 = 0;
                v5 = v13 = 1;
                v1 = v14 = 0;
            } else {
                v5 = v15 = 0;
                v1 = v16 = 0;
            }
        }
    }
    0x4bcb(v5, v1);
    v17 = 0x40a4(v3);
    require(v17, InvalidSignature());
    return 0x1626ba7e00000000000000000000000000000000000000000000000000000000;
}

function batchTransfer(bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(!(data.length % 72), IncorrectLength());
    v0 = v1 = 0;
    while (v0 < data.length) {
        0x43e3(msg.data[data.data + v0] >> 96, msg.data[data.data + v0 + 20] >> 96, msg.data[data.data + v0 + 40]);
        v0 = v0 + 72;
    }
    exit;
}

function 0x062a4378(struct(8) varg0, address varg1, bytes varg2, bytes varg3, address varg4, uint256 varg5, uint256 varg6) public nonPayable { 
    require(msg.data.length - 4 >= 224);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg4);
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v5 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v5.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v6 = v7.data;
    require(v7.length <= uint64.max);
    require(v6 <= msg.data.length - (v7.length << 6));
    v8 = v5 + 288;
    v9 = 0;
    while (v9 < v7.length) {
        CALLDATACOPY(v8, v6, 64);
        v8 = v8 + 64;
        v6 = v6 + 64;
        v9 = v9 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v10 = varg0.word7;
    v11 = v12 = v10.data;
    require(v10.length <= uint64.max);
    require(v12 <= msg.data.length - (v10.length << 5));
    MEM[v8] = v10.length;
    v13 = v14 = v8 + 32;
    v15 = v16 = v8 + (v10.length << 5) + 32;
    v17 = v18 = 0;
    while (v17 < v10.length) {
        MEM[v13] = v15 - v8 - 32;
        require(msg.data[v11] < msg.data.length - varg0.word7 - 287);
        MEM[v15] = msg.data[msg.data[v11] + varg0.word7 + 32];
        MEM[v15 + 32] = msg.data[msg.data[v11] + varg0.word7 + 64];
        MEM[v15 + 64] = msg.data[msg.data[v11] + varg0.word7 + 96];
        MEM[v15 + 96] = msg.data[msg.data[v11] + varg0.word7 + 128];
        MEM[v15 + 128] = msg.data[msg.data[v11] + varg0.word7 + 160];
        MEM[v15 + 160] = msg.data[msg.data[v11] + varg0.word7 + 192];
        require(msg.data[msg.data[v11] + varg0.word7 + 224] < msg.data.length - (msg.data[v11] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + 192] = uint8.max + 1;
        MEM[v15 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)];
        CALLDATACOPY(v15 + (uint8.max + 1) + 32, msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + (uint8.max + 1) + msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] + 32] = 0;
        v19 = (msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v15 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v11] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + 224] = v19 - v15;
        MEM[v19] = msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)];
        CALLDATACOPY(v19 + 32, msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v19 + msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] + 32] = 0;
        v15 = (msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v19 + 32;
        v11 = v11 + 32;
        v13 = v13 + 32;
        v17 = v17 + 1;
    }
    v15 = new bytes[](varg2.length);
    CALLDATACOPY(v15.data, varg2.data, varg2.length);
    v15[varg2.length] = 0;
    v20 = new bytes[](varg3.length);
    v15[varg2.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = varg3.length;
    CALLDATACOPY(v20.data, varg3.data, varg3.length);
    v20[varg3.length] = 0;
    v21, /* uint256 */ v22 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).openForAndFinalise(v5, varg1, v15, address(this), v20, v23, v23, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v8 - v5, v7.length).gas(msg.gas);
    if (!v21) {
        v24 = RETURNDATASIZE();
        revert(v23, v23, v23, v23, v23, v23, v23, v23, v23, uint32(varg0.word4), address(varg0.word5));
    } else {
        if (v21) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        0x4287(varg4, v4, msg.gas, varg5, varg6);
        exit;
    }
}

function 0xfabc2caf(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12) public nonPayable { 
    require(msg.data.length - 4 >= 416);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg12 <= uint64.max);
    require(4 + varg12 + 31 < msg.data.length);
    require(varg12.length <= uint64.max);
    require(4 + varg12 + varg12.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    if (varg10 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v4, /* uint256 */ v5 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v4, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v6, /* uint256 */ v7 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v6, MEM[64], RETURNDATASIZE());
            v8, /* uint256 */ v9 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v7).gas(msg.gas);
            require(v8, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v10 = new bytes[](varg12.length);
    CALLDATACOPY(v10.data, varg12.data, varg12.length);
    v10[varg12.length] = 0;
    v11, /* uint256 */ v12, /* uint256 */ v13, /* uint256 */ v14 = address(0x111111125421ca6dc452d289314280a0f8842a65).fillOrderArgs(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10, varg11, v10).gas(msg.gas);
    if (!v11) {
        v15 = RETURNDATASIZE();
        revert(v16, v16, v16, v16, v16, v16, v16, v16, v16, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10);
    } else {
        v12 = v17 = 0;
        if (v11) {
            v18 = 96;
            if (96 > RETURNDATASIZE()) {
                v18 = v19 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v18 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v18 - MEM[64] >= 96);
        }
        require(!(v12 - (0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10)));
        return ;
    }
}

function 0x3cce(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return varg0;
}

function 0x3ed5(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 5) + varg0;
}

function 0x40a4(address varg0) private { 
    v0 = varg0;
    if (bool(v0)) {
        v1 = v2 = v0 == address(0x64ddc0430eec16dbf928e985177b5a93f4cb3d27);
        if (v0 != address(0x64ddc0430eec16dbf928e985177b5a93f4cb3d27)) {
            v1 = v3 = v0 == address(0x3116abe181655a0c390077f2d3365ca46efddd5d);
        }
        if (!v1) {
            v1 = v4 = v0 == address(0xbeb86e67c6eb209264a3af1fb48395a0a371b11a);
        }
        if (!v1) {
            v1 = v5 = v0 == address(0xdf51b166005527c884791d393d61a1c82f1312bf);
        }
        if (!v1) {
            return address(0xfaf29fd2b654679a043726155af67b228c9b5ecc) == v0;
        } else {
            return v1;
        }
    } else {
        return bool(v0);
    }
}

function 0x421e(uint256 varg0) private { 
    if (!address(varg0)) {
        return this.balance;
    } else {
        v0, /* uint256 */ v1 = varg0.balanceOf(this).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        return v1;
    }
}

function 0x4287(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = 0x421e(varg0);
    require(v0 > varg1, address(varg0));
    if (varg4 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffff) {
        require((v0 - varg1) * varg3 / 10 ** 18 >= msg.value + (tx.gasprice * (((varg4 >> 224) + (varg2 - msg.gas)) * (0x186a0 - uint16(varg4 >> 208)) / 0x186a0) + (varg4 & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffff)), InsufficientProfit());
    }
    return ;
}

function 0x43e3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (v1) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool(varg0.code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    require(v0, SafeTransferFailed());
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1, v2 = msg.sender.token0().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    v3, v2 = msg.sender.token0().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = msg.sender.token0().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    if (1 == amount0Delta > 0) {
        v5 = v6 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
        v7 = v8 = 16;
    } else {
        v7 = v9 = 16;
        v5 = v10 = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
    }
    require(!(address(keccak256(0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000, keccak256(0xff1f98431c8ad98523631ae4a59f267346ea31f9840000000000000000000000), v5)) ^ msg.sender));
    if (!msg.data[4 + data]) {
        0x43e3(v2, msg.sender, v11);
        return ;
    } else {
        require(32 <= msg.data[4 + data]);
        require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
        require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
        if (data.word1 >> 253) {
            require(2 > data.word1 >> 253, Panic(33)); // failed convertion to enum type
            require(!((data.word1 >> 253) - 1));
            if (0 == (data.word1 >> 248 & 0x1 == 1)) {
                v12 = v13 = uint32(data.word1 >> 160);
                if (!v13) {
                    v12 = v14 = 997;
                }
                v15, v16, v16 = address(data.word1).getReserves().gas(msg.gas);
                require(v15, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (data.word1 >> 247 & 0x1) {
                }
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v17 = address(data.word1).staticcall(MEM[MEM[64] + !data.word1 >> 247 & 0x1 << 2:MEM[64] + !data.word1 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v17, MEM[64], RETURNDATASIZE());
                v18 = MEM[0x0].transfer(address(data.word1), v11).gas(msg.gas);
                require(v18, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                v19, /* uint256 */ v20 = address(data.word1).swap(v11 * v12 * v16 / (v16 * 1000 + v11 * v12) * !(data.word1 >> 247 & 0x1), v11 * v12 * v16 / (v16 * 1000 + v11 * v12) * (data.word1 >> 247 & 0x1), msg.sender, 128, 0).gas(msg.gas);
                require(v19, MEM[64], RETURNDATASIZE());
            } else {
                v21 = v22 = uint32(data.word1 >> 160);
                if (!v22) {
                    v21 = v23 = 997;
                }
                v24, v25, v25 = address(data.word1).getReserves().gas(msg.gas);
                require(v24, MEM[64], RETURNDATASIZE());
                require(!(RETURNDATASIZE() - 96));
                if (data.word1 >> 247 & 0x1) {
                }
                if (!(msg.data[4 + data] - 32)) {
                    MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                    v26 = address(data.word1).staticcall(MEM[MEM[64] + !data.word1 >> 247 & 0x1 << 2:MEM[64] + !data.word1 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                    require(v26, MEM[64], RETURNDATASIZE());
                    v27 = MEM[0x0].transfer(address(data.word1), v25 * v11 * 1000 / ((v25 - v11) * v21) + 1).gas(msg.gas);
                    require(v27, MEM[64], RETURNDATASIZE());
                    if (RETURNDATASIZE()) {
                        require(MEM[0]);
                    }
                    0x53ba(msg.sender, v11, data.word1);
                } else {
                    require(32 <= msg.data[4 + data] - 32);
                    require(msg.data[4 + data] - 32 <= msg.data[4 + data] - 32);
                    0x4f68(address(data.word1), v25 * v11 * 1000 / ((v25 - v11) * v21) + 1, data.word2, 32 + (4 + data + 32 + 32), msg.data[4 + data] - 32 - 32);
                    0x53ba(msg.sender, v11, data.word1);
                }
            }
            return ;
        } else {
            0x51f1(msg.sender, v11, data.word1, 4 + data + 32 + 32, msg.data[4 + data] - 32);
            return ;
        }
    }
}

function 0x467b(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, Error('ETH_TRANSFER_FAILED'));
    return ;
}

function 0x4811(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = varg0.approve(varg1, uint256.max).gas(msg.gas);
    if (v1) {
        if (!RETURNDATASIZE()) {
            v0 = v2 = bool(varg0.code.size);
        } else {
            v0 = v3 = (RETURNDATASIZE() > 31) & (MEM[0] == 1);
        }
    }
    if (!v0) {
        v4 = varg0.approve(varg1, 0).gas(msg.gas);
        require(v4);
        v5 = varg0.approve(varg1, uint256.max).gas(msg.gas);
        require(v5);
        return ;
    } else {
        return ;
    }
}

function 0x4aa1(uint256 varg0) private { 
    if (!varg0) {
        varg0 = v0 = block.coinbase;
    }
    v1 = varg0.call().value(msg.value).gas(msg.gas);
    require(v1);
    return ;
}

function 0x4bcb(uint256 varg0, uint256 varg1) private { 
    require(varg0 < 4, Panic(33)); // failed convertion to enum type
    if (varg0) {
        require(varg0 - 1, ECDSAInvalidSignature());
        require(varg0 - 2, ECDSAInvalidSignatureLength(varg1));
        require(3 != varg0, ECDSAInvalidSignatureS(varg1));
        return ;
    } else {
        return ;
    }
}

function 0x4f68(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    require(varg2 >> 253 < 2, Panic(33)); // failed convertion to enum type
    require(2 > varg2 >> 253, Panic(33)); // failed convertion to enum type
    if (varg2 >> 253) {
        require(2 > varg2 >> 253, Panic(33)); // failed convertion to enum type
        require(!((varg2 >> 253) - 1));
        if (0 == (varg2 >> 248 & 0x1 == 1)) {
            v0 = v1 = uint32(varg2 >> 160);
            if (!v1) {
                v0 = v2 = 997;
            }
            v3, v4, v4 = address(varg2).getReserves().gas(msg.gas);
            require(v3, MEM[64], RETURNDATASIZE());
            require(!(RETURNDATASIZE() - 96));
            if (varg2 >> 247 & 0x1) {
            }
            MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
            v5 = address(varg2).staticcall(MEM[MEM[64] + !v4f68arg0x2 >> 247 & 0x1 << 2:MEM[64] + !v4f68arg0x2 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
            require(v5, MEM[64], RETURNDATASIZE());
            v6 = MEM[0x0].transfer(address(varg2), varg1).gas(msg.gas);
            require(v6, MEM[64], RETURNDATASIZE());
            if (RETURNDATASIZE()) {
                require(MEM[0]);
            }
            v7, /* uint256 */ v8 = address(varg2).swap(varg1 * v0 * v4 / (v4 * 1000 + varg1 * v0) * !(varg2 >> 247 & 0x1), varg1 * v0 * v4 / (v4 * 1000 + varg1 * v0) * (varg2 >> 247 & 0x1), varg0, 128, 0).gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
        } else {
            v9 = v10 = uint32(varg2 >> 160);
            if (!v10) {
                v9 = v11 = 997;
            }
            v12, v13, v13 = address(varg2).getReserves().gas(msg.gas);
            require(v12, MEM[64], RETURNDATASIZE());
            require(!(RETURNDATASIZE() - 96));
            if (varg2 >> 247 & 0x1) {
            }
            v14 = v13 * varg1 * 1000 / ((v13 - varg1) * v9) + 1;
            if (!varg4) {
                MEM[MEM[64]] = 0xdfe1681d21220a7a9059cbb0000000000000000000000000000000000000000;
                v15 = address(varg2).staticcall(MEM[MEM[64] + !v4f68arg0x2 >> 247 & 0x1 << 2:MEM[64] + !v4f68arg0x2 >> 247 & 0x1 << 2 + 4], MEM[0:32]).gas(msg.gas);
                require(v15, MEM[64], RETURNDATASIZE());
                v16 = MEM[0x0].transfer(address(varg2), v14).gas(msg.gas);
                require(v16, MEM[64], RETURNDATASIZE());
                if (RETURNDATASIZE()) {
                    require(MEM[0]);
                }
                0x53ba(varg0, varg1, varg2);
            } else {
                require(32 <= varg4);
                require(varg4 <= varg4);
                0x4f68(address(varg2), v14, msg.data[varg3], 32 + varg3, varg4 - 32);
                0x53ba(varg0, varg1, varg2);
            }
        }
        return ;
    } else {
        0x51f1(varg0, varg1, varg2, varg3, varg4);
        return ;
    }
}

function 0x51f1(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    if (varg2 >> 248 & 0x1) {
        varg1 = v0 = 0 - varg1;
    }
    if (1 != varg2 >> 247 & 0x1) {
        if (0 != varg2 >> 247 & 0x1) {
        }
    }
    v1 = new uint256[](varg4);
    CALLDATACOPY(v1.data, varg3, varg4);
    v2 = address(varg2).swap(varg0, varg2 >> 247 & 0x1, varg1, 0xfffd8963efd1fc6a506488495d951d5263988d25, 0x1000276a4, v1).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    return ;
}

function 0x53ba(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, /* uint256 */ v1 = address(varg2).swap(varg1 * !(varg2 >> 247 & 0x1), varg1 * (varg2 >> 247 & 0x1), varg0, 128, 0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    return ;
}

function 0xf7ba87d9(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, address varg14, uint256 varg15) public payable { 
    require(msg.data.length - 4 >= 512);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    v0 = v1 = varg8.length;
    require(v1 <= uint64.max);
    v0 = v2 = varg8.data;
    require(4 + varg8 + v1 + 32 <= msg.data.length);
    require(varg11 <= uint64.max);
    require(4 + varg11 + 31 < msg.data.length);
    v0 = v3 = varg11.length;
    require(v3 <= uint64.max);
    v0 = v4 = varg11.data;
    require(4 + varg11 + v3 + 32 <= msg.data.length);
    require(!(varg12 - address(varg12)));
    require(!(varg15 - address(varg15)));
    v5 = v6 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v7 = 0x40a4(tx.origin);
        v5 = v8 = !v7;
    }
    require(!v5);
    v9 = 0x421e(varg12);
    v10 = v11 = 96;
    v0 = v12 = 18372;
    v0 = v13 = 17798;
    if (varg9 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v14, /* uint256 */ v15 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v14, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v16, /* uint256 */ v17 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v16, MEM[64], RETURNDATASIZE());
            v18, /* uint256 */ v19 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v17).gas(msg.gas);
            require(v18, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v0 = v20 = MEM[64];
    MEM[v20] = 0x56a7586800000000000000000000000000000000000000000000000000000000;
    MEM[v20 + 4] = varg0;
    MEM[v20 + 36] = varg1;
    MEM[v20 + 68] = varg2;
    MEM[v20 + 100] = varg3;
    MEM[v20 + 132] = varg4;
    MEM[v20 + 164] = varg5;
    MEM[v20 + 196] = varg6;
    MEM[v20 + 228] = varg7;
    v0 = v21 = 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg9;
    MEM[v20 + 260] = 384;
    v22 = v23 = v20 + 388;
    while (1) {
        MEM[v22] = v0;
        CALLDATACOPY(v22 + 32, v0, v0);
        MEM[v22 + v0 + 32] = 0;
        v22 = (v0 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v22 + 32;
        // Unknown jump to Block ['0x45860x46e8B0x738', '0x47c4B0x738']. Refer to 3-address code (TAC);
        MEM[v0 + 292] = v21;
        MEM[v0 + 324] = v10;
        MEM[v0 + 356] = v22 - v0 - 4;
    }
    v24 = address(0x111111125421ca6dc452d289314280a0f8842a65).call(MEM[v44850x46e8_0x0V0x738:v44850x46e8_0x0V0x738 + v46e80x37caV0x738 - v44850x46e8_0x0V0x738], MEM[v44850x46e8_0x0V0x738:v44850x46e8_0x0V0x738 + v45860x46e8_0x3V0x738]).gas(msg.gas);
    require(v24, MEM[64], RETURNDATASIZE());
    v25 = v26 = 0;
    if (v24) {
        v27 = 96;
        if (96 > RETURNDATASIZE()) {
            v27 = v28 = RETURNDATASIZE();
        }
        require(!((v0 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v0 + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v0 + v27 - v0 >= 96);
        v25 = MEM[v0];
    }
    require(!(v25 - v0));
    0x4aa1(v11);
    0x4287(0x47fef, varg15, v21, varg13, varg14);
    return MEM[msg.gas:msg.gas + msg.gas];
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(newOwner, OwnableInvalidOwner(0));
    _owner = newOwner;
    emit OwnershipTransferred(_owner, newOwner);
    return ;
}

function executeBatch((bytes,bytes) orders, [] callbackData) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(orders <= uint64.max);
    require(4 + orders + 31 < msg.data.length);
    require(orders.length <= uint64.max);
    v0 = v1 = orders.data;
    require((orders.length << 5) + (4 + orders) + 32 <= msg.data.length);
    require(callbackData <= uint64.max);
    require(4 + callbackData + 31 < msg.data.length);
    require(callbackData.length <= uint64.max);
    require(4 + callbackData + callbackData.length + 32 <= msg.data.length);
    v2 = v3 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v4 = 0x40a4(tx.origin);
        v2 = v5 = !v4;
    }
    require(!v2);
    require((address(0x11f84b9aa48e5f8aa8b9897600006289be)).code.size);
    v6 = new uint256[](orders.length);
    v7 = v8 = v6.data;
    v9 = v10 = MEM[64] + 4 + (orders.length << 5) + 96;
    v11 = v12 = 0;
    while (v11 < orders.length) {
        MEM[v7] = v9 - (MEM[64] + 4) - 96;
        require(msg.data[v0] < msg.data.length - v1 - 63);
        require(msg.data[msg.data[v0] + v1] < msg.data.length - (msg.data[v0] + v1) - 31);
        require(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] <= uint64.max);
        require(msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)]);
        MEM[v9] = 64;
        MEM[v9 + 64] = msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)];
        CALLDATACOPY(v9 + 64 + 32, msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1) + 32, msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)]);
        MEM[v9 + 64 + msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 32] = 0;
        require(msg.data[msg.data[v0] + v1 + 32] < msg.data.length - (msg.data[v0] + v1) - 31);
        require(msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] <= uint64.max);
        require(msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)]);
        MEM[v9 + 32] = (msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v9 + 64) + 32 - v9;
        MEM[(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v9 + 64) + 32] = msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)];
        CALLDATACOPY((msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v9 + 64) + 32 + 32, msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1) + 32, msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)]);
        MEM[(msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v9 + 64) + 32 + msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] + 32] = 0;
        v9 = (msg.data[msg.data[msg.data[v0] + v1 + 32] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + ((msg.data[msg.data[msg.data[v0] + v1] + (msg.data[v0] + v1)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v9 + 64) + 32) + 32;
        v0 = v0 + 32;
        v7 = v7 + 32;
        v11 = v11 + 1;
    }
    v9 = new bytes[](callbackData.length);
    CALLDATACOPY(v9.data, callbackData.data, callbackData.length);
    v9[callbackData.length] = 0;
    v13, /* uint256 */ v14 = address(0x11f84b9aa48e5f8aa8b9897600006289be).executeBatchWithCallback(v6, v9).gas(msg.gas);
    require(v13, v14, RETURNDATASIZE());
    if (v13) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function 0xdbd97dc0(struct(8) varg0, address varg1, bytes varg2, bytes varg3, address varg4, uint256 varg5, uint256 varg6, address varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg4);
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v5 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v5.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v6 = v7.data;
    require(v7.length <= uint64.max);
    require(v6 <= msg.data.length - (v7.length << 6));
    v8 = v5 + 288;
    v9 = 0;
    while (v9 < v7.length) {
        CALLDATACOPY(v8, v6, 64);
        v8 = v8 + 64;
        v6 = v6 + 64;
        v9 = v9 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v10 = varg0.word7;
    v11 = v12 = v10.data;
    require(v10.length <= uint64.max);
    require(v12 <= msg.data.length - (v10.length << 5));
    MEM[v8] = v10.length;
    v13 = v14 = v8 + 32;
    v15 = v16 = v8 + (v10.length << 5) + 32;
    v17 = v18 = 0;
    while (v17 < v10.length) {
        MEM[v13] = v15 - v8 - 32;
        require(msg.data[v11] < msg.data.length - varg0.word7 - 287);
        MEM[v15] = msg.data[msg.data[v11] + varg0.word7 + 32];
        MEM[v15 + 32] = msg.data[msg.data[v11] + varg0.word7 + 64];
        MEM[v15 + 64] = msg.data[msg.data[v11] + varg0.word7 + 96];
        MEM[v15 + 96] = msg.data[msg.data[v11] + varg0.word7 + 128];
        MEM[v15 + 128] = msg.data[msg.data[v11] + varg0.word7 + 160];
        MEM[v15 + 160] = msg.data[msg.data[v11] + varg0.word7 + 192];
        require(msg.data[msg.data[v11] + varg0.word7 + 224] < msg.data.length - (msg.data[v11] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + 192] = uint8.max + 1;
        MEM[v15 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)];
        CALLDATACOPY(v15 + (uint8.max + 1) + 32, msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + (uint8.max + 1) + msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] + 32] = 0;
        v19 = (msg.data[msg.data[msg.data[v11] + varg0.word7 + 224] + (msg.data[v11] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v15 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v11] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v15 + 224] = v19 - v15;
        MEM[v19] = msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)];
        CALLDATACOPY(v19 + 32, msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)]);
        MEM[v19 + msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] + 32] = 0;
        v15 = (msg.data[msg.data[msg.data[v11] + varg0.word7 + (uint8.max + 1)] + (msg.data[v11] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v19 + 32;
        v11 = v11 + 32;
        v13 = v13 + 32;
        v17 = v17 + 1;
    }
    v15 = new bytes[](varg2.length);
    CALLDATACOPY(v15.data, varg2.data, varg2.length);
    v15[varg2.length] = 0;
    v20 = new bytes[](varg3.length);
    v15[varg2.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = varg3.length;
    CALLDATACOPY(v20.data, varg3.data, varg3.length);
    v20[varg3.length] = 0;
    v21, /* uint256 */ v22 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).openForAndFinalise(v5, varg1, v15, address(this), v20, v23, v23, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v8 - v5, v7.length).gas(msg.gas);
    if (!v21) {
        v24 = RETURNDATASIZE();
        revert(v23, v23, v23, v23, v23, v23, v23, v23, v23, uint32(varg0.word4), address(varg0.word5));
    } else {
        if (v21) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
        0x4aa1(varg7);
        0x4287(varg4, v4, msg.gas, varg5, varg6);
        return ;
    }
}

function 0xda64f0f7(uint256 varg0, uint256 varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11, uint256 varg12, uint256 varg13, bytes varg14, address varg15, uint256 varg16) public payable { 
    require(msg.data.length - 4 >= 544);
    require(uint8.max + 1 <= msg.data.length - 4);
    require(varg12 <= uint64.max);
    require(4 + varg12 + 31 < msg.data.length);
    require(varg12.length <= uint64.max);
    require(4 + varg12 + varg12.length + 32 <= msg.data.length);
    require(!(varg13 - address(varg13)));
    require(!(varg16 - address(varg16)));
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    v4 = 0x421e(varg13);
    if (varg10 >= int256.min) {
        if (1 == bool(varg7 & 0x8000000000000000000000000000000000000000000000000000000000000000) | !(varg7 & 0x4000000000000000000000000000000000000000000000000000000000000000)) {
            v5, /* uint256 */ v6 = address(0x111111125421ca6dc452d289314280a0f8842a65).bitInvalidatorForOrder(address(varg1), uint40(varg7 >> 120)).gas(msg.gas);
            require(v5, MEM[64], RETURNDATASIZE());
            require(!(1 << uint8(varg7 >> 120) & MEM[MEM[64]]));
        } else {
            CALLDATACOPY(MEM[64] + 4, 4, uint8.max + 1);
            v7, /* uint256 */ v8 = address(0x111111125421ca6dc452d289314280a0f8842a65).hashOrder().gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            v9, /* uint256 */ v10 = address(0x111111125421ca6dc452d289314280a0f8842a65).rawRemainingInvalidatorForOrder(address(varg1), v8).gas(msg.gas);
            require(v9, MEM[64], RETURNDATASIZE());
            require(uint256.max != MEM[MEM[64]]);
        }
    }
    v11 = new bytes[](varg12.length);
    CALLDATACOPY(v11.data, varg12.data, varg12.length);
    v11[varg12.length] = 0;
    v12, /* uint256 */ v13, /* uint256 */ v14, /* uint256 */ v15 = address(0x111111125421ca6dc452d289314280a0f8842a65).fillOrderArgs(varg0, varg1, varg2, varg3, varg4, varg5, varg6, varg7, varg8, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10, varg11, v11).gas(msg.gas);
    if (!v12) {
        v16 = RETURNDATASIZE();
        revert(v17, v17, v17, v17, v17, v17, v17, v17, v17, varg9, 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10);
    } else {
        v13 = v18 = 0;
        if (v12) {
            v19 = 96;
            if (96 > RETURNDATASIZE()) {
                v19 = v20 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v19 - MEM[64] >= 96);
        }
        require(!(v13 - (0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & varg10)));
        0x4aa1(varg16);
        0x4287(varg13, v4, msg.gas, varg14, varg15);
        return ;
    }
}

function withdraw(address tokenAddress, address _toUser, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v0 = v1 = tokenAddress.transfer(_toUser, amount).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v1) {
        v0 = v2 = !(RETURNDATASIZE() | !tokenAddress.code.size);
    }
    require(v0, Error('TRANSFER_FAILED'));
    return ;
}

function receive() public payable { 
}

function execute(uint256 order, uint256 callbackData) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(order <= uint64.max);
    require(msg.data.length - order - 4 >= 64);
    require(callbackData <= uint64.max);
    require(4 + callbackData + 31 < msg.data.length);
    require(callbackData.length <= uint64.max);
    require(4 + callbackData + callbackData.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    require((address(0x11f84b9aa48e5f8aa8b9897600006289be)).code.size);
    v4 = new uint256[](64);
    require(msg.data[4 + order] < msg.data.length - (4 + order) - 31);
    require(v5.length <= uint64.max);
    require(v5.data <= msg.data.length - v5.length);
    v6 = new bytes[](v5.length);
    CALLDATACOPY(v6.data, v5.data, v5.length);
    v6[v5.length] = 0;
    v7 = new bytes[](v8.length);
    require(msg.data[4 + order + 32] < msg.data.length - (4 + order) - 31);
    require(v8.length <= uint64.max);
    require(v8.data <= msg.data.length - v8.length);
    MEM[v4.data] = v7 - v4;
    v6[v5.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v8.length;
    CALLDATACOPY(v7.data, v8.data, v8.length);
    v7[v8.length] = 0;
    v9 = new bytes[](callbackData.length);
    v7[v8.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = callbackData.length;
    CALLDATACOPY(v9.data, callbackData.data, callbackData.length);
    v9[callbackData.length] = 0;
    v10, /* uint256 */ v11 = address(0x11f84b9aa48e5f8aa8b9897600006289be).executeWithCallback(v4, v9).gas(msg.gas);
    require(v10, v11, RETURNDATASIZE());
    if (v10) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
    }
    return ;
}

function 0xcc4b58e5(struct(8) varg0, address varg1, bytes varg2, bytes varg3) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= uint8.max + 1);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(4 + varg2 + varg2.length + 32 <= msg.data.length);
    require(varg3 <= uint64.max);
    require(4 + varg3 + 31 < msg.data.length);
    require(varg3.length <= uint64.max);
    require(4 + varg3 + varg3.length + 32 <= msg.data.length);
    v0 = v1 = msg.sender != tx.origin;
    if (msg.sender == tx.origin) {
        v2 = 0x40a4(tx.origin);
        v0 = v3 = !v2;
    }
    require(!v0);
    require((address(0x25c3226c00b2cdc200005a1600509f4e00c0)).code.size);
    v4 = new uint256[](address(varg0.word0));
    require(!(varg0.word0 - address(varg0.word0)));
    MEM[v4.data] = varg0.word1;
    require(!(varg0.word3 - uint32(varg0.word3)));
    require(!(varg0.word4 - uint32(varg0.word4)));
    require(!(varg0.word5 - address(varg0.word5)));
    require(msg.data[4 + varg0 + 192] < msg.data.length - (4 + varg0) - 31);
    v5 = v6.data;
    require(v6.length <= uint64.max);
    require(v5 <= msg.data.length - (v6.length << 6));
    v7 = v4 + 288;
    v8 = 0;
    while (v8 < v6.length) {
        CALLDATACOPY(v7, v5, 64);
        v7 = v7 + 64;
        v5 = v5 + 64;
        v8 = v8 + 1;
    }
    require(msg.data[4 + varg0 + 224] < msg.data.length - (4 + varg0) - 31);
    v9 = varg0.word7;
    v10 = v11 = v9.data;
    require(v9.length <= uint64.max);
    require(v11 <= msg.data.length - (v9.length << 5));
    MEM[v7] = v9.length;
    v12 = v13 = v7 + 32;
    v14 = v15 = v7 + (v9.length << 5) + 32;
    v16 = v17 = 0;
    while (v16 < v9.length) {
        MEM[v12] = v14 - v7 - 32;
        require(msg.data[v10] < msg.data.length - varg0.word7 - 287);
        MEM[v14] = msg.data[msg.data[v10] + varg0.word7 + 32];
        MEM[v14 + 32] = msg.data[msg.data[v10] + varg0.word7 + 64];
        MEM[v14 + 64] = msg.data[msg.data[v10] + varg0.word7 + 96];
        MEM[v14 + 96] = msg.data[msg.data[v10] + varg0.word7 + 128];
        MEM[v14 + 128] = msg.data[msg.data[v10] + varg0.word7 + 160];
        MEM[v14 + 160] = msg.data[msg.data[v10] + varg0.word7 + 192];
        require(msg.data[msg.data[v10] + varg0.word7 + 224] < msg.data.length - (msg.data[v10] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)]);
        MEM[v14 + 192] = uint8.max + 1;
        MEM[v14 + (uint8.max + 1)] = msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)];
        CALLDATACOPY(v14 + (uint8.max + 1) + 32, msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)]);
        MEM[v14 + (uint8.max + 1) + msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)] + 32] = 0;
        v18 = (msg.data[msg.data[msg.data[v10] + varg0.word7 + 224] + (msg.data[v10] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + (v14 + (uint8.max + 1)) + 32;
        require(msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] < msg.data.length - (msg.data[v10] + varg0.word7 + 32) - 31);
        require(msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)] <= uint64.max);
        require(msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32) + 32 <= msg.data.length - msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)]);
        MEM[v14 + 224] = v18 - v14;
        MEM[v18] = msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)];
        CALLDATACOPY(v18 + 32, msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32) + 32, msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)]);
        MEM[v18 + msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)] + 32] = 0;
        v14 = (msg.data[msg.data[msg.data[v10] + varg0.word7 + (uint8.max + 1)] + (msg.data[v10] + varg0.word7 + 32)] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + v18 + 32;
        v10 = v10 + 32;
        v12 = v12 + 32;
        v16 = v16 + 1;
    }
    v14 = new bytes[](varg2.length);
    CALLDATACOPY(v14.data, varg2.data, varg2.length);
    v14[varg2.length] = 0;
    v19 = new bytes[](varg3.length);
    v14[varg2.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = varg3.length;
    CALLDATACOPY(v19.data, varg3.data, varg3.length);
    v19[varg3.length] = 0;
    v20, /* uint256 */ v21 = address(0x25c3226c00b2cdc200005a1600509f4e00c0).openForAndFinalise(v4, varg1, v14, address(this), v19, v22, v22, varg0.word2, uint32(varg0.word3), uint32(varg0.word4), address(varg0.word5), uint8.max + 1, v7 - v4, v6.length).gas(msg.gas);
    if (!v20) {
        v23 = RETURNDATASIZE();
        revert(v22, v22, v22, v22, v22, v22, v22, v22, v22, uint32(varg0.word4), address(varg0.word5));
    } else {
        if (v20) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        return ;
    }
}

function 0xc1041818(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require((varg0.length << 5) + (4 + varg0) + 32 <= msg.data.length);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        require(varg0[v0] < msg.data.length - varg0.data - 31);
        require(msg.data[varg0.data + varg0[v0]] <= uint64.max);
        require(varg0.data + varg0[v0] + 32 <= msg.data.length - msg.data[varg0.data + varg0[v0]]);
        CALLDATACOPY(MEM[64], varg0.data + varg0[v0] + 52, msg.data[varg0.data + varg0[v0]] - 20);
        v2, /* uint256 */ v3 = (msg.data[varg0.data + varg0[v0] + 32] >> 96).call(MEM[MEM[64]:MEM[64] + msg.data[varg0.data + varg0[v4af4_0x0V0xf05]] - 20], MEM[0:0]).gas(msg.gas);
        require(v2, v3, RETURNDATASIZE());
        v0 += 1;
    }
    return ;
}

function transfer(address _from, address _to, uint256 _wad) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    0x43e3(_from, _to, _wad);
    return ;
}

function REACTOR() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x11f84b9aa48e5f8aa8b9897600006289be);
}

function 0xb627707d() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x25c3226c00b2cdc200005a1600509f4e00c0);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x62a4378 == v0) {
            0x062a4378();
        } else if (0x10a890af == v0) {
            batchTransfer(bytes);
        } else if (0x1626ba7e == v0) {
            isValidSignature(bytes32,bytes);
        } else if (0x1fbc9bad == v0) {
            0x1fbc9bad();
        } else if (0x23a69e75 == v0) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x25e16063 == v0) {
            withdrawEth(address);
        } else if (0x29496b55 == v0) {
            0x29496b55();
        } else if (0x2f09b372 == v0) {
            0x2f09b372();
        } else if (0x485cc955 == v0) {
            initialize(address,address);
        } else if (0x4f1ef286 == v0) {
            upgradeToAndCall(address,bytes);
        } else if (0x52d1902d == v0) {
            proxiableUUID();
        } else if (0x546ba87d == v0) {
            0x546ba87d();
        } else if (0x585da628 == v0) {
            reactorCallback(((address,address,uint256,uint256,address,bytes),(address,uint256,uint256),(address,uint256,address)[],bytes,bytes32)[],bytes);
        } else if (0x6bd6fa2e == v0) {
            0x6bd6fa2e();
        } else if (0x715018a6 == v0) {
            renounceOwnership();
        } else if (0x72a1da54 == v0) {
            0x72a1da54(v0);
        } else if (0x73e57c27 == v0) {
            0x73e57c27(v0);
        } else if (0x7787633d == v0) {
            unwrapWeth(address);
        } else if (0x7838d6a7 == v0) {
            0x7838d6a7(v0);
        } else if (0x7aa72039 == v0) {
            0x7aa72039(v0);
        } else if (0x8c21b411 == v0) {
            whitelistedCaller();
        } else if (0x8da5cb5b == v0) {
            owner();
        } else if (0xa13b4c26 == v0) {
            0xa13b4c26(v0);
        } else if (0xa3b2866a == v0) {
            0xa3b2866a(v0);
        } else if (0xad3cb1cc == v0) {
            UPGRADE_INTERFACE_VERSION();
        } else if (0xadf38ba1 == v0) {
            takerInteraction((uint256,uint256,uint256,uint256,uint256,uint256,uint256,uint256),bytes,bytes32,address,uint256,uint256,uint256,bytes);
        } else if (0xb627707d == v0) {
            0xb627707d(v0);
        } else if (0xb9603570 == v0) {
            REACTOR();
        } else if (0xbeabacc8 == v0) {
            transfer(address,address,uint256);
        } else if (0xc1041818 == v0) {
            0xc1041818(v0);
        } else if (0xcc4b58e5 == v0) {
            0xcc4b58e5(v0);
        } else if (0xd0f2d8ac == v0) {
            execute((bytes,bytes),bytes);
        } else if (0xd9caed12 == v0) {
            withdraw(address,address,uint256);
        } else if (0xda64f0f7 == v0) {
            0xda64f0f7(v0);
        } else if (0xdbd97dc0 == v0) {
            0xdbd97dc0(v0);
        } else if (0xe5135ec6 == v0) {
            executeBatch((bytes,bytes)[],bytes);
        } else if (0xf2fde38b == v0) {
            transferOwnership(address);
        } else if (0xf7ba87d9 == v0) {
            0xf7ba87d9(v0);
        } else if (0xfa461e33 == v0) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (0xfabc2caf == v0) {
            0xfabc2caf(v0);
        } else if (0xfd8fde24 == v0) {
            0xfd8fde24();
        }
    }
    require(!msg.data.length);
    receive();
}
