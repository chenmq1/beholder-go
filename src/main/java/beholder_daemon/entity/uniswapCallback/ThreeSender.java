package beholder_daemon.entity.uniswapCallback;


import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Data
@Table(name = "three_sender")
public class ThreeSender {
    @Column(name = "chain_id", nullable = false)
    private Short chainId;
    
    @Id
    @Column(name = "address", length = 66)
    private String address;
    
    @Column(name = "code_got")
    private Short codeGot;
    
    @Column(name = "has_callback")
    private Short hasCallback;
    
    @Column(name = "status")
    private Integer status;

}
