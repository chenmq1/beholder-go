// Decompiled by library.dedaub.com
// 2025.12.09 21:58 UTC
// Compiled using the solidity compiler version 0.8.28


// Data structures and variables inferred from the use of storage instructions
mapping (uint256 => struct_830) _getRoleAdmin; // STORAGE[0x0]
uint256 _pendingDefaultAdmin; // STORAGE[0x1]
uint256 stor_4; // STORAGE[0x4]
bytes32 _uniswapV3SwapCallback; // STORAGE[0x6]
bool _paused; // STORAGE[0x3] bytes 0 to 0
uint64 _swap; // STORAGE[0x5] bytes 0 to 7
address _owner; // STORAGE[0x2] bytes 0 to 19
uint48 stor_2_20_25; // STORAGE[0x2] bytes 20 to 25
uint48 _pendingDefaultAdminDelay; // STORAGE[0x2] bytes 26 to 31
mapping (address => bool) mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5; // STORAGE[0xad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5]
mapping (address => bool) _pause; // STORAGE[0xee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f319f]
uint256 stor_ee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0; // STORAGE[0xee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0]

struct struct_830 { mapping (address => bool) field0; uint256 field1; };

// Events
DefaultAdminTransferCanceled();
OperatorRemoved(address, address);
Paused(address);
DefaultAdminDelayChangeCanceled();
DefaultAdminTransferScheduled(address, uint48);
Unpaused(address);
RoleGranted(bytes32, address, address);
RoleRevoked(bytes32, address, address);

function 0x1556(uint256 varg0, uint256 varg1, uint256 varg2, address varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8, uint256 varg9, uint256 varg10, uint256 varg11) private { 
    v0 = MEM[v1];
    MEM[v0 + 32] = varg3;
    MEM[v0 + 32 + 32] = varg0;
    // Unknown jump to Block ['0xd41d', '0xd448']. Refer to 3-address code (TAC);
    v2 = v3 = v0 + 32 + 64 - v0;
    MEM[v0] = v3 + varg5;
    require(!((v0 + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)
    MEM[64] = v0 + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
    return v0, v0 + 32, varg4, varg5, varg6, varg7, varg8, varg9, varg10, varg11;
    v2 = v4 = v0 + 32 + 64 - v0;
    MEM[v0] = v4 + varg5;
    // Unknown jump to Block 0x23b40x1556. Refer to 3-address code (TAC);
}

function OPERATOR_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929;
}

function unpause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    require(_paused, ExpectedPause());
    _paused = 0;
    emit Unpaused(msg.sender);
}

function renounceRole(bytes32 varg0) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(varg0 - address(varg0), Error('KuhubCommon: renounceRole is disabled'));
    revert();
}

function grantRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(role, AccessControlEnforcedDefaultAdminRules());
    require(_getRoleAdmin[_getRoleAdmin[role].field1].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, _getRoleAdmin[role].field1));
    if (!role) {
        require(!_owner, AccessControlEnforcedDefaultAdminRules());
        _owner = account;
    }
    v0 = 0x2b4f(role, account);
}

function cancelDefaultAdminTransfer() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    v0 = _pendingDefaultAdmin;
    _pendingDefaultAdmin = bytes6(v0);
    if (uint48(v0 >> 160)) {
        emit DefaultAdminTransferCanceled();
        return ;
    } else {
        return ;
    }
}

function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(!(data.word1 - address(data.word1)));
    require(!(data.word2 - _uniswapV3SwapCallback));
    require(data.word2);
    _uniswapV3SwapCallback = 0;
    if (0 != amount0Delta > 0) {
    }
    require(v1 > 0, NotPositiveAmount());
    0x2776(address(data.word1), msg.sender, v1);
}

function grantOperatorRole(address _candidate) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    require(_candidate, InvalidZeroAddress());
    require(!_pause[_candidate], Error('Operator already exists'));
    MEM[0] = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929;
    MEM[32] = 0;
    require(_getRoleAdmin[stor_ee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, stor_ee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0));
    v0 = 0x2b4f(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, _candidate);
    emit 0x780dc183feb0e4f9714cd802b3c0a21894b7ccb4172c992569d2acb5d45f91c(_candidate, msg.sender);
}

function getRoleAdmin(bytes32 role) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _getRoleAdmin[role].field1;
}

