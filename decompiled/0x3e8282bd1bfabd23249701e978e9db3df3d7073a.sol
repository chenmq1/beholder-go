// Decompiled by library.dedaub.com
// 2026.04.24 12:47 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
mapping (address => uint256) ___function_selector__; // STORAGE[0x0]
mapping (address => uint256) mapping_1; // STORAGE[0x1]
mapping (address => uint256) mapping_2; // STORAGE[0x2]
uint256 tstor_5476add8cc988981f26688dd3dff6bae83eebb467a110f1579a9cfda2765aef8; // TRANSIENT_STORAGE[0x5476add8cc988981f26688dd3dff6bae83eebb467a110f1579a9cfda2765aef8]
uint256 _unlockCallback; // TRANSIENT_STORAGE[0x995c444e8eed92841715b35c1f5d3b1ef932d192df1f37e9722c9613cfdd7be8]
uint256 tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73; // TRANSIENT_STORAGE[0xc87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73]
uint256 tstor_d87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167; // TRANSIENT_STORAGE[0xd87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167]
uint256 tstor_de2196c1063a06825e45f40bf9277654cfc66a7dfd08b5f2918b06cc3ac2268b; // TRANSIENT_STORAGE[0xde2196c1063a06825e45f40bf9277654cfc66a7dfd08b5f2918b06cc3ac2268b]
uint256 tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31; // TRANSIENT_STORAGE[0xe67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31]
address tstor_c4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656_0_19; // TRANSIENT_STORAGE[0xc4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656] bytes 0 to 19



function 0xa41e223e(uint256 varg0, address varg1, address varg2, uint8 varg3, uint24 varg4, int24 varg5, address varg6, uint256 varg7, uint256 varg8, uint256 varg9, address varg10, uint256 varg11, bytes varg12, uint16 varg13) public payable { 
    require(msg.data.length - 4 >= 448);
    require(!(varg9 - address(varg9)));
    require(varg11 <= uint64.max);
    require(4 + varg11 + 31 < msg.data.length);
    require(varg11.length <= uint64.max);
    require(4 + varg11 + varg11.length + 32 <= msg.data.length);
    require(!(varg12 - uint16(varg12)));
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x346c6274));
    v3, v4 = 0x48e2(varg1, varg2);
    if (varg7 >= v4) {
        v5 = v6 = v4 - 1;
        require(v6 <= v4, Panic(17)); // arithmetic overflow or underflow
    }
    _unlockCallback = varg1;
    tstor_5476add8cc988981f26688dd3dff6bae83eebb467a110f1579a9cfda2765aef8 = varg2;
    tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 = varg3 << 208 & 0xff0000000000000000000000000000000000000000000000000000 | varg4 << 184 & 0xffffff0000000000000000000000000000000000000000000000 | int184(varg5 << 160) | varg6;
    tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73 = v5;
    tstor_de2196c1063a06825e45f40bf9277654cfc66a7dfd08b5f2918b06cc3ac2268b = varg9;
    v7 = new bytes[](varg11.length);
    CALLDATACOPY(v7.data, varg11.data, varg11.length);
    v7[varg11.length] = 0;
    v8, /* uint256 */ v9, /* bytes */ v7, /* uint256 */ v10, /* uint256 */ v11 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(v7, v10).gas(msg.gas);
    require(v8, v11, RETURNDATASIZE());
    if (v8) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(v10 + 31 < MEM[64] + RETURNDATASIZE());
        require(v10.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new bytes[](v10.length);
        require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v10.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        require(v10 + v10.length + 32 <= MEM[64] + RETURNDATASIZE());
        MCOPY(v12.data, v10.data, v10.length);
        v12[v10.length] = 0;
    }
    _unlockCallback = 0;
    tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73 = 0;
    v13 = 0x4a7c(varg1, varg2, v4, v3, varg8, varg10);
    0x44b7(varg12, varg13, msg.gas + 33000, v13);
    return ;
}

