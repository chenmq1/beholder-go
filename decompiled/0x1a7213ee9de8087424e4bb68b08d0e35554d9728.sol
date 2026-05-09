// Decompiled by library.dedaub.com
// 2026.03.04 22:36 UTC
// Compiled using the solidity compiler version 0.7.6


// Data structures and variables inferred from the use of storage instructions
uint256 ___function_selector__; // STORAGE[0x0]



function 0x124f(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.approve(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v6];
        if (MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            v2 = MEM[32 + v6];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error('TransferHelper: APPROVE_FAILED_me'));
    return ;
}

function 0x1335(uint256 varg0, address varg1, address varg2) private { 
    v0 = v1 = 0;
    while (v0 < 68) {
        MEM[v0 + MEM[64]] = MEM[v0 + (MEM[64] + 32)];
        v0 += 32;
    }
    if (v0 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v2 = v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v6 = v7 = 96;
    } else {
        v6 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
    }
    if (v3) {
        v2 = v8 = !MEM[v6];
        if (MEM[v6]) {
            require(32 + v6 + MEM[v6] - (32 + v6) >= 32);
            v2 = MEM[32 + v6];
            require(v2 == bool(v2));
        }
    }
    require(v2, Error('TransferHelper: TRANSFER_FAILED_v2'));
    return ;
}

function 0x14ab(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    require(varg0 + 31 < varg1, v1, v1);
    v2 = MEM[varg0];
    assert(v2 <= uint64.max);
    v3 = new uint256[](v2);
    assert(!((v3 + ((v2 << 5) + 32) < v3) | (v3 + ((v2 << 5) + 32) > uint64.max)));
    v4 = v5 = v3.data;
    v6 = v7 = 32 + varg0;
    require(varg1 >= 32 + (varg0 + (v2 << 5)), v1, v1);
    while (v0 < v2) {
        require(MEM[v6] == address(MEM[v6]));
        MEM[v4] = MEM[v6];
        v4 += 32;
        v6 += 32;
        v0 += 1;
    }
    return v3;
}

function 0x15a0(uint256 varg0, uint256 varg1) private { 
    require(varg0 + 31 < varg1);
    v0 = MEM[varg0];
    assert(v0 <= uint64.max);
    v1 = new bytes[](v0);
    assert(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0)) < v1) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0)) > uint64.max)));
    require(varg0 + v0 + 32 <= varg1);
    v2 = v3 = 0;
    while (v2 < v0) {
        v1[v2] = MEM[v2 + (varg0 + 32)];
        v2 += 32;
    }
    if (v2 > v0) {
        v1[v0] = 0;
    }
    return v1;
}

function 0x51967e5d(address varg0, bytes varg1, uint256 varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(varg1 <= uint64.max);
    require(4 + varg1 + 31 < msg.data.length);
    assert(varg1.length <= uint64.max);
    v0 = new bytes[](varg1.length);
    assert(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length)) < v0) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg1.length)) > uint64.max)));
    require(4 + varg1 + varg1.length + 32 <= msg.data.length);
    CALLDATACOPY(v0.data, varg1.data, varg1.length);
    v0[varg1.length] = 0;
    require(0x96451702bfe9ec3c5718402c99e69ed5776c4b37 == msg.sender, Error(24929));
    v1 = v2 = 0;
    while (v1 < v0.length) {
        MEM[v1 + v3.data] = v0[v1];
        v1 += 32;
    }
    if (v1 > v0.length) {
        MEM[v0.length + v3.data] = 0;
    }
    v4, /* uint256 */ v5, /* uint256 */ v6 = varg0.call(v3.data).value(varg2).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v7 = 96;
    } else {
        v7 = v8 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());
    }
    if (v4) {
        exit;
    } else {
        v9 = new uint256[](MEM[v7]);
        v10 = v11 = 0;
        while (v10 < MEM[v7]) {
            MEM[v10 + v9.data] = MEM[v10 + v6];
            v10 += 32;
        }
        if (v10 > MEM[v7]) {
            MEM[MEM[v7] + v9.data] = 0;
        }
        revert(Error(v9));
    }
}

