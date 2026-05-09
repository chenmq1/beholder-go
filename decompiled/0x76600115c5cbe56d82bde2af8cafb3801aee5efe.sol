// Decompiled by library.dedaub.com
// 2025.12.09 02:54 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _isOwner; // STORAGE[0x0]
mapping (address => uint256) _swapCallback; // STORAGE[0x1]
address stor_3_0_19; // STORAGE[0x3] bytes 0 to 19



function 0x13e2(uint256 varg0, uint256 varg1, address varg2) private { 
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(bool(varg2.code.size));
    v0 = varg2.deposit().value(varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    0x21e1(varg1, varg0, varg2);
    return ;
}

function 0x01ff9549(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _swapCallback[varg0];
}

function 0x122e350f(address varg0, uint256 varg1, address varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(bool(varg0.code.size));
    v0 = varg0.withdraw(varg1).gas(msg.gas);
    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    MCOPY(MEM[64] + 32, MEM[64] + 32, 0);
    MEM[MEM[64] + 32] = 0;
    v1, /* uint256 */ v2 = varg2.call(MEM[MEM[64]:MEM[64] + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(varg1).gas(msg.gas);
    if (RETURNDATASIZE() != 0) {
        v3 = new bytes[](RETURNDATASIZE());
        RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
    }
    require(v1);
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(msg.data.length > 4 + data + 31);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v1 = amount1Delta > 0;
    }
    require(v1, Error(0x545a4f));
    require(36 + data + msg.data[4 + data] - (36 + data) >= 32);
    require(data.word1 <= uint64.max);
    require(36 + data + msg.data[4 + data] - (36 + data + data.word1) >= 128);
    v3 = new struct(4);
    require(!((v3 + 128 < v3) | (v3 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[36 + data + data.word1] == address(msg.data[36 + data + data.word1]));
    v3.word0 = msg.data[36 + data + data.word1];
    require(msg.data[36 + data + data.word1 + 32] == address(msg.data[36 + data + data.word1 + 32]));
    v3.word1 = msg.data[36 + data + data.word1 + 32];
    v3.word2 = msg.data[64 + (36 + data + data.word1)];
    require(msg.data[36 + data + data.word1 + 96] <= uint64.max);
    require(36 + data + data.word1 + msg.data[36 + data + data.word1 + 96] + 31 < 36 + data + msg.data[4 + data]);
    v4 = msg.data[36 + data + data.word1 + msg.data[36 + data + data.word1 + 96]];
    require(v4 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new bytes[](v4);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (v4 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(36 + data + data.word1 + msg.data[36 + data + data.word1 + 96] + v4 + 32 <= 36 + data + msg.data[4 + data]);
    CALLDATACOPY(v5.data, 36 + data + data.word1 + msg.data[36 + data + data.word1 + 96] + 32, v4);
    v5[v4] = 0;
    v3.word3 = v5;
    v6 = v3.word3;
    v7, v8 = v9, v8 = v10 = 0x226e(v3.word3);
    v11 = v12 = v3.word2 == _swapCallback[address(v3.word1)];
    if (v12) {
        v11 = bool(v3.word2);
    }
    require(v11, Error('Not The RightDeployer'));
    if (0) {
        MEM[MEM[64] + 32] = address(v8);
        MEM[64 + MEM[64]] = address(v8);
        v13 = v14 = MEM[64];
        MEM[v14] = 64;
    } else {
        MEM[MEM[64] + 32] = address(v8);
        MEM[MEM[64] + 64] = address(v8);
        MEM[MEM[64] + 96] = uint24(v7);
        v13 = v15 = MEM[64];
        MEM[v15] = 96;
    }
    MEM[32 + MEM[64]] = 0xff00000000000000000000000000000000000000000000000000000000000000;
    require(msg.sender == address(keccak256(0x55, bytes20(v3.word1 << 96), keccak256(MEM[v2404_0x0V0x16c1V0x4e2V0x1f3 + 32:v2404_0x0V0x16c1V0x4e2V0x1f3 + 32 + MEM[v2404_0x0V0x16c1V0x4e2V0x1f3]]), v3.word2)), Error('sender is not poolAddress'));
    if (amount0Delta > 0) {
        v16 = v17 = address(v10) < address(v9);
    } else {
        v16 = address(v9) < address(v10);
    }
    if (!v16) {
        0x21e1(v18, msg.sender, address(v9));
    } else {
        0x21e1(v18, msg.sender, address(v10));
    }
}

function 0x28b3599c(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_isOwner[msg.sender], Error('Not owner!'));
    _swapCallback[varg0] = varg1;
}

function isOwner(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _isOwner[account];
}

function 0x21e1(uint256 varg0, address varg1, uint256 varg2) private { 
    v0 = varg2.transfer(varg1, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (!RETURNDATASIZE()) {
        v1 = v2 = !(address(varg2)).code.size;
    } else {
        v1 = 1 != MEM[0];
    }
    require(!v1, SafeERC20FailedOperation(address(varg2)));
    return ;
}

function 0x226e(bytes varg0) private { 
    v0 = _SafeAdd(20, 0);
    require(v0 >= 0, Error('toAddress_overflow'));
    v1 = _SafeAdd(20, 0);
    require(varg0.length >= v1, Error('toAddress_outOfBounds'));
    v2 = _SafeAdd(3, 20);
    require(v2 >= 20, Error('toUint24_overflow'));
    v3 = _SafeAdd(3, 20);
    require(varg0.length >= v3, Error('toUint24_outOfBounds'));
    v4 = _SafeAdd(20, 3);
    v5 = _SafeAdd(20, v4);
    require(v5 >= v4, Error('toAddress_overflow'));
    v6 = _SafeAdd(20, v4);
    require(varg0.length >= v6, Error('toAddress_outOfBounds'));
    return MEM[23 + varg0], varg0[v4] >> 96, varg0[0] >> 96;
}

function 0x250c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = _SafeSub(10000, varg0);
    v1 = _SafeMul(varg4, v0);
    v2 = _SafeDiv(v1, 10000);
    v3 = _SafeSub(10000, varg1);
    v4 = _SafeMul(v2, v3);
    v5 = _SafeDiv(v4, 10000);
    v6 = _SafeAdd(varg3, v5);
    v7 = _SafeMul(v5, varg2);
    v8 = _SafeDiv(v7, v6);
    return v8;
}

function 0x40f8317c(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    v0 = 0x293d(4 + varg0, msg.data.length);
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(v0 + 512 - (v0 + 480) >= 32);
    require(msg.data[v0 + 480] == address(msg.data[v0 + 480]));
    if (address(msg.data[v0 + 480]) != 0) {
        require(v0 + 512 - (v0 + 480) >= 32);
        require(msg.data[v0 + 480] == address(msg.data[v0 + 480]));
        MCOPY(MEM[64] + 32, MEM[64] + 32, 0);
        MEM[MEM[64] + 32] = 0;
        v1, /* uint256 */ v2 = address(msg.data[v0 + 480]).call(MEM[MEM[64]:MEM[64] + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(msg.data[v0 + 448]).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v3 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v3.data, 0, RETURNDATASIZE());
        }
        require(v1, Error(0x46545345));
    }
    require(v0 + 128 - (v0 + 96) >= 32);
    require(msg.data[v0 + 96] == bool(msg.data[v0 + 96]));
    if (msg.data[v0 + 96]) {
        require(v0 + 192 - (v0 + 160) >= 32);
        require(msg.data[v0 + 160] == address(msg.data[v0 + 160]));
        0x13e2(this, msg.data[384 + v0], msg.data[v0 + 160]);
    }
    require(v0 + 64 - (v0 + 32) >= 32);
    require(msg.data[v0 + 32] == bool(msg.data[v0 + 32]));
    if (!msg.data[v0 + 32]) {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v4, /* address */ v5 = stor_3_0_19.staticcall(bytes4(0xa7c6ecb400000000000000000000000000000000000000000000000000000000), address(msg.data[v0])).gas(msg.gas);
        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v5 == address(v5));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (!msg.data[v0 + 64]) {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v5) <= address(msg.data[v0 + 352]), Error(0x494f41));
        } else {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v5) >= address(msg.data[v0 + 352]), Error(0x494f41));
        }
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v6 = v7 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v6 = msg.data[v0 + 224];
            require(v6 == address(v6));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v8, /* uint256 */ v9 = address(msg.data[v0 + 192]).balanceOf(address(v6)).gas(msg.gas);
        require(bool(v8), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v10 = v11 = 0x1000276a4;
        } else {
            v10 = v12 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        require(msg.data[v0 + 512] < msg.data.length - v0 - 31);
        require(msg.data[v0 + msg.data[v0 + 512]] <= uint64.max);
        require(32 + (v0 + msg.data[v0 + 512]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 512]]);
        v13 = new uint256[](msg.data[v0 + msg.data[v0 + 512]]);
        CALLDATACOPY(v13.data, 32 + (v0 + msg.data[v0 + 512]), msg.data[v0 + msg.data[v0 + 512]]);
        MEM[192 + (msg.data[v0 + msg.data[v0 + 512]] + (4 + MEM[64]))] = 0;
        v14, /* uint256 */ v15, /* uint256 */ v16 = address(msg.data[v0]).swap(address(v6), bool(msg.data[v0 + 64]), msg.data[v0 + 384], address(v10), v13).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v17, /* uint256 */ v18 = address(msg.data[v0 + 192]).balanceOf(address(v6)).gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v19 = _SafeSub(v18, v9);
        require(v19 >= msg.data[416 + v0], Error(0x42494f41));
    } else {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v20, /* uint112 */ v21, /* uint112 */ v22, /* uint32 */ v23 = address(msg.data[v0]).getReserves().gas(msg.gas);
        require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v21 == uint112(v21));
        require(v22 == uint112(v22));
        require(v23 == uint32(v23));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v24 = v25 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v22), uint112(v21), msg.data[384 + v0]);
        } else {
            v24 = v26 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v21), uint112(v22), msg.data[384 + v0]);
        }
        v27 = _SafeSub(10000, msg.data[v0 + 320]);
        v28 = _SafeMul(v24, v27);
        v29 = _SafeDiv(v28, 10000);
        require(v29 >= msg.data[v0 + 416], Error(0x494f41));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 192 - (v0 + 160) >= 32);
        require(msg.data[v0 + 160] == address(msg.data[v0 + 160]));
        0x21e1(msg.data[v0 + 384], msg.data[v0], address(msg.data[v0 + 160]));
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v30 = v31 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v30 = msg.data[v0 + 224];
            require(v30 == address(v30));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v32, /* uint256 */ v33 = address(msg.data[v0 + 192]).balanceOf(address(v30)).gas(msg.gas);
        require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v34 = new uint256[](0);
            MCOPY(v34.data, MEM[64] + 32, 0);
            MEM[v34.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v35 = address(msg.data[v0]).swap(0, v24, address(v30), v34).gas(msg.gas);
            require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        } else {
            v36 = new uint256[](0);
            MCOPY(v36.data, MEM[64] + 32, 0);
            MEM[v36.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v37 = address(msg.data[v0]).swap(v24, 0, address(v30), v36).gas(msg.gas);
            require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v38, /* uint256 */ v39 = address(msg.data[v0 + 192]).balanceOf(address(v30)).gas(msg.gas);
        require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v19 = v40 = _SafeSub(v39, v33);
        require(v40 >= msg.data[416 + v0], Error(0x42494f41));
    }
    require(v0 + 160 - (v0 + 128) >= 32);
    require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
    if (msg.data[v0 + 128]) {
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
        require(msg.data[v0 + 224] == address(msg.data[v0 + 224]));
        require(_isOwner[msg.sender], Error('Not owner!'));
        require(bool((address(msg.data[v0 + 192])).code.size));
        v41 = address(msg.data[v0 + 192]).withdraw(v19).gas(msg.gas);
        require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        MCOPY(MEM[64] + 32, MEM[64] + 32, 0);
        v42, /* uint256 */ v43 = address(msg.data[v0 + 224]).call(0).value(v19).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v44 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v44.data, 0, RETURNDATASIZE());
        }
        require(v42);
    }
}

