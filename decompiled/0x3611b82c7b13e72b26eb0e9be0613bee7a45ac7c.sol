// Decompiled by library.dedaub.com
// 2025.12.15 08:59 UTC
// Compiled using the solidity compiler version 0.8.24


// Data structures and variables inferred from the use of storage instructions
mapping (address => bool) _whitelist; // STORAGE[0x2]
address _owner; // STORAGE[0x0] bytes 0 to 19
address _pendingOwner; // STORAGE[0x1] bytes 0 to 19
bool _paused; // STORAGE[0x1] bytes 20 to 20


// Events
UpdateWhitelist(address, address, bool);
OwnershipTransferStarted(address, address);
Unpaused(address);
Paused(address);
OwnershipTransferred(address, address);

function updateWhitelist(address account, bool isWhitelisted) public nonPayable { 
    require(msg.data.length - 4 >= 64);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    _whitelist[account] = isWhitelisted;
    emit UpdateWhitelist(msg.sender, account, isWhitelisted);
}

function swapWithoutSignature(bytes varg0) public payable { 
    require(msg.data.length - 4 >= 32);
    require(varg0 <= uint64.max);
    require(4 + varg0 + 31 < msg.data.length);
    require(varg0.length <= uint64.max);
    require(4 + varg0 + varg0.length + 32 <= msg.data.length);
    v0, v1 = @swapWithoutSignature_362(varg0.length, varg0.data);
    return v1, v0;
}

function @transferFrom_1171(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 
    MEM[64] = MEM[64] + 100;
    v0 = varg3.transferFrom(varg2, varg1, varg0).gas(msg.gas);
    require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
    v1 = 0;
    if (!RETURNDATASIZE() == 1) {
        if (varg3.code.size) {
            v1 = v2 = 1;
        }
    } else if (bool(RETURNDATASIZE())) {
        RETURNDATACOPY(0, 0, 32);
        v1 = v3 = MEM[0] > 0;
    }
    require(v1, TransferFromFailed());
    return ;
}

function unpause() public nonPayable { 
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(_paused, Error('Pausable: not paused'));
    require(_paused, Error('Pausable: not paused'));
    _paused = 0;
    emit Unpaused(msg.sender);
}

function paused() public nonPayable { 
    return _paused;
}

function _SafeSub(uint256 varg0, uint256 varg1) private { 
    require(varg0 - varg1 <= varg0, Panic(17)); // arithmetic overflow or underflow
    return varg0 - varg1;
}

function _SafeAdd(uint256 varg0, uint256 varg1) private { 
    require(varg0 <= varg1 + varg0, Panic(17)); // arithmetic overflow or underflow
    return varg1 + varg0;
}

function renounceOwnership() public nonPayable { 
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    @_transferOwnership_1866(0);
}

function acceptOwnership() public nonPayable { 
    require(msg.sender == _pendingOwner, Error('Ownable2Step: caller is not the new owner'));
    @_transferOwnership_1866(msg.sender);
}

function pause() public nonPayable { 
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(!_paused, Error('Pausable: paused'));
    require(!_paused, Error('Pausable: paused'));
    _paused = 1;
    emit Paused(msg.sender);
}

function owner() public nonPayable { 
    return _owner;
}

function whitelist(address varg0) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    return _whitelist[varg0];
}

function multicall(bytes[] data) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(data.length <= uint64.max);
    require(4 + data + (data.length << 5) + 32 <= msg.data.length);
    v0 = @multicall_183(data.length, data.data);
    v1 = new uint256[](v0.length);
    v2 = v3 = v1.data;
    v4 = v5 = MEM[64] + (v0.length << 5) + 64;
    v6 = v7 = v0.data;
    v8 = v9 = 0;
    while (v8 < v0.length) {
        MEM[v2] = v4 - MEM[64] - 64;
        MEM[v4] = MEM[MEM[v6]];
        v10 = v11 = 0;
        while (v10 < MEM[MEM[v6]]) {
            MEM[v10 + (v4 + 32)] = MEM[v10 + (MEM[v6] + 32)];
            v10 += 32;
        }
        MEM[MEM[MEM[v6]] + (v4 + 32)] = 0;
        v4 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v6]]) + v4);
        v2 += 32;
        v6 += 32;
        v8 += 1;
    }
    return v1;
}

function pendingOwner() public nonPayable { 
    return _pendingOwner;
}

function transferOwnership(address newOwner) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    _pendingOwner = newOwner;
    emit OwnershipTransferStarted(_owner, newOwner);
}

function @transfer_1225(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    if (address(varg2)) {
        MEM[64] = MEM[64] + 68;
        v0 = varg2.transfer(varg1, varg0).gas(msg.gas);
        require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        v1 = 0;
        if (!RETURNDATASIZE() == 1) {
            if (varg2.code.size) {
                v1 = v2 = 1;
            }
        } else if (bool(RETURNDATASIZE())) {
            RETURNDATACOPY(0, 0, 32);
            v1 = v3 = MEM[0] > 0;
        }
        require(v1, TransferFailed());
        return ;
    } else {
        v4, /* uint256 */ v5 = address(varg1).call().value(varg0).gas(msg.gas);
        if (RETURNDATASIZE() != 0) {
            v6 = new bytes[](RETURNDATASIZE());
            v5 = v6.data;
            RETURNDATACOPY(v5, 0, RETURNDATASIZE());
        }
        require(v4, TransferFailed());
        return ;
    }
}