function rollbackDefaultAdminDelay() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    if (_pendingDefaultAdminDelay) {
        if (block.timestamp <= _pendingDefaultAdminDelay) {
            emit DefaultAdminDelayChangeCanceled();
        } else {
            _pendingDefaultAdmin = uint208(_pendingDefaultAdmin) | stor_2_20_25;
        }
    }
    stor_2_20_25 = 0;
    _pendingDefaultAdminDelay = 0;
}

function defaultAdminDelayIncreaseWait() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0x69780;
}

function supportsInterface(bytes4 interfaceId) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    v0 = v1 = interfaceId == 0x3149878600000000000000000000000000000000000000000000000000000000;
    if (interfaceId != 0x3149878600000000000000000000000000000000000000000000000000000000) {
        v0 = v2 = interfaceId == 0x7965db0b00000000000000000000000000000000000000000000000000000000;
        if (interfaceId != 0x7965db0b00000000000000000000000000000000000000000000000000000000) {
            v0 = v3 = interfaceId == 0x1ffc9a700000000000000000000000000000000000000000000000000000000;
        }
    }
    return bool(v0);
}

function 0x2421() private { 
    v0 = v1 = bool(_pendingDefaultAdminDelay);
    if (v1) {
        v0 = v2 = block.timestamp > _pendingDefaultAdminDelay;
    }
    if (!v0) {
        return _pendingDefaultAdmin >> 208;
    } else {
        return stor_2_20_25;
    }
}

function 0x2694() private { 
    require(stor_4 != 2, ReentrancyGuardReentrantCall());
    stor_4 = 2;
    return ;
}

function 0x2776(uint256 varg0, address varg1, uint256 varg2) private { 
    require(address(varg0), InvalidAddress());
    require(varg2, InvalidAmount(varg2));
    v0 = new bytes[](68);
    MEM[v0.data] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000;
    MEM[v0 + 36] = varg1;
    MEM[v0 + 68] = varg2;
    require(!((v0 + 128 > uint64.max) | (v0 + 128 < v0)), Panic(65)); // failed memory allocation (too much memory)
    v1 = v0.length;
    v2, /* uint256 */ v3 = varg0.transfer(varg1, varg2).gas(msg.gas);
    if (!RETURNDATASIZE()) {
        v4 = v5 = 96;
    } else {
        require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
        v4 = v6 = new bytes[](RETURNDATASIZE());
        require(!((v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v6 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v6)), Panic(65)); // failed memory allocation (too much memory)
        v3 = v6.data;
        RETURNDATACOPY(v3, 0, RETURNDATASIZE());
    }
    v7 = v8 = !v2;
    if (bool(v2)) {
        v7 = v9 = bool(MEM[v4]);
        if (v9) {
            require(v4 + MEM[v4] + 32 - (v4 + 32) >= 32);
            require(!(MEM[v4 + 32] - bool(MEM[v4 + 32])));
            v7 = v10 = !MEM[v4 + 32];
        }
    }
    require(!v7, TransferFailed(address(varg0), this, varg1, varg2));
    return ;
}

function revokeRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(role, AccessControlEnforcedDefaultAdminRules());
    require(_getRoleAdmin[_getRoleAdmin[role].field1].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, _getRoleAdmin[role].field1));
    v0 = v1 = !role;
    if (v1) {
        v0 = v2 = account == _owner;
    }
    if (v0) {
        _owner = 0;
    }
    if (0 != _getRoleAdmin[role].field0[account]) {
        _getRoleAdmin[role].field0[account] = 0;
        emit RoleRevoked(role, account, msg.sender);
    }
    return ;
}

function 0x28d4(uint48 varg0, uint48 varg1) private { 
    require(varg0 + varg1 <= uint48.max, Panic(17)); // arithmetic overflow or underflow
    return varg0 + varg1;
}

function 0x291f(uint256 varg0) private { 
    require(!_owner, AccessControlEnforcedDefaultAdminRules());
    _owner = varg0;
    v0 = 0x2b4f(0, varg0);
    return v0;
}

function 0x29fa(uint256 varg0) private { 
    require(varg0 <= uint48.max, SafeCastOverflowedUintDowncast(48, varg0));
    return uint48(varg0);
}

function 0x2a6c(address varg0) private { 
    if (varg0 == _owner) {
        _owner = 0;
    }
    if (0 == _getRoleAdmin[0].field0[varg0]) {
        v0 = 0;
    } else {
        _getRoleAdmin[0].field0[varg0] = 0;
        emit RoleRevoked(0, varg0, msg.sender);
        v0 = v1 = 1;
    }
    return v0;
}

