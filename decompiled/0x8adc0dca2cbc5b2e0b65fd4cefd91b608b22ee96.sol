// Decompiled by library.dedaub.com
// 2026.04.23 01:29 UTC

// Data structures and variables inferred from the use of storage instructions
mapping (address => mapping (address => bool)) mapping_0; // STORAGE[0x0]
mapping (address => bool) _maverickV2SwapCallback; // STORAGE[0x1]
address stor_2_0_19; // STORAGE[0x2] bytes 0 to 19
address _receiveFlashLoan; // STORAGE[0x3] bytes 0 to 19
address _onMorphoFlashLoan; // STORAGE[0x4] bytes 0 to 19



function 0x127f(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(0xa9059cbb000000000000000000000000, varg1, varg2).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
        MEM[52] = 0;
        return ;
    }
}

function 0x13db(address varg0, uint256 varg1) private { 
    v0 = varg0;
    if (!mapping_0[v0][address(varg1)]) {
        0x1568(v0, varg1);
        mapping_0[v0][address(varg1)] = 1;
        return ;
    } else {
        return ;
    }
}

function 0x14a1(address varg0, uint256 varg1) private { 
    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == varg0) {
        require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
        v0 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).deposit().value(varg1).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            return ;
        } else {
            return ;
        }
    } else {
        return ;
    }
}

function 0x1559(uint256 varg0, uint256 varg1) private { 
    v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, v1, RETURNDATASIZE());
    return ;
}