function 0xb087db7a(struct(12) varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public nonPayable { 
    require(msg.data.length - 4 >= 288);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 384);
    v0 = new struct(12);
    assert(!((v0 + 384 < v0) | (v0 + 384 > uint64.max)));
    v0.word0 = varg0.word0;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    require(msg.data[4 + varg0 + 64] <= uint64.max);
    v1 = varg0.word2;
    v2 = 0;
    require(varg0.word2 + 31 < msg.data.length, v2, v2);
    assert(v1.length <= uint64.max);
    v3 = new address[](v1.length);
    assert(!((v3 + ((v1.length << 5) + 32) < v3) | (v3 + ((v1.length << 5) + 32) > uint64.max)));
    v4 = v5 = v3.data;
    v6 = v7 = v1.data;
    require(msg.data.length >= 32 + (varg0.word2 + (v1.length << 5)), v2, v2);
    while (v2 < v1.length) {
        require(msg.data[v6] == address(msg.data[v6]));
        MEM[v4] = msg.data[v6];
        v4 += 32;
        v6 += 32;
        v2 += 1;
    }
    v0.word2 = v3;
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    v0.word5 = varg0.word5;
    v0.word6 = varg0.word6;
    v0.word7 = varg0.word7;
    v0.word8 = varg0.word8;
    v0.word9 = varg0.word9;
    v0.word10 = varg0.word10;
    require(msg.data[4 + varg0 + 352] <= uint64.max);
    v8 = varg0.word11;
    require(varg0.word11 + 31 < msg.data.length);
    assert(v8.length <= uint64.max);
    v9 = new bytes[](v8.length);
    assert(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length)) < v9) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length)) > uint64.max)));
    require(varg0.word11 + v8.length + 32 <= msg.data.length);
    CALLDATACOPY(v9.data, v8.data, v8.length);
    v9[v8.length] = 0;
    v0.word11 = v9;
    require(msg.data.length - 36 >= uint8.max + 1);
    v10 = new struct(8);
    assert(!((v10 + (uint8.max + 1) < v10) | (v10 + (uint8.max + 1) > uint64.max)));
    v10.word0 = varg1;
    v10.word1 = varg2;
    v10.word2 = varg3;
    v10.word3 = varg4;
    v10.word4 = varg5;
    v10.word5 = varg6;
    v10.word6 = varg7;
    v10.word7 = varg8;
    assert(1 < v11.length);
    assert(0 < v12.length);
    v13 = v12.data;
    require(bool((address(v0.word1)).code.size));
    v14, /* uint112 */ v15, /* uint112 */ v16, /* uint32 */ v17 = address(v0.word1).getReserves().gas(msg.gas);
    require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    require(v15 == uint112(v15));
    require(v16 == uint112(v16));
    require(v17 == uint32(v17));
    v18 = v19 = uint112(v16);
    v18 = v20 = uint112(v15);
    if (address(v12[0x0]) >= address(v11[0x1])) {
    }
    assert(v0.word0 * 997 + v18 * 1000);
    v21 = v22 = v18 * v0.word0 * 997 / (v0.word0 * 997 + v18 * 1000);
    if (address(v12[0x0]) < address(v11[0x1])) {
        v21 = v23 = 0;
    } else {
        v21 = 0;
    }
    ___function_selector__ = 3000;
    v24 = new uint256[](msg.data.length);
    CALLDATACOPY(v24.data, 0, msg.data.length);
    MEM[v24 + msg.data.length + 32] = 0;
    require(bool((address(v0.word1)).code.size));
    v25 = address(v0.word1).swap(v21, v21, address(this), v24).gas(msg.gas);
    require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    if (0 != v0.word7) {
        assert(2 < v26.length);
        require(bool((address(v26[0x2])).code.size));
        v27, /* uint256 */ v28 = address(v26[0x2]).balanceOf(address(this)).gas(msg.gas);
        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v29 = new address[](2);
        CALLDATACOPY(v29.data, msg.data.length, 64);
        assert(2 < v30.length);
        assert(0 < v29.length);
        v31 = v29.data;
        assert(1 < v29.length);
        v29[1] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        v29[0] = address(v30[0x2]);
        assert(v29.length);
        v32 = v29.data;
        v33 = v34 = 0;
        while (v33 < 68) {
            MEM[v33 + MEM[64]] = MEM[v33 + (MEM[64] + 32)];
            v33 += 32;
        }
        if (v33 > 68) {
            MEM[68 + MEM[64]] = 0;
        }
        v35 = v36, /* uint256 */ v37, /* uint256 */ v38 = address(v29[0x0]).approve(address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d), v28).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v39 = v40 = 96;
        } else {
            v39 = v41 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v41.data, 0, RETURNDATASIZE());
        }
        if (v36) {
            v35 = v42 = !MEM[v39];
            if (MEM[v39]) {
                require(32 + v39 + MEM[v39] - (32 + v39) >= 32);
                v35 = MEM[32 + v39];
                require(v35 == bool(v35));
            }
        }
        require(v35, Error('TransferHelper: APPROVE_FAILED_me'));
        v43 = new address[](v29.length);
        v44 = v45 = 0;
        v46 = v47 = v43.data;
        v48 = v49 = v29.data;
        while (v44 < v29.length) {
            MEM[v46] = address(MEM[v48]);
            v46 += 32;
            v48 += 32;
            v44 += 1;
        }
        require(bool(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size));
        v50, /* uint256 */ v51 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(v28, 1, v43, address(this), block.timestamp, v52, address(v30[0x2])).gas(msg.gas);
        require(bool(v50), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(v51, 0, RETURNDATASIZE());
        MEM[64] = v51 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        v53 = v54 = 0;
        require(v51 + RETURNDATASIZE() - v51 >= 32, v54, v54);
        require(MEM[v51] <= uint64.max, v54, v54);
        require(v51 + RETURNDATASIZE() > v51 + MEM[v51] + 31, v54, v54);
        assert(MEM[v51 + MEM[v51]] <= uint64.max);
        v55 = new uint256[](MEM[v51 + MEM[v51]]);
        assert(!((v55 + ((MEM[v51 + MEM[v51]] << 5) + 32) < v55) | (v55 + ((MEM[v51 + MEM[v51]] << 5) + 32) > uint64.max)));
        v56 = v57 = v55.data;
        v58 = v59 = 32 + (v51 + MEM[v51]);
        require(v51 + RETURNDATASIZE() >= 32 + (v51 + MEM[v51] + (MEM[v51 + MEM[v51]] << 5)), v54, v54);
        while (v53 < MEM[v51 + MEM[v51]]) {
            MEM[v56] = MEM[v58];
            v53 += 1;
            v56 += 32;
            v58 += 32;
        }
        0xea2(v0.word9, v0.word8, 0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        // Unknown jump to Block 0x392db. Refer to 3-address code (TAC);
    } else {
        assert(2 < v60.length);
        0xea2(v0.word9, v0.word8, 0, v60[2]);
    }
}