function 0x2b4f(uint256 varg0, address varg1) private { 
    if (0 == !_getRoleAdmin[varg0].field0[varg1]) {
        return 0;
    } else {
        _getRoleAdmin[varg0].field0[varg1] = 1;
        emit RoleGranted(varg0, varg1, msg.sender);
        return 1;
    }
}

function pendingDefaultAdmin() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(_pendingDefaultAdmin), uint48(_pendingDefaultAdmin >> 160);
}

function acceptDefaultAdminTransfer() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(!(msg.sender - address(_pendingDefaultAdmin)), AccessControlInvalidDefaultAdmin(msg.sender));
    v0 = v1 = !uint48(_pendingDefaultAdmin >> 160);
    if (bool(uint48(_pendingDefaultAdmin >> 160))) {
        v0 = v2 = uint48(_pendingDefaultAdmin >> 160) >= block.timestamp;
    }
    require(!v0, AccessControlEnforcedDefaultAdminDelay(uint48(_pendingDefaultAdmin >> 160)));
    v3 = 0x2a6c(_owner);
    v4 = 0x291f(address(_pendingDefaultAdmin));
    _pendingDefaultAdmin = bytes6(_pendingDefaultAdmin);
    return ;
}

function defaultAdminDelay() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = 0x2421();
    return uint48(v0);
}

function revokeOperatorRole(address _candidate) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    require(_candidate, InvalidZeroAddress());
    require(_getRoleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field0[_candidate], Error('Operator does not exist'));
    MEM[0] = 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929;
    MEM[32] = 0;
    require(_getRoleAdmin[stor_ee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0].field0[msg.sender], AccessControlUnauthorizedAccount(msg.sender, stor_ee57cd81e84075558e8fcc182a1f4393f91fc97f963a136e66b7f949a62f31a0));
    if (0 != _getRoleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field0[_candidate]) {
        _getRoleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field0[_candidate] = 0;
        emit RoleRevoked(0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929, _candidate, msg.sender);
    }
    emit OperatorRemoved(_candidate, msg.sender);
    return ;
}

function DEFAULT_ADMIN_ROLE() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return 0;
}

function pendingDefaultAdminDelay() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    v0 = v1 = _pendingDefaultAdminDelay;
    v2 = v3 = bool(v1);
    if (v3) {
        v2 = v4 = v1 >= block.timestamp;
    }
    if (v2) {
        v0 = v5 = stor_2_20_25;
    }
    return uint48(v0), uint48(v0);
}

function hasRole(bytes32 role, address account) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    return _getRoleAdmin[role].field0[account];
}

function owner() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _owner;
}

function pause() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    require(_pause[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929));
    require(!_paused, EnforcedPause());
    _paused = 1;
    emit Paused(msg.sender);
    return ;
}

function isOperator(address account) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _getRoleAdmin[0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929].field0[account];
}

function changeDefaultAdminDelay(uint48 newDelay) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    v0 = 0x2421();
    if (newDelay <= uint48(v0)) {
        require(uint48(v0) - newDelay <= uint48.max, Panic(17)); // arithmetic overflow or underflow
        v1 = v2 = 0xf1038c18cf84a56e432fdbfaf746924b7ea511dfe03a6506a0ceba4888788d9b;
        v3 = v4 = 0x28d4(uint48(block.timestamp), uint48(v0) - newDelay);
    } else {
        v1 = v5 = 0xf1038c18cf84a56e432fdbfaf746924b7ea511dfe03a6506a0ceba4888788d9b;
        v3 = v6 = 0x28d4(uint48(block.timestamp), uint48(0x69780 ^ (newDelay ^ 0x69780) * (newDelay < 0x69780)));
    }
    if (_pendingDefaultAdminDelay) {
        if (block.timestamp <= _pendingDefaultAdminDelay) {
            emit DefaultAdminDelayChangeCanceled();
        } else {
            _pendingDefaultAdmin = uint208(_pendingDefaultAdmin) | stor_2_20_25;
        }
    }
    stor_2_20_25 = newDelay;
    _pendingDefaultAdminDelay = v3;
    emit v1(newDelay, uint48(v3));
    return ;
}

