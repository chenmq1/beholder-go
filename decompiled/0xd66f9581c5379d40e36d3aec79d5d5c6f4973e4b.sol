// Decompiled by library.dedaub.com
// 2026.04.26 05:29 UTC

// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _execute; // STORAGE[0x4]
mapping (address => uint24) mapping_5; // STORAGE[0x5]
mapping (address => uint256) mapping_6; // STORAGE[0x6]
mapping (uint8 => address) mapping_7; // STORAGE[0x7]
mapping (uint8 => bool) mapping_8; // STORAGE[0x8]
address _owner; // STORAGE[0x0] bytes 0 to 19
address _weth; // STORAGE[0x1] bytes 0 to 19
address _poolManager; // STORAGE[0x2] bytes 0 to 19
address stor_3_0_19; // STORAGE[0x3] bytes 0 to 19
uint256 tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217; // TRANSIENT_STORAGE[0x239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217]
uint256 tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41; // TRANSIENT_STORAGE[0x2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41]
uint256 tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568; // TRANSIENT_STORAGE[0x39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568]
uint256 owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59; // TRANSIENT_STORAGE[0x3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59]
uint256 tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec; // TRANSIENT_STORAGE[0x4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec]
uint256 tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3; // TRANSIENT_STORAGE[0x4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3]
uint256 tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7; // TRANSIENT_STORAGE[0x4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7]
uint256 tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd; // TRANSIENT_STORAGE[0x7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd]
uint256 tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21; // TRANSIENT_STORAGE[0x7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21]
uint256 _algebraSwapCallback; // TRANSIENT_STORAGE[0xb619a5804d2834965cf4eff2b9711872135e1b65ae905d9f1f0494d1a366961b]
uint256 owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520; // TRANSIENT_STORAGE[0xbcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520]
uint256 tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4; // TRANSIENT_STORAGE[0xc3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4]
uint256 tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0; // TRANSIENT_STORAGE[0xc8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0]
uint256 tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6; // TRANSIENT_STORAGE[0xd05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6]
uint256 tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f; // TRANSIENT_STORAGE[0xd693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f]
int256 _uniswapV2Call; // TRANSIENT_STORAGE[0xe2eef1f82111c92366a55233aa9b8ad1261dd1197ee5b6aa8c5def554eb4b312]
uint256 owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809; // TRANSIENT_STORAGE[0xf8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809]
bool tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0; // TRANSIENT_STORAGE[0x22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100] bytes 0 to 0
uint8 tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0; // TRANSIENT_STORAGE[0x8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd] bytes 0 to 0
uint248 tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31; // TRANSIENT_STORAGE[0x22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100] bytes 1 to 31
uint248 tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31; // TRANSIENT_STORAGE[0x8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd] bytes 1 to 31



function pancakeV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    v0 = data.length;
    require(v0 <= uint64.max);
    v0 = v1 = data.data;
    require(4 + data + v0 + 32 <= msg.data.length);
    v2 = v3 = !_algebraSwapCallback;
    if (bool(_algebraSwapCallback)) {
        MEM[0] = MEM[0];
        v2 = v4 = !tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec;
    }
    if (!v2) {
        MEM[0] = MEM[0];
        v2 = v5 = address(owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520) != msg.sender;
    }
    require(!v2, 5);
    v6 = v7 = MEM[64];
    v8 = msg.sender.token0().gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v0 = v9 = 0;
    if (v8) {
        v10 = v11 = 5167;
        if (32 <= RETURNDATASIZE()) {
            require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v7 + 32;
            v12 = v13 = v7 + 32;
        }
    }
    v6 = v14 = MEM[64];
    v15 = msg.sender.token1().gas(msg.gas);
    if (!v15) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v16 = 0;
        if (v15) {
            v10 = v17 = 5135;
            if (32 <= RETURNDATASIZE()) {
                require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v14 + 32;
                v12 = v18 = v14 + 32;
            }
        }
    }
    v6 = v19 = MEM[64];
    v20 = msg.sender.factory().gas(msg.gas);
    if (!v20) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v21 = 0;
        if (v20) {
            v10 = v22 = 5104;
            if (32 <= RETURNDATASIZE()) {
                require(!((v19 + 32 > uint64.max) | (v19 + 32 < v19)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v19 + 32;
                v12 = v23 = v19 + 32;
            }
        }
    }
    v24, /* uint24 */ v25 = msg.sender.fee().gas(msg.gas);
    require(v24, MEM[64], RETURNDATASIZE());
    v25 = v26 = 0;
    if (v24) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v27 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v27 = v28 = MEM[64] + 32;
        }
        require(v27 - MEM[64] >= 32);
        require(!0xddca3f4300000000000000000000000000000000000000000000000000000000);
    }
    v29 = v30 = 0xbfbcf9fa4f9c56b0f40a671ad40e0805a091865 != address(v0);
    if (0xbfbcf9fa4f9c56b0f40a671ad40e0805a091865 == address(v0)) {
        v29 = v31 = !address(v0);
    }
    if (!v29) {
        v29 = v32 = !address(v0);
    }
    require(!v29, 5);
    v33 = new struct(4);
    v34 = v33.data;
    v33.word1 = address(v0);
    v33.word2 = address(v0);
    v33.word3 = uint24(v25);
    v33.word0 = 96;
    require(!((v33 + 128 > uint64.max) | (v33 + 128 < v33)), Panic(65)); // failed memory allocation (too much memory)
    v35 = v33.word0.length;
    v36 = new bytes[](85);
    require(!((v36 + 128 > uint64.max) | (v36 + 128 < v36)), Panic(65)); // failed memory allocation (too much memory)
    v37 = v36.length;
    require(!(msg.sender - address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, 0x41ff9aa7e16b8b1a8a8dc4f0efacd93d02d071c9, keccak256(address(v0), address(v0), uint24(v25)), 0x6ce8eb472fa82df5469c6ab6d485f17c3ad13c8cd7af59b3d4a8026c5ce0f7e2))), 5);
    v38 = v39 = v0 > 0;
    if (v39) {
        v38 = v40 = v0 > 0;
    }
    require(!v38, 6);
    v41 = v0 <= 0;
    if (v41) {
        v41 = v42 = v0 <= 0;
    }
    require(!v41, 6);
    if (!v0) {
        if (v39) {
            0x2be5(v0, msg.sender, v0);
        } else {
            0x2be5(v0, msg.sender, v0);
        }
    } else {
        v43 = v44 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
        if (bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd)) {
            MEM[0] = MEM[0];
            v43 = v45 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 2;
        }
        if (!v43) {
            MEM[0] = MEM[0];
            v43 = v46 = address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809) != msg.sender;
        }
        require(!v43, 10);
        require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v47 = new bytes[](v0);
        require(!((v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v47 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v47)), Panic(65)); // failed memory allocation (too much memory)
        require(v0 + v0 <= msg.data.length);
        CALLDATACOPY(v47.data, v0, v0);
        v47[v0] = 0;
        v48 = 0x1b78(v47);
        v49 = v50 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 < v48.word4;
        if (tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= v48.word4) {
            v49 = v51 = tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f > v48.word5;
        }
        if (!v49) {
            v49 = v52 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f;
        }
        require(!v49, 19);
        if (v0 <= 0) {
            require(v0 < 0, 6);
            v53 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v0);
            _uniswapV2Call = v53;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v54 = 0x2511(v48, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v0, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        } else {
            require(v0 < 0, 6);
            v55 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v0);
            _uniswapV2Call = v55;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v56 = 0x2511(v48, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v0, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        }
    }
    exit;
    require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v12 = v6 + RETURNDATASIZE();
    require(v12 - v6 >= 32);
    v0 = v57 = MEM[v6];
    require(!(v57 - address(v57)));
    // Unknown jump to Block ['0x13f0', '0x140f', '0x142f']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x127c. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1257. Refer to 3-address code (TAC);
}

function execute(bytes data) public payable { 
    require(msg.data.length - 4 >= 32);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    require(_execute[msg.sender], 2);
    require(!_algebraSwapCallback, 10);
    v0 = _SafeSub(msg.value, msg.value % 1000);
    v1 = _SafeSub(this.balance, msg.value);
    v2, v3 = _weth.balanceOf(this).gas(msg.gas);
    require(v2, MEM[64], RETURNDATASIZE());
    v3 = v4 = 0;
    if (v2) {
        v5 = v6 = 32;
        if (32 > RETURNDATASIZE()) {
            v5 = v7 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v5 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v5 - MEM[64] >= 32);
    }
    v8 = _SafeAdd(v1, v3);
    _algebraSwapCallback = 1;
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v9 = new bytes[](data.length);
    require(!((v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v9 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v9)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v9.data, data.data, data.length);
    v9[data.length] = 0;
    v10 = 0x1b78(v9);
    0x1ed5(v10);
    v11 = 0x2178(v3);
    if (this.balance < msg.value) {
        v12 = v13 = 0;
    } else {
        v12 = v14 = _SafeSub(this.balance, msg.value);
    }
    require(v12 <= v12 + v11, Panic(17)); // arithmetic overflow or underflow
    require(v12 + v11 >= v8, 48);
    v15 = _SafeSub(v12 + v11, v8);
    v16 = _SafeMul(v15, msg.value % 1000);
    v17 = v10.data;
    if (0 == (uint8(MEM[v10.word1 + 128]) != uint8.max)) {
        v18 = v19 = stor_3_0_19;
        if (!(0 - bool(v19))) {
            v18 = v20 = block.coinbase;
        }
    } else {
        v21 = v10.data;
        require(uint8(MEM[v10.word1 + 128]) < uint8(MEM[v10.word1 + 64]), 36);
        require(!uint8(MEM[v10.word1 + 128]) | (20 == uint8(MEM[v10.word1 + 128]) * 20 / uint8(MEM[v10.word1 + 128])), Panic(17)); // arithmetic overflow or underflow
        v22 = _SafeAdd(v10.word2, uint8(MEM[v10.word1 + 128]) * 20);
        require(v22 <= v22 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v10.word0.length] >= v22 + 20, 40);
        v18 = MEM[32 + (v22 + v10.word0.length)] >> 96;
    }
    if (!address(v18)) {
        v18 = v23 = block.coinbase;
    }
    v24 = v25 = bool(v16 / 1000);
    if (!(v16 / 1000)) {
        v24 = v26 = bool(v0);
    }
    if (v24) {
        v27 = _SafeAdd(v16 / 1000, v0);
        0x223e(v18, v27);
    }
    if (v15 <= v16 / 1000) {
        v28 = v29 = 0;
    } else {
        v28 = v30 = _SafeSub(v15, v16 / 1000);
    }
    if (v28) {
        0x223e(msg.sender, v28);
    }
    _algebraSwapCallback = 0;
    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
    tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
    tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
    tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
    tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
    owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
    tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = 0;
    tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = 0;
    tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = 0;
    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
    tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
    tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = 0;
    _uniswapV2Call = 0;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 0;
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = 0;
    tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = 0;
    MEM[0] = v31;
    tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = 0;
    return v15;
}

