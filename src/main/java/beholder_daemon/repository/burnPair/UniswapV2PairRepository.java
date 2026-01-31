package beholder_daemon.repository.burnPair;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.service.burnPair.PairValuateService;

import java.util.List;

@Repository
public interface UniswapV2PairRepository extends JpaRepository<UniswapPair, String> {
    List<UniswapPair> findByCheckState(Integer checkState);
    List<UniswapPair> findByValueState(Integer valueState);
    List<UniswapPair> findByDeleted(Integer deleted);
    List<UniswapPair> findByCodeGot(Short codeGot);

    Page<UniswapPair> findByCodeGotAndDeleted(Short codeGot,Integer deleted, Pageable pageable);
    Page<UniswapPair> findByCodeGotAndDeletedAndCheckState(Short codeGot,Integer deleted,Integer checkState, Pageable pageable);
    Page<UniswapPair> findByCodeGot(Short codeGot, Pageable pageable);
    
    @Query(value = "SELECT * FROM uniswap_pair WHERE deleted = 0 order by updated_block", nativeQuery = true)
    List<UniswapPair> findPairToValuate();

    @Query(value = "SELECT * FROM uniswap_pair WHERE deleted = 0 and value_state = 1 and code_got = 0", nativeQuery = true)
    List<UniswapPair> findPairToGetCode();

    @Modifying
    @Transactional
    @Query(value = "UPDATE uniswap_pair SET deleted = 1 WHERE deleted=0 and ((pair_create_block<?1 and check_state is null) or check_state < 11 )", nativeQuery = true)
    int deleteInactivePair(long deadlineBlock);

    @Modifying
    @Query(value = "UPDATE uniswap_pair SET check_state = "+PairValuateService.CHECK_STATE_NOBURN+",deleted = 1 WHERE check_state="+PairValuateService.CHECK_STATE_AUTOCHECKED_NOBURN, nativeQuery = true)
    int acknowledgeAutoFilter();
}