function 0xeb983773(struct(12) varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public nonPayable { 
    require(msg.data.length - 4 >= 288);
    require(varg0 <= uint64.max);
    require(msg.data.length - (4 + varg0) >= 384);
    v0 = new struct(12);
    assert(!((v0 + 384 < v0) | (v0 + 384 > uint64.max)));
    v0.word0 = varg0.word0;
    require(varg0.word1 == address(varg0.word1));
    v0.word1 = varg0.word1;
    require(msg.data[4 + varg0 + 64] <= uint64.max);
    v1 = varg0.word2;
    v2 = 0;
    require(varg0.word2 + 31 < msg.data.length, v2, v2);
    assert(v1.length <= uint64.max);
    v3 = new address[](v1.length);
    assert(!((v3 + ((v1.length << 5) + 32) < v3) | (v3 + ((v1.length << 5) + 32) > uint64.max)));
    v4 = v5 = v3.data;
    v6 = v7 = v1.data;
    require(msg.data.length >= 32 + (varg0.word2 + (v1.length << 5)), v2, v2);
    while (v2 < v1.length) {
        require(msg.data[v6] == address(msg.data[v6]));
        MEM[v4] = msg.data[v6];
        v4 += 32;
        v6 += 32;
        v2 += 1;
    }
    v0.word2 = v3;
    v0.word3 = varg0.word3;
    v0.word4 = varg0.word4;
    v0.word5 = varg0.word5;
    v0.word6 = varg0.word6;
    v0.word7 = varg0.word7;
    v0.word8 = varg0.word8;
    v0.word9 = varg0.word9;
    v0.word10 = varg0.word10;
    require(msg.data[4 + varg0 + 352] <= uint64.max);
    v8 = varg0.word11;
    require(varg0.word11 + 31 < msg.data.length);
    assert(v8.length <= uint64.max);
    v9 = new bytes[](v8.length);
    assert(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length)) < v9) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length)) > uint64.max)));
    require(varg0.word11 + v8.length + 32 <= msg.data.length);
    CALLDATACOPY(v9.data, v8.data, v8.length);
    v9[v8.length] = 0;
    v0.word11 = v9;
    require(msg.data.length - 36 >= uint8.max + 1);
    v10 = new struct(8);
    assert(!((v10 + (uint8.max + 1) < v10) | (v10 + (uint8.max + 1) > uint64.max)));
    v10.word0 = varg1;
    v10.word1 = varg2;
    v10.word2 = varg3;
    v10.word3 = varg4;
    v10.word4 = varg5;
    v10.word5 = varg6;
    v10.word6 = varg7;
    v10.word7 = varg8;
    assert(1 < v11.length);
    assert(0 < v12.length);
    v13 = v12.data;
    v14 = v15 = address(v12[0x0]) < address(v11[0x1]);
    ___function_selector__ = 3001;
    if (v15) {
        v16 = v17 = 0x1000276a4;
    } else {
        v16 = v18 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
    }
    v19 = new uint256[](msg.data.length);
    CALLDATACOPY(v19.data, 0, msg.data.length);
    MEM[v19 + msg.data.length + 32] = 0;
    require(bool((address(v0.word1)).code.size));
    v20, /* uint256 */ v21, /* uint256 */ v22 = address(v0.word1).swap(address(this), bool(v15), v0.word0, address(v16), v19).gas(msg.gas);
    require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
    if (v0.word7) {
        assert(2 < v23.length);
        require(bool((address(v23[0x2])).code.size));
        v24, /* uint256 */ v25 = address(v23[0x2]).balanceOf(address(this)).gas(msg.gas);
        require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v26 = new address[](2);
        CALLDATACOPY(v26.data, msg.data.length, 64);
        assert(2 < v27.length);
        assert(0 < v26.length);
        v28 = v26.data;
        assert(1 < v26.length);
        v26[1] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        v26[0] = address(v27[0x2]);
        assert(v26.length);
        v29 = v26.data;
        v30 = v31 = 0;
        while (v30 < 68) {
            MEM[v30 + MEM[64]] = MEM[v30 + (MEM[64] + 32)];
            v30 += 32;
        }
        if (v30 > 68) {
            MEM[68 + MEM[64]] = 0;
        }
        v32 = v33, /* uint256 */ v34, /* uint256 */ v35 = address(v26[0x0]).approve(address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d), v25).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v36 = v37 = 96;
        } else {
            v36 = v38 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v38.data, 0, RETURNDATASIZE());
        }
        if (v33) {
            v32 = v39 = !MEM[v36];
            if (MEM[v36]) {
                require(32 + v36 + MEM[v36] - (32 + v36) >= 32);
                v32 = MEM[32 + v36];
                require(v32 == bool(v32));
            }
        }
        require(v32, Error('TransferHelper: APPROVE_FAILED_me'));
        v40 = new address[](v26.length);
        v41 = v42 = 0;
        v43 = v44 = v40.data;
        v45 = v46 = v26.data;
        while (v41 < v26.length) {
            MEM[v43] = address(MEM[v45]);
            v43 += 32;
            v45 += 32;
            v41 += 1;
        }
        require(bool(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size));
        v47, /* uint256 */ v48 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForTokens(v25, 1, v40, address(this), block.timestamp, v49, address(v27[0x2])).gas(msg.gas);
        require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        RETURNDATACOPY(v48, 0, RETURNDATASIZE());
        MEM[64] = v48 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        v50 = v51 = 0;
        require(v48 + RETURNDATASIZE() - v48 >= 32, v51, v51);
        require(MEM[v48] <= uint64.max, v51, v51);
        require(v48 + RETURNDATASIZE() > v48 + MEM[v48] + 31, v51, v51);
        assert(MEM[v48 + MEM[v48]] <= uint64.max);
        v52 = new uint256[](MEM[v48 + MEM[v48]]);
        assert(!((v52 + ((MEM[v48 + MEM[v48]] << 5) + 32) < v52) | (v52 + ((MEM[v48 + MEM[v48]] << 5) + 32) > uint64.max)));
        v53 = v54 = v52.data;
        v55 = v56 = 32 + (v48 + MEM[v48]);
        require(v48 + RETURNDATASIZE() >= 32 + (v48 + MEM[v48] + (MEM[v48 + MEM[v48]] << 5)), v51, v51);
        while (v50 < MEM[v48 + MEM[v48]]) {
            MEM[v53] = MEM[v55];
            v50 += 1;
            v53 += 32;
            v55 += 32;
        }
        0xea2(v0.word9, v0.word8, 0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
        // Unknown jump to Block 0x392fc. Refer to 3-address code (TAC);
    } else {
        v14 = v57 = 2143;
        assert(2 < v58.length);
        v14 = v59 = v58[2];
        v14 = v60 = 0;
        v61 = v62 = v0.word8;
        v63 = v64 = v0.word9;
        require(bool((address(v59)).code.size));
        v65, /* uint256 */ v63 = address(v59).balanceOf(address(this)).gas(msg.gas);
        require(bool(v65), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v63 = v66 = block.coinbase;
        if (!v66) {
            0x1335(v63, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, v59);
        } else if (msg.value) {
            v67 = v68 = 0;
            while (v67 < 0) {
                MEM[v67 + (MEM[64] + 32)] = MEM[v67 + (MEM[64] + 32)];
                v67 += 32;
            }
            if (v67 > 0) {
            }
            v69, /* uint256 */ v70 = address(v66).call(0).value(msg.value).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v71 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v71.data, 0, RETURNDATASIZE());
            }
            0x1335(v63, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, v59);
        } else {
            if (!v62) {
                v61 = v72 = 10;
            }
            v61 = v61 * (v63 - v60) / 100;
            if (address(v59) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
                v61 = v73 = new struct(3);
                v73.word0 = 2;
                CALLDATACOPY(v73.data, msg.data.length, 64);
                assert(0 < v73.word0.length);
                v74 = v73.data;
                assert(1 < v73.word0.length);
                v73.word2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
                v73.word1 = address(v59);
                0x124f(v61, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, v59);
                v75 = new address[](v73.word0.length);
                v76 = v77 = 0;
                v78 = v79 = v75.data;
                v80 = v81 = v73.data;
                while (v76 < v73.word0.length) {
                    MEM[v78] = address(MEM[v80]);
                    v78 += 32;
                    v80 += 32;
                    v76 += 1;
                }
                require(bool(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size));
                v82, /* uint256 */ v83 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETH(v61, 100, v75, address(v66), uint256.max, v49, address(v59)).gas(msg.gas);
                if (v82) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                    v84 = v85 = 0;
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32, v85, v85);
                    require(MEM[MEM[64]] <= uint64.max, v85, v85);
                    require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31, v85, v85);
                    assert(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max);
                    v86 = new uint256[](MEM[MEM[64] + MEM[MEM[64]]]);
                    assert(!((v86 + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 32) < v86) | (v86 + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 32) > uint64.max)));
                    v87 = v88 = v86.data;
                    v89 = v90 = 32 + (MEM[64] + MEM[MEM[64]]);
                    require(MEM[64] + RETURNDATASIZE() >= 32 + (MEM[64] + MEM[MEM[64]] + (MEM[MEM[64] + MEM[MEM[64]]] << 5)), v85, v85);
                    while (v84 < MEM[MEM[64] + MEM[MEM[64]]]) {
                        MEM[v87] = MEM[v89];
                        v84 += 1;
                        v87 += 32;
                        v89 += 32;
                    }
                    v82 = v91 = 1;
                }
                if (!v82) {
                }
            } else {
                require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
                v92 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v61).gas(msg.gas);
                require(bool(v92), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
                v93 = v94 = 0;
                while (v93 < 0) {
                    MEM[v93 + (MEM[64] + 32)] = MEM[v93 + (MEM[64] + 32)];
                    v93 += 32;
                }
                if (v93 > 0) {
                }
                v95, /* uint256 */ v96 = address(v66).call(0).value(v61).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    v97 = new bytes[](RETURNDATASIZE());
                    RETURNDATACOPY(v97.data, 0, RETURNDATASIZE());
                }
            }
            0x1335(v63 - v61, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, v14);
            // Unknown jump to Block 0x85fB0x24d. Refer to 3-address code (TAC);
        }
    }
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    if (amount0Delta < 0) {
        v0 = v1 = 0 - amount0Delta;
    } else {
        v0 = 0 - amount1Delta;
    }
    require(4 <= data.length);
    require(data.length <= data.length);
    v2 = new bytes[](data.length - 4);
    CALLDATACOPY(v2.data, 4 + data.data, data.length - 4);
    v2[data.length - 4] = 0;
    0xbfb(v0, v2);
}