function addOwners(address[] _owners) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_owners <= uint64.max);
    require(4 + _owners + 31 < msg.data.length);
    require(_owners.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new address[](_owners.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_owners.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (_owners.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(4 + _owners + (_owners.length << 5) + 32 <= msg.data.length);
    v3 = v4 = _owners.data;
    while (v3 < 4 + _owners + (_owners.length << 5) + 32) {
        require(msg.data[v3] == address(msg.data[v3]));
        MEM[v1] = msg.data[v3];
        v1 += 32;
        v3 += 32;
    }
    require(_isOwner[msg.sender], Error('Not owner!'));
    v5 = v6 = 0;
    while (1) {
        if (v5 >= v0.length) {
            exit;
        } else {
            require(v5 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            _isOwner[address(v0[v5])] = 1;
            v5 += 1;
        }
    }
}

function addOwner(address owner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_isOwner[msg.sender], Error('Not owner!'));
    _isOwner[owner] = 1;
}

function 0x293d(uint256 varg0, uint256 varg1) private { 
    require(varg1 - varg0 >= 544);
    return varg0;
}

function 0x79e08164(uint256 varg0, address varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);
    require(_isOwner[msg.sender], Error('Not owner!'));
    v0 = v1 = 0;
    while (1) {
        if (v0 >= varg0.length) {
            exit;
        } else {
            require(v0 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require((v0 << 5) + varg0.data + 32 - ((v0 << 5) + varg0.data) >= 32);
            require(varg0[v0] == address(varg0[v0]));
            if (address(varg0[v0])) {
                v2 = address(varg0[v0]).balanceOf(this).gas(msg.gas);
                if (bool(v2)) {
                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                    0x21e1(MEM[MEM[64]], varg1, address(varg0[v0]));
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            } else {
                v3 = this.balance;
                MCOPY(MEM[64] + 32, MEM[64] + 32, 0);
                MEM[MEM[64] + 32] = 0;
                v4 = varg1.call(MEM[MEM[64]:MEM[64] + MEM[64] + 32 - MEM[64]], MEM[MEM[64]:MEM[64]]).value(v3).gas(msg.gas);
                if (RETURNDATASIZE() != 0) {
                    MEM[MEM[64]] = RETURNDATASIZE();
                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());
                }
                require(v4, Error(0x46545345));
            }
            v0 += 1;
        }
    }
}

function 0x7d77a478(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    v0 = 0x293d(4 + varg0, msg.data.length);
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(v0 + 224 - (v0 + 192) >= 32);
    require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
    require(v0 + 64 - (v0 + 32) >= 32);
    require(msg.data[v0 + 32] == bool(msg.data[v0 + 32]));
    if (!msg.data[v0 + 32]) {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v1, /* address */ v2 = stor_3_0_19.staticcall(bytes4(0xa7c6ecb400000000000000000000000000000000000000000000000000000000), address(msg.data[v0])).gas(msg.gas);
        require(bool(v1), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v2 == address(v2));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (!msg.data[v0 + 64]) {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v2) <= address(msg.data[v0 + 352]), Error(0x494f41));
        } else {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v2) >= address(msg.data[v0 + 352]), Error(0x494f41));
        }
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v3 = v4 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v3 = msg.data[v0 + 224];
            require(v3 == address(v3));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v5, /* uint256 */ v6 = address(msg.data[v0 + 192]).balanceOf(address(v3)).gas(msg.gas);
        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v7 = v8 = 0x1000276a4;
        } else {
            v7 = v9 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        require(msg.data[v0 + 512] < msg.data.length - v0 - 31);
        require(msg.data[v0 + msg.data[v0 + 512]] <= uint64.max);
        require(32 + (v0 + msg.data[v0 + 512]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 512]]);
        v10 = new uint256[](msg.data[v0 + msg.data[v0 + 512]]);
        CALLDATACOPY(v10.data, 32 + (v0 + msg.data[v0 + 512]), msg.data[v0 + msg.data[v0 + 512]]);
        MEM[192 + (msg.data[v0 + msg.data[v0 + 512]] + (4 + MEM[64]))] = 0;
        v11, /* uint256 */ v12, /* uint256 */ v13 = address(msg.data[v0]).swap(address(v3), bool(msg.data[v0 + 64]), msg.data[v0 + 384], address(v7), v10).gas(msg.gas);
        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v14, /* uint256 */ v15 = address(msg.data[v0 + 192]).balanceOf(address(v3)).gas(msg.gas);
        require(bool(v14), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v16 = _SafeSub(v15, v6);
        require(v16 >= msg.data[416 + v0], Error(0x42494f41));
    } else {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v17, /* uint112 */ v18, /* uint112 */ v19, /* uint32 */ v20 = address(msg.data[v0]).getReserves().gas(msg.gas);
        require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v18 == uint112(v18));
        require(v19 == uint112(v19));
        require(v20 == uint32(v20));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v21 = v22 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v19), uint112(v18), msg.data[384 + v0]);
        } else {
            v21 = v23 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v18), uint112(v19), msg.data[384 + v0]);
        }
        v24 = _SafeSub(10000, msg.data[v0 + 320]);
        v25 = _SafeMul(v21, v24);
        v26 = _SafeDiv(v25, 10000);
        require(v26 >= msg.data[v0 + 416], Error(0x494f41));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 192 - (v0 + 160) >= 32);
        require(msg.data[v0 + 160] == address(msg.data[v0 + 160]));
        0x21e1(msg.data[v0 + 384], msg.data[v0], address(msg.data[v0 + 160]));
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v27 = v28 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v27 = msg.data[v0 + 224];
            require(v27 == address(v27));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v29, /* uint256 */ v30 = address(msg.data[v0 + 192]).balanceOf(address(v27)).gas(msg.gas);
        require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v31 = new uint256[](0);
            MCOPY(v31.data, MEM[64] + 32, 0);
            MEM[v31.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v32 = address(msg.data[v0]).swap(0, v21, address(v27), v31).gas(msg.gas);
            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        } else {
            v33 = new uint256[](0);
            MCOPY(v33.data, MEM[64] + 32, 0);
            MEM[v33.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v34 = address(msg.data[v0]).swap(v21, 0, address(v27), v33).gas(msg.gas);
            require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v35, /* uint256 */ v36 = address(msg.data[v0 + 192]).balanceOf(address(v27)).gas(msg.gas);
        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v16 = v37 = _SafeSub(v36, v30);
        require(v37 >= msg.data[416 + v0], Error(0x42494f41));
    }
    v38, /* uint256 */ v39 = address(msg.data[v0 + 192]).balanceOf(address(0x26eb17cbcb2726dd62ba2d62b5cac3c40be16be9)).gas(msg.gas);
    require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    0x21e1(v16, 0x26eb17cbcb2726dd62ba2d62b5cac3c40be16be9, address(msg.data[v0 + 192]));
    v40, /* uint256 */ v41 = address(msg.data[v0 + 192]).balanceOf(address(0x26eb17cbcb2726dd62ba2d62b5cac3c40be16be9)).gas(msg.gas);
    require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
    v42 = _SafeSub(v41, v39);
    v43 = _SafeSub(10000, varg1);
    v44 = _SafeMul(v16, v43);
    v45 = _SafeDiv(v44, 10000);
    require(v42 >= v45, Error(0x42494f41));
}

