// Decompiled by library.dedaub.com
// 2025.12.13 05:40 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
uint256 _amountInCached; // STORAGE[0x0]
uint256 _feeRate; // STORAGE[0x1]
uint256 _feeDenominator; // STORAGE[0x2]
mapping (address => bool) _feeExcludeList; // STORAGE[0x7]
uint256 _fun_nonReentrantBefore; // STORAGE[0x6c]
address _feeCollector; // STORAGE[0x3] bytes 0 to 19
address _wETH; // STORAGE[0x4] bytes 0 to 19
address _factoryV2; // STORAGE[0x5] bytes 0 to 19
address _factoryV3; // STORAGE[0x6] bytes 0 to 19
bool _paused; // STORAGE[0x9e] bytes 0 to 0
address _owner; // STORAGE[0x3a] bytes 0 to 19
address stor_d0_0_19; // STORAGE[0xd0] bytes 0 to 19
uint256 _fun_swap; // TRANSIENT_STORAGE[0x0aedd6bde10e3aa2adec092b02a3e3e805795516cda41f27aa145b8f300af87a]
uint64 stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e_0_7; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e] bytes 0 to 7
bool _fun_checkInitializing; // STORAGE[0xf0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e] bytes 8 to 8


// Events
Unpaused(address);
Paused(address);
Initialized(uint64);
OwnershipTransferred(address, address);
FeeCollected(address, address, uint256, uint256);

function initialize(address platform, address varg1, address trustedForwarder, address initialExecutor, uint256 initialPlatformMintFee) public nonPayable { 
    require(msg.data.length - 4 >= 160);
    v0 = v1 = !_fun_checkInitializing;
    if (v1) {
        v0 = v2 = stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e_0_7 < 1;
    }
    v3 = v4 = !v0;
    if (v4) {
        v5 = v6 = !this.code.size;
        if (v6) {
            v5 = v7 = 1 == stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e_0_7;
        }
        v3 = v8 = !v5;
    }
    require(!v3, AlreadyInitialized());
    stor_f0c57e16840df040f15088dc2f81fe391c3923bec73e23a9662efc9c229c6a0e_0_7 = 1;
    if (v1) {
        MEM[0] = MEM[0];
        _fun_checkInitializing = 1;
    }
    fun_checkInitializing();
    fun_checkInitializing();
    _owner = msg.sender;
    emit OwnershipTransferred(_owner, msg.sender);
    fun_checkInitializing();
    fun_checkInitializing();
    _fun_nonReentrantBefore = 1;
    fun_checkInitializing();
    fun_checkInitializing();
    _paused = 0;
    _factoryV3 = platform;
    stor_d0_0_19 = varg1;
    _feeCollector = initialExecutor;
    _feeRate = initialPlatformMintFee;
    _feeDenominator = 10000;
    _wETH = trustedForwarder;
    _amountInCached = uint256.max;
    if (v1) {
        MEM[0] = MEM[0];
        _fun_checkInitializing = 0;
        emit Initialized(1);
        exit;
    } else {
        exit;
    }
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(newOwner, OwnableInvalidOwner(0));
    _owner = newOwner;
    MEM[0] = MEM[0];
    emit OwnershipTransferred(_owner, newOwner);
}

function 0xe6cb474f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    require(msg.data.length - 4 >= 128);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg0.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = v0.data;
    require(varg0 + (varg0.length << 5) + 36 <= msg.data.length);
    v3 = v4 = varg0.data;
    while (v3 < varg0 + (varg0.length << 5) + 36) {
        require(msg.data[v3] <= uint64.max);
        v5 = varg0 + msg.data[v3];
        require(msg.data.length - v5 - 36 >= uint8.max + 1);
        v6 = allocate_memory_32828();
        require(msg.data[v5 + 36] < 3);
        v6.word0 = msg.data[v5 + 36];
        require(!(address(msg.data[v5 + 68]) - msg.data[v5 + 68]));
        v6.word1 = msg.data[v5 + 68];
        require(!(address(msg.data[v5 + 100]) - msg.data[v5 + 100]));
        v6.word2 = msg.data[v5 + 100];
        require(!(address(msg.data[v5 + 132]) - msg.data[v5 + 132]));
        v6.word3 = msg.data[v5 + 132];
        require(!(msg.data[v5 + 164] - uint24(msg.data[v5 + 164])));
        v6.word4 = msg.data[v5 + 164];
        require(!(msg.data[v5 + 196] - int24(msg.data[v5 + 196])));
        v6.word5 = msg.data[v5 + 196];
        require(!(address(msg.data[v5 + 228]) - msg.data[v5 + 228]));
        v6.word6 = msg.data[v5 + 228];
        require(msg.data[v5 + 260] <= uint64.max);
        require(v5 + msg.data[v5 + 260] + 36 + 31 < msg.data.length);
        require(msg.data[v5 + msg.data[v5 + 260] + 36] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](msg.data[v5 + msg.data[v5 + 260] + 36]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5 + msg.data[v5 + 260] + 36]) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[v5 + msg.data[v5 + 260] + 36]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(v5 + msg.data[v5 + 260] + 36 + 32 + msg.data[v5 + msg.data[v5 + 260] + 36] <= msg.data.length);
        CALLDATACOPY(v7.data, v5 + msg.data[v5 + 260] + 36 + 32, msg.data[v5 + msg.data[v5 + 260] + 36]);
        v7[msg.data[v5 + msg.data[v5 + 260] + 36]] = 0;
        v6.word7 = v7;
        MEM[v1] = v6;
        v1 = v1 + 32;
        v3 = v3 + 32;
    }
    require(!(address(varg1) - varg1));
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    require(!bool(!v0.length), Error('ERR_INVALID_ARGUMENT: descs is empty', 'ERR_INVALID_ARGUMENT: descs is empty'));
    require(!bool(address(varg1)), Error('SwapX: invalid fee token'));
    v8 = v9 = msg.sender;
    v10 = v11 = msg.sender;
    v12 = v13 = 0;
    v14 = checked_sub_uint256_32899(v0.length);
    require(v14 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v15 = fun_tryGetBalance(address(MEM[v0[v14] + 64]), msg.sender);
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v16 = fun_isNative(address(MEM[MEM[v0.data] + 32]));
    if (!v16) {
        v10 = v17 = this;
    } else {
        require(!bool(!msg.value), Error('SwapX: amount in is zero'));
        v18 = fun_takeFee_32813(msg.value);
        v12 = v19 = _SafeSub(varg2, v18);
        v8 = v20 = this;
        fun_wrap(this.balance);
    }
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(MEM[MEM[v0.data]] < 3, Panic(33)); // failed convertion to enum type
    if (MEM[MEM[v0.data]]) {
        v21 = this;
    } else {
        v21 = v22 = address(MEM[96 + MEM[v0.data]]);
    }
    v23 = v24 = this != address(v21);
    if (v24) {
        require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v23 = v25 = bool(address(MEM[MEM[v0.data] + 32]));
    }
    if (v23) {
        require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        fun_pay_6765(address(MEM[MEM[v0.data] + 32]), v8, v21, v12);
    }
    v26 = v27 = 0;
    while (v26 < v0.length) {
        require(v26 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v28 = fun_getMiddleReceiver(v0, v26, v10);
        require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
        require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
        if (MEM[v0[v26]]) {
            require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
            require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
            if (MEM[v0[v26]] - 1) {
                require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
                require(3 > MEM[v0[v26]], Panic(33)); // failed convertion to enum type
                require(!(MEM[v0[v26]] - 2), Error('SwapX: invalid swap type'));
                v12 = v29 = fun_swap(v8, v28, msg.sender, v12, v0[v26]);
            } else {
                v30 = v31 = MEM[64];
                MEM[v31] = 0x918c9b0c00000000000000000000000000000000000000000000000000000000;
                MEM[v31 + 4] = address(v8);
                MEM[v31 + 4 + 32] = address(v28);
                MEM[v31 + 4 + 64] = msg.sender;
                MEM[v31 + 4 + 96] = v12;
                MEM[v31 + 4 + 128] = 160;
                require(MEM[v0[v26]] < 3, Panic(33)); // failed convertion to enum type
                MEM[v31 + 4 + 160] = MEM[v0[v26]];
                MEM[v31 + 4 + 192] = address(MEM[v0[v26] + 32]);
                MEM[v31 + 4 + 224] = address(MEM[v0[v26] + 64]);
                MEM[v31 + 4 + (uint8.max + 1)] = address(MEM[v0[v26] + 96]);
                MEM[v31 + 4 + 288] = uint24(MEM[v0[v26] + 128]);
                MEM[v31 + 4 + 320] = int24(MEM[v0[v26] + 160]);
                MEM[v31 + 4 + 352] = address(MEM[v0[v26] + 192]);
                MEM[v31 + 4 + 384] = uint8.max + 1;
                MEM[v31 + 4 + 416] = MEM[MEM[v0[v26] + 224]];
                MCOPY(v31 + 4 + 416 + 32, 32 + MEM[v0[v26] + 224], MEM[MEM[v0[v26] + 224]]);
                MEM[32 + (MEM[MEM[v0[v26] + 224]] + (v31 + 4 + 416))] = 0;
                v32 = 0xeb0416d0a2343e8409f6a3ee1f8c8ae2c2a1e62a.delegatecall(MEM[v32adV0x1458:v32adV0x1458 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v1420[v31c2_0x3V0x1458] + 224]] + v32adV0x1458 + 4 + 416 + 32 - v32adV0x1458], MEM[v32adV0x1458:v32adV0x1458 + 32]).gas(msg.gas);
                if (v32) {
                    v12 = v33 = 0;
                    if (v32) {
                        v34 = 13069;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v31 + 32 < v31) | (v31 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v31 + 32;
                            v35 = v36 = v31 + 32;
                        }
                    }
                }
            }
        } else {
            v30 = v37 = MEM[64];
            MEM[v37] = 0x918c9b0c00000000000000000000000000000000000000000000000000000000;
            MEM[v37 + 4] = address(v8);
            MEM[v37 + 4 + 32] = address(v28);
            MEM[v37 + 4 + 64] = msg.sender;
            MEM[v37 + 4 + 96] = v12;
            MEM[v37 + 4 + 128] = 160;
            require(MEM[v0[v26]] < 3, Panic(33)); // failed convertion to enum type
            MEM[v37 + 4 + 160] = MEM[v0[v26]];
            MEM[v37 + 4 + 192] = address(MEM[v0[v26] + 32]);
            MEM[v37 + 4 + 224] = address(MEM[v0[v26] + 64]);
            MEM[v37 + 4 + (uint8.max + 1)] = address(MEM[v0[v26] + 96]);
            MEM[v37 + 4 + 288] = uint24(MEM[v0[v26] + 128]);
            MEM[v37 + 4 + 320] = int24(MEM[v0[v26] + 160]);
            MEM[v37 + 4 + 352] = address(MEM[v0[v26] + 192]);
            MEM[v37 + 4 + 384] = uint8.max + 1;
            MEM[v37 + 4 + 416] = MEM[MEM[v0[v26] + 224]];
            MCOPY(v37 + 4 + 416 + 32, 32 + MEM[v0[v26] + 224], MEM[MEM[v0[v26] + 224]]);
            MEM[32 + (MEM[MEM[v0[v26] + 224]] + (v37 + 4 + 416))] = 0;
            v38 = 0xff32d1df60173d0b153072cead3aeed35e3962d8.delegatecall(MEM[v31feV0x1458:v31feV0x1458 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v1420[v31c2_0x3V0x1458] + 224]] + v31feV0x1458 + 4 + 416 + 32 - v31feV0x1458], MEM[v31feV0x1458:v31feV0x1458 + 32]).gas(msg.gas);
            if (!v38) {
                break;
            } else {
                v12 = v39 = 0;
                if (v38) {
                    v34 = v40 = 12929;
                    if (32 > RETURNDATASIZE()) {
                        break;
                    } else {
                        require(!((v37 + 32 < v37) | (v37 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v37 + 32;
                        v35 = v41 = v37 + 32;
                    }
                } else {
                    break;
                }
            }
        }
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
        v42 = checked_sub_uint256_32899(v0.length);
        if (v26 - v42) {
            v8 = v43 = this;
            break;
        } else {
            break;
        }
        v26 += 1;
        require(!((v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < v30) | (v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        v35 = v44 = v30 + RETURNDATASIZE();
        require(v35 - v30 >= 32);
        v12 = v45 = MEM[v30];
        // Unknown jump to Block ['0x3281B0x1458', '0x330dB0x1458']. Refer to 3-address code (TAC);
        break;
        break;
        // Unknown jump to Block 0x3242B0x1458. Refer to 3-address code (TAC);
    }
    v46 = checked_sub_uint256_32899(v0.length);
    require(v46 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v47 = v48 = fun_isNative(address(MEM[v0[v46] + 64]));
    if (v48) {
        v47 = v49 = this == address(v10);
    }
    if (v47) {
        MEM[0] = MEM[0];
        fun_tryUnwrap(v12);
        v50 = fun_takeFeeTo(varg1, v12);
        v12 = v51 = _SafeSub(v12, v50);
        fun_pay_6765(varg1, this, msg.sender, v51);
    }
    MEM[0] = MEM[0];
    v52 = checked_sub_uint256_32899(v0.length);
    require(v52 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v53 = fun_tryGetBalance(address(MEM[v0[v52] + 64]), msg.sender);
    v54 = _SafeSub(v53, v15);
    require(v54 >= varg3, Error('ERR_EXCEEDED_SLIPPAGE:minReturn not reached'));
    v55 = new uint256[](v0.length);
    v56 = v55.data;
    v57 = v58 = MEM[64] + (v0.length << 5) + 128;
    v59 = v0.data;
    v60 = 0;
    while (1) {
        if (v60 < v0.length) {
            MEM[v56] = v57 - MEM[64] + int8.min;
            require(MEM[MEM[v59]] < 3, Panic(33)); // failed convertion to enum type
            MEM[v57] = MEM[MEM[v59]];
            MEM[32 + v57] = address(MEM[32 + MEM[v59]]);
            MEM[v57 + 64] = address(MEM[MEM[v59] + 64]);
            MEM[v57 + 96] = address(MEM[MEM[v59] + 96]);
            MEM[v57 + 128] = uint24(MEM[128 + MEM[v59]]);
            MEM[v57 + 160] = int24(MEM[160 + MEM[v59]]);
            MEM[v57 + 192] = address(MEM[192 + MEM[v59]]);
            MEM[v57 + 224] = uint8.max + 1;
            MEM[v57 + (uint8.max + 1)] = MEM[MEM[MEM[v59] + 224]];
            MCOPY(v57 + (uint8.max + 1) + 32, 32 + MEM[MEM[v59] + 224], MEM[MEM[MEM[v59] + 224]]);
            MEM[32 + (MEM[MEM[MEM[v59] + 224]] + (v57 + (uint8.max + 1)))] = 0;
            v57 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[MEM[v59] + 224]]) + (v57 + (uint8.max + 1)) + 32;
            v59 = v59 + 32;
            v56 = v56 + 32;
            v60 = v60 + 1;
        } else {
            emit 0x3145c7c5a7804148dd68148a26f9f6a2ad2816be643e0f456290a8b81b9c5154(msg.sender, msg.sender, address(varg1), v12, v12, v55);
            _fun_nonReentrantBefore = 1;
            exit;
        }
    }
}

function withdraw(address tokenAddress, address _toUser, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    if (tokenAddress) {
        fun_safeTransfer(tokenAddress, _toUser, amount);
        exit;
    } else {
        v0, /* uint256 */ v1 = _toUser.call().value(amount).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, Error('withdraw native failed'));
        exit;
    }
}

function feeCollector() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _feeCollector;
}

function feeExcludeList(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _feeExcludeList[varg0];
}

function WETH() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _wETH;
}

function feeRate() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _feeRate;
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](rawData.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + rawData.length) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + rawData.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData.data + rawData.length <= msg.data.length);
    CALLDATACOPY(v0.data, rawData.data, rawData.length);
    v0[rawData.length] = 0;
    v1 = new bytes[](v0.length);
    MCOPY(v1.data, v0.data, v0.length);
    v1[v0.length] = 0;
    v2 = 0xdbd0feb51873698f666b2a3a03fd2cd7669c805.unlockCallback(v1, MEM[64] + 0x91dd734600000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v4 = 0;
    if (v2) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x91dd734600000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x91dd734600000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v5.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v3 = new bytes[](v5.length);
        require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v5.length) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v5.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x91dd734600000000000000000000000000000000000000000000000000000000 + v5.length + 32 <= MEM[64] + RETURNDATASIZE());
        MCOPY(v3.data, v5.data, v5.length);
        v3[v5.length] = 0;
    }
    v6 = new uint256[](MEM[v3]);
    MCOPY(v6.data, 32 + v3, MEM[v3]);
    MEM[32 + (MEM[v3] + v6)] = 0;
    return v6;
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function pause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(!_paused, Error('paused already'));
    require(!_paused, EnforcedPause());
    _paused = 1;
    emit Paused(msg.sender);
}

