package getevent

import (
	"errors"
	"fmt"
	"math/big"
	"reflect"
	"regexp"
	"strconv"
	"strings"
	"sync"

	"github.com/ethereum/go-ethereum"
	"github.com/ethereum/go-ethereum/accounts/abi"
	"github.com/ethereum/go-ethereum/common"
	"github.com/ethereum/go-ethereum/core/types"
	"github.com/jinzhu/gorm"
)

// 事件模型机制：
//
// eventModel 是一个结构体（如 ApprovalEvent），通过 json tag 声明每个字段来自事件的哪个部分：
//
//	topicN   - 第 N 个 topic；N=0 为完整事件签名哈希（66位），N>=1 按地址处理（取后 20 字节，小写 0x 开头）
//	address  - 发出事件的合约地址（小写 0x 开头）
//	txHash   - 交易哈希
//	blockNumber - 事件所在区块号（uint64）
//	data     - 事件 data 全部字节（hex 字符串）
//	data[N]  - data 按 DataFormat 声明的 ABI 类型解码后的第 N 个字段；
//	           模型未实现 DataFormat() 时退化为按 32 字节字切分（仅适用于全静态类型）
//
// 除 TableName() 外，模型可实现 DataFormat() string 声明 data 部分的 ABI 类型序列，
// 如 "(address,uint256,address)"（括号可省略）。data[N] 即解码后第 N 个字段的值，
// 动态类型（string/bytes/数组）由 go-ethereum abi 包按规范解码。
//
// 收集阶段（统一 process）：以模型的主键字段（gorm primary_key，去除 chain_id）的值
// 作为去重键，map 的 value 保存未处理的原始事件（types.Log），首见保留；
// 模型实现 ShouldReplace(existing, incoming *types.Log) bool 时（如 Sync 事件），
// 键已存在则由该函数决定是否用新事件替换（如保留 blockNumber 最新的）。
//
// 入库阶段（PostProcess）：按 json tag 将原始事件转换为结构体字段——数值字段
// （big.Int / *big.Int / int64 / uint64）自动从解码值转换，然后 INSERT ... ON DUPLICATE KEY 入库：
//   - 有 repeat_count 列时，冲突累加计数；
//   - 有 block_number 列时，仅当新事件 block_number >= 库中时才覆盖业务列（保留最新）；
//   - 其余冲突无动作（等价 INSERT IGNORE）。
//
// 无 json 来源的普通列（json tag 为 "-" 或空，如 token1/token2）随 INSERT 写入
// 零值（指针字段为 NULL），冲突时不更新。
// 入库参数统一规范化：big.Int → 十进制字符串（uint256 超出 BIGINT 范围，存 VARCHAR）、
// address → 小写 hex、bool → 1/0、bytes → hex 字符串。

var (
	topicSourceRe    = regexp.MustCompile(`^topic(\d+)$`)
	dataWordSourceRe = regexp.MustCompile(`^data\[(\d+)\]$`)
	bigIntType       = reflect.TypeOf(big.Int{})
	addressType      = reflect.TypeOf(common.Address{})
)

// dataFormatter 事件 data 的 ABI 类型声明接口（如 "(address,uint256,address)"）
type dataFormatter interface {
	DataFormat() string
}

// logReplacer 事件替换策略接口：收集去重键已存在时，由模型决定是否用新事件
// 替换（如 Sync 事件保留 blockNumber 最新的）。配合 block_number 列可实现
// 数据库层面的条件覆盖。
type logReplacer interface {
	ShouldReplace(existing *types.Log, incoming *types.Log) bool
}

type sourceKind int

const (
	srcTopic sourceKind = iota
	srcAddress
	srcTxHash
	srcBlockNumber
	srcData
	srcNone // 无事件来源的普通列（INSERT 写零值/NULL）
)

type planField struct {
	index    int        // 结构体字段下标
	column   string     // gorm 列名
	source   sourceKind // 来源
	topicIdx int        // srcTopic 时的 topic 序号
	wordIdx  int        // srcData 时的字段序号，-1 表示整个 data
}

