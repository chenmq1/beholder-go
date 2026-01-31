package beholder_daemon.service.uniswapCallback;

import beholder_daemon.entity.ContractCode;
import beholder_daemon.entity.uniswapCallback.SwapCallbackTask;
import beholder_daemon.entity.uniswapCallback.ThreeSender;
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
@Service("uniswapCodeGetService")
public class CodeGetService {

    @Autowired
    private SwapCallbackTaskRepository swapCallbackTaskRepository;

    @Autowired
    private ThreeSenderRepository threeSenderRepository;

    @Autowired
    private GetCodeService getCodeService;
    private int gotCount;
    public void processTask(Map<String,Object> message) {
        gotCount = 0;
        SwapCallbackTask record = new SwapCallbackTask();
        record.setType("codeGet");
        try {
            short chainId = ((Integer)message.get("chainId")).shortValue();
            // 保存任务记录到数据库
            record.setStartTime(LocalDateTime.now());
            record.setStatus(1);
            record.setChainId(chainId);
            swapCallbackTaskRepository.save(record);
            
            // 处理业务逻辑
            log.info("处理codeGet任务: ");

            List<ThreeSender> senders = threeSenderRepository.findSenderToGetCode(chainId);
            for (ThreeSender sender: senders){
                System.out.println(sender.getAddress());
                short result = getCodeService.getCode(sender.getAddress(), chainId);
                if (result > 1){
                    gotCount++;
                }
                sender.setCodeGot(result);
            }
            threeSenderRepository.saveAll(senders);

            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            String logMessage=String.format("code got: %d/%d",gotCount,senders.size());
            record.setMessage(logMessage);
            swapCallbackTaskRepository.save(record);
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
            swapCallbackTaskRepository.save(record);
        }
    }
}