package beholder_daemon.service.burnPair;

import beholder_daemon.entity.burnPair.BurnPairTask;
import beholder_daemon.repository.burnPair.BurnPairTaskRepository;
import beholder_daemon.service.burnPair.CodeGetService;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.io.PrintWriter;
import java.io.StringWriter;
import java.time.LocalDateTime;
import java.util.Map;

@Slf4j
@Service
public class FlowService {

    @Autowired
    private BurnPairTaskRepository burnPairTaskRepository;

    @Autowired
    private PairAutocheckService pairAutocheckService;

    @Autowired
    private PairCreateService pairCreateService;

    @Autowired
    private PairValuateService pairValuateService;

    @Autowired
    private CodeGetService codeGetService;

    public void processTask(Map<String,Object> message) {
        
        log.info("处理flow任务: {}", message);
        // 保存任务记录到数据库
        BurnPairTask record = new BurnPairTask();
        record.setType("flow");
        record.setStartTime(LocalDateTime.now());
        try {
            long endBlock = (Integer)message.get("endBlock");
            long startBlock = (Integer)message.get("startBlock");

            record.setEndBlock(endBlock);
            record.setStartBlock(startBlock);            
            record.setStatus(1);
            burnPairTaskRepository.save(record);           
            
            
            // 处理业务逻辑
            pairCreateService.processTask(message);
            pairValuateService.processTask(message);
            codeGetService.processTask();
            pairAutocheckService.processTask();
            
            // 更新任务状态
            record.setStatus(0);
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
            log.info("flow任务处理完成: {}", message);

        } catch (Exception e) {
            log.error("处理flow任务失败: {}", message, e);
            record.setStatus(-1);
            StringWriter sw = new StringWriter();
            e.printStackTrace(new PrintWriter(sw));
            record.setMessage(sw.toString());
            record.setEndTime(LocalDateTime.now());
            burnPairTaskRepository.save(record);
        }
    }
}