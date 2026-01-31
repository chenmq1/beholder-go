package beholder_daemon.service.burnPair;

import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import io.reactivex.Completable;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;
import com.google.common.collect.Lists;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
public class PairValuateService {

    @Autowired
    private BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    private Web3j bscWeb3j;

    @Autowired
    private Web3Utils web3Utils;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    @Autowired
    private PairValuateSubService pairValuateSubService;

    public static final int CHECK_STATE_NOBURN = 0;
    public static final int CHECK_STATE_SAFEBURN = 1;
    public static final int CHECK_STATE_REBASE = 2;
    // less than 2 will be delete, because it's safe.
    public static final int CHECK_STATE_DEPENDBURN_1 = 11;
    public static final int CHECK_STATE_DEPENDBURN_2 = 12;
    public static final int CHECK_STATE_DEPENDBURN_3 = 13;
    public static final int CHECK_STATE_UNSAFEBURN = 99;
    public static final int CHECK_STATE_WAITING_CHECK = 100;
    public static final int CHECK_STATE_CODEGOT = 101;
    public static final int CHECK_STATE_AUTOCHECKED_NOBURN = 201;
    public static final int CHECK_STATE_AUTOCHECKED_BURN = 202;
    public static final int CHECK_STATE_AUTOCHECKED_FAIL = 299;

    public static final long EXPIRE_INACTIVE_BLOCK =  806400L; // 7 days
    public static final int MAX_CONTRACT_QUERY = 49;
    
    
    public void processTask(Map<String,Object> message) {
        BurnPairTask record = new BurnPairTask();
        record.setType("syncEvent");
        record.setStartTime(LocalDateTime.now());
        try {
            // 使用Redis防止重复处理
            //String redisKey = "task:lock:" + message.hashCode();
            //if (Boolean.TRUE.equals(redisTemplate.opsForValue().setIfAbsent(redisKey, "processing", 30, TimeUnit.SECONDS))) {
        
            // 保存任务记录到数据库
            
            record.setStatus(1);
            burnPairTaskRepository.save(record);
            
            // 处理业务逻辑
            log.info("处理pairValuate任务: {}", message);

            // get latest block
            EthBlockNumber ethBlockNumber = bscWeb3j.ethBlockNumber().send();
            BigInteger latestBlockNumber = ethBlockNumber.getBlockNumber();

            // expire inactive pair
            int deactivated = uniswapV2PairRepository.deleteInactivePair(latestBlockNumber.longValue()-EXPIRE_INACTIVE_BLOCK);

            // fetch data from db
            List<UniswapPair> pairs = uniswapV2PairRepository.findPairToValuate();
            int valuated = pairs.size();
            int valuable = 0;
            log.info("pairValuate: {} pairs need to be valuated", valuated);
            if (pairs.size()!=0){
                List<CompletableFuture<Integer>> futures = new ArrayList<>();
                long blockDiff = latestBlockNumber.longValue()-pairs.get(0).getUpdatedBlock();
                
                if (blockDiff > 50000L){
                    for (UniswapPair pair:pairs){
                        futures.add(pairValuateSubService.processSubTask(pair));
                        pair.setUpdatedBlock(latestBlockNumber.longValue());
                    }
                }else{
                    List<List<UniswapPair>> pairGroups = Lists.partition(pairs, MAX_CONTRACT_QUERY);
                    for (List<UniswapPair> pairGroup : pairGroups)
                        futures.add(pairValuateSubService.processSubTask(pairGroup,latestBlockNumber.longValue()-EXPIRE_INACTIVE_BLOCK,latestBlockNumber.longValue()));
                }
                CompletableFuture.allOf(futures.toArray(new CompletableFuture[0])).join();
                for (CompletableFuture<Integer> future: futures){
                    valuable += future.join();
                }
                
                uniswapV2PairRepository.saveAll(pairs);
                // 更新任务状态
                record.setStatus(0);
                record.setEndTime(LocalDateTime.now());
                String logMessage=String.format("deactivate %d;   \nvaluate %d/%d：\n",deactivated,valuable,valuated);
                record.setMessage(logMessage);
                burnPairTaskRepository.save(record);
            }
            log.info("处理pairValuate任务完成，blockNumber: {}", latestBlockNumber.longValue());
            //} else {
            //    log.warn("任务正在处理中，跳过: {}", message);
            //}
        } catch (Exception e) {
            log.error("处理pairValuate任务失败: {}", message, e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
        }
    }
}