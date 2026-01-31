package beholder_daemon.entity.burnPair;


import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Lob;


@Entity
public class BurnPairTask {
 @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "type", nullable = false, length = 50)
    private String type;
    
    @Column(name = "start_time")
    private LocalDateTime startTime;
    
    @Column(name = "end_time")
    private LocalDateTime endTime;
    
    @Column(name = "start_block")
    private Long startBlock = 0L;
    
    @Column(name = "end_block")
    private Long endBlock = 0L;
    
    @Column(name = "status", nullable = false)
    private Integer status;
    
    @Lob
    @Column(name = "message", nullable = false, columnDefinition = "LONGTEXT")
    private String message  = "";
    
    // 构造方法
    public BurnPairTask() {
    }
    
    // Getter 和 Setter 方法
    public Integer getId() {
        return id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    
    public String getType() {
        return type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    
    public LocalDateTime getStartTime() {
        return startTime;
    }
    
    public void setStartTime(LocalDateTime startTime) {
        this.startTime = startTime;
    }
    
    public LocalDateTime getEndTime() {
        return endTime;
    }
    
    public void setEndTime(LocalDateTime endTime) {
        this.endTime = endTime;
    }
    
    public Long getStartBlock() {
        return startBlock;
    }
    
    public void setStartBlock(Long startBlock) {
        this.startBlock = startBlock;
    }
    
    public Long getEndBlock() {
        return endBlock;
    }
    
    public void setEndBlock(Long endBlock) {
        this.endBlock = endBlock;
    }
    
    public Integer getStatus() {
        return status;
    }
    
    public void setStatus(Integer status) {
        this.status = status;
    }
    
    public String getMessage() {
        return message;
    }
    
    public void setMessage(String message) {
        this.message = message;
    }
}