type eventPlan struct {
	structType     reflect.Type
	tableName      string
	insertFields   []planField                              // 有 json 来源的字段（入库列）
	plainFields    []planField                              // 无事件来源的普通列（INSERT 写零值/NULL，冲突不更新）
	chainIdIdx     int                                      // chain_id 字段下标，-1 表示无
	pkFields       []planField                              // 主键字段（不含 chain_id），用于去重
	repeatCountIdx int                                      // repeat_count 字段下标，-1 表示无
	blockNumberCol string                                   // block_number 列名（json:"blockNumber" 字段），空表示无
	replaceFn      func(existing, incoming *types.Log) bool // ShouldReplace 策略，nil = 首见保留
	dataTypes      []abi.Type                               // DataFormat 解析结果，nil 表示未声明
	dataArgs       abi.Arguments                            // dataTypes 非空时预构造，用于 Unpack
}

// buildEventPlan 通过反射解析事件模型的结构定义
func buildEventPlan(model interface{}) (*eventPlan, error) {
	if model == nil {
		return nil, fmt.Errorf("eventModel 不能为 nil")
	}
	t := reflect.TypeOf(model)
	if t.Kind() == reflect.Ptr {
		t = t.Elem()
	}
	if t.Kind() != reflect.Struct {
		return nil, fmt.Errorf("eventModel 必须是结构体类型，实际为 %s", t.Kind())
	}

	tableName := ""
	if tn, ok := model.(interface{ TableName() string }); ok {
		tableName = tn.TableName()
	}
	if tableName == "" {
		return nil, fmt.Errorf("模型 %s 需要实现 TableName() string", t.Name())
	}

	plan := &eventPlan{structType: t, tableName: tableName, chainIdIdx: -1, repeatCountIdx: -1}

	// 解析 DataFormat（若实现）
	if df, ok := model.(dataFormatter); ok {
		types, err := parseDataFormat(df.DataFormat())
		if err != nil {
			return nil, fmt.Errorf("模型 %s DataFormat: %v", t.Name(), err)
		}
		plan.dataTypes = types
		if len(types) > 0 {
			args := make(abi.Arguments, len(types))
			for i, at := range types {
				args[i] = abi.Argument{Name: fmt.Sprintf("field%d", i), Type: at, Indexed: false}
			}
			plan.dataArgs = args
		}
	}

	for i := 0; i < t.NumField(); i++ {
		sf := t.Field(i)

		column := ""
		isPK := false
		for _, part := range strings.Split(sf.Tag.Get("gorm"), ";") {
			part = strings.TrimSpace(part)
			if part == "primary_key" {
				isPK = true
			} else if strings.HasPrefix(part, "column:") {
				column = strings.TrimPrefix(part, "column:")
			}
		}
		if column == "" {
			column = gorm.ToDBName(sf.Name)
		}

		// chain_id 字段不入事件映射，入库时单独赋值
		if column == "chain_id" {
			plan.chainIdIdx = i
			continue
		}

		// repeat_count 列：由收集器计数，无事件来源
		if column == "repeat_count" {
			plan.repeatCountIdx = i
			continue
		}

		jsonTag := strings.TrimSpace(strings.Split(sf.Tag.Get("json"), ",")[0])
		if jsonTag == "" || jsonTag == "-" {
			// 无事件来源的普通列（如 token1/token2）：随 INSERT 写入零值（指针字段为 NULL），冲突不更新
			plan.plainFields = append(plan.plainFields, planField{index: i, column: column, source: srcNone})
			continue
		}
		source, topicIdx, wordIdx, err := parseSource(jsonTag)
		if err != nil {
			return nil, fmt.Errorf("模型 %s 字段 %s: %v", t.Name(), sf.Name, err)
		}

		f := planField{index: i, column: column, source: source, topicIdx: topicIdx, wordIdx: wordIdx}
		plan.insertFields = append(plan.insertFields, f)
		if source == srcBlockNumber {
			plan.blockNumberCol = column
		}
		if isPK {
			plan.pkFields = append(plan.pkFields, f)
		}
	}

	// ShouldReplace：收集去重键冲突时的替换策略（如保留 blockNumber 最新的）
	if lr, ok := model.(logReplacer); ok {
		plan.replaceFn = lr.ShouldReplace
	}

	if len(plan.pkFields) == 0 {
		return nil, fmt.Errorf("模型 %s 缺少除 chain_id 外的主键字段（用于去重）", t.Name())
	}
	return plan, nil
}