function 0x1568(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.approve(0x95ea7b3000000000000000000000000, varg1, uint256.max).gas(msg.gas);
    if (!v0) {
        RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
        revert(uint24(MEM[64]), RETURNDATASIZE());
    } else {
        require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
        MEM[52] = 0;
        return ;
    }
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function 0x1985(uint256 varg0, uint256 varg1) private { 
    if (varg0 - msg.gas <= varg0) {
        if (varg0 - msg.gas <= varg0 - msg.gas + 19500) {
            v0 = _SafeMul(tx.gasprice, varg0 - msg.gas + 19500);
            require(this.balance > v0, InsufficientProfit(this.balance, v0));
            if (varg1) {
                if (this.balance - v0 <= this.balance) {
                    v1 = _SafeMul(this.balance - v0, varg1);
                    if (v1 / 10000) {
                        0x1559(block.coinbase, v1 / 10000);
                    }
                }
            }
            0x1559(msg.sender, this.balance);
            return ;
        }
    }
    revert(Panic(17));
}

function receiveFlashLoan(address[] tokens, uint256[] amounts, uint256[] feeAmounts, bytes userData) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(tokens <= uint64.max);
    require(tokens + 35 < msg.data.length);
    require(tokens.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](tokens.length);
    require(!((v0 + (32 + (tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (tokens.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(tokens + (tokens.length << 5) + 36 <= msg.data.length);
    v3 = v4 = tokens.data;
    while (v3 < tokens + (tokens.length << 5) + 36) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
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
    v15 = v16 = 0x1c0d6;
    require(4 + userData + 31 < msg.data.length);
    require(msg.data[4 + userData] <= uint64.max);
    require(v17.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + userData + 32 + 60, msg.data[4 + userData] - 60);
    require(!(msg.sender - address(msg.data[4 + userData + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(userData.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v18, /* uint256 */ v19 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + userData] - 60], MEM[0:0]).gas(msg.gas);
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
        require(!MEM[v20], v20 + 32, MEM[v20]);
        revert(Error('NR&6352'));
    } else {
        0x13db(userData.word1 >> 96, _receiveFlashLoan);
        if (v5.length) {
            if (v10.length) {
                v15 = v22 = MEM[v5.data] + MEM[v10.data];
                require(MEM[v5.data] <= v22, Panic(17)); // arithmetic overflow or underflow
                if (address(userData.word1 >> 96) - address(msg.data[4 + userData + 32 + 20] >> 96)) {
                    0x14a1(msg.data[4 + userData + 32 + 20] >> 96, v22);
                }
                if (address(userData.word1 >> 96) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
                    v15 = v23 = 0x1c0f7;
                    v15 = v24 = 4479;
                    v15 = v25 = 4454;
                    v26 = v27 = _onMorphoFlashLoan;
                    while (1) {
                        v26 = address(v26);
                        // Unknown jump to Block ['0x1166B0xf1c', '0x117fB0xf1c']. Refer to 3-address code (TAC);
                    }
                    0x1559(v26, v15);
                    // Unknown jump to Block 0x1c0d6. Refer to 3-address code (TAC);
                }
                exit;
            }
        }
        revert(Panic(50));
    }
}

function 0xe881527b(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(address(varg1) - varg1));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    v5 = v6 = 0;
    while (v5 < v0.length) {
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v7 = address(v0[v5]).approve(0x95ea7b3000000000000000000000000, varg1, 0).gas(msg.gas);
        if (!v7) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), ApproveFailed());
            MEM[52] = 0;
            v5 += 1;
        }
    }
    exit;
}

function 0xb382d45d(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    _maverickV2SwapCallback[address(varg0)] = 0;
    return ;
}

function 0xa31454c5(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(address(varg1) - varg1));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    v5 = v6 = 0;
    while (v5 < v0.length) {
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        0x1568(address(v0[v5]), varg1);
        v5 = v5 + 1;
    }
    exit;
}

function 0x9a2239a9(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    _maverickV2SwapCallback[address(varg0)] = 1;
    return ;
}

function 0x8b533451(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    v5 = v6 = 0;
    while (v5 < v0.length) {
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _maverickV2SwapCallback[address(v0[v5])] = 0;
        v5 = v5 + 1;
    }
    exit;
}

function 0x04cfe195(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x1d1b0ce8(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function invites(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + data + 32 + 60, msg.data[4 + data] - 60);
    require(!(msg.sender - address(msg.data[4 + data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        if (0 != amount0Delta > 0) {
        }
        0x14a1(msg.data[4 + data + 32 + 20] >> 96, v5);
        v6 = address(msg.data[4 + data + 32 + 20] >> 96).transfer(msg.data[4 + data + 32 + 40] >> 96, v5).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
            MEM[52] = 0;
            exit;
        }
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + data + 32 + 60, msg.data[4 + data] - 60);
    require(!(msg.sender - address(msg.data[4 + data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        if (0 != amount0Delta > 0) {
        }
        0x14a1(msg.data[4 + data + 32 + 20] >> 96, v5);
        v6 = address(msg.data[4 + data + 32 + 20] >> 96).transfer(msg.data[4 + data + 32 + 40] >> 96, v5).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
            MEM[52] = 0;
            exit;
        }
    }
}

function 0x3b57434f(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x52dcf4fe(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x6ec1132e(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x7c31cb78(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x8cd4e51d(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x8ff866ef(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0x9ec91c2e(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0xa2d061d4(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0xab9b0dfc(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0xae61122c(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0xc618b531(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(msg.data[4 + _data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + _data + 32 + 60, msg.data[4 + _data] - 60);
    require(!(msg.sender - address(msg.data[4 + _data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(_data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + _data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        v5 = (msg.data[4 + _data + 32 + 40] >> 96).getReserves().gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(RETURNDATASIZE() >= 64);
        if (0 == !_amount0) {
            v6 = MEM[32] * (_amount0 + _amount1) * 10000 / ((MEM[0] - (_amount0 + _amount1)) * 9975) + 1;
            0x14a1(msg.data[4 + _data + 32 + 20] >> 96, v6);
            v7 = address(msg.data[4 + _data + 32 + 20] >> 96);
        } else {
            v6 = v8 = MEM[0] * (_amount0 + _amount1) * 10000 / ((MEM[32] - (_amount0 + _amount1)) * 9975) + 1;
            0x14a1(msg.data[4 + _data + 32 + 20] >> 96, v8);
            v7 = v9 = address(msg.data[4 + _data + 32 + 20] >> 96);
        }
        v10 = v7.transfer(msg.data[4 + _data + 32 + 40] >> 96, v6).gas(msg.gas);
        if (!v10) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
            MEM[52] = 0;
            exit;
        }
    }
}

function 0xdf2c58b9(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function 0xe8c19a08(struct(2) varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(msg.data[4 + varg0] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[msg.sender], Error('NOAC&6352'));
    require(_maverickV2SwapCallback[msg.sender], Error('X&6352'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg0 + 32 + 44, msg.data[4 + varg0 + 32 + 42] >> 240);
    MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] = msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240;
    CALLDATACOPY(MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64, 4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 68, msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 66] >> 240);
    v1, /* uint256 */ v2 = address(msg.data[4 + varg0 + 32 + 22] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg0 + 32 + 42] >> 240], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    require(v1, v3 + 32, MEM[v3]);
    0x13db(msg.data[4 + varg0 + 32 + 2] >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    if (address(msg.data[4 + varg0 + 32 + 2] >> 96) - 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
        v5 = address(msg.data[4 + varg0 + 32 + 2] >> 96).balanceOf(this, 0x70a08231000000000000000000000000).gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(31 < RETURNDATASIZE());
        if (address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) - address(msg.data[4 + varg0 + 32 + 2] >> 96)) {
            if (MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]) {
                require(uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240) <= MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32], Error('PO&6352'));
                MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + uint16(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 64] >> 240)] = MEM[0];
                v6 = new uint256[](MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MCOPY(v6.data, MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32 + 32, MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32]);
                MEM[v6 + MEM[MEM[64] + (msg.data[4 + varg0 + 32 + 42] >> 240) + 32] + 32] = 0;
                v7 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(0xc93069f800000000000000000000000000000000000000000000000000000000, MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000, address(msg.data[4 + varg0 + 32 + 2] >> 96), MEM[0], address(msg.data[4 + varg0 + 32 + (msg.data[4 + varg0 + 32 + 42] >> 240) + 44] >> 96), v6).gas(msg.gas);
                if (v7) {
                    if (v7) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0xc93069f800000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v8.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v9 = new bytes[](v8.length);
                        require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0xc93069f800000000000000000000000000000000000000000000000000000000 + v8.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v9.data, v8.data, v8.length);
                        v9[v8.length] = 0;
                    }
                }
            }
        } else {
            require((address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2)).code.size);
            v10 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).withdraw(MEM[0]).gas(msg.gas);
            if (v10) {
                if (v10) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
    0x1985(msg.gas, uint16(varg0.word1 >> 240));
}

function maverickV2SwapCallback(address varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(varg2 <= uint64.max);
    require(4 + varg2 + 31 < msg.data.length);
    require(msg.data[4 + varg2] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + varg2 + 32 + 60, msg.data[4 + varg2] - 60);
    require(!(msg.sender - address(msg.data[4 + varg2 + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(varg2.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + varg2] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        0x14a1(msg.data[4 + varg2 + 32 + 20] >> 96, varg1);
        0x127f(address(msg.data[4 + varg2 + 32 + 20] >> 96), msg.data[4 + varg2 + 32 + 40] >> 96, varg1);
        exit;
    }
}

function 0x58b72dce(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(address(varg0) - varg0));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    stor_2_0_19 = varg0;
    return ;
}

function 0x45bbd931(uint256 varg0, bytes varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg0) - varg0));
    require(varg1 <= uint64.max);
    require(varg1 + 35 < msg.data.length);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](varg1.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(varg1 + varg1.length + 36 <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    v1, /* uint256 */ v2 = varg0.call(MEM[v920.data:v920.data + v920.length], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        v5 = new uint256[](MEM[v3]);
        MCOPY(v5.data, v3 + 32, MEM[v3]);
        MEM[v5 + MEM[v3] + 32] = 0;
        revert(Error(v5));
    } else {
        exit;
    }
}

function onMorphoFlashLoan(uint256 varg0, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + data + 32 + 60, msg.data[4 + data] - 60);
    require(!(msg.sender - address(msg.data[4 + data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        0x13db(data.word1 >> 96, _onMorphoFlashLoan);
        if (address(data.word1 >> 96) - address(msg.data[4 + data + 32 + 20] >> 96)) {
            0x14a1(msg.data[4 + data + 32 + 20] >> 96, varg0);
        }
        if (address(data.word1 >> 96) == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {
            0x1559(_onMorphoFlashLoan, varg0);
            exit;
        } else {
            exit;
        }
    }
}

function 0x26c7ed42(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = 0;
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    if (!varg0) {
        v0 = v2 = 2300;
    }
    v3 = msg.sender.call().value(varg0).gas(v0);
    require(v3, MEM[64], RETURNDATASIZE());
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + data + 32 + 60, msg.data[4 + data] - 60);
    require(!(msg.sender - address(msg.data[4 + data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        v5 = (msg.data[4 + data + 32 + 40] >> 96).getReserves().gas(msg.gas);
        require(v5, MEM[64], RETURNDATASIZE());
        require(RETURNDATASIZE() >= 64);
        v6 = v7 = MEM[0];
        v6 = v8 = MEM[32];
        if (0 == !amount0) {
            v9 = v10 = 9970;
            v11 = v12 = 10000;
        } else {
            v9 = v13 = 9970;
            v11 = v14 = 10000;
        }
        v15 = v6 * (amount0 + amount1) * v11 / ((v6 - (amount0 + amount1)) * v9) + 1;
        0x14a1(msg.data[4 + data + 32 + 20] >> 96, v15);
        v16 = address(msg.data[4 + data + 32 + 20] >> 96).transfer(msg.data[4 + data + 32 + 40] >> 96, v15).gas(msg.gas);
        if (!v16) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
            MEM[52] = 0;
            exit;
        }
    }
}

function 0x0d42c442(uint256 varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(address(varg0) - varg0));
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    0x127f(address(varg0), msg.sender, varg1);
}

function 0x04079127(uint256 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (varg0.length << 5) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < 4 + varg0 + (varg0.length << 5) + 32) {
        require(!(address(msg.data[v3]) - msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(msg.sender - stor_2_0_19), Error('NO&6352'));
    v5 = v6 = 0;
    while (v5 < v0.length) {
        require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _maverickV2SwapCallback[address(v0[v5])] = 1;
        v5 = v5 + 1;
    }
    exit;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(_maverickV2SwapCallback[tx.origin], Error('HACKER&6352$4636246'));
    CALLDATACOPY(MEM[64] + 32, 4 + data + 32 + 60, msg.data[4 + data] - 60);
    require(!(msg.sender - address(msg.data[4 + data + 32 + 40] >> 96)), Error('MPM&6352'));
    0x13db(data.word1 >> 96, address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666));
    v1, /* uint256 */ v2 = address(0xb08868daca1ffc9c8782519a1d7e08e2656ff666).call(MEM[MEM[64] + 32:MEM[64] + 32 + msg.data[4 + data] - 60], MEM[0:0]).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v3 = v4 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](RETURNDATASIZE());
        require(!((v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v3 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v3)), Panic(65)); // failed memory allocation (too much memory)
        v2 = v3.data;
        RETURNDATACOPY(v2, 0, RETURNDATASIZE());
    }
    if (!v1) {
        require(!MEM[v3], v3 + 32, MEM[v3]);
        revert(Error('NR&6352'));
    } else {
        if (0 != amount0Delta > 0) {
        }
        0x14a1(msg.data[4 + data + 32 + 20] >> 96, v5);
        v6 = address(msg.data[4 + data + 32 + 20] >> 96).transfer(msg.data[4 + data + 32 + 40] >> 96, v5).gas(msg.gas);
        if (!v6) {
            RETURNDATACOPY(uint24(MEM[64]), 0, RETURNDATASIZE());
            revert(uint24(MEM[64]), RETURNDATASIZE());
        } else {
            require((MEM[0] == 1) & (31 < RETURNDATASIZE()) | !RETURNDATASIZE(), TransferFailed());
            MEM[52] = 0;
            exit;
        }
    }
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x4079127 == v0) {
            0x04079127();
        } else if (0x4cfe195 == v0) {
            0x04cfe195();
        } else if (0xd42c442 == v0) {
            0x0d42c442();
        } else if (0x10d1e85c == v0) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x1d1b0ce8 == v0) {
            0x1d1b0ce8();
        } else if (0x23628b57 == v0) {
            invites(address,uint256);
        } else if (0x23a69e75 == v0) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x26c7ed42 == v0) {
            0x26c7ed42();
        } else if (0x2c8958f6 == v0) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x31f57072 == v0) {
            onMorphoFlashLoan(uint256,bytes);
        } else if (0x3b57434f == v0) {
            0x3b57434f();
        } else if (0x45bbd931 == v0) {
            0x45bbd931();
        } else if (0x52dcf4fe == v0) {
            0x52dcf4fe();
        } else if (0x58b72dce == v0) {
            0x58b72dce();
        } else if (0x67ca7c91 == v0) {
            maverickV2SwapCallback(address,uint256,uint256,bytes);
        } else if (0x6ec1132e == v0) {
            0x6ec1132e();
        } else if (0x7c31cb78 == v0) {
            0x7c31cb78();
        } else if (0x84800812 == v0) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x8b533451 == v0) {
            0x8b533451();
        } else if (0x8cd4e51d == v0) {
            0x8cd4e51d();
        } else if (0x8ff866ef == v0) {
            0x8ff866ef();
        } else if (0x9a2239a9 == v0) {
            0x9a2239a9();
        } else if (0x9ec91c2e == v0) {
            0x9ec91c2e();
        } else if (0xa2d061d4 == v0) {
            0xa2d061d4();
        } else if (0xa31454c5 == v0) {
            0xa31454c5();
        } else if (0xab9b0dfc == v0) {
            0xab9b0dfc();
        } else if (0xae61122c == v0) {
            0xae61122c();
        } else if (0xb382d45d == v0) {
            0xb382d45d();
        } else if (0xc618b531 == v0) {
            0xc618b531();
        } else if (0xdf2c58b9 == v0) {
            0xdf2c58b9();
        } else if (0xe881527b == v0) {
            0xe881527b();
        } else if (0xe8c19a08 == v0) {
            0xe8c19a08();
        } else if (0xf04f2707 == v0) {
            receiveFlashLoan(address[],uint256[],uint256[],bytes);
        } else if (!(0xfa461e33 - v0)) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