function 0x95305e90(uint256 varg0, address varg1, address varg2, uint8 varg3, uint24 varg4, int24 varg5, address varg6, uint256 varg7, uint256 varg8, address varg9, bytes varg10, uint256 varg11) public payable { 
    require(msg.data.length - 4 >= 384);
    require(varg10 <= uint64.max);
    require(4 + varg10 + 31 < msg.data.length);
    require(varg10.length <= uint64.max);
    require(4 + varg10 + varg10.length + 32 <= msg.data.length);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x34656274));
    v3, v4 = 0x48e2(varg1, varg2);
    if (varg7 >= v4) {
        v5 = v6 = v4 - 1;
        require(v6 <= v4, Panic(17)); // arithmetic overflow or underflow
    }
    _unlockCallback = varg1;
    tstor_5476add8cc988981f26688dd3dff6bae83eebb467a110f1579a9cfda2765aef8 = varg2;
    tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 = varg3 << 208 & 0xff0000000000000000000000000000000000000000000000000000 | varg4 << 184 & 0xffffff0000000000000000000000000000000000000000000000 | int184(varg5 << 160) | varg6;
    tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73 = v5;
    tstor_de2196c1063a06825e45f40bf9277654cfc66a7dfd08b5f2918b06cc3ac2268b = varg9;
    v7 = new bytes[](varg10.length);
    CALLDATACOPY(v7.data, varg10.data, varg10.length);
    v7[varg10.length] = 0;
    v8, /* uint256 */ v9, /* bytes */ v7, /* uint256 */ v10, /* uint256 */ v11 = address(0x4444c5dc75cb358380d2e3de08a90).unlock(v11 + 0x48c8949100000000000000000000000000000000000000000000000000000000, v7).gas(msg.gas);
    require(v8, v10, RETURNDATASIZE());
    if (v8) {
        RETURNDATACOPY(v11, 0, RETURNDATASIZE());
        require(!((v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v11)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v11 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(v11 + RETURNDATASIZE() - v11 >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(v11 + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < v11 + RETURNDATASIZE());
        require(v9.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v12 = new bytes[](v9.length);
        require(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v9.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v12)), Panic(65)); // failed memory allocation (too much memory)
        require(v11 + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v9.length + 32 <= v11 + RETURNDATASIZE());
        MCOPY(v12.data, v9.data, v9.length);
        v12[v9.length] = 0;
    }
    _unlockCallback = 0;
    tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73 = 0;
    v13 = 0x4a7c(varg1, varg2, v4, v3, varg8, 0);
    0x41e2(varg11);
    return ;
}

function 0xf17f3fb2(uint256 varg0, address varg1, uint8 varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, bytes varg7, uint256 varg8) public payable { 
    require(msg.data.length - 4 >= 288);
    require(varg7 <= uint64.max);
    require(4 + varg7 + 31 < msg.data.length);
    require(varg7.length <= uint64.max);
    require(4 + varg7 + varg7.length + 32 <= msg.data.length);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x67736274));
    v3, /* uint256 */ v4 = varg4.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    v8 = v9 = 0;
    v10 = v11 = 0;
    if (0 == (uint8(bool(varg2)) == 1)) {
        if (uint8(bool(varg2)) - 2) {
            if (3 == uint8(bool(varg2))) {
                require(varg3.code.size);
                v12, /* uint256 */ v13 = varg3.withdraw(varg5).gas(msg.gas);
                require(v12, v13, RETURNDATASIZE());
                if (v12) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v8 = v14 = 0;
                }
            }
        } else {
            v15 = varg3.transfer(varg1, varg5).value(v9).gas(msg.gas);
            if (!((MEM[v9] == 1) & v15)) {
                require(!varg3.code.size | RETURNDATASIZE() < v15, TransferFailed());
            }
            MEM[52] = v9;
        }
    } else {
        0x49d3(varg3, varg1, varg5);
    }
    v16 = this.balance;
    CALLDATACOPY(v17.data, varg7.data, varg7.length);
    MEM[v17.data + varg7.length] = v8;
    v18, /* uint256 */ v19 = varg1.call(v17.data).value(v10).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v20 = v21 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v20 = new bytes[](RETURNDATASIZE());
        require(!((v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v20 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v20)), Panic(65)); // failed memory allocation (too much memory)
        v19 = v20.data;
        RETURNDATACOPY(v19, 0, RETURNDATASIZE());
    }
    if (!v18) {
        require(!MEM[v20], 32 + v20, MEM[v20]);
        revert(Error(21040));
    } else {
        if (3 == uint8(bool(varg2 >> 4))) {
            v22 = _SafeSub(this.balance, v16);
            require(varg4.code.size, v8, v8);
            v23, /* uint256 */ v24 = varg4.deposit().value(v22).gas(msg.gas);
            require(v23, MEM[64], RETURNDATASIZE());
            if (v23) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v8, v8, v8);
            }
        }
        v25, /* uint256 */ v4 = varg4.balanceOf(this).gas(msg.gas);
        require(v25, MEM[64], RETURNDATASIZE());
        if (v25) {
            v26 = v27 = 32;
            if (32 > RETURNDATASIZE()) {
                v26 = v28 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v26 - MEM[64] >= 32);
        }
        v29 = _SafeSub(v4, v4);
        require(v29 >= varg6, Error(0x736d72));
        0x41e2(varg8);
        return ;
    }
}