// parseDataFormat 解析 "(address,uint256,address)" 形式的 ABI 类型序列
func parseDataFormat(format string) ([]abi.Type, error) {
	s := strings.TrimSpace(format)
	s = strings.TrimPrefix(s, "(")
	s = strings.TrimSuffix(s, ")")
	s = strings.TrimSpace(s)
	if s == "" {
		return nil, nil
	}
	parts := strings.Split(s, ",")
	out := make([]abi.Type, 0, len(parts))
	for _, p := range parts {
		p = strings.TrimSpace(p)
		if p == "" {
			continue
		}
		at, err := abi.NewType(p, "", nil)
		if err != nil {
			return nil, fmt.Errorf("无法解析 ABI 类型 %q: %v", p, err)
		}
		out = append(out, at)
	}
	return out, nil
}

func parseSource(tag string) (sourceKind, int, int, error) {
	if m := topicSourceRe.FindStringSubmatch(tag); m != nil {
		n, _ := strconv.Atoi(m[1])
		return srcTopic, n, -1, nil
	}
	switch tag {
	case "address":
		return srcAddress, 0, -1, nil
	case "txHash":
		return srcTxHash, 0, -1, nil
	case "blockNumber":
		return srcBlockNumber, 0, -1, nil
	case "data":
		return srcData, 0, -1, nil
	}
	if m := dataWordSourceRe.FindStringSubmatch(tag); m != nil {
		n, _ := strconv.Atoi(m[1])
		return srcData, 0, n, nil
	}
	return 0, 0, 0, fmt.Errorf("不支持的 json 来源标签 %q（支持 topicN / address / txHash / blockNumber / data / data[N]）", tag)
}

// fieldValue 提取字段来源对应的值：
// topic/address/txHash/data 为格式化字符串；data[N] 为 ABI 解码后的第 N 个字段值
// （无 DataFormat 时为 32 字节切片）。来源缺失时返回 false（跳过该事件）。
func (p *eventPlan) fieldValue(f *planField, l *types.Log) (interface{}, bool) {
	switch f.source {
	case srcTopic:
		if f.topicIdx >= len(l.Topics) {
			return nil, false
		}
		return formatTopic(f.topicIdx, l.Topics[f.topicIdx].Bytes()), true
	case srcAddress:
		return strings.ToLower(l.Address.Hex()), true
	case srcTxHash:
		return strings.ToLower(l.TxHash.Hex()), true
	case srcBlockNumber:
		return l.BlockNumber, true
	case srcData:
		if f.wordIdx < 0 {
			return "0x" + common.Bytes2Hex(l.Data), true
		}
		return p.dataWord(l, f.wordIdx)
	}
	return nil, false
}

// formatTopic topic 格式化：N=0 保留完整哈希；N>=1 作为索引地址取后 20 字节
func formatTopic(idx int, b []byte) string {
	if idx == 0 {
		return "0x" + common.Bytes2Hex(b)
	}
	if len(b) > 20 {
		b = b[len(b)-20:]
	}
	return "0x" + common.Bytes2Hex(b)
}

// dataWord 取 data 解码后第 idx 个字段的解码值
func (p *eventPlan) dataWord(l *types.Log, idx int) (interface{}, bool) {
	if p.dataTypes != nil {
		if idx >= len(p.dataTypes) || p.dataArgs == nil {
			return nil, false
		}
		values, err := p.dataArgs.Unpack(l.Data)
		if err != nil || idx >= len(values) {
			return nil, false
		}
		return values[idx], true
	}
	// 未声明 DataFormat：按 32 字节字切分
	start := idx * 32
	if len(l.Data) < start+32 {
		return nil, false
	}
	word := make([]byte, 32)
	copy(word, l.Data[start:start+32])
	return word, true
}

