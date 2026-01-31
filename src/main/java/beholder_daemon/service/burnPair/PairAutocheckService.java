package beholder_daemon.service.burnPair;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.entity.burnPair.UniswapPair;
import beholder_daemon.repository.ContractCodeRepository;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.service.GetCodeService;
import beholder_daemon.service.burnPair.PairValuateService;
import beholder_daemon.utils.EventProcessResult;
import beholder_daemon.utils.SolidityEventProcesser;
import beholder_daemon.utils.Web3Utils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;
import org.web3j.protocol.Web3j;
import org.web3j.protocol.core.methods.request.EthFilter;
import org.web3j.protocol.core.methods.response.EthLog;
import org.web3j.protocol.core.methods.response.EthLog.LogResult;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Slf4j
@Service
public class PairAutocheckService{

    @Autowired
    private BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    private UniswapV2PairRepository uniswapV2PairRepository;

    @Autowired
    private ContractCodeRepository contractCodeRepository;


    public void processTask() {
        BurnPairTask record = new BurnPairTask();
        record.setType("autoCheck");
        record.setStartTime(LocalDateTime.now());
        try {
            record.setStatus(1);
            burnPairTaskRepository.save(record);
            
            // 处理业务逻辑
            log.info("处理pairAutocheck任务: ");

            List<UniswapPair> pairs = uniswapV2PairRepository.findByCheckState(PairValuateService.CHECK_STATE_CODEGOT);
            int pairTotalNumber = pairs.size();
            int fail = 0;
            int noburn = 0;
            int burn = 0;
            for (UniswapPair pair: pairs){
                Optional<ContractCode> code = contractCodeRepository.findById(pair.getTokenAddress());
                if (!code.isPresent()){
                    pair.setCheckState(PairValuateService.CHECK_STATE_AUTOCHECKED_FAIL);
                    fail++;
                }else {
                    String verifiedCode = code.get().getVerifiedCodeDecompressed();
                    String decompiledCode = code.get().getDecompiledCodeDecompressed();
                    if ((verifiedCode==null)&&(decompiledCode==null)){
                        pair.setCheckState(PairValuateService.CHECK_STATE_AUTOCHECKED_FAIL);
                        fail++;
                    }else if (searchInCode(verifiedCode,".sync")||searchInCode(decompiledCode,".sync")){
                        pair.setCheckState(PairValuateService.CHECK_STATE_AUTOCHECKED_BURN);
                        burn++;
                    }else{
                        pair.setCheckState(PairValuateService.CHECK_STATE_AUTOCHECKED_NOBURN);
                        noburn++;
                    }
                }
            }
            uniswapV2PairRepository.saveAll(pairs);            
            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            record.setMessage(String.format("自动检查pair %d个： 自动有 %d个； 自动无 %d个； 自动白 %d 个",pairTotalNumber, burn, noburn, fail));
            burnPairTaskRepository.save(record);
            log.info("pairAutocheck任务处理完成:");
            //} else {
            //    log.warn("任务正在处理中，跳过: {}", message);
            //}
        } catch (Exception e) {
            log.error("处理pairAutocheck任务失败: {}", e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
        }
    }
    private boolean searchInCode(String codeContent, String keyword) {
        if (codeContent == null || keyword == null) return false;        
        // 判断是否为JSON格式
        if (codeContent.startsWith("{{") && codeContent.endsWith("}}")) {
            try {
                // 解析JSON
                String trimmed = codeContent.substring(1,codeContent.length()-1);
                ObjectMapper mapper = new ObjectMapper();
                JsonNode root = mapper.readTree(trimmed);
                JsonNode sources = root.path("sources");
                if (sources.isObject()) {
                    for (JsonNode fileNode : sources) {
                        String content = fileNode.path("content").asText();
                        if (content.contains(keyword)) {
                            return true;
                        }
                    }
                }
                // 如果没有sources，false
                return false;                
            } catch (Exception e) {
                // 解析失败，false
                return false;
            }
        }        
        // 普通文本直接搜索
        return codeContent.contains(keyword);
    }
}