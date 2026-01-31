package beholder_daemon.entity.burnPair;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "uniswap_pair")
/*@SQLInsert(sql = "INSERT IGNORE INTO uniswap_pair (" +
    "check_state, currency_address, deleted, factory_address, " + 
    "pair_create_block, token_address, token_first, updated_block, " +
    "value_in_usd, value_state, pair_address" +
    ") VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")*/
public class UniswapPair {

    @Id
    @Column(name = "pair_address", nullable = false, length = 66)
    private String pairAddress;

    @Column(name = "token_address", nullable = false, length = 66)
    private String tokenAddress;

    @Column(name = "currency_address", nullable = false, length = 66)
    private String currencyAddress;

    @Column(name = "token_first", nullable = false)
    private Short tokenFirst = 0;

    @Column(name = "factory_address", nullable = false, length = 66)
    private String factoryAddress;

    @Column(name = "pair_create_block", nullable = false)
    private Long pairCreateBlock = 0L;

    @Column(name = "updated_block", nullable = false)
    private Long updatedBlock;

    @Column(name = "value_state")
    private Integer valueState;

    @Column(name = "value_in_usd")
    private Integer valueInUsd;

    @Column(name = "check_state")
    private Integer checkState;

    @Column(nullable = false)
    private Short codeGot = 0;

    @Column(name = "deleted", nullable = false)
    private Integer deleted = 0;
}