// DedupKey 根据主键字段（除 chain_id）的值生成去重键；来源缺失时返回 false（跳过该事件）
func (p *eventPlan) DedupKey(l *types.Log) (string, bool) {
	parts := make([]string, 0, len(p.pkFields))
	for i := range p.pkFields {
		v, ok := p.fieldValue(&p.pkFields[i], l)
		if !ok {
			return "", false
		}
		parts = append(parts, canonicalString(v))
	}
	return strings.Join(parts, "|"), true
}

// canonicalString 将值转为规范字符串（用于去重键）
func canonicalString(v interface{}) string {
	return toStringValue(v)
}

// toStringValue 将来源值转换为字符串形式
func toStringValue(val interface{}) string {
	switch x := val.(type) {
	case string:
		return x
	case *big.Int:
		if x == nil {
			return "0"
		}
		return x.String()
	case common.Address:
		return strings.ToLower(x.Hex())
	case bool:
		if x {
			return "1"
		}
		return "0"
	case []byte:
		return "0x" + common.Bytes2Hex(x)
	}
	rv := reflect.ValueOf(val)
	if rv.Kind() == reflect.Array && rv.Type().Elem().Kind() == reflect.Uint8 {
		b := make([]byte, rv.Len())
		for i := 0; i < rv.Len(); i++ {
			b[i] = byte(rv.Index(i).Uint())
		}
		return "0x" + common.Bytes2Hex(b)
	}
	return fmt.Sprintf("%v", val)
}

// setDecodedValue 将来源值按结构体字段类型转换并赋值
func setDecodedValue(fv reflect.Value, val interface{}) error {
	if val == nil {
		// 来源数据缺失（如非标准事件的 data 为空）：置零值
		fv.Set(reflect.Zero(fv.Type()))
		return nil
	}
	switch fv.Kind() {
	case reflect.String:
		fv.SetString(toStringValue(val))
		return nil
	case reflect.Ptr:
		if fv.Type().Elem() == bigIntType {
			if b, ok := val.(*big.Int); ok {
				if b == nil {
					fv.Set(reflect.Zero(fv.Type()))
				} else {
					fv.Set(reflect.ValueOf(new(big.Int).Set(b)))
				}
				return nil
			}
			return fmt.Errorf("无法将 %T 转换为 *big.Int", val)
		}
		return fmt.Errorf("指针字段仅支持 *big.Int，实际为 %s", fv.Type())
	case reflect.Struct:
		switch fv.Type() {
		case bigIntType:
			if b, ok := val.(*big.Int); ok {
				if b == nil {
					fv.Set(reflect.Zero(bigIntType))
				} else {
					fv.Set(reflect.ValueOf(*new(big.Int).Set(b)))
				}
				return nil
			}
			return fmt.Errorf("无法将 %T 转换为 big.Int", val)
		case addressType:
			if a, ok := val.(common.Address); ok {
				fv.Set(reflect.ValueOf(a))
				return nil
			}
			return fmt.Errorf("无法将 %T 转换为 common.Address", val)
		}
		return fmt.Errorf("不支持的结构体字段类型 %s", fv.Type())
	case reflect.Int, reflect.Int64:
		if b, ok := val.(*big.Int); ok {
			fv.SetInt(b.Int64())
			return nil
		}
		return fmt.Errorf("无法将 %T 转换为 %s", val, fv.Type())
	case reflect.Uint, reflect.Uint64:
		if u, ok := val.(uint64); ok {
			fv.SetUint(u)
			return nil
		}
		if b, ok := val.(*big.Int); ok {
			fv.SetUint(b.Uint64())
			return nil
		}
		return fmt.Errorf("无法将 %T 转换为 %s", val, fv.Type())
	case reflect.Bool:
		if b, ok := val.(bool); ok {
			fv.SetBool(b)
			return nil
		}
		return fmt.Errorf("无法将 %T 转换为 bool", val)
	case reflect.Slice:
		if fv.Type().Elem().Kind() == reflect.Uint8 {
			if b, ok := val.([]byte); ok {
				out := make([]byte, len(b))
				copy(out, b)
				fv.SetBytes(out)
				return nil
			}
			return fmt.Errorf("无法将 %T 转换为 []byte", val)
		}
		return fmt.Errorf("切片字段仅支持 []byte，实际为 %s", fv.Type())
	}
	return fmt.Errorf("不支持的字段类型 %s", fv.Type())
}