function 0xf2729144(address[] varg0, address varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    v0 = 0;
    require(4 + varg0 + 31 < msg.data.length, v0, v0);
    assert(varg0.length <= uint64.max);
    v1 = new address[](varg0.length);
    assert(!((v1 + ((varg0.length << 5) + 32) < v1) | (v1 + ((varg0.length << 5) + 32) > uint64.max)));
    v2 = v3 = v1.data;
    v4 = v5 = varg0.data;
    require(msg.data.length >= 32 + (4 + varg0 + (varg0.length << 5)), v0, v0);
    while (v0 < varg0.length) {
        require(msg.data[v4] == address(msg.data[v4]));
        MEM[v2] = msg.data[v4];
        v2 += 32;
        v4 += 32;
        v0 += 1;
    }
    require(0x96451702bfe9ec3c5718402c99e69ed5776c4b37 == msg.sender, Error(24929));
    v6 = v7 = 0;
    while (v6 < v1.length) {
        assert(v6 < v1.length);
        require(bool((address(v1[v6])).code.size));
        v8, /* uint256 */ v9 = address(v1[v6]).balanceOf(address(this)).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        if (v9) {
            assert(v6 < v1.length);
            v10 = v11 = 0;
            while (v10 < 68) {
                MEM[v10 + MEM[64]] = MEM[v10 + (MEM[64] + 32)];
                v10 += 32;
            }
            if (v10 > 68) {
                MEM[68 + MEM[64]] = 0;
            }
            v12 = v13, /* uint256 */ v14, /* uint256 */ v15 = address(v1[v6]).transfer(varg1, v9).gas(msg.gas);
            if (RETURNDATASIZE() == 0) {
                v16 = v17 = 96;
            } else {
                v16 = v18 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v18.data, 0, RETURNDATASIZE());
            }
            if (v13) {
                v12 = v19 = !MEM[v16];
                if (MEM[v16]) {
                    require(32 + v16 + MEM[v16] - (32 + v16) >= 32);
                    v12 = MEM[32 + v16];
                    require(v12 == bool(v12));
                }
            }
            require(v12, Error('TransferHelper: TRANSFER_FAILED_v2'));
        }
        v6 += 1;
    }
    if (this.balance) {
        v20 = v21 = 0;
        while (v20 < 0) {
            MEM[v20 + MEM[64]] = MEM[v20 + (MEM[64] + 32)];
            v20 += 32;
        }
        if (v20 > 0) {
            MEM[MEM[64]] = 0;
        }
        v22, /* uint256 */ v23 = varg1.call().value(this.balance).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v24 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v24.data, 0, RETURNDATASIZE());
        }
        require(v22, Error('TransferHelper: ETH_TRANSFER_FAILED'));
    }
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    if (!amount0) {
    }
    require(4 <= data.length);
    require(data.length <= data.length);
    v0 = new bytes[](data.length - 4);
    CALLDATACOPY(v0.data, 4 + data.data, data.length - 4);
    v0[data.length - 4] = 0;
    0xbfb(v1, v0);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    if (amount0Delta < 0) {
        v0 = v1 = 0 - amount0Delta;
    } else {
        v0 = 0 - amount1Delta;
    }
    require(4 <= data.length);
    require(data.length <= data.length);
    v2 = new bytes[](data.length - 4);
    CALLDATACOPY(v2.data, 4 + data.data, data.length - 4);
    v2[data.length - 4] = 0;
    0xbfb(v0, v2);
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    if (!_amount0) {
    }
    require(4 <= _data.length);
    require(_data.length <= _data.length);
    v0 = new bytes[](_data.length - 4);
    CALLDATACOPY(v0.data, 4 + _data.data, _data.length - 4);
    v0[_data.length - 4] = 0;
    0xbfb(v1, v0);
}

