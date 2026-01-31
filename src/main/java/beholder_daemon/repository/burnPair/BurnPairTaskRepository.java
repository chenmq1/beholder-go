package beholder_daemon.repository.burnPair;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import beholder_daemon.entity.burnPair.BurnPairTask;
import java.util.List;

@Repository
public interface BurnPairTaskRepository extends JpaRepository<BurnPairTask, Long> {
    List<BurnPairTask> findByStatus(Integer status);
    List<BurnPairTask> findByType(String taskType);
    List<BurnPairTask> findByTypeAndStatus(String type, Integer status);

    Page<BurnPairTask> findByStatus(Integer status, Pageable pageable);

    @Query(value = "SELECT MAX(end_block) FROM burn_pair_task WHERE type = 'createEvent' and status = 0", nativeQuery = true)
    Long findMaxProcessedBlock();
}