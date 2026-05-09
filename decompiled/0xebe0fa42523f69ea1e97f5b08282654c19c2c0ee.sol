// Decompiled by library.dedaub.com
// 2025.12.13 11:54 UTC
// Compiled using the solidity compiler version 0.8.26
// Warning: 84.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _msgSender; // TRANSIENT_STORAGE[0xe87e1788ebd9ed6a7e63c70a374cd3283e41cad601d21fbe27863899ed4a708]



function fun_permit2TransferFrom_1669(address varg0, address varg1, address varg2, address varg3) private { 
    require((address(0x22d473030f116ddee9f6b43ac78ba3)).code.size);
    v0 = address(0x22d473030f116ddee9f6b43ac78ba3).transferFrom(varg1, varg2, varg3, varg0).gas(msg.gas);
    require(v0, MEM[64], RETURNDATASIZE());
    if (v0) {
        require(!((MEM[64] > uint64.max) | (MEM[64] < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
        MEM[64] = MEM[64];
    } else {
        return ;
    }
}

function fun_safeTransferETH(uint256 varg0, uint256 varg1) private { 
    v0 = varg0.call().value(varg1).gas(msg.gas);
    require(v0, Error('ETH_TRANSFER_FAILED'));
    return ;
}

function fun_safeTransfer(uint256 varg0, uint256 varg1, uint256 varg2) private { 
    v0 = varg0.transfer(varg1, varg2).gas(msg.gas);
    require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v0, Error('TRANSFER_FAILED'));
    return ;
}

function poolManager() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(0x4444c5dc75cb358380d2e3de08a90);
}

function msgSender() public nonPayable { 
    require(msg.data.length - 4 >= 0);
    return address(_msgSender);
}

function swapCallback(uint256 amountToPay, uint256 amountOut, bytes data) public nonPayable { 
    require(msg.data.length - 4 >= 96);
    require(data <= uint64.max);
    require(4 + data + 31 < msg.data.length);
    require(msg.data[4 + data] <= uint64.max);
    require(v0.data <= msg.data.length);
    v1 = v2 = !amountToPay;
    if (bool(amountToPay)) {
        v1 = v3 = !amountOut;
    }
    require(!v1);
    require(4 + data + 32 + msg.data[4 + data] - (4 + data + 32) >= 64);
    require(!(address(data.word1) - data.word1));
    require(!(address(data.word2) - data.word2));
    v4 = v5 = address(data.word2) != this;
    if (v5) {
        v4 = v6 = address(data.word2) != address(_msgSender);
    }
    require(!v4);
    v7 = v8 = 32;
    if (this - address(data.word2)) {
        require(amountToPay <= uint160.max, UnsafeCast());
        fun_permit2TransferFrom_1669(address(data.word1), address(data.word2), msg.sender, address(amountToPay));
    } else {
        v7 = v9 = 4658;
        if (address(data.word1)) {
            if (amountToPay == int256.min) {
                v10, v11 = address(data.word1).balanceOf(this).gas(msg.gas);
                require(v10, MEM[64], RETURNDATASIZE());
                v11 = v12 = 0;
                if (v10) {
                    v13 = v14 = 32;
                    if (32 > RETURNDATASIZE()) {
                        v13 = v15 = RETURNDATASIZE();
                        require(!((MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + (v15 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0);
                    } else {
                        require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
                        MEM[64] = MEM[64] + 32;
                    }
                    require(MEM[64] + v13 - MEM[64] >= 32);
                }
            }
            fun_safeTransfer(address(data.word1), msg.sender, v11);
        } else {
            fun_safeTransferETH(msg.sender, amountToPay);
        }
    }
}

function unlockCallback(bytes rawData) public nonPayable { 
    require(msg.data.length - 4 >= 32);
    require(rawData <= uint64.max);
    require(4 + rawData + 31 < msg.data.length);
    require(msg.data[4 + rawData] <= uint64.max);
    require(v0.data <= msg.data.length);
    require(!(msg.sender - address(0x4444c5dc75cb358380d2e3de08a90)), NotPoolManager());
    v1 = v2 = rawData.word2 ^ (uint32(rawData.word3) + 31 & 0xffffffe0) + 96 | rawData.word1 ^ 0x40;
    v3 = v4 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96] << 5 & 0x1fffffffe0;
    v5 = v6 = 0;
    while (v5 < v4) {
        v1 = msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] ^ v3 | v1;
        v3 = (msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v5 + 128] + 128] + 31 & 0xffffffe0) + v3 + 32;
        v5 = v5 + 32;
    }
    require(!((msg.data[4 + rawData] + (4 + rawData + 32) < 4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + v3 + 128) | v1), SliceOutOfBounds());
    require(!(uint32(rawData.word3) - uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96])), InputLengthMismatch());
    if (0 < uint32(rawData.word3)) {
        require(0 < uint32(rawData.word3), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(0 < uint32(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 96]), Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128] < msg.data.length - (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128) - 31);
        require(msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]] <= uint64.max);
        require(32 + (4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]) <= msg.data.length - msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]]);
        if ((rawData.word4 >> 248) - 7) {
            if ((rawData.word4 >> 248) - 6) {
                if ((rawData.word4 >> 248) - 11) {
                    if ((rawData.word4 >> 248) - 12) {
                        if ((rawData.word4 >> 248) - 15) {
                            require(rawData.word4 >> 248 == 14, UnsupportedAction(rawData.word4 >> 248));
                            v7 = v8 = 19937;
                        } else {
                            v9 = v10 = 19751;
                        }
                    } else {
                        v9 = v11 = 19621;
                    }
                    require(64 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]], SliceOutOfBounds());
                    // Unknown jump to Block 0x50f. Refer to 3-address code (TAC);
                } else {
                    v7 = v12 = 19578;
                }
                require(96 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]], SliceOutOfBounds());
                // Unknown jump to Block 0x50f. Refer to 3-address code (TAC);
            } else {
                require(320 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]], SliceOutOfBounds());
                // Unknown jump to Block 0x50f. Refer to 3-address code (TAC);
            }
        } else {
            require(160 <= msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128 + msg.data[4 + rawData + 32 + (uint32(rawData.word3) + 31 & 0xffffffe0) + 128]], SliceOutOfBounds());
            // Unknown jump to Block 0x50f. Refer to 3-address code (TAC);
        }
    }
    require(!((MEM[64] + 32 > uint64.max) | (MEM[64] + 32 < MEM[64])), Panic(65)); // failed memory allocation (too much memory)
    MEM[MEM[64]] = 32;
    MEM[MEM[64] + 32] = 0;
    MCOPY(MEM[64] + 32 + 32, MEM[64] + 32, 0);
    MEM[MEM[64] + 32 + 32] = 0;
}