function receive() public payable { 
}

function 0xbfb(uint256 varg0, bytes varg1) private { 
    require(varg1.data + varg1.length - varg1.data >= 288);
    require(MEM[varg1.data] <= uint64.max);
    v0 = varg1.data + MEM[varg1.data];
    require(varg1.data + varg1.length - v0 >= 384);
    v1 = new struct(12);
    assert(!((v1 + 384 < v1) | (v1 + 384 > uint64.max)));
    v1.word0 = varg1[MEM[varg1.data]];
    require(MEM[v0 + 32] == address(MEM[v0 + 32]));
    v1.word1 = MEM[v0 + 32];
    require(MEM[v0 + 64] <= uint64.max);
    v2 = 0x14ab(v0 + MEM[v0 + 64], varg1.data + varg1.length);
    v1.word2 = v2;
    v1.word3 = MEM[v0 + 96];
    v1.word4 = MEM[v0 + 128];
    v1.word5 = MEM[v0 + 160];
    v1.word6 = MEM[v0 + 192];
    v1.word7 = MEM[v0 + 224];
    v1.word8 = MEM[v0 + (uint8.max + 1)];
    v1.word9 = MEM[v0 + 288];
    v1.word10 = MEM[v0 + 320];
    require(MEM[v0 + 352] <= uint64.max);
    v3 = 0x15a0(v0 + MEM[v0 + 352], varg1.data + varg1.length);
    v1.word11 = v3;
    require(varg1.data + varg1.length - (varg1.data + 32) >= uint8.max + 1);
    v4 = new struct(8);
    assert(!((v4 + (uint8.max + 1) < v4) | (v4 + (uint8.max + 1) > uint64.max)));
    v4.word0 = varg1[32][32];
    v4.word1 = MEM[varg1.data + 32 + 32];
    v4.word2 = MEM[varg1.data + 32 + 64];
    v4.word3 = MEM[varg1.data + 32 + 96];
    v4.word4 = MEM[varg1.data + 32 + 128];
    v4.word5 = MEM[varg1.data + 32 + 160];
    v4.word6 = MEM[varg1.data + 32 + 192];
    v4.word7 = MEM[varg1.data + 32 + 224];
    assert(1 < v5.length);
    v6 = v7 = 0;
    while (v6 < 68) {
        MEM[v6 + MEM[64]] = MEM[v6 + (MEM[64] + 32)];
        v6 += 32;
    }
    if (v6 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v8 = v9, /* uint256 */ v10, /* uint256 */ v11 = address(v5[0x1]).approve(address(0x111111125421ca6dc452d289314280a0f8842a65), varg0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v12 = v13 = 96;
    } else {
        v12 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());
    }
    if (v9) {
        v8 = v14 = !MEM[v12];
        if (MEM[v12]) {
            require(32 + v12 + MEM[v12] - (32 + v12) >= 32);
            v8 = MEM[32 + v12];
            require(v8 == bool(v8));
        }
    }
    require(v8, Error('TransferHelper: APPROVE_FAILED_me'));
    v15 = new bytes[](v16.length);
    v17 = v18 = 0;
    while (v17 < v16.length) {
        v15[v17] = v16[v17];
        v17 += 32;
    }
    if (v17 > v16.length) {
        v15[v16.length] = 0;
    }
    require(bool(0x111111125421ca6dc452d289314280a0f8842a65.code.size));
    v19, /* uint256 */ v20, /* uint256 */ v21, /* uint256 */ v22 = 0x111111125421ca6dc452d289314280a0f8842a65.fillOrderArgs(v4.word0, v4.word1, v4.word2, v4.word3, v4.word4, v4.word5, v4.word6, v4.word7, v1.word3, v1.word4, varg0, v1.word10, v15).gas(msg.gas);
    require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
    assert(2 < v23.length);
    require(bool((address(v23[0x2])).code.size));
    v24, /* uint256 */ v25 = address(v23[0x2]).balanceOf(address(this)).gas(msg.gas);
    require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    require(v25 > v1.word0, Error(28774));
    assert(2 < v26.length);
    v27 = v28 = 0;
    while (v27 < 68) {
        MEM[v27 + MEM[64]] = MEM[v27 + (MEM[64] + 32)];
        v27 += 32;
    }
    if (v27 > 68) {
        MEM[68 + MEM[64]] = 0;
    }
    v29 = v30, /* uint256 */ v31, /* uint256 */ v32 = address(v26[0x2]).transfer(msg.sender, v1.word0).gas(msg.gas);
    if (RETURNDATASIZE() == 0) {
        v33 = v34 = 96;
    } else {
        v33 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());
    }
    if (v30) {
        v29 = v35 = !MEM[v33];
        if (MEM[v33]) {
            require(32 + v33 + MEM[v33] - (32 + v33) >= 32);
            v29 = MEM[32 + v33];
            require(v29 == bool(v29));
        }
    }
    require(v29, Error('TransferHelper: TRANSFER_FAILED_v2'));
    return ;
}