function 0xfd3330c7(uint256 varg0, uint256 varg1, uint256 varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(varg0 <= uint64.max);
    require(varg0 + 35 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(varg0.length * 96 + varg0 + 36 <= msg.data.length);
    require(varg1 <= uint64.max);
    require(varg1 + 35 < msg.data.length);
    require(varg1.length <= uint64.max);
    require((varg1.length << 6) + varg1 + 36 <= msg.data.length);
    require(varg2 <= uint64.max);
    require(varg2 + 35 < msg.data.length);
    require(varg2.length <= uint64.max);
    require(varg2 + (varg2.length << 5) + 36 <= msg.data.length);
    require(!(msg.sender - _owner), 1);
    v0 = v1 = 0;
    while (v0 < varg0.length) {
        v2 = 0x1b30(varg0.data, varg0.length, v0);
        require(!(msg.data[v2] - uint8(msg.data[v2])));
        v3 = 0x1b30(varg0.data, varg0.length, v0);
        require(!(msg.data[v3 + 32] - address(msg.data[v3 + 32])));
        v4 = 0x1b30(varg0.data, varg0.length, v0);
        require(!(msg.data[v4 + 64] - bool(msg.data[v4 + 64])));
        0x2b7d(msg.data[v2], msg.data[v3 + 32], msg.data[v4 + 64]);
        v0 = v0 + 1;
    }
    v5 = v6 = 0;
    while (v5 < varg1.length) {
        v7 = 0x1b68(varg1.data, varg1.length, v5);
        require(!(msg.data[v7] - address(msg.data[v7])));
        v8 = 0x1b68(varg1.data, varg1.length, v5);
        0x247c(msg.data[v7], msg.data[v8 + 32]);
        v5 = v5 + 1;
    }
    v9 = v10 = 0;
    while (v9 < varg2.length) {
        require(!(msg.data[36 + (varg2 + (v9 << 5))] - address(msg.data[36 + (varg2 + (v9 << 5))])));
        require(address(msg.data[36 + (varg2 + (v9 << 5))]), 7);
        _execute[address(msg.data[36 + (varg2 + (v9 << 5))])] = 1;
        v9 = v9 + 1;
    }
    exit;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg0 + varg1, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function _SafeMul(uint256 varg0, uint256 varg1) private { 
    require((varg0 * varg1 / varg0 == varg1) | !varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 * varg1;
}

function _SafeDiv(uint256 varg0, uint256 varg1) private { 
    require(varg1, Panic(18)); // division by zero
    return varg0 / varg1;
}

function 0x1b30(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return 96 * varg2 + varg0;
}

function 0x1b68(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    require(varg2 < varg1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    return (varg2 << 6) + varg0;
}

function 0x1b78(bytes varg0) private { 
    v0 = new struct(6);
    require(!((v0 + 192 > uint64.max) | (v0 + 192 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 96;
    v1 = v0.data;
    v2 = new struct(6);
    require(!((v2 + 192 > uint64.max) | (v2 + 192 < v2)), Panic(65)); // failed memory allocation (too much memory)
    v2.word0 = 0;
    v2.word1 = 0;
    v2.word2 = 0;
    v2.word3 = 0;
    v2.word4 = 0;
    v2.word5 = 0;
    v0.word1 = v2;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    require(varg0.length >= 11, 31);
    require(1 <= varg0.length, 40);
    require(varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    v3 = v4 = MEM[varg0.data] >> 248 != 65;
    if (MEM[varg0.data] >> 248 == 65) {
        require(2 <= varg0.length, 40);
        require(1 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = v5 = MEM[varg0 + 33] >> 248 != 82;
    }
    if (!v3) {
        require(3 <= varg0.length, 40);
        require(2 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = v6 = MEM[varg0 + 34] >> 248 != 67;
    }
    if (!v3) {
        require(4 <= varg0.length, 40);
        require(3 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v3 = v7 = MEM[varg0 + 35] >> 248 != 51;
    }
    require(!v3, 32);
    v0.word0 = varg0;
    require(5 <= varg0.length, 40);
    require(4 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(6 <= varg0.length, 40);
    require(5 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(7 <= varg0.length, 40);
    require(6 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(8 <= varg0.length, 40);
    require(7 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(9 <= varg0.length, 40);
    require(8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
    require(11 <= varg0.length, 40);
    v8 = new struct(6);
    require(!((v8 + 192 > uint64.max) | (v8 + 192 < v8)), Panic(65)); // failed memory allocation (too much memory)
    v8.word0 = MEM[varg0 + 36] >> 248;
    v8.word1 = MEM[varg0 + 37] >> 248;
    v8.word2 = MEM[varg0 + 38] >> 248;
    v8.word3 = MEM[varg0 + 39] >> 248;
    v8.word4 = MEM[varg0 + 40] >> 248;
    v8.word5 = MEM[varg0 + 41] >> 240;
    v0.word1 = v8;
    require(!(uint8(v8.word0) - 3), 33);
    v0.word2 = 11;
    require(!uint8(MEM[v0.word1 + 64]) | (20 == uint8(MEM[v0.word1 + 64]) * 20 / uint8(MEM[v0.word1 + 64])), Panic(17)); // arithmetic overflow or underflow
    require(11 <= 11 + uint8(MEM[v0.word1 + 64]) * 20, Panic(17)); // arithmetic overflow or underflow
    v0.word3 = 11 + uint8(MEM[v0.word1 + 64]) * 20;
    v0.word4 = uint16(MEM[v0.word1 + 160]);
    require(!uint8(MEM[v0.word1 + 96]) | (8 == (MEM[v0.word1 + 96] << 3 & 0x7f8) / uint8(MEM[v0.word1 + 96])), Panic(17)); // arithmetic overflow or underflow
    v9 = _SafeAdd(11 + uint8(MEM[v0.word1 + 64]) * 20, MEM[v0.word1 + 96] << 3 & 0x7f8);
    require(v0.word4 >= v9, 34);
    require(varg0.length >= v0.word4, 35);
    v10 = v11 = varg0.length;
    v12 = v13 = 0;
    while (v12 < uint8(MEM[96 + v0.word1])) {
        require(!v12 | (8 == (v12 << 3) / v12), Panic(17)); // arithmetic overflow or underflow
        v14 = _SafeAdd(v0.word3, v12 << 3);
        require(v14 <= v14 + 4, Panic(17)); // arithmetic overflow or underflow
        require(varg0.length >= v14 + 4, 40);
        v10 = v15 = uint32(varg0[v14] >> 224);
        v16 = v17 = bool(v15);
        if (v17) {
            v16 = v18 = v15 < v10;
        }
        if (!v16) {
        }
        v12 += 1;
    }
    v0.word5 = v10;
    require(v0.word4 <= v10, 35);
    return v0;
}

function 0x1ed5(struct(6) varg0) private { 
    v0 = varg0.data;
    if (!(MEM[varg0.word1 + 32] & 0x1)) {
        v1 = v2 = varg0.word5 > varg0.word5;
        if (varg0.word5 <= varg0.word5) {
            v1 = v3 = varg0.word4 >= varg0.word5;
        }
        require(!v1, 37);
        tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
        owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
        tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
        tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = 0;
        tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = 0;
        tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = 0;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
        tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
        tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = 0;
        _uniswapV2Call = 0;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 0;
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = 0;
        tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = 0;
        tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = 0;
        require(varg0.word4 <= varg0.word4 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= varg0.word4 + 1, 40);
        require(varg0.word4 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (uint8(MEM[32 + (varg0.word4 + varg0.word0.length)] >> 248) - 12) {
            v4 = 0x2511(varg0, varg0.word4, varg0.word5);
        } else {
            0x4056(varg0, varg0.word4, varg0.word5);
        }
        0x4731();
        tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
        owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
        tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
        tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = 0;
        tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = 0;
        tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = 0;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
        tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
        tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = 0;
        _uniswapV2Call = 0;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 0;
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = 0;
        tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = 0;
        MEM[0] = v5;
        tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = 0;
        return ;
    } else {
        require(uint8(MEM[varg0.word1 + 96]), 37);
        require(uint8(MEM[96 + varg0.word1]), 19);
        require(!0, Panic(17)); // arithmetic overflow or underflow
        require(varg0.word3 <= varg0.word3 + 4, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= varg0.word3 + 4, 40);
        require(varg0.word3 <= varg0.word3 + 4, Panic(17)); // arithmetic overflow or underflow
        require(varg0.word3 + 4 <= varg0.word3 + 4 + 4, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= varg0.word3 + 4 + 4, 40);
        require(uint32(MEM[32 + (varg0.word3 + varg0.word0.length)] >> 224) + uint32(MEM[32 + (varg0.word3 + 4 + varg0.word0.length)] >> 224) <= uint32.max, Panic(17)); // arithmetic overflow or underflow
        require(uint32(uint32(MEM[32 + (varg0.word3 + varg0.word0.length)] >> 224) + uint32(MEM[32 + (varg0.word3 + 4 + varg0.word0.length)] >> 224)) <= MEM[varg0.word0.length], 19);
        v6 = 0x47fc(varg0.word0.length, uint32(MEM[32 + (varg0.word3 + varg0.word0.length)] >> 224), uint32(MEM[32 + (varg0.word3 + 4 + varg0.word0.length)] >> 224));
        v7 = v8 = !v6.length;
        if (bool(v6.length)) {
            v7 = v9 = bool(v6.length % 37);
        }
        require(!v7, 37);
        v10 = v11 = 0;
        while (v10 < v6.length) {
            require(v10 <= v10 + 2, Panic(17)); // arithmetic overflow or underflow
            require(v6.length >= v10 + 2, 40);
            require(v10 <= v10 + 2, Panic(17)); // arithmetic overflow or underflow
            require(v10 + 2 <= v10 + 2 + 2, Panic(17)); // arithmetic overflow or underflow
            require(v6.length >= v10 + 2 + 2, 40);
            require(v10 <= v10 + 4, Panic(17)); // arithmetic overflow or underflow
            require(v10 + 4 <= v10 + 4 + 1, Panic(17)); // arithmetic overflow or underflow
            require(v6.length >= v10 + 4 + 1, 40);
            require(v10 + 4 < v6.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(v10 <= v10 + 5, Panic(17)); // arithmetic overflow or underflow
            require(v10 + 5 <= v10 + 5 + 32, Panic(17)); // arithmetic overflow or underflow
            require(v6.length >= v10 + 5 + 32, 40);
            v12 = v13 = uint16(v6[v10] >> 240) < varg0.word4;
            if (uint16(v6[v10] >> 240) >= varg0.word4) {
                v12 = v14 = uint16(v6[v10 + 2] >> 240) > varg0.word5;
            }
            if (!v12) {
                v12 = v15 = uint16(v6[v10] >> 240) >= uint16(v6[v10 + 2] >> 240);
            }
            require(!v12, 37);
            tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
            owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
            tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
            tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
            owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
            tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = 0;
            tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = 0;
            tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = 0;
            tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
            tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
            tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
            tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = 0;
            _uniswapV2Call = 0;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 0;
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = 0;
            tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = 0;
            tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = 0;
            require(uint16(v6[v10] >> 240) <= uint16(v6[v10] >> 240) + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= uint16(v6[v10] >> 240) + 1, 40);
            require(uint16(v6[v10] >> 240) < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            if (uint8(MEM[32 + (uint16(v6[v10] >> 240) + varg0.word0.length)] >> 248) - 12) {
                0x4019(varg0, v6[v10 + 4] >> 248, v6[v10 + 5]);
                v16 = 0x2511(varg0, uint16(v6[v10] >> 240), uint16(v6[v10 + 2] >> 240));
            } else {
                v17 = v18 = uint8(v6[v10 + 4] >> 248) != uint8.max;
                if (uint8(v6[v10 + 4] >> 248) == uint8.max) {
                    v17 = v19 = bool(v6[v10 + 5]);
                }
                require(!v17, 38);
                0x4056(varg0, uint16(v6[v10] >> 240), uint16(v6[v10 + 2] >> 240));
            }
            0x4731();
            tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
            owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
            tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
            tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
            owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
            tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = 0;
            tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = 0;
            tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = 0;
            tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
            tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
            tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
            tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = 0;
            _uniswapV2Call = 0;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 0;
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = 0;
            tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = 0;
            MEM[0] = v20;
            tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = 0;
            v10 = v10 + 37;
            require(v10 <= v10, Panic(17)); // arithmetic overflow or underflow
        }
        return ;
    }
}

function 0x2178(uint256 varg0) private { 
    v0, v1 = _weth.balanceOf(this).gas(msg.gas);
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
    if (v1 > varg0) {
        v6 = _SafeSub(v1, varg0);
        require(_weth.code.size);
        v7, /* uint256 */ v8 = _weth.withdraw(v6).gas(msg.gas);
        require(v7, v8, RETURNDATASIZE());
        if (v7) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            return varg0;
        } else {
            return varg0;
        }
    } else {
        return v1;
    }
}

function 0x223e(uint256 varg0, uint256 varg1) private { 
    if (!varg1) {
        return ;
    } else {
        v0, /* uint256 */ v1 = varg0.call().value(varg1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v2 = new bytes[](RETURNDATASIZE());
            require(!((v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + RETURNDATASIZE()) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
            v1 = v2.data;
            RETURNDATACOPY(v1, 0, RETURNDATASIZE());
        }
        require(v0, 9);
        return ;
    }
}

function 0x231c(uint256 varg0) private { 
    require(varg0 != int256.min, Panic(17)); // arithmetic overflow or underflow
    return 0 - varg0;
}

function 0x247c(address varg0, uint256 varg1) private { 
    v0 = v1 = !varg0;
    if (bool(varg0)) {
        v0 = v2 = !varg1;
    }
    require(!v0, 7);
    mapping_6[varg0] = varg1;
    return ;
}

function 0x24a8() private { 
    v0 = new struct(12);
    require(!((v0 + 384 > uint64.max) | (v0 + 384 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v0.word0 = 0;
    v0.word1 = 0;
    v0.word2 = 0;
    v0.word3 = 0;
    v0.word4 = 0;
    v0.word5 = 0;
    v0.word6 = 0;
    v0.word7 = 0;
    v0.word8 = 0;
    v0.word9 = 0;
    v0.word10 = 0;
    v0.word11 = 0;
    return v0;
}

function 0x2511(struct(6) varg0, uint256 varg1, uint256 varg2) private { 
    while (varg1 < varg2) {
        require(varg1 <= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= varg1 + 1, 40);
        require(varg1 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) != 12, 38);
        MEM[0] = MEM[0];
        if (!tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7) {
            if (uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) - 3) {
                v0 = v1 = 0;
                require(varg1 < MEM[varg0.word0.length], 40);
                v2 = varg0.word0.length + varg1;
                require(varg1 <= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require((byte(MEM[v2 + 32], 0x0)) != 12, 38);
                if (!(byte(MEM[v2 + 32], 0x0))) {
                    varg1 += 69;
                    require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 <= MEM[varg0.word0.length], 40);
                    0x4bd4(varg0, byte(MEM[v2 + 33], 0x0), byte(MEM[v2 + 34], 0x0), byte(MEM[v2 + 35], 0x0), MEM[v2 + 36], byte(MEM[v2 + 68], 0x0), MEM[v2 + 69]);
                } else if ((byte(MEM[v2 + 32], 0x0)) == 1) {
                    varg1 += 37;
                    require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 <= MEM[varg0.word0.length], 40);
                    v3 = varg0.data;
                    require(uint8(byte(MEM[v2 + 34], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 34], 0x0)) | (20 == uint8(byte(MEM[v2 + 34], 0x0)) * 20 / uint8(byte(MEM[v2 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v4 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 34], 0x0)) * 20);
                    require(v4 <= v4 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v4 + 20, 40);
                    MEM[0] = MEM[0];
                    v5 = varg0.data;
                    require(uint8(byte(MEM[v2 + 35], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 35], 0x0)) | (20 == uint8(byte(MEM[v2 + 35], 0x0)) * 20 / uint8(byte(MEM[v2 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v6 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 35], 0x0)) * 20);
                    require(v6 <= v6 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v6 + 20, 40);
                    v7 = varg0.data;
                    require(uint8(byte(MEM[v2 + 68], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 68], 0x0)) | (20 == uint8(byte(MEM[v2 + 68], 0x0)) * 20 / uint8(byte(MEM[v2 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v8 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 68], 0x0)) * 20);
                    require(v8 <= v8 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v8 + 20, 40);
                    v9 = v10 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                        v9 = v11 = !MEM[v2 + 36];
                    }
                    require(!v9, 6);
                    MEM[0] = MEM[0];
                    v12 = v13 = address(MEM[32 + (v4 + varg0.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (v13) {
                        v12 = v14 = address(MEM[32 + (v4 + varg0.word0.length)] >> 96) == address(MEM[32 + (v6 + varg0.word0.length)] >> 96);
                    }
                    if (!v12) {
                        v12 = v15 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v4 + varg0.word0.length)] >> 96);
                        if (v15) {
                            v12 = address(MEM[32 + (v4 + varg0.word0.length)] >> 96) == address(MEM[32 + (v6 + varg0.word0.length)] >> 96);
                        }
                    }
                    require(v12, 4);
                    v16 = v17 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v4 + varg0.word0.length)] >> 96);
                    if (v17) {
                        v16 = v18 = address(MEM[32 + (v6 + varg0.word0.length)] >> 96) == address(MEM[32 + (v4 + varg0.word0.length)] >> 96);
                    }
                    require(!(bool(v16) - ((byte(MEM[v2 + 33], 0x0)) & 0x1 == 1)), 4);
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                        require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                        MEM[0] = MEM[0];
                        v19 = v20 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v4 + varg0.word0.length)] >> 96);
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v4 + varg0.word0.length)] >> 96)) {
                            MEM[0] = MEM[0];
                            v19 = v21 = !_uniswapV2Call;
                        }
                        require(!v19, 19);
                        MEM[0] = MEM[0];
                        v22 = v23 = _uniswapV2Call;
                    } else {
                        MEM[0] = MEM[0];
                        v24 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                            MEM[0] = MEM[0];
                            v24 = v25 = !_uniswapV2Call;
                        }
                        require(!v24, 41);
                        MEM[0] = MEM[0];
                        v22 = v26 = _uniswapV2Call;
                        0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v4 + varg0.word0.length)] >> 96, v26);
                    }
                    v27 = v28 = mapping_5[address(MEM[32 + (v4 + varg0.word0.length)] >> 96)];
                    if (!v28) {
                        v27 = v29 = 30;
                    }
                    v30, /* uint112 */ v31, /* uint112 */ v32, /* uint32 */ v33 = address(MEM[32 + (v4 + varg0.word0.length)] >> 96).getReserves().gas(msg.gas);
                    if (!v30) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v31 = v34 = 0;
                        v32 = v35 = 0;
                        if (v30) {
                            if (96 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v36 = v37 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 96;
                                v36 = v38 = MEM[64] + 96;
                            }
                            require(v36 - MEM[64] >= 96);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v32 - uint112(v32)));
                            require(!(v33 - uint32(v33)));
                        }
                        if ((byte(MEM[v2 + 33], 0x0)) & 0x1 == 1) {
                            v39 = v40 = 0x5620(v22, uint112(v32), uint112(v31), v27);
                        } else {
                            v39 = v41 = 0x5620(v22, uint112(v31), uint112(v32), v27);
                        }
                        require(v39 >= MEM[v2 + 36], 43);
                        0x56b3(byte(MEM[v2 + 35], 0x0), MEM[32 + (v6 + varg0.word0.length)] >> 96, MEM[32 + (v8 + varg0.word0.length)] >> 96);
                        if ((byte(MEM[v2 + 33], 0x0)) & 0x1 != 1) {
                            v39 = v42 = 0;
                        }
                        if ((byte(MEM[v2 + 33], 0x0)) & 0x1 == 1) {
                            v39 = v43 = 0;
                        }
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((address(MEM[32 + (v4 + varg0.word0.length)] >> 96)).code.size);
                        v44 = new uint256[](0);
                        MCOPY(v44.data, 32 + MEM[64], 0);
                        MEM[v44.data] = 0;
                        v45 = address(MEM[32 + (v4 + varg0.word0.length)] >> 96).swap(v39, v39, address(MEM[32 + (v8 + varg0.word0.length)] >> 96), v44).gas(msg.gas);
                        if (!v45) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v45) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                            }
                            0x5760(byte(MEM[v2 + 35], 0x0), MEM[32 + (v6 + varg0.word0.length)] >> 96, v39, MEM[32 + (v8 + varg0.word0.length)] >> 96);
                        }
                    }
                } else if ((byte(MEM[v2 + 32], 0x0)) == 2) {
                    varg1 += 57;
                    require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 <= MEM[varg0.word0.length], 40);
                    v46 = v47 = MEM[v2 + 68] >> 96;
                    v48 = varg0.data;
                    require(uint8(byte(MEM[v2 + 34], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 34], v1)) | (20 == uint8(byte(MEM[v2 + 34], v1)) * 20 / uint8(byte(MEM[v2 + 34], v1))), Panic(17)); // arithmetic overflow or underflow
                    v49 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 34], v1)) * 20);
                    require(v49 <= v49 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v49 + 20, 40);
                    v50 = varg0.data;
                    require(uint8(byte(MEM[v2 + 35], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 35], v1)) | (20 == uint8(byte(MEM[v2 + 35], v1)) * 20 / uint8(byte(MEM[v2 + 35], v1))), Panic(17)); // arithmetic overflow or underflow
                    v51 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 35], v1)) * 20);
                    require(v51 <= v51 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v51 + 20, 40);
                    v52 = varg0.data;
                    require(uint8(byte(MEM[v2 + 88], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 88], v1)) | (20 == uint8(byte(MEM[v2 + 88], v1)) * 20 / uint8(byte(MEM[v2 + 88], v1))), Panic(17)); // arithmetic overflow or underflow
                    v53 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 88], v1)) * 20);
                    require(v53 <= v53 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v53 + 20, 40);
                    MEM[0] = MEM[0];
                    require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                    MEM[0] = MEM[0];
                    v54 = v55 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                    if (v55) {
                        MEM[0] = MEM[0];
                        v54 = v56 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    require(!v54, 42);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        v57 = v58 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                        if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                            MEM[0] = MEM[0];
                            v57 = v59 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        }
                        if (!v57) {
                            MEM[0] = MEM[0];
                            v57 = v60 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        }
                        require(!v57, 41);
                        MEM[0] = MEM[0];
                        v61 = v62 = _uniswapV2Call;
                    } else {
                        v61 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                    }
                    require(v61, 6);
                    require(v61 <= int256.max, 6);
                    0x56b3(byte(MEM[v2 + 35], v1), MEM[32 + (v51 + varg0.word0.length)] >> 96, MEM[32 + (v53 + varg0.word0.length)] >> 96);
                    if (!v47) {
                        if ((byte(MEM[v2 + 33], v1)) & 0x1 == 1) {
                            v46 = v63 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v46 = v64 = 0x1000276a4;
                        }
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v49 + varg0.word0.length)] >> 96);
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    v65 = new uint256[](0);
                    MCOPY(v65.data, 32 + MEM[64], 0);
                    MEM[v65.data] = 0;
                    v66, v0, v0 = address(MEM[32 + (v49 + varg0.word0.length)] >> 96).swap(address(MEM[32 + (v53 + varg0.word0.length)] >> 96), bool((byte(MEM[v2 + 33], v1)) & 0x1 != 1), v61, address(v46), v65).value(v1).gas(msg.gas);
                    if (!v66) {
                        RETURNDATACOPY(MEM[64], v1, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v66) {
                            v67 = v68 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v67 = v69 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v67 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v67 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v67 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v67 - MEM[64] >= 64);
                        }
                        tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                        MEM[0] = MEM[0];
                        owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                        if ((byte(MEM[v2 + 33], v1)) & 0x1 == 1) {
                            v70 = v71 = 0x231c(v0);
                        } else {
                            v70 = v72 = 0x231c(v0);
                        }
                        require(v70 >= MEM[v2 + 36], 44);
                        0x5760(byte(MEM[v2 + 35], v1), MEM[32 + (v51 + varg0.word0.length)] >> 96, v70, MEM[32 + (v53 + varg0.word0.length)] >> 96);
                    }
                } else if ((byte(MEM[v2 + 32], 0x0)) == 8) {
                    require(varg1 + 1 <= varg1 + 38, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 + 38 <= MEM[varg0.word0.length], 40);
                    v73 = v74 = byte(MEM[v2 + 34], v1);
                    v75 = v76 = MEM[v2 + 35];
                    v77 = _SafeAdd(varg1 + 38, MEM[v2 + 68] >> 240);
                    require(v77 <= MEM[varg0.word0.length], 40);
                    v78 = 0x47fc(varg0.word0.length, varg1 + 38, MEM[v2 + 68] >> 240);
                    v79 = v80 = mapping_7[byte(MEM[v2 + 33], v1)];
                    v81 = v82 = !v80;
                    if (bool(v80)) {
                        v81 = v83 = !mapping_8[byte(MEM[v2 + 33], v1)];
                    }
                    require(!v81, 28);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                            v84 = v85 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                            if (v85) {
                                MEM[0] = MEM[0];
                                v84 = v86 = v80 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                            }
                            if (!v84) {
                                require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                                MEM[0] = MEM[0];
                                require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                                MEM[0] = MEM[0];
                                require(_poolManager.code.size, v1, v1);
                                v87 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v2 + 33], v1)], _uniswapV2Call).value(v1).gas(msg.gas);
                                if (!v87) {
                                    RETURNDATACOPY(MEM[64], v1, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v87) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v1, v1, v1);
                                    }
                                    v88 = v89 = 32;
                                    v90 = varg0.data;
                                    require(uint8(v74) < uint8(MEM[varg0.word1 + 64]), 36);
                                    require(!uint8(v74) | (20 == uint8(v74) * 20 / uint8(v74)), Panic(17)); // arithmetic overflow or underflow
                                    v91 = _SafeAdd(varg0.word2, uint8(v74) * 20);
                                    require(v91 <= v91 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[varg0.word0.length] >= v91 + 20, 40);
                                    v92 = v93 = MEM[32 + (v91 + varg0.word0.length)] >> 96;
                                    v94 = varg0.data;
                                    require(uint8(byte(MEM[v2 + 67], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                                    require(!uint8(byte(MEM[v2 + 67], v1)) | (20 == uint8(byte(MEM[v2 + 67], v1)) * 20 / uint8(byte(MEM[v2 + 67], v1))), Panic(17)); // arithmetic overflow or underflow
                                    v95 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 67], v1)) * 20);
                                    require(v95 <= v95 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[varg0.word0.length] >= v95 + 20, 40);
                                    v96 = v97 = MEM[32 + (v95 + varg0.word0.length)] >> 96;
                                    0x56b3(v74, v93, v97);
                                    v98 = v99 = 0x55a0(v93, v97);
                                    v100 = v101 = MEM[64];
                                    MEM[v101] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                    MEM[v101 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                    MEM[v101 + 36] = _uniswapV2Call;
                                    MEM[v101 + 68] = address(v93);
                                    MEM[v101 + 100] = v76;
                                    MEM[v101 + 132] = address(v97);
                                    MEM[v101 + 164] = 192;
                                    MEM[v101 + 196] = v78.length;
                                    MCOPY(v101 + 196 + 32, v78.data, v78.length);
                                    MEM[32 + (v78.length + (v101 + 196))] = 0;
                                    v102 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78.length) + (v101 + 196) + 32;
                                }
                            } else {
                                v88 = 32;
                                MEM[0] = MEM[0];
                                v103 = varg0.data;
                                require(uint8(v74) < uint8(MEM[varg0.word1 + 64]), 36);
                                require(!uint8(v74) | (20 == uint8(v74) * 20 / uint8(v74)), Panic(17)); // arithmetic overflow or underflow
                                v104 = _SafeAdd(varg0.word2, uint8(v74) * 20);
                                require(v104 <= v104 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[varg0.word0.length] >= v104 + 20, 40);
                                v92 = MEM[32 + (v104 + varg0.word0.length)] >> 96;
                                v105 = varg0.data;
                                require(uint8(byte(MEM[v2 + 67], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v2 + 67], v1)) | (20 == uint8(byte(MEM[v2 + 67], v1)) * 20 / uint8(byte(MEM[v2 + 67], v1))), Panic(17)); // arithmetic overflow or underflow
                                v106 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 67], v1)) * 20);
                                require(v106 <= v106 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[varg0.word0.length] >= v106 + 20, 40);
                                v96 = MEM[32 + (v106 + varg0.word0.length)] >> 96;
                                0x56b3(v74, v92, v96);
                                v98 = v107 = 0x55a0(v92, v96);
                                v100 = v108 = MEM[64];
                                MEM[v108] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v108 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v108 + 36] = _uniswapV2Call;
                                MEM[v108 + 68] = address(v92);
                                MEM[v108 + 100] = v76;
                                MEM[v108 + 132] = address(v96);
                                MEM[v108 + 164] = 192;
                                MEM[v108 + 196] = v78.length;
                                MCOPY(v108 + 196 + 32, v78.data, v78.length);
                                MEM[32 + (v78.length + (v108 + 196))] = 0;
                                v102 = v109 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78.length) + (v108 + 196) + 32;
                            }
                        } else {
                            MEM[0] = MEM[0];
                            require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                            MEM[0] = MEM[0];
                            v0 = v110 = _uniswapV2Call;
                            if (v110) {
                                if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v80, v110);
                                } else {
                                    v111 = this.balance;
                                    require(v111 >= v110, 6);
                                }
                            }
                            v88 = v112 = 32;
                            v113 = varg0.data;
                            require(uint8(v74) < uint8(MEM[varg0.word1 + 64]), 36);
                            require(!uint8(v74) | (20 == uint8(v74) * 20 / uint8(v74)), Panic(17)); // arithmetic overflow or underflow
                            v114 = _SafeAdd(varg0.word2, uint8(v74) * 20);
                            require(v114 <= v114 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[varg0.word0.length] >= v114 + 20, 40);
                            v92 = v115 = MEM[32 + (v114 + varg0.word0.length)] >> 96;
                            v116 = varg0.data;
                            require(uint8(byte(MEM[v2 + 67], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v2 + 67], v1)) | (20 == uint8(byte(MEM[v2 + 67], v1)) * 20 / uint8(byte(MEM[v2 + 67], v1))), Panic(17)); // arithmetic overflow or underflow
                            v117 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 67], v1)) * 20);
                            require(v117 <= v117 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[varg0.word0.length] >= v117 + 20, 40);
                            v96 = v118 = MEM[32 + (v117 + varg0.word0.length)] >> 96;
                            0x56b3(v74, v115, v118);
                            v98 = v119 = 0x55a0(v115, v118);
                            v100 = v120 = MEM[64];
                            MEM[v120] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v120 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v120 + 36] = v110;
                            MEM[v120 + 68] = address(v115);
                            MEM[v120 + 100] = v76;
                            MEM[v120 + 132] = address(v118);
                            MEM[v120 + 164] = 192;
                            MEM[v120 + 196] = v78.length;
                            MCOPY(v120 + 196 + 32, v78.data, v78.length);
                            MEM[32 + (v78.length + (v120 + 196))] = 0;
                            v102 = v121 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78.length) + (v120 + 196) + 32;
                        }
                    } else {
                        v88 = v122 = 32;
                        v123 = varg0.data;
                        require(uint8(v74) < uint8(MEM[varg0.word1 + 64]), 36);
                        require(!uint8(v74) | (20 == uint8(v74) * 20 / uint8(v74)), Panic(17)); // arithmetic overflow or underflow
                        v124 = _SafeAdd(varg0.word2, uint8(v74) * 20);
                        require(v124 <= v124 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[varg0.word0.length] >= v124 + 20, 40);
                        v92 = v125 = MEM[32 + (v124 + varg0.word0.length)] >> 96;
                        v126 = varg0.data;
                        require(uint8(byte(MEM[v2 + 67], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v2 + 67], v1)) | (20 == uint8(byte(MEM[v2 + 67], v1)) * 20 / uint8(byte(MEM[v2 + 67], v1))), Panic(17)); // arithmetic overflow or underflow
                        v127 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 67], v1)) * 20);
                        require(v127 <= v127 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[varg0.word0.length] >= v127 + 20, 40);
                        v96 = v128 = MEM[32 + (v127 + varg0.word0.length)] >> 96;
                        0x56b3(v74, v125, v128);
                        v98 = v129 = 0x55a0(v125, v128);
                        v100 = v130 = MEM[64];
                        MEM[v130] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v130 + 4] = address(v1);
                        MEM[v130 + 36] = v1;
                        MEM[v130 + 68] = address(v125);
                        MEM[v130 + 100] = v76;
                        MEM[v130 + 132] = address(v128);
                        MEM[v130 + 164] = 192;
                        MEM[v130 + 196] = v78.length;
                        MCOPY(v130 + 196 + 32, v78.data, v78.length);
                        MEM[32 + (v78.length + (v130 + 196))] = 0;
                        v102 = v131 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v78.length) + (v130 + 196) + 32;
                    }
                    v132 = v79.call(MEM[v34e9_0x5V0x2aba0x2511:v34e9_0x5V0x2aba0x2511 + v19fcV0xc01f3V0x2aba0x2511 - v34e9_0x5V0x2aba0x2511], MEM[v34e9_0x5V0x2aba0x2511:v34e9_0x5V0x2aba0x2511 + v366eV0x2aba0x2511]).value(v0).gas(msg.gas);
                    if (!v132) {
                        RETURNDATACOPY(MEM[64], v0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v132) {
                            v133 = v134 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v133 = v135 = RETURNDATASIZE();
                            }
                            require(!((v100 + (v133 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v100 + (v133 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v100)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v100 + (v133 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v100 + v133 - v100 >= 32);
                            v0 = v136 = MEM[v100];
                        }
                        if (!v0) {
                            v137 = 0x55a0(v92, v96);
                            require(v137 >= v98, 12);
                            v0 = v138 = _SafeSub(v137, v98);
                        }
                        require(v0 >= v75, 12);
                        0x5760(v73, v92, v0, v96);
                        varg1 = _SafeAdd(varg1 + 38, MEM[v2 + 68] >> 240);
                    }
                } else if ((byte(MEM[v2 + 32], 0x0)) == 10) {
                    varg1 += 35;
                    require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 <= MEM[varg0.word0.length], 40);
                    v139 = varg0.data;
                    require(uint8(byte(MEM[v2 + 33], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 33], v1)) | (20 == uint8(byte(MEM[v2 + 33], v1)) * 20 / uint8(byte(MEM[v2 + 33], v1))), Panic(17)); // arithmetic overflow or underflow
                    v140 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 33], v1)) * 20);
                    require(v140 <= v140 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v140 + 20, 40);
                    v141 = varg0.data;
                    require(uint8(byte(MEM[v2 + 66], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v2 + 66], v1)) | (20 == uint8(byte(MEM[v2 + 66], v1)) * 20 / uint8(byte(MEM[v2 + 66], v1))), Panic(17)); // arithmetic overflow or underflow
                    v142 = _SafeAdd(varg0.word2, uint8(byte(MEM[v2 + 66], v1)) * 20);
                    require(v142 <= v142 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v142 + 20, 40);
                    v143 = 0x58a9(MEM[32 + (v140 + varg0.word0.length)] >> 96, MEM[v2 + 34]);
                    0x56b3(byte(MEM[v2 + 33], v1), MEM[32 + (v140 + varg0.word0.length)] >> 96, MEM[32 + (v142 + varg0.word0.length)] >> 96);
                    0x2be5(MEM[32 + (v140 + varg0.word0.length)] >> 96, MEM[32 + (v142 + varg0.word0.length)] >> 96, v143);
                    0x5760(byte(MEM[v2 + 33], v1), MEM[32 + (v140 + varg0.word0.length)] >> 96, v143, MEM[32 + (v142 + varg0.word0.length)] >> 96);
                } else {
                    require(11 == (byte(MEM[v2 + 32], 0x0)), 39);
                    varg1 += 35;
                    require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(varg1 <= MEM[varg0.word0.length], 40);
                    0x4e5e(varg0, (byte(MEM[v2 + 33], v1)) & 0x1 == 1, MEM[v2 + 34], byte(MEM[v2 + 66], v1));
                }
            } else {
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = varg1;
                MEM[0] = MEM[0];
                tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = varg2;
                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                MEM[MEM[64] + 36] = MEM[varg0.word0.length];
                MCOPY(MEM[64] + 36 + 32, 32 + varg0.word0.length, MEM[varg0.word0.length]);
                MEM[32 + (MEM[varg0.word0.length] + (MEM[64] + 36))] = 0;
                v144 = _poolManager.call(v145, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (!v144) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v144) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v146.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v147 = new bytes[](v146.length);
                        require(!((v147 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v146.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v147 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v146.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v147)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v146.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v147.data, v146.data, v146.length);
                        v147[v146.length] = 0;
                    }
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                    tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
                    MEM[0] = MEM[0];
                    tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
                }
            }
        } else if (uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) - 3) {
            0x3ec4(varg0, varg1);
            v148 = v149 = 0;
            require(varg1 < MEM[varg0.word0.length], 40);
            v150 = varg0.word0.length + varg1;
            require(varg1 <= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
            require((byte(MEM[v150 + 32], 0x0)) != 12, 38);
            if (!(byte(MEM[v150 + 32], 0x0))) {
                varg1 += 69;
                require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg1 <= MEM[varg0.word0.length], 40);
                0x4bd4(varg0, byte(MEM[v150 + 33], 0x0), byte(MEM[v150 + 34], 0x0), byte(MEM[v150 + 35], 0x0), MEM[v150 + 36], byte(MEM[v150 + 68], 0x0), MEM[v150 + 69]);
            } else if ((byte(MEM[v150 + 32], 0x0)) == 1) {
                varg1 += 37;
                require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg1 <= MEM[varg0.word0.length], 40);
                v151 = varg0.data;
                require(uint8(byte(MEM[v150 + 34], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 34], 0x0)) | (20 == uint8(byte(MEM[v150 + 34], 0x0)) * 20 / uint8(byte(MEM[v150 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v152 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 34], 0x0)) * 20);
                require(v152 <= v152 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v152 + 20, 40);
                MEM[0] = MEM[0];
                v153 = varg0.data;
                require(uint8(byte(MEM[v150 + 35], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 35], 0x0)) | (20 == uint8(byte(MEM[v150 + 35], 0x0)) * 20 / uint8(byte(MEM[v150 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v154 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 35], 0x0)) * 20);
                require(v154 <= v154 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v154 + 20, 40);
                v155 = varg0.data;
                require(uint8(byte(MEM[v150 + 68], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 68], 0x0)) | (20 == uint8(byte(MEM[v150 + 68], 0x0)) * 20 / uint8(byte(MEM[v150 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v156 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 68], 0x0)) * 20);
                require(v156 <= v156 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v156 + 20, 40);
                v157 = v158 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                    v157 = v159 = !MEM[v150 + 36];
                }
                require(!v157, 6);
                MEM[0] = MEM[0];
                v160 = v161 = address(MEM[32 + (v152 + varg0.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (v161) {
                    v160 = v162 = address(MEM[32 + (v152 + varg0.word0.length)] >> 96) == address(MEM[32 + (v154 + varg0.word0.length)] >> 96);
                }
                if (!v160) {
                    v160 = v163 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v152 + varg0.word0.length)] >> 96);
                    if (v163) {
                        v160 = address(MEM[32 + (v152 + varg0.word0.length)] >> 96) == address(MEM[32 + (v154 + varg0.word0.length)] >> 96);
                    }
                }
                require(v160, 4);
                v164 = v165 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v152 + varg0.word0.length)] >> 96);
                if (v165) {
                    v164 = v166 = address(MEM[32 + (v154 + varg0.word0.length)] >> 96) == address(MEM[32 + (v152 + varg0.word0.length)] >> 96);
                }
                require(!(bool(v164) - ((byte(MEM[v150 + 33], 0x0)) & 0x1 == 1)), 4);
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                    require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                    MEM[0] = MEM[0];
                    v167 = v168 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v152 + varg0.word0.length)] >> 96);
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v152 + varg0.word0.length)] >> 96)) {
                        MEM[0] = MEM[0];
                        v167 = v169 = !_uniswapV2Call;
                    }
                    require(!v167, 19);
                    MEM[0] = MEM[0];
                    v170 = v171 = _uniswapV2Call;
                } else {
                    MEM[0] = MEM[0];
                    v172 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                        MEM[0] = MEM[0];
                        v172 = v173 = !_uniswapV2Call;
                    }
                    require(!v172, 41);
                    MEM[0] = MEM[0];
                    v170 = v174 = _uniswapV2Call;
                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v152 + varg0.word0.length)] >> 96, v174);
                }
                v175 = v176 = mapping_5[address(MEM[32 + (v152 + varg0.word0.length)] >> 96)];
                if (!v176) {
                    v175 = v177 = 30;
                }
                v178, /* uint112 */ v179, /* uint112 */ v180, /* uint32 */ v181 = address(MEM[32 + (v152 + varg0.word0.length)] >> 96).getReserves().gas(msg.gas);
                if (!v178) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v179 = v182 = 0;
                    v180 = v183 = 0;
                    if (v178) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v184 = v185 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v184 = v186 = MEM[64] + 96;
                        }
                        require(v184 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v180 - uint112(v180)));
                        require(!(v181 - uint32(v181)));
                    }
                    if ((byte(MEM[v150 + 33], 0x0)) & 0x1 == 1) {
                        v187 = v188 = 0x5620(v170, uint112(v180), uint112(v179), v175);
                    } else {
                        v187 = v189 = 0x5620(v170, uint112(v179), uint112(v180), v175);
                    }
                    require(v187 >= MEM[v150 + 36], 43);
                    0x56b3(byte(MEM[v150 + 35], 0x0), MEM[32 + (v154 + varg0.word0.length)] >> 96, MEM[32 + (v156 + varg0.word0.length)] >> 96);
                    if ((byte(MEM[v150 + 33], 0x0)) & 0x1 != 1) {
                        v187 = v190 = 0;
                    }
                    if ((byte(MEM[v150 + 33], 0x0)) & 0x1 == 1) {
                        v187 = v191 = 0;
                    }
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require((address(MEM[32 + (v152 + varg0.word0.length)] >> 96)).code.size);
                    v192 = new uint256[](0);
                    MCOPY(v192.data, 32 + MEM[64], 0);
                    MEM[v192.data] = 0;
                    v193 = address(MEM[32 + (v152 + varg0.word0.length)] >> 96).swap(v187, v187, address(MEM[32 + (v156 + varg0.word0.length)] >> 96), v192).gas(msg.gas);
                    if (!v193) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v193) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        0x5760(byte(MEM[v150 + 35], 0x0), MEM[32 + (v154 + varg0.word0.length)] >> 96, v187, MEM[32 + (v156 + varg0.word0.length)] >> 96);
                    }
                }
            } else if ((byte(MEM[v150 + 32], 0x0)) == 2) {
                varg1 += 57;
                require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg1 <= MEM[varg0.word0.length], 40);
                v194 = v195 = MEM[v150 + 68] >> 96;
                v196 = varg0.data;
                require(uint8(byte(MEM[v150 + 34], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 34], v149)) | (20 == uint8(byte(MEM[v150 + 34], v149)) * 20 / uint8(byte(MEM[v150 + 34], v149))), Panic(17)); // arithmetic overflow or underflow
                v197 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 34], v149)) * 20);
                require(v197 <= v197 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v197 + 20, 40);
                v198 = varg0.data;
                require(uint8(byte(MEM[v150 + 35], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 35], v149)) | (20 == uint8(byte(MEM[v150 + 35], v149)) * 20 / uint8(byte(MEM[v150 + 35], v149))), Panic(17)); // arithmetic overflow or underflow
                v199 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 35], v149)) * 20);
                require(v199 <= v199 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v199 + 20, 40);
                v200 = varg0.data;
                require(uint8(byte(MEM[v150 + 88], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 88], v149)) | (20 == uint8(byte(MEM[v150 + 88], v149)) * 20 / uint8(byte(MEM[v150 + 88], v149))), Panic(17)); // arithmetic overflow or underflow
                v201 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 88], v149)) * 20);
                require(v201 <= v201 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v201 + 20, 40);
                MEM[0] = MEM[0];
                require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                MEM[0] = MEM[0];
                v202 = v203 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                if (v203) {
                    MEM[0] = MEM[0];
                    v202 = v204 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                }
                require(!v202, 42);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    v205 = v206 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                    if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        MEM[0] = MEM[0];
                        v205 = v207 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    if (!v205) {
                        MEM[0] = MEM[0];
                        v205 = v208 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    }
                    require(!v205, 41);
                    MEM[0] = MEM[0];
                    v209 = v210 = _uniswapV2Call;
                } else {
                    v209 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                }
                require(v209, 6);
                require(v209 <= int256.max, 6);
                0x56b3(byte(MEM[v150 + 35], v149), MEM[32 + (v199 + varg0.word0.length)] >> 96, MEM[32 + (v201 + varg0.word0.length)] >> 96);
                if (!v195) {
                    if ((byte(MEM[v150 + 33], v149)) & 0x1 == 1) {
                        v194 = v211 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v194 = v212 = 0x1000276a4;
                    }
                }
                tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                MEM[0] = MEM[0];
                owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v197 + varg0.word0.length)] >> 96);
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                v213 = new uint256[](0);
                MCOPY(v213.data, 32 + MEM[64], 0);
                MEM[v213.data] = 0;
                v214, v148, v148 = address(MEM[32 + (v197 + varg0.word0.length)] >> 96).swap(address(MEM[32 + (v201 + varg0.word0.length)] >> 96), bool((byte(MEM[v150 + 33], v149)) & 0x1 != 1), v209, address(v194), v213).value(v149).gas(msg.gas);
                if (!v214) {
                    RETURNDATACOPY(MEM[64], v149, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v214) {
                        v215 = v216 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v215 = v217 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v215 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v215 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v215 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v215 - MEM[64] >= 64);
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                    if ((byte(MEM[v150 + 33], v149)) & 0x1 == 1) {
                        v218 = v219 = 0x231c(v148);
                    } else {
                        v218 = v220 = 0x231c(v148);
                    }
                    require(v218 >= MEM[v150 + 36], 44);
                    0x5760(byte(MEM[v150 + 35], v149), MEM[32 + (v199 + varg0.word0.length)] >> 96, v218, MEM[32 + (v201 + varg0.word0.length)] >> 96);
                }
            } else if ((byte(MEM[v150 + 32], 0x0)) == 8) {
                require(varg1 + 1 <= varg1 + 38, Panic(17)); // arithmetic overflow or underflow
                require(varg1 + 38 <= MEM[varg0.word0.length], 40);
                v221 = v222 = byte(MEM[v150 + 34], v149);
                v223 = v224 = MEM[v150 + 35];
                v225 = _SafeAdd(varg1 + 38, MEM[v150 + 68] >> 240);
                require(v225 <= MEM[varg0.word0.length], 40);
                v226 = 0x47fc(varg0.word0.length, varg1 + 38, MEM[v150 + 68] >> 240);
                v227 = v228 = mapping_7[byte(MEM[v150 + 33], v149)];
                v229 = v230 = !v228;
                if (bool(v228)) {
                    v229 = v231 = !mapping_8[byte(MEM[v150 + 33], v149)];
                }
                require(!v229, 28);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                        v232 = v233 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                        if (v233) {
                            MEM[0] = MEM[0];
                            v232 = v234 = v228 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                        }
                        if (!v232) {
                            require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                            MEM[0] = MEM[0];
                            require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                            MEM[0] = MEM[0];
                            require(_poolManager.code.size, v149, v149);
                            v235 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v150 + 33], v149)], _uniswapV2Call).value(v149).gas(msg.gas);
                            if (!v235) {
                                RETURNDATACOPY(MEM[64], v149, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v235) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v149, v149, v149);
                                }
                                v236 = v237 = 32;
                                v238 = varg0.data;
                                require(uint8(v222) < uint8(MEM[varg0.word1 + 64]), 36);
                                require(!uint8(v222) | (20 == uint8(v222) * 20 / uint8(v222)), Panic(17)); // arithmetic overflow or underflow
                                v239 = _SafeAdd(varg0.word2, uint8(v222) * 20);
                                require(v239 <= v239 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[varg0.word0.length] >= v239 + 20, 40);
                                v240 = v241 = MEM[32 + (v239 + varg0.word0.length)] >> 96;
                                v242 = varg0.data;
                                require(uint8(byte(MEM[v150 + 67], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v150 + 67], v149)) | (20 == uint8(byte(MEM[v150 + 67], v149)) * 20 / uint8(byte(MEM[v150 + 67], v149))), Panic(17)); // arithmetic overflow or underflow
                                v243 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 67], v149)) * 20);
                                require(v243 <= v243 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[varg0.word0.length] >= v243 + 20, 40);
                                v244 = v245 = MEM[32 + (v243 + varg0.word0.length)] >> 96;
                                0x56b3(v222, v241, v245);
                                v246 = v247 = 0x55a0(v241, v245);
                                v248 = v249 = MEM[64];
                                MEM[v249] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v249 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v249 + 36] = _uniswapV2Call;
                                MEM[v249 + 68] = address(v241);
                                MEM[v249 + 100] = v224;
                                MEM[v249 + 132] = address(v245);
                                MEM[v249 + 164] = 192;
                                MEM[v249 + 196] = v226.length;
                                MCOPY(v249 + 196 + 32, v226.data, v226.length);
                                MEM[32 + (v226.length + (v249 + 196))] = 0;
                                v250 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v226.length) + (v249 + 196) + 32;
                            }
                        } else {
                            v236 = 32;
                            MEM[0] = MEM[0];
                            v251 = varg0.data;
                            require(uint8(v222) < uint8(MEM[varg0.word1 + 64]), 36);
                            require(!uint8(v222) | (20 == uint8(v222) * 20 / uint8(v222)), Panic(17)); // arithmetic overflow or underflow
                            v252 = _SafeAdd(varg0.word2, uint8(v222) * 20);
                            require(v252 <= v252 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[varg0.word0.length] >= v252 + 20, 40);
                            v240 = MEM[32 + (v252 + varg0.word0.length)] >> 96;
                            v253 = varg0.data;
                            require(uint8(byte(MEM[v150 + 67], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v150 + 67], v149)) | (20 == uint8(byte(MEM[v150 + 67], v149)) * 20 / uint8(byte(MEM[v150 + 67], v149))), Panic(17)); // arithmetic overflow or underflow
                            v254 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 67], v149)) * 20);
                            require(v254 <= v254 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[varg0.word0.length] >= v254 + 20, 40);
                            v244 = MEM[32 + (v254 + varg0.word0.length)] >> 96;
                            0x56b3(v222, v240, v244);
                            v246 = v255 = 0x55a0(v240, v244);
                            v248 = v256 = MEM[64];
                            MEM[v256] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v256 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v256 + 36] = _uniswapV2Call;
                            MEM[v256 + 68] = address(v240);
                            MEM[v256 + 100] = v224;
                            MEM[v256 + 132] = address(v244);
                            MEM[v256 + 164] = 192;
                            MEM[v256 + 196] = v226.length;
                            MCOPY(v256 + 196 + 32, v226.data, v226.length);
                            MEM[32 + (v226.length + (v256 + 196))] = 0;
                            v250 = v257 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v226.length) + (v256 + 196) + 32;
                        }
                    } else {
                        MEM[0] = MEM[0];
                        require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                        MEM[0] = MEM[0];
                        v148 = v258 = _uniswapV2Call;
                        if (v258) {
                            if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v228, v258);
                            } else {
                                v259 = this.balance;
                                require(v259 >= v258, 6);
                            }
                        }
                        v236 = v260 = 32;
                        v261 = varg0.data;
                        require(uint8(v222) < uint8(MEM[varg0.word1 + 64]), 36);
                        require(!uint8(v222) | (20 == uint8(v222) * 20 / uint8(v222)), Panic(17)); // arithmetic overflow or underflow
                        v262 = _SafeAdd(varg0.word2, uint8(v222) * 20);
                        require(v262 <= v262 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[varg0.word0.length] >= v262 + 20, 40);
                        v240 = v263 = MEM[32 + (v262 + varg0.word0.length)] >> 96;
                        v264 = varg0.data;
                        require(uint8(byte(MEM[v150 + 67], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v150 + 67], v149)) | (20 == uint8(byte(MEM[v150 + 67], v149)) * 20 / uint8(byte(MEM[v150 + 67], v149))), Panic(17)); // arithmetic overflow or underflow
                        v265 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 67], v149)) * 20);
                        require(v265 <= v265 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[varg0.word0.length] >= v265 + 20, 40);
                        v244 = v266 = MEM[32 + (v265 + varg0.word0.length)] >> 96;
                        0x56b3(v222, v263, v266);
                        v246 = v267 = 0x55a0(v263, v266);
                        v248 = v268 = MEM[64];
                        MEM[v268] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v268 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        MEM[v268 + 36] = v258;
                        MEM[v268 + 68] = address(v263);
                        MEM[v268 + 100] = v224;
                        MEM[v268 + 132] = address(v266);
                        MEM[v268 + 164] = 192;
                        MEM[v268 + 196] = v226.length;
                        MCOPY(v268 + 196 + 32, v226.data, v226.length);
                        MEM[32 + (v226.length + (v268 + 196))] = 0;
                        v250 = v269 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v226.length) + (v268 + 196) + 32;
                    }
                } else {
                    v236 = v270 = 32;
                    v271 = varg0.data;
                    require(uint8(v222) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(v222) | (20 == uint8(v222) * 20 / uint8(v222)), Panic(17)); // arithmetic overflow or underflow
                    v272 = _SafeAdd(varg0.word2, uint8(v222) * 20);
                    require(v272 <= v272 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v272 + 20, 40);
                    v240 = v273 = MEM[32 + (v272 + varg0.word0.length)] >> 96;
                    v274 = varg0.data;
                    require(uint8(byte(MEM[v150 + 67], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v150 + 67], v149)) | (20 == uint8(byte(MEM[v150 + 67], v149)) * 20 / uint8(byte(MEM[v150 + 67], v149))), Panic(17)); // arithmetic overflow or underflow
                    v275 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 67], v149)) * 20);
                    require(v275 <= v275 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[varg0.word0.length] >= v275 + 20, 40);
                    v244 = v276 = MEM[32 + (v275 + varg0.word0.length)] >> 96;
                    0x56b3(v222, v273, v276);
                    v246 = v277 = 0x55a0(v273, v276);
                    v248 = v278 = MEM[64];
                    MEM[v278] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                    MEM[v278 + 4] = address(v149);
                    MEM[v278 + 36] = v149;
                    MEM[v278 + 68] = address(v273);
                    MEM[v278 + 100] = v224;
                    MEM[v278 + 132] = address(v276);
                    MEM[v278 + 164] = 192;
                    MEM[v278 + 196] = v226.length;
                    MCOPY(v278 + 196 + 32, v226.data, v226.length);
                    MEM[32 + (v226.length + (v278 + 196))] = 0;
                    v250 = v279 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v226.length) + (v278 + 196) + 32;
                }
                v280 = v227.call(MEM[v34e9_0x5V0x29d70x2511:v34e9_0x5V0x29d70x2511 + v19fcV0xc01f3V0x29d70x2511 - v34e9_0x5V0x29d70x2511], MEM[v34e9_0x5V0x29d70x2511:v34e9_0x5V0x29d70x2511 + v366eV0x29d70x2511]).value(v148).gas(msg.gas);
                if (!v280) {
                    RETURNDATACOPY(MEM[64], v148, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v280) {
                        v281 = v282 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v281 = v283 = RETURNDATASIZE();
                        }
                        require(!((v248 + (v281 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v248 + (v281 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v248)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v248 + (v281 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v248 + v281 - v248 >= 32);
                        v148 = v284 = MEM[v248];
                    }
                    if (!v148) {
                        v285 = 0x55a0(v240, v244);
                        require(v285 >= v246, 12);
                        v148 = v286 = _SafeSub(v285, v246);
                    }
                    require(v148 >= v223, 12);
                    0x5760(v221, v240, v148, v244);
                    varg1 = _SafeAdd(varg1 + 38, MEM[v150 + 68] >> 240);
                }
            } else if ((byte(MEM[v150 + 32], 0x0)) == 10) {
                varg1 += 35;
                require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg1 <= MEM[varg0.word0.length], 40);
                v287 = varg0.data;
                require(uint8(byte(MEM[v150 + 33], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 33], v149)) | (20 == uint8(byte(MEM[v150 + 33], v149)) * 20 / uint8(byte(MEM[v150 + 33], v149))), Panic(17)); // arithmetic overflow or underflow
                v288 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 33], v149)) * 20);
                require(v288 <= v288 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v288 + 20, 40);
                v289 = varg0.data;
                require(uint8(byte(MEM[v150 + 66], v149)) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(byte(MEM[v150 + 66], v149)) | (20 == uint8(byte(MEM[v150 + 66], v149)) * 20 / uint8(byte(MEM[v150 + 66], v149))), Panic(17)); // arithmetic overflow or underflow
                v290 = _SafeAdd(varg0.word2, uint8(byte(MEM[v150 + 66], v149)) * 20);
                require(v290 <= v290 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v290 + 20, 40);
                v291 = 0x58a9(MEM[32 + (v288 + varg0.word0.length)] >> 96, MEM[v150 + 34]);
                0x56b3(byte(MEM[v150 + 33], v149), MEM[32 + (v288 + varg0.word0.length)] >> 96, MEM[32 + (v290 + varg0.word0.length)] >> 96);
                0x2be5(MEM[32 + (v288 + varg0.word0.length)] >> 96, MEM[32 + (v290 + varg0.word0.length)] >> 96, v291);
                0x5760(byte(MEM[v150 + 33], v149), MEM[32 + (v288 + varg0.word0.length)] >> 96, v291, MEM[32 + (v290 + varg0.word0.length)] >> 96);
            } else {
                require(11 == (byte(MEM[v150 + 32], 0x0)), 39);
                varg1 += 35;
                require(varg1 >= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
                require(varg1 <= MEM[varg0.word0.length], 40);
                0x4e5e(varg0, (byte(MEM[v150 + 33], v149)) & 0x1 == 1, MEM[v150 + 34], byte(MEM[v150 + 66], v149));
            }
        } else {
            require(varg1 <= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= varg1 + 1, 40);
            require(varg1 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(!(uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) - 3), 19);
            v292 = varg1 + 1;
            require(varg1 <= v292, Panic(17)); // arithmetic overflow or underflow
            v293 = 0x24a8();
            v294 = 0x24a8();
            require(v292 <= v292 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v292 + 1, 40);
            require(v292 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word0 = MEM[32 + (v292 + varg0.word0.length)] >> 248 & 0x1 == 1;
            v294.word1 = MEM[32 + (v292 + varg0.word0.length)] >> 248 & 0x2 == 2;
            v294.word2 = MEM[32 + (v292 + varg0.word0.length)] >> 248 >> 2 & 0x3;
            require(MEM[32 + (v292 + varg0.word0.length)] >> 248 >> 2 & 0x3 <= 2, 19);
            v295 = varg1 + 2;
            require(v292 <= v295, Panic(17)); // arithmetic overflow or underflow
            require(v295 <= v295 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v295 + 1, 40);
            require(v295 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word3 = uint8(MEM[32 + (v295 + varg0.word0.length)] >> 248);
            v296 = varg1 + 3;
            require(v295 <= v296, Panic(17)); // arithmetic overflow or underflow
            require(v296 <= v296 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v296 + 1, 40);
            require(v296 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word4 = uint8(MEM[32 + (v296 + varg0.word0.length)] >> 248);
            v297 = varg1 + 4;
            require(v296 <= v297, Panic(17)); // arithmetic overflow or underflow
            require(v297 <= v297 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v297 + 1, 40);
            require(v297 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word5 = uint8(MEM[32 + (v297 + varg0.word0.length)] >> 248);
            v298 = varg1 + 5;
            require(v297 <= v298, Panic(17)); // arithmetic overflow or underflow
            require(v298 <= v298 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v298 + 3, 40);
            v294.word6 = uint24(MEM[32 + (v298 + varg0.word0.length)] >> 232);
            v299 = varg1 + 8;
            require(v298 <= v299, Panic(17)); // arithmetic overflow or underflow
            require(v299 <= v299 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v299 + 3, 40);
            if (!(MEM[32 + (v299 + varg0.word0.length)] >> 232 & 0x800000)) {
                v300 = v301 = int24(uint24(MEM[32 + (v299 + varg0.word0.length)] >> 232));
            } else {
                require(!(0x1 & (uint24(MEM[32 + (v299 + varg0.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 > uint24(MEM[32 + (v299 + varg0.word0.length)] >> 232))), Panic(17)); // arithmetic overflow or underflow
                v300 = int24(uint24(MEM[32 + (v299 + varg0.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000);
            }
            v294.word7 = int24(v300);
            v302 = varg1 + 11;
            require(v299 <= v302, Panic(17)); // arithmetic overflow or underflow
            require(v302 <= v302 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v302 + 1, 40);
            require(v302 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word8 = uint8(MEM[32 + (v302 + varg0.word0.length)] >> 248);
            v303 = varg1 + 12;
            require(v302 <= v303, Panic(17)); // arithmetic overflow or underflow
            require(v303 <= v303 + 32, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v303 + 32, 40);
            v294.word9 = MEM[32 + (v303 + varg0.word0.length)];
            v304 = varg1 + 44;
            require(v303 <= v304, Panic(17)); // arithmetic overflow or underflow
            require(v304 <= v304 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v304 + 20, 40);
            v294.word10 = address(MEM[32 + (v304 + varg0.word0.length)] >> 96);
            v305 = varg1 + 64;
            require(v305 >= v304, Panic(17)); // arithmetic overflow or underflow
            require(v305 <= v305 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v305 + 1, 40);
            require(v305 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v294.word11 = uint8(MEM[32 + (v305 + varg0.word0.length)] >> 248);
            varg1 = varg1 + 65;
            require(v305 <= varg1, Panic(17)); // arithmetic overflow or underflow
            v306 = varg0.data;
            require(uint8(v294.word3) < uint8(MEM[varg0.word1 + 64]), 36);
            require(!uint8(v294.word3) | (20 == uint8(v294.word3) * 20 / uint8(v294.word3)), Panic(17)); // arithmetic overflow or underflow
            v307 = _SafeAdd(varg0.word2, uint8(v294.word3) * 20);
            require(v307 <= v307 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v307 + 20, 40);
            v308 = v309 = MEM[32 + (v307 + varg0.word0.length)] >> 96;
            v310 = varg0.data;
            require(uint8(v294.word4) < uint8(MEM[varg0.word1 + 64]), 36);
            require(!uint8(v294.word4) | (20 == uint8(v294.word4) * 20 / uint8(v294.word4)), Panic(17)); // arithmetic overflow or underflow
            v311 = _SafeAdd(varg0.word2, uint8(v294.word4) * 20);
            require(v311 <= v311 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v311 + 20, 40);
            v308 = MEM[32 + (v311 + varg0.word0.length)] >> 96;
            v312 = varg0.data;
            require(uint8(v294.word5) < uint8(MEM[varg0.word1 + 64]), 36);
            require(!uint8(v294.word5) | (20 == uint8(v294.word5) * 20 / uint8(v294.word5)), Panic(17)); // arithmetic overflow or underflow
            v313 = _SafeAdd(varg0.word2, uint8(v294.word5) * 20);
            require(v313 <= v313 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v313 + 20, 40);
            if (uint8(v294.word8) - uint8.max) {
                v314 = varg0.data;
                require(uint8(v294.word8) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(v294.word8) | (20 == uint8(v294.word8) * 20 / uint8(v294.word8)), Panic(17)); // arithmetic overflow or underflow
                v315 = _SafeAdd(varg0.word2, uint8(v294.word8) * 20);
                require(v315 <= v315 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v315 + 20, 40);
                v316 = MEM[32 + (v315 + varg0.word0.length)] >> 96;
            } else {
                v316 = v317 = 0;
            }
            if (v294.word0) {
            }
            if (!bool(!v294.word0)) {
            }
            require(!(address(MEM[32 + (v313 + varg0.word0.length)] >> 96) - address(v308)), 4);
            if (0 == bool(v294.word0)) {
                v318 = v319 = uint8(v294.word3);
            } else {
                v318 = uint8(v294.word4);
            }
            v320 = varg1 >= varg2;
            if (v320) {
                MEM[0] = MEM[0];
                v321 = bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd);
                if (v321) {
                    MEM[0] = MEM[0];
                    v321 = v322 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 == 3;
                }
                v320 = v323 = !v321;
            }
            0x505c(v308, v318, bool(v294.word1));
            v324 = new struct(5);
            require(!((v324 + 160 > uint64.max) | (v324 + 160 < v324)), Panic(65)); // failed memory allocation (too much memory)
            v324.word0 = address(v309);
            v324.word1 = address(v308);
            v324.word2 = uint24(v294.word6);
            v324.word3 = int24(v294.word7);
            v324.word4 = address(v316);
            MEM[0] = MEM[0];
            v325 = 0x231c(_uniswapV2Call);
            v326 = address(v294.word10);
            if (!v326) {
                if (bool(v294.word0)) {
                    v326 = v327 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v326 = v328 = 0x1000276a4;
                }
            }
            v329 = new struct(3);
            require(!((v329 + 96 > uint64.max) | (v329 + 96 < v329)), Panic(65)); // failed memory allocation (too much memory)
            v329.word0 = !v294.word0;
            v329.word1 = v325;
            v329.word2 = address(v326);
            v330 = 32;
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v331 = new uint256[](0);
            MCOPY(v331.data, 32 + MEM[64], 0);
            MEM[v331.data] = 0;
            v332, v333 = _poolManager.swap(address(v324.word0), address(v324.word1), uint24(v324.word2), int24(v324.word3), address(v324.word4), bool(v329.word0), v329.word1, address(v329.word2), v331).gas(msg.gas);
            if (!v332) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v333 = 0;
                if (v332) {
                    if (v330 > RETURNDATASIZE()) {
                        v330 = v334 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v330 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v330 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v330 - MEM[64] >= v330);
                }
                if (bool(v294.word0)) {
                    v335 = v336 = v333 >> 128;
                } else {
                    v335 = int128(v333);
                }
                require(int128(v335) > 0, 45);
                require(uint128(v335) >= v294.word9, 46);
                0x521d(varg0, v294, MEM[32 + (v313 + varg0.word0.length)] >> 96, uint128(v335), v320);
            }
        }
        require(varg1 <= varg2, 37);
    }
    return varg1;
}

function receive() public payable { 
}

function 0x2ac4() private { 
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 2) {
        return ;
    } else {
        require(_uniswapV2Call, 6);
        require(_poolManager.code.size);
        v0, /* uint256 */ v1 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this, _uniswapV2Call).gas(msg.gas);
        require(v0, v1, RETURNDATASIZE());
        if (v0) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
        _uniswapV2Call = _uniswapV2Call;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
        return ;
    }
}

function 0x2b7d(uint8 varg0, address varg1, uint256 varg2) private { 
    if (varg2) {
        varg2 = v0 = !varg1;
    }
    require(!varg2, 7);
    v1 = varg0;
    mapping_7[v1] = varg1;
    mapping_8[v1] = bool(varg2);
    return ;
}

function 0x2be5(uint256 varg0, address varg1, uint256 varg2) private { 
    if (!varg2) {
        return ;
    } else {
        v0, /* uint256 */ v1 = varg0.transfer(varg1, varg2).gas(msg.gas);
        v2 = v3 = !v0;
        if (bool(v0)) {
            if (RETURNDATASIZE()) {
                if (32 == RETURNDATASIZE()) {
                    if (!v1) {
                        v2 = v4 = 1;
                    }
                } else {
                    v2 = v5 = 1;
                }
            }
        }
        require(!v2, 9);
        return ;
    }
}

function 0x2e33(uint256 varg0) private { 
    v0, /* address */ v1 = address(varg0).factory().gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    v1 = v2 = 0;
    if (v0) {
        if (32 > RETURNDATASIZE()) {
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            v3 = MEM[64] + RETURNDATASIZE();
        } else {
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + 32;
            v3 = v4 = MEM[64] + 32;
        }
        require(v3 - MEM[64] >= 32);
        require(!0xc45a015500000000000000000000000000000000000000000000000000000000);
    }
    v5 = v6 = !address(v1);
    if (bool(address(v1))) {
        v5 = v7 = !mapping_6[address(v1)];
    }
    require(!v5, 3);
    v8 = 0x4891(varg0);
    v9 = new struct(3);
    v10 = v9.data;
    v9.word1 = bytes20(address(varg0) << 96);
    v9.word0 = 40;
    require(!((v9 + 96 > uint64.max) | (v9 + 96 < v9)), Panic(65)); // failed memory allocation (too much memory)
    v11 = v9.word0.length;
    v12 = new bytes[](85);
    require(!((v12 + 128 > uint64.max) | (v12 + 128 < v12)), Panic(65)); // failed memory allocation (too much memory)
    v13 = v12.length;
    require(!(address(keccak256(0xff00000000000000000000000000000000000000000000000000000000000000, bytes20(mapping_6[address(v1)] << 96), keccak256(bytes20(address(varg0) << 96), bytes20(v8 << 96)))) - v14), 3);
    return v8, address(varg0);
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    v0 = data.length;
    require(v0 <= uint64.max);
    v0 = v1 = data.data;
    require(4 + data + v0 + 32 <= msg.data.length);
    v2 = v3 = !_algebraSwapCallback;
    if (bool(_algebraSwapCallback)) {
        MEM[0] = MEM[0];
        v2 = v4 = !tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec;
    }
    if (!v2) {
        MEM[0] = MEM[0];
        v2 = v5 = address(owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520) != msg.sender;
    }
    require(!v2, 5);
    v6 = v7 = MEM[64];
    v8 = msg.sender.token0().gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v0 = v9 = 0;
    if (v8) {
        v10 = v11 = 1486;
        if (32 <= RETURNDATASIZE()) {
            require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v7 + 32;
            v12 = v13 = v7 + 32;
        }
    }
    v6 = v14 = MEM[64];
    v15 = msg.sender.token1().gas(msg.gas);
    if (!v15) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v16 = 0;
        if (v15) {
            v10 = v17 = 1454;
            if (32 <= RETURNDATASIZE()) {
                require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v14 + 32;
                v12 = v18 = v14 + 32;
            }
        }
    }
    v6 = v19 = MEM[64];
    v20 = msg.sender.factory().gas(msg.gas);
    if (!v20) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v21 = 0;
        if (v20) {
            v10 = v22 = 1416;
            v23 = v24 = 32;
            if (32 > RETURNDATASIZE()) {
                // Unknown jump to Block 0x58e0x2f3. Refer to 3-address code (TAC);
            }
        }
    }
    v25, /* uint24 */ v26 = msg.sender.fee().gas(msg.gas);
    require(v25, MEM[64], RETURNDATASIZE());
    v26 = v27 = 0;
    if (v25) {
        v28 = v29 = 32;
        if (32 > RETURNDATASIZE()) {
            v28 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v28 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v28 - MEM[64] >= 32);
        require(!0xddca3f4300000000000000000000000000000000000000000000000000000000);
    }
    v30 = v31 = !address(v0);
    if (bool(address(v0))) {
        v30 = v32 = !address(v0);
    }
    require(!v30, 5);
    if (address(v0) - 0x1f98431c8ad98523631ae4a59f267346ea31f984) {
        require(!(0xbaceb8ec6b9355dfc0269c18bac9d6e2bdc29c4f - address(v0)), 5);
        v33 = v34, v35 = v36, v37 = v38 = 0x41e(v26, address(v0), 1188, v0, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    } else {
        v33 = v39, v35 = v40, v37 = v41 = 0x41e(v26, address(v0), 1188, v0, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54);
    }
    require(!(msg.sender - address(keccak256(MEM[v4a40x2f3_0x0:v4a40x2f3_0x0 + MEM[v4a40x2f3_0x1]]))), 5);
    v42 = v43 = v0 > 0;
    if (v43) {
        v42 = v44 = v0 > 0;
    }
    require(!v42, 6);
    v45 = v0 <= 0;
    if (v45) {
        v45 = v46 = v0 <= 0;
    }
    require(!v45, 6);
    if (!v0) {
        if (v43) {
            0x2be5(v0, msg.sender, v0);
        } else {
            0x2be5(v37, msg.sender, v0);
        }
    } else {
        v47 = v48 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
        if (bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd)) {
            MEM[0] = MEM[0];
            v47 = v49 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 2;
        }
        if (!v47) {
            MEM[0] = MEM[0];
            v47 = v50 = address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809) != msg.sender;
        }
        require(!v47, 10);
        require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v51 = new bytes[](v0);
        require(!((v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v51 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v51)), Panic(65)); // failed memory allocation (too much memory)
        require(v0 + v0 <= msg.data.length);
        CALLDATACOPY(v51.data, v0, v0);
        v51[v0] = 0;
        v52 = 0x1b78(v51);
        v53 = v54 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 < v52.word4;
        if (tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= v52.word4) {
            v53 = v55 = tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f > v52.word5;
        }
        if (!v53) {
            v53 = v56 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f;
        }
        require(!v53, 19);
        if (v0 <= 0) {
            require(v0 < 0, 6);
            v57 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v0);
            _uniswapV2Call = v57;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v58 = 0x2511(v52, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v37, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        } else {
            require(v0 < 0, 6);
            v59 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v37);
            _uniswapV2Call = v59;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v60 = 0x2511(v52, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v0, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        }
    }
    exit;
    v23 = RETURNDATASIZE();
    require(!((v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (v23 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v12 = v6 + v23;
    require(v12 - v6 >= 32);
    v0 = v61 = MEM[v6];
    require(!(v61 - address(v61)));
    // Unknown jump to Block ['0x588', '0x5ae', '0x5ce']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x393. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x36e. Refer to 3-address code (TAC);
}

function 0x2f63(uint24 varg0) private { 
    require(10000 - varg0 <= uint24.max, Panic(17)); // arithmetic overflow or underflow
    return 10000 - varg0;
}

function 0x2f79(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = !varg0;
    if (bool(varg0)) {
        v0 = v2 = !varg1;
    }
    if (!v0) {
        v0 = v3 = !varg2;
    }
    if (!v0) {
        v0 = v4 = varg0 >= varg2;
    }
    require(!v0, 11);
    require(uint24(varg3) < 10000, 11);
    v5 = _SafeMul(varg1, varg0);
    require(!v5 | (10000 == v5 * 10000 / v5), Panic(17)); // arithmetic overflow or underflow
    v6 = _SafeSub(varg2, varg0);
    v7 = 0x2f63(varg3);
    v8 = _SafeMul(v6, uint24(v7));
    v9 = _SafeDiv(v5 * 10000, v8);
    require(v9 <= v9 + 1, Panic(17)); // arithmetic overflow or underflow
    return v9 + 1;
}

function 0x3127(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
        MEM[0] = MEM[0];
        v0 = v2 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(varg0);
    }
    require(!v0, 22);
    v3 = _uniswapV2Call < varg1;
    if (_uniswapV2Call >= varg1) {
        v4 = _SafeSub(_uniswapV2Call, varg1);
        v3 = v5 = v4 < varg2;
    }
    require(!v3, 22);
    0x2be5(varg0, varg3, varg1);
    v6 = _SafeSub(_uniswapV2Call, varg1);
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(varg0);
    _uniswapV2Call = v6;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
    MEM[0] = MEM[0];
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
    return ;
}

function 0x3ec4(struct(6) varg0, uint256 varg1) private { 
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 2) {
        return ;
    } else {
        require(varg1 <= varg1 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= varg1 + 1, 40);
        require(varg1 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        if (!uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248)) {
            return ;
        } else if (uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) == 8) {
            return ;
        } else {
            require(_uniswapV2Call, 6);
            v0 = v1 = this;
            if (uint8(MEM[32 + (varg1 + varg0.word0.length)] >> 248) == 1) {
                require(varg1 <= varg1 + 2, Panic(17)); // arithmetic overflow or underflow
                require(varg1 + 2 <= varg1 + 2 + 1, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= varg1 + 2 + 1, 40);
                require(varg1 + 2 < MEM[varg0.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
                v2 = varg0.data;
                require(uint8(MEM[32 + (varg1 + 2 + varg0.word0.length)] >> 248) < uint8(MEM[varg0.word1 + 64]), 36);
                require(!uint8(MEM[32 + (varg1 + 2 + varg0.word0.length)] >> 248) | (20 == uint8(MEM[32 + (varg1 + 2 + varg0.word0.length)] >> 248) * 20 / uint8(MEM[32 + (varg1 + 2 + varg0.word0.length)] >> 248)), Panic(17)); // arithmetic overflow or underflow
                v3 = _SafeAdd(varg0.word2, uint8(MEM[32 + (varg1 + 2 + varg0.word0.length)] >> 248) * 20);
                require(v3 <= v3 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[varg0.word0.length] >= v3 + 20, 40);
                v0 = MEM[32 + (v3 + varg0.word0.length)] >> 96;
            }
            require(_poolManager.code.size);
            v4, /* uint256 */ v5 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), address(v0), _uniswapV2Call).gas(msg.gas);
            require(v4, v5, RETURNDATASIZE());
            if (v4) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
            }
            if (this - address(v0)) {
                v6 = 3;
            } else {
                v6 = v7 = 1;
            }
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
            _uniswapV2Call = _uniswapV2Call;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = uint8(v6);
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(v0);
            return ;
        }
    }
}

function 0x4019(struct(6) varg0, uint8 varg1, uint256 varg2) private { 
    if (varg1 == uint8.max) {
        require(!varg2, 37);
        return ;
    } else {
        require(varg2, 6);
        v0 = varg0.data;
        require(varg1 < uint8(MEM[varg0.word1 + 64]), 36);
        require(!varg1 | (20 == varg1 * 20 / varg1), Panic(17)); // arithmetic overflow or underflow
        v1 = _SafeAdd(varg0.word2, varg1 * 20);
        require(v1 <= v1 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v1 + 20, 40);
        v2 = 0x55a0(MEM[32 + (v1 + varg0.word0.length)] >> 96, this);
        require(v2 >= varg2, 6);
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(MEM[32 + (v1 + varg0.word0.length)] >> 96);
        _uniswapV2Call = varg2;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
        return ;
    }
}

function 0x4056(struct(6) varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = 0;
    v2 = v3 = bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd);
    if (!tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd) {
        MEM[0] = MEM[0];
        v2 = v4 = bool(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7);
    }
    require(!v2, 38);
    require(varg1 <= varg1 + 2, Panic(17)); // arithmetic overflow or underflow
    require(varg1 + 2 <= MEM[varg0.word0.length], 40);
    v5 = varg1 + varg0.word0.length;
    require(!((byte(MEM[v5 + 32], 0x0)) - 12), 39);
    if ((byte(MEM[v5 + 33], 0x0)) == 1) {
        require(varg1 + 2 <= varg1 + 69, Panic(17)); // arithmetic overflow or underflow
        require(varg1 + 69 <= MEM[varg0.word0.length], 40);
        v6 = v7 = MEM[v5 + 37];
        v8 = v9 = !v7;
        if (bool(v7)) {
            v8 = v10 = varg1 + 69 >= varg2;
        }
        require(!v8, 6);
        v11 = varg0.data;
        require(uint8(byte(MEM[v5 + 35], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
        require(!uint8(byte(MEM[v5 + 35], 0x0)) | (20 == uint8(byte(MEM[v5 + 35], 0x0)) * 20 / uint8(byte(MEM[v5 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
        v12 = _SafeAdd(varg0.word2, uint8(byte(MEM[v5 + 35], 0x0)) * 20);
        require(v12 <= v12 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v12 + 20, 40);
        v13 = varg0.data;
        require(uint8(byte(MEM[v5 + 36], 0x0)) < uint8(MEM[varg0.word1 + 64]), 36);
        require(!uint8(byte(MEM[v5 + 36], 0x0)) | (20 == uint8(byte(MEM[v5 + 36], 0x0)) * 20 / uint8(byte(MEM[v5 + 36], 0x0))), Panic(17)); // arithmetic overflow or underflow
        v14 = _SafeAdd(varg0.word2, uint8(byte(MEM[v5 + 36], 0x0)) * 20);
        require(v14 <= v14 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v14 + 20, 40);
        v15 = v16 = address(MEM[32 + (v12 + varg0.word0.length)] >> 96);
        if (!(((byte(MEM[v5 + 34], 0x0)) & 0x1) - 1)) {
        }
        require(!(address(MEM[32 + (v14 + varg0.word0.length)] >> 96) - address(v15)), 4);
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 1;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 1;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = address(MEM[32 + (v12 + varg0.word0.length)] >> 96);
        tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = varg1 + 69;
        tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = varg2;
        tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = MEM[v5 + 69];
        if (address(MEM[32 + (v14 + varg0.word0.length)] >> 96) - address(v17)) {
            v6 = v18 = 0;
        }
        if (address(v16) - address(MEM[32 + (v14 + varg0.word0.length)] >> 96)) {
            v6 = v19 = 0;
        }
        require((address(MEM[32 + (v12 + varg0.word0.length)] >> 96)).code.size);
        v20 = new uint256[](MEM[varg0.word0.length]);
        MCOPY(v20.data, 32 + varg0.word0.length, MEM[varg0.word0.length]);
        MEM[32 + (MEM[varg0.word0.length] + v20)] = 0;
        v21, /* uint256 */ v22 = address(MEM[32 + (v12 + varg0.word0.length)] >> 96).swap(v6, v6, address(this), v20).gas(msg.gas);
        require(v21, v22, RETURNDATASIZE());
        if (v21) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v0 = v23 = 0;
        }
        tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = v0;
        tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = v0;
        tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = v0;
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        MEM[0] = MEM[0];
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
        return ;
    } else if ((byte(MEM[v5 + 33], 0x0)) == 2) {
        v0 = v24 = 89 + varg1;
        require(varg1 + 2 <= v24, Panic(17)); // arithmetic overflow or underflow
        require(v24 <= MEM[varg0.word0.length], 40);
        v0 = v25 = byte(MEM[v5 + 34], v1);
        v0 = v26 = MEM[v5 + 37];
        v0 = v27 = MEM[v5 + 69] >> 96;
        v0 = v28 = MEM[v5 + 89];
        v29 = v30 = !v26;
        if (bool(v26)) {
            v29 = v31 = v26 > int256.max;
        }
        if (!v29) {
            v29 = v32 = v24 >= varg2;
        }
        require(!v29, 6);
        v33 = varg0.data;
        require(uint8(byte(MEM[v5 + 35], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
        require(!uint8(byte(MEM[v5 + 35], v1)) | (20 == uint8(byte(MEM[v5 + 35], v1)) * 20 / uint8(byte(MEM[v5 + 35], v1))), Panic(17)); // arithmetic overflow or underflow
        v34 = _SafeAdd(varg0.word2, uint8(byte(MEM[v5 + 35], v1)) * 20);
        require(v34 <= v34 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v34 + 20, 40);
        v0 = v35 = MEM[32 + (v34 + varg0.word0.length)] >> 96;
        v36 = varg0.data;
        require(uint8(byte(MEM[v5 + 36], v1)) < uint8(MEM[varg0.word1 + 64]), 36);
        require(!uint8(byte(MEM[v5 + 36], v1)) | (20 == uint8(byte(MEM[v5 + 36], v1)) * 20 / uint8(byte(MEM[v5 + 36], v1))), Panic(17)); // arithmetic overflow or underflow
        v37 = _SafeAdd(varg0.word2, uint8(byte(MEM[v5 + 36], v1)) * 20);
        require(v37 <= v37 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v37 + 20, 40);
        v0 = v38 = MEM[32 + (v37 + varg0.word0.length)] >> 96;
        v39 = v40 = MEM[64];
        v0 = v41 = address(v35);
        v42 = v41.token0().gas(msg.gas);
        require(v42, MEM[64], RETURNDATASIZE());
        if (v42) {
            v43 = v44 = 17614;
            if (32 <= RETURNDATASIZE()) {
                require(!((v40 + 32 > uint64.max) | (v40 + 32 < v40)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v40 + 32;
                v45 = v46 = v40 + 32;
            }
        }
        v39 = v47 = MEM[64];
        v48 = v0.token1().gas(msg.gas);
        require(v48, MEM[64], RETURNDATASIZE());
        if (v48) {
            v0 = v49 = 1;
            v43 = v50 = 17569;
            if (32 <= RETURNDATASIZE()) {
                require(!((v47 + 32 > uint64.max) | (v47 + 32 < v47)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v47 + 32;
                v45 = v51 = v47 + 32;
            }
        }
        v52 = 0x1 & v0 == 1;
        if (0x1 & v0 != 1) {
        }
        if (address(v0) - address(v0)) {
            MEM[v0] = 0x1022d3e600000000000000000000000000000000000000000000000000000000;
            MEM[4] = 4;
            revert(v0, 36);
        } else {
            if (0 != !v0) {
                if (bool(v52)) {
                    v0 = v53 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v0 = v54 = 0x1000276a4;
                }
            }
            tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 1;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 2;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
            owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = v0;
            tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = v0;
            tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = v0;
            tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = v0;
            tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
            owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(v0);
            require(v0 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v55 = new uint256[](MEM[MEM[v0]]);
            MCOPY(v55.data, 32 + MEM[v0], MEM[MEM[v0]]);
            MEM[32 + (MEM[MEM[v0]] + v55)] = 0;
            v56, /* uint256 */ v57, /* uint256 */ v58 = v0.swap(address(this), bool(0x1 & v0 != 1), 0 - v0, address(v0), v55).value(v0).gas(msg.gas);
            require(v56, MEM[64], RETURNDATASIZE());
            if (v56) {
                if (64 > RETURNDATASIZE()) {
                    require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    v59 = MEM[64] + RETURNDATASIZE();
                } else {
                    require(!((MEM[64] + 64 > uint64.max) | (MEM[64] + 64 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64] + 64;
                    v59 = v60 = MEM[64] + 64;
                }
                require(v59 - MEM[64] >= 64);
            }
            tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
            owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
            tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 = v0;
            tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f = v0;
            tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41 = v0;
            tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
            tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
            MEM[0] = MEM[0];
            owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
            return ;
        }
        require(!((v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v39)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v39 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v45 = v39 + RETURNDATASIZE();
        require(v45 - v39 >= 32);
        v0 = v61 = MEM[v39];
        require(!(v61 - address(v61)));
        // Unknown jump to Block ['0x44a1', '0x44ce']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x42c2. Refer to 3-address code (TAC);
    } else {
        require(3 == (byte(MEM[v5 + 33], 0x0)), 39);
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 1;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 3;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = _poolManager;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 1;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
        tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = varg1;
        tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = varg2;
        v62 = new uint256[](MEM[varg0.word0.length]);
        MCOPY(v62.data, 32 + varg0.word0.length, MEM[varg0.word0.length]);
        MEM[32 + (MEM[varg0.word0.length] + v62)] = 0;
        v63, /* uint256 */ v64, /* uint256 */ v62, /* uint256 */ v65, /* uint256 */ v66 = _poolManager.unlock(v62, v65).value(v1).gas(msg.gas);
        require(v63, v66, RETURNDATASIZE());
        if (v63) {
            RETURNDATACOPY(MEM[64], v1, RETURNDATASIZE());
            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
            require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
            require(v65 + 31 < MEM[64] + RETURNDATASIZE());
            require(v65.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v67 = new bytes[](v65.length);
            require(!((v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v65.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v67 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v65.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v67)), Panic(65)); // failed memory allocation (too much memory)
            require(v65 + v65.length + 32 <= MEM[64] + RETURNDATASIZE());
            MCOPY(v67.data, v65.data, v65.length);
            v67[v65.length] = 0;
        }
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
        tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
        tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = v1;
        tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = v1;
        tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 = 0;
        tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_1_31 = 0;
        MEM[0] = MEM[0];
        owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809 = 0;
        return ;
    }
}

function 0x41e(uint24 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) private { 
    v0 = new struct(4);
    v1 = v0.data;
    v0.word1 = varg1;
    v0.word2 = address(v2);
    v0.word3 = varg0;
    v0.word0 = 96;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v0.word0.length;
    v4 = new bytes[](85);
    MEM[v4.data] = 0xff00000000000000000000000000000000000000000000000000000000000000;
    MEM[v4 + 33] = bytes20(varg3 << 96);
    MEM[v4 + 53] = keccak256(varg1, address(v2), varg0);
    MEM[v4 + 85] = varg4;
    require(!((v4 + 128 > uint64.max) | (v4 + 128 < v4)), Panic(65)); // failed memory allocation (too much memory)
    return v4.data, v4, v2;
}

function 0x4731() private { 
    v0 = v1 = bool(tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21);
    if (!tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21) {
        MEM[0] = MEM[0];
        v0 = v2 = bool(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7);
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v3 = bool(tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec);
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v4 = bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd);
    }
    require(!v0, 38);
    if (!uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
        return ;
    } else {
        v5 = v6 = 1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
        if (v6) {
            MEM[0] = MEM[0];
            v5 = v7 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this;
        }
        require(v5, 38);
        return ;
    }
}

function 0x47fc(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = _SafeAdd(varg1, varg2);
    require(MEM[varg0] >= v0, 19);
    require(varg2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v1 = new bytes[](varg2);
    require(!((v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v1 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(varg2 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    CALLDATACOPY(v1.data, msg.data.length, 32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + varg2) - 32);
    MCOPY(v1.data, varg0 + varg1 + 32, varg2);
    return v1;
}

function 0x4891(address varg0) private { 
    v0 = v1 = MEM[64];
    v2 = v3 = varg0;
    v4 = v3.token0().gas(msg.gas);
    require(v4, MEM[64], RETURNDATASIZE());
    v2 = v5 = 0;
    if (v4) {
        v6 = v7 = 18768;
        if (32 <= RETURNDATASIZE()) {
            require(!((v1 + 32 > uint64.max) | (v1 + 32 < v1)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v1 + 32;
            v8 = v9 = v1 + 32;
        }
    }
    v0 = v10 = MEM[64];
    v11 = v2.token1().gas(msg.gas);
    require(v11, MEM[64], RETURNDATASIZE());
    v2 = v12 = 0;
    if (v11) {
        v6 = v13 = 18736;
        if (32 <= RETURNDATASIZE()) {
            require(!((v10 + 32 > uint64.max) | (v10 + 32 < v10)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v10 + 32;
            v8 = v14 = v10 + 32;
        }
    }
    v15 = v16 = !address(v2);
    if (bool(address(v2))) {
        v15 = v17 = !address(v2);
    }
    require(!v15, 3);
    return v2;
    require(!((v0 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v0 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v8 = v0 + RETURNDATASIZE();
    require(v8 - v0 >= 32);
    v2 = MEM[v0];
    require(!(v2 - address(v2)));
    // Unknown jump to Block ['0x4930', '0x4950']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x48ea. Refer to 3-address code (TAC);
}

function 0x4975(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    require(!(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) - address(varg0)), 22);
    v0 = v1 = _uniswapV2Call < varg2;
    if (_uniswapV2Call >= varg2) {
        v2 = _SafeSub(_uniswapV2Call, varg2);
        v0 = v3 = v2 < varg3;
    }
    require(!v0, 22);
    v4 = _SafeSub(_uniswapV2Call, varg2);
    v5 = v6 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 2;
    if (v6) {
        MEM[0] = MEM[0];
        v5 = v7 = _poolManager == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
    }
    if (v5) {
        if (v4) {
            require(_poolManager.code.size);
            v8, /* uint256 */ v9 = _poolManager.take(address(varg0), this, v4).gas(msg.gas);
            require(v8, v9, RETURNDATASIZE());
            if (v8) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64];
            }
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(varg0);
        _uniswapV2Call = v4;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
        return ;
    } else {
        v10 = v11 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1;
        if (v11) {
            MEM[0] = MEM[0];
            v10 = v12 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this;
        }
        if (v10) {
            0x5367(varg0, varg2);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(varg0);
            _uniswapV2Call = v4;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            return ;
        } else {
            v13 = v14 = 3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
            if (v14) {
                MEM[0] = MEM[0];
                v13 = v15 = _poolManager == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
            }
            require(v13, 22);
            0x54d4(varg1);
            if (v4) {
                require(_poolManager.code.size);
                v16, /* uint256 */ v17 = _poolManager.take(address(varg0), this, v4).gas(msg.gas);
                require(v16, v17, RETURNDATASIZE());
                if (v16) {
                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = MEM[64];
                    require(!0);
                }
            }
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(varg0);
            _uniswapV2Call = v4;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            return ;
        }
    }
}

function 0x4bd4(struct(6) varg0, uint8 varg1, uint8 varg2, uint8 varg3, uint256 varg4, uint8 varg5, uint256 varg6) private { 
    v0 = varg0.data;
    require(varg1 < uint8(MEM[varg0.word1 + 64]), 36);
    require(!varg1 | (20 == varg1 * 20 / varg1), Panic(17)); // arithmetic overflow or underflow
    v1 = _SafeAdd(varg0.word2, varg1 * 20);
    require(v1 <= v1 + 20, Panic(17)); // arithmetic overflow or underflow
    require(MEM[varg0.word0.length] >= v1 + 20, 40);
    if (varg3 - uint8.max) {
        v2 = varg0.data;
        require(varg3 < uint8(MEM[varg0.word1 + 64]), 36);
        require(!varg3 | (20 == varg3 * 20 / varg3), Panic(17)); // arithmetic overflow or underflow
        v3 = _SafeAdd(varg0.word2, varg3 * 20);
        require(v3 <= v3 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v3 + 20, 40);
        v4 = MEM[32 + (v3 + varg0.word0.length)] >> 96;
    } else {
        v4 = v5 = 0;
    }
    if (varg5 - uint8.max) {
        v6 = varg0.data;
        require(varg5 < uint8(MEM[varg0.word1 + 64]), 36);
        require(!varg5 | (20 == varg5 * 20 / varg5), Panic(17)); // arithmetic overflow or underflow
        v7 = _SafeAdd(varg0.word2, varg5 * 20);
        require(v7 <= v7 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[varg0.word0.length] >= v7 + 20, 40);
        v8 = MEM[32 + (v7 + varg0.word0.length)] >> 96;
    } else {
        v8 = v9 = 0;
    }
    if (!varg2) {
        if (!bool(address(v4))) {
            require(!bool(address(v4)), 6);
            if (!bool(address(v8))) {
                require(!bool(address(v8)), 6);
                return ;
            }
        }
    } else if (1 == varg2) {
        v10 = 0x4891(MEM[32 + (v1 + varg0.word0.length)] >> 96);
        v11 = address(0x4).getReserves().gas(msg.gas);
        require(v11, MEM[64], RETURNDATASIZE());
        v12 = v13 = 0;
        v12 = v14 = 0;
        if (v11) {
            if (96 > RETURNDATASIZE()) {
                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                v15 = MEM[64] + RETURNDATASIZE();
            } else {
                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = MEM[64] + 96;
                v15 = v16 = MEM[64] + 96;
            }
            require(v15 - MEM[64] >= 96);
            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
            v12 = MEM[MEM[64] + 32];
            require(!(v12 - uint112(v12)));
            require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
        }
        if (address(varg6)) {
            if (address(varg6) - address(varg4)) {
                if (address(v10) - address(varg6)) {
                    v17 = v18 = uint112.max;
                    v12 = v19 = 0;
                } else {
                    v17 = v20 = uint112.max;
                }
            } else {
                v17 = v21 = uint112.max;
            }
            require(v12 & v17 >= v8, 6);
        }
        if (address(0x60)) {
            if (address(0x60) - address(varg4)) {
                if (address(v10) != address(0x60)) {
                    v22 = v23 = uint112.max;
                    v12 = v24 = 0;
                } else {
                    v22 = v25 = uint112.max;
                }
            } else {
                v22 = v26 = uint112.max;
            }
            require(v12 & v22 >= v27, 6);
        }
        return;
    } else {
        v28 = v29 = bool(address(v4));
        if (v29) {
            // Unknown jump to Block 0x4c5e. Refer to 3-address code (TAC);
        }
    }
    require(!v28, 6);
    v30 = v31 = bool(address(v8));
    if (v31) {
        // Unknown jump to Block 0x4c4a. Refer to 3-address code (TAC);
    }
    require(!v30, 6);
    return ;
    v32 = 0x55a0(v8, MEM[32 + (v1 + varg0.word0.length)] >> 96);
    v30 = v33 = v32 < varg6;
    // Unknown jump to Block 0x4c41. Refer to 3-address code (TAC);
    v34 = 0x55a0(v4, MEM[32 + (v1 + varg0.word0.length)] >> 96);
    v28 = v35 = v34 < varg4;
    // Unknown jump to Block 0x4c27. Refer to 3-address code (TAC);
}

function 0x4e5e(struct(6) varg0, uint256 varg1, uint256 varg2, uint8 varg3) private { 
    v0 = varg0.data;
    require(varg3 < uint8(MEM[varg0.word1 + 64]), 36);
    require(!varg3 | (20 == varg3 * 20 / varg3), Panic(17)); // arithmetic overflow or underflow
    v1 = _SafeAdd(varg0.word2, varg3 * 20);
    require(v1 <= v1 + 20, Panic(17)); // arithmetic overflow or underflow
    require(MEM[varg0.word0.length] >= v1 + 20, 40);
    v2 = v3 = 0;
    require(address(MEM[32 + (v1 + varg0.word0.length)] >> 96) != _poolManager, 19);
    if (varg1) {
        v4 = 0x58a9(_weth, varg2);
        require(v4, 6);
        v5 = v6 = uint256.max != varg2;
        if (v6) {
            v7 = 0x55a0(_weth, this);
            v5 = v8 = v7 < v4;
        }
        require(!v5, 6);
        require(_weth.code.size);
        v9, /* uint256 */ v10 = _weth.withdraw(v4).gas(msg.gas);
        require(v9, v10, RETURNDATASIZE());
        if (v9) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v2 = v11 = 0;
        }
        if (address(MEM[32 + (v1 + varg0.word0.length)] >> 96) != this) {
            0x223e(MEM[32 + (v1 + varg0.word0.length)] >> 96, v4);
        }
        if (address(MEM[32 + (v1 + varg0.word0.length)] >> 96) != this) {
            v12 = v13 = 3;
        } else {
            v12 = v14 = 1;
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = v2;
        _uniswapV2Call = v4;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = uint8(v12);
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(MEM[32 + (v1 + varg0.word0.length)] >> 96);
        return ;
    } else {
        if (!(varg2 - uint256.max)) {
            varg2 = v15 = 0x581f(varg2);
        }
        v16 = v17 = !varg2;
        if (bool(varg2)) {
            v16 = v18 = this.balance < varg2;
        }
        require(!v16, 6);
        require(_weth.code.size, v3, v3);
        v19, /* uint256 */ v20 = _weth.deposit().value(varg2).gas(msg.gas);
        require(v19, v20, RETURNDATASIZE());
        if (v19) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v3, v3, v3);
        }
        if (this != address(MEM[32 + (v1 + varg0.word0.length)] >> 96)) {
            0x2be5(_weth, MEM[32 + (v1 + varg0.word0.length)] >> 96, varg2);
        }
        if (this != address(MEM[32 + (v1 + varg0.word0.length)] >> 96)) {
            v21 = 3;
        } else {
            v21 = v22 = 1;
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = _weth;
        _uniswapV2Call = varg2;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = uint8(v21);
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(MEM[32 + (v1 + varg0.word0.length)] >> 96);
        return ;
    }
}

function 0x505c(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = v1 = bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59));
    if (v1) {
        MEM[0] = MEM[0];
        v0 = v2 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(varg0);
    }
    require(!v0, 4);
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 2) {
        require(!varg2, 19);
        return ;
    } else if (varg2) {
        v3 = v4 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 3;
        if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3) {
            MEM[0] = MEM[0];
            v3 = v5 = _poolManager != address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
        }
        if (!v3) {
            MEM[0] = MEM[0];
            v3 = v6 = address(varg0) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
        }
        if (!v3) {
            MEM[0] = MEM[0];
            v3 = v7 = !_uniswapV2Call;
        }
        require(!v3, 19);
        0x54d4(varg1);
        return ;
    } else {
        if (!uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
            v8 = 0x55a0(varg0, this);
            require(v8, 6);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(varg0);
            _uniswapV2Call = v8;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
        }
        v9 = v10 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
        if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
            MEM[0] = MEM[0];
            v9 = v11 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
        }
        if (!v9) {
            MEM[0] = MEM[0];
            v9 = v12 = !_uniswapV2Call;
        }
        require(!v9, 19);
        MEM[0] = MEM[0];
        0x5367(varg0, _uniswapV2Call);
        return ;
    }
}

function 0x521d(struct(6) varg0, struct(12) varg1, address varg2, uint256 varg3, uint256 varg4) private { 
    if (!varg4) {
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = varg2;
        _uniswapV2Call = varg3;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 2;
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = _poolManager;
        return ;
    } else {
        if (0 == !uint8(varg1.word2)) {
            v0 = varg0.data;
            require(uint8(varg1.word11) < uint8(MEM[varg0.word1 + 64]), 36);
            require(!uint8(varg1.word11) | (20 == uint8(varg1.word11) * 20 / uint8(varg1.word11)), Panic(17)); // arithmetic overflow or underflow
            v1 = _SafeAdd(varg0.word2, uint8(varg1.word11) * 20);
            require(v1 <= v1 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[varg0.word0.length] >= v1 + 20, 40);
            v2 = MEM[32 + (v1 + varg0.word0.length)] >> 96;
            require(address(v2) != _poolManager, 19);
            v3 = v4 = 3;
            v5 = v6 = uint8(varg1.word2) == 2;
            if (v6) {
                v5 = v7 = address(v2) == this;
            }
            require(!v5, 19);
            v8 = v9 = 1 == uint8(varg1.word2);
            if (v9) {
                v8 = v10 = this == address(v2);
            }
            if (v8) {
                v3 = v11 = 1;
            }
        } else {
            v2 = v12 = this;
            v3 = v13 = 1;
        }
        require(_poolManager.code.size);
        v14, /* uint256 */ v15 = _poolManager.take(varg2, address(v2), varg3).gas(msg.gas);
        require(v14, v15, RETURNDATASIZE());
        if (v14) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = varg2;
        _uniswapV2Call = varg3;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = uint8(v3);
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(v2);
        return ;
    }
}

function 0x5367(uint256 varg0, uint256 varg1) private { 
    v0 = v1 = 0;
    require(varg1, 6);
    if (!address(varg0)) {
        require(this.balance >= varg1, 6);
        v2 = _poolManager.settle().value(varg1).gas(msg.gas);
        require(v2, MEM[64], RETURNDATASIZE());
        if (v2) {
            v3 = v4 = 32;
            if (32 > RETURNDATASIZE()) {
                v3 = v5 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v3 - MEM[64] >= 32);
            return ;
        } else {
            return ;
        }
    } else {
        v6 = 0x55a0(varg0, this);
        require(v6 >= varg1, 6);
        require(_poolManager.code.size);
        v7, /* uint256 */ v8 = _poolManager.sync(address(varg0)).gas(msg.gas);
        require(v7, v8, RETURNDATASIZE());
        if (v7) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v0 = v9 = 0;
        }
        0x2be5(varg0, _poolManager, varg1);
        v10, /* uint256 */ v11 = _poolManager.settle().value(v0).gas(msg.gas);
        require(v10, MEM[64], RETURNDATASIZE());
        if (v10) {
            v12 = v13 = 32;
            if (32 > RETURNDATASIZE()) {
                v12 = v14 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64] + (v12 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
            require(MEM[64] + v12 - MEM[64] >= 32);
            return ;
        } else {
            return ;
        }
    }
}

function 0x54d4(uint256 varg0) private { 
    v0 = 0x5942(varg0);
    require(tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 & v0, 47);
    v1, /* uint256 */ v2 = _poolManager.settle().gas(msg.gas);
    require(v1, MEM[64], RETURNDATASIZE());
    if (v1) {
        v3 = v4 = 32;
        if (32 > RETURNDATASIZE()) {
            v3 = v5 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v3 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v3 - MEM[64] >= 32);
    }
    tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 & ~v0;
    MEM[0] = MEM[0];
    tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 & ~v0;
    return ;
}

function 0x55a0(address varg0, uint256 varg1) private { 
    if (!varg0) {
        return varg1.balance;
    } else {
        v0, /* uint256 */ v1 = varg0.balanceOf(address(varg1)).gas(msg.gas);
        require(v0, MEM[64], RETURNDATASIZE());
        if (v0) {
            v2 = v3 = 32;
            if (32 > RETURNDATASIZE()) {
                v2 = v4 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v2 - MEM[64] >= 32);
            return v1;
        } else {
            return 0;
        }
    }
}

function 0x5620(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    v0 = v1 = !varg0;
    if (bool(varg0)) {
        v0 = v2 = !varg1;
    }
    if (!v0) {
        v0 = v3 = !varg2;
    }
    require(!v0, 11);
    require(uint24(varg3) < 10000, 11);
    v4 = 0x2f63(varg3);
    v5 = _SafeMul(varg0, uint24(v4));
    v6 = _SafeMul(v5, varg2);
    require(!varg1 | (10000 == varg1 * 10000 / varg1), Panic(17)); // arithmetic overflow or underflow
    v7 = _SafeAdd(varg1 * 10000, v5);
    v8 = _SafeDiv(v6, v7);
    v9 = v10 = !v8;
    if (bool(v8)) {
        v9 = v11 = v8 >= varg2;
    }
    require(!v9, 11);
    return v8;
}

function 0x56b3(uint256 varg0, address varg1, address varg2) private { 
    if (varg2 - _poolManager) {
        return ;
    } else {
        require(varg1, 19);
        v0 = 0x5942(varg0);
        if (!(tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 & v0)) {
            require(_poolManager.code.size);
            v1, /* uint256 */ v2 = _poolManager.sync(varg1).gas(msg.gas);
            require(v1, v2, RETURNDATASIZE());
            if (v1) {
                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            }
            MEM[0] = MEM[0];
            tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 = tstor_c3f7057aedd8489ca54d97db07c17992f8b77732515fb8437247cc8529ff3cd4 | v0;
            return ;
        } else {
            return ;
        }
    }
}

function 0x5760(uint256 varg0, address varg1, uint256 varg2, address varg3) private { 
    require(varg2, 12);
    if (_poolManager == varg3) {
        v0 = 0x5942(varg0);
        tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21 = v0 | tstor_7aba3d79ce0d33231a70501215b910cd14b7949ebdb1966f4bfb072619ccef21;
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = varg1;
        _uniswapV2Call = varg2;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 3;
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = _poolManager;
        return ;
    } else {
        if (this - varg3) {
            v1 = 3;
        } else {
            v1 = v2 = 1;
        }
        owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = varg1;
        _uniswapV2Call = varg2;
        tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = uint8(v1);
        MEM[0] = MEM[0];
        tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = varg3;
        return ;
    }
}

function 0x581f(uint256 varg0) private { 
    if (varg0 + 1) {
        return varg0;
    } else {
        v0 = v1 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
        if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
            MEM[0] = MEM[0];
            v0 = v2 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
        }
        if (!v0) {
            MEM[0] = MEM[0];
            v0 = v3 = bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59));
        }
        require(!v0, 41);
        MEM[0] = MEM[0];
        require(_uniswapV2Call, 6);
        return _uniswapV2Call;
    }
}

function 0x58a9(address varg0, uint256 varg1) private { 
    if (varg1 + 1) {
        return varg1;
    } else {
        v0 = v1 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
        if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
            MEM[0] = MEM[0];
            v0 = v2 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
        }
        if (!v0) {
            MEM[0] = MEM[0];
            v0 = v3 = varg0 != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
        }
        require(!v0, 41);
        MEM[0] = MEM[0];
        require(_uniswapV2Call, 6);
        return _uniswapV2Call;
    }
}

function 0x5942(uint8 varg0) private { 
    require(varg0 != uint8.max, 19);
    return 1 << varg0;
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _poolManager;
}

function withdraw(address tokenAddress, address _toUser, uint256 amount) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), 1);
    require(_toUser, 7);
    if (tokenAddress) {
        0x2be5(tokenAddress, _toUser, amount);
        exit;
    } else {
        0x223e(_toUser, amount);
        exit;
    }
}

function 0xc9295a82(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(!(msg.sender - _owner), 1);
    stor_3_0_19 = varg0;
}

function 0x92d3b663(uint8 varg0, address varg1, bool varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(msg.sender - _owner), 1);
    0x2b7d(varg0, varg1, varg2);
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(rawData.length <= uint64.max);
    require(4 + rawData + rawData.length + 32 <= msg.data.length);
    require(!(msg.sender - _poolManager), 5);
    require(_algebraSwapCallback, 10);
    require(!tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 38);
    require(rawData.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new bytes[](rawData.length);
    require(!((v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + rawData.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + rawData.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    require(rawData.data + rawData.length <= msg.data.length);
    CALLDATACOPY(v0.data, rawData.data, rawData.length);
    v0[rawData.length] = 0;
    v1 = 0x1b78(v0);
    v2 = tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6;
    v3 = v4 = v2 < v1.word4;
    if (v2 >= v1.word4) {
        v3 = v5 = tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 > v1.word5;
    }
    if (!v3) {
        v3 = v6 = v2 >= tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568;
    }
    require(!v3, 19);
    tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 1;
    if (tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0) {
        require(!(1 - tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0), 16);
        v7 = v8 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
        if (bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd)) {
            MEM[0] = MEM[0];
            v7 = v9 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 3;
        }
        if (!v7) {
            MEM[0] = MEM[0];
            v7 = v10 = msg.sender != address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809);
        }
        require(!v7, 10);
        require(v2 <= v2 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 1, 40);
        require(v2 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!(uint8(MEM[32 + (v2 + v1.word0.length)] >> 248) - 12), 39);
        require(v2 <= v2 + 1, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 1 <= v2 + 1 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 1 + 1, 40);
        require(v2 + 1 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(!(uint8(MEM[32 + (v2 + 1 + v1.word0.length)] >> 248) - 3), 39);
        require(v2 + 1 <= v2 + 2, Panic(17)); // arithmetic overflow or underflow
        v11 = 0x24a8();
        v12 = 0x24a8();
        require(v2 + 2 <= v2 + 2 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 2 + 1, 40);
        require(v2 + 2 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word0 = MEM[32 + (v2 + 2 + v1.word0.length)] >> 248 & 0x1 == 1;
        v12.word1 = MEM[32 + (v2 + 2 + v1.word0.length)] >> 248 & 0x2 == 2;
        v12.word2 = MEM[32 + (v2 + 2 + v1.word0.length)] >> 248 >> 2 & 0x3;
        require(MEM[32 + (v2 + 2 + v1.word0.length)] >> 248 >> 2 & 0x3 <= 2, 19);
        require(v2 + 2 <= v2 + 3, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 3 <= v2 + 3 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 3 + 1, 40);
        require(v2 + 3 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word3 = uint8(MEM[32 + (v2 + 3 + v1.word0.length)] >> 248);
        require(v2 + 3 <= v2 + 4, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 4 <= v2 + 4 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 4 + 1, 40);
        require(v2 + 4 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word4 = uint8(MEM[32 + (v2 + 4 + v1.word0.length)] >> 248);
        require(v2 + 4 <= v2 + 5, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 5 <= v2 + 5 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 5 + 1, 40);
        require(v2 + 5 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word5 = uint8(MEM[32 + (v2 + 5 + v1.word0.length)] >> 248);
        require(v2 + 5 <= v2 + 6, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 6 <= v2 + 6 + 3, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 6 + 3, 40);
        v12.word6 = uint24(MEM[32 + (v2 + 6 + v1.word0.length)] >> 232);
        require(v2 + 6 <= v2 + 9, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 9 <= v2 + 9 + 3, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 9 + 3, 40);
        if (!(MEM[32 + (v2 + 9 + v1.word0.length)] >> 232 & 0x800000)) {
            v13 = v14 = int24(uint24(MEM[32 + (v2 + 9 + v1.word0.length)] >> 232));
        } else {
            require(!(0x1 & (uint24(MEM[32 + (v2 + 9 + v1.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 > uint24(MEM[32 + (v2 + 9 + v1.word0.length)] >> 232))), Panic(17)); // arithmetic overflow or underflow
            v13 = v15 = int24(uint24(MEM[32 + (v2 + 9 + v1.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000);
        }
        v12.word7 = int24(v13);
        require(v2 + 9 <= v2 + 12, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 12 <= v2 + 12 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 12 + 1, 40);
        require(v2 + 12 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word8 = uint8(MEM[32 + (v2 + 12 + v1.word0.length)] >> 248);
        require(v2 + 12 <= v2 + 13, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 13 <= v2 + 13 + 32, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 13 + 32, 40);
        v12.word9 = MEM[32 + (v2 + 13 + v1.word0.length)];
        require(v2 + 13 <= v2 + 45, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 45 <= v2 + 45 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 45 + 20, 40);
        v12.word10 = address(MEM[32 + (v2 + 45 + v1.word0.length)] >> 96);
        require(v2 + 65 >= v2 + 45, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 65 <= v2 + 65 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 65 + 1, 40);
        require(v2 + 65 < MEM[v1.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v12.word11 = uint8(MEM[32 + (v2 + 65 + v1.word0.length)] >> 248);
        require(v2 + 65 <= v2 + 66, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 66 <= v2 + 66 + 32, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v2 + 66 + 32, 40);
        require(v2 + 98 >= v2 + 66, Panic(17)); // arithmetic overflow or underflow
        require(v2 + 98 < tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568, 19);
        v16 = v1.data;
        require(uint8(v12.word3) < uint8(MEM[v1.word1 + 64]), 36);
        require(!uint8(v12.word3) | (20 == uint8(v12.word3) * 20 / uint8(v12.word3)), Panic(17)); // arithmetic overflow or underflow
        v17 = _SafeAdd(v1.word2, uint8(v12.word3) * 20);
        require(v17 <= v17 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v17 + 20, 40);
        v18 = v19 = MEM[32 + (v17 + v1.word0.length)] >> 96;
        v20 = v1.data;
        require(uint8(v12.word4) < uint8(MEM[v1.word1 + 64]), 36);
        require(!uint8(v12.word4) | (20 == uint8(v12.word4) * 20 / uint8(v12.word4)), Panic(17)); // arithmetic overflow or underflow
        v21 = _SafeAdd(v1.word2, uint8(v12.word4) * 20);
        require(v21 <= v21 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v21 + 20, 40);
        v18 = MEM[32 + (v21 + v1.word0.length)] >> 96;
        v22 = v1.data;
        require(uint8(v12.word5) < uint8(MEM[v1.word1 + 64]), 36);
        require(!uint8(v12.word5) | (20 == uint8(v12.word5) * 20 / uint8(v12.word5)), Panic(17)); // arithmetic overflow or underflow
        v23 = _SafeAdd(v1.word2, uint8(v12.word5) * 20);
        require(v23 <= v23 + 20, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v1.word0.length] >= v23 + 20, 40);
        if (uint8(v12.word8) - uint8.max) {
            v24 = v1.data;
            require(uint8(v12.word8) < uint8(MEM[v1.word1 + 64]), 36);
            require(!uint8(v12.word8) | (20 == uint8(v12.word8) * 20 / uint8(v12.word8)), Panic(17)); // arithmetic overflow or underflow
            v25 = _SafeAdd(v1.word2, uint8(v12.word8) * 20);
            require(v25 <= v25 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v1.word0.length] >= v25 + 20, 40);
            v26 = MEM[32 + (v25 + v1.word0.length)] >> 96;
        } else {
            v26 = v27 = 0;
        }
        if (v12.word0) {
        }
        if (!v12.word0) {
            v28 = v29 = uint8(v12.word3);
        } else {
            v28 = v30 = uint8(v12.word4);
        }
        if (v12.word0) {
        }
        v31 = v32 = address(v18) != address(MEM[32 + (v23 + v1.word0.length)] >> 96);
        if (address(v18) == address(MEM[32 + (v23 + v1.word0.length)] >> 96)) {
            v31 = v33 = !v12.word9;
        }
        if (!v31) {
            v31 = v34 = int256.max < v12.word9;
        }
        require(!v31, 4);
        v35 = new struct(5);
        require(!((v35 + 160 > uint64.max) | (v35 + 160 < v35)), Panic(65)); // failed memory allocation (too much memory)
        v35.word0 = address(v19);
        v35.word1 = address(v18);
        v35.word2 = uint24(v12.word6);
        v35.word3 = int24(v12.word7);
        v35.word4 = address(v26);
        v36 = v37 = address(v12.word10);
        if (!v37) {
            if (bool(v12.word0)) {
                v36 = v38 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
            } else {
                v36 = v39 = 0x1000276a4;
            }
        }
        v40 = new struct(3);
        require(!((v40 + 96 > uint64.max) | (v40 + 96 < v40)), Panic(65)); // failed memory allocation (too much memory)
        v40.word0 = !v12.word0;
        v40.word1 = v12.word9;
        v40.word2 = address(v36);
        v41 = v42 = 32;
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        v43 = new uint256[](0);
        MCOPY(v43.data, 32 + MEM[64], 0);
        MEM[v43.data] = 0;
        v44, v45 = _poolManager.swap(address(v35.word0), address(v35.word1), uint24(v35.word2), int24(v35.word3), address(v35.word4), bool(v40.word0), v40.word1, address(v40.word2), v43).gas(msg.gas);
        if (!v44) {
            v46 = RETURNDATASIZE();
            revert(v47, v47, v47, v47, v47, v47, v47, v47, v47, 0, 0);
        } else {
            v45 = v48 = 0;
            if (v44) {
                if (v42 > RETURNDATASIZE()) {
                    v41 = v49 = RETURNDATASIZE();
                }
                require(!((MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v41 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                require(MEM[64] + v41 - MEM[64] >= v42);
            }
            if (bool(v12.word0)) {
                v50 = v51 = v45 >> 128;
            } else {
                v50 = v52 = int128(v45);
            }
            if (bool(v12.word0)) {
                v53 = v54 = int128(v45);
            } else {
                v53 = v55 = v45 >> 128;
            }
            v56 = v57 = int128(v50) <= 0;
            if (int128(v50) > 0) {
                v56 = v58 = v12.word9 != int128(v50);
            }
            if (!v56) {
                v56 = v59 = int128(v53) >= 0;
            }
            require(!v56, 24);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(MEM[32 + (v23 + v1.word0.length)] >> 96);
            _uniswapV2Call = v12.word9;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 2;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = _poolManager;
            v60 = 0x2511(v1, v2 + 98, tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568);
            require(int128(v53) != int128.min, Panic(17)); // arithmetic overflow or underflow
            0x4975(v18, v28, int128(0 - int128(v53)), MEM[32 + (v2 + 66 + v1.word0.length)]);
        }
    } else {
        v61 = 0x2511(v1, v2, tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568);
        0x2ac4();
    }
    MEM[0] = MEM[0];
    tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7 = 0;
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    v62 = new uint256[](0);
    MCOPY(v62.data, 32 + MEM[64], 0);
    MEM[v62.data] = 0;
    return v62;
}

function uniswapV2Call(address sender, uint256 amount0, uint256 amount1, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + data.length + 32 <= msg.data.length);
    v0 = this != sender;
    if (this == sender) {
        MEM[0] = MEM[0];
        v0 = v1 = !_algebraSwapCallback;
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v2 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v3 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 1;
    }
    require(!v0, 10);
    require(!(msg.sender - address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809)), 5);
    v4 = v5 = msg.sender;
    v6 = !amount0;
    if (v6) {
        v6 = v7 = !amount1;
    }
    if (!v6) {
        v6 = v8 = amount0;
        if (!bool(v6)) {
            v6 = v9 = bool(amount1);
        }
    }
    require(!v6, 6);
    require(data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](data.length);
    require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
    require(data.data + data.length <= msg.data.length);
    CALLDATACOPY(v10.data, data.data, data.length);
    v10[data.length] = 0;
    v11 = 0x1b78(v10);
    v12 = v13 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0;
    v12 = v14 = tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f;
    MEM[0] = MEM[0];
    v15 = v16 = v13 < v11.word4;
    if (v13 >= v11.word4) {
        v15 = v17 = v14 > v11.word5;
    }
    if (!v15) {
        v15 = v18 = v13 >= v14;
    }
    require(!v15, 19);
    if (!bool(v6)) {
    }
    if (!bool(v6)) {
    }
    if (!bool(v6)) {
    }
    v19 = mapping_5[msg.sender];
    if (!v19) {
        v19 = v20 = 30;
    }
    v21, /* uint112 */ v22, /* uint112 */ v23, /* uint32 */ v24 = msg.sender.getReserves().gas(msg.gas);
    require(v21, MEM[64], RETURNDATASIZE());
    v22 = v25 = 0;
    v23 = v26 = 0;
    if (v21) {
        v27 = 96;
        if (96 > RETURNDATASIZE()) {
            v27 = v28 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v27 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v23 - uint112(v23)));
        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
    }
    if (bool(v6)) {
        v29 = v30 = 0x2f79(v31, uint112(v22), uint112(v23), v19);
        v32 = this;
    } else {
        v29 = v33 = 0x2f79(v31, uint112(v23), uint112(v22), v19);
        v32 = v34 = this;
    }
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v4);
    _uniswapV2Call = v31;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(v32);
    while (v12 < v14) {
        require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v11.word0.length] >= v12 + 1, 40);
        require(v12 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) != 12, 38);
        MEM[0] = msg.sender;
        if (!tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7) {
            if (uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3) {
                v35 = v36 = 0;
                require(v12 < MEM[v11.word0.length], 40);
                v37 = v11.word0.length + v12;
                require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require((byte(MEM[v37 + 32], 0x0)) != 12, 38);
                if (!(byte(MEM[v37 + 32], 0x0))) {
                    v12 += 69;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    0x4bd4(v11, byte(MEM[v37 + 33], 0x0), byte(MEM[v37 + 34], 0x0), byte(MEM[v37 + 35], 0x0), MEM[v37 + 36], byte(MEM[v37 + 68], 0x0), MEM[v37 + 69]);
                } else if ((byte(MEM[v37 + 32], 0x0)) == 1) {
                    v12 += 37;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v38 = v11.data;
                    require(uint8(byte(MEM[v37 + 34], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 34], 0x0)) | (20 == uint8(byte(MEM[v37 + 34], 0x0)) * 20 / uint8(byte(MEM[v37 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v39 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 34], 0x0)) * 20);
                    require(v39 <= v39 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v39 + 20, 40);
                    MEM[0] = MEM[0];
                    v40 = v11.data;
                    require(uint8(byte(MEM[v37 + 35], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 35], 0x0)) | (20 == uint8(byte(MEM[v37 + 35], 0x0)) * 20 / uint8(byte(MEM[v37 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v41 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 35], 0x0)) * 20);
                    require(v41 <= v41 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v41 + 20, 40);
                    v42 = v11.data;
                    require(uint8(byte(MEM[v37 + 68], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 68], 0x0)) | (20 == uint8(byte(MEM[v37 + 68], 0x0)) * 20 / uint8(byte(MEM[v37 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v43 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 68], 0x0)) * 20);
                    require(v43 <= v43 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v43 + 20, 40);
                    v44 = v45 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                        v44 = v46 = !MEM[v37 + 36];
                    }
                    require(!v44, 6);
                    MEM[0] = MEM[0];
                    v47 = v48 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (v48) {
                        v47 = v49 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(MEM[32 + (v41 + v11.word0.length)] >> 96);
                    }
                    if (!v47) {
                        v47 = v50 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                        if (v50) {
                            v47 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(MEM[32 + (v41 + v11.word0.length)] >> 96);
                        }
                    }
                    require(v47, 4);
                    v51 = v52 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                    if (v52) {
                        v51 = v53 = address(MEM[32 + (v41 + v11.word0.length)] >> 96) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                    }
                    require(!(bool(v51) - ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1)), 4);
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                        require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                        MEM[0] = MEM[0];
                        v54 = v55 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v39 + v11.word0.length)] >> 96)) {
                            MEM[0] = MEM[0];
                            v54 = v56 = !_uniswapV2Call;
                        }
                        require(!v54, 19);
                        MEM[0] = MEM[0];
                        v57 = v58 = _uniswapV2Call;
                    } else {
                        MEM[0] = MEM[0];
                        v59 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                            MEM[0] = MEM[0];
                            v59 = v60 = !_uniswapV2Call;
                        }
                        require(!v59, 41);
                        MEM[0] = MEM[0];
                        v57 = v61 = _uniswapV2Call;
                        0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v39 + v11.word0.length)] >> 96, v61);
                    }
                    v62 = v63 = mapping_5[address(MEM[32 + (v39 + v11.word0.length)] >> 96)];
                    if (!v63) {
                        v62 = v64 = 30;
                    }
                    v65, /* uint112 */ v66, /* uint112 */ v67, /* uint32 */ v68 = address(MEM[32 + (v39 + v11.word0.length)] >> 96).getReserves().gas(msg.gas);
                    if (!v65) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v66 = v69 = 0;
                        v67 = v70 = 0;
                        if (v65) {
                            if (96 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v71 = v72 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 96;
                                v71 = v73 = MEM[64] + 96;
                            }
                            require(v71 - MEM[64] >= 96);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v67 - uint112(v67)));
                            require(!(v68 - uint32(v68)));
                        }
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1) {
                            v74 = v75 = 0x5620(v57, uint112(v67), uint112(v66), v62);
                        } else {
                            v74 = v76 = 0x5620(v57, uint112(v66), uint112(v67), v62);
                        }
                        require(v74 >= MEM[v37 + 36], 43);
                        0x56b3(byte(MEM[v37 + 35], 0x0), MEM[32 + (v41 + v11.word0.length)] >> 96, MEM[32 + (v43 + v11.word0.length)] >> 96);
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 != 1) {
                            v74 = v77 = 0;
                        }
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1) {
                            v74 = v78 = 0;
                        }
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((address(MEM[32 + (v39 + v11.word0.length)] >> 96)).code.size);
                        v79 = new uint256[](0);
                        MCOPY(v79.data, 32 + MEM[64], 0);
                        MEM[v79.data] = 0;
                        v80 = address(MEM[32 + (v39 + v11.word0.length)] >> 96).swap(v74, v74, address(MEM[32 + (v43 + v11.word0.length)] >> 96), v79).gas(msg.gas);
                        if (!v80) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v80) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                            }
                            0x5760(byte(MEM[v37 + 35], 0x0), MEM[32 + (v41 + v11.word0.length)] >> 96, v74, MEM[32 + (v43 + v11.word0.length)] >> 96);
                        }
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 2) {
                    v12 += 57;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v81 = v82 = MEM[v37 + 68] >> 96;
                    v83 = v11.data;
                    require(uint8(byte(MEM[v37 + 34], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 34], v36)) | (20 == uint8(byte(MEM[v37 + 34], v36)) * 20 / uint8(byte(MEM[v37 + 34], v36))), Panic(17)); // arithmetic overflow or underflow
                    v84 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 34], v36)) * 20);
                    require(v84 <= v84 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v84 + 20, 40);
                    v85 = v11.data;
                    require(uint8(byte(MEM[v37 + 35], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 35], v36)) | (20 == uint8(byte(MEM[v37 + 35], v36)) * 20 / uint8(byte(MEM[v37 + 35], v36))), Panic(17)); // arithmetic overflow or underflow
                    v86 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 35], v36)) * 20);
                    require(v86 <= v86 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v86 + 20, 40);
                    v87 = v11.data;
                    require(uint8(byte(MEM[v37 + 88], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 88], v36)) | (20 == uint8(byte(MEM[v37 + 88], v36)) * 20 / uint8(byte(MEM[v37 + 88], v36))), Panic(17)); // arithmetic overflow or underflow
                    v88 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 88], v36)) * 20);
                    require(v88 <= v88 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v88 + 20, 40);
                    MEM[0] = MEM[0];
                    require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                    MEM[0] = MEM[0];
                    v89 = v90 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                    if (v90) {
                        MEM[0] = MEM[0];
                        v89 = v91 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    require(!v89, 42);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        v92 = v93 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                        if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                            MEM[0] = MEM[0];
                            v92 = v94 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        }
                        if (!v92) {
                            MEM[0] = MEM[0];
                            v92 = v95 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        }
                        require(!v92, 41);
                        MEM[0] = MEM[0];
                        v96 = v97 = _uniswapV2Call;
                    } else {
                        v96 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                    }
                    require(v96, 6);
                    require(v96 <= int256.max, 6);
                    0x56b3(byte(MEM[v37 + 35], v36), MEM[32 + (v86 + v11.word0.length)] >> 96, MEM[32 + (v88 + v11.word0.length)] >> 96);
                    if (!v82) {
                        if ((byte(MEM[v37 + 33], v36)) & 0x1 == 1) {
                            v81 = v98 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v81 = v99 = 0x1000276a4;
                        }
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v84 + v11.word0.length)] >> 96);
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    v100 = new uint256[](0);
                    MCOPY(v100.data, 32 + MEM[64], 0);
                    MEM[v100.data] = 0;
                    v101, v35, v35 = address(MEM[32 + (v84 + v11.word0.length)] >> 96).swap(address(MEM[32 + (v88 + v11.word0.length)] >> 96), bool((byte(MEM[v37 + 33], v36)) & 0x1 != 1), v96, address(v81), v100).value(v36).gas(msg.gas);
                    if (!v101) {
                        RETURNDATACOPY(MEM[64], v36, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v101) {
                            v102 = v103 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v102 = v104 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v102 - MEM[64] >= 64);
                        }
                        tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                        MEM[0] = MEM[0];
                        owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                        if ((byte(MEM[v37 + 33], v36)) & 0x1 == 1) {
                            v105 = v106 = 0x231c(v35);
                        } else {
                            v105 = v107 = 0x231c(v35);
                        }
                        require(v105 >= MEM[v37 + 36], 44);
                        0x5760(byte(MEM[v37 + 35], v36), MEM[32 + (v86 + v11.word0.length)] >> 96, v105, MEM[32 + (v88 + v11.word0.length)] >> 96);
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 8) {
                    require(v12 + 1 <= v12 + 38, Panic(17)); // arithmetic overflow or underflow
                    require(v12 + 38 <= MEM[v11.word0.length], 40);
                    v108 = v109 = byte(MEM[v37 + 34], v36);
                    v110 = v111 = MEM[v37 + 35];
                    v112 = _SafeAdd(v12 + 38, MEM[v37 + 68] >> 240);
                    require(v112 <= MEM[v11.word0.length], 40);
                    v113 = 0x47fc(v11.word0.length, v12 + 38, MEM[v37 + 68] >> 240);
                    v114 = v115 = mapping_7[byte(MEM[v37 + 33], v36)];
                    v116 = v117 = !v115;
                    if (bool(v115)) {
                        v116 = v118 = !mapping_8[byte(MEM[v37 + 33], v36)];
                    }
                    require(!v116, 28);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                            v119 = v120 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                            if (v120) {
                                MEM[0] = MEM[0];
                                v119 = v121 = v115 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                            }
                            if (!v119) {
                                require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                                MEM[0] = MEM[0];
                                require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                                MEM[0] = MEM[0];
                                require(_poolManager.code.size, v36, v36);
                                v122 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v37 + 33], v36)], _uniswapV2Call).value(v36).gas(msg.gas);
                                if (!v122) {
                                    RETURNDATACOPY(MEM[64], v36, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v122) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v36, v36, v36);
                                    }
                                    v123 = v124 = 32;
                                    v125 = v11.data;
                                    require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                                    require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                                    v126 = _SafeAdd(v11.word2, uint8(v109) * 20);
                                    require(v126 <= v126 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[v11.word0.length] >= v126 + 20, 40);
                                    v127 = v128 = MEM[32 + (v126 + v11.word0.length)] >> 96;
                                    v129 = v11.data;
                                    require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                                    require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                                    v130 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                                    require(v130 <= v130 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[v11.word0.length] >= v130 + 20, 40);
                                    v131 = v132 = MEM[32 + (v130 + v11.word0.length)] >> 96;
                                    0x56b3(v109, v128, v132);
                                    v133 = v134 = 0x55a0(v128, v132);
                                    v135 = v136 = MEM[64];
                                    MEM[v136] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                    MEM[v136 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                    MEM[v136 + 36] = _uniswapV2Call;
                                    MEM[v136 + 68] = address(v128);
                                    MEM[v136 + 100] = v111;
                                    MEM[v136 + 132] = address(v132);
                                    MEM[v136 + 164] = 192;
                                    MEM[v136 + 196] = v113.length;
                                    MCOPY(v136 + 196 + 32, v113.data, v113.length);
                                    MEM[32 + (v113.length + (v136 + 196))] = 0;
                                    v137 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v136 + 196) + 32;
                                }
                            } else {
                                v123 = 32;
                                MEM[0] = MEM[0];
                                v138 = v11.data;
                                require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                                v139 = _SafeAdd(v11.word2, uint8(v109) * 20);
                                require(v139 <= v139 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v139 + 20, 40);
                                v127 = MEM[32 + (v139 + v11.word0.length)] >> 96;
                                v140 = v11.data;
                                require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                                v141 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                                require(v141 <= v141 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v141 + 20, 40);
                                v131 = MEM[32 + (v141 + v11.word0.length)] >> 96;
                                0x56b3(v109, v127, v131);
                                v133 = v142 = 0x55a0(v127, v131);
                                v135 = v143 = MEM[64];
                                MEM[v143] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v143 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v143 + 36] = _uniswapV2Call;
                                MEM[v143 + 68] = address(v127);
                                MEM[v143 + 100] = v111;
                                MEM[v143 + 132] = address(v131);
                                MEM[v143 + 164] = 192;
                                MEM[v143 + 196] = v113.length;
                                MCOPY(v143 + 196 + 32, v113.data, v113.length);
                                MEM[32 + (v113.length + (v143 + 196))] = 0;
                                v137 = v144 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v143 + 196) + 32;
                            }
                        } else {
                            MEM[0] = MEM[0];
                            require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                            MEM[0] = MEM[0];
                            v35 = v145 = _uniswapV2Call;
                            if (v145) {
                                if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v115, v145);
                                } else {
                                    v146 = this.balance;
                                    require(v146 >= v145, 6);
                                }
                            }
                            v123 = v147 = 32;
                            v148 = v11.data;
                            require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                            v149 = _SafeAdd(v11.word2, uint8(v109) * 20);
                            require(v149 <= v149 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v149 + 20, 40);
                            v127 = v150 = MEM[32 + (v149 + v11.word0.length)] >> 96;
                            v151 = v11.data;
                            require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                            v152 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                            require(v152 <= v152 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v152 + 20, 40);
                            v131 = v153 = MEM[32 + (v152 + v11.word0.length)] >> 96;
                            0x56b3(v109, v150, v153);
                            v133 = v154 = 0x55a0(v150, v153);
                            v135 = v155 = MEM[64];
                            MEM[v155] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v155 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v155 + 36] = v145;
                            MEM[v155 + 68] = address(v150);
                            MEM[v155 + 100] = v111;
                            MEM[v155 + 132] = address(v153);
                            MEM[v155 + 164] = 192;
                            MEM[v155 + 196] = v113.length;
                            MCOPY(v155 + 196 + 32, v113.data, v113.length);
                            MEM[32 + (v113.length + (v155 + 196))] = 0;
                            v137 = v156 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v155 + 196) + 32;
                        }
                    } else {
                        v123 = v157 = 32;
                        v158 = v11.data;
                        require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                        v159 = _SafeAdd(v11.word2, uint8(v109) * 20);
                        require(v159 <= v159 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v159 + 20, 40);
                        v127 = v160 = MEM[32 + (v159 + v11.word0.length)] >> 96;
                        v161 = v11.data;
                        require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                        v162 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                        require(v162 <= v162 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v162 + 20, 40);
                        v131 = v163 = MEM[32 + (v162 + v11.word0.length)] >> 96;
                        0x56b3(v109, v160, v163);
                        v133 = v164 = 0x55a0(v160, v163);
                        v135 = v165 = MEM[64];
                        MEM[v165] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v165 + 4] = address(v36);
                        MEM[v165 + 36] = v36;
                        MEM[v165 + 68] = address(v160);
                        MEM[v165 + 100] = v111;
                        MEM[v165 + 132] = address(v163);
                        MEM[v165 + 164] = 192;
                        MEM[v165 + 196] = v113.length;
                        MCOPY(v165 + 196 + 32, v113.data, v113.length);
                        MEM[32 + (v113.length + (v165 + 196))] = 0;
                        v137 = v166 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v165 + 196) + 32;
                    }
                    v167 = v114.call(MEM[v34e9_0x5V0x2aba0x7c5f5:v34e9_0x5V0x2aba0x7c5f5 + v19fcV0xc01f3V0x2aba0x7c5f5 - v34e9_0x5V0x2aba0x7c5f5], MEM[v34e9_0x5V0x2aba0x7c5f5:v34e9_0x5V0x2aba0x7c5f5 + v366eV0x2aba0x7c5f5]).value(v35).gas(msg.gas);
                    if (!v167) {
                        RETURNDATACOPY(MEM[64], v35, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v167) {
                            v168 = v169 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v168 = v170 = RETURNDATASIZE();
                            }
                            require(!((v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v135)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v135 + v168 - v135 >= 32);
                            v35 = v171 = MEM[v135];
                        }
                        if (!v35) {
                            v172 = 0x55a0(v127, v131);
                            require(v172 >= v133, 12);
                            v35 = v173 = _SafeSub(v172, v133);
                        }
                        require(v35 >= v110, 12);
                        0x5760(v108, v127, v35, v131);
                        v12 = _SafeAdd(v12 + 38, MEM[v37 + 68] >> 240);
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 10) {
                    v12 += 35;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v174 = v11.data;
                    require(uint8(byte(MEM[v37 + 33], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 33], v36)) | (20 == uint8(byte(MEM[v37 + 33], v36)) * 20 / uint8(byte(MEM[v37 + 33], v36))), Panic(17)); // arithmetic overflow or underflow
                    v175 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 33], v36)) * 20);
                    require(v175 <= v175 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v175 + 20, 40);
                    v176 = v11.data;
                    require(uint8(byte(MEM[v37 + 66], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 66], v36)) | (20 == uint8(byte(MEM[v37 + 66], v36)) * 20 / uint8(byte(MEM[v37 + 66], v36))), Panic(17)); // arithmetic overflow or underflow
                    v177 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 66], v36)) * 20);
                    require(v177 <= v177 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v177 + 20, 40);
                    v178 = 0x58a9(MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[v37 + 34]);
                    0x56b3(byte(MEM[v37 + 33], v36), MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[32 + (v177 + v11.word0.length)] >> 96);
                    0x2be5(MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[32 + (v177 + v11.word0.length)] >> 96, v178);
                    0x5760(byte(MEM[v37 + 33], v36), MEM[32 + (v175 + v11.word0.length)] >> 96, v178, MEM[32 + (v177 + v11.word0.length)] >> 96);
                } else {
                    require(11 == (byte(MEM[v37 + 32], 0x0)), 39);
                    v12 += 35;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    0x4e5e(v11, (byte(MEM[v37 + 33], v36)) & 0x1 == 1, MEM[v37 + 34], byte(MEM[v37 + 66], v36));
                }
            } else {
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = v12;
                MEM[0] = MEM[0];
                tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = v14;
                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                MEM[MEM[64] + 36] = MEM[v11.word0.length];
                MCOPY(MEM[64] + 36 + 32, 32 + v11.word0.length, MEM[v11.word0.length]);
                MEM[32 + (MEM[v11.word0.length] + (MEM[64] + 36))] = 0;
                v179 = _poolManager.call(v180, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (!v179) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v179) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v181.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v182 = new bytes[](v181.length);
                        require(!((v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v181.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v181.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v182)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v181.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v182.data, v181.data, v181.length);
                        v182[v181.length] = 0;
                    }
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                    tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
                    MEM[0] = MEM[0];
                    tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
                }
            }
        } else if (uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3) {
            0x3ec4(v11, v12);
            v183 = v184 = 0;
            require(v12 < MEM[v11.word0.length], 40);
            v185 = v11.word0.length + v12;
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            require((byte(MEM[v185 + 32], 0x0)) != 12, 38);
            if (!(byte(MEM[v185 + 32], 0x0))) {
                v12 += 69;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                0x4bd4(v11, byte(MEM[v185 + 33], 0x0), byte(MEM[v185 + 34], 0x0), byte(MEM[v185 + 35], 0x0), MEM[v185 + 36], byte(MEM[v185 + 68], 0x0), MEM[v185 + 69]);
            } else if ((byte(MEM[v185 + 32], 0x0)) == 1) {
                v12 += 37;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v186 = v11.data;
                require(uint8(byte(MEM[v185 + 34], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 34], 0x0)) | (20 == uint8(byte(MEM[v185 + 34], 0x0)) * 20 / uint8(byte(MEM[v185 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v187 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 34], 0x0)) * 20);
                require(v187 <= v187 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v187 + 20, 40);
                MEM[0] = MEM[0];
                v188 = v11.data;
                require(uint8(byte(MEM[v185 + 35], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 35], 0x0)) | (20 == uint8(byte(MEM[v185 + 35], 0x0)) * 20 / uint8(byte(MEM[v185 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v189 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 35], 0x0)) * 20);
                require(v189 <= v189 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v189 + 20, 40);
                v190 = v11.data;
                require(uint8(byte(MEM[v185 + 68], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 68], 0x0)) | (20 == uint8(byte(MEM[v185 + 68], 0x0)) * 20 / uint8(byte(MEM[v185 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v191 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 68], 0x0)) * 20);
                require(v191 <= v191 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v191 + 20, 40);
                v192 = v193 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                    v192 = v194 = !MEM[v185 + 36];
                }
                require(!v192, 6);
                MEM[0] = MEM[0];
                v195 = v196 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (v196) {
                    v195 = v197 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(MEM[32 + (v189 + v11.word0.length)] >> 96);
                }
                if (!v195) {
                    v195 = v198 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                    if (v198) {
                        v195 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(MEM[32 + (v189 + v11.word0.length)] >> 96);
                    }
                }
                require(v195, 4);
                v199 = v200 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                if (v200) {
                    v199 = v201 = address(MEM[32 + (v189 + v11.word0.length)] >> 96) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                }
                require(!(bool(v199) - ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1)), 4);
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                    require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                    MEM[0] = MEM[0];
                    v202 = v203 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v187 + v11.word0.length)] >> 96)) {
                        MEM[0] = MEM[0];
                        v202 = v204 = !_uniswapV2Call;
                    }
                    require(!v202, 19);
                    MEM[0] = MEM[0];
                    v205 = v206 = _uniswapV2Call;
                } else {
                    MEM[0] = MEM[0];
                    v207 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                        MEM[0] = MEM[0];
                        v207 = v208 = !_uniswapV2Call;
                    }
                    require(!v207, 41);
                    MEM[0] = MEM[0];
                    v205 = v209 = _uniswapV2Call;
                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v187 + v11.word0.length)] >> 96, v209);
                }
                v210 = v211 = mapping_5[address(MEM[32 + (v187 + v11.word0.length)] >> 96)];
                if (!v211) {
                    v210 = v212 = 30;
                }
                v213, /* uint112 */ v214, /* uint112 */ v215, /* uint32 */ v216 = address(MEM[32 + (v187 + v11.word0.length)] >> 96).getReserves().gas(msg.gas);
                if (!v213) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v214 = v217 = 0;
                    v215 = v218 = 0;
                    if (v213) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v219 = v220 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v219 = v221 = MEM[64] + 96;
                        }
                        require(v219 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v215 - uint112(v215)));
                        require(!(v216 - uint32(v216)));
                    }
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1) {
                        v222 = v223 = 0x5620(v205, uint112(v215), uint112(v214), v210);
                    } else {
                        v222 = v224 = 0x5620(v205, uint112(v214), uint112(v215), v210);
                    }
                    require(v222 >= MEM[v185 + 36], 43);
                    0x56b3(byte(MEM[v185 + 35], 0x0), MEM[32 + (v189 + v11.word0.length)] >> 96, MEM[32 + (v191 + v11.word0.length)] >> 96);
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 != 1) {
                        v222 = v225 = 0;
                    }
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1) {
                        v222 = v226 = 0;
                    }
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require((address(MEM[32 + (v187 + v11.word0.length)] >> 96)).code.size);
                    v227 = new uint256[](0);
                    MCOPY(v227.data, 32 + MEM[64], 0);
                    MEM[v227.data] = 0;
                    v228 = address(MEM[32 + (v187 + v11.word0.length)] >> 96).swap(v222, v222, address(MEM[32 + (v191 + v11.word0.length)] >> 96), v227).gas(msg.gas);
                    if (!v228) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v228) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        0x5760(byte(MEM[v185 + 35], 0x0), MEM[32 + (v189 + v11.word0.length)] >> 96, v222, MEM[32 + (v191 + v11.word0.length)] >> 96);
                    }
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 2) {
                v12 += 57;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v229 = v230 = MEM[v185 + 68] >> 96;
                v231 = v11.data;
                require(uint8(byte(MEM[v185 + 34], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 34], v184)) | (20 == uint8(byte(MEM[v185 + 34], v184)) * 20 / uint8(byte(MEM[v185 + 34], v184))), Panic(17)); // arithmetic overflow or underflow
                v232 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 34], v184)) * 20);
                require(v232 <= v232 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v232 + 20, 40);
                v233 = v11.data;
                require(uint8(byte(MEM[v185 + 35], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 35], v184)) | (20 == uint8(byte(MEM[v185 + 35], v184)) * 20 / uint8(byte(MEM[v185 + 35], v184))), Panic(17)); // arithmetic overflow or underflow
                v234 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 35], v184)) * 20);
                require(v234 <= v234 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v234 + 20, 40);
                v235 = v11.data;
                require(uint8(byte(MEM[v185 + 88], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 88], v184)) | (20 == uint8(byte(MEM[v185 + 88], v184)) * 20 / uint8(byte(MEM[v185 + 88], v184))), Panic(17)); // arithmetic overflow or underflow
                v236 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 88], v184)) * 20);
                require(v236 <= v236 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v236 + 20, 40);
                MEM[0] = MEM[0];
                require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                MEM[0] = MEM[0];
                v237 = v238 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                if (v238) {
                    MEM[0] = MEM[0];
                    v237 = v239 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                }
                require(!v237, 42);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    v240 = v241 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                    if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        MEM[0] = MEM[0];
                        v240 = v242 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    if (!v240) {
                        MEM[0] = MEM[0];
                        v240 = v243 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    }
                    require(!v240, 41);
                    MEM[0] = MEM[0];
                    v244 = v245 = _uniswapV2Call;
                } else {
                    v244 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                }
                require(v244, 6);
                require(v244 <= int256.max, 6);
                0x56b3(byte(MEM[v185 + 35], v184), MEM[32 + (v234 + v11.word0.length)] >> 96, MEM[32 + (v236 + v11.word0.length)] >> 96);
                if (!v230) {
                    if ((byte(MEM[v185 + 33], v184)) & 0x1 == 1) {
                        v229 = v246 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v229 = v247 = 0x1000276a4;
                    }
                }
                tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                MEM[0] = MEM[0];
                owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v232 + v11.word0.length)] >> 96);
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                v248 = new uint256[](0);
                MCOPY(v248.data, 32 + MEM[64], 0);
                MEM[v248.data] = 0;
                v249, v183, v183 = address(MEM[32 + (v232 + v11.word0.length)] >> 96).swap(address(MEM[32 + (v236 + v11.word0.length)] >> 96), bool((byte(MEM[v185 + 33], v184)) & 0x1 != 1), v244, address(v229), v248).value(v184).gas(msg.gas);
                if (!v249) {
                    RETURNDATACOPY(MEM[64], v184, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v249) {
                        v250 = v251 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v250 = v252 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v250 - MEM[64] >= 64);
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                    if ((byte(MEM[v185 + 33], v184)) & 0x1 == 1) {
                        v253 = v254 = 0x231c(v183);
                    } else {
                        v253 = v255 = 0x231c(v183);
                    }
                    require(v253 >= MEM[v185 + 36], 44);
                    0x5760(byte(MEM[v185 + 35], v184), MEM[32 + (v234 + v11.word0.length)] >> 96, v253, MEM[32 + (v236 + v11.word0.length)] >> 96);
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 8) {
                require(v12 + 1 <= v12 + 38, Panic(17)); // arithmetic overflow or underflow
                require(v12 + 38 <= MEM[v11.word0.length], 40);
                v256 = v257 = byte(MEM[v185 + 34], v184);
                v258 = v259 = MEM[v185 + 35];
                v260 = _SafeAdd(v12 + 38, MEM[v185 + 68] >> 240);
                require(v260 <= MEM[v11.word0.length], 40);
                v261 = 0x47fc(v11.word0.length, v12 + 38, MEM[v185 + 68] >> 240);
                v262 = v263 = mapping_7[byte(MEM[v185 + 33], v184)];
                v264 = v265 = !v263;
                if (bool(v263)) {
                    v264 = v266 = !mapping_8[byte(MEM[v185 + 33], v184)];
                }
                require(!v264, 28);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                        v267 = v268 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                        if (v268) {
                            MEM[0] = MEM[0];
                            v267 = v269 = v263 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                        }
                        if (!v267) {
                            require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                            MEM[0] = MEM[0];
                            require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                            MEM[0] = MEM[0];
                            require(_poolManager.code.size, v184, v184);
                            v270 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v185 + 33], v184)], _uniswapV2Call).value(v184).gas(msg.gas);
                            if (!v270) {
                                RETURNDATACOPY(MEM[64], v184, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v270) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v184, v184, v184);
                                }
                                v271 = v272 = 32;
                                v273 = v11.data;
                                require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                                v274 = _SafeAdd(v11.word2, uint8(v257) * 20);
                                require(v274 <= v274 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v274 + 20, 40);
                                v275 = v276 = MEM[32 + (v274 + v11.word0.length)] >> 96;
                                v277 = v11.data;
                                require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                                v278 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                                require(v278 <= v278 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v278 + 20, 40);
                                v279 = v280 = MEM[32 + (v278 + v11.word0.length)] >> 96;
                                0x56b3(v257, v276, v280);
                                v281 = v282 = 0x55a0(v276, v280);
                                v283 = v284 = MEM[64];
                                MEM[v284] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v284 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v284 + 36] = _uniswapV2Call;
                                MEM[v284 + 68] = address(v276);
                                MEM[v284 + 100] = v259;
                                MEM[v284 + 132] = address(v280);
                                MEM[v284 + 164] = 192;
                                MEM[v284 + 196] = v261.length;
                                MCOPY(v284 + 196 + 32, v261.data, v261.length);
                                MEM[32 + (v261.length + (v284 + 196))] = 0;
                                v285 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v284 + 196) + 32;
                            }
                        } else {
                            v271 = 32;
                            MEM[0] = MEM[0];
                            v286 = v11.data;
                            require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                            v287 = _SafeAdd(v11.word2, uint8(v257) * 20);
                            require(v287 <= v287 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v287 + 20, 40);
                            v275 = MEM[32 + (v287 + v11.word0.length)] >> 96;
                            v288 = v11.data;
                            require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                            v289 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                            require(v289 <= v289 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v289 + 20, 40);
                            v279 = MEM[32 + (v289 + v11.word0.length)] >> 96;
                            0x56b3(v257, v275, v279);
                            v281 = v290 = 0x55a0(v275, v279);
                            v283 = v291 = MEM[64];
                            MEM[v291] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v291 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v291 + 36] = _uniswapV2Call;
                            MEM[v291 + 68] = address(v275);
                            MEM[v291 + 100] = v259;
                            MEM[v291 + 132] = address(v279);
                            MEM[v291 + 164] = 192;
                            MEM[v291 + 196] = v261.length;
                            MCOPY(v291 + 196 + 32, v261.data, v261.length);
                            MEM[32 + (v261.length + (v291 + 196))] = 0;
                            v285 = v292 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v291 + 196) + 32;
                        }
                    } else {
                        MEM[0] = MEM[0];
                        require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                        MEM[0] = MEM[0];
                        v183 = v293 = _uniswapV2Call;
                        if (v293) {
                            if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v263, v293);
                            } else {
                                v294 = this.balance;
                                require(v294 >= v293, 6);
                            }
                        }
                        v271 = v295 = 32;
                        v296 = v11.data;
                        require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                        v297 = _SafeAdd(v11.word2, uint8(v257) * 20);
                        require(v297 <= v297 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v297 + 20, 40);
                        v275 = v298 = MEM[32 + (v297 + v11.word0.length)] >> 96;
                        v299 = v11.data;
                        require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                        v300 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                        require(v300 <= v300 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v300 + 20, 40);
                        v279 = v301 = MEM[32 + (v300 + v11.word0.length)] >> 96;
                        0x56b3(v257, v298, v301);
                        v281 = v302 = 0x55a0(v298, v301);
                        v283 = v303 = MEM[64];
                        MEM[v303] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v303 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        MEM[v303 + 36] = v293;
                        MEM[v303 + 68] = address(v298);
                        MEM[v303 + 100] = v259;
                        MEM[v303 + 132] = address(v301);
                        MEM[v303 + 164] = 192;
                        MEM[v303 + 196] = v261.length;
                        MCOPY(v303 + 196 + 32, v261.data, v261.length);
                        MEM[32 + (v261.length + (v303 + 196))] = 0;
                        v285 = v304 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v303 + 196) + 32;
                    }
                } else {
                    v271 = v305 = 32;
                    v306 = v11.data;
                    require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                    v307 = _SafeAdd(v11.word2, uint8(v257) * 20);
                    require(v307 <= v307 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v307 + 20, 40);
                    v275 = v308 = MEM[32 + (v307 + v11.word0.length)] >> 96;
                    v309 = v11.data;
                    require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                    v310 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                    require(v310 <= v310 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v310 + 20, 40);
                    v279 = v311 = MEM[32 + (v310 + v11.word0.length)] >> 96;
                    0x56b3(v257, v308, v311);
                    v281 = v312 = 0x55a0(v308, v311);
                    v283 = v313 = MEM[64];
                    MEM[v313] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                    MEM[v313 + 4] = address(v184);
                    MEM[v313 + 36] = v184;
                    MEM[v313 + 68] = address(v308);
                    MEM[v313 + 100] = v259;
                    MEM[v313 + 132] = address(v311);
                    MEM[v313 + 164] = 192;
                    MEM[v313 + 196] = v261.length;
                    MCOPY(v313 + 196 + 32, v261.data, v261.length);
                    MEM[32 + (v261.length + (v313 + 196))] = 0;
                    v285 = v314 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v313 + 196) + 32;
                }
                v315 = v262.call(MEM[v34e9_0x5V0x29d70x7c5f5:v34e9_0x5V0x29d70x7c5f5 + v19fcV0xc01f3V0x29d70x7c5f5 - v34e9_0x5V0x29d70x7c5f5], MEM[v34e9_0x5V0x29d70x7c5f5:v34e9_0x5V0x29d70x7c5f5 + v366eV0x29d70x7c5f5]).value(v183).gas(msg.gas);
                if (!v315) {
                    RETURNDATACOPY(MEM[64], v183, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v315) {
                        v316 = v317 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v316 = v318 = RETURNDATASIZE();
                        }
                        require(!((v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v283)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v283 + v316 - v283 >= 32);
                        v183 = v319 = MEM[v283];
                    }
                    if (!v183) {
                        v320 = 0x55a0(v275, v279);
                        require(v320 >= v281, 12);
                        v183 = v321 = _SafeSub(v320, v281);
                    }
                    require(v183 >= v258, 12);
                    0x5760(v256, v275, v183, v279);
                    v12 = _SafeAdd(v12 + 38, MEM[v185 + 68] >> 240);
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 10) {
                v12 += 35;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v322 = v11.data;
                require(uint8(byte(MEM[v185 + 33], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 33], v184)) | (20 == uint8(byte(MEM[v185 + 33], v184)) * 20 / uint8(byte(MEM[v185 + 33], v184))), Panic(17)); // arithmetic overflow or underflow
                v323 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 33], v184)) * 20);
                require(v323 <= v323 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v323 + 20, 40);
                v324 = v11.data;
                require(uint8(byte(MEM[v185 + 66], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 66], v184)) | (20 == uint8(byte(MEM[v185 + 66], v184)) * 20 / uint8(byte(MEM[v185 + 66], v184))), Panic(17)); // arithmetic overflow or underflow
                v325 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 66], v184)) * 20);
                require(v325 <= v325 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v325 + 20, 40);
                v326 = 0x58a9(MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[v185 + 34]);
                0x56b3(byte(MEM[v185 + 33], v184), MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[32 + (v325 + v11.word0.length)] >> 96);
                0x2be5(MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[32 + (v325 + v11.word0.length)] >> 96, v326);
                0x5760(byte(MEM[v185 + 33], v184), MEM[32 + (v323 + v11.word0.length)] >> 96, v326, MEM[32 + (v325 + v11.word0.length)] >> 96);
            } else {
                require(11 == (byte(MEM[v185 + 32], 0x0)), 39);
                v12 += 35;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                0x4e5e(v11, (byte(MEM[v185 + 33], v184)) & 0x1 == 1, MEM[v185 + 34], byte(MEM[v185 + 66], v184));
            }
        } else {
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 1, 40);
            require(v12 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(!(uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3), 19);
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            v327 = 0x24a8();
            v328 = 0x24a8();
            require(v12 + 1 <= v12 + 1 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 1 + 1, 40);
            require(v12 + 1 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word0 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 & 0x1 == 1;
            v328.word1 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 & 0x2 == 2;
            v328.word2 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 >> 2 & 0x3;
            require(MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 >> 2 & 0x3 <= 2, 19);
            require(v12 + 1 <= v12 + 2, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 2 <= v12 + 2 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 2 + 1, 40);
            require(v12 + 2 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word3 = uint8(MEM[32 + (v12 + 2 + v11.word0.length)] >> 248);
            require(v12 + 2 <= v12 + 3, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 3 <= v12 + 3 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 3 + 1, 40);
            require(v12 + 3 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word4 = uint8(MEM[32 + (v12 + 3 + v11.word0.length)] >> 248);
            require(v12 + 3 <= v12 + 4, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 4 <= v12 + 4 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 4 + 1, 40);
            require(v12 + 4 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word5 = uint8(MEM[32 + (v12 + 4 + v11.word0.length)] >> 248);
            require(v12 + 4 <= v12 + 5, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 5 <= v12 + 5 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 5 + 3, 40);
            v328.word6 = uint24(MEM[32 + (v12 + 5 + v11.word0.length)] >> 232);
            require(v12 + 5 <= v12 + 8, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 8 <= v12 + 8 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 8 + 3, 40);
            if (!(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232 & 0x800000)) {
                v329 = v330 = int24(uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232));
            } else {
                require(!(0x1 & (uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 > uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232))), Panic(17)); // arithmetic overflow or underflow
                v329 = int24(uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000);
            }
            v328.word7 = int24(v329);
            require(v12 + 8 <= v12 + 11, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 11 <= v12 + 11 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 11 + 1, 40);
            require(v12 + 11 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word8 = uint8(MEM[32 + (v12 + 11 + v11.word0.length)] >> 248);
            require(v12 + 11 <= v12 + 12, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 12 <= v12 + 12 + 32, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 12 + 32, 40);
            v328.word9 = MEM[32 + (v12 + 12 + v11.word0.length)];
            require(v12 + 12 <= v12 + 44, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 44 <= v12 + 44 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 44 + 20, 40);
            v328.word10 = address(MEM[32 + (v12 + 44 + v11.word0.length)] >> 96);
            require(v12 + 64 >= v12 + 44, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 64 <= v12 + 64 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 64 + 1, 40);
            require(v12 + 64 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word11 = uint8(MEM[32 + (v12 + 64 + v11.word0.length)] >> 248);
            v12 = v12 + 65;
            require(v12 + 64 <= v12, Panic(17)); // arithmetic overflow or underflow
            v331 = v11.data;
            require(uint8(v328.word3) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word3) | (20 == uint8(v328.word3) * 20 / uint8(v328.word3)), Panic(17)); // arithmetic overflow or underflow
            v332 = _SafeAdd(v11.word2, uint8(v328.word3) * 20);
            require(v332 <= v332 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v332 + 20, 40);
            v333 = v334 = MEM[32 + (v332 + v11.word0.length)] >> 96;
            v335 = v11.data;
            require(uint8(v328.word4) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word4) | (20 == uint8(v328.word4) * 20 / uint8(v328.word4)), Panic(17)); // arithmetic overflow or underflow
            v336 = _SafeAdd(v11.word2, uint8(v328.word4) * 20);
            require(v336 <= v336 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v336 + 20, 40);
            v333 = MEM[32 + (v336 + v11.word0.length)] >> 96;
            v337 = v11.data;
            require(uint8(v328.word5) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word5) | (20 == uint8(v328.word5) * 20 / uint8(v328.word5)), Panic(17)); // arithmetic overflow or underflow
            v338 = _SafeAdd(v11.word2, uint8(v328.word5) * 20);
            require(v338 <= v338 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v338 + 20, 40);
            if (uint8(v328.word8) - uint8.max) {
                v339 = v11.data;
                require(uint8(v328.word8) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(v328.word8) | (20 == uint8(v328.word8) * 20 / uint8(v328.word8)), Panic(17)); // arithmetic overflow or underflow
                v340 = _SafeAdd(v11.word2, uint8(v328.word8) * 20);
                require(v340 <= v340 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v340 + 20, 40);
                v341 = MEM[32 + (v340 + v11.word0.length)] >> 96;
            } else {
                v341 = v342 = 0;
            }
            if (v328.word0) {
            }
            if (!bool(!v328.word0)) {
            }
            require(!(address(MEM[32 + (v338 + v11.word0.length)] >> 96) - address(v333)), 4);
            if (0 == bool(v328.word0)) {
                v343 = v344 = uint8(v328.word3);
            } else {
                v343 = uint8(v328.word4);
            }
            v345 = v12 >= v14;
            if (v345) {
                MEM[0] = MEM[0];
                v346 = bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd);
                if (v346) {
                    MEM[0] = MEM[0];
                    v346 = v347 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 == 3;
                }
                v345 = v348 = !v346;
            }
            0x505c(v333, v343, bool(v328.word1));
            v349 = new struct(5);
            require(!((v349 + 160 > uint64.max) | (v349 + 160 < v349)), Panic(65)); // failed memory allocation (too much memory)
            v349.word0 = address(v334);
            v349.word1 = address(v333);
            v349.word2 = uint24(v328.word6);
            v349.word3 = int24(v328.word7);
            v349.word4 = address(v341);
            MEM[0] = MEM[0];
            v350 = 0x231c(_uniswapV2Call);
            v351 = address(v328.word10);
            if (!v351) {
                if (bool(v328.word0)) {
                    v351 = v352 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v351 = v353 = 0x1000276a4;
                }
            }
            v354 = new struct(3);
            require(!((v354 + 96 > uint64.max) | (v354 + 96 < v354)), Panic(65)); // failed memory allocation (too much memory)
            v354.word0 = !v328.word0;
            v354.word1 = v350;
            v354.word2 = address(v351);
            v355 = 32;
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v356 = new uint256[](0);
            MCOPY(v356.data, 32 + MEM[64], 0);
            MEM[v356.data] = 0;
            v357, v358 = _poolManager.swap(address(v349.word0), address(v349.word1), uint24(v349.word2), int24(v349.word3), address(v349.word4), bool(v354.word0), v354.word1, address(v354.word2), v356).gas(msg.gas);
            if (!v357) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v358 = 0;
                if (v357) {
                    if (v355 > RETURNDATASIZE()) {
                        v355 = v359 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v355 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v355 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v355 - MEM[64] >= v355);
                }
                if (bool(v328.word0)) {
                    v360 = v361 = v358 >> 128;
                } else {
                    v360 = int128(v358);
                }
                require(int128(v360) > 0, 45);
                require(uint128(v360) >= v328.word9, 46);
                0x521d(v11, v328, MEM[32 + (v338 + v11.word0.length)] >> 96, uint128(v360), v345);
            }
        }
        require(v12 <= v14, 37);
    }
    v362 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
        MEM[0] = MEM[0];
        v362 = v363 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
    }
    if (!v362) {
        MEM[0] = MEM[0];
        v362 = v364 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(v4);
    }
    require(!v362, 22);
    v365 = _uniswapV2Call < v29;
    if (_uniswapV2Call >= v29) {
        v366 = _SafeSub(_uniswapV2Call, v29);
        v365 = v367 = v366 < tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41;
    }
    require(!v365, 22);
    0x2be5(v4, msg.sender, v29);
    v368 = _SafeSub(_uniswapV2Call, v29);
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v4);
    _uniswapV2Call = v368;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
    MEM[0] = MEM[0];
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
}

