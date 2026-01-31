package beholder_daemon.service.burnPair;

import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.utils.EventProcessResult;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class PairCreateService implements SolidityEventProcesser {

    @Autowired
    private BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    private Web3j bscWeb3j;

    @Autowired
    private Web3Utils web3Utils;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    private int createCount;
    public void processTask(Map<String,Object> message) {
        
        log.info("处理pairCreate任务: {}", message);
        createCount = 0;
        // 保存任务记录到数据库
        BurnPairTask record = new BurnPairTask();
        record.setType("createEvent");
        record.setStartTime(LocalDateTime.now());
        try {
            long endBlock = (Integer)message.get("endBlock");
            long startBlock = (Integer)message.get("startBlock");
            if (endBlock == 0){
                EthBlockNumber blockNumber = bscWeb3j.ethBlockNumber().send();
                BigInteger latestBlock = blockNumber.getBlockNumber();
                endBlock = latestBlock.longValue();
            }
            if (startBlock == 0){
                startBlock = burnPairTaskRepository.findMaxProcessedBlock();
            }

            record.setEndBlock(endBlock);
            record.setStartBlock(startBlock);            
            record.setStatus(1);
            burnPairTaskRepository.save(record);           
            
            
            // 处理业务逻辑
            EthFilter ethFilter = new EthFilter();
            ethFilter.addSingleTopic("0x0d3648bd0f6ba80134a33ba9275ac585d9d315f0ad8355cddefde31afa28d0e9");

            web3Utils.stepGetLog(bscWeb3j, startBlock, endBlock, ethFilter, this);
            
            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            String logMessage=String.format("created %d",createCount);
            record.setMessage(logMessage);    
            burnPairTaskRepository.save(record);
            log.info("pairCreate任务处理完成: {}", message);

        } catch (Exception e) {
            log.error("处理pairCreate任务失败: {}", message, e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
        }
    }

    public static List<String> currencyList = List.of("0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c", "0x55d398326f99059ff775485246999027b3197955"); 
    @Override
    public EventProcessResult processEvents(List<LogResult> listLogResult,EthFilter filter) {
        for (EthLog.LogResult logResult : listLogResult) {
                EthLog.LogObject event = (EthLog.LogObject) logResult.get();
                String data = event.getData();
                List<String> topics = event.getTopics();
                String factoryAddress = event.getAddress();
                String pairAddress = web3Utils.getShortAddress(data.substring(0,66));
                String token0 = web3Utils.getShortAddress(topics.get(1));
                String token1 = web3Utils.getShortAddress(topics.get(2));
                long blockNumber = event.getBlockNumber().longValue();
                String tokenAddress;
                String currencyAddress;
                Short tokenFirst=1;
                if (currencyList.contains(token0)){
                    tokenAddress=token1;
                    currencyAddress=token0;
                    tokenFirst = 0;
                }else if (currencyList.contains(token1)){
                    tokenAddress=token0;
                    currencyAddress=token1;
                }else{
                    continue;  // no currency in pair
                }

                UniswapPair pair = new UniswapPair();
                pair.setPairAddress(pairAddress);
                pair.setTokenAddress(tokenAddress);
                pair.setCurrencyAddress(currencyAddress);
                pair.setTokenFirst(tokenFirst);
                pair.setFactoryAddress(factoryAddress);
                pair.setPairCreateBlock(blockNumber);
                pair.setUpdatedBlock(blockNumber);

                uniswapV2PairRepository.save(pair);
                createCount++;
                /*
                // 直接输出所有原始数据
                System.out.println("Contract: " + log.getAddress());
                System.out.println("Topic[0]: " + log.getTopics().get(0)); // 事件签名
                System.out.println("Topic[1]: " + (log.getTopics().size() > 1 ? log.getTopics().get(1) : "null"));
                System.out.println("Topic[2]: " + (log.getTopics().size() > 2 ? log.getTopics().get(2) : "null"));
                System.out.println("Topic[3]: " + (log.getTopics().size() > 3 ? log.getTopics().get(3) : "null"));
                System.out.println("Data: " + log.getData());
                System.out.println("Block: " + log.getBlockNumber());
                System.out.println("TxHash: " + log.getTransactionHash());
                System.out.println("---");
                */
            }
        return new EventProcessResult();            
    }
}