// BuildEvent 将一条原始事件转换为结构体实例
func (p *eventPlan) BuildEvent(l *types.Log, chainId int, repeatCount int) (interface{}, error) {
	v := reflect.New(p.structType).Elem()
	for i := range p.insertFields {
		f := &p.insertFields[i]
		val, _ := p.fieldValue(f, l)
		// 来源数据缺失（如非标准事件 data 为空）时 val 为 nil，置零值继续
		if err := setDecodedValue(v.Field(f.index), val); err != nil {
			return nil, fmt.Errorf("字段 %s: %v", p.structType.Field(f.index).Name, err)
		}
	}
	if p.chainIdIdx >= 0 {
		v.Field(p.chainIdIdx).SetInt(int64(chainId))
	}
	if p.repeatCountIdx >= 0 {
		v.Field(p.repeatCountIdx).SetInt(int64(repeatCount))
	}
	return v.Addr().Interface(), nil
}

func (p *eventPlan) insertSQL() string {
	cols := make([]string, 0, len(p.insertFields)+len(p.plainFields)+2)
	if p.chainIdIdx >= 0 {
		cols = append(cols, "chain_id")
	}
	for _, f := range p.insertFields {
		cols = append(cols, f.column)
	}
	for _, f := range p.plainFields {
		cols = append(cols, f.column)
	}
	if p.repeatCountIdx >= 0 {
		cols = append(cols, "repeat_count")
	}
	placeholders := make([]string, len(cols))
	for i := range placeholders {
		placeholders[i] = "?"
	}
	base := fmt.Sprintf("INSERT INTO `%s` (%s) VALUES (%s)",
		p.tableName, strings.Join(cols, ", "), strings.Join(placeholders, ", "))
	// 有 repeat_count 列时，冲突累加计数
	if p.repeatCountIdx >= 0 {
		return base + " ON DUPLICATE KEY UPDATE repeat_count = repeat_count + VALUES(repeat_count)"
	}
	// 有 block_number 列时（配合 ShouldReplace 保留最新语义）：仅当新事件
	// block_number >= 库中时才覆盖业务列；block_number 本身最后取较大值
	// （MySQL 的 ON DUPLICATE KEY UPDATE 按序求值，前面的 IF 引用的是尚未更新的 block_number）
	if p.blockNumberCol != "" {
		pkCols := make(map[string]bool, len(p.pkFields))
		for _, f := range p.pkFields {
			pkCols[f.column] = true
		}
		updates := make([]string, 0, len(p.insertFields)+1)
		for _, f := range p.insertFields {
			if f.source == srcBlockNumber || pkCols[f.column] {
				continue
			}
			updates = append(updates, fmt.Sprintf(
				"%[1]s = IF(VALUES(block_number) >= block_number, VALUES(%[1]s), %[1]s)", f.column))
		}
		updates = append(updates, "block_number = GREATEST(block_number, VALUES(block_number))")
		return base + " ON DUPLICATE KEY UPDATE " + strings.Join(updates, ", ")
	}
	// 其余：冲突无动作（等价 INSERT IGNORE）
	return base + " ON DUPLICATE KEY UPDATE " + cols[0] + "=" + cols[0]
}

