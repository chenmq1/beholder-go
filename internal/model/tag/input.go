package tag

// Input 待处理地址任务实体（tag 包）
//
// 字段：
//   - chainId：链编号（1=ethereum, 2=bsc, 3=polygon, 4=arbitrum, 5=base, 6=optimism）
//   - address：目标地址（去重键）
//   - status：处理状态（int，业务自定义：如 0=待处理）
//   - input：调用输入数据（text，如 ABI 编码的 calldata）
//
// 主键 = (chain_id, address)：同链同地址唯一，冲突时按业务更新 status/input。
//
// 建表语句：
//
// CREATE TABLE IF NOT EXISTS input (
//     chain_id smallint     NOT NULL COMMENT '链编号',
//     address  varchar(66)  NOT NULL COMMENT '目标地址（key）',
//     status   int          NOT NULL DEFAULT 0 COMMENT '处理状态',
//     input    text         COMMENT '调用输入数据',
//     PRIMARY KEY (chain_id, address)
// ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='tag 地址任务表';
type Input struct {
	ChainID int16  `gorm:"primary_key;column:chain_id" json:"chainId"`
	Address string `gorm:"primary_key;column:address;type:varchar(66)" json:"address"`
	Status  int    `gorm:"column:status;type:int;not null;default:0" json:"status"`
	Input   string `gorm:"column:input;type:text" json:"input"`
}

// TableName 设置表名
func (Input) TableName() string {
	return "input"
}