function beginDefaultAdminTransfer(address newAdmin) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(mapping_ad3228b676f7d3cd4284a5443f17f1962b36e491b30a40b2405849e597ba5fb5[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0));
    v0 = 0x2421();
    v1 = 0x28d4(uint48(block.timestamp), v0);
    v2 = _pendingDefaultAdmin;
    _pendingDefaultAdmin = bytes6(_pendingDefaultAdmin) | newAdmin | v1 << 160 & 0xffffffffffff0000000000000000000000000000000000000000;
    if (uint48(v2 >> 160)) {
        emit DefaultAdminTransferCanceled();
    }
    emit DefaultAdminTransferScheduled(newAdmin, uint48(v1));
    return ;
}

function paused() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return _paused;
}

function rescueTokens(address _token, address _to) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(_pause[msg.sender], AccessControlUnauthorizedAccount(msg.sender, 0x97667070c54ef182b0f5858b034beac1b6f3089aa2d3188bb1e8929f4fa9b929));
    require(_to, InvalidZeroAddress());
    0x2694();
    v0, /* uint256 */ v1 = 0x655ec9fbe3da82deb414b89fb3ec71562d30e87c.getContractBalance(_token).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        v2 = v3 = 32;
        if (32 > RETURNDATASIZE()) {
            v2 = v4 = RETURNDATASIZE();
        }
        require(!((MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v2 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        require(MEM[64] + v2 - MEM[64] >= 32);
    }
    if (_token) {
        0x2776(_token, _to, v1);
    } else {
        require(v1, InvalidAmount(v1));
        require(this.balance >= v1, v1, this.balance);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        v5, /* uint256 */ v6 = _to.call().value(v1).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v7 = v8 = new bytes[](RETURNDATASIZE());
            require(!((v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v8 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v8)), Panic(65)); // failed memory allocation (too much memory)
            v6 = v8.data;
            RETURNDATACOPY(v6, 0, RETURNDATASIZE());
        }
        require(v5, ETHTransferFailed(_to, v1));
    }
    emit 0xfe9f3209ad63169cacd501429b3ca17fa51a44a9828be89c2ae50eb6846d2711(_token, msg.sender, _to, v1);
    stor_4 = 1;
    return ;
}

function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(!(data.word1 - address(data.word1)));
    require(!(data.word2 - _uniswapV3SwapCallback));
    require(data.word2);
    _uniswapV3SwapCallback = 0;
    if (0 != amount0Delta > 0) {
    }
    require(v1 > 0, NotPositiveAmount());
    0x2776(address(data.word1), msg.sender, v1);
    return ;
}

function receive() public payable { 
}

