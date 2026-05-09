#修复数据库中二进制代码字段没正确获取导致乱码问题
#从数据库里获取记录的sql见第67行。自行改动
#如果解压后开头不是0x，或者不能正常解压，说明是乱码，需要修复
#修复时仅下载binary_code，不下载verified和decompiled
import gzip
import pymysql
import web3
from web3 import Web3

# 数据库配置
DB_CONFIG = {
    'host': 'beholder',
    'port': 3306,
    'user': 'ryo',
    'password': 'sdsau',
    'database': 'beholder',
    'charset': 'utf8mb4'
}

# RPC配置（从项目配置中提取）
RPC_ENDPOINTS = {
    1: 'https://rpc.ankr.com/eth/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2',   # Ethereum
    2: 'https://rpc.ankr.com/bsc/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2',    # BSC
    3: 'https://rpc.ankr.com/polygon/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2', # Polygon
    4: 'https://rpc.ankr.com/arbitrum/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2',# Arbitrum
    5: 'https://rpc.ankr.com/base/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2',    # Base
    6: 'https://rpc.ankr.com/optimism/235c573e8082e4aa79bfe5ce70371fd6b6b1ecf90e899d1803e1af16fed952c2' # Optimism
}

def decompress_gzip(compressed_data):
    """解压缩GZIP数据"""
    try:
        decompressed = gzip.decompress(compressed_data)
        return decompressed.decode('utf-8')
    except Exception as e:
        print(f"解压缩失败: {e}")
        return None

def get_binary_code(address, chain_id):
    """通过RPC获取合约二进制代码"""
    rpc_url = RPC_ENDPOINTS.get(chain_id)
    if not rpc_url:
        print(f"未知链ID: {chain_id}")
        return None
    
    try:
        w3 = Web3(Web3.HTTPProvider(rpc_url))
        
        if not w3.is_connected():
            print(f"无法连接到链 {chain_id}")
            return None
        
        address = Web3.to_checksum_address(address)
        code = w3.eth.get_code(address)
        return '0x' + code.hex()
    
    except Exception as e:
        print(f"获取代码失败 {address} (chain {chain_id}): {e}")
        return None

def main():
    # 连接数据库
    try:
        conn = pymysql.connect(**DB_CONFIG)
        cursor = conn.cursor()
        
        # 执行查询
        sql = """
            SELECT ts.address, ts.code_got, ts.status, cc.binary_code, ts.chain_id
            FROM contract_code AS cc
            JOIN three_sender AS ts ON ts.address = cc.address 
            WHERE ts.status > 200 AND ts.code_got <> 1 AND ts.code_got <> 8
        """
        cursor.execute(sql)
        results = cursor.fetchall()
        
        print(f"查询到 {len(results)} 条记录")
        print("=" * 80)
        
        # 存储需要重新获取的地址
        addresses_to_fix = []
        
        for row in results:
            address = row[0]
            code_got = row[1]
            status = row[2]
            binary_code = row[3]
            chain_id = row[4] if row[4] else 1
            
            # 解压缩binary_code
            decompressed = decompress_gzip(binary_code)
            
            if decompressed is None:
                print(f"[地址] {address}")
                print(f"  code_got: {code_got}, status: {status}, chain_id: {chain_id}")
                print(f"  binary_code: 解压缩失败")
                addresses_to_fix.append((address, chain_id))
                print()
                continue
            
            # 检查是否以0x开头
            if not decompressed.startswith('0x'):
                print(f"[地址] {address}")
                print(f"  code_got: {code_got}, status: {status}, chain_id: {chain_id}")
                print(f"  binary_code: 不以0x开头 (长度: {len(decompressed)})")
                print(f"  开头内容: {decompressed[:50]}...")
                addresses_to_fix.append((address, chain_id))
                print()
        
        print("=" * 80)
        print(f"\n共发现 {len(addresses_to_fix)} 个需要修复的地址")
        
        # 重新获取binary code
        if addresses_to_fix:
            print("\n重新获取binary code:")
            print("-" * 60)
            
            for address, chain_id in addresses_to_fix:
                print(f"正在获取 {address} (chain {chain_id})...")
                new_code = get_binary_code(address, chain_id)
                
                if new_code:
                    print(f"  成功: {new_code[:50]}...")
                    
                    # 压缩新代码并更新数据库
                    compressed_new = gzip.compress(new_code.encode('utf-8'))
                    update_sql = """
                        UPDATE contract_code 
                        SET binary_code = %s 
                        WHERE address = %s
                    """
                    cursor.execute(update_sql, (compressed_new, address))
                    conn.commit()
                    print(f"  已更新数据库")
                else:
                    print(f"  失败")
                
                print()
        
        cursor.close()
        conn.close()
        
    except Exception as e:
        print(f"数据库操作失败: {e}")

if __name__ == "__main__":
    main()