// Decompiled by library.dedaub.com
// 2026.04.09 17:10 UTC
// Warning: 78.0% of the contract's code is inferred to be dead code.


// Data structures and variables inferred from the use of storage instructions
uint256 _uniswapV2Call; // TRANSIENT_STORAGE[0x0]



function orionpoolV2Call(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function unlockCallback(bytes rawData) public payable { 
    require(!(0x4444c5dc75cb358380d2e3de08a90 ^ msg.sender));
    v0 = msg.data.length;
}

function 0x801d49f8(uint256 varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function linkswapCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function 0x8d8adec0(uint256 varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function uniswapV2Call(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function uniswapV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
    if (varg0 <= varg1) {
    }
}

function pancakeV3SwapCallback(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
    if (varg0 <= varg1) {
    }
}

function pancakeCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function croDefiSwapCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function swapCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function DXswapCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

function owner() public payable { 
    return 0x7c1fb21f233b1bce1e175725beb8f0045facd8bf;
}

function 0xdbdeb76b() public payable { 
    return 0xd40209b34804db967caa53378eb1769c7607eb67;
}

function selectors() public payable { 
    return 32, 78, 15234, 15302, 15062, 15144, 5712, 5797, 5882, 5953, 6024, 6106, 6188, 6263, 6338, 6408, 6478, 6563, 6648, 6759, 6856, 6974, 7078, 7196, 8156, 8274, 8378, 8503, 8614, 8739, 8850, 8961, 9058, 9184, 7300, 7411, 7508, 7626, 7730, 7836, 7928, 8049, 9296, 9341, 9407, 9473, 9580, 9628, 9934, 10245, 10548, 10865, 11176, 11474, 11786, 12089, 12406, 12761, 13068, 13381, 13628, 13889, 14069, 14200, 14433, 14680, 14864, 4594, 4727, 4853, 4994, 5105, 5168, 5231, 5293, 5363, 5432, 5495, 5557, 5635;
}

function apeCall(address varg0, uint256 varg1) public payable { 
    require(!(msg.sender ^ _uniswapV2Call));
}

// Note: The function selector is not present in the original solidity code.
// However, we display it for the sake of completeness.

function __function_selector__(bytes4 function_selector, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6) public payable { 
    if (!msg.data.length) {
        exit;
    } else if (0x7c1fb21f233b1bce1e175725beb8f0045facd8bf == msg.sender) {
        if (0 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v0 = msg.data.length;
        } else if (7 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (10 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (13 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (1 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v1 = msg.data.length;
        } else if (8 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (11 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (14 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
        } else if (2 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v2 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v2);
            v3 = msg.data.length;
        } else if (9 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v4 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v4);
        } else if (12 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v5 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v5);
        } else if (15 == (byte(function_selector, 0x0))) {
            require(uint8(block.number) == (byte(function_selector, 0x1)));
            v6 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(this).gas(msg.gas);
            require(v6);
        } else if (3 == (byte(function_selector, 0x0))) {
            require(0x7c1fb21f233b1bce1e175725beb8f0045facd8bf == msg.sender);
            require(this.balance >= varg1);
            v7 = 0x7c1fb21f233b1bce1e175725beb8f0045facd8bf.call().value(varg1).gas(msg.gas);
            require(v7);
            exit;
        } else if (4 == (byte(function_selector, 0x0))) {
            require(0x7c1fb21f233b1bce1e175725beb8f0045facd8bf == msg.sender);
            v8 = varg1.transfer(0x7c1fb21f233b1bce1e175725beb8f0045facd8bf, varg6).gas(msg.gas);
            require(v8);
            exit;
        } else if (5 == (byte(function_selector, 0x0))) {
            require(0x7c1fb21f233b1bce1e175725beb8f0045facd8bf == msg.sender);
            v9 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(varg1).gas(msg.gas);
            require(v9);
            v10 = 0x7c1fb21f233b1bce1e175725beb8f0045facd8bf.call().value(varg6).gas(msg.gas);
            require(v10);
            exit;
        } else {
            require(16 == (byte(function_selector, 0x0)));
            v11 = v12 = 1;
            while (msg.data[64 + v11]) {
                v13 = msg.data[64 + v11].approve(msg.data[v11], msg.data[32 + v11]).gas(msg.gas);
                require(v13);
                v11 += 96;
            }
            exit;
        }
    } else {
        if (0x7c1fb21f233b1bce1e175725beb8f0045facd8bf != tx.origin) {
            require(0xd40209b34804db967caa53378eb1769c7607eb67 != msg.sender);
            if (0xd40209b34804db967caa53378eb1769c7607eb67 != tx.origin) {
                if (0x8da5cb5b == function_selector >> 224) {
                    owner();
                } else if (0xdbdeb76b == function_selector >> 224) {
                    0xdbdeb76b();
                } else {
                    require(0x6e25b978 == function_selector >> 224);
                    selectors();
                }
            }
        }
        if (0x10d1e85c == function_selector >> 224) {
            uniswapV2Call(address,uint256,uint256,bytes);
        } else if (0xfa461e33 == function_selector >> 224) {
            uniswapV3SwapCallback(int256,int256,bytes);
        } else if (0x91dd7346 == function_selector >> 224) {
            unlockCallback(bytes);
        } else if (0x23a69e75 == function_selector >> 224) {
            pancakeV3SwapCallback(int256,int256,bytes);
        } else if (0x84800812 == function_selector >> 224) {
            pancakeCall(address,uint256,uint256,bytes);
        } else if (0x6c813d29 == function_selector >> 224) {
            croDefiSwapCall(address,uint256,uint256,bytes);
        } else if (0xdf9aee68 == function_selector >> 224) {
            swapCall(address,uint256,uint256,bytes);
        } else if (0x78b94ae6 == function_selector >> 224) {
            DXswapCall(address,uint256,uint256,bytes);
        } else if (0xbecda363 == function_selector >> 224) {
            apeCall(address,uint256,uint256,bytes);
        } else if (0x48639c9d == function_selector >> 224) {
            orionpoolV2Call(address,uint256,uint256,bytes);
        } else if (0x801d49f8 == function_selector >> 224) {
            0x801d49f8();
        } else if (0x1bd7dbe7 == function_selector >> 224) {
            linkswapCall(address,uint256,uint256,bytes);
        } else {
            require(0x8d8adec0 == function_selector >> 224);
            0x8d8adec0();
        }
    }
}