function execute(bytes commands, bytes[] inputs, uint256 deadline) public payable { 
    require(msg.data.length - 4 >= 96);
    require(commands <= uint64.max);
    require(4 + commands + 31 < msg.data.length);
    require(commands.length <= uint64.max);
    require(4 + commands + commands.length + 32 <= msg.data.length);
    require(inputs <= uint64.max);
    require(4 + inputs + 31 < msg.data.length);
    require(inputs.length <= uint64.max);
    require((inputs.length << 5) + (4 + inputs) + 32 <= msg.data.length);
    require(block.timestamp <= deadline, TransactionDeadlinePassed());
    if (this == msg.sender) {
        require(!(inputs.length - commands.length), LengthMismatch());
        if (0 < commands.length) {
            require(0 < commands.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(0 < inputs.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(inputs[0] < msg.data.length - inputs.data - 31);
            require(msg.data[inputs.data + inputs[0]] <= uint64.max);
            require(32 + (inputs.data + inputs[0]) <= msg.data.length - msg.data[inputs.data + inputs[0]]);
            // Unknown jump to Block 0x200xa3. Refer to 3-address code (TAC);
        }
        exit;
    } else {
        require(!address(_msgSender), ContractLocked());
        _msgSender = msg.sender;
        require(!(inputs.length - commands.length), LengthMismatch());
        if (0 < commands.length) {
            require(0 < commands.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(0 < inputs.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(inputs[0] < msg.data.length - inputs.data - 31);
            require(msg.data[inputs.data + inputs[0]] <= uint64.max);
            require(32 + (inputs.data + inputs[0]) <= msg.data.length - msg.data[inputs.data + inputs[0]]);
            // Unknown jump to Block 0x2590xa3. Refer to 3-address code (TAC);
        }
        _msgSender = 0;
        exit;
    }
}

function execute(bytes commands, bytes[] inputs) public payable { 
    require(msg.data.length - 4 >= 64);
    require(commands <= uint64.max);
    require(4 + commands + 31 < msg.data.length);
    require(commands.length <= uint64.max);
    require(4 + commands + commands.length + 32 <= msg.data.length);
    require(inputs <= uint64.max);
    require(4 + inputs + 31 < msg.data.length);
    require(inputs.length <= uint64.max);
    require((inputs.length << 5) + (4 + inputs) + 32 <= msg.data.length);
    if (this == msg.sender) {
        require(!(inputs.length - commands.length), LengthMismatch());
        if (0 < commands.length) {
            require(0 < commands.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(0 < inputs.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(inputs[0] < msg.data.length - inputs.data - 31);
            require(msg.data[inputs.data + inputs[0]] <= uint64.max);
            require(32 + (inputs.data + inputs[0]) <= msg.data.length - msg.data[inputs.data + inputs[0]]);
            // Unknown jump to Block 0x200xa8. Refer to 3-address code (TAC);
        }
        exit;
    } else {
        require(!address(_msgSender), ContractLocked());
        _msgSender = msg.sender;
        require(!(inputs.length - commands.length), LengthMismatch());
        if (0 < commands.length) {
            require(0 < commands.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(0 < inputs.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice
            require(inputs[0] < msg.data.length - inputs.data - 31);
            require(msg.data[inputs.data + inputs[0]] <= uint64.max);
            require(32 + (inputs.data + inputs[0]) <= msg.data.length - msg.data[inputs.data + inputs[0]]);
            // Unknown jump to Block 0x2590xa8. Refer to 3-address code (TAC);
        }
        _msgSender = 0;
        exit;
    }
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__( function_selector) public payable { 
    MEM[64] = 128;
    if (msg.data.length >= 4) {
        if (0x23a69e75 != function_selector >> 224) {
            if (0x24856bc3 == function_selector >> 224) {
                execute(bytes,bytes[]);
            } else if (0x3593564c == function_selector >> 224) {
                execute(bytes,bytes[],uint256);
            } else if (0x91dd7346 == function_selector >> 224) {
                unlockCallback(bytes);
            } else if (0x923b8a2a == function_selector >> 224) {
                swapCallback(uint256,uint256,bytes);
            } else if (0xd737d0c7 == function_selector >> 224) {
                msgSender();
            } else if (0xdc4c90d3 == function_selector >> 224) {
                poolManager();
            } else if (0xfa461e33 != function_selector >> 224) {
            }
        }
    }
    require(!msg.data.length);
    v0 = v1 = msg.sender != address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);
    if (v1) {
        v0 = v2 = msg.sender != address(0x4444c5dc75cb358380d2e3de08a90);
    }
    require(!v0, InvalidEthSender());
}