func (p *eventPlan) insertArgs(entity interface{}, chainId int) []interface{} {
	v := reflect.ValueOf(entity).Elem()
	args := make([]interface{}, 0, len(p.insertFields)+len(p.plainFields)+2)
	if p.chainIdIdx >= 0 {
		args = append(args, chainId)
	}
	for i := range p.insertFields {
		args = append(args, normalizeForDB(v.Field(p.insertFields[i].index).Interface()))
	}
	for _, f := range p.plainFields {
		args = append(args, normalizeForDB(v.Field(f.index).Interface()))
	}
	if p.repeatCountIdx >= 0 {
		args = append(args, v.Field(p.repeatCountIdx).Int())
	}
	return args
}

// normalizeForDB 将字段值规范化为 database/sql 可直接接受的类型
func normalizeForDB(v interface{}) interface{} {
	switch x := v.(type) {
	case *big.Int:
		if x == nil {
			return "0"
		}
		return x.String() // uint256 超出 BIGINT 范围，以十进制字符串存 VARCHAR
	case big.Int:
		return x.String()
	case common.Address:
		return strings.ToLower(x.Hex())
	case bool:
		if x {
			return 1
		}
		return 0
	case []byte:
		return "0x" + common.Bytes2Hex(x)
	}
	rv := reflect.ValueOf(v)
	if rv.Kind() == reflect.Array && rv.Type().Elem().Kind() == reflect.Uint8 {
		b := make([]byte, rv.Len())
		for i := 0; i < rv.Len(); i++ {
			b[i] = byte(rv.Index(i).Uint())
		}
		return "0x" + common.Bytes2Hex(b)
	}
	return v
}

// PostProcess 将收集到的原始事件按 eventModel 的 json tag 映射转换为结构体字段
// （涉及数值转换的自动转换），然后逐条 INSERT ... ON DUPLICATE KEY 入库：
//   - 有 repeat_count 列时，冲突累加 repeat_count（跨任务计数）；
//   - 有 block_number 列时，仅当新事件 block_number >= 库中时才覆盖业务列；
//   - 其余冲突无动作（等价于 INSERT IGNORE）。
//
// 返回实际新增入库条数（RowsAffected 为 1 的次数，冲突更新不计数）。
// 单条转换或入库失败不影响其余事件，错误经聚合后返回。
// 若 counts 非空且模型含 repeat_count 列，则将每个 key 的出现次数写入该列。
func PostProcess(db *gorm.DB, events map[string]types.Log, counts map[string]int, chainId int, eventModel interface{}) (int, error) {
	if len(events) == 0 {
		return 0, nil
	}
	plan, err := buildEventPlan(eventModel)
	if err != nil {
		return 0, err
	}

	sql := plan.insertSQL()
	inserted := 0
	var errs []error
	for key, l := range events {
		rc := 1
		if counts != nil {
			if c, ok := counts[key]; ok && c > 0 {
				rc = c
			}
		}
		entity, err := plan.BuildEvent(&l, chainId, rc)
		if err != nil {
			errs = append(errs, fmt.Errorf("tx %s: %w", l.TxHash.Hex(), err))
			continue
		}
		result := db.Exec(sql, plan.insertArgs(entity, chainId)...)
		if result.Error != nil {
			errs = append(errs, fmt.Errorf("tx %s 入库失败: %w", l.TxHash.Hex(), result.Error))
			continue
		}
		// ON DUPLICATE KEY UPDATE 下：新插入=1，冲突更新=2，仅统计新插入
		if result.RowsAffected == 1 {
			inserted++
		}
	}
	return inserted, errors.Join(errs...)
}

// eventCollector 并发收集器：统一包裹自定义 process 或基于事件模型的原始事件收集
type eventCollector struct {
	process ProcessFunc
	events  map[string]types.Log
	counts  map[string]int // 每个 key 的出现次数（含首次）
	mu      sync.Mutex
}

