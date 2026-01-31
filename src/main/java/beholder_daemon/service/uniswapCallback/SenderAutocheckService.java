package beholder_daemon.service.uniswapCallback;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
import beholder_daemon.repository.ContractCodeRepository;
import beholder_daemon.repository.burnPair.UniswapV2PairRepository;
import beholder_daemon.repository.uniswapCallback.SwapCallbackTaskRepository;
import beholder_daemon.repository.uniswapCallback.ThreeSenderRepository;
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
public class SenderAutocheckService{

    @Autowired
    private SwapCallbackTaskRepository swapCallbackTaskRespository;

    @Autowired
    private ThreeSenderRepository threeSenderRepository;

    @Autowired
    private ContractCodeRepository contractCodeRepository;

    public void processTask(Map<String,Object> message) {
        SwapCallbackTask record = new SwapCallbackTask();
        record.setType("autoCheck");
        record.setStartTime(LocalDateTime.now());
        short chainId = ((Integer)message.get("chainId")).shortValue();
        try {
            record.setStatus(1);
            record.setChainId(chainId);
            swapCallbackTaskRespository.save(record);
            
            // 处理业务逻辑
            log.info("处理senderAutoCheck任务: ");

            List<ThreeSender> pairs = threeSenderRepository.findByCodeGotGreaterThanAndChainIdAndStatusIsNull((short)1,chainId);
            int pairTotalNumber = pairs.size();
            int fail = 0;
            int noburn = 0;
            int burn = 0;
            for (ThreeSender pair: pairs){
                Optional<ContractCode> code = contractCodeRepository.findById(pair.getAddress());
                if (!code.isPresent()){
                    pair.setStatus(PairValuateService.CHECK_STATE_AUTOCHECKED_FAIL);
                    fail++;
                }else {
                    String verifiedCode = code.get().getVerifiedCodeDecompressed();
                    String decompiledCode = code.get().getDecompiledCodeDecompressed();
                    if ((verifiedCode==null)&&(decompiledCode==null)){
                        pair.setStatus(PairValuateService.CHECK_STATE_AUTOCHECKED_FAIL);
                        fail++;
                    }else if (searchInCode(verifiedCode,"uniswapV3SwapCallback")||searchInCode(decompiledCode,"uniswapV3SwapCallback")||
                        searchInCode(verifiedCode,"fa461e33")||searchInCode(decompiledCode,"fa461e33")||(chainId==2)&&(
                        searchInCode(verifiedCode,"pancakeV3SwapCallback")||searchInCode(decompiledCode,"pancakeV3SwapCallback")||
                        searchInCode(verifiedCode,"23a69e75")||searchInCode(decompiledCode,"23a69e75"))){//0x23a69e75 fa461e33
                        // todo:改成chainid=2的时候用pancake ， 其他用uniswap
                        pair.setStatus(PairValuateService.CHECK_STATE_AUTOCHECKED_BURN);
                        burn++;
                    }else{
                        pair.setStatus(PairValuateService.CHECK_STATE_AUTOCHECKED_NOBURN);
                        noburn++;
                    }
                }
            }
            threeSenderRepository.saveAll(pairs);            
            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            record.setMessage(String.format("自动检查pair %d个： 自动有 %d个； 自动无 %d个； 自动白 %d 个",pairTotalNumber, burn, noburn, fail));
            swapCallbackTaskRespository.save(record);
            log.info("senderAutoCheck任务处理完成:");
            //} else {
            //    log.warn("任务正在处理中，跳过: {}", message);
            //}
        } catch (Exception e) {
            log.error("处理senderAutoCheck任务失败: {}", e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            swapCallbackTaskRespository.save(record);
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