function @swapWithoutSignature_362(uint256 varg0, uint256 varg1) private { 
    require(_whitelist[msg.sender], InvalidCaller());
    v0 = new struct(11);
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
    require(msg.data[msg.data[133] >> 240] >> (msg.data[132] >> 248) >= block.timestamp, ExpiredTransaction());
    v0.word0 = msg.data[72] >> 96;
    v0.word1 = msg.data[92] >> 96;
    v0.word2 = msg.data[112] >> 96;
    v0.word3 = msg.data[msg.data[133] >> 240] >> (msg.data[132] >> 248);
    v0.word4 = msg.data[msg.data[136] >> 240] >> (msg.data[135] >> 248);
    v0.word5 = msg.data[msg.data[139] >> 240] >> (msg.data[138] >> 248);
    v0.word6 = msg.data[msg.data[142] >> 240] >> (msg.data[141] >> 248);
    v0.word7 = msg.data[209] >> 248 > 0;
    if (msg.data[209] >> 248 > 0 == 1) {
        v0.word8 = msg.data[277] >> 248;
        if (!((msg.data[277] >> 248) - 1)) {
            v0.word9 = msg.data[278] >> 96;
            v0.word10 = msg.data[msg.data[299] >> 240] >> (msg.data[298] >> 248);
        }
    } else {
        v0.word8 = msg.data[210] >> 248;
        if (!((msg.data[210] >> 248) - 1)) {
            v0.word9 = msg.data[211] >> 96;
            v0.word10 = msg.data[msg.data[232] >> 240] >> (msg.data[231] >> 248);
        }
    }
    v1, v2 = @swap_332(msg.sender, v0);
    return v1, v2;
}

function @multicall_183(uint256 varg0, uint256 varg1) private { 
    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));
    require(varg0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)
    v0 = new uint256[](varg0);
    if (varg0) {
        v1 = v2 = v0.data;
        while (varg0) {
            MEM[v1] = 96;
            v1 += 32;
            varg0 = varg0 - 1;
        }
    }
    v3 = v4 = 0;
    while (v3 < varg0) {
        require(v3 < varg0, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[varg1 + (v3 << 5)] < msg.data.length - varg1 - 31);
        v5 = msg.data[varg1 + msg.data[varg1 + (v3 << 5)]];
        require(v5 <= uint64.max);
        require(32 + (varg1 + msg.data[varg1 + (v3 << 5)]) <= msg.data.length - v5);
        v6 = new bytes[](v5);
        CALLDATACOPY(v6.data, 32 + (varg1 + msg.data[varg1 + (v3 << 5)]), v5);
        v6[v5] = 0;
        v7 = v8 = 0;
        while (v7 < v6.length) {
            MEM[v7 + v9.data] = v6[v7];
            v7 += 32;
        }
        MEM[v6.length + v9.data] = 0;
        v10, /* uint256 */ v11, /* uint256 */ v12 = address(this).delegatecall(v9.data).gas(msg.gas);
        if (RETURNDATASIZE() == 0) {
            v13 = v14 = 96;
        } else {
            v13 = v15 = new bytes[](RETURNDATASIZE());
            RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());
        }
        if (!v10) {
            require(!MEM[v13], v12, MEM[v13]);
            v16 = new bytes[](v17.length);
            v18 = v19 = 0;
            while (v18 < v17.length) {
                v16[v18] = v17[v18];
                v18 += 32;
            }
            v16[v17.length] = 0;
            revert(Error(v16));
        } else {
            if (!(0 - MEM[v13])) {
                require((address(this)).code.size, Error('Address: call to non-contract'));
            }
            require(v3 < v0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            v0[v3] = v13;
            v3 += 1;
        }
    }
    return v0;
}

function receive() public payable { 
}

