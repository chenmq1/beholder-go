package beholder_daemon.service;

import java.util.HashMap;
import java.util.Map;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TaskCreateService {
    
    @Autowired
    private RabbitTemplate rabbitTemplate;
    
    // JSON 模板映射
    private static final Map<Integer, Map<String, Object>> TASK_MESSAGES = createTaskMessages();
    
    private static Map<Integer, Map<String, Object>> createTaskMessages() {
        Map<Integer, Map<String, Object>> messages = new HashMap<>();
        
        // 任务1: createEvent
        Map<String, Object> message1 = new HashMap<>();
        message1.put("function", "burnPair");
        message1.put("task", "createEvent");
        message1.put("startBlock", 0);
        message1.put("endBlock", 0);
        messages.put(1, message1);
        
        // 任务2: syncEvent
        Map<String, Object> message2 = new HashMap<>();
        message2.put("function", "burnPair");
        message2.put("task", "syncEvent");
        messages.put(2, message2);
        
        // 任务3: codeGet
        Map<String, Object> message3 = new HashMap<>();
        message3.put("function", "burnPair");
        message3.put("task", "codeGet");
        messages.put(3, message3);
        
        // 任务4: autoCheck
        Map<String, Object> message4 = new HashMap<>();
        message4.put("function", "burnPair");
        message4.put("task", "autoCheck");
        messages.put(4, message4);

        // 任务5: flow
        Map<String, Object> message5 = new HashMap<>();
        message5.put("function", "burnPair");
        message5.put("task", "flow");
        message5.put("startBlock", 0);
        message5.put("endBlock", 0);
        messages.put(5, message5);

        // callback 任务组 index 11
        message5 = new HashMap<>();
        message5.put("function", "swapCallback");
        message5.put("task", "collect3");
        message5.put("startBlock", 0);
        message5.put("endBlock", 0);
        messages.put(11, message5);

        message5 = new HashMap<>();
        message5.put("function", "swapCallback");
        message5.put("task", "codeGet");
        messages.put(12, message5);

        message5 = new HashMap<>();
        message5.put("function", "swapCallback");
        message5.put("task", "autoCheck");
        messages.put(13, message5);

        message5 = new HashMap<>();
        message5.put("function", "swapCallback");
        message5.put("task", "flow");
        messages.put(14, message5);

        return messages;
    }
    /**
     * 根据ID发送对应的任务消息到RabbitMQ
     * @param taskId 任务类型ID (1-4)
     */
    public void sendTaskMessage(int taskId) {
        Map<String, Object> message = TASK_MESSAGES.get(taskId);
        if (message == null)
            throw new IllegalArgumentException("无效的任务ID:" + taskId);
        rabbitTemplate.convertAndSend("task.queue", message);
        System.out.println("message 已发送："+message);
    }

    public void sendTaskMessageWithChainId(int taskId,int chainId) {
        Map<String, Object> message = TASK_MESSAGES.get(taskId);
        if (message == null)
            throw new IllegalArgumentException("无效的任务ID:" + taskId);
        message = (Map<String, Object>)((HashMap<String, Object>)message).clone();
        message.put("chainId",chainId);
        rabbitTemplate.convertAndSend("task.queue", message);
        System.out.println("message 已发送："+message);
    }
}