function renounceOwnership() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    _owner = 0;
    MEM[0] = MEM[0];
    emit OwnershipTransferred(_owner, 0);
}

function factoryV2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _factoryV2;
}

function swapV2MultiHopExactIn(address tokenIn, uint256 amountIn, uint256 amountOutMin, address[] path, address recipient, uint256 deadline, address factory) public payable { 
    require(msg.data.length - 4 >= 224);
    require(path <= uint64.max);
    require(path + 35 < msg.data.length);
    v0 = v1 = path.length;
    require(v1 <= uint64.max);
    require(path + (v1 << 5) + 36 <= msg.data.length);
    v0 = v2 = path.data;
    v0 = v3 = 11822;
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    require(block.timestamp <= deadline, Error('Transaction too old'));
    require(!bool(!amountIn), Error('SwapX: amout in is zero'));
    v4 = v5 = 0;
    if (!tokenIn) {
        require(msg.value >= amountIn, Error('SwapX: amount in and value mismatch'));
        v4 = 1;
        v6 = _wETH;
        v7 = _SafeSub(msg.value, amountIn);
        if (v7) {
            v8, /* uint256 */ v9 = msg.sender.call().value(v7).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v10 = new bytes[](RETURNDATASIZE());
                require(!((v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v10) | (v10 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v9 = v10.data;
                RETURNDATACOPY(v9, 0, RETURNDATASIZE());
            }
            require(v8, Error('SwapX: refund ETH error'));
        }
    }
    v0 = v11 = 0;
    v12 = checked_sub_uint256_32899(v1);
    if (v12 < v1) {
        require(!(address(path[v12]) - path[v12]));
        v0 = v13 = address(path[v12]);
        if (v13 == _wETH) {
            v0 = v14 = 1;
        }
        if (!v0) {
            v15 = fun_takeFee(v6, amountIn);
            v16 = v17 = _SafeSub(amountIn, v15);
        }
        require(v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!(address(msg.data[v2]) - msg.data[v2]));
        if (1 < v1) {
            require(!(address(msg.data[32 + v2]) - msg.data[32 + v2]));
            v18 = fun_pairFor(factory, msg.data[v2], msg.data[32 + v2]);
            if (!v4) {
                fun_pay(v6, msg.sender, v18, v16);
            } else {
                fun_pay(v6, this, v18, v16);
            }
            require(v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(!(address(msg.data[v2]) - msg.data[v2]));
            require(address(v6) == address(msg.data[v2]), Error('invalid path'));
            require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v19 = new uint256[](v1);
            require(!((v19 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1 << 5) + 31) < v19) | (v19 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v1 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v20 = v19.data;
            require(v2 + (v1 << 5) <= msg.data.length);
            while (v0 < v2 + (v1 << 5)) {
                require(!(address(msg.data[v0]) - msg.data[v0]));
                MEM[v20] = msg.data[v0];
                v20 = v20 + 32;
                v0 = v0 + 32;
            }
            require(v19.length >= 2, Error('UniswapV2Library: INVALID_PATH'));
            require(v19.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v0 = v21 = new uint256[](v19.length);
            require(!((v21 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v19.length << 5) + 31) < v21) | (v21 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v19.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            require(v19.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(v21.data, msg.data.length, 32 + (v19.length << 5) - 32);
            require(v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[v21.data] = v16;
            v22 = 0;
            while (1) {
                v23 = checked_sub_uint256_32899(v19.length);
                if (v22 >= v23) {
                    if (!v0) {
                        v0 = v24 = 32;
                    } else {
                        v0 = v25 = 32;
                        v0 = v26 = this;
                    }
                    v0 = v27 = MEM[64];
                    MEM[v27] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                    v28 = v29 = v27 + 4;
                    while (1) {
                        MEM[v28] = address(v0);
                        // Unknown jump to Block ['0x2e2eB0x1028', '0x2e8bB0x1028']. Refer to 3-address code (TAC);
                        v30 = v0.staticcall(MEM[v6710x641_0x1V0x19500V0x1028:v6710x641_0x1V0x19500V0x1028 + 32 + v4140x2d0c_0x0V0x1028 - v6710x641_0x1V0x19500V0x1028], MEM[v6710x641_0x1V0x19500V0x1028:v6710x641_0x1V0x19500V0x1028 + v6710x641_0x1V0x19500V0x1028]).gas(msg.gas);
                        if (!v30) {
                            break;
                        } else {
                            v0 = v31 = 11915;
                            v0 = v32 = 0;
                            if (v30) {
                                v33 = v34 = 11879;
                                v35 = v36 = 12158;
                                v0 = v37 = 32;
                                if (v37 <= RETURNDATASIZE()) {
                                    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v0 + 32;
                                    v38 = v39 = v0 + v37;
                                }
                            }
                        }
                        if (!v0) {
                            v0 = v40, v0, v0, v0 = v41, v0, v0 = v42, v0 = 0x2e5a(v0, 0x19705, v0, v0, 11879, v0, 32);
                        } else {
                            v0 = v43, v0 = v44, v0, v0 = v45, v0, v0 = v46, v0 = 0x2e5a(v0, 0x195ba, this, v0, 11879, v0, 32);
                        }
                        v0 = v47 = 0;
                        v48 = checked_sub_uint256_32899(MEM[v0]);
                        if (v0 >= v48) {
                            if (v0) {
                                v0 = v49 = this;
                            }
                            v0 = v50 = MEM[64];
                            MEM[v50] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                            v28 = v51 = v50 + 4;
                        } else {
                            require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v52 = checked_add_uint256_33142(v0);
                            require(v52 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                            v0 = v53 = address(MEM[(v52 << 5) + v0 + 32]);
                            v54, v55 = fun_sortTokens(address(MEM[(v0 << 5) + v0 + 32]), v53);
                            v56 = fun_pairFor(v0, address(MEM[(v0 << 5) + v0 + 32]), v53);
                            v0 = v57 = address(v56);
                            v58, /* uint112 */ v59, /* uint112 */ v60, /* uint32 */ v61 = v57.getReserves().gas(msg.gas);
                            if (!v58) {
                                break;
                            } else {
                                v59 = v62 = 0;
                                v60 = v63 = 0;
                                if (v58) {
                                    if (96 > RETURNDATASIZE()) {
                                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                                        v64 = v65 = MEM[64] + RETURNDATASIZE();
                                    } else {
                                        require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64] + 96;
                                        v64 = v66 = MEM[64] + 96;
                                    }
                                    require(v64 - MEM[64] >= 96);
                                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                                    require(!(v60 - uint112(v60)));
                                    require(!(v61 - uint32(v61)));
                                }
                                v0 = v67 = address(MEM[(v0 << 5) + v0 + 32]) == address(v55);
                                v0 = v68 = uint112(v60);
                                v0 = v69 = uint112(v59);
                                if (v67) {
                                }
                                v0 = v70 = MEM[64];
                                v71 = address(MEM[(v0 << 5) + v0 + 32]).balanceOf(address(v57)).gas(msg.gas);
                                if (!v71) {
                                    break;
                                } else {
                                    v33 = v72 = 0x1a3f7;
                                    v0 = v73 = 17494;
                                    v0 = v74 = 0;
                                    if (v71) {
                                        v35 = v75 = 0x1a489;
                                        if (32 <= RETURNDATASIZE()) {
                                            require(!((v70 + 32 < v70) | (v70 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = v70 + 32;
                                            v38 = v76 = v70 + 32;
                                        }
                                    }
                                }
                            }
                        }
                        require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                        v38 = v77 = v0 + RETURNDATASIZE();
                        require(v38 - v0 >= 32);
                        v0 = v78 = MEM[v0];
                        // Unknown jump to Block ['0x1843b0x2d0cB0x1028', '0x1a4890x2d0cB0x1028', '0x2f7eB0x1028']. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0x45460x2d0cB0x1028. Refer to 3-address code (TAC);
                        // Unknown jump to Block 0xc1e0x2d0cB0x1028. Refer to 3-address code (TAC);
                        v79 = v0.staticcall(MEM[v6710x641_0x1V0x19500V0x1028:v6710x641_0x1V0x19500V0x1028 + 32 + v4140x2d0c_0x0V0x1028 - v6710x641_0x1V0x19500V0x1028], MEM[v6710x641_0x1V0x19500V0x1028:v6710x641_0x1V0x19500V0x1028 + v6710x641_0x1V0x19500V0x1028]).gas(msg.gas);
                        if (!v79) {
                            break;
                        } else {
                            v33 = v80 = 11952;
                            v0 = v81 = 11975;
                            v0 = v82 = 11966;
                            v0 = v83 = 0x195de;
                            v0 = v84 = 0;
                            if (v79) {
                                v35 = 0x1843b;
                                if (32 <= RETURNDATASIZE()) {
                                    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = v0 + 32;
                                    v38 = v85 = v0 + 32;
                                }
                            }
                        }
                        v86 = v0 - v0;
                        if (v86 > v0) {
                            break;
                        } else {
                            // Unknown jump to Block ['0x1a3f70x2d0cB0x1028', '0x2eb0B0x1028']. Refer to 3-address code (TAC);
                            require(v86, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
                            v87 = bool(v0);
                            if (v87) {
                                v87 = v88 = bool(v0);
                            }
                            require(v87, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
                            v89 = fun_mul_33149(v86);
                            v90 = fun_mul(v89, v0);
                            v91 = fun_mul_33150(v0);
                            v92 = _SafeAdd(v91, v89);
                            v93 = v94 = _SafeDiv(v90, v92);
                            if (!v0) {
                                v93 = 0;
                            } else {
                                v93 = v95 = 0;
                            }
                            v96 = checked_sub_uint256_33146(MEM[v0]);
                            if (v0 < v96) {
                                v97 = checked_add_uint256_33147(v0);
                                require(v97 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                                v0 = v98 = fun_pairFor(v0, v0, address(MEM[(v97 << 5) + v0 + 32]));
                            }
                            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                            require(v0.code.size);
                            v99 = new uint256[](0);
                            MCOPY(v99.data, 32 + MEM[64], 0);
                            MEM[v99.data] = 0;
                            v100 = v0.swap(v93, v93, address(v0), v99).gas(msg.gas);
                            if (!v100) {
                                break;
                            } else {
                                if (v100) {
                                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(0 >= 0);
                                }
                                v0 = v0 + 1;
                            }
                            if (v0 - 1 > v0) {
                                break;
                            } else if (v0 - 1 < MEM[v0]) {
                                MEM[(v0 - 1 << 5) + v0 + 32] = v86;
                                require(v86 >= v0, Error('SwapX: insufficient output amount'));
                                if (v0) {
                                    require(_wETH.code.size);
                                    v101 = _wETH.withdraw(v86).gas(msg.gas);
                                    if (!v101) {
                                        break;
                                    } else {
                                        if (v101) {
                                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                            MEM[64] = MEM[64];
                                            require(0 >= 0);
                                            v102 = v103 = fun_takeFee_32813(v86);
                                        } else {
                                            v102 = v104 = fun_takeFee_32813(v86);
                                        }
                                        if (v86 - v102 > v86) {
                                            break;
                                        } else {
                                            v105, /* uint256 */ v106 = v0.call().value(v86 - v102).gas(msg.gas);
                                            if (RETURNDATASIZE()) {
                                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                                v107 = new bytes[](RETURNDATASIZE());
                                                require(!((v107 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v107) | (v107 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                                v106 = v107.data;
                                                RETURNDATACOPY(v106, 0, RETURNDATASIZE());
                                            }
                                            require(v105, Error('SwapX: send ETH out error'));
                                        }
                                    }
                                }
                                _fun_nonReentrantBefore = 1;
                                v108 = new uint256[](MEM[v0]);
                                v109 = v110 = v108.data;
                                v111 = v0 + 32;
                                v112 = 0;
                                while (v112 < MEM[v0]) {
                                    MEM[v109] = MEM[v111];
                                    v109 += 32;
                                    v111 = v111 + 32;
                                    v112 += 1;
                                }
                                return v108;
                            }
                        }
                    }
                    revert(MEM[64], RETURNDATASIZE());
                    revert(Panic(17));
                } else {
                    require(v22 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v113 = checked_add_uint256_33142(v22);
                    require(v113 < v19.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v114, v115 = fun_getReserves(factory, address(v19[v22]), address(v19[v113]));
                    require(v22 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v116 = fun_getAmountOut(v21[v22], v115, v114);
                    v117 = checked_add_uint256_33142(v22);
                    require(v117 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                    v21[v117] = v116;
                    v22 = v22 + 1;
                }
            }
        }
    }
    revert(Panic(50));
}

function paused() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _paused;
}

function swapV2ExactIn(address tokenIn, address tokenOut, uint256 amountIn, uint256 amountOutMin, address poolAddress) public payable { 
    require(msg.data.length - 4 >= 160);
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    v0 = v1 = poolAddress;
    require(!bool(!v1), Error('SwapX: invalid pool address'));
    require(!bool(!amountIn), Error('SwapX: amout in is zero'));
    v2 = v3 = 0;
    if (!tokenIn) {
        require(msg.value >= amountIn, Error('SwapX: amount in and value mismatch'));
        v2 = v4 = 1;
        v0 = _wETH;
        v5 = _SafeSub(msg.value, amountIn);
        if (v5) {
            v6, /* uint256 */ v7 = msg.sender.call().value(v5).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v8 = v9 = new bytes[](RETURNDATASIZE());
                require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v7 = v9.data;
                RETURNDATACOPY(v7, 0, RETURNDATASIZE());
            }
            require(v6, Error('SwapX: refund ETH error'));
        }
        v10 = fun_takeFee_32813(amountIn);
        v11 = amountIn - v10;
        if (v11 <= amountIn) {
        }
    }
    if (!v2) {
        fun_pay(v0, msg.sender, poolAddress, v11);
    } else {
        fun_pay(v0, this, poolAddress, v11);
    }
    v0 = v12 = tokenOut;
    v0 = v13 = 0;
    if (!v12) {
        v0 = v14 = 1;
    }
    if (!v0) {
        v15 = v16 = MEM[64];
        v17 = v12.balanceOf(msg.sender).gas(msg.gas);
        if (v17) {
            v0 = v18 = 0;
            if (v17) {
                v19 = v20 = 3786;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v16 + 32 < v16) | (v16 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v16 + 32;
                    v21 = v22 = v16 + 32;
                }
            }
        }
    } else {
        v15 = v23 = MEM[64];
        v24 = _wETH.balanceOf(address(this)).gas(msg.gas);
        if (v24) {
            v0 = v25 = 0;
            if (v24) {
                v19 = v26 = 3699;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v23 + 32 < v23) | (v23 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v23 + 32;
                    v21 = v27 = v23 + 32;
                }
            }
        }
    }
    v28, v29 = v0.token0().gas(msg.gas);
    if (v28) {
        v29 = v30 = 0;
        if (v28) {
            v31 = v32 = 32;
            if (32 > RETURNDATASIZE()) {
                v31 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v31 + 31);
            require(MEM[64] + v31 - MEM[64] >= 32);
            require(!0xf201e97f00000000000000000000000000000000000000000000000000000000);
        }
        v33, /* uint112 */ v34, /* uint112 */ v35, /* uint32 */ v36 = v0.getReserves().gas(msg.gas);
        if (v33) {
            v34 = v37 = 0;
            v35 = v38 = 0;
            if (v33) {
                v39 = v40 = 96;
                if (96 > RETURNDATASIZE()) {
                    v39 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v39 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v39 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v39 + 31);
                require(MEM[64] + v39 - MEM[64] >= 96);
                require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                require(!(v35 - uint112(v35)));
                require(!(v36 - uint32(v36)));
            }
            v0 = address(v0) == address(v29);
            v0 = v41 = uint112(v35);
            v0 = v42 = uint112(v34);
            if (v0) {
            }
            v15 = v43 = MEM[64];
            v44 = address(v0).balanceOf(address(v0)).gas(msg.gas);
            if (v44) {
                v0 = v45 = 0x1830a;
                v0 = v46 = 3113;
                v0 = v47 = 0;
                if (v44) {
                    // Unknown jump to Block 0xd660x18c. Refer to 3-address code (TAC);
                }
            }
        }
    }
    v19 = v48 = 0x1843b;
    if (32 <= RETURNDATASIZE()) {
        require(!((v15 + 32 < v15) | (v15 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v15 + 32;
        v21 = v49 = v15 + 32;
    }
    require(!((v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < v15) | (v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v15 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
    v21 = v15 + RETURNDATASIZE();
    require(v21 - v15 >= 32);
    v0 = v50 = MEM[v15];
    // Unknown jump to Block ['0x1843b0x18c', '0xe73', '0xeca']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0xb6e. Refer to 3-address code (TAC);
    while (1) {
        revert(MEM[64], RETURNDATASIZE());
        v51 = v0 - v0;
        if (v51 <= v0) {
            // Unknown jump to Block ['0x1830a', '0xcd1', '0xdc8']. Refer to 3-address code (TAC);
            require(v51, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
            v52 = bool(v0);
            if (v52) {
                v52 = v53 = bool(v0);
            }
            require(v52, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
            v54 = fun_mul_33149(v51);
            v55 = fun_mul(v54, v0);
            v56 = fun_mul_33150(v0);
            v57 = _SafeAdd(v56, v54);
            v58 = v59 = _SafeDiv(v55, v57);
            if (!v0) {
                v58 = v60 = 0;
            } else {
                v58 = v61 = 0;
            }
            if (!v0) {
                v62 = v63 = msg.sender;
            } else {
                v62 = v64 = this;
            }
            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
            require(v0.code.size);
            v65 = new uint256[](0);
            MCOPY(v65.data, 32 + MEM[64], 0);
            MEM[v65.data] = 0;
            v66 = v0.swap(v58, v58, address(v62), v65).gas(msg.gas);
            if (v66) {
                if (v66) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                if (!v0) {
                    v15 = v67 = MEM[64];
                    v68 = v0.balanceOf(msg.sender).gas(msg.gas);
                    if (v68) {
                        v0 = v69 = 0x18487;
                        v0 = v70 = 0x184aa;
                        v0 = v71 = 3528;
                        v0 = v72 = 0;
                        if (v68) {
                            break;
                        }
                    }
                } else {
                    v0 = v73 = _wETH;
                    v15 = v74 = MEM[64];
                    v75 = v73.balanceOf(address(this)).gas(msg.gas);
                    if (v75) {
                        v0 = v76 = 3281;
                        v0 = v77 = 0;
                        if (v75) {
                            break;
                        }
                    }
                }
            }
        }
        revert(Panic(17));
    }
    require(v0.code.size);
    v78 = v0.withdraw(v51).gas(msg.gas);
    if (v78) {
        v0 = v79 = 0x18376;
        v0 = v80 = 0x18399;
        if (v78) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
        }
        v81 = fun_takeFee_32813(v51);
        v82 = _SafeSub(v51, v81);
        v83, /* uint256 */ v84 = msg.sender.call().value(v82).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v85 = v86 = new bytes[](RETURNDATASIZE());
            require(!((v86 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v86) | (v86 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v84 = v86.data;
            RETURNDATACOPY(v84, 0, RETURNDATASIZE());
        }
        require(v83, Error('SwapX: send ETH out error'));
    }
    require(v51 >= v0, Error('SwapX: insufficient output amount'));
    // Unknown jump to Block ['0x18399', '0x184aa']. Refer to 3-address code (TAC);
    _fun_nonReentrantBefore = 1;
    return v51;
    _fun_nonReentrantBefore = 1;
    return v51;
}

function amountInCached() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _amountInCached;
}

function swapMixedMultiHopExactIn((string[],bytes,address,address,bytes,address,address,address,uint256,uint256,uint256) params) public payable { 
    require(msg.data.length - 4 >= 32);
    require(params <= uint64.max);
    require(msg.data.length - params - 4 >= 352);
    v0 = v1 = allocate_memory_32809();
    require(params.length <= uint64.max);
    require(params + params.length + 4 + 31 < msg.data.length);
    require(msg.data[params + params.length + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](msg.data[params + params.length + 4]);
    require(!((v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + params.length + 4] << 5) + 31) < v2) | (v2 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + params.length + 4] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(params + params.length + 4 + (msg.data[params + params.length + 4] << 5) + 32 <= msg.data.length);
    v5 = v6 = params + params.length + 4 + 32;
    while (v5 < params + params.length + 4 + (msg.data[params + params.length + 4] << 5) + 32) {
        require(msg.data[v5] <= uint64.max);
        require(params + params.length + 4 + msg.data[v5] + 63 < msg.data.length);
        require(msg.data[params + params.length + 4 + msg.data[v5] + 32] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v7 = new bytes[](msg.data[params + params.length + 4 + msg.data[v5] + 32]);
        require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + params.length + 4 + msg.data[v5] + 32]) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + params.length + 4 + msg.data[v5] + 32]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(params + params.length + 4 + msg.data[v5] + 64 + msg.data[params + params.length + 4 + msg.data[v5] + 32] <= msg.data.length);
        CALLDATACOPY(v7.data, params + params.length + 4 + msg.data[v5] + 64, msg.data[params + params.length + 4 + msg.data[v5] + 32]);
        v7[msg.data[params + params.length + 4 + msg.data[v5] + 32]] = 0;
        MEM[v3] = v7;
        v3 = v3 + 32;
        v5 = v5 + 32;
    }
    v1.word0 = v2;
    require(msg.data[params.data] <= uint64.max);
    require(params + msg.data[params.data] + 4 + 31 < msg.data.length);
    require(msg.data[params + msg.data[params.data] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v8 = new bytes[](msg.data[params + msg.data[params.data] + 4]);
    require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params.data] + 4]) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params.data] + 4]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(params + msg.data[params.data] + 4 + 32 + msg.data[params + msg.data[params.data] + 4] <= msg.data.length);
    CALLDATACOPY(v8.data, params + msg.data[params.data] + 4 + 32, msg.data[params + msg.data[params.data] + 4]);
    v8[msg.data[params + msg.data[params.data] + 4]] = 0;
    v1.word1 = v8;
    require(!(address(msg.data[params + 68]) - msg.data[params + 68]));
    v1.word2 = msg.data[params + 68];
    require(!(address(msg.data[params + 100]) - msg.data[params + 100]));
    v1.word3 = msg.data[params + 100];
    require(msg.data[params + 132] <= uint64.max);
    require(params + msg.data[params + 132] + 4 + 31 < msg.data.length);
    require(msg.data[params + msg.data[params + 132] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new bytes[](msg.data[params + msg.data[params + 132] + 4]);
    require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params + 132] + 4]) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params + 132] + 4]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(params + msg.data[params + 132] + 4 + 32 + msg.data[params + msg.data[params + 132] + 4] <= msg.data.length);
    CALLDATACOPY(v9.data, params + msg.data[params + 132] + 4 + 32, msg.data[params + msg.data[params + 132] + 4]);
    v9[msg.data[params + msg.data[params + 132] + 4]] = 0;
    v1.word4 = v9;
    require(!(address(msg.data[params + 164]) - msg.data[params + 164]));
    v1.word5 = msg.data[params + 164];
    require(!(address(msg.data[params + 196]) - msg.data[params + 196]));
    v1.word6 = msg.data[params + 196];
    require(!(address(msg.data[params + 228]) - msg.data[params + 228]));
    v1.word7 = msg.data[params + 228];
    v1.word8 = msg.data[params + 260];
    v1.word9 = msg.data[params + 292];
    v1.word10 = msg.data[params + 324];
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    require(block.timestamp <= v1.word8, Error('Transaction too old'));
    v10 = v11 = 0;
    require(v12.length == 2, Error('SwapX: only 2 routes supported'));
    require(!bool(!v1.word9), Error('SwapX: amount in is zero'));
    v13 = v1.word1;
    v14, v0 = v15, v16 = v17 = fun_decodeFirstPool(v1.word1);
    v18 = v19 = 0;
    v16 = _wETH;
    v20 = v21 = address(v17) == _wETH;
    if (address(v17) != _wETH) {
        v20 = v22 = !address(v17);
    }
    if (v20) {
        require(msg.value >= v1.word9, Error('SwapX: amount in and value mismatch'));
        v18 = 1;
        v23 = _SafeSub(msg.value, v1.word9);
        if (v23) {
            v24, /* uint256 */ v25 = msg.sender.call().value(v23).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v26 = new bytes[](RETURNDATASIZE());
                require(!((v26 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v26) | (v26 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v25 = v26.data;
                RETURNDATACOPY(v25, 0, RETURNDATASIZE());
            }
            require(v24, Error('SwapX: refund ETH error'));
        }
        v27 = fun_takeFee_32813(v1.word9);
        v28 = _SafeSub(v1.word9, v27);
        v1.word9 = v28;
    }
    require(v29.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v30 = copy_literal_to_memory_f9446b8e937d86f0bc87cac73923491692b123ca5f8761908494703758206adf();
    v31 = v30.length;
    v32 = v30.data;
    v33 = v34 = keccak256(v30) == keccak256(MEM[MEM[v220dV0xa40.data] + 32:MEM[v220dV0xa40.data] + 32 + MEM[MEM[v220dV0xa40.data]]]);
    if (v34) {
        v35 = v1.word0;
        require(1 < v35.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v36 = copy_literal_to_memory_f9446b8e937d86f0bc87cac73923491692b123ca5f8761908494703758206adf();
        v37 = v36.length;
        v38 = v36.data;
        v33 = keccak256(v36) == keccak256(MEM[MEM[64 + v96e_0x0.word0] + 32:MEM[64 + v96e_0x0.word0] + 32 + MEM[MEM[64 + v96e_0x0.word0]]]);
    }
    if (!v33) {
        require(v39.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v40 = copy_literal_to_memory_f9446b8e937d86f0bc87cac73923491692b123ca5f8761908494703758206adf();
        v41 = v40.length;
        v42 = v40.data;
        v43 = v44 = keccak256(v40) == keccak256(MEM[MEM[v24e5V0xa40.data] + 32:MEM[v24e5V0xa40.data] + 32 + MEM[MEM[v24e5V0xa40.data]]]);
        if (v44) {
            v45 = v1.word0;
            require(1 < v45.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v46 = copy_literal_to_memory_ec97b8914cfb6741ca720b49246676ddcc2c227e4046450a8d815244c93673da();
            v47 = v46.length;
            v48 = v46.data;
            v43 = keccak256(v46) == keccak256(MEM[MEM[64 + v96e_0x0.word0] + 32:MEM[64 + v96e_0x0.word0] + 32 + MEM[MEM[64 + v96e_0x0.word0]]]);
        }
        if (!v43) {
            require(v49.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v50 = copy_literal_to_memory_ec97b8914cfb6741ca720b49246676ddcc2c227e4046450a8d815244c93673da();
            v51 = v50.length;
            v52 = v50.data;
            v53 = v54 = keccak256(v50) == keccak256(MEM[MEM[v27a4V0xa40.data] + 32:MEM[v27a4V0xa40.data] + 32 + MEM[MEM[v27a4V0xa40.data]]]);
            if (v54) {
                v55 = v1.word0;
                require(1 < v55.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v56 = copy_literal_to_memory_f9446b8e937d86f0bc87cac73923491692b123ca5f8761908494703758206adf();
                v57 = v56.length;
                v58 = v56.data;
                v53 = keccak256(v56) == keccak256(MEM[MEM[64 + v96e_0x0.word0] + 32:MEM[64 + v96e_0x0.word0] + 32 + MEM[MEM[64 + v96e_0x0.word0]]]);
            }
            if (v53) {
                v59 = v1.word4;
                v60, v61, v62 = fun_decodeFirstPool(v1.word4);
                v0 = v63 = v1 + 160;
                v64 = fun_pairFor(address(v1.word5), v62, v61);
                _factoryV3 = address(v1.word2);
                v65 = new struct(3);
                v65.word1 = bytes20(v16 << 96);
                v65[20] = bytes3(v14 << 232);
                v65[23] = bytes20(v15 << 96);
                v65.word0 = 43;
                require(!((v65 + 96 < v65) | (v65 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v66 = allocate_memory();
                v66.word0 = v65;
                v66.word1 = msg.sender;
                v66.word2 = msg.sender;
                v67 = fun_exactInputInternal_32864(address(v1.word3), v1.word9, v64, v66);
                v0 = v68 = allocate_and_zero_memory_array_array_address_dyn();
                require(v68.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[v68.data] = address(v62);
                require(1 < v68.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                MEM[64 + v68] = address(v61);
                v69 = fun_getAmountsOut(address(v1.word5), v67, v68);
                v70 = checked_sub_uint256_32899(v69.length);
                require(v70 < v69.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v71 = address(v61);
                v0 = v72 = v71 == _wETH;
                v0 = v73 = 10532;
                if (v71 != _wETH) {
                    v0 = v74 = 32;
                    v75 = address(v1.word7);
                } else {
                    v0 = v76 = 32;
                    v75 = v77 = this;
                }
                v0 = v78 = MEM[64];
                MEM[v78] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v79 = v80 = v78 + 4;
            }
        } else {
            v0 = v81 = 9625;
            v0 = v82 = v1 + 64;
            v83 = fun_pairFor(address(v1.word2), v16, v15);
            if (!v18) {
                fun_pay(v16, msg.sender, v83, v1.word9);
            } else {
                fun_pay(v16, this, v83, v1.word9);
            }
            v0 = v84 = allocate_and_zero_memory_array_array_address_dyn();
            require(v84.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[v84.data] = address(v16);
            require(1 < v84.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            MEM[64 + v84] = address(v15);
            v0 = v85 = v1 + 128;
            v86 = v1.word4;
            v87, v88, v89 = fun_decodeFirstPool(v1.word4);
            v0 = v90 = address(v88);
            v0 = v91 = v90 == _wETH;
            if (v90 != _wETH) {
                v0 = v92 = 32;
                v75 = v93 = address(v1.word7);
            } else {
                v0 = v94 = 32;
                v75 = v95 = this;
            }
            v0 = v96 = MEM[64];
            MEM[v96] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
            v79 = v97 = v96 + 4;
        }
    } else {
        v0 = v98 = 8988;
        v0 = v99 = v1 + 64;
        v100 = fun_pairFor(address(v1.word2), v16, v15);
        if (!v18) {
            fun_pay(v16, msg.sender, v100, v1.word9);
        } else {
            fun_pay(v16, this, v100, v1.word9);
        }
        v0 = v101 = allocate_and_zero_memory_array_array_address_dyn();
        require(v101.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[v101.data] = address(v16);
        require(1 < v101.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[64 + v101] = address(v15);
        v102 = v1.word4;
        v103, v104, v105 = fun_decodeFirstPool(v1.word4);
        v0 = v106 = allocate_and_zero_memory_array_array_address_dyn();
        require(v106.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[v106.data] = address(v15);
        require(1 < v106.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        MEM[64 + v106] = address(v104);
        v0 = v107 = v1 + 160;
        v0 = v108 = fun_pairFor(address(v1.word5), v15, v104);
        v0 = v109 = address(v104);
        v0 = v110 = v109 == _wETH;
        if (v109 != _wETH) {
            v0 = v111 = 32;
            v75 = v112 = address(v1.word7);
        } else {
            v0 = v113 = 32;
            v75 = v114 = this;
        }
        v0 = v115 = MEM[64];
        MEM[v115] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        v79 = v116 = v115 + 4;
    }
    while (1) {
        MEM[v79] = address(v75);
        // Unknown jump to Block ['0x231cB0xa40', '0x2387B0xa40', '0x2599B0xa40', '0x266eB0xa40', '0x2924B0xa40', '0x2956B0xa40']. Refer to 3-address code (TAC);
        v117 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v117) {
            break;
        } else {
            v0 = v118 = 9095;
            v0 = v119 = 0;
            if (v117) {
                v0 = v120 = 32;
                v0 = v121 = 9041;
                v0 = v122 = 0x18f02;
                v123 = v124 = 9383;
                v0 = v125 = 9059;
                if (v120 <= RETURNDATASIZE()) {
                    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v0 + 32;
                    v126 = v127 = v0 + v120;
                }
            }
        }
        v0 = v128 = 9059;
        v0 = v129 = 32;
        fun_swapSupportingFeeOnTransferTokens(v0, v0, address(MEM[v0]));
        if (v0) {
            v0 = v130 = this;
            v0 = v131 = address(MEM[v0]);
        }
        require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        v126 = v132 = v0 + RETURNDATASIZE();
        require(v126 - v0 >= 32);
        v0 = v133 = MEM[v0];
        // Unknown jump to Block ['0x1843b0x217bB0xa40', '0x1a4890x217bB0xa40', '0x24a7B0xa40', '0x2740B0xa40', '0x2768B0xa40', '0x2a19B0xa40']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x45460x217bB0xa40. Refer to 3-address code (TAC);
        // Unknown jump to Block 0xc1e0x217bB0xa40. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x2333B0xa40. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x25acB0xa40. Refer to 3-address code (TAC);
        if (!v0) {
            v134 = address(MEM[v0 + 224]);
        } else {
            v134 = v135 = this;
        }
        v136 = allocate_memory();
        v136.word0 = MEM[v0];
        MEM[v136 + v0] = address(this);
        v136.word2 = msg.sender;
        v137 = 64;
        if (!address(v134)) {
            v134 = v138 = this;
        }
        v139 = v140 = 0;
        v141, v142, v143 = fun_decodeFirstPool(v136.word0);
        require(v0 >= 0, SafeCastOverflow());
        if (v140 == address(v143) < address(v142)) {
            MEM[MEM[v137] + 32] = 32;
            MEM[MEM[v137] + 32 + 32] = 96;
            MEM[MEM[v137] + 32 + 128] = MEM[v136.word0];
            MCOPY(MEM[v137] + 32 + 128 + 32, 32 + v136.word0, MEM[v136.word0]);
            MEM[32 + (MEM[v136.word0] + (MEM[v137] + 32 + 128))] = 0;
            MEM[64 + (MEM[v137] + 32)] = address(v136.word1);
            MEM[MEM[v137] + 32 + 96] = address(v136.word2);
            // Unknown jump to Block ['0x19d2aB0x3bfe0x217bB0xa40', '0x19db4B0x3bfe0x217bB0xa40', '0x19eecB0x3bfe0x217bB0xa40']. Refer to 3-address code (TAC);
            v144 = v145 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v145 - 32;
            require(!((MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v144 + 31) < MEM[v137]) | (MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v144 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v144 + 31);
            v146 = v147 = MEM[v137];
            MEM[v147] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v147 + 4] = address(v134);
            MEM[v147 + 4 + 32] = address(v143) < address(v142);
            MEM[v147 + 4 + 64] = v0;
            MEM[v147 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            MEM[v147 + 4 + 128] = 160;
            MEM[v147 + 4 + 160] = MEM[MEM[v137]];
            MCOPY(v147 + 4 + 160 + 32, 32 + MEM[v137], MEM[MEM[v137]]);
            MEM[32 + (MEM[MEM[v137]] + (v147 + 4 + 160))] = 0;
            v148 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v137]]) + (v147 + 4 + 160) + 32;
            // Unknown jump to Block 0x3b970x217bB0xa40. Refer to 3-address code (TAC);
            v144 = v149 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v149 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3bfe0x217bB0xa40. Refer to 3-address code (TAC);
            v144 = v150 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v150 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3bfe0x217bB0xa40. Refer to 3-address code (TAC);
        } else {
            MEM[MEM[v137] + 32] = 32;
            MEM[MEM[v137] + 32 + 32] = 96;
            MEM[MEM[v137] + 32 + 128] = MEM[v136.word0];
            MCOPY(MEM[v137] + 32 + 128 + 32, 32 + v136.word0, MEM[v136.word0]);
            MEM[32 + (MEM[v136.word0] + (MEM[v137] + 32 + 128))] = 0;
            MEM[64 + (MEM[v137] + 32)] = address(v136.word1);
            MEM[MEM[v137] + 32 + 96] = address(v136.word2);
            // Unknown jump to Block ['0x19d2aB0x3b4f0x217bB0xa40', '0x19db4B0x3b4f0x217bB0xa40', '0x19eecB0x3b4f0x217bB0xa40']. Refer to 3-address code (TAC);
            v151 = v152 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v152 - 32;
            require(!((MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v151 + 31) < MEM[v137]) | (MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v151 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v137] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v151 + 31);
            v146 = MEM[v137];
            MEM[v146] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v146 + 4] = address(v134);
            MEM[v146 + 4 + 32] = address(v143) < address(v142);
            MEM[v146 + 4 + 64] = v0;
            MEM[v146 + 4 + 96] = address(0x1000276a4);
            MEM[v146 + 4 + 128] = 160;
            MEM[v146 + 4 + 160] = MEM[MEM[v137]];
            MCOPY(v146 + 4 + 160 + 32, 32 + MEM[v137], MEM[MEM[v137]]);
            MEM[32 + (MEM[MEM[v137]] + (v146 + 4 + 160))] = 0;
            v148 = v153 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v137]]) + (v146 + 4 + 160) + 32;
            v151 = v154 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v154 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3b4f0x217bB0xa40. Refer to 3-address code (TAC);
            v151 = v155 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v136.word0]) + (MEM[v137] + 32 + 128) + 32 - MEM[v137];
            MEM[MEM[v137]] = v155 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3b4f0x217bB0xa40. Refer to 3-address code (TAC);
        }
        v156 = address(v0).call(MEM[v217b0x19d59V0xa40:v217b0x19d59V0xa40 + v118dV0x3ac0V0x19de10x217bV0xa40 - v217b0x19d59V0xa40], MEM[v217b0x19d59V0xa40:v217b0x19d59V0xa40 + v217b0x3b0fV0xa40]).value(v139).gas(msg.gas);
        if (!v156) {
            break;
        } else {
            v157 = v158 = 0;
            v157 = v159 = 0;
            if (v156) {
                v160 = 64;
                if (64 > RETURNDATASIZE()) {
                    v160 = v161 = RETURNDATASIZE();
                }
                require(!((v146 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v160 + 31) < v146) | (v146 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v160 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v146 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v160 + 31);
                require(v146 + v160 - v146 >= 64);
                v157 = v162 = MEM[v146];
                v157 = v163 = MEM[v146 + 32];
            }
            if (address(v143) < address(v142)) {
            }
            if (v157 == int256.min) {
                break;
            } else if (v0) {
                v75 = v164 = this;
                v0 = v165 = MEM[64];
                MEM[v165] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
                v79 = v166 = v165 + 4;
            }
        }
        v167 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v167) {
            break;
        } else {
            v0 = v168 = 9121;
            v0 = v169 = 0;
            if (!v167) {
            }
        }
        v123 = 0x1843b;
        if (32 <= RETURNDATASIZE()) {
            require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v0 + 32;
            v126 = v170 = v0 + 32;
        }
        v10 = v0 - v0;
        if (v10 > v0) {
            break;
        } else {
            // Unknown jump to Block ['0x1a3f70x217bB0xa40', '0x23a1B0xa40', '0x2688B0xa40', '0x2970B0xa40']. Refer to 3-address code (TAC);
            require(v10, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
            v171 = bool(v0);
            if (v171) {
                v171 = v172 = bool(v0);
            }
            require(v171, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
            v173 = fun_mul_33149(v10);
            v174 = fun_mul(v173, v0);
            v175 = fun_mul_33150(v0);
            v176 = _SafeAdd(v175, v173);
            v177 = v178 = _SafeDiv(v174, v176);
            if (!v0) {
                v177 = 0;
            } else {
                v177 = v179 = 0;
            }
            v180 = checked_sub_uint256_33146(MEM[v0]);
            if (v0 < v180) {
                v181 = checked_add_uint256_33147(v0);
                require(v181 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v0 = v182 = fun_pairFor(v0, v0, address(MEM[(v181 << 5) + v0 + 32]));
            }
            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
            require(v0.code.size);
            v183 = new uint256[](0);
            MCOPY(v183.data, 32 + MEM[64], 0);
            MEM[v183.data] = 0;
            v184 = v0.swap(v177, v177, address(v0), v183).gas(msg.gas);
            if (!v184) {
                break;
            } else {
                if (v184) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v0 = v0 + 1;
            }
            if (v0) {
                require(_wETH.code.size);
                v185 = _wETH.withdraw(v10).gas(msg.gas);
                if (!v185) {
                    break;
                } else {
                    if (v185) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v186 = v187 = 9275;
                    v188 = v189 = 0;
                    v190 = v191 = fun_takeFee_32813(v10);
                    v192 = v193 = 0x1af45;
                    v194 = v195 = address(MEM[v0 + 224]);
                }
            }
            v196 = v197 = 0x23af(v0, 320, 0x18da2);
            _fun_nonReentrantBefore = 1;
            // Unknown jump to Block 0x18270. Refer to 3-address code (TAC);
            v198 = _SafeSub(v10, v190);
            v199 = v194.call(MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40], MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40]).value(v198).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v200 = new bytes[](RETURNDATASIZE());
                require(!((v200 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v200) | (v200 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v200.data, 0, RETURNDATASIZE());
            }
            require(v199, Error('SwapX: send ETH out error'));
            v201 = v194.call(MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40], MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40]).value(v198).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v202 = new bytes[](RETURNDATASIZE());
                require(!((v202 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v202) | (v202 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v202.data, 0, RETURNDATASIZE());
            }
            require(v201, Error('SwapX: send ETH out error'));
            v203 = v194.call(MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40], MEM[v1b0f0_0x5V0xa40:v1b0f0_0x5V0xa40 + v1b0f0_0x5V0xa40]).value(v198).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v204 = new bytes[](RETURNDATASIZE());
                require(!((v204 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v204) | (v204 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                RETURNDATACOPY(v204.data, 0, RETURNDATASIZE());
            }
            require(v203, Error('SwapX: send ETH out error'));
            if (v0) {
                require(_wETH.code.size);
                v205 = _wETH.withdraw(v10).gas(msg.gas);
                if (!v205) {
                    break;
                } else {
                    if (v205) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v186 = v206 = 9978;
                    v188 = v207 = 0;
                    v190 = v208 = fun_takeFee_32813(v10);
                    v192 = v209 = 0x1b02d;
                    v194 = v210 = address(MEM[v0 + 224]);
                }
            }
            v196 = v211 = 0x23af(v0, 320, 0x190ac);
            _fun_nonReentrantBefore = 1;
            // Unknown jump to Block 0x18270. Refer to 3-address code (TAC);
            if (v0) {
                require(_wETH.code.size);
                v212 = _wETH.withdraw(v10).gas(msg.gas);
                if (!v212) {
                    break;
                } else {
                    if (v212) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                    }
                    v186 = v213 = 10719;
                    v188 = v214 = 0;
                    v190 = v215 = fun_takeFee_32813(v10);
                    v192 = v216 = 0x1b0f0;
                    v194 = address(MEM[v0 + 224]);
                }
            }
            // Unknown jump to Block 0x27bdB0xa40. Refer to 3-address code (TAC);
        }
        v217 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v217) {
            break;
        } else {
            v0 = v218 = 0;
            if (v217) {
                v0 = v219 = 0x191c3;
                v123 = v220 = 10088;
                v0 = v221 = 0x191f2;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v0 + 32;
                    v126 = v222 = v0 + 32;
                }
            }
        }
        fun_swapSupportingFeeOnTransferTokens(v0, this, address(MEM[v0]));
        _factoryV3 = address(MEM[v0 + 160]);
        v0 = v223 = address(MEM[v0 + 192]);
        v0 = v224 = MEM[64];
        v225 = address(v0).balanceOf(address(this)).gas(msg.gas);
        if (!v225) {
            break;
        } else {
            v0 = v226 = 9838;
            v0 = v227 = 32;
            v0 = v228 = 9802;
            v0 = v229 = 0;
            if (v225) {
                v123 = v230 = 10048;
                if (v227 <= RETURNDATASIZE()) {
                    require(!((v224 + 32 < v224) | (v224 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v224 + 32;
                    v126 = v231 = v224 + v227;
                }
            }
        }
        v232 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v232) {
            break;
        } else {
            v0 = v233 = 9864;
            v0 = v234 = 0;
            if (!v232) {
            }
        }
        v235 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v235) {
            break;
        } else {
            v0 = v236 = 10582;
            v0 = v237 = 0;
            if (v235) {
                v0 = v238 = 32;
                v123 = v239 = 10777;
                v0 = v240 = 9059;
                if (v238 <= RETURNDATASIZE()) {
                    require(!((v0 + 32 < v0) | (v0 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v0 + 32;
                    v126 = v241 = v0 + v238;
                }
            }
        }
        v0 = v242 = 9059;
        v0 = v243 = 32;
        if (0 != v0) {
            v0 = v244 = this;
            v0 = v245 = address(MEM[v0]);
        }
        v0 = v246 = address(MEM[v0 + 224]);
        v0 = v247 = address(MEM[v0]);
        // Unknown jump to Block 0x43720x217bB0xa40. Refer to 3-address code (TAC);
        v0 = v248 = 0;
        v249 = checked_sub_uint256_32899(MEM[v0]);
        if (v0 >= v249) {
            if (v0) {
                v75 = v250 = this;
            }
        } else {
            require(v0 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v251 = checked_add_uint256_33142(v0);
            require(v251 < MEM[v0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0 = v252 = address(MEM[(v251 << 5) + v0 + 32]);
            v253, v254 = fun_sortTokens(address(MEM[(v0 << 5) + v0 + 32]), v252);
            v255 = fun_pairFor(v0, address(MEM[(v0 << 5) + v0 + 32]), v252);
            v0 = address(v255);
            v256, /* uint112 */ v257, /* uint112 */ v258, /* uint32 */ v259 = v0.getReserves().gas(msg.gas);
            if (!v256) {
                break;
            } else {
                v257 = v260 = 0;
                v258 = v261 = 0;
                if (v256) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                        v262 = v263 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v262 = v264 = MEM[64] + 96;
                    }
                    require(v262 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v258 - uint112(v258)));
                    require(!(v259 - uint32(v259)));
                }
                v0 = v265 = address(MEM[(v0 << 5) + v0 + 32]) == address(v254);
                v0 = v266 = uint112(v258);
                v0 = v267 = uint112(v257);
                if (v265) {
                }
                v0 = v268 = MEM[64];
                v269 = address(MEM[(v0 << 5) + v0 + 32]).balanceOf(address(v0)).gas(msg.gas);
                if (!v269) {
                    break;
                } else {
                    v0 = v270 = 0x1a3f7;
                    v0 = v271 = 17494;
                    v0 = v272 = 0;
                    if (v269) {
                        v123 = v273 = 0x1a489;
                        if (32 <= RETURNDATASIZE()) {
                            require(!((v268 + 32 < v268) | (v268 + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v268 + 32;
                            v126 = v274 = v268 + 32;
                        }
                    }
                }
            }
        }
        v0 = v275 = MEM[64];
        MEM[v275] = 0x70a0823100000000000000000000000000000000000000000000000000000000;
        v79 = v276 = v275 + 4;
        continue;
        v75 = v277 = address(MEM[v0 + 224]);
        // Unknown jump to Block 0x236cB0xa40. Refer to 3-address code (TAC);
        v278 = v0.staticcall(MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + 32 + v4140x217b_0x0V0xa40 - v2c3V0x1a3af0x217bV0xa40], MEM[v2c3V0x1a3af0x217bV0xa40:v2c3V0x1a3af0x217bV0xa40 + v2c3V0x1a3af0x217bV0xa40]).gas(msg.gas);
        if (!v278) {
            break;
        } else {
            v0 = v279 = 10608;
            v0 = v280 = 0;
            if (!v278) {
            }
        }
    }
    revert(MEM[64], RETURNDATASIZE());
    revert(Panic(17));
    v196 = v281 = 0x23af(v0, 320, 0x1929b);
    _fun_nonReentrantBefore = 1;
    return v196;
}

function unpause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - _owner), OwnableUnauthorizedAccount(msg.sender));
    require(!(_paused - 1), Error('unpaused already'));
    require(_paused, ExpectedPause());
    _paused = 0;
    emit Unpaused(msg.sender);
}

function swapV3MultiHopExactIn((address[],address[],bytes,address,uint256,uint256,uint256) params) public payable { 
    require(msg.data.length - 4 >= 32);
    require(params <= uint64.max);
    require(msg.data.length - params - 4 >= 224);
    v0 = allocate_memory_32805();
    require(params.length <= uint64.max);
    require(params + params.length + 4 + 31 < msg.data.length);
    v1 = v2 = params + params.length + 4 + 32;
    require(msg.data[params + params.length + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new uint256[](msg.data[params + params.length + 4]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + params.length + 4] << 5) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + params.length + 4] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v4 = v3.data;
    require(v2 + (msg.data[params + params.length + 4] << 5) <= msg.data.length);
    while (v1 < v2 + (msg.data[params + params.length + 4] << 5)) {
        require(!(address(msg.data[v1]) - msg.data[v1]));
        MEM[v4] = msg.data[v1];
        v4 = v4 + 32;
        v1 = v1 + 32;
    }
    v0.word0 = v3;
    require(msg.data[params.data] <= uint64.max);
    require(params + msg.data[params.data] + 4 + 31 < msg.data.length);
    v5 = v6 = params + msg.data[params.data] + 4 + 32;
    require(msg.data[params + msg.data[params.data] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v7 = new uint256[](msg.data[params + msg.data[params.data] + 4]);
    require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + msg.data[params.data] + 4] << 5) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (msg.data[params + msg.data[params.data] + 4] << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v8 = v7.data;
    require(v6 + (msg.data[params + msg.data[params.data] + 4] << 5) <= msg.data.length);
    while (v5 < v6 + (msg.data[params + msg.data[params.data] + 4] << 5)) {
        require(!(address(msg.data[v5]) - msg.data[v5]));
        MEM[v8] = msg.data[v5];
        v8 = v8 + 32;
        v5 = v5 + 32;
    }
    v0.word1 = v7;
    require(msg.data[params + 68] <= uint64.max);
    require(params + msg.data[params + 68] + 4 + 31 < msg.data.length);
    require(msg.data[params + msg.data[params + 68] + 4] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new bytes[](msg.data[params + msg.data[params + 68] + 4]);
    require(!((v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params + 68] + 4]) + 31) < v9) | (v9 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[params + msg.data[params + 68] + 4]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(params + msg.data[params + 68] + 4 + 32 + msg.data[params + msg.data[params + 68] + 4] <= msg.data.length);
    CALLDATACOPY(v9.data, params + msg.data[params + 68] + 4 + 32, msg.data[params + msg.data[params + 68] + 4]);
    v9[msg.data[params + msg.data[params + 68] + 4]] = 0;
    v0.word2 = v9;
    require(!(address(msg.data[params + 100]) - msg.data[params + 100]));
    v0.word3 = msg.data[params + 100];
    v0.word4 = msg.data[params + 132];
    v0.word5 = msg.data[params + 164];
    v0.word6 = msg.data[params + 196];
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    require(block.timestamp <= v0.word4, Error('Transaction too old'));
    require(!bool(!v0.word5), Error('SwapX: amount in is zero'));
    if (msg.value) {
        require(msg.value >= v0.word5, Error('SwapX: amount in and value mismatch'));
        v10 = _SafeSub(msg.value, v0.word5);
        if (v10) {
            v11, /* uint256 */ v12 = msg.sender.call().value(v10).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v13 = new bytes[](RETURNDATASIZE());
                require(!((v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v13) | (v13 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v12 = v13.data;
                RETURNDATACOPY(v12, 0, RETURNDATASIZE());
            }
            require(v11, Error('SwapX: refund ETH error'));
        }
    }
    v14 = v0.word2;
    v15, v16, v17 = fun_decodeFirstPool(v0.word2);
    v18 = v19 = address(v17) == _wETH;
    if (address(v17) != _wETH) {
        v18 = v20 = !address(v17);
    }
    if (v18) {
        v21 = fun_takeFee_32813(v0.word5);
        v22 = _SafeSub(v0.word5, v21);
        v0.word5 = v22;
    }
    v23 = 0;
    v24 = v25 = msg.sender;
    while (1) {
        if (66 > v26.length) {
            v27 = v0.word2;
            v28, v29, v30 = fun_decodeFirstPool(v0.word2);
            if (!(address(v29) - _wETH)) {
                v23 = v31 = 1;
            }
        }
        require(v23 < v32.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        _factoryV3 = address(v32[v23]);
        require(v23 < v33.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v34 = address(v33[v23]);
        if (66 > v26.length) {
            if (!v23) {
                v35 = address(v0.word3);
            } else {
                v35 = v36 = this;
            }
        } else {
            v35 = v37 = this;
        }
        v38 = v0.word2;
        v39 = checked_add_uint256_33172(43);
        require(v39 >= 43, Error('slice_overflow'));
        v40 = _SafeAdd(0, 43);
        require(1, Error('slice_overflow'));
        v41 = _SafeAdd(0, 43);
        require(v41 <= v38.length, Error('slice_outOfBounds'));
        if (43) {
            v42 = v43 = MEM[64];
            v44 = v45 = v43 + 11;
            v46 = v47 = v0.word2 + 11;
            while (v44 < v45 + 43) {
                MEM[v44] = MEM[v46];
                v44 = v44 + 32;
                v46 = v46 + 32;
            }
            MEM[v43] = 43;
        } else {
            v42 = MEM[64];
            MEM[v42] = 0;
        }
        v48 = allocate_memory();
        v48.word0 = v42;
        v48.word1 = address(v24);
        v48.word2 = msg.sender;
        v49 = 64;
        if (!address(v35)) {
            v35 = v50 = this;
        }
        v51 = v52 = 0;
        v53, v54, v55 = fun_decodeFirstPool(v48.word0);
        require(v0.word5 >= 0, SafeCastOverflow());
        if (v52 == address(v55) < address(v54)) {
            MEM[MEM[v49] + 32] = 32;
            MEM[MEM[v49] + 32 + 32] = 96;
            MEM[MEM[v49] + 32 + 128] = MEM[v48.word0];
            MCOPY(MEM[v49] + 32 + 128 + 32, 32 + v48.word0, MEM[v48.word0]);
            MEM[32 + (MEM[v48.word0] + (MEM[v49] + 32 + 128))] = 0;
            MEM[64 + (MEM[v49] + 32)] = address(v48.word1);
            MEM[MEM[v49] + 32 + 96] = address(v48.word2);
            // Unknown jump to Block ['0x19d2aB0x3bfe0x1e6bB0x7e0', '0x19db4B0x3bfe0x1e6bB0x7e0', '0x19eecB0x3bfe0x1e6bB0x7e0']. Refer to 3-address code (TAC);
            v56 = v57 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v57 - 32;
            require(!((MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) < MEM[v49]) | (MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v56 + 31);
            v58 = v59 = MEM[v49];
            MEM[v59] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v59 + 4] = address(v35);
            MEM[v59 + 4 + 32] = address(v55) < address(v54);
            MEM[v59 + 4 + 64] = v0.word5;
            MEM[v59 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
            MEM[v59 + 4 + 128] = 160;
            MEM[v59 + 4 + 160] = MEM[MEM[v49]];
            MCOPY(v59 + 4 + 160 + 32, 32 + MEM[v49], MEM[MEM[v49]]);
            MEM[32 + (MEM[MEM[v49]] + (v59 + 4 + 160))] = 0;
            v60 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v49]]) + (v59 + 4 + 160) + 32;
            // Unknown jump to Block 0x3b970x1e6bB0x7e0. Refer to 3-address code (TAC);
            v56 = v61 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v61 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3bfe0x1e6bB0x7e0. Refer to 3-address code (TAC);
            v56 = v62 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v62 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3bfe0x1e6bB0x7e0. Refer to 3-address code (TAC);
        } else {
            MEM[MEM[v49] + 32] = 32;
            MEM[MEM[v49] + 32 + 32] = 96;
            MEM[MEM[v49] + 32 + 128] = MEM[v48.word0];
            MCOPY(MEM[v49] + 32 + 128 + 32, 32 + v48.word0, MEM[v48.word0]);
            MEM[32 + (MEM[v48.word0] + (MEM[v49] + 32 + 128))] = 0;
            MEM[64 + (MEM[v49] + 32)] = address(v48.word1);
            MEM[MEM[v49] + 32 + 96] = address(v48.word2);
            // Unknown jump to Block ['0x19d2aB0x3b4f0x1e6bB0x7e0', '0x19db4B0x3b4f0x1e6bB0x7e0', '0x19eecB0x3b4f0x1e6bB0x7e0']. Refer to 3-address code (TAC);
            v63 = v64 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v64 - 32;
            require(!((MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v63 + 31) < MEM[v49]) | (MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v63 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[v49] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v63 + 31);
            v58 = MEM[v49];
            MEM[v58] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
            MEM[v58 + 4] = address(v35);
            MEM[v58 + 4 + 32] = address(v55) < address(v54);
            MEM[v58 + 4 + 64] = v0.word5;
            MEM[v58 + 4 + 96] = address(0x1000276a4);
            MEM[v58 + 4 + 128] = 160;
            MEM[v58 + 4 + 160] = MEM[MEM[v49]];
            MCOPY(v58 + 4 + 160 + 32, 32 + MEM[v49], MEM[MEM[v49]]);
            MEM[32 + (MEM[MEM[v49]] + (v58 + 4 + 160))] = 0;
            v60 = v65 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v49]]) + (v58 + 4 + 160) + 32;
            v63 = v66 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v66 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3b4f0x1e6bB0x7e0. Refer to 3-address code (TAC);
            v63 = v67 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[v48.word0]) + (MEM[v49] + 32 + 128) + 32 - MEM[v49];
            MEM[MEM[v49]] = v67 - 32;
            // Unknown jump to Block 0x2380x3b5fB0x3b4f0x1e6bB0x7e0. Refer to 3-address code (TAC);
        }
        v68 = address(v34).call(MEM[v1e6b0x19d59V0x7e0:v1e6b0x19d59V0x7e0 + v118dV0x3ac0V0x19de10x1e6bV0x7e0 - v1e6b0x19d59V0x7e0], MEM[v1e6b0x19d59V0x7e0:v1e6b0x19d59V0x7e0 + v1e6b0x3b0fV0x7e0]).value(v51).gas(msg.gas);
        if (v68) {
            v69 = v70 = 0;
            v69 = v71 = 0;
            if (v68) {
                v72 = 64;
                if (64 > RETURNDATASIZE()) {
                    v72 = v73 = RETURNDATASIZE();
                }
                require(!((v58 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v72 + 31) < v58) | (v58 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v72 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v58 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v72 + 31);
                require(v58 + v72 - v58 >= 64);
                v69 = v74 = MEM[v58];
                v69 = v75 = MEM[v58 + 32];
            }
            if (address(v55) < address(v54)) {
            }
            if (v69 != int256.min) {
                v0.word5 = 0 - v69;
                if (66 > v26.length) {
                    require(0 - v69 >= v0.word6, Error('SwapX: too little received'));
                    if (v23) {
                        require(_wETH.code.size);
                        v76 = _wETH.withdraw(0 - v69).gas(msg.gas);
                        if (v76) {
                            if (v76) {
                                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                                require(0 >= 0);
                            }
                            v77 = fun_takeFee_32813(0 - v69);
                            v78 = _SafeSub(0 - v69, v77);
                            v79, /* uint256 */ v80 = address(v0.word3).call().value(v78).gas(msg.gas);
                            if (RETURNDATASIZE()) {
                                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                                v81 = new bytes[](RETURNDATASIZE());
                                require(!((v81 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v81) | (v81 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                                v80 = v81.data;
                                RETURNDATACOPY(v80, 0, RETURNDATASIZE());
                            }
                            require(v79, Error('SwapX: send ETH out error'));
                            _fun_nonReentrantBefore = 1;
                        }
                    } else {
                        _fun_nonReentrantBefore = 1;
                    }
                    return 0 - v69;
                } else {
                    v24 = this;
                    v82 = v0.word2;
                    if (v82.length - 23 <= v82.length) {
                        v83 = checked_add_uint256_33172(v82.length - 23);
                        require(v83 >= v82.length - 23, Error('slice_overflow'));
                        v84 = _SafeAdd(23, v82.length - 23);
                        require(v84 >= 23, Error('slice_overflow'));
                        v85 = _SafeAdd(23, v82.length - 23);
                        require(v85 <= v82.length, Error('slice_outOfBounds'));
                        if (v82.length - 23) {
                            v86 = v87 = MEM[64];
                            v88 = v89 = v87 + (v82.length - 23 & 0x1f) + (!(v82.length - 23 & 0x1f) << 5);
                            v90 = v91 = v0.word2 + (v82.length - 23 & 0x1f) + (!(v82.length - 23 & 0x1f) << 5) + 23;
                            while (v88 < v89 + v82.length - 23) {
                                MEM[v88] = MEM[v90];
                                v88 = v88 + 32;
                                v90 = v90 + 32;
                            }
                            MEM[v87] = v82.length - 23;
                        } else {
                            v86 = MEM[64];
                            MEM[v86] = 0;
                        }
                        v0.word2 = v86;
                        if (v23 != uint256.max) {
                            v23 += 1;
                        }
                    }
                }
            }
            revert(Panic(17));
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    v0 = v1 = amount0Delta > 0;
    if (amount0Delta <= 0) {
        v0 = v2 = amount1Delta > 0;
    }
    require(v0);
    require(data.data + data.length - data.data >= 32);
    require(msg.data[data.data] <= uint64.max);
    require(data.data + data.length - (data.data + msg.data[data.data]) >= 96);
    v3 = new struct(3);
    require(!((v3 + 96 < v3) | (v3 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[data.data + msg.data[data.data]] <= uint64.max);
    require(data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 31 < data.data + data.length);
    require(msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v4 = new bytes[](msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]);
    require(!((v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]) + 31) < v4) | (v4 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 32 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]] <= data.data + data.length);
    CALLDATACOPY(v4.data, data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 32, msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]);
    v4[msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]] = 0;
    v3.word0 = v4;
    require(!(address(msg.data[data.data + msg.data[data.data] + 32]) - msg.data[data.data + msg.data[data.data] + 32]));
    v3.word1 = msg.data[data.data + msg.data[data.data] + 32];
    require(!(address(msg.data[data.data + msg.data[data.data] + 64]) - msg.data[data.data + msg.data[data.data] + 64]));
    v3.word2 = msg.data[data.data + msg.data[data.data] + 64];
    v5 = v3.word0;
    v6, v7 = v8, v7 = v9 = fun_decodeFirstPool(v3.word0);
    v10 = new struct(4);
    require(!((v10 + 128 > uint64.max) | (v10 + 128 < v10)), Panic(65)); // failed memory allocation (too much memory)
    v10.word0 = 0;
    v10.word1 = 0;
    v10.word2 = 0;
    v10.word3 = 0;
    if (address(v9) <= address(v8)) {
    }
    v11 = new struct(4);
    require(!((v11 + 128 > uint64.max) | (v11 + 128 < v11)), Panic(65)); // failed memory allocation (too much memory)
    v11.word0 = address(v7);
    v11.word1 = address(v7);
    v11.word2 = uint24(v6);
    v11.word3 = 0;
    require(address(v11.word0) < address(v11.word1), Error('PoolAddress: token0 > token1'));
    MEM[v12.data] = address(v11.word0);
    MEM[MEM[64] + 64] = address(v11.word1);
    MEM[MEM[64] + 96] = uint24(v11.word2);
    v13 = 0x1b285(MEM[64] + 128, MEM[64], 20093);
    MEM[v14.data] = 0xff00000000000000000000000000000000000000000000000000000000000000;
    MEM[MEM[64] + 33] = 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9000000000000000000000000;
    MEM[MEM[64] + 53] = keccak256(MEM[v1a84c.data:v1a84c.data + v1a879_0x0.length]);
    MEM[MEM[64] + 85] = 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2;
    v15 = 0x1a940(MEM[64] + 117, MEM[64], 0x1a916);
    MEM[0] = keccak256(MEM[v4e83.data:v4e83.data + v4eea_0x0.length]);
    require(address(keccak256(MEM[v4e83.data:v4e83.data + v4eea_0x0.length])) == msg.sender, Error('CallbackValidation: sender is not the pool'));
    if (amount0Delta <= 0) {
        v16 = v17 = address(v8) < address(v9);
    } else {
        v16 = v18 = address(v9) < address(v8);
    }
    if (v16) {
        fun_pay(v9, address(v3.word1), msg.sender, v19);
        if (address(v9) - _wETH) {
            v20, v21 = address(v9).balanceOf(address(this)).gas(msg.gas);
            require(v20, MEM[64], RETURNDATASIZE());
            v21 = v22 = 0;
            if (v20) {
                v23 = 32;
                if (32 > RETURNDATASIZE()) {
                    v23 = v24 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v23 + 31);
                require(MEM[64] + v23 - MEM[64] >= 32);
            }
        } else {
            v21 = this.balance;
        }
        if (v21) {
            fun_pay(v9, this, address(v3.word2), v21);
            exit;
        } else {
            exit;
        }
    } else {
        exit;
    }
}

function 0x1a940(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x236b7db2() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_d0_0_19;
}

function 0x1aae1(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1ac61(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function factoryV3() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _factoryV3;
}

function 0x1b285(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1b2d3(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function 0x1b321(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & varg0 - varg1 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(data + 35 < msg.data.length);
    require(data.length <= uint64.max);
    require(data + data.length + 36 <= msg.data.length);
    if (amount0Delta <= 0) {
        require(amount1Delta > 0);
        v0 = data.data + data.length;
    } else {
        require(amount0Delta > 0);
        v0 = v1 = data.data + data.length;
    }
    require(v0 - data.data >= 32);
    require(msg.data[data.data] <= uint64.max);
    require(v0 - (data.data + msg.data[data.data]) >= 96);
    v2 = new struct(3);
    require(!((v2 + 96 < v2) | (v2 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(msg.data[data.data + msg.data[data.data]] <= uint64.max);
    require(data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 31 < v0);
    require(msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v3 = new bytes[](msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]);
    require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 32 + msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]] <= v0);
    CALLDATACOPY(v3.data, data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]] + 32, msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]);
    v3[msg.data[data.data + msg.data[data.data] + msg.data[data.data + msg.data[data.data]]]] = 0;
    v2.word0 = v3;
    require(!(address(msg.data[data.data + msg.data[data.data] + 32]) - msg.data[data.data + msg.data[data.data] + 32]));
    v2.word1 = msg.data[data.data + msg.data[data.data] + 32];
    require(!(address(msg.data[data.data + msg.data[data.data] + 64]) - msg.data[data.data + msg.data[data.data] + 64]));
    v2.word2 = msg.data[data.data + msg.data[data.data] + 64];
    v4, v5 = msg.sender.factory().gas(msg.gas);
    if (v4) {
        v5 = v6 = 0;
        if (v4) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                v7 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v7 = v8 = MEM[64] + 32;
            }
            require(v7 - MEM[64] >= 32);
            require(!0x3ba5feab00000000000000000000000000000000000000000000000000000000);
        }
        if (address(v5) - 0x1f98431c8ad98523631ae4a59f267346ea31f984) {
            require(!(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f - address(v5)), Error('SwapX: Invalid pool'));
            v9 = v2.word0;
            v10, v11 = v12, v13 = v14 = fun_decodeFirstPool(v2.word0);
            v15 = fun_getPoolKey(v14, v12, v10);
            require(address(v15.word0) < address(v15.word1), Error('PoolAddress: token0 > token1'));
            MEM[v16.data] = address(v15.word0);
            MEM[MEM[64] + 64] = address(v15.word1);
            MEM[MEM[64] + 96] = uint24(v15.word2);
            v17 = 0x1b2d3(MEM[64] + 128, MEM[64], 20292);
            MEM[v18.data] = 0xff00000000000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 33] = 0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f000000000000000000000000;
            MEM[MEM[64] + 53] = keccak256(MEM[v1aa1aV0x1811.data:v1aa1aV0x1811.data + v1aa47_0x0V0x1811.length]);
            MEM[0] = MEM[0];
            MEM[MEM[64] + 85] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
            v19 = 0x1aae1(MEM[64] + 117, MEM[64], 0x1aab7);
            MEM[0] = keccak256(MEM[v4f4aV0x1811.data:v4f4aV0x1811.data + v4f9e_0x0V0x1811.length]);
            require(address(keccak256(MEM[v4f4aV0x1811.data:v4f4aV0x1811.data + v4f9e_0x0V0x1811.length])) == msg.sender, Error('CallbackValidation: sender is not the pool'));
        } else {
            v20 = v2.word0;
            v21, v11 = v22, v13 = v23 = fun_decodeFirstPool(v2.word0);
            v24 = fun_getPoolKey(v23, v22, v21);
            require(address(v24.word0) < address(v24.word1), Error('PoolAddress: token0 > token1'));
            MEM[v25.data] = address(v24.word0);
            MEM[MEM[64] + 64] = address(v24.word1);
            MEM[MEM[64] + 96] = uint24(v24.word2);
            v26 = 0x1b321(MEM[64] + 128, MEM[64], 20440);
            MEM[v27.data] = 0xff00000000000000000000000000000000000000000000000000000000000000;
            MEM[MEM[64] + 33] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000;
            MEM[MEM[64] + 53] = keccak256(MEM[v1ab9aV0x1795.data:v1ab9aV0x1795.data + v1abc7_0x0V0x1795.length]);
            MEM[0] = MEM[0];
            MEM[MEM[64] + 85] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54;
            v28 = 0x1ac61(MEM[64] + 117, MEM[64], 0x1ac37);
            MEM[0] = keccak256(MEM[v4fdeV0x1795.data:v4fdeV0x1795.data + v5032_0x0V0x1795.length]);
            require(address(keccak256(MEM[v4fdeV0x1795.data:v4fdeV0x1795.data + v5032_0x0V0x1795.length])) == msg.sender, Error('CallbackValidation: sender is not the pool'));
        }
        if (amount0Delta <= 0) {
            v29 = v30 = address(v11) < address(v13);
        } else {
            v29 = v31 = address(v13) < address(v11);
        }
        if (v29) {
            fun_pay(v13, address(v2.word1), msg.sender, v32);
            if (address(v13) - _wETH) {
                v33, v34 = address(v13).balanceOf(address(this)).gas(msg.gas);
                if (v33) {
                    v34 = v35 = 0;
                    if (v33) {
                        v36 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v36 = v37 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31);
                        require(MEM[64] + v36 - MEM[64] >= 32);
                    }
                }
            } else {
                v34 = this.balance;
            }
            if (v34) {
                fun_pay(v13, this, address(v2.word2), v34);
                exit;
            } else {
                exit;
            }
        } else {
            exit;
        }
    }
    revert(MEM[64], RETURNDATASIZE());
}

function swapV3ExactIn(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint24 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9) public payable { 
    require(msg.data.length - 4 >= 320);
    v0 = allocate_memory_32788();
    require(!(address(varg0) - varg0));
    v0.word0 = varg0;
    require(!(address(varg1) - varg1));
    v0.word1 = varg1;
    require(!(address(varg2) - varg2));
    v0.word2 = varg2;
    require(!(address(varg3) - varg3));
    v0.word3 = varg3;
    v0.word4 = varg4;
    require(!(address(varg5) - varg5));
    v0.word5 = varg5;
    v0.word6 = varg6;
    v0.word7 = varg7;
    v0.word8 = varg8;
    require(!(address(varg9) - varg9));
    v0.word9 = varg9;
    fun_nonReentrantBefore();
    require(!_paused, EnforcedPause());
    require(block.timestamp <= v0.word6, Error('Transaction too old'));
    require(!bool(!v0.word7), Error('SwapX: amount in is zero'));
    v1 = v2 = address(v0.word2) == _wETH;
    if (address(v0.word2) != _wETH) {
        v1 = v3 = !address(v0.word2);
    }
    if (v1) {
        v0.word2 = _wETH;
        require(msg.value >= v0.word7, Error('SwapX: amount in and value mismatch'));
        v4 = _SafeSub(msg.value, v0.word7);
        if (v4) {
            v5, /* uint256 */ v6 = msg.sender.call().value(v4).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v7 = new bytes[](RETURNDATASIZE());
                require(!((v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v7) | (v7 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v6 = v7.data;
                RETURNDATACOPY(v6, 0, RETURNDATASIZE());
            }
            require(v5, Error('SwapX: refund ETH error'));
        }
    }
    v8 = 0;
    if (address(v0.word3) == _wETH) {
        v8 = v9 = 1;
    }
    if (!v8) {
        v10 = fun_takeFee(address(v0.word2), v0.word7);
        v11 = _SafeSub(v0.word7, v10);
        v0.word7 = v11;
    }
    _factoryV3 = address(v0.word0);
    v12 = address(v0.word1);
    if (!v8) {
        v13 = address(v0.word5);
    } else {
        v13 = v14 = 0;
    }
    v15 = new struct(3);
    v15.word1 = bytes20(address(v0.word2) << 96);
    v15[20] = bytes3(uint24(v0.word4) << 232);
    v15[23] = bytes20(address(v0.word3) << 96);
    v15.word0 = 43;
    require(!((v15 + 96 < v15) | (v15 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v16 = allocate_memory();
    v16.word0 = v15;
    v16.word1 = msg.sender;
    v16.word2 = msg.sender;
    v17 = v18 = 64;
    if (!address(v19)) {
        v13 = v20 = this;
    }
    v21 = v22 = 0;
    v23 = v16.word0;
    v24, v25, v26 = fun_decodeFirstPool(v16.word0);
    require(v0.word7 >= 0, SafeCastOverflow());
    if (v22 == !address(v0.word9)) {
        MEM[MEM[v18] + 32] = 32;
        MEM[MEM[v18] + 32 + 32] = 96;
        MEM[MEM[v18] + 32 + 128] = v27.length;
        MCOPY(MEM[v18] + 32 + 128 + 32, v27.data, v27.length);
        MEM[32 + (v27.length + (MEM[v18] + 32 + 128))] = 0;
        MEM[64 + (MEM[v18] + 32)] = address(v16.word1);
        MEM[MEM[v18] + 32 + 96] = address(v16.word2);
        // Unknown jump to Block ['0x19d2aB0x3cc4B0x3f5', '0x19db4B0x3cc4B0x3f5', '0x19eecB0x3cc4B0x3f5']. Refer to 3-address code (TAC);
        v28 = v29 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v29 - 32;
        require(!((MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v28 + 31) < MEM[v18]) | (MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v28 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v28 + 31);
        v30 = v31 = MEM[v18];
        MEM[v31] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v31 + 4] = address(v13);
        MEM[v31 + 4 + 32] = address(v26) < address(v25);
        MEM[v31 + 4 + 64] = v0.word7;
        MEM[v31 + 4 + 96] = address(v0.word9);
        MEM[v31 + 4 + 128] = 160;
        MEM[v31 + 4 + 160] = MEM[MEM[v18]];
        MCOPY(v31 + 4 + 160 + 32, 32 + MEM[v18], MEM[MEM[v18]]);
        MEM[32 + (MEM[MEM[v18]] + (v31 + 4 + 160))] = 0;
        v32 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v18]]) + (v31 + 4 + 160) + 32;
        // Unknown jump to Block 0x3b970x187fB0x3f5. Refer to 3-address code (TAC);
        v28 = v33 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v33 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3cc4B0x3f5. Refer to 3-address code (TAC);
        v28 = v34 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v27.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v34 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3cc4B0x3f5. Refer to 3-address code (TAC);
    } else if (v22 == address(v26) < address(v25)) {
        MEM[MEM[v18] + 32] = 32;
        MEM[MEM[v18] + 32 + 32] = 96;
        MEM[MEM[v18] + 32 + 128] = v35.length;
        MCOPY(MEM[v18] + 32 + 128 + 32, v35.data, v35.length);
        MEM[32 + (v35.length + (MEM[v18] + 32 + 128))] = 0;
        MEM[64 + (MEM[v18] + 32)] = address(v16.word1);
        MEM[MEM[v18] + 32 + 96] = address(v16.word2);
        // Unknown jump to Block ['0x19e1cB0x3ca1B0x3f5', '0x19e84B0x3ca1B0x3f5']. Refer to 3-address code (TAC);
        v36 = v37 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v35.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v37 - 32;
        require(!((MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31) < MEM[v18]) | (MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v36 + 31);
        v30 = v38 = MEM[v18];
        MEM[v38] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v38 + 4] = address(v13);
        MEM[v38 + 4 + 32] = address(v26) < address(v25);
        MEM[v38 + 4 + 64] = v0.word7;
        MEM[v38 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v38 + 4 + 128] = 160;
        MEM[v38 + 4 + 160] = MEM[MEM[v18]];
        MCOPY(v38 + 4 + 160 + 32, 32 + MEM[v18], MEM[MEM[v18]]);
        MEM[32 + (MEM[MEM[v18]] + (v38 + 4 + 160))] = 0;
        v32 = v39 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v18]]) + (v38 + 4 + 160) + 32;
        // Unknown jump to Block 0x3b970x187fB0x3f5. Refer to 3-address code (TAC);
        v36 = v40 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v35.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v40 - 32;
        // Unknown jump to Block 0x2380x3c92B0x3ca1B0x3f5. Refer to 3-address code (TAC);
    } else {
        MEM[MEM[v18] + 32] = 32;
        MEM[MEM[v18] + 32 + 32] = 96;
        MEM[MEM[v18] + 32 + 128] = v41.length;
        MCOPY(MEM[v18] + 32 + 128 + 32, v41.data, v41.length);
        MEM[32 + (v41.length + (MEM[v18] + 32 + 128))] = 0;
        MEM[64 + (MEM[v18] + 32)] = address(v16.word1);
        MEM[MEM[v18] + 32 + 96] = address(v16.word2);
        // Unknown jump to Block ['0x19e1cB0x3c83B0x3f5', '0x19e84B0x3c83B0x3f5']. Refer to 3-address code (TAC);
        v42 = v43 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v41.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v43 - 32;
        require(!((MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) < MEM[v18]) | (MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[v18] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v42 + 31);
        v30 = v44 = MEM[v18];
        MEM[v44] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v44 + 4] = address(v13);
        MEM[v44 + 4 + 32] = address(v26) < address(v25);
        MEM[v44 + 4 + 64] = v0.word7;
        MEM[v44 + 4 + 96] = address(0x1000276a4);
        MEM[v44 + 4 + 128] = 160;
        MEM[v44 + 4 + 160] = MEM[MEM[v18]];
        MCOPY(v44 + 4 + 160 + 32, 32 + MEM[v18], MEM[MEM[v18]]);
        MEM[32 + (MEM[MEM[v18]] + (v44 + 4 + 160))] = 0;
        v32 = v45 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v18]]) + (v44 + 4 + 160) + 32;
        v42 = v46 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v41.length) + (MEM[v18] + 32 + 128) + 32 - MEM[v18];
        MEM[MEM[v18]] = v46 - 32;
        // Unknown jump to Block 0x2380x3c92B0x3c83B0x3f5. Refer to 3-address code (TAC);
    }
    v47 = address(v12).call(MEM[v3aaa0x187f_0x0V0x3f5:v3aaa0x187f_0x0V0x3f5 + v118dV0x3ac0V0x19f19V0x3f5 - v3aaa0x187f_0x0V0x3f5], MEM[v3aaa0x187f_0x0V0x3f5:v3aaa0x187f_0x0V0x3f5 + v3b970x187f_0x6V0x3f5]).value(v21).gas(msg.gas);
    if (v47) {
        v48 = v49 = 0;
        v48 = v50 = 0;
        if (v47) {
            v51 = 64;
            if (64 > RETURNDATASIZE()) {
                v51 = v52 = RETURNDATASIZE();
            }
            require(!((v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) < v30) | (v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v30 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v51 + 31);
            require(v30 + v51 - v30 >= 64);
            v48 = v53 = MEM[v30];
            v48 = v54 = MEM[v30 + 32];
        }
        if (address(v26) < address(v25)) {
        }
        require(v48 != int256.min, Panic(17)); // arithmetic overflow or underflow
        require(0 - v48 >= v0.word8, Error('SwapX: insufficient out amount'));
        if (v8) {
            require(_wETH.code.size);
            v55 = _wETH.withdraw(0 - v48).gas(msg.gas);
            if (v55) {
                if (v55) {
                    require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(0 >= 0);
                }
                v56 = fun_takeFee_32813(0 - v48);
                v57 = _SafeSub(0 - v48, v56);
                v58, /* uint256 */ v59 = address(v0.word5).call().value(v57).gas(msg.gas);
                if (RETURNDATASIZE()) {
                    require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                    v60 = new bytes[](RETURNDATASIZE());
                    require(!((v60 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v60) | (v60 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    v59 = v60.data;
                    RETURNDATACOPY(v59, 0, RETURNDATASIZE());
                }
                require(v58, Error('SwapX: send ETH out error'));
            }
        }
        _fun_nonReentrantBefore = 1;
        return 0 - v48;
    }
    revert(MEM[64], RETURNDATASIZE());
}

function receive() public payable { 
}

function feeDenominator() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _feeDenominator;
}

function checked_sub_uint256_32899(uint256 varg0) private { 
    require(varg0 - 1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 1;
}

function checked_sub_uint256_33146(uint256 varg0) private { 
    require(varg0 - 2 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - 2;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function 0x23af(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 < MEM[varg0 + varg1];
    require(!bool(v0), Error('SwapX: too little received'));
    return v1;
}

function allocate_memory_32788() private { 
    v0 = new struct(10);
    require(!((v0 + 320 < v0) | (v0 + 320 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function allocate_memory_32805() private { 
    v0 = new struct(7);
    require(!((v0 + uint8(-32) < v0) | (v0 + uint8(-32) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function allocate_memory_32809() private { 
    v0 = new struct(11);
    require(!((v0 + 352 < v0) | (v0 + 352 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function allocate_memory_32828() private { 
    v0 = new struct(8);
    require(!((v0 + (uint8.max + 1) < v0) | (v0 + (uint8.max + 1) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function allocate_memory() private { 
    v0 = new struct(3);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function allocate_memory_33160() private { 
    v0 = new struct(5);
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    return v0;
}

function copy_literal_to_memory_f9446b8e937d86f0bc87cac73923491692b123ca5f8761908494703758206adf() private { 
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    return 30258;
}

function copy_literal_to_memory_ec97b8914cfb6741ca720b49246676ddcc2c227e4046450a8d815244c93673da() private { 
    require(!0, Panic(65)); // failed memory allocation (too much memory)
    return 30259;
}

function allocate_and_zero_memory_array_array_address_dyn() private { 
    v0 = new uint256[](2);
    require(!((v0 + 96 < v0) | (v0 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 64);
    return v0;
}

function 0x2e5a(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) private { 
    require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new uint256[](v0);
    require(!((v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) < v1) | (v1 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (v0 << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v2 = v1.data;
    require(varg0 + (v0 << 5) <= msg.data.length);
    while (varg0 < varg0 + (v0 << 5)) {
        require(!(address(msg.data[varg0]) - msg.data[varg0]));
        MEM[v2] = msg.data[varg0];
        v2 = v2 + 32;
        varg0 = varg0 + 32;
    }
    return v1, varg2, varg3, varg4, varg5, varg6, v0;
}

function fun_nonReentrantBefore() private { 
    require(_fun_nonReentrantBefore != 2, ReentrancyGuardReentrantCall());
    _fun_nonReentrantBefore = 2;
    return ;
}

function fun_takeFee_32813(uint256 varg0) private { 
    if (_feeExcludeList[msg.sender]) {
        return 0;
    } else {
        v0 = fun_mul(varg0, _feeRate);
        v1 = fun_div(v0, _feeDenominator);
        require(this.balance > v1, Error('insufficient funds'));
        v2, /* uint256 */ v3 = _feeCollector.call().value(v1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v4 = v5 = new bytes[](RETURNDATASIZE());
            require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v3 = v5.data;
            RETURNDATACOPY(v3, 0, RETURNDATASIZE());
        }
        require(v2, Error('SwapX: take fee error'));
        MEM[0] = msg.sender;
        emit FeeCollected(0, msg.sender, v1, block.timestamp);
        return v1;
    }
}

function fun_takeFee(address varg0, uint256 varg1) private { 
    if (_feeExcludeList[msg.sender]) {
        return 0;
    } else {
        v0 = fun_mul(varg1, _feeRate);
        v1 = fun_div(v0, _feeDenominator);
        v2 = v3 = !varg0;
        if (bool(varg0)) {
            v2 = v4 = varg0 == _wETH;
        }
        if (!v2) {
            fun_safeTransferFrom(varg0, msg.sender, _feeCollector, v1);
            MEM[0] = msg.sender;
            emit FeeCollected(varg0, msg.sender, v1, block.timestamp);
            return v1;
        } else {
            require(this.balance > v1, Error('insufficient funds'));
            v5, /* uint256 */ v6 = _feeCollector.call().value(v1).gas(msg.gas);
            if (RETURNDATASIZE()) {
                require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                v7 = v8 = new bytes[](RETURNDATASIZE());
                require(!((v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v8) | (v8 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v6 = v8.data;
                RETURNDATACOPY(v6, 0, RETURNDATASIZE());
            }
            require(v5, Error('SwapX: take fee error'));
            MEM[0] = msg.sender;
            emit FeeCollected(0, msg.sender, v1, block.timestamp);
            return v1;
        }
    }
}

function fun_exactInputInternal_32864(uint256 varg0, uint256 varg1, uint256 varg2, struct(3) varg3) private { 
    v0 = v1 = 64;
    if (!address(varg2)) {
        varg2 = v2 = this;
    }
    v3 = 0;
    v4 = varg3.word0;
    v5, v6, v7 = fun_decodeFirstPool(varg3.word0);
    require(varg1 >= 0, SafeCastOverflow());
    if (v3 == address(v7) < address(v6)) {
        MEM[MEM[v1] + 32] = 32;
        MEM[MEM[v1] + 32 + 32] = 96;
        MEM[MEM[v1] + 32 + 128] = v8.length;
        MCOPY(MEM[v1] + 32 + 128 + 32, v8.data, v8.length);
        MEM[32 + (v8.length + (MEM[v1] + 32 + 128))] = 0;
        MEM[64 + (MEM[v1] + 32)] = address(varg3.word1);
        MEM[MEM[v1] + 32 + 96] = address(varg3.word2);
        // Unknown jump to Block ['0x19d2aB0x3bfe0x3b09', '0x19db4B0x3bfe0x3b09', '0x19eecB0x3bfe0x3b09']. Refer to 3-address code (TAC);
        v9 = v10 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v10 - 32;
        require(!((MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v9 + 31) < MEM[v1]) | (MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v9 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v9 + 31);
        v11 = v12 = MEM[v1];
        MEM[v12] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v12 + 4] = address(varg2);
        MEM[v12 + 4 + 32] = address(v7) < address(v6);
        MEM[v12 + 4 + 64] = varg1;
        MEM[v12 + 4 + 96] = address(0xfffd8963efd1fc6a506488495d951d5263988d25);
        MEM[v12 + 4 + 128] = 160;
        MEM[v12 + 4 + 160] = MEM[MEM[v1]];
        MCOPY(v12 + 4 + 160 + 32, 32 + MEM[v1], MEM[MEM[v1]]);
        MEM[32 + (MEM[MEM[v1]] + (v12 + 4 + 160))] = 0;
        v13 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v1]]) + (v12 + 4 + 160) + 32;
        // Unknown jump to Block 0x3b970x3b09. Refer to 3-address code (TAC);
        v9 = v14 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v14 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3bfe0x3b09. Refer to 3-address code (TAC);
        v9 = v15 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v8.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v15 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3bfe0x3b09. Refer to 3-address code (TAC);
    } else {
        MEM[MEM[v1] + 32] = 32;
        MEM[MEM[v1] + 32 + 32] = 96;
        MEM[MEM[v1] + 32 + 128] = v16.length;
        MCOPY(MEM[v1] + 32 + 128 + 32, v16.data, v16.length);
        MEM[32 + (v16.length + (MEM[v1] + 32 + 128))] = 0;
        MEM[64 + (MEM[v1] + 32)] = address(varg3.word1);
        MEM[MEM[v1] + 32 + 96] = address(varg3.word2);
        // Unknown jump to Block ['0x19d2aB0x3b4f0x3b09', '0x19db4B0x3b4f0x3b09', '0x19eecB0x3b4f0x3b09']. Refer to 3-address code (TAC);
        v17 = v18 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v18 - 32;
        require(!((MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v17 + 31) < MEM[v1]) | (MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v17 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[v1] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v17 + 31);
        v11 = MEM[v1];
        MEM[v11] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v11 + 4] = address(varg2);
        MEM[v11 + 4 + 32] = address(v7) < address(v6);
        MEM[v11 + 4 + 64] = varg1;
        MEM[v11 + 4 + 96] = address(0x1000276a4);
        MEM[v11 + 4 + 128] = 160;
        MEM[v11 + 4 + 160] = MEM[MEM[v1]];
        MCOPY(v11 + 4 + 160 + 32, 32 + MEM[v1], MEM[MEM[v1]]);
        MEM[32 + (MEM[MEM[v1]] + (v11 + 4 + 160))] = 0;
        v13 = v19 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v1]]) + (v11 + 4 + 160) + 32;
        v17 = v20 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v20 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3b4f0x3b09. Refer to 3-address code (TAC);
        v17 = v21 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v16.length) + (MEM[v1] + 32 + 128) + 32 - MEM[v1];
        MEM[MEM[v1]] = v21 - 32;
        // Unknown jump to Block 0x2380x3b5fB0x3b4f0x3b09. Refer to 3-address code (TAC);
    }
    v22 = address(varg0).call(MEM[v3b090x19d59:v3b090x19d59 + v118dV0x3ac0V0x19de10x3b09 - v3b090x19d59], MEM[v3b090x19d59:v3b090x19d59 + v3b970x3b09_0x6]).value(v3).gas(msg.gas);
    require(v22, MEM[64], RETURNDATASIZE());
    v23 = v24 = 0;
    v23 = v25 = 0;
    if (v22) {
        v26 = 64;
        if (64 > RETURNDATASIZE()) {
            v26 = v27 = RETURNDATASIZE();
        }
        require(!((v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) < v11) | (v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v11 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v26 + 31);
        require(v11 + v26 - v11 >= 64);
        v23 = MEM[v11];
        v23 = v28 = MEM[v11 + 32];
    }
    if (address(v7) < address(v6)) {
    }
    require(v23 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - v23;
}

function checked_add_uint256_33142(uint256 varg0) private { 
    require(varg0 <= varg0 + 1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 1;
}

function checked_add_uint256_33147(uint256 varg0) private { 
    require(varg0 <= varg0 + 2, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 2;
}

function checked_add_uint256_33172(uint256 varg0) private { 
    require(varg0 <= varg0 + 31, Panic(17)); // arithmetic overflow or underflow
    return varg0 + 31;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function fun_decodeFirstPool(bytes varg0) private { 
    require(varg0.length >= 20, Error('toAddress_outOfBounds'));
    require(varg0.length >= 23, Error('toUint24_outOfBounds'));
    require(varg0.length >= 43, Error('toAddress_outOfBounds'));
    return MEM[varg0 + 23], varg0[23] >> 96, MEM[varg0.data] >> 96;
}

function fun_pay(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = varg0 == _wETH;
    if (v1) {
        v0 = v2 = this.balance >= varg3;
    }
    if (!v0) {
        if (this - address(varg1)) {
            fun_safeTransferFrom(varg0, varg1, varg2, varg3);
            return ;
        } else {
            fun_safeTransfer(varg0, varg2, varg3);
            return ;
        }
    } else {
        require(_wETH.code.size);
        v3 = _wETH.deposit().value(varg3).gas(msg.gas);
        if (v3) {
            if (v3) {
                require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
                require(0 >= 0);
            }
            v4, /* bool */ v5 = _wETH.transfer(address(varg2), varg3).gas(msg.gas);
            if (v4) {
                if (v4) {
                    v6 = v7 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v6 = v8 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v6 + 31);
                    require(MEM[64] + v6 - MEM[64] >= 32);
                    require(!0xa9059cbaffffffffffffffffffffffffffffffffffffffffffffffffffffffff);
                    return ;
                } else {
                    return ;
                }
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function fun_pairFor(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, v1 = fun_sortTokens(varg1, varg2);
    if (address(varg0) - 0x5c69bee701ef814a2b6a3edd4b1652cb9cc5aa6f) {
        if (address(varg0) - 0x71524b4f93c58fcbf659783284e38825f0622859) {
            if (0x1097053fd2ea711dad45caccc45eff7548fcb362 == address(varg0)) {
                v2 = new struct(3);
                v2.word1 = bytes20(v1 << 96);
                v2[20] = bytes20(v0 << 96);
                v2.word0 = 40;
                require(!((v2 + 96 < v2) | (v2 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v3 = v2.word0.length;
                v4 = new bytes[](85);
                require(!((v4 + 128 < v4) | (v4 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                v5 = v4.length;
                MEM[0] = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d);
                return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0x57224589c67f3f30a6b0d7a1b54cf3153ab84563bc609ef41dfb34f8b2974d2d);
            } else {
                return 0;
            }
        } else {
            v6 = new struct(3);
            v6.word1 = bytes20(v1 << 96);
            v6[20] = bytes20(v0 << 96);
            v6.word0 = 40;
            require(!((v6 + 96 < v6) | (v6 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v7 = v6.word0.length;
            v8 = new bytes[](85);
            require(!((v8 + 128 < v8) | (v8 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v9 = v8.length;
            MEM[0] = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303);
            return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0xe18a34eb0e04b04f7a0ac29a6e80748dca96319b42c54d679cb821dca90c6303);
        }
    } else {
        v10 = new struct(3);
        v10.word1 = bytes20(v1 << 96);
        v10[20] = bytes20(v0 << 96);
        v10.word0 = 40;
        require(!((v10 + 96 < v10) | (v10 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v11 = v10.word0.length;
        v12 = new bytes[](85);
        require(!((v12 + 128 < v12) | (v12 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v13 = v12.length;
        MEM[0] = keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f);
        return keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(varg0 << 96), keccak256(bytes20(v1 << 96), bytes20(v0 << 96)), 0x96e8ac4277198ff8b6f785478aa9a39f403cb768dd02cbee326c3e7da348845f);
    }
}

function fun_getAmountsOut(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2.length >= 2, Error('UniswapV2Library: INVALID_PATH'));
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg2.length);
    require(!((v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg2.length << 5) + 31) < v0) | (v0 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (varg2.length << 5) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v0.data, msg.data.length, 32 + (varg2.length << 5) - 32);
    require(v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    MEM[v0.data] = varg1;
    v1 = 0;
    while (1) {
        v2 = checked_sub_uint256_32899(varg2.length);
        if (v1 >= v2) {
            return v0;
        } else {
            require(v1 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v3 = checked_add_uint256_33142(v1);
            require(v3 < varg2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v4, v5 = fun_getReserves(varg0, address(varg2[v1]), address(varg2[v3]));
            require(v1 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v6 = fun_getAmountOut(v0[v1], v5, v4);
            v7 = checked_add_uint256_33142(v1);
            require(v7 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0[v7] = v6;
            v1 = v1 + 1;
        }
    }
}

function fun_swapSupportingFeeOnTransferTokens(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    while (1) {
        v2 = checked_sub_uint256_32899(MEM[varg0]);
        if (v0 >= v2) {
            return ;
        } else {
            require(v0 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v3 = checked_add_uint256_33142(v0);
            require(v3 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v4, v5 = fun_sortTokens(address(MEM[(v0 << 5) + varg0 + 32]), address(MEM[(v3 << 5) + varg0 + 32]));
            v6 = fun_pairFor(varg2, address(MEM[(v0 << 5) + varg0 + 32]), address(MEM[(v3 << 5) + varg0 + 32]));
            v7, /* uint112 */ v8, /* uint112 */ v9, /* uint32 */ v10 = address(v6).getReserves().gas(msg.gas);
            if (v7) {
                v8 = v11 = 0;
                v9 = v12 = 0;
                if (v7) {
                    if (96 > RETURNDATASIZE()) {
                        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                        v13 = MEM[64] + RETURNDATASIZE();
                    } else {
                        require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 96;
                        v13 = v14 = MEM[64] + 96;
                    }
                    require(v13 - MEM[64] >= 96);
                    require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                    require(!(v9 - uint112(v9)));
                    require(!(v10 - uint32(v10)));
                }
                v15 = uint112(v9);
                v15 = v16 = uint112(v8);
                if (address(MEM[(v0 << 5) + varg0 + 32]) == address(v5)) {
                }
                v17, /* uint256 */ v18 = address(MEM[(v0 << 5) + varg0 + 32]).balanceOf(address(v6)).gas(msg.gas);
                if (v17) {
                    v18 = v19 = 0;
                    if (v17) {
                        if (32 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                            v20 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 32;
                            v20 = v21 = MEM[64] + 32;
                        }
                        require(v20 - MEM[64] >= 32);
                    }
                    require(v18 - v15 <= v18, Panic(17)); // arithmetic overflow or underflow
                    require(v18 - v15, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
                    v22 = bool(v15);
                    if (v22) {
                        v22 = v23 = bool(v15);
                    }
                    require(v22, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
                    v24 = fun_mul_33149(v18 - v15);
                    v25 = fun_mul(v24, v15);
                    v26 = fun_mul_33150(v15);
                    v27 = _SafeAdd(v26, v24);
                    v28 = v29 = _SafeDiv(v25, v27);
                    if (address(MEM[(v0 << 5) + varg0 + 32]) != address(v5)) {
                        v28 = v30 = 0;
                    } else {
                        v28 = 0;
                    }
                    v31 = checked_sub_uint256_33146(MEM[varg0]);
                    if (v0 < v31) {
                        v32 = checked_add_uint256_33147(v0);
                        require(v32 < MEM[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                        varg1 = v33 = fun_pairFor(varg2, address(MEM[(v3 << 5) + varg0 + 32]), address(MEM[(v32 << 5) + varg0 + 32]));
                    }
                    require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
                    require((address(v6)).code.size);
                    v34 = new uint256[](0);
                    MCOPY(v34.data, 32 + MEM[64], 0);
                    MEM[v34.data] = 0;
                    v35 = address(v6).swap(v28, v28, address(varg1), v34).gas(msg.gas);
                    if (v35) {
                        if (v35) {
                            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                            require(0 >= 0);
                        }
                        v0 = v0 + 1;
                    }
                }
            }
            revert(MEM[64], RETURNDATASIZE());
        }
    }
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function fun_getAmountOut(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg0, Error('UniswapV2Library: INSUFFICIENT_INPUT_AMOUNT'));
    v0 = bool(varg1);
    if (v0) {
        v0 = v1 = bool(varg2);
    }
    require(v0, Error('UniswapV2Library: INSUFFICIENT_LIQUIDITY'));
    v2 = fun_mul_33149(varg0);
    v3 = fun_mul(v2, varg2);
    v4 = fun_mul_33150(varg1);
    v5 = _SafeAdd(v4, v2);
    v6 = _SafeDiv(v3, v5);
    return v6;
}

function fun_safeTransfer(address varg0, address varg1, uint256 varg2) private { 
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    v0[36] = varg2;
    require(!((v0 + 128 < v0) | (v0 + 128 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v0.data;
    v3, /* uint256 */ v4 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v7 = v8 = !MEM[v5];
        if (v8) {
            v7 = v9 = !varg0.code.size;
        }
        require(!v7, AddressEmptyCode(varg0));
        v10 = v11 = bool(MEM[v5]);
        if (v11) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            require(!(MEM[v5 + 32] - bool(MEM[v5 + 32])));
            v10 = v12 = !MEM[v5 + 32];
        }
        require(!v10, SafeERC20FailedOperation(varg0));
        return ;
    } else {
        require(!MEM[v5], 32 + v5, MEM[v5]);
        revert(FailedInnerCall());
    }
}

function fun_tryGetBalance(address varg0, uint256 varg1) private { 
    v0 = v1 = !varg0;
    if (bool(varg0)) {
        MEM[0] = MEM[0];
        v0 = v2 = varg0 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    }
    if (!v0) {
        v3, /* uint256 */ v4 = varg0.balanceOf(address(varg1)).gas(msg.gas);
        require(v3, MEM[64], RETURNDATASIZE());
        if (v3) {
            if (32 > RETURNDATASIZE()) {
                require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                v5 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 32;
                v5 = v6 = MEM[64] + 32;
            }
            require(v5 - MEM[64] >= 32);
            return v4;
        } else {
            return 0;
        }
    } else {
        return varg1.balance;
    }
}

function fun_isNative(address varg0) private { 
    if (bool(varg0)) {
        MEM[0] = MEM[0];
        return varg0 == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;
    } else {
        return !varg0;
    }
}

function fun_wrap(uint256 varg0) private { 
    if (!varg0) {
        return ;
    } else {
        require(this.balance >= varg0, Error('wrap failed'));
        require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
        MEM[0] = MEM[0];
        v0 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(varg0).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(0 >= 0);
            return ;
        } else {
            return ;
        }
    }
}

function fun_pay_6765(address varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    if (address(varg1) == address(varg2)) {
        return ;
    } else if (varg0) {
        if (this - address(varg1)) {
            fun_safeTransferFrom(varg0, varg1, varg2, varg3);
            return ;
        } else {
            fun_safeTransfer(varg0, varg2, varg3);
            return ;
        }
    } else {
        v0, /* uint256 */ v1 = varg2.call().value(varg3).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = v3 = new bytes[](RETURNDATASIZE());
            require(!((v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v3) | (v3 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v3.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, Error('SwapX: send ETH out error'));
        return ;
    }
}

function fun_getMiddleReceiver(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = checked_sub_uint256_32899(varg0.length);
    if (varg1 == v0) {
        return varg2;
    } else {
        v1 = checked_add_uint256_33142(varg1);
        require(v1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
        require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
        if (MEM[varg0[v1]]) {
            require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
            require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
            if (MEM[varg0[v1]] - 1) {
                require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
                require(3 > MEM[varg0[v1]], Panic(33)); // failed convertion to enum type
                if (MEM[varg0[v1]] - 2) {
                    return this;
                } else {
                    return this;
                }
            } else {
                return this;
            }
        } else {
            return address(MEM[varg0[v1] + 96]);
        }
    }
}

function fun_swap(uint256 varg0, address varg1, address varg2, uint128 varg3, uint256 varg4) private { 
    v0 = new struct(2);
    require(!((v0 + 64 < v0) | (v0 + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 1;
    require(1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = v2 = 0;
    while (v1 < 32) {
        v3 = new struct(5);
        require(!((v3 + 160 > uint64.max) | (v3 + 160 < v3)), Panic(65)); // failed memory allocation (too much memory)
        v3.word0 = 0;
        v3.word1 = 0;
        v3.word2 = 0;
        v3.word3 = 0;
        v3.word4 = 96;
        MEM[v0 + v1 + 32] = v3;
        v1 = v1 + 32;
    }
    v4 = allocate_memory_33160();
    v4.word0 = address(MEM[varg4 + 64]);
    v4.word1 = uint24(MEM[varg4 + 128]);
    v4.word2 = int24(MEM[varg4 + 160]);
    v4.word3 = address(MEM[varg4 + 192]);
    v4.word4 = MEM[varg4 + 224];
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v5 = v0.data;
    v0.word1 = v4;
    require(v0.word0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v6 = v0.data;
    v7 = allocate_memory_33160();
    v7.word0 = address(MEM[varg4 + 32]);
    v7.word1 = address(MEM[varg4 + 64]);
    v7.word2 = v0;
    v7.word3 = varg3;
    v7.word4 = 0;
    require(!address(_fun_swap), ContractLocked());
    v8 = v9 = address(varg0) == this;
    if (address(varg0) != this) {
        v8 = v10 = address(varg0) == tx.origin;
    }
    if (!v8) {
        v8 = v11 = msg.sender == address(varg0);
    }
    require(v8, Error('not valid payer in uniV4'));
    _fun_swap = varg0;
    MEM[MEM[64] + 32] = 96;
    MEM[MEM[64] + 32 + 96] = address(v7.word0);
    MEM[MEM[64] + 32 + 128] = address(v7.word1);
    MEM[MEM[64] + 32 + 160] = 160;
    MEM[MEM[64] + 32 + (uint8.max + 1)] = v12.length;
    v13 = MEM[64] + 32 + 288;
    v14 = v15 = MEM[64] + 32 + (v12.length << 5) + 288;
    v16 = v12.data;
    v17 = 0;
    while (v17 < v12.length) {
        MEM[v13] = v14 - (MEM[64] + 32) - 288;
        MEM[v14] = address(MEM[MEM[v16]]);
        MEM[v14 + 32] = uint24(MEM[MEM[v16] + 32]);
        MEM[v14 + 64] = int24(MEM[MEM[v16] + 64]);
        MEM[v14 + 96] = address(MEM[MEM[v16] + 96]);
        MEM[v14 + 128] = 160;
        MEM[v14 + 160] = MEM[MEM[MEM[v16] + 128]];
        MCOPY(v14 + 160 + 32, 32 + MEM[MEM[v16] + 128], MEM[MEM[MEM[v16] + 128]]);
        MEM[32 + (MEM[MEM[MEM[v16] + 128]] + (v14 + 160))] = 0;
        v14 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[MEM[v16] + 128]]) + (v14 + 160) + 32;
        v16 = v16 + 32;
        v13 = v13 + 32;
        v17 = v17 + 1;
    }
    MEM[MEM[64] + 32 + 192] = uint128(v7.word3);
    MEM[MEM[64] + 32 + 224] = uint128(v7.word4);
    MEM[MEM[64] + 32 + 32] = varg1;
    MEM[MEM[64] + 32 + 64] = varg2;
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v14 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & v14 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64] + 32] = 0;
    MEM[MEM[64] + 32 + 32] = 64;
    MEM[MEM[64] + 32 + 64] = v14 - MEM[64] - 32;
    MCOPY(MEM[64] + 32 + 64 + 32, 32 + MEM[64], v14 - MEM[64] - 32);
    MEM[32 + (v14 - MEM[64] - 32 + (MEM[64] + 32 + 64))] = 0;
    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v14 - MEM[64] - 32)) + (MEM[64] + 32 + 64) + 32 - MEM[64] + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v14 - MEM[64] - 32)) + (MEM[64] + 32 + 64) + 32 - MEM[64] + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v18 = new uint256[]((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v14 - MEM[64] - 32)) + (MEM[64] + 32 + 64) + 32 - MEM[64] - 32);
    MCOPY(v18.data, 32 + MEM[64], (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v14 - MEM[64] - 32)) + (MEM[64] + 32 + 64) + 32 - MEM[64] - 32);
    MEM[32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (v14 - MEM[64] - 32)) + (MEM[64] + 32 + 64) + 32 - MEM[64] - 32 + v18)] = 0;
    v19 = 0x4444c5dc75cb358380d2e3de08a90.unlock(v18, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
    require(v19, MEM[64], RETURNDATASIZE());
    v20 = v21 = 0;
    if (v19) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
        require(v22.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v20 = new bytes[](v22.length);
        require(!((v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v22.length) + 31) < v20) | (v20 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v22.length) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v22.length + 32 <= MEM[64] + RETURNDATASIZE());
        MCOPY(v20.data, v22.data, v22.length);
        v20[v22.length] = 0;
    }
    require(v20 + MEM[v20] + 32 - (v20 + 32) >= 64);
    MEM[0] = MEM[0];
    _fun_swap = 0;
    return MEM[v20 + 32 + 32];
}

function fun_tryUnwrap(uint256 varg0) private { 
    if (!varg0) {
        return ;
    } else {
        v0, /* uint256 */ v1 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);
        if (v0) {
            v1 = v2 = 0;
            if (v0) {
                if (32 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
                    v3 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 32 < MEM[64]) | (MEM[64] + 32 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 32;
                    v3 = v4 = MEM[64] + 32;
                }
                require(v3 - MEM[64] >= 32);
            }
            if (v1 >= varg0) {
                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);
                MEM[0] = MEM[0];
                v5 = 0x000000000000000000000000c02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg0).gas(msg.gas);
                if (v5) {
                    if (v5) {
                        require(!((MEM[64] < MEM[64]) | (MEM[64] > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64];
                        require(0 >= 0);
                        return ;
                    } else {
                        return ;
                    }
                }
            } else {
                return ;
            }
        }
        revert(MEM[64], RETURNDATASIZE());
    }
}

function fun_takeFeeTo(uint256 varg0, uint256 varg1) private { 
    v0 = fun_mul(varg1, _feeRate);
    v1 = fun_div(v0, _feeDenominator);
    if (v1) {
        fun_pay_6765(varg0, this, _feeCollector, v1);
        MEM[0] = MEM[0];
        emit FeeCollected(address(varg0), msg.sender, v1, block.timestamp);
        return v1;
    } else {
        return v1;
    }
}

function fun_mul_33149(uint256 varg0) private { 
    require(!varg0 | (997 == varg0 * 997 / varg0), Panic(17)); // arithmetic overflow or underflow
    require(!(varg0 * 997 / 997 - varg0), Error('ds-math-mul-overflow'));
    return varg0 * 997;
}

function fun_mul_33150(uint256 varg0) private { 
    require(!varg0 | (1000 == varg0 * 1000 / varg0), Panic(17)); // arithmetic overflow or underflow
    require(!(varg0 * 1000 / 1000 - varg0), Error('ds-math-mul-overflow'));
    return varg0 * 1000;
}

function fun_mul(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    v2 = v3 = !varg1;
    if (bool(varg1)) {
        v0 = v4 = varg1 * varg0;
        require((varg1 == v4 / varg0) | !varg0, Panic(17)); // arithmetic overflow or underflow
        v5 = _SafeDiv(v4, varg1);
        v2 = v6 = v5 == varg0;
    }
    require(v2, Error('ds-math-mul-overflow'));
    return v0;
}

function fun_div(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(1)); // low-level assert failed
    v0 = _SafeDiv(varg0, varg1);
    return v0;
}

function fun_safeTransferFrom(address varg0, address varg1, address varg2, uint256 varg3) private { 
    v0 = new bytes[](100);
    MEM[v0.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    MEM[v0 + 100] = varg3;
    require(!((v0 + 160 < v0) | (v0 + 160 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2 = v0.data;
    v3, /* uint256 */ v4 = varg0.transferFrom(varg1, varg2, varg3).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v5 = v6 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v5 = new bytes[](RETURNDATASIZE());
        require(!((v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) < v5) | (v5 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
        v4 = v5.data;
        RETURNDATACOPY(v4, 0, RETURNDATASIZE());
    }
    if (v3) {
        v7 = v8 = !MEM[v5];
        if (v8) {
            v7 = v9 = !varg0.code.size;
        }
        require(!v7, AddressEmptyCode(varg0));
        v10 = v11 = bool(MEM[v5]);
        if (v11) {
            require(v5 + MEM[v5] + 32 - (v5 + 32) >= 32);
            require(!(MEM[v5 + 32] - bool(MEM[v5 + 32])));
            v10 = v12 = !MEM[v5 + 32];
        }
        require(!v10, SafeERC20FailedOperation(varg0));
        return ;
    } else {
        require(!MEM[v5], 32 + v5, MEM[v5]);
        revert(FailedInnerCall());
    }
}

function fun_getPoolKey(uint256 varg0, uint256 varg1, uint24 varg2) private { 
    v0 = new struct(4);
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    if (address(varg0) <= address(varg1)) {
    }
    v1 = new struct(4);
    require(!((v1 + 128 > uint64.max) | (v1 + 128 < v1)), Panic(65)); // failed memory allocation (too much memory)
    v1.word0 = address(varg0);
    v1.word1 = address(varg0);
    v1.word2 = varg2;
    v1.word3 = 0;
    return v1;
}

function fun_sortTokens(uint256 varg0, uint256 varg1) private { 
    require(address(varg1) != address(varg0), Error('UniswapV2Library: IDENTICAL_ADDRESSES'));
    if (address(varg0) < address(varg1)) {
    }
    require(address(varg0), Error('UniswapV2Library: ZERO_ADDRESS'));
    return varg0, varg0;
}

function fun_getReserves(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0, v1 = fun_sortTokens(varg1, varg2);
    v2 = fun_pairFor(varg0, varg1, varg2);
    v3, /* uint112 */ v4, /* uint112 */ v5, /* uint32 */ v6 = address(v2).getReserves().gas(msg.gas);
    require(v3, MEM[64], RETURNDATASIZE());
    v4 = v7 = 0;
    v5 = v8 = 0;
    if (v3) {
        if (96 > RETURNDATASIZE()) {
            require(!((MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) < MEM[64]) | (MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);
            v9 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 96 < MEM[64]) | (MEM[64] + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 96;
            v9 = v10 = MEM[64] + 96;
        }
        require(v9 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v5 - uint112(v5)));
        require(!(v6 - uint32(v6)));
    }
    if (address(v1) - address(varg1)) {
        return uint112(v4), uint112(v5);
    } else {
        return uint112(v5), uint112(v4);
    }
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    v0 = varg0 + varg1;
    require(varg0 <= v0, Panic(17)); // arithmetic overflow or underflow
    require(v0 >= varg0, Error('ds-math-add-overflow'));
    return v0;
}

function fun_checkInitializing() private { 
    MEM[0] = MEM[0];
    require(_fun_checkInitializing, NotInitializing());
    return ;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x180b0d7e == function_selector >> 224) {
            feeDenominator();
        } else if (0x1861a3d8 == function_selector >> 224) {
            swapV3ExactIn((address,address,address,address,uint24,address,uint256,uint256,uint256,uint160));
        } else if (0x1d5f45f5 == function_selector >> 224) {
            factoryV3();
        } else if (0x236b7db2 == function_selector >> 224) {
            0x236b7db2();
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2dd327c5 == function_selector >> 224) {
            swapV3MultiHopExactIn((address[],address[],bytes,address,uint256,uint256,uint256));
        } else if (0x3f4ba83a == function_selector >> 224) {
            unpause();
        } else if (0x40e61bc3 == function_selector >> 224) {
            swapMixedMultiHopExactIn((string[],bytes,address,address,bytes,address,address,address,uint256,uint256,uint256));
        } else if (0x58e3ce30 == function_selector >> 224) {
            amountInCached();
        } else if (0x5b9e9006 == function_selector >> 224) {
            swapV2ExactIn(address,address,uint256,uint256,address);
        } else if (0x5c975abb == function_selector >> 224) {
            paused();
        } else if (0x66a5a99e == function_selector >> 224) {
            swapV2MultiHopExactIn(address,uint256,uint256,address[],address,uint256,address);
        } else if (0x68e0d4e1 == function_selector >> 224) {
            factoryV2();
        } else if (0x715018a6 == function_selector >> 224) {
            renounceOwnership();
        } else if (0x8456cb59 == function_selector >> 224) {
            pause();
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x978bbdb9 == function_selector >> 224) {
            feeRate();
        } else if (0xad5c4648 == function_selector >> 224) {
            WETH();
        } else if (0xbfc60df9 == function_selector >> 224) {
            feeExcludeList(address);
        } else if (0xc415b95c == function_selector >> 224) {
            feeCollector();
        } else if (0xd9caed12 == function_selector >> 224) {
            withdraw(address,address,uint256);
        } else if (0xe6cb474f == function_selector >> 224) {
            0xe6cb474f();
        } else if (0xf2fde38b == function_selector >> 224) {
            transferOwnership(address);
        } else if (0xf7013ef6 == function_selector >> 224) {
            initialize(address,address,address,address,uint256);
        } else if (!(0xfa461e33 - (function_selector >> 224))) {
            uniswapV3SwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
