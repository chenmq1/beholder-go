package beholder_daemon.service.burnPair;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.service.GetCodeService;
import beholder_daemon.utils.EventProcessResult;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Slf4j
@Service
public class CodeGetService {

    @Autowired
    private BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    @Autowired
    private GetCodeService getCodeService;
    private int gotCount;
    public void processTask() {
        gotCount = 0;
        BurnPairTask record = new BurnPairTask();
        record.setType("codeGet");
        try {
            // 保存任务记录到数据库
            record.setStartTime(LocalDateTime.now());
            record.setStatus(1);
            burnPairTaskRepository.save(record);
            
            // 处理业务逻辑
            log.info("处理codeGet任务: ");

            List<UniswapPair> pairs = uniswapV2PairRepository.findPairToGetCode();
            for (UniswapPair pair: pairs){
                if (getCodeService.getCode(pair.getTokenAddress(), 2)>0){ // burnPair only occurs on chainId 2 (bsc)
                    pair.setCodeGot((short)1);
                    pair.setCheckState(PairValuateService.CHECK_STATE_CODEGOT);
                    gotCount++;
                }
            }
            uniswapV2PairRepository.saveAll(pairs);

            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            String logMessage=String.format("code got: %d/%d",gotCount,pairs.size());
            record.setMessage(logMessage);
            burnPairTaskRepository.save(record);
            log.info("codeGet任务处理完成: ");
            //} else {
            //    log.warn("任务正在处理中，跳过: {}", message);
            //}
        } catch (Exception e) {
            log.error("处理codeGet任务失败: {}", e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
        }
    }
}