function 0x92928cad(uint256 varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, address varg6, uint256 varg7, uint16 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x336c6274));
    v3, v4 = 0x48e2(varg2, varg3);
    tstor_d87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167 = (varg2 < varg3) << 160 | varg1;
    tstor_c4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656_0_19 = varg2;
    if (varg4 >= v4) {
        v5 = v6 = v4 - 1;
        require(v6 <= v4, Panic(17)); // arithmetic overflow or underflow
    }
    v7 = varg1.swap(this, varg2 < varg3, v5, varg6, 12408).gas(msg.gas);
    require(v7, MEM[64], RETURNDATASIZE());
    if (v7) {
        v8 = v9 = 64;
        if (v9 > RETURNDATASIZE()) {
            v8 = v10 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v8 - MEM[64] >= v9);
    }
    tstor_d87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167 = 0;
    tstor_c4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656_0_19 = 0;
    v11, /* uint256 */ v12 = varg2.balanceOf(this).gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    if (v11) {
        v13 = v14 = 32;
        if (32 > RETURNDATASIZE()) {
            v13 = v15 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v13 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v13 - MEM[64] >= 32);
    }
    v16, /* uint256 */ v12 = varg3.balanceOf(this).gas(msg.gas);
    require(v16, MEM[64], RETURNDATASIZE());
    if (v16) {
        v17 = v18 = 32;
        if (32 > RETURNDATASIZE()) {
            v17 = v19 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v17 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v17 - MEM[64] >= 32);
    }
    v20 = _SafeSub(v4, v12);
    v21 = _SafeSub(v12, v3);
    require(v20 <= varg4, Error(0x70646d70));
    require(v21 >= varg5, Error(0x70646d72));
    v22 = _SafeMul(varg7, v20);
    require(v21 << 144 > v22, Error(0x70617667));
    0x44b7(varg8, varg9, msg.gas + 33000, (v21 << 144) - v22);
    return ;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), Error(0x346d67));
    v0 = v1 = _unlockCallback;
    v0 = v2 = tstor_5476add8cc988981f26688dd3dff6bae83eebb467a110f1579a9cfda2765aef8;
    v3 = tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73;
    _unlockCallback = 0;
    tstor_c87c9d3a530c0fff0c085593c8b6e47e94147cdff872e9b7f249c3f54efa6b73 = 0;
    if (0 != (uint8(bool(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 208)) == 3)) {
    }
    if (0 != (uint8(bool(uint8(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 208) >> 4)) == 3)) {
    }
    if (address(v0) < address(v0)) {
    }
    v4 = new struct(5);
    require(!((v4 + 160 > uint64.max) | (v4 + 160 < v4)), Panic(65)); // failed memory allocation (too much memory)
    v4.word0 = address(v0);
    v4.word1 = address(v0);
    v4.word2 = uint24(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 184);
    v4.word3 = int24(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 160);
    v4.word4 = address(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31);
    v5 = 0x3dda(v3);
    require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v6 = address(v0) < address(v0);
    v7 = new bytes[](rawData.length);
    CALLDATACOPY(v7.data, rawData.data, rawData.length);
    v7[rawData.length] = 0;
    v8 = address(0x4444c5dc75cb358380d2e3de08a90).swap(address(v4.word0), address(v4.word1), uint24(v4.word2), int24(v4.word3), address(v4.word4), v6, v5, address(tstor_de2196c1063a06825e45f40bf9277654cfc66a7dfd08b5f2918b06cc3ac2268b), v7).gas(msg.gas);
    if (!v8) {
        v9 = RETURNDATASIZE();
        revert(v10, v10, v10, v10, v10, v10, v10, v10, v10, rawData.length);
    } else {
        if (v8) {
            v11 = v12 = 32;
            if (32 > RETURNDATASIZE()) {
                v11 = v13 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v11 - MEM[64] >= 32);
        }
        if (address(v0) >= address(v0)) {
            v14 = v15 = 3;
            v16 = 0x4327(0x4444c5dc75cb358380d2e3de08a90, this, address(v0));
            v17 = v18 = 0x3dda(v16);
            v19 = v20 = 0x4327(0x4444c5dc75cb358380d2e3de08a90, this, address(v0));
        } else {
            v14 = v21 = 3;
            v22 = 0x4327(0x4444c5dc75cb358380d2e3de08a90, this, address(v0));
            v17 = v23 = 0x3dda(v22);
            v19 = v24 = 0x4327(0x4444c5dc75cb358380d2e3de08a90, this, address(v0));
        }
        if (0 == (uint8(bool(uint8(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 208) >> 4)) == v14)) {
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v25, /* uint256 */ v26 = address(0x4444c5dc75cb358380d2e3de08a90).take(address(v2), this, v19).gas(msg.gas);
            require(v25, v26, RETURNDATASIZE());
            if (v25) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
            v27 = v28 = 3;
        } else {
            v29 = this.balance;
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v30, /* uint256 */ v31 = address(0x4444c5dc75cb358380d2e3de08a90).take(0, this, v19).gas(msg.gas);
            require(v30, v31, RETURNDATASIZE());
            if (v30) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
            v32 = _SafeSub(this.balance, v29);
            require((address(v2)).code.size);
            v33, /* uint256 */ v34 = address(v2).deposit().value(v32).gas(msg.gas);
            require(v33, v34, RETURNDATASIZE());
            if (v33) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
            v27 = v35 = 3;
        }
        if (uint8(bool(tstor_e67bd0676d46b7f9f34e582d927d908e16216dd24bc46c5aab4cb6b3dda7fd31 >> 208)) - v27) {
            require((address(0x4444c5dc75cb358380d2e3de08a90)).code.size);
            v36, /* uint256 */ v37 = address(0x4444c5dc75cb358380d2e3de08a90).sync(address(v1)).gas(msg.gas);
            require(v36, v37, RETURNDATASIZE());
            if (v36) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
            0x43c1(address(v1), msg.sender, (v3 ^ v17) * (v17 < v3) ^ v3);
            v38 = v39 = MEM[64];
            v40 = address(0x4444c5dc75cb358380d2e3de08a90).settle().gas(msg.gas);
            require(v40, MEM[64], RETURNDATASIZE());
            v41 = v42 = 32;
            if (v40) {
                v43 = v44 = 9545;
                if (v42 <= RETURNDATASIZE()) {
                    require(!((v39 + 32 > uint64.max) | (v39 + 32 < v39)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v39 + 32;
                    v45 = v46 = v39 + v42;
                }
            }
        } else {
            require((address(v1)).code.size);
            v47, /* uint256 */ v48 = address(v1).withdraw((v3 ^ v17) * (v17 < v3) ^ v3).gas(msg.gas);
            require(v47, v48, RETURNDATASIZE());
            if (v47) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!0);
            }
            v38 = v49 = MEM[64];
            v50 = address(0x4444c5dc75cb358380d2e3de08a90).settle().value((v3 ^ v17) * (v17 < v3) ^ v3).gas(msg.gas);
            require(v50, MEM[64], RETURNDATASIZE());
            v41 = v51 = 32;
            if (v50) {
                v43 = v52 = 9140;
                if (v51 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x23bb. Refer to 3-address code (TAC);
                }
            }
        }
        v53 = new uint256[](MEM[96]);
        MCOPY(v53.data, 128, MEM[96]);
        MEM[MEM[64] + MEM[96] + v41 + v41] = 0;
        return v53;
        require(!((v38 + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v38 + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v38)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v38 + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v45 = v54 = v38 + v41;
        require(v45 - v38 >= 32);
        // Unknown jump to Block ['0x23b4', '0x2549']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2345. Refer to 3-address code (TAC);
        v41 = v55 = RETURNDATASIZE();
        // Unknown jump to Block 0x23a2. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2347. Refer to 3-address code (TAC);
    }
}

function 0x910cd747(struct(3) varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 96);
    if (msg.sender - address(0x9e6e583375b767414ab2409717d34b6c7b25d133)) {
        MEM[0:32] = this.code[msg.value:msg.value + 32];
        v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
        if (!v1) {
            v0 = v2 = ___function_selector__[msg.sender] == 1;
        }
        require(v0, Error(0x666e77));
        require(!(varg0.word0 - address(varg0.word0)));
        require(!(mapping_1[address(varg0.word0)] - 1), Error(0x666e74));
    }
    require(!(varg0.word0 - address(varg0.word0)));
    require(msg.data[4 + varg0 + 64] < msg.data.length - (4 + varg0) - 31);
    require(v3.length <= uint64.max);
    require(v3.data <= msg.data.length - v3.length);
    CALLDATACOPY(v4.data, v3.data, v3.length);
    MEM[v4.data + v3.length] = 0;
    v5, /* uint256 */ v6 = varg0.word0.call(v4.data).value(varg0.word1).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (!v5) {
        require(!MEM[v7], 32 + v7, MEM[v7]);
        revert(Error(21040));
    } else {
        v10 = new uint256[](MEM[v7]);
        MCOPY(v10.data, v7 + 32, MEM[v7]);
        MEM[v10 + MEM[v7] + 32] = 0;
        return v10;
    }
}

function 0x7f3a34e9(address varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == address(0x9e6e583375b767414ab2409717d34b6c7b25d133), Error(28257));
    require(varg0.code.size);
    v0, /* uint256 */ v1 = varg0.deposit().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
        return ;
    } else {
        return ;
    }
}

