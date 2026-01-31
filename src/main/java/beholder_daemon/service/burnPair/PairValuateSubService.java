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
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameterName;
import org.web3j.protocol.core.DefaultBlockParameterNumber;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.request.Transaction;
import org.web3j.protocol.core.methods.response.EthBlockNumber;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CompletableFuture;

@Slf4j
@Service
public class PairValuateSubService implements SolidityEventProcesser {

    @Autowired
    private Web3j bscWeb3j;

    @Autowired
    private Web3Utils web3Utils;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    private static final ThreadLocal<HashMap<String,UniswapPair>> taskContext = new ThreadLocal<>();
    private static final ThreadLocal<Integer> valuedPairs = ThreadLocal.withInitial(() -> 0);
    
    public static final int VALUE_TRESHOLD_USD = 100;
    
    @Async("burnPairSyncExecutor")
    public CompletableFuture<Integer> processSubTask(List<UniswapPair> pairs,long fromBlock,long toBlock) {
        try {
            valuedPairs.set(0);
            // 处理业务逻辑
            log.info("处理pairValuate subtask任务: {}  pairs in subTask {}", pairs.size(),Thread.currentThread().getName());
            HashMap<String,UniswapPair> context = new HashMap<String,UniswapPair>();
            for (UniswapPair pair: pairs){
                context.put(pair.getPairAddress(),pair);
            }
            taskContext.set(context);
            List<String> addresses = new ArrayList<>(context.keySet());
            long earliestUpdatedBlock = pairs.get(0).getUpdatedBlock();  // pairs are sorted by updateBlock asc
            if (earliestUpdatedBlock>fromBlock)
                fromBlock=earliestUpdatedBlock;
            EthFilter ethFilter = new EthFilter(new DefaultBlockParameterNumber(fromBlock),new DefaultBlockParameterNumber(toBlock),addresses);
            ethFilter.addSingleTopic("0x1c411e9a96e071241c2f21f7726b17ae89e3cab4c78be50e062b03a9fffbbad1");// v2 sync event
            
            web3Utils.stepBackwardGetLog(bscWeb3j, fromBlock, toBlock, ethFilter, this);
            for (UniswapPair pair: pairs){ // set the update_block field
                pair.setUpdatedBlock(toBlock);
            }
            
        } catch (Exception e) {
            log.error("处理pairValuate subTask任务失败: {}", Thread.currentThread().getName(), e);
        }
        taskContext.remove();
        int value = valuedPairs.get();  // 自动拆箱为int
        valuedPairs.remove();
        return CompletableFuture.completedFuture(value);
    }

    public static Map<String,Integer> currencyValue = Map.of("0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c",900, "0x55d398326f99059ff775485246999027b3197955",1); 
    @Override
    public EventProcessResult processEvents(List<LogResult> listLogResult,EthFilter filter) {
        HashMap<String,UniswapPair> context = taskContext.get();
        int length = listLogResult.size();
        boolean contextModified = false;
        for (int i=length-1;i>=0;i--) {
            LogResult logResult = listLogResult.get(i);
            EthLog.LogObject event = (EthLog.LogObject) logResult.get();
            String data = event.getData();
            String pairAddress = event.getAddress();
            UniswapPair pair = context.get(pairAddress);
            if (pair==null)
                continue; // has already processed and deleted.

            contextModified = true;
            boolean tokenFirst = (pair.getTokenFirst()!=0);
            String currencyAmountStr;
            if (tokenFirst)
                currencyAmountStr = data.substring(66, 130); 
            else
                currencyAmountStr = data.substring(2, 66); 
            double currencyAmount = new BigInteger(currencyAmountStr, 16).doubleValue();
            long price = currencyValue.get(pair.getCurrencyAddress());
            currencyAmount =  currencyAmount * price / 1_000_000_000_000_000_000L;
            
            int valueState = 0;
            if (currencyAmount>VALUE_TRESHOLD_USD){
                valueState=1;
                valuedPairs.set(valuedPairs.get() + 1);
            }
            
            pair.setValueState(valueState);
            pair.setValueInUsd((int)currencyAmount);
            if ((valueState==1)&&(pair.getCheckState()==null))
                pair.setCheckState(PairValuateService.CHECK_STATE_WAITING_CHECK);
            //uniswapV2PairRepository.save(pair);
            context.remove(pairAddress);
        }
        EventProcessResult result = new EventProcessResult();// todo：如果最早update的pair已经被删除了，那么整体fromBlock需要修改。
        if (context.size()==0) // 全部update了，完成。
            result.shouldContinue=false;
        else if (contextModified) //部分update了，将修改好的从监听addresses里移除。
            result.newFilter=web3Utils.copy(filter,0,0,new ArrayList<>(context.keySet()));
        try {
        Thread.sleep(1000);
        } catch(Exception e){}
        return result;
    }

    @Async("burnPairSyncExecutor")
    public CompletableFuture<Integer> processSubTask(UniswapPair pair) {
        int numberOfValued = 0;
        BigInteger balance=null;
        int ioExceptionRetried = 0;
        String currencyAddress = pair.getCurrencyAddress();
        while (balance==null)
            try {
                balance = new BigInteger(
                    bscWeb3j.ethCall(
                        Transaction.createEthCallTransaction(
                            pair.getPairAddress(), 
                            currencyAddress, 
                            "0x70a08231" + // balanceOf函数选择器
                            "000000000000000000000000" + pair.getPairAddress().substring(2)
                        ),
                        DefaultBlockParameterName.LATEST
                    ).send().getValue().substring(2),
                    16
                );
            }catch (Exception e){
                if (ioExceptionRetried>10){
                    log.error("处理pairValuate subTask任务失败:ioException,balanceOf failed {}",pair.getPairAddress());
                    return CompletableFuture.completedFuture(null);
                }else{
                    log.info("Exception(but retried) in stepGegLog: " + e);
                    ioExceptionRetried++;
                    try{
                        Thread.sleep(999);
                    }catch (Exception e1){}
                }
                continue;
            }
        //System.out.println("balance:"+balance);
        double currencyAmount = balance.doubleValue();
        long price = currencyValue.get(currencyAddress);
        currencyAmount =  currencyAmount * price / 1_000_000_000_000_000_000L;
        
        int valueState = 0;
        if (currencyAmount>VALUE_TRESHOLD_USD){
            valueState=1;
            numberOfValued++;
        }
        pair.setValueState(valueState);
        pair.setValueInUsd((int)currencyAmount);
        if ((valueState==1)&&(pair.getCheckState()==null))
            pair.setCheckState(PairValuateService.CHECK_STATE_WAITING_CHECK);
        return CompletableFuture.completedFuture(numberOfValued);
    }
}