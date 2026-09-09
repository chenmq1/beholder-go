package tag

// TokenAlias 代币地址别名表：前端展示 token0/token1 时，命中则用简短别名替代完整地址。
//
// 字段：
//   - chain_id：链编号（1=ethereum, 2=bsc, 3=polygon, 4=arbitrum, 5=base, 6=optimism）
//   - address：代币地址（主键，全局唯一）
//   - alias：别名（varchar(10)，如 WBNB/USDT）
//   - decimals：代币精度（smallint；ERC20 decimals()）
//
// 注意：列名用 decimals 而非 decimal——DECIMAL 是 MySQL 数据类型保留字，
// 直接做列名需要处处加反引号；decimals 也是 ERC20 的标准命名。
//
// 建表 + 种子数据（BSC 常用代币）：
//
// CREATE TABLE IF NOT EXISTS token_alias (
//     chain_id smallint     NOT NULL COMMENT '链编号',
//     address  varchar(66)  NOT NULL COMMENT '代币地址（主键）',
//     alias    varchar(10)  NOT NULL COMMENT '别名',
//     decimals smallint     NOT NULL DEFAULT 18 COMMENT '代币精度',
//     PRIMARY KEY (address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='代币地址别名表';
//
// INSERT IGNORE INTO token_alias (chain_id, address, alias, decimals) VALUES
//   (2, '0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c', 'WBNB', 18),
//   (2, '0x55d398326f99059ff775485246999027b3197955', 'USDT', 18),
//   (2, '0x205812cdbed920aff76c6580abd681a46d11efc7', 'QQQB', 18);
type TokenAlias struct {
	ChainID  int16  `gorm:"column:chain_id;type:smallint" json:"chainId"`
	Address  string `gorm:"primary_key;column:address;type:varchar(66)" json:"address"`
	Alias    string `gorm:"column:alias;type:varchar(10)" json:"alias"`
	Decimals int16  `gorm:"column:decimals;type:smallint" json:"decimals"`
}

// TableName 设置表名
func (TokenAlias) TableName() string {
	return "token_alias"
}