function 0x68e419d8(uint256 varg0, address varg1, struct(2) varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg2 <= uint64.max);
    require(msg.data.length - varg2 - 4 >= 64);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x787274));
    require(varg3.code.size);
    v3, /* uint256 */ v4 = varg3.withdraw(varg5).gas(msg.gas);
    require(v3, v4, RETURNDATASIZE());
    if (v3) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    v5, /* uint256 */ v6 = varg4.balanceOf(this).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        v7 = v8 = 32;
        if (32 > RETURNDATASIZE()) {
            v7 = v9 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v7 - MEM[64] >= 32);
    }
    require(varg1.code.size);
    require(msg.data[4 + varg2] < msg.data.length - (4 + varg2) - 31);
    require(v10.length <= uint64.max);
    require(v10.data <= msg.data.length - v10.length);
    v11 = new uint256[](64);
    v12 = new bytes[](v10.length);
    CALLDATACOPY(v12.data, v10.data, v10.length);
    v12[v10.length] = 0;
    v13 = new bytes[](v14.length);
    require(msg.data[4 + varg2 + 32] < msg.data.length - (4 + varg2) - 31);
    require(v14.length <= uint64.max);
    require(v14.data <= msg.data.length - v14.length);
    v15 = new uint256[](v13 - (MEM[64] + 4) - 32);
    v12[v10.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v14.length;
    CALLDATACOPY(v13.data, v14.data, v14.length);
    v13[v14.length] = 0;
    v16, /* uint256 */ v17 = varg1.execute(v11, v15).value(varg5).gas(msg.gas);
    require(v16, v17, RETURNDATASIZE());
    if (v16) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    v18, /* uint256 */ v6 = varg4.balanceOf(this).gas(msg.gas);
    require(v18, MEM[64], RETURNDATASIZE());
    if (v18) {
        v19 = v20 = 32;
        if (32 > RETURNDATASIZE()) {
            v19 = v21 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v19 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v19 - MEM[64] >= 32);
    }
    v22 = _SafeSub(v6, v6);
    require(v22 >= varg6, Error(0x78656d72));
    0x41e2(varg7);
    return ;
}

function 0x5f6f56f1(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    require(msg.sender == address(0x9e6e583375b767414ab2409717d34b6c7b25d133), Error(28257));
    while (v0 < varg0.length) {
        require(!(msg.data[varg0 + (v0 << 5) + 36] - address(msg.data[varg0 + (v0 << 5) + 36])));
        ___function_selector__[address(msg.data[varg0 + (v0 << 5) + 36])] = 1;
        v0 = v0 + 1;
    }
    return ;
}

function 0x5f31516f(struct(3) varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(msg.data.length - varg0 - 4 >= 96);
    if (msg.sender - address(0x9e6e583375b767414ab2409717d34b6c7b25d133)) {
        MEM[0:32] = this.code[msg.value:msg.value + 32];
        v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
        if (!v1) {
            v0 = v2 = ___function_selector__[msg.sender] == 1;
        }
        require(v0, Error(0x646e77));
        require(!(varg0.word0 - address(varg0.word0)));
        require(!(mapping_2[address(varg0.word0)] - 1), Error(0x646e74));
    }
    require(!(varg0.word0 - address(varg0.word0)));
    require(msg.data[4 + varg0 + 64] < msg.data.length - (4 + varg0) - 31);
    require(v3.length <= uint64.max);
    require(v3.data <= msg.data.length - v3.length);
    CALLDATACOPY(v4.data, v3.data, v3.length);
    MEM[v4.data + v3.length] = 0;
    v5, /* uint256 */ v6 = varg0.word0.delegatecall(v4.data).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v7 = v8 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = v9 = new bytes[](RETURNDATASIZE());
        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
        v6 = v9.data;
        RETURNDATACOPY(v6, 0, RETURNDATASIZE());
    }
    if (!v5) {
        require(!MEM[v7], 32 + v7, MEM[v7]);
        revert(Error(21040));
    } else {
        v10 = new uint256[](MEM[v7]);
        MCOPY(v10.data, v7 + 32, MEM[v7]);
        MEM[v10 + MEM[v7] + 32] = 0;
        return v10;
    }
}

function 0x4cf8a597(address varg0, bool varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == address(0x9e6e583375b767414ab2409717d34b6c7b25d133), Error(28257));
    if (!varg1) {
        mapping_1[varg0] = 1;
        return ;
    } else {
        mapping_2[varg0] = 1;
        return ;
    }
}

function WORKERS() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = new bytes[](1024);
    require(!((v0 + 1056 > uint64.max) | (v0 + 1056 < v0)), Panic(65)); // failed memory allocation (too much memory)
    MEM[v0.data] = 0xfefefefefefefefefefefefe6de947892f7726c0e241110be285e05b3b9d71cb;
    MEM[v0 + 64] = 0xfefefefefefefefefefefefe052ecfff1158fa78706d9709c8ddf36744369245;
    MEM[v0 + 96] = 0xfefefefefefefefefefefefec620e30e7ad56ed76ee5f2a779dd86d8e590cb86;
    MEM[v0 + 128] = 0xfefefefefefefefefefefefe124193090721e3c56c41d30cf66a6dd4f1b2672b;
    MEM[v0 + 160] = 0xfefefefefefefefefefefefe133858e2ca6aa3d2db0a3b4ef72ca1e704eae163;
    MEM[v0 + 192] = 0xfefefefefefefefefefefefea12d103fe431a57d8f6308aa71801705549f020a;
    MEM[v0 + 224] = 0xfefefefefefefefefefefefe44cad5aa2c924fb5ac42d88deaae8f932d789978;
    MEM[v0 + (uint8.max + 1)] = 0xfefefefefefefefefefefefe88afa03794a0cee92ddd51e3830c74b140be5568;
    MEM[v0 + 288] = 0xfefefefefefefefefefefefe66488a4a05a4b7af5022eea2b12437ede974c04e;
    MEM[v0 + 320] = 0xfefefefefefefefefefefefe8607459d1c1e83a06f8508fff02a93038d245387;
    MEM[v0 + 352] = 0xfefefefefefefefefefefefe5039f6f62f0149a5d2e98e1464cdc4b6c8aeee81;
    MEM[v0 + 384] = 0xfefefefefefefefefefefefe9b01b153929f43ddeb0c90d705b361d4244c434a;
    MEM[v0 + 416] = 0xfefefefefefefefefefefefe64e73af6ac6faa80c93a988d7a5b63a0a80f317b;
    MEM[v0 + 448] = 0xfefefefefefefefefefefefe95a6bc9a46bbf08542d521c8ba8e1e4135f81256;
    MEM[v0 + 480] = 0xfefefefefefefefefefefefe898d613e9a948d08c6bef8a78c629f79fa44048e;
    MEM[v0 + 512] = 0xfefefefefefefefefefefefeb940391d91bdad913921a998ebfb465a732089f8;
    MEM[v0 + 544] = 0xfefefefefefefefefefefefe744fff5c782359d543484d802e65dcb0c640f243;
    MEM[v0 + 576] = 0xfefefefefefefefefefefefe29b270d5f06788609ff1105553a35740a1d8820c;
    MEM[v0 + 608] = 0xfefefefefefefefefefefefe87d6c30f7bc9fd846bc7dbad13837ab79cb53887;
    MEM[v0 + 640] = 0xfefefefefefefefefefefefed266497bc101e46717bd50263c4e9e8366184ec4;
    MEM[v0 + 672] = 0xfefefefefefefefefefefefe637bb6e7158ee1d7f26f2b538255a714d174dea9;
    MEM[v0 + 704] = 0xfefefefefefefefefefefefed7754cd2e86372587993584913d1a75aea770716;
    MEM[v0 + 736] = 0xfefefefefefefefefefefefecb9618d5516e42eddcb3754c8237f804289d9ccb;
    MEM[v0 + 768] = 0xfefefefefefefefefefefefe3e5a2cf9ad1e5dd5b3c97170d2bc8f7a1315acad;
    MEM[v0 + 800] = 0xfefefefefefefefefefefefeab69f943a0574969962ec3619bbd1dc2dea44aa2;
    MEM[v0 + 832] = 0xfefefefefefefefefefefefe46bcd5e4202de3319cd4fdfc3a9abc0fb6c64891;
    MEM[v0 + 864] = 0xfefefefefefefefefefefefe55d90dd152fffd4401120a9fcdcc32a36c27485c;
    MEM[v0 + 896] = 0xfefefefefefefefefefefefe131cb07740a5485e39680f0c86617aee8e28182f;
    MEM[v0 + 928] = 0xfefefefefefefefefefefefec4a637376d1b30956cc890ccbd6321112d1afdd8;
    MEM[v0 + 960] = 0xfefefefefefefefefefefefe1d774833578d8975de12284e05f145b16dfb21d7;
    MEM[v0 + 992] = 0xfefefefefefefefefefefefecc059e0ab5bcf77700b944e15809d4aec5810355;
    MEM[v0 + 1024] = 0xfefefefefefefefefefefefef5325fe8b71f9e17941f2edd684422fcef4c1934;
    v1 = new bytes[](v0.length);
    MCOPY(v1.data, v0.data, v0.length);
    v1[v0.length] = 0;
    return v1;
}