function swap(address tokenA, address tokenB, uint256 amountA, bytes payload) public payable { 
    require(msg.data.length - 4 >= 128);
    require(payload <= uint64.max);
    require(4 + payload + 31 < msg.data.length);
    require(msg.data[4 + payload] <= uint64.max);
    require(v0.data <= msg.data.length);
    0x2694();
    require(!_paused, EnforcedPause());
    require(amountA, InvalidAmount(amountA));
    require(msg.data[4 + payload], InvalidPayload());
    require(4 + payload + 32 + msg.data[4 + payload] - (4 + payload + 32) >= 32);
    require(payload.word1 <= uint64.max);
    require(4 + payload + 32 + msg.data[4 + payload] - (4 + payload + 32 + payload.word1) >= 96);
    v1 = new struct(3);
    require(!((v1 + 96 > uint64.max) | (v1 + 96 < v1)), Panic(65)); // failed memory allocation (too much memory)
    require(!(msg.data[4 + payload + 32 + payload.word1] - address(msg.data[4 + payload + 32 + payload.word1])));
    v1.word0 = msg.data[4 + payload + 32 + payload.word1];
    require(!(msg.data[4 + payload + 32 + payload.word1 + 32] - address(msg.data[4 + payload + 32 + payload.word1 + 32])));
    v1.word1 = msg.data[4 + payload + 32 + payload.word1 + 32];
    require(msg.data[4 + payload + 32 + payload.word1 + 64] <= uint64.max);
    require(4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64] + 31 < 4 + payload + 32 + msg.data[4 + payload]);
    require(msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]] <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v2 = new uint256[](msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]]);
    require(!((v2 + ((msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v2 + ((msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]] << 5) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v2)), Panic(65)); // failed memory allocation (too much memory)
    v3 = v4 = v2.data;
    require(4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64] + (msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]] << 5) + 32 <= 4 + payload + 32 + msg.data[4 + payload]);
    v5 = v6 = 32 + (4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]);
    while (v5 < 4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64] + (msg.data[4 + payload + 32 + payload.word1 + msg.data[4 + payload + 32 + payload.word1 + 64]] << 5) + 32) {
        require(!(msg.data[v5] - uint168(msg.data[v5])));
        MEM[v3] = msg.data[v5];
        v5 += 32;
        v3 += 32;
    }
    v1.word2 = v2;
    require(v2.length);
    require(v7.length <= 3, v7.length, 3);
    require(address(v1.word1), InvalidRecipient());
    if (0 == !tokenA) {
        require(!msg.value, ETHNotAccepted());
        v8, v9 = 0x655ec9fbe3da82deb414b89fb3ec71562d30e87c.delegatecall(0x636f01ab00000000000000000000000000000000000000000000000000000000, tokenA, this).gas(msg.gas);
        require(v8, MEM[64], RETURNDATASIZE());
        v9 = v10 = 0;
        if (v8) {
            v11 = v12 = 32;
            if (32 > RETURNDATASIZE()) {
                v11 = v13 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v11 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v11 - MEM[64] >= 32);
        }
        v14 = v15 = !msg.sender;
        if (bool(msg.sender)) {
            v14 = v16 = !this;
        }
        require(!v14, InvalidAddress());
        v17 = new bytes[](100);
        MEM[v17.data] = 0x23b872dd00000000000000000000000000000000000000000000000000000000;
        MEM[v17 + 36] = msg.sender;
        MEM[v17 + 68] = this;
        MEM[v17 + 100] = amountA;
        require(!((v17 + 160 > uint64.max) | (v17 + 160 < v17)), Panic(65)); // failed memory allocation (too much memory)
        v18 = v17.length;
        v19, /* uint256 */ v20 = tokenA.transferFrom(msg.sender, this, amountA).gas(msg.gas);
        if (!RETURNDATASIZE()) {
            v21 = v22 = 96;
        } else {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v21 = v23 = new bytes[](RETURNDATASIZE());
            require(!((v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v23 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v23)), Panic(65)); // failed memory allocation (too much memory)
            v20 = v23.data;
            RETURNDATACOPY(v20, 0, RETURNDATASIZE());
        }
        v24 = v25 = !v19;
        if (bool(v19)) {
            v24 = v26 = bool(MEM[v21]);
            if (v26) {
                require(v21 + MEM[v21] + 32 - (v21 + 32) >= 32);
                require(!(MEM[v21 + 32] - bool(MEM[v21 + 32])));
                v24 = v27 = !MEM[v21 + 32];
            }
        }
        require(!v24, TransferFromFailed(tokenA, msg.sender, this, amountA));
        v28, v29 = 0x655ec9fbe3da82deb414b89fb3ec71562d30e87c.delegatecall(0x636f01ab00000000000000000000000000000000000000000000000000000000, tokenA, this).gas(msg.gas);
        require(v28, MEM[64], RETURNDATASIZE());
        v29 = v30 = 0;
        if (v28) {
            v31 = v32 = 32;
            if (32 > RETURNDATASIZE()) {
                v31 = v33 = RETURNDATASIZE();
            }
            require(!((MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v31 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            require(MEM[64] + v31 - MEM[64] >= 32);
        }
        v34 = v35 = v29 - v9;
        require(v35 <= v29, Panic(17)); // arithmetic overflow or underflow
    } else {
        require(!(msg.value - amountA), IncorrectETHAmount());
        require((address(v1.word0)).code.size);
        v36, /* uint256 */ v37 = address(v1.word0).deposit().value(amountA).gas(msg.gas);
        require(v36, v37, RETURNDATASIZE());
        if (v36) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            v38 = v39 = 0;
        }
    }
    while (v38 < v40.length) {
        require(v38 < v40.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        v41 = address(v40[v38]);
        require(v41, InvalidPoolAddress());
        if (bool(v40[v38] & 0x10000000000000000000000000000000000000000)) {
            v42 = v43 = MEM[64];
            v44 = v41.token1().gas(msg.gas);
            if (!v44) {
                RETURNDATACOPY(MEM[64], v38, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else if (v44) {
                v45 = v46 = 6142;
                if (32 <= RETURNDATASIZE()) {
                    require(!((v43 + 32 > uint64.max) | (v43 + 32 < v43)), Panic(65)); // failed memory allocation (too much memory)
                    MEM[64] = v43 + 32;
                    v47 = v48 = v43 + 32;
                }
            }
        } else {
            v42 = v49 = MEM[64];
            v50 = v41.token0().gas(msg.gas);
            if (!v50) {
                RETURNDATACOPY(MEM[64], v38, RETURNDATASIZE());
                revert(MEM[64], RETURNDATASIZE());
            } else if (v50) {
                v45 = v51 = 6026;
                v52 = v53 = 32;
                if (v53 > RETURNDATASIZE()) {
                    // Unknown jump to Block 0x1790. Refer to 3-address code (TAC);
                }
            }
        }
        require(v41 != 1, UnknownPool());
        v54 = _swap;
        require(v54 != uint64.max, Panic(17)); // arithmetic overflow or underflow
        _swap = v54 + 1;
        v55 = new struct(3);
        v56 = v55.data;
        v55.word1 = bytes8(v54 + 1 << 192);
        v55.word0 = 60;
        require(!((v55 + 96 > uint64.max) | (v55 + 96 < v55)), Panic(65)); // failed memory allocation (too much memory)
        v57 = v55.word0.length;
        v58 = keccak256(bytes8(v54 + 1 << 192), bytes20(v40[v38] << 96), v38);
        _uniswapV3SwapCallback = v58;
        if (0 == !(v40[v38] & 0x10000000000000000000000000000000000000000)) {
            v59 = v60, v61 = v62, v63 = v64, v65 = v66, v67 = v68, v69 = v70, v71 = v72, v73 = v74, v75 = v76, v77 = v78, v79 = v80 = 0x1556(v58, 5525, 54344, v38, 31, -32, !(v40[v38] & 0x10000000000000000000000000000000000000000), 196, v38, v34, v41, 0xfffd8963efd1fc6a506488495d951d5263988d25);
        } else {
            v59 = v81, v61 = v82, v63 = v83, v65 = v84, v67 = v85, v69 = v86, v71 = v87, v73 = v88, v75 = v89, v77 = v90, v79 = v91 = 0x1556(v58, 5525, 54301, v38, 31, -32, !(v40[v38] & 0x10000000000000000000000000000000000000000), 196, v38, v34, v41, 0x1000276a4);
        }
        v92 = MEM[v79];
        MEM[v92] = 0x128acb0800000000000000000000000000000000000000000000000000000000;
        MEM[v92 + 4] = this;
        MEM[v92 + 36] = v67;
        MEM[v92 + 68] = v73;
        MEM[v92 + 100] = address(v77);
        MEM[v92 + 132] = 160;
        MEM[v92 + 164] = MEM[v59];
        MCOPY(v92 + v69, v61, MEM[v59]);
        MEM[v92 + MEM[v59] + v69] = v71;
        v93 = v75.call(MEM[v1597:v1597 + v1597 + MEM[v1595_0x0] + v1595_0x2 & v1595_0x3 - v1597 + v1595_0x5], MEM[v1597:v1597 + v1595_0xa]).value(v71).gas(msg.gas);
        if (!v93) {
            RETURNDATACOPY(MEM[64], v38, RETURNDATASIZE());
            revert(MEM[64], RETURNDATASIZE());
        } else {
            if (v93) {
                v94 = v95 = 64;
                if (v95 > RETURNDATASIZE()) {
                    v94 = v96 = RETURNDATASIZE();
                }
                require(!((v92 + (v94 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v92 + (v94 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v92)), Panic(65)); // failed memory allocation (too much memory)
                MEM[64] = v92 + (v94 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                require(v92 + v94 - v92 >= 64, v38, v38);
                v38 = v97 = 0x128acb0800000000000000000000000000000000000000000000000000000000;
                v38 = v98 = MEM[v92 + 32];
            }
            v99 = _uniswapV3SwapCallback;
            require(!v99, UnknownPool());
            if (!bool(v40[v38] & 0x10000000000000000000000000000000000000000)) {
            }
            require(v38 != int256.min, Panic(17)); // arithmetic overflow or underflow
            v34 = v100 = v38 - v38;
            v38 += 1;
        }
        require(!((v42 + (v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v42 + (v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v42)), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = v42 + (v52 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
        v47 = v101 = v42 + v52;
        require(v47 - v42 >= 32);
        v38 = v102 = MEM[v42];
        require(!(v102 - address(v102)));
        // Unknown jump to Block ['0x178a', '0x17fe']. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1426. Refer to 3-address code (TAC);
        v52 = v103 = RETURNDATASIZE();
        // Unknown jump to Block 0x1778. Refer to 3-address code (TAC);
        // Unknown jump to Block 0x1429. Refer to 3-address code (TAC);
    }
    if (tokenB) {
        0x2776(tokenB, address(v1.word1), v34);
    } else {
        require((address(v1.word0)).code.size, v38, v38);
        v104, /* uint256 */ v105 = address(v1.word0).withdraw(v34).value(v38).gas(msg.gas);
        require(v104, v105, RETURNDATASIZE());
        if (v104) {
            require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
            MEM[64] = MEM[64];
            require(!v38, v38, v38);
        }
        require(address(v1.word1), InvalidRecipient());
        require(v34, InvalidAmount(v34));
        require(this.balance >= v34, v34, this.balance);
        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        CALLDATACOPY(MEM[64] + 32, msg.data.length, 0);
        v106, /* uint256 */ v107 = address(v1.word1).call().value(v34).gas(msg.gas);
        if (RETURNDATASIZE()) {
            require(RETURNDATASIZE() <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
            v108 = v109 = new bytes[](RETURNDATASIZE());
            require(!((v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v109 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31) + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v109)), Panic(65)); // failed memory allocation (too much memory)
            v107 = v109.data;
            RETURNDATACOPY(v107, 0, RETURNDATASIZE());
        }
        require(v106, ETHTransferFailed(address(v1.word1), v34));
    }
    stor_4 = 1;
    return v34;
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        v0 = function_selector >> 224;
        if (0x1ffc9a7 == v0) {
            supportsInterface(bytes4);
        } else if (0x22d63fb == v0) {
            defaultAdminDelayIncreaseWait();
        } else if (0xaa6220b == v0) {
            rollbackDefaultAdminDelay();
        } else {
            if (0x23a69e75 != v0) {
                if (0x248a9ca3 == v0) {
                    getRoleAdmin(bytes32);
                } else if (0x27ac0c58 == v0) {
                    grantOperatorRole(address);
                } else if (0x2c8958f6 != v0) {
                    if (0x2f2ff15d == v0) {
                        grantRole(bytes32,address);
                    } else if (0x36568abe == v0) {
                        renounceRole(bytes32,address);
                    } else if (0x3f4ba83a == v0) {
                        unpause();
                    } else if (0x43a0a7f2 == v0) {
                        swap(address,address,uint256,bytes);
                    } else if (0x5431c94e == v0) {
                        rescueTokens(address,address);
                    } else if (0x5c975abb == v0) {
                        paused();
                    } else if (0x634e93da == v0) {
                        beginDefaultAdminTransfer(address);
                    } else if (0x649a5ec7 == v0) {
                        changeDefaultAdminDelay(uint48);
                    } else if (0x6d70f7ae == v0) {
                        isOperator(address);
                    } else if (0x8456cb59 == v0) {
                        pause();
                    } else {
                        if (0x84ef8ffc != v0) {
                            if (0x8da5cb5b != v0) {
                                if (0x91d14854 == v0) {
                                    hasRole(bytes32,address);
                                } else if (0xa1eda53c == v0) {
                                    pendingDefaultAdminDelay();
                                } else if (0xa217fddf == v0) {
                                    DEFAULT_ADMIN_ROLE();
                                } else if (0xb219f7d7 == v0) {
                                    revokeOperatorRole(address);
                                } else if (0xcc8463c8 == v0) {
                                    defaultAdminDelay();
                                } else if (0xcefc1429 == v0) {
                                    acceptDefaultAdminTransfer();
                                } else if (0xcf6eefb7 == v0) {
                                    pendingDefaultAdmin();
                                } else if (0xd547741f == v0) {
                                    revokeRole(bytes32,address);
                                } else if (0xd602b9fd == v0) {
                                    cancelDefaultAdminTransfer();
                                } else if (0xf5b541a6 == v0) {
                                    OPERATOR_ROLE();
                                } else if (!(0xfa461e33 - v0)) {
                                    uniswapV3SwapCallback(int256,int256,bytes);
                                }
                            }
                        }
                        owner();
                    }
                }
            }
            algebraSwapCallback(int256,int256,bytes);
        }
    }
    require(!msg.data.length);
    receive();
}