function 0xea2(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(bool((address(varg3)).code.size));
    v0, /* uint256 */ varg0 = address(varg3).balanceOf(address(this)).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    varg0 = v1 = block.coinbase;
    if (!v1) {
        0x1335(varg0, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, varg3);
        return ;
    } else if (msg.value) {
        v2 = v3 = 0;
        while (v2 < 0) {
            MEM[v2 + (MEM[64] + 32)] = MEM[v2 + (MEM[64] + 32)];
            v2 += 32;
        }
        if (v2 > 0) {
        }
        v4, /* uint256 */ v5 = address(v1).call(0).value(msg.value).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v6 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v6.data, 0, RETURNDATASIZE());
        }
        0x1335(varg0, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, varg3);
        return ;
    } else {
        if (!varg1) {
            varg1 = v7 = 10;
        }
        varg1 = v8 = varg1 * (varg0 - varg2) / 100;
        if (address(varg3) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {
            varg1 = v9 = new struct(3);
            v9.word0 = 2;
            CALLDATACOPY(v9.data, msg.data.length, 64);
            assert(0 < v9.word0.length);
            v10 = v9.data;
            assert(1 < v9.word0.length);
            v9.word2 = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
            v9.word1 = address(varg3);
            0x124f(v8, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, varg3);
            v11 = new address[](v9.word0.length);
            v12 = v13 = 0;
            v14 = v15 = v11.data;
            v16 = v17 = v9.data;
            while (v12 < v9.word0.length) {
                MEM[v14] = address(MEM[v16]);
                v14 += 32;
                v16 += 32;
                v12 += 1;
            }
            require(bool(0x7a250d5630b4cf539739df2c5dacb4c659f2488d.code.size));
            v18, /* uint256 */ v19 = 0x7a250d5630b4cf539739df2c5dacb4c659f2488d.swapExactTokensForETH(v8, 100, v11, address(v1), uint256.max, v20, address(varg3)).gas(msg.gas);
            if (v18) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                v21 = v22 = 0;
                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32, v22, v22);
                require(MEM[MEM[64]] <= uint64.max, v22, v22);
                require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31, v22, v22);
                assert(MEM[MEM[64] + MEM[MEM[64]]] <= uint64.max);
                v23 = new uint256[](MEM[MEM[64] + MEM[MEM[64]]]);
                assert(!((v23 + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 32) < v23) | (v23 + ((MEM[MEM[64] + MEM[MEM[64]]] << 5) + 32) > uint64.max)));
                v24 = v25 = v23.data;
                v26 = v27 = 32 + (MEM[64] + MEM[MEM[64]]);
                require(MEM[64] + RETURNDATASIZE() >= 32 + (MEM[64] + MEM[MEM[64]] + (MEM[MEM[64] + MEM[MEM[64]]] << 5)), v22, v22);
                while (v21 < MEM[MEM[64] + MEM[MEM[64]]]) {
                    MEM[v24] = MEM[v26];
                    v21 += 1;
                    v24 += 32;
                    v26 += 32;
                }
                v18 = v28 = 1;
            }
            if (!v18) {
            }
        } else {
            require(bool(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size));
            v29 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v8).gas(msg.gas);
            require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
            v30 = v31 = 0;
            while (v30 < 0) {
                MEM[v30 + (MEM[64] + 32)] = MEM[v30 + (MEM[64] + 32)];
                v30 += 32;
            }
            if (v30 > 0) {
            }
            v32, /* uint256 */ v33 = address(v1).call(0).value(v8).gas(msg.gas);
            if (RETURNDATASIZE() != 0) {
                v34 = new bytes[](RETURNDATASIZE());
                RETURNDATACOPY(v34.data, 0, RETURNDATASIZE());
            }
        }
        0x1335(varg0 - varg1, 0x96451702bfe9ec3c5718402c99e69ed5776c4b37, v35);
        return ;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, address varg1, uint256 varg2, uint256 varg3, uint256 varg4) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0xb087db7a > function_selector >> 224) {
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x51967e5d == function_selector >> 224) {
            0x51967e5d();
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        }
    } else if (0xb087db7a == function_selector >> 224) {
        0xb087db7a();
    } else if (0xeb983773 == function_selector >> 224) {
        0xeb983773();
    } else if (0xf2729144 == function_selector >> 224) {
        0xf2729144();
    } else if (0xfa461e33 == function_selector >> 224) {
        uniswapV3SwapCallback(int256,int256,bytes);
    }
    require(!msg.value);
    if (3000 != ___function_selector__) {
        require(4 <= msg.data.length);
        require(msg.data.length <= msg.data.length);
        require(4 + (msg.data.length - 4) - 4 >= 96);
        require(varg3 <= uint64.max);
        require(4 + varg3 + 31 < 4 + (msg.data.length - 4));
        assert(varg3.length <= uint64.max);
        v0 = new bytes[](varg3.length);
        assert(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length)) < v0) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg3.length)) > uint64.max)));
        require(4 + varg3 + varg3.length + 32 <= 4 + (msg.data.length - 4));
        CALLDATACOPY(v0.data, varg3.data, varg3.length);
        v0[varg3.length] = 0;
        v1 = new bytes[](v0.length);
        v2 = v3 = 0;
        while (v2 < v0.length) {
            v1[v2] = v0[v2];
            v2 += 32;
        }
        if (v2 > v0.length) {
            v1[v0.length] = 0;
        }
        require(bool(this.code.size));
        v4 = this.uniswapV3SwapCallback(varg1, varg2, v1).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    } else {
        require(4 <= msg.data.length);
        require(msg.data.length <= msg.data.length);
        require(4 + (msg.data.length - 4) - 4 >= 128);
        require(varg4 <= uint64.max);
        require(4 + varg4 + 31 < 4 + (msg.data.length - 4));
        assert(varg4.length <= uint64.max);
        v5 = new bytes[](varg4.length);
        assert(!((v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length)) < v5) | (v5 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg4.length)) > uint64.max)));
        require(4 + varg4 + varg4.length + 32 <= 4 + (msg.data.length - 4));
        CALLDATACOPY(v5.data, varg4.data, varg4.length);
        v5[varg4.length] = 0;
        v6 = new bytes[](v5.length);
        v7 = v8 = 0;
        while (v7 < v5.length) {
            v6[v7] = v5[v7];
            v7 += 32;
        }
        if (v7 > v5.length) {
            v6[v5.length] = 0;
        }
        require(bool(this.code.size));
        v9 = this.uniswapV2Call(address(0x0), varg2, varg3, v6).gas(msg.gas);
        require(bool(v9), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    }
    return MEM[128:128 + MEM[96]];
}
