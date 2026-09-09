package watchlist

// FunctionCall 链上函数调用监控配置（watchlist）
//
// 用途：前端维护一个「要监控的链上函数调用」清单，服务逐条调用合约方法，
// 把返回值与预期值比对，刷新 lastValue / lastBlock。
//
// 字段：
//   - chain_id：链编号（1=ethereum, 2=bsc, 3=polygon, 4=arbitrum, 5=base, 6=optimism）
//   - address：合约地址
//   - function_name：函数名（如 balanceOf / getReserves）
//   - arg_types：参数类型串，逗号分隔（如 address,uint256）；无参填空串
//   - argument_str：参数值串，逗号分隔（如 0x..,1000000000000000000）；与 arg_types 按位置对应
//   - return_value_type：返回值类型（如 uint256 / address / (uint256,uint256)）
//   - expect_return_value：期望返回值（字符串形式，用于前端展示比对结果）
//   - last_value：最近一次实际返回值（服务刷新时写入）
//   - last_block：最近一次调用的区块号（服务刷新时写入）
//   - comment：备注
//
// 无主键：同一合约同一函数可以配置多组参数，多行并存；按 (chain_id, address, function_name)
// 顺序扫描即可。如需精确去重可自行加唯一索引。
//
// 建表语句：
//
// CREATE TABLE IF NOT EXISTS function_call (
//     id                 int auto_increment NOT NULL COMMENT '自增主键，便于定位行',
//     chain_id           smallint          NOT NULL COMMENT '链编号',
//     address            varchar(66)       NOT NULL COMMENT '合约地址',
//     function_name      varchar(128)      NOT NULL COMMENT '函数名',
//     arg_types          varchar(255)      NOT NULL DEFAULT '' COMMENT '参数类型，逗号分隔',
//     argument_str       varchar(1024)     NOT NULL DEFAULT '' COMMENT '参数值，逗号分隔',
//     return_value_type  varchar(255)      NOT NULL DEFAULT '' COMMENT '返回值类型',
//     expect_return_value varchar(1024)    NOT NULL DEFAULT '' COMMENT '期望返回值',
//     last_value         varchar(1024)     NOT NULL DEFAULT '' COMMENT '最近返回值',
//     last_block         bigint            NOT NULL DEFAULT 0  COMMENT '最近调用区块号',
//     comment            varchar(255)      NOT NULL DEFAULT '' COMMENT '备注',
//     PRIMARY KEY (id)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='链上函数调用监控清单';
type FunctionCall struct {
	ID                int    `gorm:"primary_key;column:id" json:"id"`
	ChainID           int    `gorm:"column:chain_id;type:smallint" json:"chainId"`
	Address           string `gorm:"column:address;type:varchar(66)" json:"address"`
	FunctionName      string `gorm:"column:function_name;type:varchar(128)" json:"functionName"`
	ArgTypes          string `gorm:"column:arg_types;type:varchar(255)" json:"argTypes"`
	ArgumentStr       string `gorm:"column:argument_str;type:varchar(1024)" json:"argumentStr"`
	ReturnValueType   string `gorm:"column:return_value_type;type:varchar(255)" json:"returnValueType"`
	ExpectReturnValue string `gorm:"column:expect_return_value;type:varchar(1024)" json:"expectReturnValue"`
	LastValue         string `gorm:"column:last_value;type:varchar(1024)" json:"lastValue"`
	LastBlock         uint64 `gorm:"column:last_block;type:bigint" json:"lastBlock"`
	Comment           string `gorm:"column:comment;type:varchar(255)" json:"comment"`
}

// TableName 设置表名
func (FunctionCall) TableName() string {
	return "function_call"
}
