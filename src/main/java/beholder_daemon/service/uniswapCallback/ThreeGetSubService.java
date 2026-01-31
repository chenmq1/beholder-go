package beholder_daemon.service.uniswapCallback;

import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
import beholder_daemon.repository.uniswapCallback.SwapCallbackTaskRepository;
import beholder_daemon.repository.uniswapCallback.ThreeSenderRepository;
import beholder_daemon.service.burnPair.PairValuateService;
import beholder_daemon.utils.Chains;
import beholder_daemon.utils.EventProcessResult;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BatchPreparedStatementSetter;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameterName;
import org.web3j.protocol.core.DefaultBlockParameterNumber;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
public class ThreeGetSubService implements SolidityEventProcesser {

    @Autowired
    private Web3j bscWeb3j;

    @Autowired
    private Web3Utils web3Utils;


    private static final ThreadLocal<HashSet<String>> taskContext = new ThreadLocal<>();
    
    public static final int VALUE_TRESHOLD_USD = 100;
    
    int expectedSize = 1_000_000;

    @Async("threeGetExecutor")
    public CompletableFuture<HashSet<String>> processSubTask(EthFilter ethFilter,long fromBlock,long toBlock) {
        try {
            // 处理业务逻辑
            log.info("处理pairValuate subtask任务: {}-{}  pairs in subTask {}",fromBlock,toBlock,Thread.currentThread().getName());
            HashSet<String> context =  new HashSet<String>((expectedSize * 2)); 
            taskContext.set(context);            
            web3Utils.stepGetLog(bscWeb3j, fromBlock, toBlock, ethFilter, this,99);
        } catch (Exception e) {
            log.error("处理pairValuate subTask任务失败: {}", Thread.currentThread().getName(), e);
        }
        HashSet<String> context = taskContext.get();
        taskContext.remove();
        return CompletableFuture.completedFuture(context);
    }

    @Override
    public EventProcessResult processEvents(List<LogResult> listLogResult,EthFilter filter) {
        HashSet<String> senders = taskContext.get();
        for (EthLog.LogResult logResult : listLogResult) {
                EthLog.LogObject event = (EthLog.LogObject) logResult.get();
                String data = event.getData();
                List<String> topics = event.getTopics();
                String sender = web3Utils.getShortAddressNeat(topics.get(1));
                senders.add(sender);
                //totalEvent++;  // 不算了。
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