function @swap_332(uint256 varg0, struct(11) varg1) private { 
    v0 = @getBalanceOf_1140(varg1.word0, address(varg1.word2));
    v1 = v2 = MEM[64];
    v3 = v4 = 0;
    v5 = v6 = uint16(70 + (msg.data[68] >> 240));
    while (v5 < uint16(68 + msg.data[36])) {
        v7 = msg.data[v5] >> 248;
        require(v7 <= 10, Panic(33)); // failed convertion to enum type
        if (v7 - 0) {
            require(v7 <= 10, Panic(33)); // failed convertion to enum type
            if (v7 - 1) {
                require(v7 <= 10, Panic(33)); // failed convertion to enum type
                if (v7 - 2) {
                    require(v7 <= 10, Panic(33)); // failed convertion to enum type
                    if (v7 - 3) {
                        require(v7 <= 10, Panic(33)); // failed convertion to enum type
                        if (v7 - 4) {
                            require(v7 <= 10, Panic(33)); // failed convertion to enum type
                            if (v7 - 5) {
                                require(v7 <= 10, Panic(33)); // failed convertion to enum type
                                if (v7 - 6) {
                                    require(v7 <= 10, Panic(33)); // failed convertion to enum type
                                    if (v7 - 7) {
                                        require(v7 <= 10, Panic(33)); // failed convertion to enum type
                                        if (v7 - 8) {
                                            require(v7 <= 10, Panic(33)); // failed convertion to enum type
                                            if (v7 - 9) {
                                                require(v7 <= 10, Panic(33)); // failed convertion to enum type
                                                require(!(v7 - 10), InvalidCommand());
                                                v3 = _SafeSub(v3, msg.gas);
                                            } else {
                                                v3 = v8 = msg.gas;
                                            }
                                        } else {
                                            v9 = v10 = msg.data[v5 + 3] >> 240;
                                            v11 = v12 = MEM[64] + 32;
                                            while (v9 < msg.data[v5 + 5] >> 240) {
                                                if (!(msg.data[v9] >> 248)) {
                                                    if (msg.data[v9 + 3] >> 240 != 1) {
                                                    }
                                                    v9 = v9 + 5;
                                                } else if (msg.data[v9] >> 248 == 1) {
                                                    MEM[v11] = msg.data[msg.data[v9 + 1] >> 240];
                                                    v11 = v11 + 4;
                                                    v9 = v9 + 3;
                                                } else if (msg.data[v9] >> 248 == 2) {
                                                    MEM[v11] = msg.data[msg.data[v9 + 1] >> 240] >> 96;
                                                    v11 = v11 + 32;
                                                    v9 = v9 + 3;
                                                } else if (msg.data[v9] >> 248 == 3) {
                                                    MEM[v11] = msg.data[(msg.data[v9 + 1] >> 240) + 1] >> (msg.data[msg.data[v9 + 1] >> 240] >> 248);
                                                    v11 = v11 + 32;
                                                    v9 = v9 + 3;
                                                } else if (msg.data[v9] >> 248 == 4) {
                                                    CALLDATACOPY(v11, msg.data[v9 + 1] >> 240, msg.data[v9 + 3] >> 240);
                                                    v11 = v11 + (msg.data[v9 + 3] >> 240);
                                                    v9 = v9 + 5;
                                                } else if (msg.data[v9] >> 248 == 5) {
                                                    MEM[v11] = MEM[v2 + (msg.data[v9 + 1] >> 240)];
                                                    v11 = v11 + 32;
                                                    v9 = v9 + 3;
                                                } else if (msg.data[v9] >> 248 == 6) {
                                                    MEM[v11] = this;
                                                    v11 = v11 + 32;
                                                    v9 = v9 + 1;
                                                } else {
                                                    require(msg.data[v9] >> 248 == 7, InvalidSequenceType());
                                                    MEM[v11] = msg.sender;
                                                    v11 = v11 + 32;
                                                    v9 = v9 + 1;
                                                }
                                            }
                                            MEM[MEM[64]] = v11 - (MEM[64] + 32);
                                            MEM[64] = v11;
                                            v13 = v14 = 0;
                                            while (1) {
                                                if (v13 >= 6) {
                                                    v15 = v16 = MEM[MEM[64] + 160];
                                                    MEM[64] = MEM[64] + 192;
                                                    break;
                                                } else {
                                                    if (MEM[MEM[64] + 32 + v13 * 5 + 1] >> 248 < 6 == 1) {
                                                        v17 = v18 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v13 * 5 + 1] >> 248 << 5)];
                                                    } else {
                                                        v17 = v19 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v13 * 5 + 1] >> 248) - 6 << 5)];
                                                    }
                                                    if (MEM[MEM[64] + 32 + v13 * 5 + 2] >> 248 < 6 == 1) {
                                                        v20 = v21 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v13 * 5 + 2] >> 248 << 5)];
                                                    } else {
                                                        v20 = v22 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v13 * 5 + 2] >> 248) - 6 << 5)];
                                                    }
                                                    if (MEM[MEM[64] + 32 + v13 * 5 + 3] >> 248 < 6 == 1) {
                                                        v23 = v24 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v13 * 5 + 3] >> 248 << 5)];
                                                    } else {
                                                        v23 = v25 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v13 * 5 + 3] >> 248) - 6 << 5)];
                                                    }
                                                    if (MEM[MEM[64] + 32 + v13 * 5 + 4] >> 248 < 6 == 1) {
                                                        v26 = v27 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v13 * 5 + 4] >> 248 << 5)];
                                                    } else {
                                                        v26 = v28 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v13 * 5 + 4] >> 248) - 6 << 5)];
                                                    }
                                                    if (!(MEM[MEM[64] + 32 + v13 * 5] >> 248)) {
                                                        v15 = v29 = MEM[(uint256.max + v13 << 5) + MEM[64]];
                                                        MEM[64] = 32 + ((uint256.max + v13 << 5) + MEM[64]);
                                                        break;
                                                    } else {
                                                        if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 1) {
                                                            if (v17 < v20 != 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            }
                                                        } else if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 2) {
                                                            if ((v17 < v20) | (v17 == v20) != 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            }
                                                        } else if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 3) {
                                                            if (v17 > v20 != 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            }
                                                        } else if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 4) {
                                                            if ((v17 > v20) | (v17 == v20) != 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            }
                                                        } else if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 5) {
                                                            if (v17 == v20 != 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            }
                                                        } else if (MEM[MEM[64] + 32 + v13 * 5] >> 248 == 6) {
                                                            if (v17 == v20 == 1) {
                                                                MEM[MEM[64] + (v13 << 5)] = v26;
                                                            } else {
                                                                MEM[MEM[64] + (v13 << 5)] = v23;
                                                            }
                                                        }
                                                        MEM[MEM[64] + (v13 << 5)] = v23;
                                                        v13 = v13 + 1;
                                                    }
                                                }
                                            }
                                            MEM[v1] = v15;
                                            v1 = _SafeAdd(v1, 32);
                                        }
                                    } else {
                                        v30 = v31 = msg.data[v5 + 3] >> 240;
                                        v32 = v33 = MEM[64] + 32;
                                        while (v30 < msg.data[v5 + 5] >> 240) {
                                            if (!(msg.data[v30] >> 248)) {
                                                if (msg.data[v30 + 3] >> 240 != 1) {
                                                }
                                                v30 = v30 + 5;
                                            } else if (msg.data[v30] >> 248 == 1) {
                                                MEM[v32] = msg.data[msg.data[v30 + 1] >> 240];
                                                v32 = v32 + 4;
                                                v30 = v30 + 3;
                                            } else if (msg.data[v30] >> 248 == 2) {
                                                MEM[v32] = msg.data[msg.data[v30 + 1] >> 240] >> 96;
                                                v32 = v32 + 32;
                                                v30 = v30 + 3;
                                            } else if (msg.data[v30] >> 248 == 3) {
                                                MEM[v32] = msg.data[(msg.data[v30 + 1] >> 240) + 1] >> (msg.data[msg.data[v30 + 1] >> 240] >> 248);
                                                v32 = v32 + 32;
                                                v30 = v30 + 3;
                                            } else if (msg.data[v30] >> 248 == 4) {
                                                CALLDATACOPY(v32, msg.data[v30 + 1] >> 240, msg.data[v30 + 3] >> 240);
                                                v32 = v32 + (msg.data[v30 + 3] >> 240);
                                                v30 = v30 + 5;
                                            } else if (msg.data[v30] >> 248 == 5) {
                                                MEM[v32] = MEM[v2 + (msg.data[v30 + 1] >> 240)];
                                                v32 = v32 + 32;
                                                v30 = v30 + 3;
                                            } else if (msg.data[v30] >> 248 == 6) {
                                                MEM[v32] = this;
                                                v32 = v32 + 32;
                                                v30 = v30 + 1;
                                            } else {
                                                require(msg.data[v30] >> 248 == 7, InvalidSequenceType());
                                                MEM[v32] = msg.sender;
                                                v32 = v32 + 32;
                                                v30 = v30 + 1;
                                            }
                                        }
                                        MEM[MEM[64]] = v32 - (MEM[64] + 32);
                                        MEM[64] = v32;
                                        v34 = 0;
                                        while (1) {
                                            if (v34 >= 10) {
                                                v35 = v36 = MEM[MEM[64] + 288];
                                                MEM[64] = MEM[64] + 320;
                                                break;
                                            } else {
                                                if (MEM[MEM[64] + 32 + v34 * 3 + 1] >> 248 < 10 == 1) {
                                                    v37 = v38 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v34 * 3 + 1] >> 248 << 5)];
                                                } else {
                                                    v37 = v39 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v34 * 3 + 1] >> 248) - 10 << 5)];
                                                }
                                                if (MEM[MEM[64] + 32 + v34 * 3 + 2] >> 248 < 10 == 1) {
                                                    v40 = v41 = MEM[MEM[64] + (MEM[MEM[64] + 32 + v34 * 3 + 2] >> 248 << 5)];
                                                } else {
                                                    v40 = v42 = MEM[MEM[64] + 32 + 32 + ((MEM[MEM[64] + 32 + v34 * 3 + 2] >> 248) - 10 << 5)];
                                                }
                                                v43 = MEM[MEM[64] + 32 + v34 * 3] >> 248;
                                                if (!v43) {
                                                    v35 = v44 = MEM[(uint256.max + v34 << 5) + MEM[64]];
                                                    MEM[64] = 32 + ((uint256.max + v34 << 5) + MEM[64]);
                                                    break;
                                                } else {
                                                    if (v43 == 1) {
                                                        MEM[MEM[64] + (v34 << 5)] = v37 + v40;
                                                    } else if (v43 == 2) {
                                                        MEM[MEM[64] + (v34 << 5)] = v37 - v40;
                                                    } else if (v43 == 3) {
                                                        MEM[MEM[64] + (v34 << 5)] = v37 * v40;
                                                    } else if (v43 == 4) {
                                                        MEM[MEM[64] + (v34 << 5)] = v37 / v40;
                                                    } else if (v43 == 5) {
                                                        MEM[MEM[64] + (v34 << 5)] = v37 ** v40;
                                                    } else {
                                                        if (v43 == 6) {
                                                            if (v37 > int128.max) {
                                                                v37 = v45 = (v37 >> int8.max ^ v37) - (v37 >> int8.max);
                                                            }
                                                        } else if (v43 == 7) {
                                                            if (v37 > int256.max) {
                                                                MEM[MEM[64] + (v34 << 5)] = (v37 >> uint8.max ^ v37) - (v37 >> uint8.max);
                                                            }
                                                        } else if (v43 == 8) {
                                                            MEM[MEM[64] + (v34 << 5)] = v40 >> v37;
                                                        } else if (v43 == 9) {
                                                            MEM[MEM[64] + (v34 << 5)] = v40 << v37;
                                                        }
                                                        MEM[MEM[64] + (v34 << 5)] = v37;
                                                    }
                                                    v34 = v34 + 1;
                                                }
                                            }
                                        }
                                        MEM[v1] = v35;
                                        v1 = _SafeAdd(v1, 32);
                                    }
                                } else {
                                    v46 = v47 = msg.data[v5 + 3] >> 240;
                                    v48 = v49 = MEM[64] + 32;
                                    while (v46 < msg.data[v5 + 5] >> 240) {
                                        if (!(msg.data[v46] >> 248)) {
                                            if (msg.data[v46 + 3] >> 240 != 1) {
                                            }
                                            v46 = v46 + 5;
                                        } else if (msg.data[v46] >> 248 == 1) {
                                            MEM[v48] = msg.data[msg.data[v46 + 1] >> 240];
                                            v48 = v48 + 4;
                                            v46 = v46 + 3;
                                        } else if (msg.data[v46] >> 248 == 2) {
                                            MEM[v48] = msg.data[msg.data[v46 + 1] >> 240] >> 96;
                                            v48 = v48 + 32;
                                            v46 = v46 + 3;
                                        } else if (msg.data[v46] >> 248 == 3) {
                                            MEM[v48] = msg.data[(msg.data[v46 + 1] >> 240) + 1] >> (msg.data[msg.data[v46 + 1] >> 240] >> 248);
                                            v48 = v48 + 32;
                                            v46 = v46 + 3;
                                        } else if (msg.data[v46] >> 248 == 4) {
                                            CALLDATACOPY(v48, msg.data[v46 + 1] >> 240, msg.data[v46 + 3] >> 240);
                                            v48 = v48 + (msg.data[v46 + 3] >> 240);
                                            v46 = v46 + 5;
                                        } else if (msg.data[v46] >> 248 == 5) {
                                            MEM[v48] = MEM[v2 + (msg.data[v46 + 1] >> 240)];
                                            v48 = v48 + 32;
                                            v46 = v46 + 3;
                                        } else if (msg.data[v46] >> 248 == 6) {
                                            MEM[v48] = this;
                                            v48 = v48 + 32;
                                            v46 = v46 + 1;
                                        } else {
                                            require(msg.data[v46] >> 248 == 7, InvalidSequenceType());
                                            MEM[v48] = msg.sender;
                                            v48 = v48 + 32;
                                            v46 = v46 + 1;
                                        }
                                    }
                                    MEM[MEM[64]] = v48 - (MEM[64] + 32);
                                    MEM[64] = v48;
                                    v50 = @getBalanceOf_1140(this, address(MEM[MEM[64] + 32]));
                                    MEM[v1] = v50;
                                    v1 = _SafeAdd(v1, 32);
                                }
                            } else {
                                v51 = v52 = msg.data[v5 + 3] >> 240;
                                v53 = v54 = MEM[64] + 32;
                                while (v51 < msg.data[v5 + 5] >> 240) {
                                    if (!(msg.data[v51] >> 248)) {
                                        if (msg.data[v51 + 3] >> 240 != 1) {
                                        }
                                        v51 = v51 + 5;
                                    } else if (msg.data[v51] >> 248 == 1) {
                                        MEM[v53] = msg.data[msg.data[v51 + 1] >> 240];
                                        v53 = v53 + 4;
                                        v51 = v51 + 3;
                                    } else if (msg.data[v51] >> 248 == 2) {
                                        MEM[v53] = msg.data[msg.data[v51 + 1] >> 240] >> 96;
                                        v53 = v53 + 32;
                                        v51 = v51 + 3;
                                    } else if (msg.data[v51] >> 248 == 3) {
                                        MEM[v53] = msg.data[(msg.data[v51 + 1] >> 240) + 1] >> (msg.data[msg.data[v51 + 1] >> 240] >> 248);
                                        v53 = v53 + 32;
                                        v51 = v51 + 3;
                                    } else if (msg.data[v51] >> 248 == 4) {
                                        CALLDATACOPY(v53, msg.data[v51 + 1] >> 240, msg.data[v51 + 3] >> 240);
                                        v53 = v53 + (msg.data[v51 + 3] >> 240);
                                        v51 = v51 + 5;
                                    } else if (msg.data[v51] >> 248 == 5) {
                                        MEM[v53] = MEM[v2 + (msg.data[v51 + 1] >> 240)];
                                        v53 = v53 + 32;
                                        v51 = v51 + 3;
                                    } else if (msg.data[v51] >> 248 == 6) {
                                        MEM[v53] = this;
                                        v53 = v53 + 32;
                                        v51 = v51 + 1;
                                    } else {
                                        require(msg.data[v51] >> 248 == 7, InvalidSequenceType());
                                        MEM[v53] = msg.sender;
                                        v53 = v53 + 32;
                                        v51 = v51 + 1;
                                    }
                                }
                                MEM[MEM[64]] = v53 - (MEM[64] + 32);
                                MEM[64] = MEM[64] + 36;
                                v55 = address(MEM[MEM[64] + 32]).withdraw(MEM[MEM[64] + 64]).gas(msg.gas);
                                if (v55) {
                                    v56 = 0;
                                    if (!RETURNDATASIZE() == 1) {
                                        if ((address(MEM[MEM[64] + 32])).code.size) {
                                            v56 = v57 = 1;
                                        }
                                    } else if (bool(RETURNDATASIZE())) {
                                        RETURNDATACOPY(0, 0, 32);
                                        v56 = v58 = MEM[0] > 0;
                                    }
                                    require(v56, FailedUnwrap());
                                } else {
                                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                    revert(0, RETURNDATASIZE());
                                }
                            }
                        } else {
                            v59 = v60 = msg.data[v5 + 3] >> 240;
                            v61 = v62 = MEM[64] + 32;
                            while (v59 < msg.data[v5 + 5] >> 240) {
                                if (!(msg.data[v59] >> 248)) {
                                    if (msg.data[v59 + 3] >> 240 != 1) {
                                    }
                                    v59 = v59 + 5;
                                } else if (msg.data[v59] >> 248 == 1) {
                                    MEM[v61] = msg.data[msg.data[v59 + 1] >> 240];
                                    v61 = v61 + 4;
                                    v59 = v59 + 3;
                                } else if (msg.data[v59] >> 248 == 2) {
                                    MEM[v61] = msg.data[msg.data[v59 + 1] >> 240] >> 96;
                                    v61 = v61 + 32;
                                    v59 = v59 + 3;
                                } else if (msg.data[v59] >> 248 == 3) {
                                    MEM[v61] = msg.data[(msg.data[v59 + 1] >> 240) + 1] >> (msg.data[msg.data[v59 + 1] >> 240] >> 248);
                                    v61 = v61 + 32;
                                    v59 = v59 + 3;
                                } else if (msg.data[v59] >> 248 == 4) {
                                    CALLDATACOPY(v61, msg.data[v59 + 1] >> 240, msg.data[v59 + 3] >> 240);
                                    v61 = v61 + (msg.data[v59 + 3] >> 240);
                                    v59 = v59 + 5;
                                } else if (msg.data[v59] >> 248 == 5) {
                                    MEM[v61] = MEM[v2 + (msg.data[v59 + 1] >> 240)];
                                    v61 = v61 + 32;
                                    v59 = v59 + 3;
                                } else if (msg.data[v59] >> 248 == 6) {
                                    MEM[v61] = this;
                                    v61 = v61 + 32;
                                    v59 = v59 + 1;
                                } else {
                                    require(msg.data[v59] >> 248 == 7, InvalidSequenceType());
                                    MEM[v61] = msg.sender;
                                    v61 = v61 + 32;
                                    v59 = v59 + 1;
                                }
                            }
                            MEM[MEM[64]] = v61 - (MEM[64] + 32);
                            MEM[64] = MEM[64] + 4;
                            v63 = address(MEM[MEM[64] + 32]).deposit().value(MEM[MEM[64] + 64]).gas(msg.gas);
                            if (v63) {
                                v64 = 0;
                                if (!RETURNDATASIZE() == 1) {
                                    if ((address(MEM[MEM[64] + 32])).code.size) {
                                        v64 = v65 = 1;
                                    }
                                } else if (bool(RETURNDATASIZE())) {
                                    RETURNDATACOPY(0, 0, 32);
                                    v64 = v66 = MEM[0] > 0;
                                }
                                require(v64, FailedWrap());
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        }
                    } else {
                        v67 = v68 = msg.data[v5 + 3] >> 240;
                        v69 = v70 = MEM[64] + 32;
                        while (v67 < msg.data[v5 + 5] >> 240) {
                            if (!(msg.data[v67] >> 248)) {
                                if (msg.data[v67 + 3] >> 240 != 1) {
                                }
                                v67 = v67 + 5;
                            } else if (msg.data[v67] >> 248 == 1) {
                                MEM[v69] = msg.data[msg.data[v67 + 1] >> 240];
                                v69 = v69 + 4;
                                v67 = v67 + 3;
                            } else if (msg.data[v67] >> 248 == 2) {
                                MEM[v69] = msg.data[msg.data[v67 + 1] >> 240] >> 96;
                                v69 = v69 + 32;
                                v67 = v67 + 3;
                            } else if (msg.data[v67] >> 248 == 3) {
                                MEM[v69] = msg.data[(msg.data[v67 + 1] >> 240) + 1] >> (msg.data[msg.data[v67 + 1] >> 240] >> 248);
                                v69 = v69 + 32;
                                v67 = v67 + 3;
                            } else if (msg.data[v67] >> 248 == 4) {
                                CALLDATACOPY(v69, msg.data[v67 + 1] >> 240, msg.data[v67 + 3] >> 240);
                                v69 = v69 + (msg.data[v67 + 3] >> 240);
                                v67 = v67 + 5;
                            } else if (msg.data[v67] >> 248 == 5) {
                                MEM[v69] = MEM[v2 + (msg.data[v67 + 1] >> 240)];
                                v69 = v69 + 32;
                                v67 = v67 + 3;
                            } else if (msg.data[v67] >> 248 == 6) {
                                MEM[v69] = this;
                                v69 = v69 + 32;
                                v67 = v67 + 1;
                            } else {
                                require(msg.data[v67] >> 248 == 7, InvalidSequenceType());
                                MEM[v69] = msg.sender;
                                v69 = v69 + 32;
                                v67 = v67 + 1;
                            }
                        }
                        MEM[MEM[64]] = v69 - (MEM[64] + 32);
                        MEM[64] = v69;
                        if (MEM[MEM[64] + 96]) {
                            @transfer_1225(MEM[MEM[64] + 96], MEM[MEM[64] + 64], address(MEM[MEM[64] + 32]));
                        }
                    }
                } else {
                    v71 = v72 = msg.data[v5 + 3] >> 240;
                    v73 = v74 = MEM[64] + 32;
                    while (v71 < msg.data[v5 + 5] >> 240) {
                        if (!(msg.data[v71] >> 248)) {
                            if (msg.data[v71 + 3] >> 240 != 1) {
                            }
                            v71 = v71 + 5;
                        } else if (msg.data[v71] >> 248 == 1) {
                            MEM[v73] = msg.data[msg.data[v71 + 1] >> 240];
                            v73 = v73 + 4;
                            v71 = v71 + 3;
                        } else if (msg.data[v71] >> 248 == 2) {
                            MEM[v73] = msg.data[msg.data[v71 + 1] >> 240] >> 96;
                            v73 = v73 + 32;
                            v71 = v71 + 3;
                        } else if (msg.data[v71] >> 248 == 3) {
                            MEM[v73] = msg.data[(msg.data[v71 + 1] >> 240) + 1] >> (msg.data[msg.data[v71 + 1] >> 240] >> 248);
                            v73 = v73 + 32;
                            v71 = v71 + 3;
                        } else if (msg.data[v71] >> 248 == 4) {
                            CALLDATACOPY(v73, msg.data[v71 + 1] >> 240, msg.data[v71 + 3] >> 240);
                            v73 = v73 + (msg.data[v71 + 3] >> 240);
                            v71 = v71 + 5;
                        } else if (msg.data[v71] >> 248 == 5) {
                            MEM[v73] = MEM[v2 + (msg.data[v71 + 1] >> 240)];
                            v73 = v73 + 32;
                            v71 = v71 + 3;
                        } else if (msg.data[v71] >> 248 == 6) {
                            MEM[v73] = this;
                            v73 = v73 + 32;
                            v71 = v71 + 1;
                        } else {
                            require(msg.data[v71] >> 248 == 7, InvalidSequenceType());
                            MEM[v73] = msg.sender;
                            v73 = v73 + 32;
                            v71 = v71 + 1;
                        }
                    }
                    MEM[MEM[64]] = v73 - (MEM[64] + 32);
                    MEM[64] = v73;
                    if (MEM[MEM[64] + 64]) {
                        @transferFrom_1171(MEM[MEM[64] + 64], MEM[MEM[64] + 32], varg0, address(varg1.word1));
                        v3 = _SafeAdd(v3, MEM[MEM[64] + 64]);
                    }
                }
            } else {
                v75 = v76 = msg.data[v5 + 3] >> 240;
                v77 = v78 = MEM[64] + 32;
                while (v75 < msg.data[v5 + 5] >> 240) {
                    if (!(msg.data[v75] >> 248)) {
                        if (msg.data[v75 + 3] >> 240 != 1) {
                        }
                        v75 = v75 + 5;
                    } else if (msg.data[v75] >> 248 == 1) {
                        MEM[v77] = msg.data[msg.data[v75 + 1] >> 240];
                        v77 = v77 + 4;
                        v75 = v75 + 3;
                    } else if (msg.data[v75] >> 248 == 2) {
                        MEM[v77] = msg.data[msg.data[v75 + 1] >> 240] >> 96;
                        v77 = v77 + 32;
                        v75 = v75 + 3;
                    } else if (msg.data[v75] >> 248 == 3) {
                        MEM[v77] = msg.data[(msg.data[v75 + 1] >> 240) + 1] >> (msg.data[msg.data[v75 + 1] >> 240] >> 248);
                        v77 = v77 + 32;
                        v75 = v75 + 3;
                    } else if (msg.data[v75] >> 248 == 4) {
                        CALLDATACOPY(v77, msg.data[v75 + 1] >> 240, msg.data[v75 + 3] >> 240);
                        v77 = v77 + (msg.data[v75 + 3] >> 240);
                        v75 = v75 + 5;
                    } else if (msg.data[v75] >> 248 == 5) {
                        MEM[v77] = MEM[v2 + (msg.data[v75 + 1] >> 240)];
                        v77 = v77 + 32;
                        v75 = v75 + 3;
                    } else if (msg.data[v75] >> 248 == 6) {
                        MEM[v77] = this;
                        v77 = v77 + 32;
                        v75 = v75 + 1;
                    } else {
                        require(msg.data[v75] >> 248 == 7, InvalidSequenceType());
                        MEM[v77] = msg.sender;
                        v77 = v77 + 32;
                        v75 = v75 + 1;
                    }
                }
                MEM[MEM[64]] = v77 - (MEM[64] + 32);
                MEM[64] = MEM[64] + 68;
                v79 = address(MEM[MEM[64] + 32]).approve(MEM[MEM[64] + 64], MEM[MEM[64] + 96]).gas(msg.gas);
                if (v79) {
                    v80 = 0;
                    if (!RETURNDATASIZE() == 1) {
                        if ((address(MEM[MEM[64] + 32])).code.size) {
                            v80 = v81 = 1;
                        }
                    } else if (bool(RETURNDATASIZE())) {
                        RETURNDATACOPY(0, 0, 32);
                        v80 = v82 = MEM[0] > 0;
                    }
                    if (!v80) {
                        v83 = address(MEM[MEM[64] + 32]).approve(MEM[MEM[64] + 64], 0).gas(msg.gas);
                        if (v83) {
                            v84 = 0;
                            if (!RETURNDATASIZE() == 1) {
                                if ((address(MEM[MEM[64] + 32])).code.size) {
                                    v84 = v85 = 1;
                                }
                            } else if (bool(RETURNDATASIZE())) {
                                RETURNDATACOPY(0, 0, 32);
                                v84 = v86 = MEM[0] > 0;
                            }
                            require(v84, ApprovalFailed());
                            v87 = address(MEM[MEM[64] + 32]).approve(MEM[MEM[64] + 64], MEM[MEM[64] + 96]).gas(msg.gas);
                            if (v87) {
                                v88 = 0;
                                if (!RETURNDATASIZE() == 1) {
                                    if ((address(MEM[MEM[64] + 32])).code.size) {
                                        v88 = v89 = 1;
                                    }
                                } else if (bool(RETURNDATASIZE())) {
                                    RETURNDATACOPY(0, 0, 32);
                                    v88 = v90 = MEM[0] > 0;
                                }
                                require(v88, ApprovalFailed());
                            } else {
                                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                                revert(0, RETURNDATASIZE());
                            }
                        } else {
                            RETURNDATACOPY(0, 0, RETURNDATASIZE());
                            revert(0, RETURNDATASIZE());
                        }
                    }
                } else {
                    RETURNDATACOPY(0, 0, RETURNDATASIZE());
                    revert(0, RETURNDATASIZE());
                }
            }
        } else {
            v91 = v92 = 0;
            v93 = v94 = msg.data[v5 + 3] >> 240;
            v95 = v96 = MEM[64] + 32;
            while (v93 < msg.data[v5 + 5] >> 240) {
                if (!(msg.data[v93] >> 248)) {
                    if (msg.data[v93 + 3] >> 240 == 1) {
                        v91 = MEM[v2 + (msg.data[v93 + 1] >> 240)];
                    } else {
                        v91 = v97 = msg.data[(msg.data[v93 + 1] >> 240) + 1] >> (msg.data[msg.data[v93 + 1] >> 240] >> 248);
                    }
                    v93 = v93 + 5;
                } else if (msg.data[v93] >> 248 == 1) {
                    MEM[v95] = msg.data[msg.data[v93 + 1] >> 240];
                    v95 = v95 + 4;
                    v93 = v93 + 3;
                } else if (msg.data[v93] >> 248 == 2) {
                    MEM[v95] = msg.data[msg.data[v93 + 1] >> 240] >> 96;
                    v95 = v95 + 32;
                    v93 = v93 + 3;
                } else if (msg.data[v93] >> 248 == 3) {
                    MEM[v95] = msg.data[(msg.data[v93 + 1] >> 240) + 1] >> (msg.data[msg.data[v93 + 1] >> 240] >> 248);
                    v95 = v95 + 32;
                    v93 = v93 + 3;
                } else if (msg.data[v93] >> 248 == 4) {
                    CALLDATACOPY(v95, msg.data[v93 + 1] >> 240, msg.data[v93 + 3] >> 240);
                    v95 = v95 + (msg.data[v93 + 3] >> 240);
                    v93 = v93 + 5;
                } else if (msg.data[v93] >> 248 == 5) {
                    MEM[v95] = MEM[v2 + (msg.data[v93 + 1] >> 240)];
                    v95 = v95 + 32;
                    v93 = v93 + 3;
                } else if (msg.data[v93] >> 248 == 6) {
                    MEM[v95] = this;
                    v95 = v95 + 32;
                    v93 = v93 + 1;
                } else {
                    require(msg.data[v93] >> 248 == 7, InvalidSequenceType());
                    MEM[v95] = msg.sender;
                    v95 = v95 + 32;
                    v93 = v93 + 1;
                }
            }
            require(MEM[MEM[64] + 32] >> 224, InvalidSelector());
            require(MEM[MEM[64] + 32] >> 224 != 0x23b872dd, InvalidTransferFromCall());
            require(MEM[MEM[64] + 32] >> 224 != 0x51905636, InvalidTransferFromCall());
            require((msg.data[msg.data[v5 + 7] >> 240] >> 96) - this, InvalidCall());
            v98 = (msg.data[msg.data[v5 + 7] >> 240] >> 96).call(MEM[MEM[64] + 32:MEM[64] + 32 + v174d_0x2V0xf24V0xcf1V0xbafV0x913 - MEM[64] + 32], MEM[v80bf_0x0V0xe22V0xbafV0x913:v80bf_0x0V0xe22V0xbafV0x913 + msg.data[vba2_0x0V0x913 + 1] >> 240]).value(v91).gas(msg.gas);
            if (v98) {
                v1 = _SafeAdd(v1, msg.data[v5 + 1] >> 240);
            } else {
                RETURNDATACOPY(0, 0, RETURNDATASIZE());
                revert(0, RETURNDATASIZE());
            }
        }
        v5 += 9;
    }
    v99 = _SafeAdd(v2, uint16(msg.data[70] >> 240));
    require(v1 <= v99, InvalidOutput());
    v100 = @getBalanceOf_1140(varg1.word0, address(varg1.word2));
    v101 = _SafeSub(v100, v0);
    require(v101 >= varg1.word4, InsufficientAmountOut());
    v102 = v103 = address(varg1.word1);
    if (!bool(!address(varg1.word1))) {
        v102 = v104 = varg1.word6 != v3;
    }
    require(!v102, InvalidAmountIn());
    return v3, v101;
}