function 0x82eeb63d(uint256 varg0, uint256 varg1) public payable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 <= uint64.max);
    v0 = 0x293d(4 + varg0, msg.data.length);
    require(varg1 <= uint64.max);
    v1 = 0x293d(4 + varg1, msg.data.length);
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(v0 + 64 - (v0 + 32) >= 32);
    require(msg.data[v0 + 32] == bool(msg.data[v0 + 32]));
    if (!msg.data[v0 + 32]) {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v2, /* address */ v3 = stor_3_0_19.staticcall(bytes4(0xa7c6ecb400000000000000000000000000000000000000000000000000000000), address(msg.data[v0])).gas(msg.gas);
        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v3 == address(v3));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (!msg.data[v0 + 64]) {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v3) <= address(msg.data[v0 + 352]), Error(0x494f41));
        } else {
            require(v0 + 384 - (v0 + 352) >= 32);
            require(msg.data[v0 + 352] == address(msg.data[v0 + 352]));
            require(address(v3) >= address(msg.data[v0 + 352]), Error(0x494f41));
        }
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v4 = v5 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v4 = msg.data[v0 + 224];
            require(v4 == address(v4));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v6, /* uint256 */ v7 = address(msg.data[v0 + 192]).balanceOf(address(v4)).gas(msg.gas);
        require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v8 = v9 = 0x1000276a4;
        } else {
            v8 = v10 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        require(msg.data[v0 + 512] < msg.data.length - v0 - 31);
        require(msg.data[v0 + msg.data[v0 + 512]] <= uint64.max);
        require(32 + (v0 + msg.data[v0 + 512]) <= msg.data.length - msg.data[v0 + msg.data[v0 + 512]]);
        v11 = new uint256[](msg.data[v0 + msg.data[v0 + 512]]);
        CALLDATACOPY(v11.data, 32 + (v0 + msg.data[v0 + 512]), msg.data[v0 + msg.data[v0 + 512]]);
        MEM[192 + (msg.data[v0 + msg.data[v0 + 512]] + (4 + MEM[64]))] = 0;
        v12, /* uint256 */ v13, /* uint256 */ v14 = address(msg.data[v0]).swap(address(v4), bool(msg.data[v0 + 64]), msg.data[v0 + 384], address(v8), v11).gas(msg.gas);
        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v15, /* uint256 */ v16 = address(msg.data[v0 + 192]).balanceOf(address(v4)).gas(msg.gas);
        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v17 = _SafeSub(v16, v7);
        require(v17 >= msg.data[416 + v0], Error(0x42494f41));
        require(v1 + 32 - v1 >= 32);
        require(msg.data[v1] == address(msg.data[v1]));
        require(v1 + 32 - v1 >= 32);
        require(msg.data[v1] == address(msg.data[v1]));
        v18, /* address */ v19 = stor_3_0_19.staticcall(bytes4(0xa7c6ecb400000000000000000000000000000000000000000000000000000000), address(msg.data[v1])).gas(msg.gas);
        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v19 == address(v19));
        require(v1 + 96 - (v1 + 64) >= 32);
        require(msg.data[v1 + 64] == bool(msg.data[v1 + 64]));
        if (!msg.data[v1 + 64]) {
            require(v1 + 384 - (v1 + 352) >= 32);
            require(msg.data[v1 + 352] == address(msg.data[v1 + 352]));
            require(address(v19) <= address(msg.data[v1 + 352]), Error(0x494f41));
        } else {
            require(v1 + 384 - (v1 + 352) >= 32);
            require(msg.data[v1 + 352] == address(msg.data[v1 + 352]));
            require(address(v19) >= address(msg.data[v1 + 352]), Error(0x494f41));
        }
        require(v1 + 160 - (v1 + 128) >= 32);
        require(msg.data[v1 + 128] == bool(msg.data[v1 + 128]));
        if (msg.data[v1 + 128]) {
            v20 = v21 = this;
        } else {
            require(v1 + (uint8.max + 1) - (v1 + 224) >= 32);
            v20 = msg.data[v1 + 224];
            require(v20 == address(v20));
        }
        require(v1 + 224 - (v1 + 192) >= 32);
        require(msg.data[v1 + 192] == address(msg.data[v1 + 192]));
        v22, /* uint256 */ v23 = address(msg.data[v1 + 192]).balanceOf(address(v20)).gas(msg.gas);
        require(bool(v22), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 + 96 - (v1 + 64) >= 32);
        require(msg.data[v1 + 64] == bool(msg.data[v1 + 64]));
        require(v1 + 96 - (v1 + 64) >= 32);
        require(msg.data[v1 + 64] == bool(msg.data[v1 + 64]));
        if (msg.data[v1 + 64]) {
            v24 = v25 = 0x1000276a4;
        } else {
            v24 = v26 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
        }
        require(msg.data[v1 + 512] < msg.data.length - v1 - 31);
        require(msg.data[v1 + msg.data[v1 + 512]] <= uint64.max);
        require(32 + (v1 + msg.data[v1 + 512]) <= msg.data.length - msg.data[v1 + msg.data[v1 + 512]]);
        v27 = new uint256[](msg.data[v1 + msg.data[v1 + 512]]);
        CALLDATACOPY(v27.data, 32 + (v1 + msg.data[v1 + 512]), msg.data[v1 + msg.data[v1 + 512]]);
        MEM[192 + (msg.data[v1 + msg.data[v1 + 512]] + (4 + MEM[64]))] = 0;
        v28, /* uint256 */ v29, /* uint256 */ v30 = address(msg.data[v1]).swap(address(v20), bool(msg.data[v1 + 64]), msg.data[v1 + 384], address(v24), v27).gas(msg.gas);
        require(bool(v28), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);
        require(v1 + 224 - (v1 + 192) >= 32);
        require(msg.data[v1 + 192] == address(msg.data[v1 + 192]));
        v31, /* uint256 */ v32 = address(msg.data[v1 + 192]).balanceOf(address(v20)).gas(msg.gas);
        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v33 = _SafeSub(v32, v23);
        require(v33 >= msg.data[416 + v1], Error(0x42494f41));
    } else {
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        v34, /* uint112 */ v35, /* uint112 */ v36, /* uint32 */ v37 = address(msg.data[v0]).getReserves().gas(msg.gas);
        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v35 == uint112(v35));
        require(v36 == uint112(v36));
        require(v37 == uint32(v37));
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v38 = v39 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v36), uint112(v35), msg.data[384 + v0]);
        } else {
            v38 = v40 = 0x250c(msg.data[288 + v0], msg.data[uint8.max + 1 + v0], uint112(v35), uint112(v36), msg.data[384 + v0]);
        }
        v41 = _SafeSub(10000, msg.data[v0 + 320]);
        v42 = _SafeMul(v38, v41);
        v43 = _SafeDiv(v42, 10000);
        require(v43 >= msg.data[v0 + 416], Error(0x494f41));
        require(v0 + 32 - v0 >= 32);
        require(msg.data[v0] == address(msg.data[v0]));
        require(v0 + 192 - (v0 + 160) >= 32);
        require(msg.data[v0 + 160] == address(msg.data[v0 + 160]));
        0x21e1(msg.data[v0 + 384], msg.data[v0], address(msg.data[v0 + 160]));
        require(v0 + 160 - (v0 + 128) >= 32);
        require(msg.data[v0 + 128] == bool(msg.data[v0 + 128]));
        if (msg.data[v0 + 128]) {
            v44 = v45 = this;
        } else {
            require(v0 + (uint8.max + 1) - (v0 + 224) >= 32);
            v44 = msg.data[v0 + 224];
            require(v44 == address(v44));
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v46, /* uint256 */ v47 = address(msg.data[v0 + 192]).balanceOf(address(v44)).gas(msg.gas);
        require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v0 + 96 - (v0 + 64) >= 32);
        require(msg.data[v0 + 64] == bool(msg.data[v0 + 64]));
        if (msg.data[v0 + 64]) {
            v48 = new uint256[](0);
            MCOPY(v48.data, MEM[64] + 32, 0);
            MEM[v48.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v49 = address(msg.data[v0]).swap(0, v38, address(v44), v48).gas(msg.gas);
            require(bool(v49), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        } else {
            v50 = new uint256[](0);
            MCOPY(v50.data, MEM[64] + 32, 0);
            MEM[v50.data] = 0;
            require(bool((address(msg.data[v0])).code.size));
            v51 = address(msg.data[v0]).swap(v38, 0, address(v44), v50).gas(msg.gas);
            require(bool(v51), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        require(v0 + 224 - (v0 + 192) >= 32);
        require(msg.data[v0 + 192] == address(msg.data[v0 + 192]));
        v52, /* uint256 */ v53 = address(msg.data[v0 + 192]).balanceOf(address(v44)).gas(msg.gas);
        require(bool(v52), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v54 = _SafeSub(v53, v47);
        require(v54 >= msg.data[416 + v0], Error(0x42494f41));
        require(v1 + 32 - v1 >= 32);
        require(msg.data[v1] == address(msg.data[v1]));
        v55, /* uint112 */ v56, /* uint112 */ v57, /* uint32 */ v58 = address(msg.data[v1]).getReserves().gas(msg.gas);
        require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);
        require(v56 == uint112(v56));
        require(v57 == uint112(v57));
        require(v58 == uint32(v58));
        require(v1 + 96 - (v1 + 64) >= 32);
        require(msg.data[v1 + 64] == bool(msg.data[v1 + 64]));
        if (msg.data[v1 + 64]) {
            v59 = v60 = 0x250c(msg.data[288 + v1], msg.data[uint8.max + 1 + v1], uint112(v57), uint112(v56), msg.data[384 + v1]);
        } else {
            v59 = v61 = 0x250c(msg.data[288 + v1], msg.data[uint8.max + 1 + v1], uint112(v56), uint112(v57), msg.data[384 + v1]);
        }
        v62 = _SafeSub(10000, msg.data[v1 + 320]);
        v63 = _SafeMul(v59, v62);
        v64 = _SafeDiv(v63, 10000);
        require(v64 >= msg.data[v1 + 416], Error(0x494f41));
        require(v1 + 32 - v1 >= 32);
        require(msg.data[v1] == address(msg.data[v1]));
        require(v1 + 192 - (v1 + 160) >= 32);
        require(msg.data[v1 + 160] == address(msg.data[v1 + 160]));
        0x21e1(msg.data[v1 + 384], msg.data[v1], address(msg.data[v1 + 160]));
        require(v1 + 160 - (v1 + 128) >= 32);
        require(msg.data[v1 + 128] == bool(msg.data[v1 + 128]));
        if (msg.data[v1 + 128]) {
            v65 = v66 = this;
        } else {
            require(v1 + (uint8.max + 1) - (v1 + 224) >= 32);
            v65 = msg.data[v1 + 224];
            require(v65 == address(v65));
        }
        require(v1 + 224 - (v1 + 192) >= 32);
        require(msg.data[v1 + 192] == address(msg.data[v1 + 192]));
        v67, /* uint256 */ v68 = address(msg.data[v1 + 192]).balanceOf(address(v65)).gas(msg.gas);
        require(bool(v67), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(v1 + 96 - (v1 + 64) >= 32);
        require(msg.data[v1 + 64] == bool(msg.data[v1 + 64]));
        if (msg.data[v1 + 64]) {
            v69 = new uint256[](0);
            MCOPY(v69.data, MEM[64] + 32, 0);
            MEM[v69.data] = 0;
            require(bool((address(msg.data[v1])).code.size));
            v70 = address(msg.data[v1]).swap(0, v59, address(v65), v69).gas(msg.gas);
            require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        } else {
            v71 = new uint256[](0);
            MCOPY(v71.data, MEM[64] + 32, 0);
            MEM[v71.data] = 0;
            require(bool((address(msg.data[v1])).code.size));
            v72 = address(msg.data[v1]).swap(v59, 0, address(v65), v71).gas(msg.gas);
            require(bool(v72), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        }
        require(v1 + 224 - (v1 + 192) >= 32);
        require(msg.data[v1 + 192] == address(msg.data[v1 + 192]));
        v73, /* uint256 */ v74 = address(msg.data[v1 + 192]).balanceOf(address(v65)).gas(msg.gas);
        require(bool(v73), 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        v75 = _SafeSub(v74, v68);
        require(v75 >= msg.data[416 + v1], Error(0x42494f41));
    }
}

function setStaticAddress(address staticAddr) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(_isOwner[msg.sender], Error('Not owner!'));
    stor_3_0_19 = staticAddr;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg1 == varg1 * varg0 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 * varg0;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function transfer(address _from, address _to, uint256 _wad) public payable { 
    require(msg.data.length - 4 >= 96);
    require(_isOwner[msg.sender], Error('Not owner!'));
    if (_from) {
        0x21e1(_wad, _to, _from);
    } else {
        MCOPY(MEM[64], MEM[64] + 32, 0);
        MEM[MEM[64]] = 0;
        v0, /* uint256 */ v1 = _to.call().value(_wad).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v2 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v2.data, 0, RETURNDATASIZE());
        }
        require(v0, Error(0x46545345));
    }
}

function 0xdc8e40d9(uint256 varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    v0 = v1 = varg0.length;
    require(v1 <= uint64.max);
    require(4 + varg0 + (v1 << 5) + 32 <= msg.data.length);
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](v1);
    if (v1) {
        v3 = v2.data;
        while (v0) {
            MEM[v3] = 96;
            v3 += 32;
            v0 = v0 - 1;
        }
    }
    v4 = msg.data.length;
    v5 = v6 = 0;
    while (v5 < v1) {
        require(v5 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(varg0[v5] < msg.data.length - varg0.data - 63);
        require(varg0[v5] + varg0.data + 32 - (varg0[v5] + varg0.data) >= 32);
        require(msg.data[varg0[v5] + varg0.data] == address(msg.data[varg0[v5] + varg0.data]));
        require(msg.data[varg0[v5] + varg0.data + 32] < msg.data.length - (varg0[v5] + varg0.data) - 31);
        require(msg.data[varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]] <= uint64.max);
        require(32 + (varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]) <= msg.data.length - msg.data[varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]]);
        CALLDATACOPY(MEM[64], 32 + (varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]), msg.data[varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]]);
        MEM[msg.data[varg0[v5] + varg0.data + msg.data[varg0[v5] + varg0.data + 32]] + MEM[64]] = 0;
        v7, /* uint256 */ v8 = address(msg.data[varg0[v5] + varg0.data]).delegatecall(MEM[MEM[64]:MEM[64] + msg.data[varg0[v129f_0x0V0x31f] + varg0.data + msg.data[varg0[v129f_0x0V0x31f] + varg0.data + 32]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v9 = v10 = 96;
        } else {
            v9 = v11 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());
        }
        require(v5 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v2[v5] = v9;
        require(v7, Error('Multicall: call failed'));
        v5 += 1;
    }
    v12 = new uint256[](v2.length);
    v13 = v14 = v12.data;
    v15 = v16 = MEM[64] + (v2.length << 5) + 64;
    v17 = v18 = v2.data;
    v19 = v20 = 0;
    while (v19 < v2.length) {
        MEM[v13] = v15 - MEM[64] - 64;
        MEM[v15] = MEM[MEM[v17]];
        MCOPY(v15 + 32, MEM[v17] + 32, MEM[MEM[v17]]);
        MEM[v15 + MEM[MEM[v17]] + 32] = 0;
        v15 = v15 + (MEM[MEM[v17]] + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32;
        v13 += 32;
        v17 += 32;
        v19 += 1;
    }
    return v12;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function 0xeb0fed15(address varg0, uint256 varg1, address varg2) public payable { 
    require(msg.data.length - 4 >= 96);
    0x13e2(varg2, varg1, varg0);
}

function 0xf25a8f1b(address[] varg0, uint256 varg1) public nonPayable { 
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
    require(varg1 <= uint64.max);
    require(msg.data.length > 4 + varg1 + 31);
    require(varg1.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v5 = new uint256[](varg1.length);
    require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg1.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v6 = v7 = v5.data;
    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);
    v8 = v9 = varg1.data;
    while (v8 < 4 + varg1 + (varg1.length << 5) + 32) {
        MEM[v6] = msg.data[v8];
        v8 += 32;
        v6 = v6 + 32;
    }
    require(_isOwner[msg.sender], Error('Not owner!'));
    require(v0.length == v5.length, Error('Mismatched input lengths'));
    v10 = v11 = 0;
    while (1) {
        if (v10 >= v0.length) {
            exit;
        } else {
            require(v10 < v5.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v10 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            _swapCallback[address(v0[v10])] = v5[v10];
            v10 += 1;
        }
    }
}

function receive() public payable { 
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        require(!msg.data.length);
        receive();
    } else {
        v0 = function_selector >> 224;
        if (0x7d77a478 > v0) {
            if (0x2f54bf6e > v0) {
                if (0x1ac5336d > v0) {
                    if (0x1ff9549 == v0) {
                        0x01ff9549();
                    } else {
                        require(0x122e350f == v0);
                        0x122e350f();
                    }
                } else if (0x1ac5336d != v0) {
                    if (0x23a69e75 != v0) {
                        require(0x28b3599c == v0);
                        0x28b3599c();
                    }
                }
            } else if (0x7065cb48 > v0) {
                if (0x2f54bf6e == v0) {
                    isOwner(address);
                } else if (0x40f8317c == v0) {
                    0x40f8317c();
                } else {
                    require(0x6c46a2c5 == v0);
                    addOwners(address[]);
                }
            } else if (0x7065cb48 == v0) {
                addOwner(address);
            } else if (0x73f75faa != v0) {
                require(0x79e08164 == v0);
                0x79e08164();
            }
        } else if (0xc4e21d86 > v0) {
            if (0xb1c1430d > v0) {
                if (0x7d77a478 == v0) {
                    0x7d77a478();
                } else if (0x82eeb63d == v0) {
                    0x82eeb63d();
                } else {
                    require(0xa224ef83 == v0);
                }
            } else if (0xb1c1430d == v0) {
                setStaticAddress(address);
            } else if (0xb6d3f3f0 != v0) {
                require(0xbeabacc8 == v0);
                transfer(address,address,uint256);
            }
        } else if (0xf25a8f1b > v0) {
            if (0xc4e21d86 != v0) {
                if (0xdc8e40d9 == v0) {
                    0xdc8e40d9();
                } else {
                    require(0xeb0fed15 == v0);
                    0xeb0fed15();
                }
            }
        } else if (0xf25a8f1b == v0) {
            0xf25a8f1b();
        } else if (0xfa461e33 != v0) {
            require(0xfa483e72 == v0);
        }
        swapCallback(int256,int256,bytes);
    }
}