function 0x003fffc2(uint256 varg0, address varg1, struct(2) varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    require(varg2 <= uint64.max);
    require(msg.data.length - varg2 - 4 >= 64);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x786574));
    0x49d3(varg3, varg1, varg5);
    v3, v4 = varg4.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v5 = 0;
    if (v3) {
        v6 = v7 = 32;
        if (32 > RETURNDATASIZE()) {
            v6 = v8 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v6 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v6 - MEM[64] >= 32);
    }
    require(varg1.code.size);
    require(msg.data[4 + varg2] < msg.data.length - (4 + varg2) - 31);
    require(v9.length <= uint64.max);
    require(v9.data <= msg.data.length - v9.length);
    v10 = new uint256[](64);
    v11 = new bytes[](v9.length);
    CALLDATACOPY(v11.data, v9.data, v9.length);
    v11[v9.length] = 0;
    v12 = new bytes[](v13.length);
    require(msg.data[4 + varg2 + 32] < msg.data.length - (4 + varg2) - 31);
    require(v13.length <= uint64.max);
    require(v13.data <= msg.data.length - v13.length);
    v14 = new uint256[](v12 - (MEM[64] + 4) - 32);
    v11[v9.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0] = v13.length;
    CALLDATACOPY(v12.data, v13.data, v13.length);
    v12[v13.length] = 0;
    v15, /* uint256 */ v16 = varg1.execute(v10, v14).gas(msg.gas);
    require(v15, v16, RETURNDATASIZE());
    if (v15) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v17 = v18 = 0;
    }
    v19, /* uint256 */ v17 = varg4.balanceOf(this).gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    if (v19) {
        v20 = v21 = 32;
        if (32 > RETURNDATASIZE()) {
            v20 = v22 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v20 - MEM[64] >= 32);
    }
    v23 = _SafeSub(v17, v4);
    require(v23 >= varg6, Error(0x78746d72));
    0x41e2(varg7);
    return MEM[v34ccarg0x0:v34ccarg0x0 + v34ccarg0x0];
}

