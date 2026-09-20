package common

import "time"

// EventQueryTemp 通用事件即时查询的临时落库实体。
//
// 表 event_query_temp 是一张"最近一次开启 persist 开关查询"的暂存表：
// 每次前端开启 persist 查询时，服务先 TRUNCATE 再批量插入本次结果，
// 因此表中始终只反映最近一次的查询快照（非累积历史）。
//
// 不参与 getEvent 事件收集/去重机制（无 DataFormat/ShouldReplace），
// 仅作为 gorm 入库载体。主键自增 id，不复用 (chain_id, tx_hash) 复合键：
// 用户选"不去重"时同一 txHash 可能对应多条事件，需要独立行承载。
type EventQueryTemp struct {
	ID          int64     `gorm:"primary_key;column:id" json:"-"`
	ChainID     int16     `gorm:"column:chain_id;type:smallint;index:idx_chain" json:"chainId"`
	BlockNumber uint64    `gorm:"column:block_number;type:bigint unsigned" json:"blockNumber"`
	TxHash      string    `gorm:"column:tx_hash;type:varchar(66)" json:"txHash"`
	Address     string    `gorm:"column:address;type:varchar(66)" json:"address"`
	Topic0      string    `gorm:"column:topic0;type:varchar(66)" json:"topic0"`
	Topic1      string    `gorm:"column:topic1;type:varchar(66)" json:"topic1"`
	Topic2      string    `gorm:"column:topic2;type:varchar(66)" json:"topic2"`
	Topic3      string    `gorm:"column:topic3;type:varchar(66)" json:"topic3"`
	Data        string    `gorm:"column:data;type:text" json:"data"`
	RepeatCount int       `gorm:"column:repeat_count;type:int" json:"repeatCount"`
	// Status 用户维护的处理状态：初始 NULL（指针 nil 入库即 NULL），
	// 不参与链上查询，仅供临时表筛选
	Status    *int      `gorm:"column:status;type:tinyint" json:"status"`
	CreatedAt time.Time `gorm:"column:created_at;type:datetime" json:"-"`
}

// TableName 设置表名
func (EventQueryTemp) TableName() string {
	return "event_query_temp"
}

// 建表语句（手动建表参考；服务启动时也会 AutoMigrate 幂等建表）：
//
//	CREATE TABLE IF NOT EXISTS event_query_temp (
//	  id BIGINT NOT NULL AUTO_INCREMENT,
//	  chain_id SMALLINT NOT NULL,
//	  block_number BIGINT UNSIGNED NOT NULL DEFAULT 0,
//	  tx_hash VARCHAR(66) NOT NULL,
//	  address VARCHAR(66) NOT NULL DEFAULT '',
//	  topic0 VARCHAR(66) NOT NULL DEFAULT '',
//	  topic1 VARCHAR(66) NOT NULL DEFAULT '',
//	  topic2 VARCHAR(66) NOT NULL DEFAULT '',
//	  topic3 VARCHAR(66) NOT NULL DEFAULT '',
//	  data TEXT,
//	  repeat_count INT NOT NULL DEFAULT 0,
//	  status TINYINT DEFAULT NULL,
//	  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
//	  PRIMARY KEY (id),
//	  KEY idx_chain (chain_id)
//	) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