function pancakeCall(address _sender, uint256 _amount0, uint256 _amount1, bytes _data) public nonPayable { 
    require(msg.data.length - 4 >= 128);
    require(_data <= uint64.max);
    require(4 + _data + 31 < msg.data.length);
    require(_data.length <= uint64.max);
    require(4 + _data + _data.length + 32 <= msg.data.length);
    v0 = this != _sender;
    if (this == _sender) {
        MEM[0] = MEM[0];
        v0 = v1 = !_algebraSwapCallback;
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v2 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
    }
    if (!v0) {
        MEM[0] = MEM[0];
        v0 = v3 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 1;
    }
    require(!v0, 10);
    require(!(msg.sender - address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809)), 5);
    v4 = v5 = msg.sender;
    v6 = !_amount0;
    if (v6) {
        v6 = v7 = !_amount1;
    }
    if (!v6) {
        v6 = v8 = _amount0;
        if (!bool(v6)) {
            v6 = v9 = bool(_amount1);
        }
    }
    require(!v6, 6);
    require(_data.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v10 = new bytes[](_data.length);
    require(!((v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v10 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + _data.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v10)), Panic(65)); // failed memory allocation (too much memory)
    require(_data.data + _data.length <= msg.data.length);
    CALLDATACOPY(v10.data, _data.data, _data.length);
    v10[_data.length] = 0;
    v11 = 0x1b78(v10);
    v12 = v13 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0;
    v12 = v14 = tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f;
    MEM[0] = MEM[0];
    v15 = v16 = v13 < v11.word4;
    if (v13 >= v11.word4) {
        v15 = v17 = v14 > v11.word5;
    }
    if (!v15) {
        v15 = v18 = v13 >= v14;
    }
    require(!v15, 19);
    if (!bool(v6)) {
    }
    if (!bool(v6)) {
    }
    if (!bool(v6)) {
    }
    v19 = mapping_5[msg.sender];
    if (!v19) {
        v19 = v20 = 30;
    }
    v21, /* uint112 */ v22, /* uint112 */ v23, /* uint32 */ v24 = msg.sender.getReserves().gas(msg.gas);
    require(v21, MEM[64], RETURNDATASIZE());
    v22 = v25 = 0;
    v23 = v26 = 0;
    if (v21) {
        v27 = 96;
        if (96 > RETURNDATASIZE()) {
            v27 = v28 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64] + (v27 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        require(MEM[64] + v27 - MEM[64] >= 96);
        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
        require(!(v23 - uint112(v23)));
        require(!(MEM[MEM[64] + 64] - uint32(MEM[MEM[64] + 64])));
    }
    if (bool(v6)) {
        v29 = v30 = 0x2f79(v31, uint112(v22), uint112(v23), v19);
        v32 = this;
    } else {
        v29 = v33 = 0x2f79(v31, uint112(v23), uint112(v22), v19);
        v32 = v34 = this;
    }
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v4);
    _uniswapV2Call = v31;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(v32);
    while (v12 < v14) {
        require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
        require(MEM[v11.word0.length] >= v12 + 1, 40);
        require(v12 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) != 12, 38);
        MEM[0] = msg.sender;
        if (!tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7) {
            if (uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3) {
                v35 = v36 = 0;
                require(v12 < MEM[v11.word0.length], 40);
                v37 = v11.word0.length + v12;
                require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require((byte(MEM[v37 + 32], 0x0)) != 12, 38);
                if (!(byte(MEM[v37 + 32], 0x0))) {
                    v12 += 69;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    0x4bd4(v11, byte(MEM[v37 + 33], 0x0), byte(MEM[v37 + 34], 0x0), byte(MEM[v37 + 35], 0x0), MEM[v37 + 36], byte(MEM[v37 + 68], 0x0), MEM[v37 + 69]);
                } else if ((byte(MEM[v37 + 32], 0x0)) == 1) {
                    v12 += 37;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v38 = v11.data;
                    require(uint8(byte(MEM[v37 + 34], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 34], 0x0)) | (20 == uint8(byte(MEM[v37 + 34], 0x0)) * 20 / uint8(byte(MEM[v37 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v39 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 34], 0x0)) * 20);
                    require(v39 <= v39 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v39 + 20, 40);
                    MEM[0] = MEM[0];
                    v40 = v11.data;
                    require(uint8(byte(MEM[v37 + 35], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 35], 0x0)) | (20 == uint8(byte(MEM[v37 + 35], 0x0)) * 20 / uint8(byte(MEM[v37 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v41 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 35], 0x0)) * 20);
                    require(v41 <= v41 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v41 + 20, 40);
                    v42 = v11.data;
                    require(uint8(byte(MEM[v37 + 68], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 68], 0x0)) | (20 == uint8(byte(MEM[v37 + 68], 0x0)) * 20 / uint8(byte(MEM[v37 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                    v43 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 68], 0x0)) * 20);
                    require(v43 <= v43 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v43 + 20, 40);
                    v44 = v45 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                        v44 = v46 = !MEM[v37 + 36];
                    }
                    require(!v44, 6);
                    MEM[0] = MEM[0];
                    v47 = v48 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    if (v48) {
                        v47 = v49 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(MEM[32 + (v41 + v11.word0.length)] >> 96);
                    }
                    if (!v47) {
                        v47 = v50 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                        if (v50) {
                            v47 = address(MEM[32 + (v39 + v11.word0.length)] >> 96) == address(MEM[32 + (v41 + v11.word0.length)] >> 96);
                        }
                    }
                    require(v47, 4);
                    v51 = v52 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                    if (v52) {
                        v51 = v53 = address(MEM[32 + (v41 + v11.word0.length)] >> 96) == address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                    }
                    require(!(bool(v51) - ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1)), 4);
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                        require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                        MEM[0] = MEM[0];
                        v54 = v55 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v39 + v11.word0.length)] >> 96);
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v39 + v11.word0.length)] >> 96)) {
                            MEM[0] = MEM[0];
                            v54 = v56 = !_uniswapV2Call;
                        }
                        require(!v54, 19);
                        MEM[0] = MEM[0];
                        v57 = v58 = _uniswapV2Call;
                    } else {
                        MEM[0] = MEM[0];
                        v59 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                            MEM[0] = MEM[0];
                            v59 = v60 = !_uniswapV2Call;
                        }
                        require(!v59, 41);
                        MEM[0] = MEM[0];
                        v57 = v61 = _uniswapV2Call;
                        0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v39 + v11.word0.length)] >> 96, v61);
                    }
                    v62 = v63 = mapping_5[address(MEM[32 + (v39 + v11.word0.length)] >> 96)];
                    if (!v63) {
                        v62 = v64 = 30;
                    }
                    v65, /* uint112 */ v66, /* uint112 */ v67, /* uint32 */ v68 = address(MEM[32 + (v39 + v11.word0.length)] >> 96).getReserves().gas(msg.gas);
                    if (!v65) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        v66 = v69 = 0;
                        v67 = v70 = 0;
                        if (v65) {
                            if (96 > RETURNDATASIZE()) {
                                require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                                v71 = v72 = MEM[64] + RETURNDATASIZE();
                            } else {
                                require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64] + 96;
                                v71 = v73 = MEM[64] + 96;
                            }
                            require(v71 - MEM[64] >= 96);
                            require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                            require(!(v67 - uint112(v67)));
                            require(!(v68 - uint32(v68)));
                        }
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1) {
                            v74 = v75 = 0x5620(v57, uint112(v67), uint112(v66), v62);
                        } else {
                            v74 = v76 = 0x5620(v57, uint112(v66), uint112(v67), v62);
                        }
                        require(v74 >= MEM[v37 + 36], 43);
                        0x56b3(byte(MEM[v37 + 35], 0x0), MEM[32 + (v41 + v11.word0.length)] >> 96, MEM[32 + (v43 + v11.word0.length)] >> 96);
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 != 1) {
                            v74 = v77 = 0;
                        }
                        if ((byte(MEM[v37 + 33], 0x0)) & 0x1 == 1) {
                            v74 = v78 = 0;
                        }
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        require((address(MEM[32 + (v39 + v11.word0.length)] >> 96)).code.size);
                        v79 = new uint256[](0);
                        MCOPY(v79.data, 32 + MEM[64], 0);
                        MEM[v79.data] = 0;
                        v80 = address(MEM[32 + (v39 + v11.word0.length)] >> 96).swap(v74, v74, address(MEM[32 + (v43 + v11.word0.length)] >> 96), v79).gas(msg.gas);
                        if (!v80) {
                            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                            revert(MEM[64], RETURNDATASIZE());
                        } else {
                            if (v80) {
                                require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                MEM[64] = MEM[64];
                            }
                            0x5760(byte(MEM[v37 + 35], 0x0), MEM[32 + (v41 + v11.word0.length)] >> 96, v74, MEM[32 + (v43 + v11.word0.length)] >> 96);
                        }
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 2) {
                    v12 += 57;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v81 = v82 = MEM[v37 + 68] >> 96;
                    v83 = v11.data;
                    require(uint8(byte(MEM[v37 + 34], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 34], v36)) | (20 == uint8(byte(MEM[v37 + 34], v36)) * 20 / uint8(byte(MEM[v37 + 34], v36))), Panic(17)); // arithmetic overflow or underflow
                    v84 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 34], v36)) * 20);
                    require(v84 <= v84 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v84 + 20, 40);
                    v85 = v11.data;
                    require(uint8(byte(MEM[v37 + 35], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 35], v36)) | (20 == uint8(byte(MEM[v37 + 35], v36)) * 20 / uint8(byte(MEM[v37 + 35], v36))), Panic(17)); // arithmetic overflow or underflow
                    v86 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 35], v36)) * 20);
                    require(v86 <= v86 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v86 + 20, 40);
                    v87 = v11.data;
                    require(uint8(byte(MEM[v37 + 88], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 88], v36)) | (20 == uint8(byte(MEM[v37 + 88], v36)) * 20 / uint8(byte(MEM[v37 + 88], v36))), Panic(17)); // arithmetic overflow or underflow
                    v88 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 88], v36)) * 20);
                    require(v88 <= v88 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v88 + 20, 40);
                    MEM[0] = MEM[0];
                    require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                    MEM[0] = MEM[0];
                    v89 = v90 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                    if (v90) {
                        MEM[0] = MEM[0];
                        v89 = v91 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    require(!v89, 42);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        v92 = v93 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                        if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                            MEM[0] = MEM[0];
                            v92 = v94 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                        }
                        if (!v92) {
                            MEM[0] = MEM[0];
                            v92 = v95 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        }
                        require(!v92, 41);
                        MEM[0] = MEM[0];
                        v96 = v97 = _uniswapV2Call;
                    } else {
                        v96 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                    }
                    require(v96, 6);
                    require(v96 <= int256.max, 6);
                    0x56b3(byte(MEM[v37 + 35], v36), MEM[32 + (v86 + v11.word0.length)] >> 96, MEM[32 + (v88 + v11.word0.length)] >> 96);
                    if (!v82) {
                        if ((byte(MEM[v37 + 33], v36)) & 0x1 == 1) {
                            v81 = v98 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                        } else {
                            v81 = v99 = 0x1000276a4;
                        }
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v84 + v11.word0.length)] >> 96);
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    v100 = new uint256[](0);
                    MCOPY(v100.data, 32 + MEM[64], 0);
                    MEM[v100.data] = 0;
                    v101, v35, v35 = address(MEM[32 + (v84 + v11.word0.length)] >> 96).swap(address(MEM[32 + (v88 + v11.word0.length)] >> 96), bool((byte(MEM[v37 + 33], v36)) & 0x1 != 1), v96, address(v81), v100).value(v36).gas(msg.gas);
                    if (!v101) {
                        RETURNDATACOPY(MEM[64], v36, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v101) {
                            v102 = v103 = 64;
                            if (64 > RETURNDATASIZE()) {
                                v102 = v104 = RETURNDATASIZE();
                            }
                            require(!((MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (v102 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(MEM[64] + v102 - MEM[64] >= 64);
                        }
                        tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                        MEM[0] = MEM[0];
                        owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                        if ((byte(MEM[v37 + 33], v36)) & 0x1 == 1) {
                            v105 = v106 = 0x231c(v35);
                        } else {
                            v105 = v107 = 0x231c(v35);
                        }
                        require(v105 >= MEM[v37 + 36], 44);
                        0x5760(byte(MEM[v37 + 35], v36), MEM[32 + (v86 + v11.word0.length)] >> 96, v105, MEM[32 + (v88 + v11.word0.length)] >> 96);
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 8) {
                    require(v12 + 1 <= v12 + 38, Panic(17)); // arithmetic overflow or underflow
                    require(v12 + 38 <= MEM[v11.word0.length], 40);
                    v108 = v109 = byte(MEM[v37 + 34], v36);
                    v110 = v111 = MEM[v37 + 35];
                    v112 = _SafeAdd(v12 + 38, MEM[v37 + 68] >> 240);
                    require(v112 <= MEM[v11.word0.length], 40);
                    v113 = 0x47fc(v11.word0.length, v12 + 38, MEM[v37 + 68] >> 240);
                    v114 = v115 = mapping_7[byte(MEM[v37 + 33], v36)];
                    v116 = v117 = !v115;
                    if (bool(v115)) {
                        v116 = v118 = !mapping_8[byte(MEM[v37 + 33], v36)];
                    }
                    require(!v116, 28);
                    MEM[0] = MEM[0];
                    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                            v119 = v120 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                            if (v120) {
                                MEM[0] = MEM[0];
                                v119 = v121 = v115 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                            }
                            if (!v119) {
                                require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                                MEM[0] = MEM[0];
                                require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                                MEM[0] = MEM[0];
                                require(_poolManager.code.size, v36, v36);
                                v122 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v37 + 33], v36)], _uniswapV2Call).value(v36).gas(msg.gas);
                                if (!v122) {
                                    RETURNDATACOPY(MEM[64], v36, RETURNDATASIZE());
                                    revert(MEM[64], RETURNDATASIZE());
                                } else {
                                    if (v122) {
                                        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                        MEM[64] = MEM[64];
                                        require(!v36, v36, v36);
                                    }
                                    v123 = v124 = 32;
                                    v125 = v11.data;
                                    require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                                    require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                                    v126 = _SafeAdd(v11.word2, uint8(v109) * 20);
                                    require(v126 <= v126 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[v11.word0.length] >= v126 + 20, 40);
                                    v127 = v128 = MEM[32 + (v126 + v11.word0.length)] >> 96;
                                    v129 = v11.data;
                                    require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                                    require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                                    v130 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                                    require(v130 <= v130 + 20, Panic(17)); // arithmetic overflow or underflow
                                    require(MEM[v11.word0.length] >= v130 + 20, 40);
                                    v131 = v132 = MEM[32 + (v130 + v11.word0.length)] >> 96;
                                    0x56b3(v109, v128, v132);
                                    v133 = v134 = 0x55a0(v128, v132);
                                    v135 = v136 = MEM[64];
                                    MEM[v136] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                    MEM[v136 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                    MEM[v136 + 36] = _uniswapV2Call;
                                    MEM[v136 + 68] = address(v128);
                                    MEM[v136 + 100] = v111;
                                    MEM[v136 + 132] = address(v132);
                                    MEM[v136 + 164] = 192;
                                    MEM[v136 + 196] = v113.length;
                                    MCOPY(v136 + 196 + 32, v113.data, v113.length);
                                    MEM[32 + (v113.length + (v136 + 196))] = 0;
                                    v137 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v136 + 196) + 32;
                                }
                            } else {
                                v123 = 32;
                                MEM[0] = MEM[0];
                                v138 = v11.data;
                                require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                                v139 = _SafeAdd(v11.word2, uint8(v109) * 20);
                                require(v139 <= v139 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v139 + 20, 40);
                                v127 = MEM[32 + (v139 + v11.word0.length)] >> 96;
                                v140 = v11.data;
                                require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                                v141 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                                require(v141 <= v141 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v141 + 20, 40);
                                v131 = MEM[32 + (v141 + v11.word0.length)] >> 96;
                                0x56b3(v109, v127, v131);
                                v133 = v142 = 0x55a0(v127, v131);
                                v135 = v143 = MEM[64];
                                MEM[v143] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v143 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v143 + 36] = _uniswapV2Call;
                                MEM[v143 + 68] = address(v127);
                                MEM[v143 + 100] = v111;
                                MEM[v143 + 132] = address(v131);
                                MEM[v143 + 164] = 192;
                                MEM[v143 + 196] = v113.length;
                                MCOPY(v143 + 196 + 32, v113.data, v113.length);
                                MEM[32 + (v113.length + (v143 + 196))] = 0;
                                v137 = v144 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v143 + 196) + 32;
                            }
                        } else {
                            MEM[0] = MEM[0];
                            require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                            MEM[0] = MEM[0];
                            v35 = v145 = _uniswapV2Call;
                            if (v145) {
                                if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v115, v145);
                                } else {
                                    v146 = this.balance;
                                    require(v146 >= v145, 6);
                                }
                            }
                            v123 = v147 = 32;
                            v148 = v11.data;
                            require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                            v149 = _SafeAdd(v11.word2, uint8(v109) * 20);
                            require(v149 <= v149 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v149 + 20, 40);
                            v127 = v150 = MEM[32 + (v149 + v11.word0.length)] >> 96;
                            v151 = v11.data;
                            require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                            v152 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                            require(v152 <= v152 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v152 + 20, 40);
                            v131 = v153 = MEM[32 + (v152 + v11.word0.length)] >> 96;
                            0x56b3(v109, v150, v153);
                            v133 = v154 = 0x55a0(v150, v153);
                            v135 = v155 = MEM[64];
                            MEM[v155] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v155 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v155 + 36] = v145;
                            MEM[v155 + 68] = address(v150);
                            MEM[v155 + 100] = v111;
                            MEM[v155 + 132] = address(v153);
                            MEM[v155 + 164] = 192;
                            MEM[v155 + 196] = v113.length;
                            MCOPY(v155 + 196 + 32, v113.data, v113.length);
                            MEM[32 + (v113.length + (v155 + 196))] = 0;
                            v137 = v156 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v155 + 196) + 32;
                        }
                    } else {
                        v123 = v157 = 32;
                        v158 = v11.data;
                        require(uint8(v109) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(v109) | (20 == uint8(v109) * 20 / uint8(v109)), Panic(17)); // arithmetic overflow or underflow
                        v159 = _SafeAdd(v11.word2, uint8(v109) * 20);
                        require(v159 <= v159 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v159 + 20, 40);
                        v127 = v160 = MEM[32 + (v159 + v11.word0.length)] >> 96;
                        v161 = v11.data;
                        require(uint8(byte(MEM[v37 + 67], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v37 + 67], v36)) | (20 == uint8(byte(MEM[v37 + 67], v36)) * 20 / uint8(byte(MEM[v37 + 67], v36))), Panic(17)); // arithmetic overflow or underflow
                        v162 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 67], v36)) * 20);
                        require(v162 <= v162 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v162 + 20, 40);
                        v131 = v163 = MEM[32 + (v162 + v11.word0.length)] >> 96;
                        0x56b3(v109, v160, v163);
                        v133 = v164 = 0x55a0(v160, v163);
                        v135 = v165 = MEM[64];
                        MEM[v165] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v165 + 4] = address(v36);
                        MEM[v165 + 36] = v36;
                        MEM[v165 + 68] = address(v160);
                        MEM[v165 + 100] = v111;
                        MEM[v165 + 132] = address(v163);
                        MEM[v165 + 164] = 192;
                        MEM[v165 + 196] = v113.length;
                        MCOPY(v165 + 196 + 32, v113.data, v113.length);
                        MEM[32 + (v113.length + (v165 + 196))] = 0;
                        v137 = v166 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v113.length) + (v165 + 196) + 32;
                    }
                    v167 = v114.call(MEM[v34e9_0x5V0x2aba0x7c619:v34e9_0x5V0x2aba0x7c619 + v19fcV0xc01f3V0x2aba0x7c619 - v34e9_0x5V0x2aba0x7c619], MEM[v34e9_0x5V0x2aba0x7c619:v34e9_0x5V0x2aba0x7c619 + v366eV0x2aba0x7c619]).value(v35).gas(msg.gas);
                    if (!v167) {
                        RETURNDATACOPY(MEM[64], v35, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v167) {
                            v168 = v169 = 32;
                            if (32 > RETURNDATASIZE()) {
                                v168 = v170 = RETURNDATASIZE();
                            }
                            require(!((v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v135)), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = v135 + (v168 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            require(v135 + v168 - v135 >= 32);
                            v35 = v171 = MEM[v135];
                        }
                        if (!v35) {
                            v172 = 0x55a0(v127, v131);
                            require(v172 >= v133, 12);
                            v35 = v173 = _SafeSub(v172, v133);
                        }
                        require(v35 >= v110, 12);
                        0x5760(v108, v127, v35, v131);
                        v12 = _SafeAdd(v12 + 38, MEM[v37 + 68] >> 240);
                    }
                } else if ((byte(MEM[v37 + 32], 0x0)) == 10) {
                    v12 += 35;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    v174 = v11.data;
                    require(uint8(byte(MEM[v37 + 33], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 33], v36)) | (20 == uint8(byte(MEM[v37 + 33], v36)) * 20 / uint8(byte(MEM[v37 + 33], v36))), Panic(17)); // arithmetic overflow or underflow
                    v175 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 33], v36)) * 20);
                    require(v175 <= v175 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v175 + 20, 40);
                    v176 = v11.data;
                    require(uint8(byte(MEM[v37 + 66], v36)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v37 + 66], v36)) | (20 == uint8(byte(MEM[v37 + 66], v36)) * 20 / uint8(byte(MEM[v37 + 66], v36))), Panic(17)); // arithmetic overflow or underflow
                    v177 = _SafeAdd(v11.word2, uint8(byte(MEM[v37 + 66], v36)) * 20);
                    require(v177 <= v177 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v177 + 20, 40);
                    v178 = 0x58a9(MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[v37 + 34]);
                    0x56b3(byte(MEM[v37 + 33], v36), MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[32 + (v177 + v11.word0.length)] >> 96);
                    0x2be5(MEM[32 + (v175 + v11.word0.length)] >> 96, MEM[32 + (v177 + v11.word0.length)] >> 96, v178);
                    0x5760(byte(MEM[v37 + 33], v36), MEM[32 + (v175 + v11.word0.length)] >> 96, v178, MEM[32 + (v177 + v11.word0.length)] >> 96);
                } else {
                    require(11 == (byte(MEM[v37 + 32], 0x0)), 39);
                    v12 += 35;
                    require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                    require(v12 <= MEM[v11.word0.length], 40);
                    0x4e5e(v11, (byte(MEM[v37 + 33], v36)) & 0x1 == 1, MEM[v37 + 34], byte(MEM[v37 + 66], v36));
                }
            } else {
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = v12;
                MEM[0] = MEM[0];
                tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = v14;
                MEM[MEM[64]] = 0x48c8949100000000000000000000000000000000000000000000000000000000;
                MEM[MEM[64] + 4] = 32;
                MEM[MEM[64] + 36] = MEM[v11.word0.length];
                MCOPY(MEM[64] + 36 + 32, 32 + v11.word0.length, MEM[v11.word0.length]);
                MEM[32 + (MEM[v11.word0.length] + (MEM[64] + 36))] = 0;
                v179 = _poolManager.call(v180, MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000).gas(msg.gas);
                if (!v179) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v179) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);
                        require(0x48c8949100000000000000000000000000000000000000000000000000000000 <= uint64.max);
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + 31 < MEM[64] + RETURNDATASIZE());
                        require(v181.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
                        v182 = new bytes[](v181.length);
                        require(!((v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v181.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v182 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v181.length) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v182)), Panic(65)); // failed memory allocation (too much memory)
                        require(MEM[64] + 0x48c8949100000000000000000000000000000000000000000000000000000000 + v181.length + 32 <= MEM[64] + RETURNDATASIZE());
                        MCOPY(v182.data, v181.data, v181.length);
                        v182[v181.length] = 0;
                    }
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_0_0 = 0;
                    tstor_22d92808d778f4f8a7b211e8a3baca6bc96e433d6460930e5c962e3d1159b100_1_31 = 0;
                    tstor_d05ec23259a7626560e152510cafcaf6a2dd53e4feb1f57a1f8d80a7dab41cd6 = 0;
                    MEM[0] = MEM[0];
                    tstor_39b6d83a1c328c8ba6384f54b622336a41dbf981b77dee4163834b968b669568 = 0;
                }
            }
        } else if (uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3) {
            0x3ec4(v11, v12);
            v183 = v184 = 0;
            require(v12 < MEM[v11.word0.length], 40);
            v185 = v11.word0.length + v12;
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            require((byte(MEM[v185 + 32], 0x0)) != 12, 38);
            if (!(byte(MEM[v185 + 32], 0x0))) {
                v12 += 69;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                0x4bd4(v11, byte(MEM[v185 + 33], 0x0), byte(MEM[v185 + 34], 0x0), byte(MEM[v185 + 35], 0x0), MEM[v185 + 36], byte(MEM[v185 + 68], 0x0), MEM[v185 + 69]);
            } else if ((byte(MEM[v185 + 32], 0x0)) == 1) {
                v12 += 37;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v186 = v11.data;
                require(uint8(byte(MEM[v185 + 34], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 34], 0x0)) | (20 == uint8(byte(MEM[v185 + 34], 0x0)) * 20 / uint8(byte(MEM[v185 + 34], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v187 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 34], 0x0)) * 20);
                require(v187 <= v187 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v187 + 20, 40);
                MEM[0] = MEM[0];
                v188 = v11.data;
                require(uint8(byte(MEM[v185 + 35], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 35], 0x0)) | (20 == uint8(byte(MEM[v185 + 35], 0x0)) * 20 / uint8(byte(MEM[v185 + 35], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v189 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 35], 0x0)) * 20);
                require(v189 <= v189 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v189 + 20, 40);
                v190 = v11.data;
                require(uint8(byte(MEM[v185 + 68], 0x0)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 68], 0x0)) | (20 == uint8(byte(MEM[v185 + 68], 0x0)) * 20 / uint8(byte(MEM[v185 + 68], 0x0))), Panic(17)); // arithmetic overflow or underflow
                v191 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 68], 0x0)) * 20);
                require(v191 <= v191 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v191 + 20, 40);
                v192 = v193 = !address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (bool(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59))) {
                    v192 = v194 = !MEM[v185 + 36];
                }
                require(!v192, 6);
                MEM[0] = MEM[0];
                v195 = v196 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                if (v196) {
                    v195 = v197 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(MEM[32 + (v189 + v11.word0.length)] >> 96);
                }
                if (!v195) {
                    v195 = v198 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                    if (v198) {
                        v195 = address(MEM[32 + (v187 + v11.word0.length)] >> 96) == address(MEM[32 + (v189 + v11.word0.length)] >> 96);
                    }
                }
                require(v195, 4);
                v199 = v200 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                if (v200) {
                    v199 = v201 = address(MEM[32 + (v189 + v11.word0.length)] >> 96) == address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                }
                require(!(bool(v199) - ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1)), 4);
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) - 1) {
                    require(3 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3), 19);
                    MEM[0] = MEM[0];
                    v202 = v203 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != address(MEM[32 + (v187 + v11.word0.length)] >> 96);
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == address(MEM[32 + (v187 + v11.word0.length)] >> 96)) {
                        MEM[0] = MEM[0];
                        v202 = v204 = !_uniswapV2Call;
                    }
                    require(!v202, 19);
                    MEM[0] = MEM[0];
                    v205 = v206 = _uniswapV2Call;
                } else {
                    MEM[0] = MEM[0];
                    v207 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    if (address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) == this) {
                        MEM[0] = MEM[0];
                        v207 = v208 = !_uniswapV2Call;
                    }
                    require(!v207, 41);
                    MEM[0] = MEM[0];
                    v205 = v209 = _uniswapV2Call;
                    0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), MEM[32 + (v187 + v11.word0.length)] >> 96, v209);
                }
                v210 = v211 = mapping_5[address(MEM[32 + (v187 + v11.word0.length)] >> 96)];
                if (!v211) {
                    v210 = v212 = 30;
                }
                v213, /* uint112 */ v214, /* uint112 */ v215, /* uint32 */ v216 = address(MEM[32 + (v187 + v11.word0.length)] >> 96).getReserves().gas(msg.gas);
                if (!v213) {
                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    v214 = v217 = 0;
                    v215 = v218 = 0;
                    if (v213) {
                        if (96 > RETURNDATASIZE()) {
                            require(!((MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                            v219 = v220 = MEM[64] + RETURNDATASIZE();
                        } else {
                            require(!((MEM[64] + 96 > uint64.max) | (MEM[64] + 96 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64] + 96;
                            v219 = v221 = MEM[64] + 96;
                        }
                        require(v219 - MEM[64] >= 96);
                        require(!0x902f1ac00000000000000000000000000000000000000000000000000000000);
                        require(!(v215 - uint112(v215)));
                        require(!(v216 - uint32(v216)));
                    }
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1) {
                        v222 = v223 = 0x5620(v205, uint112(v215), uint112(v214), v210);
                    } else {
                        v222 = v224 = 0x5620(v205, uint112(v214), uint112(v215), v210);
                    }
                    require(v222 >= MEM[v185 + 36], 43);
                    0x56b3(byte(MEM[v185 + 35], 0x0), MEM[32 + (v189 + v11.word0.length)] >> 96, MEM[32 + (v191 + v11.word0.length)] >> 96);
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 != 1) {
                        v222 = v225 = 0;
                    }
                    if ((byte(MEM[v185 + 33], 0x0)) & 0x1 == 1) {
                        v222 = v226 = 0;
                    }
                    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require((address(MEM[32 + (v187 + v11.word0.length)] >> 96)).code.size);
                    v227 = new uint256[](0);
                    MCOPY(v227.data, 32 + MEM[64], 0);
                    MEM[v227.data] = 0;
                    v228 = address(MEM[32 + (v187 + v11.word0.length)] >> 96).swap(v222, v222, address(MEM[32 + (v191 + v11.word0.length)] >> 96), v227).gas(msg.gas);
                    if (!v228) {
                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                        revert(MEM[64], RETURNDATASIZE());
                    } else {
                        if (v228) {
                            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                            MEM[64] = MEM[64];
                        }
                        0x5760(byte(MEM[v185 + 35], 0x0), MEM[32 + (v189 + v11.word0.length)] >> 96, v222, MEM[32 + (v191 + v11.word0.length)] >> 96);
                    }
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 2) {
                v12 += 57;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v229 = v230 = MEM[v185 + 68] >> 96;
                v231 = v11.data;
                require(uint8(byte(MEM[v185 + 34], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 34], v184)) | (20 == uint8(byte(MEM[v185 + 34], v184)) * 20 / uint8(byte(MEM[v185 + 34], v184))), Panic(17)); // arithmetic overflow or underflow
                v232 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 34], v184)) * 20);
                require(v232 <= v232 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v232 + 20, 40);
                v233 = v11.data;
                require(uint8(byte(MEM[v185 + 35], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 35], v184)) | (20 == uint8(byte(MEM[v185 + 35], v184)) * 20 / uint8(byte(MEM[v185 + 35], v184))), Panic(17)); // arithmetic overflow or underflow
                v234 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 35], v184)) * 20);
                require(v234 <= v234 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v234 + 20, 40);
                v235 = v11.data;
                require(uint8(byte(MEM[v185 + 88], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 88], v184)) | (20 == uint8(byte(MEM[v185 + 88], v184)) * 20 / uint8(byte(MEM[v185 + 88], v184))), Panic(17)); // arithmetic overflow or underflow
                v236 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 88], v184)) * 20);
                require(v236 <= v236 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v236 + 20, 40);
                MEM[0] = MEM[0];
                require(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), 4);
                MEM[0] = MEM[0];
                v237 = v238 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                if (v238) {
                    MEM[0] = MEM[0];
                    v237 = v239 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                }
                require(!v237, 42);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    v240 = v241 = 1 != uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3);
                    if (1 == uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                        MEM[0] = MEM[0];
                        v240 = v242 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
                    }
                    if (!v240) {
                        MEM[0] = MEM[0];
                        v240 = v243 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                    }
                    require(!v240, 41);
                    MEM[0] = MEM[0];
                    v244 = v245 = _uniswapV2Call;
                } else {
                    v244 = 0x55a0(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), this);
                }
                require(v244, 6);
                require(v244 <= int256.max, 6);
                0x56b3(byte(MEM[v185 + 35], v184), MEM[32 + (v234 + v11.word0.length)] >> 96, MEM[32 + (v236 + v11.word0.length)] >> 96);
                if (!v230) {
                    if ((byte(MEM[v185 + 33], v184)) & 0x1 == 1) {
                        v229 = v246 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                    } else {
                        v229 = v247 = 0x1000276a4;
                    }
                }
                tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 1;
                MEM[0] = MEM[0];
                owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = address(MEM[32 + (v232 + v11.word0.length)] >> 96);
                require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                v248 = new uint256[](0);
                MCOPY(v248.data, 32 + MEM[64], 0);
                MEM[v248.data] = 0;
                v249, v183, v183 = address(MEM[32 + (v232 + v11.word0.length)] >> 96).swap(address(MEM[32 + (v236 + v11.word0.length)] >> 96), bool((byte(MEM[v185 + 33], v184)) & 0x1 != 1), v244, address(v229), v248).value(v184).gas(msg.gas);
                if (!v249) {
                    RETURNDATACOPY(MEM[64], v184, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v249) {
                        v250 = v251 = 64;
                        if (64 > RETURNDATASIZE()) {
                            v250 = v252 = RETURNDATASIZE();
                        }
                        require(!((MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v250 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(MEM[64] + v250 - MEM[64] >= 64);
                    }
                    tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec = 0;
                    MEM[0] = MEM[0];
                    owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520 = 0;
                    if ((byte(MEM[v185 + 33], v184)) & 0x1 == 1) {
                        v253 = v254 = 0x231c(v183);
                    } else {
                        v253 = v255 = 0x231c(v183);
                    }
                    require(v253 >= MEM[v185 + 36], 44);
                    0x5760(byte(MEM[v185 + 35], v184), MEM[32 + (v234 + v11.word0.length)] >> 96, v253, MEM[32 + (v236 + v11.word0.length)] >> 96);
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 8) {
                require(v12 + 1 <= v12 + 38, Panic(17)); // arithmetic overflow or underflow
                require(v12 + 38 <= MEM[v11.word0.length], 40);
                v256 = v257 = byte(MEM[v185 + 34], v184);
                v258 = v259 = MEM[v185 + 35];
                v260 = _SafeAdd(v12 + 38, MEM[v185 + 68] >> 240);
                require(v260 <= MEM[v11.word0.length], 40);
                v261 = 0x47fc(v11.word0.length, v12 + 38, MEM[v185 + 68] >> 240);
                v262 = v263 = mapping_7[byte(MEM[v185 + 33], v184)];
                v264 = v265 = !v263;
                if (bool(v263)) {
                    v264 = v266 = !mapping_8[byte(MEM[v185 + 33], v184)];
                }
                require(!v264, 28);
                MEM[0] = MEM[0];
                if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)) {
                    if (0 == (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1)) {
                        v267 = v268 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 3;
                        if (v268) {
                            MEM[0] = MEM[0];
                            v267 = v269 = v263 == address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217);
                        }
                        if (!v267) {
                            require(!(2 - uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3)), 19);
                            MEM[0] = MEM[0];
                            require(tstor_4fb030ede1bc1eca1ea19d12e000703621e87e5fc3d94b3a10227431bbdba0f7, 19);
                            MEM[0] = MEM[0];
                            require(_poolManager.code.size, v184, v184);
                            v270 = _poolManager.take(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), mapping_7[byte(MEM[v185 + 33], v184)], _uniswapV2Call).value(v184).gas(msg.gas);
                            if (!v270) {
                                RETURNDATACOPY(MEM[64], v184, RETURNDATASIZE());
                                revert(MEM[64], RETURNDATASIZE());
                            } else {
                                if (v270) {
                                    require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                                    MEM[64] = MEM[64];
                                    require(!v184, v184, v184);
                                }
                                v271 = v272 = 32;
                                v273 = v11.data;
                                require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                                v274 = _SafeAdd(v11.word2, uint8(v257) * 20);
                                require(v274 <= v274 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v274 + 20, 40);
                                v275 = v276 = MEM[32 + (v274 + v11.word0.length)] >> 96;
                                v277 = v11.data;
                                require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                                require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                                v278 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                                require(v278 <= v278 + 20, Panic(17)); // arithmetic overflow or underflow
                                require(MEM[v11.word0.length] >= v278 + 20, 40);
                                v279 = v280 = MEM[32 + (v278 + v11.word0.length)] >> 96;
                                0x56b3(v257, v276, v280);
                                v281 = v282 = 0x55a0(v276, v280);
                                v283 = v284 = MEM[64];
                                MEM[v284] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                                MEM[v284 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                                MEM[v284 + 36] = _uniswapV2Call;
                                MEM[v284 + 68] = address(v276);
                                MEM[v284 + 100] = v259;
                                MEM[v284 + 132] = address(v280);
                                MEM[v284 + 164] = 192;
                                MEM[v284 + 196] = v261.length;
                                MCOPY(v284 + 196 + 32, v261.data, v261.length);
                                MEM[32 + (v261.length + (v284 + 196))] = 0;
                                v285 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v284 + 196) + 32;
                            }
                        } else {
                            v271 = 32;
                            MEM[0] = MEM[0];
                            v286 = v11.data;
                            require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                            v287 = _SafeAdd(v11.word2, uint8(v257) * 20);
                            require(v287 <= v287 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v287 + 20, 40);
                            v275 = MEM[32 + (v287 + v11.word0.length)] >> 96;
                            v288 = v11.data;
                            require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                            require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                            v289 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                            require(v289 <= v289 + 20, Panic(17)); // arithmetic overflow or underflow
                            require(MEM[v11.word0.length] >= v289 + 20, 40);
                            v279 = MEM[32 + (v289 + v11.word0.length)] >> 96;
                            0x56b3(v257, v275, v279);
                            v281 = v290 = 0x55a0(v275, v279);
                            v283 = v291 = MEM[64];
                            MEM[v291] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                            MEM[v291 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                            MEM[v291 + 36] = _uniswapV2Call;
                            MEM[v291 + 68] = address(v275);
                            MEM[v291 + 100] = v259;
                            MEM[v291 + 132] = address(v279);
                            MEM[v291 + 164] = 192;
                            MEM[v291 + 196] = v261.length;
                            MCOPY(v291 + 196 + 32, v261.data, v261.length);
                            MEM[32 + (v261.length + (v291 + 196))] = 0;
                            v285 = v292 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v291 + 196) + 32;
                        }
                    } else {
                        MEM[0] = MEM[0];
                        require(!(this - address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217)), 41);
                        MEM[0] = MEM[0];
                        v183 = v293 = _uniswapV2Call;
                        if (v293) {
                            if (address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59)) {
                                0x2be5(address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59), v263, v293);
                            } else {
                                v294 = this.balance;
                                require(v294 >= v293, 6);
                            }
                        }
                        v271 = v295 = 32;
                        v296 = v11.data;
                        require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                        v297 = _SafeAdd(v11.word2, uint8(v257) * 20);
                        require(v297 <= v297 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v297 + 20, 40);
                        v275 = v298 = MEM[32 + (v297 + v11.word0.length)] >> 96;
                        v299 = v11.data;
                        require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                        require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                        v300 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                        require(v300 <= v300 + 20, Panic(17)); // arithmetic overflow or underflow
                        require(MEM[v11.word0.length] >= v300 + 20, 40);
                        v279 = v301 = MEM[32 + (v300 + v11.word0.length)] >> 96;
                        0x56b3(v257, v298, v301);
                        v281 = v302 = 0x55a0(v298, v301);
                        v283 = v303 = MEM[64];
                        MEM[v303] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                        MEM[v303 + 4] = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59);
                        MEM[v303 + 36] = v293;
                        MEM[v303 + 68] = address(v298);
                        MEM[v303 + 100] = v259;
                        MEM[v303 + 132] = address(v301);
                        MEM[v303 + 164] = 192;
                        MEM[v303 + 196] = v261.length;
                        MCOPY(v303 + 196 + 32, v261.data, v261.length);
                        MEM[32 + (v261.length + (v303 + 196))] = 0;
                        v285 = v304 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v303 + 196) + 32;
                    }
                } else {
                    v271 = v305 = 32;
                    v306 = v11.data;
                    require(uint8(v257) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(v257) | (20 == uint8(v257) * 20 / uint8(v257)), Panic(17)); // arithmetic overflow or underflow
                    v307 = _SafeAdd(v11.word2, uint8(v257) * 20);
                    require(v307 <= v307 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v307 + 20, 40);
                    v275 = v308 = MEM[32 + (v307 + v11.word0.length)] >> 96;
                    v309 = v11.data;
                    require(uint8(byte(MEM[v185 + 67], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                    require(!uint8(byte(MEM[v185 + 67], v184)) | (20 == uint8(byte(MEM[v185 + 67], v184)) * 20 / uint8(byte(MEM[v185 + 67], v184))), Panic(17)); // arithmetic overflow or underflow
                    v310 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 67], v184)) * 20);
                    require(v310 <= v310 + 20, Panic(17)); // arithmetic overflow or underflow
                    require(MEM[v11.word0.length] >= v310 + 20, 40);
                    v279 = v311 = MEM[32 + (v310 + v11.word0.length)] >> 96;
                    0x56b3(v257, v308, v311);
                    v281 = v312 = 0x55a0(v308, v311);
                    v283 = v313 = MEM[64];
                    MEM[v313] = 0x2a16868c00000000000000000000000000000000000000000000000000000000;
                    MEM[v313 + 4] = address(v184);
                    MEM[v313 + 36] = v184;
                    MEM[v313 + 68] = address(v308);
                    MEM[v313 + 100] = v259;
                    MEM[v313 + 132] = address(v311);
                    MEM[v313 + 164] = 192;
                    MEM[v313 + 196] = v261.length;
                    MCOPY(v313 + 196 + 32, v261.data, v261.length);
                    MEM[32 + (v261.length + (v313 + 196))] = 0;
                    v285 = v314 = (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v261.length) + (v313 + 196) + 32;
                }
                v315 = v262.call(MEM[v34e9_0x5V0x29d70x7c619:v34e9_0x5V0x29d70x7c619 + v19fcV0xc01f3V0x29d70x7c619 - v34e9_0x5V0x29d70x7c619], MEM[v34e9_0x5V0x29d70x7c619:v34e9_0x5V0x29d70x7c619 + v366eV0x29d70x7c619]).value(v183).gas(msg.gas);
                if (!v315) {
                    RETURNDATACOPY(MEM[64], v183, RETURNDATASIZE());
                    revert(MEM[64], RETURNDATASIZE());
                } else {
                    if (v315) {
                        v316 = v317 = 32;
                        if (32 > RETURNDATASIZE()) {
                            v316 = v318 = RETURNDATASIZE();
                        }
                        require(!((v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v283)), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = v283 + (v316 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                        require(v283 + v316 - v283 >= 32);
                        v183 = v319 = MEM[v283];
                    }
                    if (!v183) {
                        v320 = 0x55a0(v275, v279);
                        require(v320 >= v281, 12);
                        v183 = v321 = _SafeSub(v320, v281);
                    }
                    require(v183 >= v258, 12);
                    0x5760(v256, v275, v183, v279);
                    v12 = _SafeAdd(v12 + 38, MEM[v185 + 68] >> 240);
                }
            } else if ((byte(MEM[v185 + 32], 0x0)) == 10) {
                v12 += 35;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                v322 = v11.data;
                require(uint8(byte(MEM[v185 + 33], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 33], v184)) | (20 == uint8(byte(MEM[v185 + 33], v184)) * 20 / uint8(byte(MEM[v185 + 33], v184))), Panic(17)); // arithmetic overflow or underflow
                v323 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 33], v184)) * 20);
                require(v323 <= v323 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v323 + 20, 40);
                v324 = v11.data;
                require(uint8(byte(MEM[v185 + 66], v184)) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(byte(MEM[v185 + 66], v184)) | (20 == uint8(byte(MEM[v185 + 66], v184)) * 20 / uint8(byte(MEM[v185 + 66], v184))), Panic(17)); // arithmetic overflow or underflow
                v325 = _SafeAdd(v11.word2, uint8(byte(MEM[v185 + 66], v184)) * 20);
                require(v325 <= v325 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v325 + 20, 40);
                v326 = 0x58a9(MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[v185 + 34]);
                0x56b3(byte(MEM[v185 + 33], v184), MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[32 + (v325 + v11.word0.length)] >> 96);
                0x2be5(MEM[32 + (v323 + v11.word0.length)] >> 96, MEM[32 + (v325 + v11.word0.length)] >> 96, v326);
                0x5760(byte(MEM[v185 + 33], v184), MEM[32 + (v323 + v11.word0.length)] >> 96, v326, MEM[32 + (v325 + v11.word0.length)] >> 96);
            } else {
                require(11 == (byte(MEM[v185 + 32], 0x0)), 39);
                v12 += 35;
                require(v12 >= v12 + 1, Panic(17)); // arithmetic overflow or underflow
                require(v12 <= MEM[v11.word0.length], 40);
                0x4e5e(v11, (byte(MEM[v185 + 33], v184)) & 0x1 == 1, MEM[v185 + 34], byte(MEM[v185 + 66], v184));
            }
        } else {
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 1, 40);
            require(v12 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(!(uint8(MEM[32 + (v12 + v11.word0.length)] >> 248) - 3), 19);
            require(v12 <= v12 + 1, Panic(17)); // arithmetic overflow or underflow
            v327 = 0x24a8();
            v328 = 0x24a8();
            require(v12 + 1 <= v12 + 1 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 1 + 1, 40);
            require(v12 + 1 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word0 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 & 0x1 == 1;
            v328.word1 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 & 0x2 == 2;
            v328.word2 = MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 >> 2 & 0x3;
            require(MEM[32 + (v12 + 1 + v11.word0.length)] >> 248 >> 2 & 0x3 <= 2, 19);
            require(v12 + 1 <= v12 + 2, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 2 <= v12 + 2 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 2 + 1, 40);
            require(v12 + 2 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word3 = uint8(MEM[32 + (v12 + 2 + v11.word0.length)] >> 248);
            require(v12 + 2 <= v12 + 3, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 3 <= v12 + 3 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 3 + 1, 40);
            require(v12 + 3 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word4 = uint8(MEM[32 + (v12 + 3 + v11.word0.length)] >> 248);
            require(v12 + 3 <= v12 + 4, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 4 <= v12 + 4 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 4 + 1, 40);
            require(v12 + 4 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word5 = uint8(MEM[32 + (v12 + 4 + v11.word0.length)] >> 248);
            require(v12 + 4 <= v12 + 5, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 5 <= v12 + 5 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 5 + 3, 40);
            v328.word6 = uint24(MEM[32 + (v12 + 5 + v11.word0.length)] >> 232);
            require(v12 + 5 <= v12 + 8, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 8 <= v12 + 8 + 3, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 8 + 3, 40);
            if (!(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232 & 0x800000)) {
                v329 = v330 = int24(uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232));
            } else {
                require(!(0x1 & (uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000 > uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232))), Panic(17)); // arithmetic overflow or underflow
                v329 = int24(uint24(MEM[32 + (v12 + 8 + v11.word0.length)] >> 232) + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000);
            }
            v328.word7 = int24(v329);
            require(v12 + 8 <= v12 + 11, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 11 <= v12 + 11 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 11 + 1, 40);
            require(v12 + 11 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word8 = uint8(MEM[32 + (v12 + 11 + v11.word0.length)] >> 248);
            require(v12 + 11 <= v12 + 12, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 12 <= v12 + 12 + 32, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 12 + 32, 40);
            v328.word9 = MEM[32 + (v12 + 12 + v11.word0.length)];
            require(v12 + 12 <= v12 + 44, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 44 <= v12 + 44 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 44 + 20, 40);
            v328.word10 = address(MEM[32 + (v12 + 44 + v11.word0.length)] >> 96);
            require(v12 + 64 >= v12 + 44, Panic(17)); // arithmetic overflow or underflow
            require(v12 + 64 <= v12 + 64 + 1, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v12 + 64 + 1, 40);
            require(v12 + 64 < MEM[v11.word0.length], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v328.word11 = uint8(MEM[32 + (v12 + 64 + v11.word0.length)] >> 248);
            v12 = v12 + 65;
            require(v12 + 64 <= v12, Panic(17)); // arithmetic overflow or underflow
            v331 = v11.data;
            require(uint8(v328.word3) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word3) | (20 == uint8(v328.word3) * 20 / uint8(v328.word3)), Panic(17)); // arithmetic overflow or underflow
            v332 = _SafeAdd(v11.word2, uint8(v328.word3) * 20);
            require(v332 <= v332 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v332 + 20, 40);
            v333 = v334 = MEM[32 + (v332 + v11.word0.length)] >> 96;
            v335 = v11.data;
            require(uint8(v328.word4) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word4) | (20 == uint8(v328.word4) * 20 / uint8(v328.word4)), Panic(17)); // arithmetic overflow or underflow
            v336 = _SafeAdd(v11.word2, uint8(v328.word4) * 20);
            require(v336 <= v336 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v336 + 20, 40);
            v333 = MEM[32 + (v336 + v11.word0.length)] >> 96;
            v337 = v11.data;
            require(uint8(v328.word5) < uint8(MEM[v11.word1 + 64]), 36);
            require(!uint8(v328.word5) | (20 == uint8(v328.word5) * 20 / uint8(v328.word5)), Panic(17)); // arithmetic overflow or underflow
            v338 = _SafeAdd(v11.word2, uint8(v328.word5) * 20);
            require(v338 <= v338 + 20, Panic(17)); // arithmetic overflow or underflow
            require(MEM[v11.word0.length] >= v338 + 20, 40);
            if (uint8(v328.word8) - uint8.max) {
                v339 = v11.data;
                require(uint8(v328.word8) < uint8(MEM[v11.word1 + 64]), 36);
                require(!uint8(v328.word8) | (20 == uint8(v328.word8) * 20 / uint8(v328.word8)), Panic(17)); // arithmetic overflow or underflow
                v340 = _SafeAdd(v11.word2, uint8(v328.word8) * 20);
                require(v340 <= v340 + 20, Panic(17)); // arithmetic overflow or underflow
                require(MEM[v11.word0.length] >= v340 + 20, 40);
                v341 = MEM[32 + (v340 + v11.word0.length)] >> 96;
            } else {
                v341 = v342 = 0;
            }
            if (v328.word0) {
            }
            if (!bool(!v328.word0)) {
            }
            require(!(address(MEM[32 + (v338 + v11.word0.length)] >> 96) - address(v333)), 4);
            if (0 == bool(v328.word0)) {
                v343 = v344 = uint8(v328.word3);
            } else {
                v343 = uint8(v328.word4);
            }
            v345 = v12 >= v14;
            if (v345) {
                MEM[0] = MEM[0];
                v346 = bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd);
                if (v346) {
                    MEM[0] = MEM[0];
                    v346 = v347 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 == 3;
                }
                v345 = v348 = !v346;
            }
            0x505c(v333, v343, bool(v328.word1));
            v349 = new struct(5);
            require(!((v349 + 160 > uint64.max) | (v349 + 160 < v349)), Panic(65)); // failed memory allocation (too much memory)
            v349.word0 = address(v334);
            v349.word1 = address(v333);
            v349.word2 = uint24(v328.word6);
            v349.word3 = int24(v328.word7);
            v349.word4 = address(v341);
            MEM[0] = MEM[0];
            v350 = 0x231c(_uniswapV2Call);
            v351 = address(v328.word10);
            if (!v351) {
                if (bool(v328.word0)) {
                    v351 = v352 = 0xfffd8963efd1fc6a506488495d951d5263988d25;
                } else {
                    v351 = v353 = 0x1000276a4;
                }
            }
            v354 = new struct(3);
            require(!((v354 + 96 > uint64.max) | (v354 + 96 < v354)), Panic(65)); // failed memory allocation (too much memory)
            v354.word0 = !v328.word0;
            v354.word1 = v350;
            v354.word2 = address(v351);
            v355 = 32;
            require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            v356 = new uint256[](0);
            MCOPY(v356.data, 32 + MEM[64], 0);
            MEM[v356.data] = 0;
            v357, v358 = _poolManager.swap(address(v349.word0), address(v349.word1), uint24(v349.word2), int24(v349.word3), address(v349.word4), bool(v354.word0), v354.word1, address(v354.word2), v356).gas(msg.gas);
            if (!v357) {
                RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else {
                v358 = 0;
                if (v357) {
                    if (v355 > RETURNDATASIZE()) {
                        v355 = v359 = RETURNDATASIZE();
                    }
                    require(!((MEM[64] + (v355 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v355 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                    require(MEM[64] + v355 - MEM[64] >= v355);
                }
                if (bool(v328.word0)) {
                    v360 = v361 = v358 >> 128;
                } else {
                    v360 = int128(v358);
                }
                require(int128(v360) > 0, 45);
                require(uint128(v360) >= v328.word9, 46);
                0x521d(v11, v328, MEM[32 + (v338 + v11.word0.length)] >> 96, uint128(v360), v345);
            }
        }
        require(v12 <= v14, 37);
    }
    v362 = uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) != 1;
    if (uint8(tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3) == 1) {
        MEM[0] = MEM[0];
        v362 = v363 = address(tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217) != this;
    }
    if (!v362) {
        MEM[0] = MEM[0];
        v362 = v364 = address(owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59) != address(v4);
    }
    require(!v362, 22);
    v365 = _uniswapV2Call < v29;
    if (_uniswapV2Call >= v29) {
        v366 = _SafeSub(_uniswapV2Call, v29);
        v365 = v367 = v366 < tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41;
    }
    require(!v365, 22);
    0x2be5(v4, msg.sender, v29);
    v368 = _SafeSub(_uniswapV2Call, v29);
    owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v4);
    _uniswapV2Call = v368;
    tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
    MEM[0] = MEM[0];
    tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function 0x83f8307f(address varg0, uint256 varg1, bool varg2) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(!(bytes4(varg1) - varg1));
    require(!(msg.sender - _owner), 1);
}

function 0x7b277443() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return stor_3_0_19;
}

function setWhitelist(address target, bool state) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - _owner), 1);
    require(target, 7);
    _execute[target] = state;
}

