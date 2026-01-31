package beholder_daemon.service;

import beholder_daemon.service.burnPair.*;
import beholder_daemon.service.uniswapCallback.SenderAutocheckService;
import beholder_daemon.service.uniswapCallback.ThreeGetService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.concurrent.TimeUnit;
import java.util.Map;

@Slf4j
@Service
public class TaskProcessingService {

    
    @Autowired
    private RedisTemplate<String, Object> redisTemplate;

    @Autowired
    private PairCreateService pairCreateService;

    @Autowired
    private PairValuateService pairValuateService;

    @Autowired
    private beholder_daemon.service.burnPair.CodeGetService codeGetService;

    @Autowired
    beholder_daemon.service.uniswapCallback.CodeGetService uniswapCodeGetService;

    @Autowired
    SenderAutocheckService senderAutocheckService;

    @Autowired
    PairAutocheckService pairAutocheckService;

    @Autowired
    ThreeGetService threeGetService;

    @Autowired
    FlowService flowService;

    public void processTask(Map<String,Object> message) {
        try {
            // 使用Redis防止重复处理
            //String redisKey = "task:lock:" + message.hashCode();
            //if (Boolean.TRUE.equals(redisTemplate.opsForValue().setIfAbsent(redisKey, "processing", 30, TimeUnit.SECONDS))) {
                
            if (message.get("function").equals("burnPair")){
                if (message.get("task").equals("createEvent")){
                    pairCreateService.processTask(message);
                }else if(message.get("task").equals("syncEvent")){
                    pairValuateService.processTask(message);
                }else if(message.get("task").equals("codeGet")){
                    codeGetService.processTask();
                }else if(message.get("task").equals("autoCheck")){
                    pairAutocheckService.processTask(); 
                }else if(message.get("task").equals("flow")){
                    flowService.processTask(message); 
                }
            }else if (message.get("function").equals("swapCallback")){
                if (message.get("task").equals("collect3")){
                    threeGetService.processTask(message);
                }else if(message.get("task").equals("codeGet")){
                    uniswapCodeGetService.processTask(message);
                }else if(message.get("task").equals("autoCheck")){
                    senderAutocheckService.processTask(message); 
                }
            }
                
            //} else {
            //    log.warn("任务正在处理中，跳过: {}", message);
            //}
        } catch (Exception e) {
            log.error("处理任务失败: {}", message, e);
        }
    }
}