function 0x3dda(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0xd78fd74d(uint256 varg0, address varg1, address varg2, address varg3, uint112 varg4, uint112 varg5, uint104 varg6, uint24 varg7, uint16 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    v0 = v1 = varg4;
    require(!(varg4 - v1));
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v2 = v3 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v3) {
        v2 = v4 = ___function_selector__[msg.sender] == 1;
    }
    require(v2, Error(28279));
    require(block.timestamp <= varg0, Error(0x326c6274));
    v5, /* uint256 */ v6 = varg3.balanceOf(this).gas(msg.gas);
    require(v5, MEM[64], RETURNDATASIZE());
    if (v5) {
        v7 = v8 = 32;
        if (32 > RETURNDATASIZE()) {
            v7 = v9 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v7 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v7 - MEM[64] >= 32);
    }
    v10, /* uint256 */ v6 = varg2.balanceOf(this).gas(msg.gas);
    require(v10, MEM[64], RETURNDATASIZE());
    if (v10) {
        v11 = v12 = 32;
        if (32 > RETURNDATASIZE()) {
            v11 = v13 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v11 - MEM[64] >= 32);
    }
    if (0 == varg2 < varg3) {
        v14 = v15 = MEM[64];
        v16 = varg1.getReserves().gas(msg.gas);
        require(v16, MEM[64], RETURNDATASIZE());
        if (v16) {
            v0 = v17 = uint112.max;
            v18 = v19 = 3107;
            if (96 <= RETURNDATASIZE()) {
                require(!((v15 + 96 > uint64.max) | (v15 + 96 < v15)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v15 + 96;
                v20 = v21 = v15 + 96;
            }
        }
    } else {
        v14 = v22 = MEM[64];
        v23 = varg1.getReserves().gas(msg.gas);
        require(v23, MEM[64], RETURNDATASIZE());
        if (v23) {
            v0 = v24 = uint112.max;
            v18 = v25 = 2932;
            v26 = v27 = 96;
            if (96 > RETURNDATASIZE()) {
                // Unknown jump to Block 0xb7f0x3df. Refer to 3-address code (TAC);
            }
        }
    }
    v28 = v29 = uint112(v6);
    v30 = v31 = uint112(v6);
    if (v28 * v30 >= 0x400000000000) {
        v32 = 0x4e78(v28 * v30);
        v33 = v34 = varg6 * v32 >> 63;
    } else {
        v35 = 0x4e78(varg6 * (v28 * v30) * varg6);
        v33 = v36 = v35 >> 63;
    }
    require(v28 > v33, Error(0x326c706c));
    v37 = v38 = v28 - v33;
    v39 = _SafeDiv(v30 * v38 * 0x186a0, (v28 - v38) * varg7);
    v0 = v40 = v39 + 1;
    if (v0 >= v6) {
        require(v6 - 1 <= v6, Panic(17)); // arithmetic overflow or underflow
        v0 = v41 = v6 - 1;
    }
    if (v40 > v0) {
        v37 = v42 = _SafeDiv(v0 * varg7 * v28, 0x186a0 * v30 + v0 * varg7);
    }
    if (0 == varg2 < varg3) {
        0x43c1(varg2, varg1, v0);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(varg1.code.size);
        v43 = new uint256[](v44);
        MCOPY(v43.data, MEM[64] + 32, v44);
        MEM[v43.data] = 0;
        v45, /* uint256 */ v46 = varg1.swap(v37, 0, address(this), v43).gas(msg.gas);
        require(v45, v46, RETURNDATASIZE());
        if (v45) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    } else {
        0x43c1(varg2, varg1, v0);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(varg1.code.size);
        v47 = new uint256[](v48);
        MCOPY(v47.data, MEM[64] + 32, v48);
        MEM[v47.data] = 0;
        v49, /* uint256 */ v50 = varg1.swap(0, v37, address(this), v47).gas(msg.gas);
        require(v49, v50, RETURNDATASIZE());
        if (v49) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    }
    v51, /* uint256 */ v6 = varg3.balanceOf(this).gas(msg.gas);
    require(v51, MEM[64], RETURNDATASIZE());
    if (v51) {
        v52 = v53 = 32;
        if (32 > RETURNDATASIZE()) {
            v52 = v54 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v52 - MEM[64] >= 32);
    }
    v55 = _SafeSub(v6, v6);
    require(v55 >= varg5, Error(0x326c73));
    require(!(0x61a800000000000000000000000000000000 * v55 / 0x61a800000000000000000000000000000000 - v55), Panic(17)); // arithmetic overflow or underflow
    v56 = _SafeMul(varg7, v0);
    v57 = _SafeMul(v56, varg6);
    v58 = _SafeMul(v57, varg6);
    require(0x61a800000000000000000000000000000000 * v55 > v58, Error(0x326c6e6f));
    0x44b7(varg8, varg9, msg.gas + 33000, 0x61a800000000000000000000000000000000 * v55 - v58);
    return ;
    require(!((v14 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v14 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v14)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v14 + (v26 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v20 = v14 + v26;
    require(v20 - v14 >= 96);
    v6 = v59 = MEM[v14];
    require(!(v59 - uint112(v59)));
    v6 = v60 = MEM[v14 + 32];
    require(!(v60 - uint112(v60)));
    require(!(MEM[v14 + 64] - uint32(MEM[v14 + 64])));
    // Unknown jump to Block ['0xb74', '0xc23']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x5c9. Refer to 3-address code (TAC);
    v26 = RETURNDATASIZE();
    // Unknown jump to Block 0xb620x3df. Refer to 3-address code (TAC);
    v30 = v61 = uint112(v6);
    v28 = v62 = uint112(v6);
    // Unknown jump to Block 0x5e0. Refer to 3-address code (TAC);
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x41e2(uint256 varg0) private { 
    if (this.balance < varg0) {
        varg0 = v0 = this.balance;
    }
    if (bool(varg0)) {
        v1 = v2 = 0;
        if (!varg0) {
            v1 = v3 = 2300;
        }
        v4, /* uint256 */ v5 = block.coinbase.call().value(varg0).gas(v1);
        require(v4, v5, RETURNDATASIZE());
        return ;
    } else {
        return ;
    }
}

function 0x4327(address varg0, address varg1, address varg2) private { 
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

function 0x43c1(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & (RETURNDATASIZE() > 31)) & v1) {
        v0 = v2 = !(RETURNDATASIZE() | !varg0.code.size);
    }
    require(v0, Error('TRANSFER_FAILED'));
    return ;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x44b7(uint16 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = _SafeDiv(varg3, varg1);
    require(v0 >= tx.gasprice * (varg2 - msg.gas), Error(0x63746474));
    0x41e2((v0 - tx.gasprice * (varg2 - msg.gas)) * varg0 >> 16);
    return ;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x48e2(address varg0, address varg1) private { 
    v0, v1 = varg0.balanceOf(this).gas(msg.gas);
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
    v6, /* uint256 */ v7 = varg1.balanceOf(this).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    if (v6) {
        v8 = 32;
        if (32 > RETURNDATASIZE()) {
            v8 = v9 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v8 - MEM[64] >= 32);
        return v7, v1;
    } else {
        return 0, v1;
    }
}

function 0x49d3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!((MEM[0] == 1) & v0)) {
        if (!varg0.code.size | RETURNDATASIZE() >= v0) {
            v1 = this.code.size;
            v2 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
            v3 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, varg2).gas(msg.gas);
            if (!((MEM[0] == 1) & v3)) {
                require(RETURNDATASIZE() | !varg0.code.size < v3, ApproveFailed());
            }
        }
    }
    MEM[52] = 0;
    return ;
}

function 0x4a7c(address varg0, address varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 
    v0, v1 = varg0.balanceOf(this).gas(msg.gas);
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
    v6, v7 = varg1.balanceOf(this).gas(msg.gas);
    require(v6, MEM[64], RETURNDATASIZE());
    v7 = v8 = 0;
    if (v6) {
        v9 = v10 = 32;
        if (32 > RETURNDATASIZE()) {
            v9 = v11 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v9 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v9 - MEM[64] >= 32);
    }
    v12 = _SafeSub(varg2, v1);
    v13 = _SafeSub(v7, varg3);
    require(v13 >= varg4, Error(0x646d72));
    v14 = _SafeMul(varg5, v12);
    require(v13 << 144 > v14, Error(0x64617667));
    return (v13 << 144) - v14;
}

function 0x4e78(uint256 varg0) private { 
    v0 = (uint72.max < varg0 >> ((uint136.max < varg0) << 7)) << 6 | (uint136.max < varg0) << 7;
    v1 = ((uint24.max < varg0 >> ((uint40.max < varg0 >> v0) << 5 | v0)) << 4 | ((uint40.max < varg0 >> v0) << 5 | v0)) >> 1;
    v2 = varg0 / ((181 << v1) * (varg0 / (1 << v1 << v1) + (uint16.max + 1)) >> 18) + ((181 << v1) * (varg0 / (1 << v1 << v1) + (uint16.max + 1)) >> 18) >> 1;
    v3 = varg0 / (varg0 / v2 + v2 >> 1) + (varg0 / v2 + v2 >> 1) >> 1;
    v4 = varg0 / (varg0 / v3 + v3 >> 1) + (varg0 / v3 + v3 >> 1) >> 1;
    v5 = varg0 / (varg0 / v4 + v4 >> 1) + (varg0 / v4 + v4 >> 1) >> 1;
    if (varg0 / v5 < v5) {
        return varg0 / v5;
    } else {
        return v5;
    }
}

function 0xc08d58bb(address varg0, uint256 varg1, address varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == address(0x9e6e583375b767414ab2409717d34b6c7b25d133), Error(28257));
    require(varg0.code.size);
    v0, /* uint256 */ v1 = varg0.withdraw(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
        require(!0);
    }
    if (!varg1) {
        v2 = v3 = 2300;
    }
    v4, /* uint256 */ v5 = varg2.call().value(varg1).gas(v2);
    require(v4, v5, RETURNDATASIZE());
    return ;
}

function 0xbd2bc36e(uint256 varg0, address varg1, uint8 varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, uint256 varg7, bytes varg8, uint16 varg9, uint256 varg10) public payable { 
    require(msg.data.length - 4 >= 352);
    require(varg8 <= uint64.max);
    require(4 + varg8 + 31 < msg.data.length);
    require(varg8.length <= uint64.max);
    require(4 + varg8 + varg8.length + 32 <= msg.data.length);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x67646274));
    v3, v4 = 0x48e2(varg3, varg4);
    v5 = v6 = 0;
    v7 = v8 = 0;
    if (0 == (uint8(bool(varg2)) == 1)) {
        if (uint8(bool(varg2)) - 2) {
            if (3 == uint8(bool(varg2))) {
                require(varg3.code.size);
                v9, /* uint256 */ v10 = varg3.withdraw(varg5).gas(msg.gas);
                require(v9, v10, RETURNDATASIZE());
                if (v9) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    v5 = v11 = 0;
                }
            }
        } else {
            v12 = varg3.transfer(varg1, varg5).value(v6).gas(msg.gas);
            if (!((MEM[v6] == 1) & v12)) {
                require(!varg3.code.size | RETURNDATASIZE() < v12, TransferFailed());
            }
            MEM[52] = v6;
        }
    } else {
        0x49d3(varg3, varg1, varg5);
    }
    v13 = this.balance;
    CALLDATACOPY(v14.data, varg8.data, varg8.length);
    MEM[v14.data + varg8.length] = v5;
    v15, /* uint256 */ v16 = varg1.call(v14.data).value(v7).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v17 = v18 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v17 = new bytes[](RETURNDATASIZE());
        require(!((v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v17 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v17)), Panic(65)); // failed memory allocation (too much memory)
        v16 = v17.data;
        RETURNDATACOPY(v16, 0, RETURNDATASIZE());
    }
    if (!v15) {
        require(!MEM[v17], 32 + v17, MEM[v17]);
        revert(Error(21040));
    } else {
        if (3 == uint8(bool(varg2 >> 4))) {
            v19 = _SafeSub(this.balance, v13);
            require(varg4.code.size, v5, v5);
            v20, /* uint256 */ v21 = varg4.deposit().value(v19).gas(msg.gas);
            require(v20, MEM[64], RETURNDATASIZE());
            if (v20) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(!v5, v5, v5);
            }
        }
        v22 = 0x4a7c(varg3, varg4, v4, v3, varg6, varg7);
        0x44b7(varg9, varg10, msg.gas + 33000, v22);
        return ;
    }
}

