package beholder_daemon.repository.uniswapCallback;

import org.springframework.stereotype.Repository;

import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
import jakarta.transaction.Transactional;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.query.Param;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface ThreeSenderRepository extends JpaRepository<ThreeSender, String> {
    @Query(value = "SELECT * FROM three_sender WHERE code_got is null and chain_id=:chainId", nativeQuery = true)
    List<ThreeSender> findSenderToGetCode(@Param("chainId") Short chainId);

    Optional<ThreeSender> findById(String address);
    List<ThreeSender> findByCodeGotGreaterThanAndChainIdAndStatusIsNull(short codeGot,short chainId);

    Page<ThreeSender> findByCodeGotGreaterThanAndStatusAndChainId(Short codeGot, Short status, Short chainId,Pageable pageable);
    Page<ThreeSender> findByCodeGotGreaterThanAndChainId(Short codeGot, Short chainId, Pageable pageable);
}
