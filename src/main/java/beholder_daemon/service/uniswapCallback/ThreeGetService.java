package beholder_daemon.service.uniswapCallback;

import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
import beholder_daemon.repository.uniswapCallback.SwapCallbackTaskRepository;
import beholder_daemon.repository.uniswapCallback.ThreeSenderRepository;
import beholder_daemon.utils.Chains;
import beholder_daemon.utils.EventProcessResult;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import com.google.common.collect.Lists;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
public class ThreeGetService {

    @Autowired
    private SwapCallbackTaskRepository swapCallbackTaskRepository;

    @Autowired
    private Chains chains;

    @Autowired
    private Web3Utils web3Utils;

    @Autowired
    private ThreeSenderRepository threeSenderRepository;

    @Autowired
    private ThreeGetSubService threeGetSubService;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    private int totalEvent;
    public static final long MAX_BLOCK_PER_TASK = 120_000L; // 100 block per second * 20 thread * 600 second /1.2
    int expectedSize = 1_000_000;
    HashSet<String> senders = new HashSet<String>((expectedSize * 2));    
    public void processTask(Map<String,Object> message) {
        senders.clear();
        
        log.info("处理threeGet任务: {}", message);
        totalEvent = 0;
        // 保存任务记录到数据库
        SwapCallbackTask record = new SwapCallbackTask();
        record.setType("threeGet");
        record.setStartTime(LocalDateTime.now());
        short chainId = ((Integer)message.get("chainId")).shortValue();
        record.setChainId(chainId);
        Web3j bscWeb3j = chains.getWeb3j(chainId);
        try {
            long endBlock = (Integer)message.get("endBlock");
            long startBlock = (Integer)message.get("startBlock");
            
            if (endBlock == 0){
                EthBlockNumber blockNumber = bscWeb3j.ethBlockNumber().send();
                BigInteger latestBlock = blockNumber.getBlockNumber();
                endBlock = latestBlock.longValue();
            }
            if (startBlock == 0){
                startBlock = swapCallbackTaskRepository.findMaxProcessedBlock(chainId);
            }

            if (endBlock > startBlock + MAX_BLOCK_PER_TASK)
                endBlock = startBlock + MAX_BLOCK_PER_TASK;

            record.setEndBlock(endBlock);
            record.setStartBlock(startBlock);            
            record.setStatus(1);
            swapCallbackTaskRepository.save(record);          
            
            
            // 处理业务逻辑
            EthFilter ethFilter = new EthFilter();
            ethFilter.addSingleTopic("0x19b47279256b2a23a1665c810c8d55a1758940ee09377d4f8d26497a3577dc83");

            List<CompletableFuture<HashSet<String>>> futures = new ArrayList<>();
            final long segmentSize = MAX_BLOCK_PER_TASK/18;

            for (long segmentStart = startBlock; segmentStart < endBlock; segmentStart += segmentSize) {
                long segmentEnd = Math.min(segmentStart + segmentSize, endBlock);
                futures.add(threeGetSubService.processSubTask(ethFilter,segmentStart,segmentEnd));
            }

            CompletableFuture.allOf(futures.toArray(new CompletableFuture[0])).join();
            for (CompletableFuture<HashSet<String>> future: futures){
                senders.addAll(future.join());
            }
            
            int sendersLogged = senders.size();
            System.out.println("total:"+totalEvent);
            System.out.println("uniqued:"+sendersLogged);
            
            List<String> toInsert = new ArrayList<String>();
            for (String sender : senders){
                toInsert.add("0x"+sender);
                //totalEvent++;
                //System.out.println("0x"+sender);
            }
            int sendersInserted = batchInsertIgnore(toInsert,(int)chainId);

            
            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            String logMessage=String.format("created %d/%d/%d",totalEvent,sendersLogged,sendersInserted);
            record.setMessage(logMessage);    
            swapCallbackTaskRepository.save(record);
            log.info("threeGet任务处理完成: {}", message);

        } catch (Exception e) {
            log.error("处理threeGet任务失败: {}", message, e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            swapCallbackTaskRepository.save(record);
        }
    }

    public int batchInsertIgnore(List<String> addresses, Integer chainId) {
        String sql = "INSERT IGNORE INTO three_sender (address, chain_id) VALUES (?, ?)";
        int[] results = jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {
            @Override
            public void setValues(PreparedStatement ps, int i) throws SQLException {
                String addr = addresses.get(i);
                ps.setString(1, addr);
                ps.setInt(2, chainId);
            }
            @Override
            public int getBatchSize() {
                return addresses.size();
            }
        });
        int totalInserted = 0;
        for (int count : results) {
            totalInserted += count;
        }
        return totalInserted; // 插入的行数
    }
}