function 0xa90bc6eb(uint256 varg0, address varg1, address varg2, address varg3, uint256 varg4, uint256 varg5, uint24 varg6, uint256 varg7) public payable { 
    require(msg.data.length - 4 >= uint8.max + 1);
    MEM[0:32] = this.code[msg.value:msg.value + 32];
    v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
    if (!v1) {
        v0 = v2 = ___function_selector__[msg.sender] == 1;
    }
    require(v0, Error(28279));
    require(block.timestamp <= varg0, Error(0x32656274));
    v3, /* uint256 */ v4 = varg3.balanceOf(this).gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    if (v3) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    0x43c1(varg2, varg1, varg4);
    if (varg2 >= varg3) {
        v8 = v9 = MEM[64];
        v10 = varg1.getReserves().gas(msg.gas);
        require(v10, MEM[64], RETURNDATASIZE());
        v11 = v12 = 4194;
        if (v10) {
            v13 = v14 = uint112.max;
            v15 = v16 = 4889;
            if (96 <= RETURNDATASIZE()) {
                require(!((v9 + 96 > uint64.max) | (v9 + 96 < v9)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v9 + 96;
                v17 = v18 = v9 + 96;
            }
        }
    } else {
        v8 = v19 = MEM[64];
        v20 = varg1.getReserves().gas(msg.gas);
        require(v20, MEM[64], RETURNDATASIZE());
        v11 = v21 = 4194;
        if (v20) {
            v13 = v22 = uint112.max;
            v15 = v23 = 4728;
            if (96 <= RETURNDATASIZE()) {
                require(!((v19 + 96 > uint64.max) | (v19 + 96 < v19)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v19 + 96;
                v17 = v24 = v19 + 96;
            }
        }
    }
    v25 = v26 = uint112(v4);
    v27 = v28 = uint112(v4);
    require(0x186a0 * v27 + v13 * varg6, Panic(18)); // division by zero
    v29 = v13 * varg6 * v25 / (0x186a0 * v27 + v13 * varg6);
    if (varg2 >= varg3) {
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(varg1.code.size);
        v30 = new uint256[](v31);
        MCOPY(v30.data, MEM[64] + 32, v31);
        MEM[v30.data] = 0;
        v32, /* uint256 */ v33 = varg1.swap(v29, 0, address(this), v30).gas(msg.gas);
        require(v32, v33, RETURNDATASIZE());
        if (v32) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    } else {
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(varg1.code.size);
        v34 = new uint256[](v35);
        MCOPY(v34.data, MEM[64] + 32, v35);
        MEM[v34.data] = 0;
        v36, /* uint256 */ v37 = varg1.swap(0, v29, address(this), v34).gas(msg.gas);
        require(v36, v37, RETURNDATASIZE());
        if (v36) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!0);
        }
    }
    v38, /* uint256 */ v4 = varg3.balanceOf(this).gas(msg.gas);
    require(v38, MEM[64], RETURNDATASIZE());
    if (v38) {
        v39 = v40 = 32;
        if (32 > RETURNDATASIZE()) {
            v39 = v41 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v39 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v39 - MEM[64] >= 32);
    }
    v42 = _SafeSub(v4, v4);
    require(v42 >= varg5, Error(0x326573));
    0x41e2(varg7);
    return ;
    require(!((v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v8 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v17 = v8 + RETURNDATASIZE();
    require(v17 - v8 >= 96);
    v4 = v43 = MEM[v8];
    require(!(v43 - uint112(v43)));
    v4 = v44 = MEM[v8 + 32];
    require(!(v44 - uint112(v44)));
    require(!(MEM[v8 + 64] - uint32(MEM[v8 + 64])));
    // Unknown jump to Block ['0x1278', '0x1319']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x103b. Refer to 3-address code (TAC);
    v27 = v45 = uint112(v4);
    v25 = v46 = uint112(v4);
    // Unknown jump to Block 0x1052. Refer to 3-address code (TAC);
}

function transferToken(address _token, address _to, uint256 _value) public payable { 
    require(msg.data.length - 4 >= 96);
    require(msg.sender == address(0x9e6e583375b767414ab2409717d34b6c7b25d133), Error(28257));
    0x43c1(_token, _to, _value);
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, address varg2, address varg3, address varg4, uint256 varg5, uint256 varg6, address varg7, uint256 varg8) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (!(function_selector >> 224)) {
            require(msg.data.length - 4 >= uint8.max + 1);
            MEM[0:32] = this.code[msg.value:msg.value + 32];
            v0 = v1 = ~(!msg.sender) & (MEM[0] == msg.sender | 0xfefefefefefefefefefefefe0000000000000000000000000000000000000000);
            if (!v1) {
                v0 = v2 = ___function_selector__[msg.sender] == 1;
            }
            require(v0, Error(28279));
            require(block.timestamp <= varg1, Error(0x33656274));
            v3, v4 = 0x48e2(varg3, varg4);
            tstor_d87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167 = (varg3 < varg4) << 160 | varg2;
            tstor_c4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656_0_19 = varg3;
            if (varg5 >= v4) {
                v5 = v6 = v4 - 1;
                require(v6 <= v4, Panic(17)); // arithmetic overflow or underflow
            }
            v7 = varg2.swap(this, varg3 < varg4, v5, varg7, 12408).gas(msg.gas);
            require(v7, MEM[64], RETURNDATASIZE());
            if (v7) {
                v8 = v9 = 64;
                if (v9 > RETURNDATASIZE()) {
                    v8 = v10 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (v8 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(MEM[64] + v8 - MEM[64] >= v9);
            }
            tstor_d87933648bd23e06b58a357304402268894edd752668209b41272240baf5e167 = 0;
            tstor_c4625677c9eec9195d7230fe62f26d431e359a53e9895a019aa8bd9c92875656_0_19 = 0;
            v11, v12 = varg3.balanceOf(this).gas(msg.gas);
            require(v11, MEM[64], RETURNDATASIZE());
            v12 = v13 = 0;
            if (v11) {
                v14 = v15 = 32;
                if (32 > RETURNDATASIZE()) {
                    v14 = v16 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v14 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v14 - MEM[64] >= 32);
            }
            v17, v18 = varg4.balanceOf(this).gas(msg.gas);
            require(v17, MEM[64], RETURNDATASIZE());
            v18 = v19 = 0;
            if (v17) {
                v20 = v21 = 32;
                if (32 > RETURNDATASIZE()) {
                    v20 = v22 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v20 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v20 - MEM[64] >= 32);
            }
            v23 = _SafeSub(v4, v12);
            v24 = _SafeSub(v18, v3);
            require(v23 <= varg5, Error(0x70646d70));
            require(v24 >= varg6, Error(0x70646d72));
            require(0x1 | !v23, Panic(17)); // arithmetic overflow or underflow
            require(v24 << 144 > 0, Error(0x70617667));
            0x41e2(varg8);
            exit;
        } else if (0x3fffc2 == function_selector >> 224) {
            0x003fffc2();
        } else if (0x109a411c == function_selector >> 224) {
            WORKERS();
        } else if (0x23a69e75 != function_selector >> 224) {
            if (0x4cf8a597 == function_selector >> 224) {
                0x4cf8a597();
            } else if (0x5f31516f == function_selector >> 224) {
                0x5f31516f();
            } else if (0x5f6f56f1 == function_selector >> 224) {
                0x5f6f56f1();
            } else if (0x68e419d8 == function_selector >> 224) {
                0x68e419d8();
            } else if (0x7f3a34e9 == function_selector >> 224) {
                0x7f3a34e9();
            } else if (0x910cd747 == function_selector >> 224) {
                0x910cd747();
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else if (0x92928cad == function_selector >> 224) {
                0x92928cad();
            } else if (0x95305e90 == function_selector >> 224) {
                0x95305e90();
            } else if (0xa41e223e == function_selector >> 224) {
                0xa41e223e();
            } else if (0xa90bc6eb == function_selector >> 224) {
                0xa90bc6eb();
            } else if (0xbd2bc36e == function_selector >> 224) {
                0xbd2bc36e();
            } else if (0xc08d58bb == function_selector >> 224) {
                0xc08d58bb();
            } else if (0xd78fd74d == function_selector >> 224) {
                0xd78fd74d();
            } else if (0xf17f3fb2 == function_selector >> 224) {
                0xf17f3fb2();
            } else if (0xf5537ede == function_selector >> 224) {
                transferToken(address,address,uint256);
            } else if (0xfa461e33 - (function_selector >> 224)) {
                exit;
            }
        }
    } else {
        exit;
    }
}