function 0x4a0117a1(address varg0, uint256 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - _owner), 1);
    0x247c(varg0, varg1);
}

function 0x4575d09b(address varg0, uint24 varg1) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(!(msg.sender - _owner), 1);
    require(varg0, 7);
    mapping_5[varg0] = varg1;
    return ;
}

function weth() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _weth;
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    v0 = data.length;
    require(v0 <= uint64.max);
    v0 = v1 = data.data;
    require(4 + data + v0 + 32 <= msg.data.length);
    v2 = v3 = !_algebraSwapCallback;
    if (bool(_algebraSwapCallback)) {
        MEM[0] = MEM[0];
        v2 = v4 = !tstor_4434db9e7e42e33cabbdcc309141b6d63810f4dd5acf044e20c25b70b86a61ec;
    }
    if (!v2) {
        MEM[0] = MEM[0];
        v2 = v5 = address(owner_bcb5946b247365fa4015494bfb08fa2c4c816055391b96dc6a38b5766af14520) != msg.sender;
    }
    require(!v2, 5);
    v6 = v7 = MEM[64];
    v8 = msg.sender.token0().gas(msg.gas);
    require(v8, MEM[64], RETURNDATASIZE());
    v0 = v9 = 0;
    if (v8) {
        v10 = v11 = 4510;
        if (32 <= RETURNDATASIZE()) {
            require(!((v7 + 32 > uint64.max) | (v7 + 32 < v7)), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = v7 + 32;
            v12 = v13 = v7 + 32;
        }
    }
    v6 = v14 = MEM[64];
    v15 = msg.sender.token1().gas(msg.gas);
    if (!v15) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v16 = 0;
        if (v15) {
            v10 = v17 = 4478;
            if (32 <= RETURNDATASIZE()) {
                require(!((v14 + 32 > uint64.max) | (v14 + 32 < v14)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v14 + 32;
                v12 = v18 = v14 + 32;
            }
        }
    }
    v6 = v19 = MEM[64];
    v20 = msg.sender.factory().gas(msg.gas);
    if (!v20) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v21 = 0;
        if (v20) {
            v10 = v22 = 4447;
            if (32 <= RETURNDATASIZE()) {
                require(!((v19 + 32 > uint64.max) | (v19 + 32 < v19)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v19 + 32;
                v12 = v23 = v19 + 32;
            }
        }
    }
    v24 = v25 = !address(v0);
    if (bool(address(v0))) {
        v24 = v26 = !address(v0);
    }
    if (!v24) {
        v24 = v27 = !address(v0);
    }
    require(!v24, 5);
    v6 = v28 = MEM[64];
    v29 = address(v0).poolByPair(address(v0), address(v0)).gas(msg.gas);
    if (!v29) {
        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());
        revert(MEM[64], RETURNDATASIZE());
    } else {
        v0 = v30 = 0;
        if (v29) {
            v10 = v31 = 4382;
            if (32 <= RETURNDATASIZE()) {
                require(!((v28 + 32 > uint64.max) | (v28 + 32 < v28)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v28 + 32;
                v12 = v32 = v28 + 32;
            }
        }
    }
    require(!(address(v0) - msg.sender), 5);
    v33 = v34 = v0 > 0;
    if (v34) {
        v33 = v35 = v0 > 0;
    }
    require(!v33, 6);
    v36 = v0 <= 0;
    if (v36) {
        v36 = v37 = v0 <= 0;
    }
    require(!v36, 6);
    if (!v0) {
        if (v34) {
            0x2be5(v0, msg.sender, v0);
        } else {
            0x2be5(v0, msg.sender, v0);
        }
    } else {
        v38 = v39 = !tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd;
        if (bool(tstor_7251e0d53b836fca1c7e1e56f0f9333bb8c993b28f02fe2f9f9ef8c100a8dabd)) {
            MEM[0] = MEM[0];
            v38 = v40 = tstor_8bf38e67c39ed97b0dd9d2a1e5228ba49cc7c8210ac162e2f6ea386bdc95d3cd_0_0 != 2;
        }
        if (!v38) {
            MEM[0] = MEM[0];
            v38 = v41 = address(owner_f8ab87a7f1ba249e8638bd7f24d9f91043e1ab50c39ac8e69747b008b1c9c809) != msg.sender;
        }
        require(!v38, 10);
        require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v42 = new bytes[](v0);
        require(!((v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v0) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
        require(v0 + v0 <= msg.data.length);
        CALLDATACOPY(v42.data, v0, v0);
        v42[v0] = 0;
        v43 = 0x1b78(v42);
        v44 = v45 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 < v43.word4;
        if (tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= v43.word4) {
            v44 = v46 = tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f > v43.word5;
        }
        if (!v44) {
            v44 = v47 = tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0 >= tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f;
        }
        require(!v44, 19);
        if (v0 <= 0) {
            require(v0 < 0, 6);
            v48 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v0);
            _uniswapV2Call = v48;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v49 = 0x2511(v43, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v0, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        } else {
            require(v0 < 0, 6);
            v50 = 0x231c(v0);
            owner_3a72e02d9bb4228ddf2b6dc01320f3421039bf216d96d4b0fbb5245789fa9d59 = address(v0);
            _uniswapV2Call = v50;
            tstor_4aaf64a31723d1fd2535b5cf2dedf4285fe82360c8b8e26c4d4e157d68ead7e3 = 1;
            MEM[0] = MEM[0];
            tstor_239912b98ed6bd666427dd13863be6e7874d55b2f3df09a90e4231e5badae217 = address(this);
            v51 = 0x2511(v43, tstor_c8c19902c67ee82928277f95a808d70986029d0565e2626ee18be6f9545308b0, tstor_d693feaf43c946cf19f1c9e903e3c0701e7c65240f42abae1307dab70f71625f);
            0x3127(v0, v0, tstor_2dfef00862fa6675cd299108cc088a2aceca562718f2bb05b83a2153e876ce41, msg.sender);
        }
    }
    exit;
    require(!((v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v6 + (RETURNDATASIZE() + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    v12 = v6 + RETURNDATASIZE();
    require(v12 - v6 >= 32);
    v0 = v52 = MEM[v6];
    require(!(v52 - address(v52)));
    // Unknown jump to Block ['0x111e', '0x115f', '0x117e', '0x119e']. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x10ea. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x108d. Refer to 3-address code (TAC);
    // Unknown jump to Block 0x1068. Refer to 3-address code (TAC);
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x9c5eabe == function_selector >> 224) {
            execute(bytes);
        } else if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x2c8958f6 == function_selector >> 224) {
            algebraSwapCallback(int256,int256,bytes);
        } else if (0x3fc8cef3 == function_selector >> 224) {
            weth();
        } else if (0x4575d09b == function_selector >> 224) {
            0x4575d09b();
        } else if (0x4a0117a1 == function_selector >> 224) {
            0x4a0117a1();
        } else if (0x53d6fd59 == function_selector >> 224) {
            setWhitelist(address,bool);
        } else if (0x7b277443 == function_selector >> 224) {
            0x7b277443();
        } else if (0x83f8307f == function_selector >> 224) {
            0x83f8307f();
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x8da5cb5b == function_selector >> 224) {
            owner();
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x92d3b663 == function_selector >> 224) {
            0x92d3b663();
        } else if (0xc9295a82 == function_selector >> 224) {
            0xc9295a82();
        } else if (0xd9caed12 == function_selector >> 224) {
            withdraw(address,address,uint256);
        } else if (0xdc4c90d3 == function_selector >> 224) {
            poolManager();
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (!(0xfd3330c7 - (function_selector >> 224))) {
            0xfd3330c7();
        }
    }
    require(!msg.data.length);
    receive();
}
