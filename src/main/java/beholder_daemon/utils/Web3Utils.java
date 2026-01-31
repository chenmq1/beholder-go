package beholder_daemon.utils;
import java.io.IOException;
import java.math.BigInteger;
import java.util.List;

import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.DefaultBlockParameter;
import org.web3j.protocol.core.DefaultBlockParameterNumber;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.request.Filter.FilterTopic;
import org.web3j.protocol.core.methods.response.EthLog;
import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class Web3Utils {
    public static int STEP_LENGTH=999;
    public static int IO_EXCEPTION_RETRY=4;
    public void stepGetLog(Web3j web3j,long startBlock,long endBlock, EthFilter ethFilter,SolidityEventProcesser solidityEventProcesser,int stepLength)throws IOException{
        long currentFromBlock=startBlock;
        long currentToBlock;
        int ioExceptionRetried = 0;
        while(currentFromBlock<= endBlock){
            currentToBlock=currentFromBlock + stepLength;
            if (currentToBlock > endBlock)
                currentToBlock = endBlock;
            EthLog ethLog;
            try{
                log.info("get event from {} to {}: " ,currentFromBlock,currentToBlock);
                ethLog = web3j.ethGetLogs(copy(ethFilter,currentFromBlock,currentToBlock,null)).send();
                if (ethLog.hasError()) {
                    log.info("Error in stepGetLog: " + ethLog.getError().getMessage());
                    return;
                }
            }catch (IOException e){
                if (ioExceptionRetried>IO_EXCEPTION_RETRY){
                    stepLength -= 50;
                    ioExceptionRetried = 0;
                    if (stepLength<=0)
                        throw e;
                }else{
                    log.info("Exception(but retried) in stepGegLog: {} stepLength: {}", e, stepLength);
                    ioExceptionRetried++;
                    try{
                        Thread.sleep(1000);
                    }catch (Exception e1){}
                }
                continue;
            }
            List<EthLog.LogResult> logs = ethLog.getLogs();
            EventProcessResult result=solidityEventProcesser.processEvents(logs,ethFilter);
            if (!result.shouldContinue)
                break;
            if (result.newFilter!=null)
                ethFilter = result.newFilter;
            currentFromBlock = currentToBlock + 1;
            ioExceptionRetried=0;
        }
    }
    public void stepBackwardGetLog(Web3j web3j,long startBlock,long endBlock, EthFilter ethFilter,SolidityEventProcesser solidityEventProcesser,int stepLength)throws IOException{
        long currentFromBlock=startBlock;
        long currentToBlock=endBlock;
        int ioExceptionRetried = 0;

        while(currentToBlock > startBlock){
            currentFromBlock=currentToBlock - stepLength;
            if (currentFromBlock < startBlock)
                currentFromBlock = startBlock;
            EthLog ethLog;
            try{
                //log.info("get event from {} to {}: " ,currentFromBlock,currentToBlock);                
                ethLog = web3j.ethGetLogs(copy(ethFilter,currentFromBlock,currentToBlock,null)).send();
                if (ethLog.hasError()) {
                    log.info("Error in stepGetLog: " + ethLog.getError().getMessage());
                    return;
                }
            }catch (IOException e){
                if (ioExceptionRetried>IO_EXCEPTION_RETRY)
                    throw e;
                else{
                    log.info("Exception(but retried) in stepGegLog: " + e);
                    try{
                        Thread.sleep(1000);
                    }catch (Exception e1){}//missing  ioExceptionRetried++
                }
                continue;
            }
            List<EthLog.LogResult> logs = ethLog.getLogs();
            EventProcessResult result=solidityEventProcesser.processEvents(logs,ethFilter);
            if (!result.shouldContinue)
                break;
            if (result.newFilter!=null)
                ethFilter = result.newFilter;
            currentToBlock = currentFromBlock - 1;
            ioExceptionRetried=0;
        }
    }
    
    public void stepGetLog(Web3j web3j,long startBlock,long endBlock, EthFilter ethFilter,SolidityEventProcesser solidityEventProcesser)throws IOException{
        stepGetLog(web3j, startBlock, endBlock, ethFilter, solidityEventProcesser,STEP_LENGTH);
    }

    public void stepBackwardGetLog(Web3j web3j,long startBlock,long endBlock, EthFilter ethFilter,SolidityEventProcesser solidityEventProcesser)throws IOException{
        stepBackwardGetLog(web3j, startBlock, endBlock, ethFilter, solidityEventProcesser,STEP_LENGTH);
    }
    
    public EthFilter copy(EthFilter original, long newFromBlock,long newToBlock,List<String> addresses) {
        DefaultBlockParameter p_newFromBlock;
        if (newFromBlock == 0)
            p_newFromBlock = original.getFromBlock();
        else
            p_newFromBlock = new DefaultBlockParameterNumber(newFromBlock);

        DefaultBlockParameter p_newToBlock;
        if (newToBlock == 0)
            p_newToBlock = original.getToBlock();
        else
            p_newToBlock = new DefaultBlockParameterNumber(newToBlock);

        if (addresses ==null){
            addresses = original.getAddress();
        }
                
        EthFilter newFilter = new EthFilter(
            p_newFromBlock,
            p_newToBlock,
            addresses
        );
        // 复制所有topics
        if (original.getTopics() != null) {
            for (FilterTopic filterTopic : original.getTopics()) {
                Object topicObj = filterTopic.getValue();
                if (topicObj instanceof String) {
                    newFilter.addSingleTopic((String) topicObj);
                } else if (topicObj instanceof List) {
                    // 处理OR条件的topics
                    @SuppressWarnings("unchecked")
                    List<String> orTopics = (List<String>) topicObj;
                    newFilter.addOptionalTopics(orTopics.toArray(new String[0]));
                }
            }
        }
        
        return newFilter;
    }

    public static String getShortAddress(String longAddress){
        return "0x" + longAddress.substring(26);
    }

    public static String getShortAddressNeat(String longAddress){
        return longAddress.substring(26);
    }

    public <T> T retryWithIoException(RetryTask<T> task, int maxRetry) 
            throws Exception {
        int retryCount = 0;
        while (true) {
            try {
                return task.execute();
            } catch (IOException e) {
                if (retryCount >= maxRetry) {
                    throw e;
                }
                System.out.println("retry:"+e.toString());
                Thread.sleep(1000);
                retryCount++;
            }
        }
    }
    
    @FunctionalInterface
    public interface RetryTask<T> {
        T execute() throws Exception;
    }

}