function @_transferOwnership_1866(address varg0) private { 
    _pendingOwner = 0;
    _owner = varg0;
    emit OwnershipTransferred(_owner, varg0);
    return ;
}

function @getBalanceOf_1140(uint256 varg0, uint256 varg1) private { 
    if (!varg1) {
        return varg0.balance;
    } else {
        v0, /* uint256 */ v1 = varg1.balanceOf(varg0).gas(msg.gas);
        require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error
        return v1;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    MEM[64] = 128;
    if (msg.data.length < 4) {
        if (!msg.data.length) {
            receive();
        }
    } else if (0x8456cb59 > function_selector >> 224) {
        if (0xd392cd9 == function_selector >> 224) {
            updateWhitelist(address,bool);
        } else if (0x158f6894 == function_selector >> 224) {
            swapWithoutSignature(bytes);
        } else if (0x3f4ba83a == function_selector >> 224) {
            unpause();
        } else if (0x5c975abb == function_selector >> 224) {
            paused();
        } else if (0x715018a6 == function_selector >> 224) {
            renounceOwnership();
        } else if (0x79ba5097 == function_selector >> 224) {
            acceptOwnership();
        }
    } else if (0x8456cb59 == function_selector >> 224) {
        pause();
    } else if (0x8da5cb5b == function_selector >> 224) {
        owner();
    } else if (0x9b19251a == function_selector >> 224) {
        whitelist(address);
    } else if (0xac9650d8 == function_selector >> 224) {
        multicall(bytes[]);
    } else if (0xe30c3978 == function_selector >> 224) {
        pendingOwner();
    } else if (0xf2fde38b == function_selector >> 224) {
        transferOwnership(address);
    }
    require(!msg.value);
    require(msg.data.length == 164, InvalidCall());
    v0 = v1 = varg1 <= 0;
    if (varg1 <= 0) {
        v0 = v2 = varg2 <= 0;
    }
    require(!v0, UniswapV3InvalidAmount());
    if (varg1 <= 0) {
    }
    @transfer_1225(v3, msg.sender, address(varg3 >> 96));
}
