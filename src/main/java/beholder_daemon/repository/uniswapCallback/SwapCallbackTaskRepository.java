package beholder_daemon.repository.uniswapCallback;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;

import java.util.List;

@Repository
public interface SwapCallbackTaskRepository extends JpaRepository<SwapCallbackTask, Long> {
    List<SwapCallbackTask> findByStatus(Integer status);
    List<SwapCallbackTask> findByType(String taskType);
    List<SwapCallbackTask> findByTypeAndStatus(String type, Integer status);

    Page<SwapCallbackTask> findByStatusAndChainId(Integer status, Short chainId,Pageable pageable);
    Page<SwapCallbackTask> findByChainId(Short chainId,Pageable pageable);

    @Query(value = "SELECT MAX(end_block) FROM swap_callback_task WHERE type = 'threeGet' and status = 0 and chain_id=:chainId", nativeQuery = true)
    Long findMaxProcessedBlock(@Param("chainId") Short chainId);
}