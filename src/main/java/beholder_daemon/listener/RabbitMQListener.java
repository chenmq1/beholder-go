package beholder_daemon.listener;

import beholder_daemon.service.TaskProcessingService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Header;
import org.springframework.amqp.support.AmqpHeaders;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.stereotype.Component;

import com.rabbitmq.client.Channel;

import java.util.Map;

@Slf4j
@Component
public class RabbitMQListener {

    @Autowired
    private TaskProcessingService taskProcessingService;

    @RabbitListener(queues = "task.queue")
    public void handleMessage(@Payload Map<String, Object> message,Channel channel,
        @Header(AmqpHeaders.DELIVERY_TAG) long deliveryTag) {
        log.info("收到任务消息: {}", message);
        try{
        channel.basicAck(deliveryTag, false);
        }catch (Exception e){
            e.printStackTrace(System.out);
        }
        taskProcessingService.processTask(message);
    }

}