// newCollector eventModel != nil 时构建统一收集器（按主键去重、value 存原始事件），
// 同时记录每个 key 的出现次数；eventModel == nil 时直接使用传入的 process。
func newCollector(process ProcessFunc, eventModel interface{}) (*eventCollector, error) {
	c := &eventCollector{events: map[string]types.Log{}, counts: map[string]int{}}

	if eventModel == nil {
		if process == nil {
			return nil, fmt.Errorf("eventModel 与 process 不能同时为空")
		}
		c.process = process
		return c, nil
	}

	plan, err := buildEventPlan(eventModel)
	if err != nil {
		return nil, err
	}

	c.process = func(logs []types.Log, original ethereum.FilterQuery) Result {
		for i := range logs {
			l := &logs[i]
			key, ok := plan.DedupKey(l)
			if !ok {
				continue
			}
			c.mu.Lock()
			c.counts[key]++
			if ex, exists := c.events[key]; !exists {
				c.events[key] = *l
			} else if plan.replaceFn != nil && plan.replaceFn(&ex, l) {
				c.events[key] = *l
			}
			c.mu.Unlock()
		}
		return DefaultResult()
	}
	return c, nil
}

// result 返回收集结果（去重后的原始事件）；使用自定义 process 时返回 nil
func (c *eventCollector) result() map[string]types.Log {
	return c.events
}

// resultCounts 返回每个 key 的出现次数（含首次）；使用自定义 process 时为空
func (c *eventCollector) resultCounts() map[string]int {
	return c.counts
}

// ModelResult 多模型收集器中单个模型的收集结果
type ModelResult struct {
	Model  interface{}
	Events map[string]types.Log
	Counts map[string]int
}

// MultiCollector 多模型收集器：一次拉取事件流，按 topic0 路由到对应模型去重。
// 各模型的去重键、计数互相独立，收集结果按模型分组返回。
type MultiCollector struct {
	plans   []*eventPlan
	results []ModelResult
	route   map[common.Hash]int // topic0 → 模型下标
	mu      sync.Mutex
}

// NewMultiCollector 构建多模型收集器；modelsByTopic0 为 topic0 hex（0x 开头）→ 事件模型实例
func NewMultiCollector(modelsByTopic0 map[string]interface{}) (*MultiCollector, error) {
	if len(modelsByTopic0) == 0 {
		return nil, fmt.Errorf("modelsByTopic0 不能为空")
	}
	m := &MultiCollector{route: make(map[common.Hash]int, len(modelsByTopic0))}
	for topicHex, model := range modelsByTopic0 {
		plan, err := buildEventPlan(model)
		if err != nil {
			return nil, err
		}
		h := common.HexToHash(topicHex)
		if _, dup := m.route[h]; dup {
			return nil, fmt.Errorf("topic0 重复: %s", topicHex)
		}
		m.route[h] = len(m.plans)
		m.plans = append(m.plans, plan)
		m.results = append(m.results, ModelResult{Model: model, Events: map[string]types.Log{}, Counts: map[string]int{}})
	}
	return m, nil
}

// Process 返回供并发拉取使用的统一处理函数：按 topic0 路由并去重计数
func (m *MultiCollector) Process() ProcessFunc {
	return func(logs []types.Log, _ ethereum.FilterQuery) Result {
		for i := range logs {
			l := &logs[i]
			if len(l.Topics) == 0 {
				continue
			}
			idx, ok := m.route[l.Topics[0]] // 只读 map，无锁安全
			if !ok {
				continue
			}
			key, ok := m.plans[idx].DedupKey(l)
			if !ok {
				continue
			}
			m.mu.Lock()
			m.results[idx].Counts[key]++
			if ex, exists := m.results[idx].Events[key]; !exists {
				m.results[idx].Events[key] = *l
			} else if rp := m.plans[idx].replaceFn; rp != nil && rp(&ex, l) {
				m.results[idx].Events[key] = *l
			}
			m.mu.Unlock()
		}
		return DefaultResult()
	}
}

// Results 返回各模型的收集结果（与 NewMultiCollector 构建顺序一致）
func (m *MultiCollector) Results() []ModelResult {
	return m.results
}
